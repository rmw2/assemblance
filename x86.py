from subprocess import run, PIPE

ENDHEADER = "Disassembly of section .text:"

# Mapping from register numbers to register names
regs = {
    8 : [
        'rax', 'rcx', 'rdx', 'rbx',
        'rsi', 'rdi', 'rbp', 'rsp',
        'r8' , 'r9' , 'r10', 'r11',
        'r12', 'r14', 'r14', 'r15'
    ],

    4 : [
        'eax',  'ecx',  'edx',  'ebx',
        'esi',  'edi',  'ebp', 'esp', 
        'r8d',  'r9d' , 'r10d', 'r11d',
        'r12d', 'r14d', 'r14d', 'r15d'
    ],

    2 : [
        'ax',   'cx',   'dx',   'bx',
        'si',   'di',   'bp',   'sp',
        'r8w',  'r9w' , 'r10w', 'r11w',
        'r12w', 'r14w', 'r14w', 'r15w'
    ],

    1 : [
        'al',   'cl',   'dl',   'bl',
        'sil',  'dil',  'bpl',  'spl',
        'r8b' , 'r9b' , 'r10b', 'r11b',
        'r12b', 'r14b', 'r14b', 'r15b'
    ],
}


class ObjScoop():
    """ Parse the object and assembly versions of a .o file.

    Use objdump to dump the contents and parse the result into parallel
    lists.
    """
    # List of raw form of commands
    cmd_obj = []

    # List of assembly form of command
    cmd_asm = []

    # Mapping of address to command
    addr_to_cmd = {}

    # Mapping of labels to address
    labels = {}
    addr_to_label = {}

    def __init__(self, fname):
        # dump the specified file and capture the output
        proc = run(['objdump', '-d', '-j', '.text', fname], stdout=PIPE)
        dump = proc.stdout.decode('utf-8')

        in_header = True
        idx = 0

        # Parse each line of the object dump
        for line in dump.split('\n'):
            # Skip lines until end of the objdump header
            if in_header:
                if ENDHEADER in line: in_header = False
                continue

            # Lines that start with tab have commands
            if line.startswith(' '):
                tokens = line.split('\t')

                # Get the address of the current command
                addr = tokens[0].strip()[:-1]
                self.addr_to_cmd[addr] = idx

                # Add labels to dictionary if applicable
                if labeled:
                    self.labels[label] = addr
                    self.addr_to_label[addr] = label
                    labeled = False

                # Add commands to lists
                self.cmd_obj.append(tokens[1].strip())
                self.cmd_asm.append(tokens[2:])

                idx += 1

            # Other lines are labels
            else:
                labeled = True
                label = line.strip(':')

    def __str__(self):
        s = ''
        for addr, i in self.addr_to_cmd.items():
            if addr in self.addr_to_label:
                s += self.addr_to_label[addr] + ':\n'
            s += '%s\t%s\n' % (addr, '\t'.join(self.cmd_asm[i]))

        return s

if __name__ == '__main__':
    import sys

    scoop = ObjScoop(sys.argv[1])
    print(scoop)
