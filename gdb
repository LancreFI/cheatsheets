gdb crackme.bin core dump               == start GDB + optional core dump
gdb --args crackme.bin <arguments>      == start GDB + pass arguments
gdb --pid 1234                          == start GDB + attach to process 1234
set args <arguments>                    == set arguments to pass to the program
run                                     == run the program being debugged
kill                                    == kill the running program
break 0x1234                            == set a new breakpoint at 0x1234
delete n                                == delete the n'th breakpoint
clear                                   == clear all breakpoints
enable n                                == enable the disabled breakpoint number n
disable n                               == disable the n'th breakpoint
step                                    == go to the next instruction, divihg into functions
next                                    == go to next instruction, but don't dive
finish                                  == continue until the current function returns
continue                                == continue the normal execution
print/format <register>                 == print the content of a named register, usually $esp (stack pointer), $ebp (frame pointer) and $eip (instruction pointer)
                                        Format:
                                        a pointer
                                        c read as integer, print as character
                                        d integer, signed decimal
                                        f floating point number
                                        o integer, as octal
                                        s try treating as a C string
                                        t integer, print as binary (t = "two")
                                        u integer, unsigned decimal
                                        x integer, as hexadecimal
x/nfu 0x1234                            == print memory: 
                                          n: how many units
                                          f: cormat character
                                          u: unit
                                             Unit being:
                                                b: byte
                                                h: half-word (two bytes)
                                                w: word (four bytes)
                                                g: giant word (eight bytes))

disassemble 0x1234                      == disassemble the current function or given location
info args                               == print the arguments to the function of the current stack frame
info breakpoints                        == print informations about watch- and breakpoints
info display                            == print informations about the displays
info locals                             == print local variables in the currently selected stack frame
info sharedlibrary                      == list loaded shared libraries
info signals                            == list all signals and how they are being handled
info threads                            == list threads
show directories                        == print all directories in which GDB searches for source files
whatis variable                         == print type of variable "variable"
