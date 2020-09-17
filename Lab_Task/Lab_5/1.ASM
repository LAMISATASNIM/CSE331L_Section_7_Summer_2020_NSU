
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

            
             
.MODEL SMALL
.STACK 100H               

.DATA

 

    MSG DB "ENTER INT NO. 1: $ "
    MSG1 DB "ENTER INT NO. 2: $"
    MSG2 DB "DIFF IS : $ "
      

.CODE         
        MAIN PROC  
            MOV AX,@DATA
            MOV DS,AX
            
            MOV AH,9
            LEA DX,MSG
            INT 21H 
            
            MOV AH,1
            INT 21H
            ;LEA DL,AH
            ;INT 21H 
            
            MOV BH,AL
            
            MOV AH,2
            MOV DL,0AH
            INT 21H
            MOV DL,0DH
            INT 21H
            
            MOV AH,9
            LEA DX, MSG1
            INT 21H
            MOV AH,1
            INT 21H  
            ;LEA DL,AH
            ;INT 21H
            
            MOV BL,AL
            
            SUB BH,30H
            SUB BL,30H
            
            MOV AH,2
            MOV DL,0AH
            INT 21H
            MOV DL,0DH
            INT 21H
            
            MOV AH,9
            LEA DX,MSG2
            INT 21H  
            
           
            
            SUB BH,BL
            ADD BH,30H
            MOV DL,BH
            
            MOV AH,2
            INT 21H
            
            
            
            
            

            
            
            
            
            MOV AH,4CH
            INT 21H

            
            MAIN ENDP
   
             
     
   
END   MAIN




