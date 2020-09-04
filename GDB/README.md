# GDB commands

### Basic Commands 
---------------------------------------------------------
 **RUN** the program from start to end.
 ```
 run or r
 ```
 
 **SET BREAKPOINT** on a particular line.
 ```
 break or b
 ```
 
 **DISABLE** a **BREAKPOINT**.
 ```
 disable
 ```
 
 **ENABLE** a **DISABLED BREAKPOINT**.
 ```
 enable
 ```
 
 **NEXT LINE** of code aka step-over
 ```
 next or n
 ```
 
 **STEP IN** to the function
 ```
 step or s
 ```
 
 **DISPLAY** the code.
 ```
 list or l
 ```
 
 **PRINT** stored values.
 ```
 print or p
 ```
 
 **EXIT** out of gdb.
 ```
 quit or q
 ```
 
 **CLEAR** all breakpoints.
 ```
 clear
 ```
 
 **CONTINUE** normal execution
 ```
 continue or c       
 ```
 
 **BACKTRACK**
 ```
 bt
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
 
 **INFO** the code.
 ```
 info file
 info functions
 info break
 info reg
 info proc map
 ```
 
 **Breakpoint**
 ```
 b *0x11111111111
 ```
**Other Usefull Commands**
```
disas main
disas method_name

x/100i         //look at the next 100 lines
x/si 0x80480ea //print string
x/s $esi       //prints whats in the register in strings
x/d $eip       //print contents of register eip  
```

**32 bit**
READ
```
mov eax, 0x4
mov eax, 0x1
mov some register with address
```

Write
```
mov eax, 0x3
mov eax, 0x2
mov some register with address
```

**Python**
```
r <<< &(python -c "print 'A'*40 + '\xff\xff\xff\xff\xff\xff'")
```
