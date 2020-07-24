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
 info breakpoints
 info reg
 ```
