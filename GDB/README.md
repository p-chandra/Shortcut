# GDB commands

### Basic Commands 
---------------------------------------------------------
 ```
 run or r       -**RUN** the program from start to end.
 break or b     -**SET BREAKPOINT** on a particular line.
 disable        -**DISABLE** a **BREAKPOINT**.
 enable         -**ENABLE** a **DISABLED BREAKPOINT**.
 next or n      -**NEXT LINE** of code aka step-over
 step or s      -**STEP IN** to the function
 list or l      -**DISPLAY** the code.
 print or p     -**PRINT** stored values.
 quit or q      -**EXIT** out of gdb.
 clear          -**CLEAR** all breakpoints.
 continue or c  -**CONTINUE** normal execution   
 bt             -**BACKTRACK**
 ```
### Special Commands 
---------------------------------------------------------
 
 **GUI / TUI mode** the code.
 ```
 layout asm
 layout regs
 press 'CTRL + X + A'            to EXIT
 press 'CTRL + X' then 'o'       will switch window.. NOT 'CTRL + X + o'
 ```
 
 **INFO**
 ```
 info file
 info functions
 info break
 info reg
 info proc map
 ```
 
 **Breakpoint Usage**
 ```
 b * 0x11111111111
 b * main+55
 delete 1
 disable 2
 ```
**Disassemble**
```
disas main
disas method_name
```

**Print**
```
x/100i         //look at the next 100 lines
x/si 0x80480ea //print string
x/s $esi       //prints whats in the register in strings
x/d $eip       //print contents of register eip  
print $rbp
```

**32 bit**
```
READ
mov eax, 0x4
mov eax, 0x1
mov some register with address

Write
mov eax, 0x3
mov eax, 0x2
mov some register with address
```

**Python**
```
r <<< $(python -c "print 'A'*40 + '\xff\xff\xff\xff\xff\xff'")
```
