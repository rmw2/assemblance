/**********************************************************************
 * File:       decomment.c
 * Author:     Rob Whitaker
 * NetID:      rmw2
 *********************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

/* State data type for represent DFA */
enum State {NORMAL, INSTR, INCHAR, INCOMM, STARTCOMM, \
   ENDCOMM, ESCAPECHAR, ESCAPESTR};

/* Process characters from the normal context.
 * All characters are output to stdout */
enum State handleNormal(int ch) {
   enum State state = NORMAL;
   
   /* Handling special characters for normal state */
   switch (ch) {
      case '/': 
         /* exit immediately, don't output ch */
         return STARTCOMM;
      case '\'': 
         state = INCHAR;
         break;
      case '\"': 
         state = INSTR;
         break;
   }
   putchar(ch);
   return state;
}

/* Process characters from context of a string literal
 * Always put ch to stdout, return dfa state after consuming ch */
enum State handleInStr(int ch) {
   enum State state = INSTR;

   /* Handle special characters for string state */
   switch (ch) {
      case '\"': 
         state = NORMAL;
         break;
      case '\\': 
         state = ESCAPESTR;
         break;
   }
   
   putchar(ch);
   return state;
}

/* Process characters from context of a character literal
 * Always put ch to stdout.  Return state after consuming ch */
enum State handleInChar(int ch) {
   enum State state = INCHAR;

   /* Handle special characters for char state */
   switch (ch) {
      case '\'': 
         state = NORMAL;
         break;
      case '\\': 
         state = ESCAPECHAR;
         break;
   }

   putchar(ch);
   return state;
}

/* Process escaped characters inside character literal
 * Output ch and return INCHAR */
enum State handleEscapeChar(int ch) {
   /* escaped characters are output always */
   putchar(ch);
   return INCHAR;
}

/* Process escaped characters inside string literal
 * Put ch to stdout, return INSTR */
enum State handleEscapeStr(int ch) {
   /* escaped characters are output always */
   putchar(ch);
   return INSTR;
}

/* Process potential comment beginning.  If asterisk, return INCOMM,
 * else return NORMAL and output the preceding slash and ch. */
enum State handleStartComm(int ch) {
   enum State state = NORMAL;
   /* If a comment has begun, switch to comment state */
   switch (ch) {
      case '*': 
         /* comment begins, output space and change states */
         putchar(' ');
         return INCOMM;
      case '/':
         /* new potential comment beginning, ouput previous slash */
         putchar(ch);
         return STARTCOMM;
      case '\'': 
         /* start character literal */
         state = INCHAR;
         break;
      case '\"': 
         /* start string literal */
         state = INSTR;
         break;
   }

   /* Retroactively output forwardslash and ch */
   putchar('/');
   putchar(ch);
   return state;
}

/* Process characters within a comment.  Only newlines are output and 
 * asterisk changes state.  Return ENDCOMM if ch is "*".  Otherwise
 * return INCOMM. */
enum State handleInComm(int ch) {
   /* Newlines must still be output, only asterisk changes state */
   switch (ch) {
      case '\n': 
         putchar(ch);
         break;
      case '*': 
         return ENDCOMM;
   }
   
   /* If not possible end comment, remain in same state */
   return INCOMM;
}

/* Process character at potential end of comment.  Output a space if 
 * comment ends and return NORMAL, else return INCOMM. 
 * Print newline if ch is '\n'. */
enum State handleEndComm(int ch) {
   /* if comment ends, return to normal */
   switch (ch) {
      case '/': 
         return NORMAL;
      case '\n':
         putchar(ch);
         break;
      case '*':
         return ENDCOMM;
   }
   /* if still in comment, do nothing and return to INCOMM */
   return INCOMM;
}

/* Read from the standard input stream and output the 
 * same with the comments removed, preserving original
 * line numbers. */
int main(void) {
   int ch;
   enum State state = NORMAL;
   /* Initialize line numbers to zero */
   int line = 1;
   int lastCommentStart = 1;

   /* Read all characters from stdin */
   while ((ch = getchar()) != EOF) {
      /* Increase line count for newlines */
      if (ch == '\n') line++;

      /* Handle character depending on state */
      switch (state) {
         case NORMAL:
            state = handleNormal(ch);
            break;
         case INSTR:
            state = handleInStr(ch);
            break;
         case INCHAR:
            state = handleInChar(ch);
            break;
         case ESCAPECHAR:
            state = handleEscapeChar(ch);
            break;
         case ESCAPESTR:
            state = handleEscapeStr(ch);
            break;
         case STARTCOMM:
            state = handleStartComm(ch);
            /* Keep track of comment start line */
            if (state == INCOMM) lastCommentStart = line;
            break;
         case INCOMM:
            state = handleInComm(ch);
            break;
         case ENDCOMM:
            state = handleEndComm(ch);
            break;
      }
   }
   /* Must output final forwardslash if ended in STARTCOMM */
   if (state == STARTCOMM) putchar('/');

   /* Check if there are any unterminated comments */
   if (state == INCOMM || state == ENDCOMM) {
      /* output line of unterminated comment to stderr */
      fprintf(stderr, "Error: line %d: unterminated comment\n", \
          lastCommentStart);
      return EXIT_FAILURE;
   } 

   /* Otherwise we end in accept state */
   return EXIT_SUCCESS;
}
