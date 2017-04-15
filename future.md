# ~Future Directions~:
Where would I take this project given unlimited time?  What would I most like to see in an interactive assembly tool?

Here I present a collection of fairly disorganized and idealistic dreams:

## Side-by-side explorer (current project)
What are all the features I would like in the project as it currently exists?

* Syntax highlighting (DONE)
	- C syntax highlighting, perhaps a parser written in python to add to the markup stage?
	- asm syntax highlighting, finish the ad hoc parser i'm currently working on to identify addressing modes, etc.
* Instruction addresses on asm side
* Modal windows with more in-depth function exploration
	- Stack visualizer

## Tracer
What if we could "run" assembly code in the browser and keep track of the state of the system during its execution?

* Simulate execution of assembly code line by line
	- Panel for assembly with current line highlighted, tooltips for mnemonics, current value in register/memory on mouseover.
	- Panel for register values as they exist at the current point in execution.  Keep track of types to be able to appropriately convert values on mouseover
	- Panel for stack, with variables and types as with registers, function return addresses, etc.  Indicate stack frames and the functions to which they belong
	- Heap explorer? This would be very difficult to visualize but super cool.  Probably more in-depth parsing on the C side.
* Allow gdb-style debugging commands
	- Step into function, step single, step multiple instructions
	- Abstract away system calls and library functions
		- Possibly contain assembly for them in separate (example) files if one wanted to explore?
	- If assembly is linked to a source file, allow following along in corresponding lines of C
* Difficulties:
	- Addressing/jumps would be difficult, definitely have to implement in different way than actual addresses on the machine, which might limit some of the capabilities
		- Probably could fake addresses with a hashtable with address keys and instruction values? Another hashtable could link label names to addresses.
	- Security?  Should be able to keep everything contained within the virtual machine written, but who really knows

## User Accounts
If the server were to run on Courselab, why not allow students to access their files from the system directly?  Who knows!

* Allow princeton students to access their account on the CourseLab filesystem from the web interface
	- login and edit(?) assembly/c files and use the visual debugger
	- editing may be too much / would distract from learning emacs
* Alternative: maintain a database of user accounts and local files on each account, have an API for sending to their account via an http post request or an email?
	- Real goal is to avoid having to download from cluster and then upload from local machine

## More in-depth compiler exploration
Explain the logic of the compiler in its optimization decisions, and general assembly language patterns.

* Function prologues and maintaining the stack
	- How does the