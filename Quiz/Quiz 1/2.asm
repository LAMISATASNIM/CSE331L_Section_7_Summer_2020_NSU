
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

            
.MODEL SMALL
.STACK 100H

.DATA

.CODE

    MAIN PROC
        
        MOV AX,1
        ADD AX,1
        MOV AX,AX
        
        MOV AX,1
        ADD AX,2
        MOV AX,AX
        
        MOV AX,1
        ADD AX,2
        MOV AX,AX
        
        MOV AX,1
        ADD AX,1
        
        
        INT 21H
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    
    END MAIN



      

     
            




