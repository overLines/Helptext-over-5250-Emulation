# Helptext-over-5250-Emulation
Example program how to better explain your 5250 application on an IBM i to the end users instead of 
maintaining everything in panel groups. Also, you only have to be in one place maintain and manage the documentation.

For this Example you must create first the Display File QGPL/QDDSSRC/TSTONHLB.DSPF in the Libarary for this example. 
CRTDSPF SRCFILE(QGPL/QDDSSRC) SRCMBR(TSTONHLPB) REPLACE(*YES) OPTION(*EVENTF)  FILE(QGPL/TSTONHLPB)

After this Display file was successfull created, copy the SourceCode of TSTONHLP and create a Object in the Library QGPL/QRPGLESRC/TSTONHLP.RPGLE  
Compile this Programm with a following Command </br>
CRTBNDRPG PGM(QGPL/TSTONHLP) SRCFILE(QGPL/QRPGLESRC) SRCMBR(TSTONHLP) REPLACE(*YES) OPTION(*EVENTF) DBGVIEW(*SOURCE)

Now you can test it, with CALL TSTONHLP 

![alt text](https://github.com/overLines/Helptext-over-5250-Emulation/blob/main/hlp.png)


Now you type a "H" in the field and press Enter. 
Now the 5250 Client open automatically a default Browser on your Client and displays the following homepage.

Result ;)
https://google.com  
