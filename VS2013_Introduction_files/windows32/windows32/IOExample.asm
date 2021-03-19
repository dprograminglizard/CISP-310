.586
.MODEL FLAT

INCLUDE io.h

.STACK 4096

.DATA
prompt BYTE    "Enter Your Weight:", 0
string  BYTE    40 DUP (?)
sum			DWORD	0
resultLbl	BYTE  "Weight Loss for First Month", 0
weightLoss	BYTE    11 DUP (?), 0
resultLb2	BYTE  "Weight Loss for Second Month", 0
weightLoss2	BYTE   11 DUP (?), 0
resultLb3	BYTE  "Weight Loss for Third Month", 0
weightLoss3	BYTE   11 DUP (?), 0
resultLb4	BYTE  "Weight Loss for Fourth Month", 0
weightLoss4	BYTE   11 DUP (?), 0
resultLb5	BYTE  "Weight Loss for Fifth Month", 0
weightLoss5	BYTE   11 DUP (?), 0
resultLb6	BYTE  "Weight Loss for Sixth Month", 0
weightLoss6	BYTE   11 DUP (?), 0
i DWORD 1  ; 3 sets of numbers
j DWORD 4  ; each set has 5 numbers

.CODE
_MainProc PROC

           mov		ebx, i 
forcount1:	
			mov		ecx, j		
			mov sum, 4	

forCount2:	input   prompt, string, 40		; prompt user for a number
			atod    string	
			sub		sum, eax	; add the value of ECX to sum

			


		dtoa    weightLoss, sum			; convert sum to ASCII characters
        output  resultLbl, weightLoss	; output the sum to the console (55)

		dtoa    weightLoss2, sum			
        output  resultLb2, weightLoss2

		dtoa    weightLoss3, sum			
        output  resultLb3, weightLoss3

		dtoa    weightLoss4, sum			
        output  resultLb4, weightLoss4

		dtoa    weightLoss5, sum			
        output  resultLb5, weightLoss5

		dtoa    weightLoss6, sum			
        output  resultLb6, weightLoss6

		
		dec ebx
		cmp ebx,0
		jne forcount1

 ret
_MainProc ENDP
END




