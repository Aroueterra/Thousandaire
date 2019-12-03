dosseg
.386
.model USE16 small
.stack 01000h
.data
 Subject db 10,13,'',27,'[0;1;37;40m            Who Wants to be a THOUSANDAIRE [CS Basics Edition]',27,'[0;2;37;40m',10,13,'$' ;Developed by August Florese
 Instruction db 27,'[0;1;37;41m INSTRUCTIONS:$'
 Instruction1 db 10,13,' Answer up to ten questions and accumulate points.',10,13,' Each point directly corresponds to 100 pesos cash amount. ',10,13,' Score ten points and become the next$'
 Instruction2 db  27,'[0;1;33;40m THOUSANDAIRE',10,13,'',10,13,'$'
 Subtitle db 27,'[0;1;37;41m NOTE:',27,'[0;1;37;40m',10,13,' Question #4, and Question #7 are',27,'[0;1;32;40m SAVES$'
 Subtitle2 db 10,13,' If you fail to answer ',27,'[0;2;32;40mSAVE1,',27,'[0;2;37;40myou will leave with ',27,'[0;1;31;40mNOTHING.',10,13,'',27,'[0;2;37;40m If you fail to answer ',27,'[0;2;32;40mSAVE2',27,'[0;2;37;40m you are guaranted winnings up to ',27,'[0;2;32;40mSAVE1.$'
 Subtitle3 db 10,13,'See if you have what it takes to succeed where others have failed!$'
 PAccent db 10,13,'#$'
 FinalIndex db 27,'[0;5;33;40m#10$'
 Closure db ') $'
 InsertNewLine db 10,13,'$'
 tab db '          $'
 stab db '   $'

 answer db 10,13,'Your answer is: $'
 
 CorrectAnswer db 10,13,'  ',27,'[0;1;32;40m CORRECT$'
 ProgressMessage db 10,13,' ',27,'[0;1;31;40m Progress Ratio: $'
 ProgressBorder db 27,'[0;1;37;40m',186,'$'
 Progress db 27,'[0;5;32;47m',219,'$'
 Progress2 db 27,'[0;2;32;40m',219,'$'
 Advance db 27,'[0;1;32;40m','You have advanced to the next round! Your winnings have been saved.','$'

 IncorrectAnswer db 10,13,'  ',27,'[0;1;31;40m WRONG$'
 Options db 10,13,' [',27,'[0;2;32;40mAnswer: [a]/[b]/[c]/[d] Exit: [q]',27,'[0;2;37;40m] $'
 q1 db 10,13,'It is a natural number greater than 1, with no positive divisors other than 1 and itself.$'
 q1c1 db 27,'[0;1;37;44m A) A real number.    $'
 q1c2 db 27,'[0;1;37;44m B) A rational number.$'
 q1c3 db 27,'[0;1;37;44m C) A prime number.   $'  ;correct
 q1c4 db 27,'[0;1;37;44m D) None of the above.$'

 q2 db 10,13,'It is a set of integers in which each number is relatively prime with all other numbers in the set.$'
 q2c1 db 27,'[0;1;37;44m A) A relatively prime number. $'
 q2c2 db 27,'[0;1;37;44m B) A pairwise relatively number.   $' ;correct
 q2c3 db 27,'[0;1;37;44m C) A prime number.            $'
 q2c4 db 27,'[0;1;37;44m D) None of the above.              $'

 q3 db 10,13,'If set A has 3 elements, then number of elements in A x A x A are...$'
 q3c1 db 27,'[0;1;37;44m A) 9.   $'
 q3c2 db 27,'[0;1;37;44m B) 27.  $'   ;correct
 q3c3 db 27,'[0;1;37;44m C) 6.   $'
 q3c4 db 27,'[0;1;37;44m D) 19.  $'

 q4 db 10,13,'Let set A = {1,2} C = {3,4}, then A x B (Cartesian product) is...$'
 q4c1 db 27,'[0;1;37;44m A) {1,2,3,4}.                 $'
 q4c2 db 27,'[0;1;37;44m B) {(1,3),(2,4)}.   $'   
 q4c3 db 27,'[0;1;37;44m C) {(1,3),(2,4),(1,4),(2,3)}. $' ;correct
 q4c4 db 27,'[0;1;37;44m D) {(3,1),(4,1)}.   $'

 q5 db 10,13,'To sort a list with n elements, the insertion sort begins with the ____ element.$'
 q5c1 db 27,'[0;1;37;44m A) First.   $'
 q5c2 db 27,'[0;1;37;44m B) Second.  $'      ;correct
 q5c3 db 27,'[0;1;37;44m C) Third.   $' 
 q5c4 db 27,'[0;1;37;44m D) Fourth.  $'

 q6 db 10,13,'The worst case occurs in linear search algorithm when.. $'
 q6c1 db 27,'[0;1;37;44m A) Item = middle of the array. $'
 q6c2 db 27,'[0;1;37;44m B) Item = !exist                  $'   
 q6c3 db 27,'[0;1;37;44m C) Item = last element.        $'
 q6c4 db 27,'[0;1;37;44m D) Item = last element or !exist. $' ;correct

 q7 db 10,13,'List obtained in third pass of selection sort for: 3,5,4,1,2 is ___$'
 q7c1 db 27,'[0;1;37;44m A) 1,2,4,3,5.   $'
 q7c2 db 27,'[0;1;37;44m B) 1,2,3,4,5.   $'        ;correct
 q7c3 db 27,'[0;1;37;44m C) 1,5,4,3,2.   $' 
 q7c4 db 27,'[0;1;37;44m D) 3,5,4,1,2.   $'

 q8 db 10,13,'The operation for processing each element in the list is known as ____$'
 q8c1 db 27,'[0;1;37;44m A) Sorting.   $'
 q8c2 db 27,'[0;1;37;44m B) Merging.   $'   
 q8c3 db 27,'[0;1;37;44m C) Inserting. $'
 q8c4 db 27,'[0;1;37;44m D) Traversing.$'     ;correct

 q9 db 10,13,'The complexity of Bubble sort algorithm is____.$'
 q9c1 db 27,'[0;1;37;44m A) O(n).     $'
 q9c2 db 27,'[0;1;37;44m B) O(log n).   $'   
 q9c3 db 27,'[0;1;37;44m C) O(n^2).   $' ;correct
 q9c4 db 27,'[0;1;37;44m D) O(n log n). $'

 q10 db 10,13,'If an algorithms time complexity is given by O(n^2), then complexity is____$'
 q10c1 db 27,'[0;1;37;44m A) Constant.          $'
 q10c2 db 27,'[0;1;37;44m B) Exponential.   $'   
 q10c3 db 27,'[0;1;37;44m C) None of the above. $' ;correct
 q10c4 db 27,'[0;1;37;44m D) Linear.        $'
 m1 db 0
 m2 db 0
 m3 db 0
 fm1 db 10,13,' You failed to answer SAVE 1.',10,13,' You must leave the game with NOTHING.$'
 fm2 db 10,13,' You failed to answer SAVE 2.',10,13,' The game ends.',10,13,' However, you are guaranteed your winnings up SAVE 1!.',10,13,' Your total earnings are... $'
 thank db 10,13,' ',27,'[0;1;33;40mIt seems your final earnings are... $'
 thank2 db ' hundred pesos $'
 thanks db 27,'[0;1;33;40m Nice Try! $'
 thanks2 db 27,'[0;1;31;40m Too bad! $'
 thanks3 db 27,'[0;1;36;40m Amazing! $'
 AnyKey db 10,13,' [',27,'[0;2;32;40mEnter any key to continue',27,'[0;2;37;40m] $'
 perfect db 10,13,'',27,'[0;1;33;40m  Congratulations, you got a perfect score! 1 THOUSAND PESOS!$'
 trophya1 db 27,'[0;1;33;43m                      $'
 trophya2 db 27,'[0;1;33;43m                  $'
 trophya3 db 27,'[0;1;33;43m            $'
 trophya4 db 27,'[0;1;33;43m      $'
 trophya5 db 27,'[0;1;33;43m                $'
 trophy1 db 27,'[0;1;33;43m',176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,'$'
 trophy2 db 27,'[0;1;33;43m',176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,'$'
 trophy3 db 27,'[0;1;33;43m',176,176,176,176,176,176,176,176,176,176,176,176,'$'
 trophy4 db 27,'[0;1;33;43m',176,176,176,176,176,176,'$'
 trophy5 db 27,'[0;1;33;43m',176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,176,'$'
 trophyb1 db 27,'[0;1;33;47m                      $'
 trophyb2 db 27,'[0;1;33;47m                  $'
 trophyb3 db 27,'[0;1;33;47m            $'
 trophyb4 db 27,'[0;1;33;47m      $'
 trophyb5 db 27,'[0;1;33;47m                $'
 ;trophy1 db 27,'[0;1;33;43m',219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,'$'
 ;trophy2 db 27,'[0;1;33;43m',219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,'$'
 ;trophy3 db 27,'[0;1;33;43m',219,219,219,219,219,219,219,219,219,219,219,219,'$'
 ;trophy4 db 27,'[0;1;33;43m',219,219,219,219,219,219,'$'
 ;trophy5 db 27,'[0;1;33;43m',219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,219,'$'
 score db 0
 try db ?
 index db ?
 tr db ?
 reset db 27,"[0m$"
 blink db 27,"[5m$"
 bright db 27,"[1m$"
 dim db 27,"[2m$"
 fg_black db 27,"[30m$"
 fg_red db 27,"[31m$"
 fg_green db 27,"[32m$"
 fg_yellow db 27,"[33m$"
 fg_white db 27, "[37m$"
 bg_black db 27,"[40m$"
 bg_red db 27,"[41m$"
 bg_green db 27,"[42m$"
 bg_yellow db 27,"[43m$"
 bg_white db 27,"[47m$"
 underline db 27,"[4m$"
 nounderline db 27,"[24m$"
 Tier1 db 0
 Tier2 db 0
 Tier3 db 0
 difference db ?
 ten db 10
 tens db ?
 two db 2
 hundred db 100
 hundreds db ?
 thousand dw 1000
 thousands db ?
.CODE

  MAIN PROC
  mov ax,@data
  mov ds,ax
  mov es, ax
  START:
    call ClrScrn
    mov ah,09h
    call AddLine
    call INTRODUCTION
    mov index,00
    @Return:
    INC index 
    cmp index,11
    JE @Skip
    call challenge
    @Skip:
      call ClrScrn
      call AddLine
      mov ah,02h
      mov DH,8
      mov dl,12
      int 10h
      mov ah,09
      mov dx, offset thank+2
      int 21h
      mov bl, Tier1
      mov score, bl
      mov bl, Tier2
      add score, bl
      mov bl, Tier3
      add score, bl
      call AddSpace
      call CALC
      cmp score, 10
      JGE @Perfect
      mov tr,1
      call AddSpace
      mov bl, score
      add bl, 48
      mov ah, 02h
      mov dl,bl
      int 21h
      mov ah, 09h
      lea dx, thank2
      int 21h
      mov ah, 09h
      lea dx, thanks3
      int 21h
      call ResetFormat
      call CREDITOR
      call ResetFormat
    JMP @Exit

    @FM1:
     call ClrScrn
     mov ah, 09h
     lea dx, fm1
     int 21h
     mov score, 1
     mov tr,1
     call AddSpace
     
     mov ah, 09h
     lea dx, thanks2
     int 21h
     call CALC
     call ResetFormat
     mov ah,08h
     int 21h
     JMP @Exit
    @FM2:
     call ClrScrn
     mov ah, 09h
     lea dx, fm2
     int 21h
     mov bl, Tier1
     mov score, bl
     mov bl, score
     add bl, 48
     mov ah, 02h
     mov dl, bl
     int 21h
     mov ah, 09h
     lea dx, thank2
     int 21h
     mov ah, 09h
     
     lea dx, thanks
     int 21h
     mov tr,1
     call AddSpace
     call CALC
     call ResetFormat
     call CREDITOR
     call ResetFormat
     mov ah,08h
     int 21h
     JMP @Exit
    @Perfect:
      mov ah,02h
      mov dh,9
      mov dl,12
      int 10h
      mov ah, 09h
      mov dx, offset perfect+2
      int 21h
      call ResetFormat
      call CREDITOR
      call ResetFormat
      mov ah,08h
      int 21h
     JMP @Exit



  

  
  @Quest1:
    mov ah,09h
    lea dx,  q1  
    int 21h
    mov ah, 09h
    call AddLine
    call AddSpace
    lea dx, q1c1
    int 21h
    call AddSpace
    lea dx, q1c2
    int 21h
    call AddLine
    call AddSpace
    lea dx, q1c3
    int 21h
    call AddSpace
    lea dx, q1c4
    int 21h
    call ResetFormat
    call AddLine

     
    call REQUEST
    JMP @Q1Correct

  @Quest2:
    mov ah,09h
    lea dx,  q2  
    int 21h
    call AddLine
    mov tr, 1
    call AddSpace
    lea dx, q2c1
    int 21h
    mov tr, 1
    call AddSpace
    lea dx, q2c2
    int 21h
    call AddLine
    mov tr,1
    call AddSpace
    lea dx, q2c3
    int 21h
    mov tr, 1
    call AddSpace
    lea dx, q2c4
    int 21h
    call ResetFormat
    call AddLine
    
     
    call REQUEST
    JMP @Q2Correct
  @Quest3:
    mov ah,09h
    lea dx,  q3
    int 21h
    mov ah, 09h
    call AddLine
    call AddSpace
    lea dx, q3c1
    int 21h
    call AddSpace
    lea dx, q3c2
    int 21h
    call AddLine
    call AddSpace
    lea dx, q3c3
    int 21h
    call AddSpace
    lea dx, q3c4
    int 21h
    call ResetFormat
    call AddLine
     
    call REQUEST
    JMP @Q3Correct
  @Quest4:
  
    ;Questions
    mov ah,09h
    lea dx,  q4
    int 21h
    ;Give choices
    mov ah, 09h
    call AddLine
    call AddSpace
    lea dx, q4c1
    int 21h
    call AddSpace
    lea dx, q4c2
    int 21h
    call AddLine
    call AddSpace
    lea dx, q4c3
    int 21h
    call AddSpace
    lea dx, q4c4
    int 21h
    call ResetFormat
    call AddLine
    
     
    call REQUEST
    JMP @Q4Correct
  @Quest5:
    mov ah,09h
    lea dx,  Advance
    int 21h
    call ResetFormat
    ;Questions
    mov ah,09h
    lea dx,  q5
    int 21h
    ;Give choices
    mov ah, 09h
    call AddLine
    call AddSpace
    lea dx, q5c1
    int 21h
    call AddSpace
    lea dx, q5c2
    int 21h
    call AddLine
    call AddSpace
    lea dx, q5c3
    int 21h
    call AddSpace
    lea dx, q5c4
    int 21h
    call ResetFormat
    call AddLine
     
    call REQUEST
    JMP @Q5Correct
  @Quest6:
    ;Questions
    mov ah,09h
    lea dx,  q6
    int 21h
    ;Give choices
    mov ah, 09h
    call AddLine
    mov tr,1
    call AddSpace
    lea dx, q6c1
    int 21h
    mov tr,1
    call AddSpace
    lea dx, q6c2
    int 21h
    call AddLine
    mov tr,1
    call AddSpace
    lea dx, q6c3
    int 21h
    mov tr,1
    call AddSpace
    lea dx, q6c4
    int 21h
    call ResetFormat
    call AddLine
    
     
    call REQUEST
    JMP @Q6Correct

  @Quest7:
    mov ah,09h
    lea dx,  q7
    int 21h
    mov ah, 09h
    call AddLine
    call AddSpace
    lea dx, q7c1
    int 21h
    call AddSpace
    lea dx, q7c2
    int 21h
    call AddLine
    call AddSpace
    lea dx, q7c3
    int 21h
    call AddSpace
    lea dx, q7c4
    int 21h
    call ResetFormat
    call AddLine
    
    call REQUEST
    JMP @Q7Correct
  @Quest8:
    mov ah,09h
    lea dx,  Advance
    int 21h
    call ResetFormat
    mov ah,09h
    lea dx,  q8
    int 21h
    mov ah, 09h
    call AddLine
    call AddSpace
    lea dx, q8c1
    int 21h
    call AddSpace
    lea dx, q8c2
    int 21h
    call AddLine
    call AddSpace
    lea dx, q8c3
    int 21h
    call AddSpace
    lea dx, q8c4
    int 21h
    call ResetFormat
    call AddLine
     
    call REQUEST
    JMP @Q8Correct
  @Quest9:
    mov ah,09h
    lea dx,  q9
    int 21h
    mov ah, 09h
    call AddLine
    call AddSpace
    lea dx, q9c1
    int 21h
    call AddSpace
    lea dx, q9c2
    int 21h
    call AddLine
    call AddSpace
    lea dx, q9c3
    int 21h
    call AddSpace
    lea dx, q9c4
    int 21h
    call ResetFormat
    call AddLine
     
    call REQUEST
    JMP @Q9Correct
  @Quest10:
    mov ah,09h
    lea dx,  InsertNewLine
    int 21h
    mov ah,09h
    lea dx,  q10
    int 21h
    mov ah, 09h
    call AddLine
    call AddSpace
    lea dx, q10c1
    int 21h
    call AddSpace
    lea dx, q10c2
    int 21h
    call AddLine
    call AddSpace
    lea dx, q10c3
    int 21h
    call AddSpace
    lea dx, q10c4
    int 21h
    call ResetFormat
    mov ah,09h
    lea dx,  InsertNewLine
    int 21h
    call REQUEST
    JMP @Q10Correct
    ;Pseudo switch
  @Q1Correct:
    cmp try, 'c'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Q2Correct:
    cmp try, 'b'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Q3Correct:
    cmp try, 'b'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Q4Correct:
    cmp try, 'c'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Q5Correct:
    cmp try, 'b'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Q6Correct:
    cmp try, 'd'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Q7Correct:
    cmp try, 'b'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Q8Correct:
    cmp try, 'd'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Q9Correct:
    cmp try, 'c'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Q10Correct:
    cmp try, 'c'
    JNE @Incorrect
    call AwardPlayer
    JMP @Return
  @Incorrect:
    mov ah,09h
    lea dx, IncorrectAnswer
    int 21h
    call ResetFormat
    mov ah,08h
    int 21h
 
    cmp index,4
    JE @Fm1
    cmp index,7
    JE @Fm2
    JMP @Return

  @Exit:
    call AddLine
    call AddLine
    mov ah,4ch
    int 21h
  MAIN ENDP

  PROC INTRODUCTION
    call ClrScrn
    mov ah,09h
    lea dx,  Subject
    int 21h
    mov ah,09h
    lea dx,  underline
    int 21h
    lea dx,  Instruction
    int 21h
    lea dx,  nounderline
    int 21h
    call ResetFormat
    lea dx,  Instruction1
    int 21h
    call ResetFormat
    lea dx,  Instruction2
    int 21h
    call ResetFormat
    mov ah,09h
    lea dx,  Subtitle
    int 21h
    call ResetFormat
    mov ah,09h
    lea dx,  Subtitle2
    int 21h
    call ResetFormat
    lea dx,  Subtitle3
    int 21h
    call ResetFormat
    mov ah,09h
    lea dx,  AnyKey
    int 21h
    mov ah, 08h
    int 21h
    ret
  ENDP

  PROC REQUEST                 
    mov ah, 09h
    lea dx, options
    int 21h
    lea dx, answer
    int 21h
    mov ah, 01h
    int 21h
    mov try, al
    cmp try, 'q'
    JE @Exit
    ret
  ENDP

  PROC AwardPlayer
    mov ah,09h
    lea dx,  CorrectAnswer
    int 21h
    call ResetFormat
    cmp index, 4
    JLE @Reg1
    cmp index, 7
    JLE @Reg2
    add Tier3,1
    mov ah,08h
    int 21h
    JMP @Fin
    @Reg1:
      add Tier1, 1
      mov ah,08h
      int 21h
      JMP @Fin
    @Reg2:
      add Tier2, 1
      mov ah,08h
      int 21h
      JMP @Fin
    @Fin:
    ret
  ENDP

  PROC AddSpace
    mov ah, 09h
    call ResetFormat
    cmp tr,1
    JE @stab
    lea dx, tab
    int 21h
    JMP @reg
    @stab:
    lea dx, stab
    int 21h
    @reg:
    call ResetFormat
    mov tr, 00
    ret
  ENDP

  PROC ClrScrn
    mov ax, 03h
    int 10h
    ret
  ENDP

  PROC AddLine
    mov ah, 09h
    mov dx, offset InsertNewLine
    int 21h
    mov ah, 09h
    mov dx, offset InsertNewLine
    int 21h
    ret
  ENDP

  PROC ResetFormat
    mov ah, 09h
    lea dx, reset
    int 21h
    ret
  ENDP

  PROC CHALLENGE
    call ClrScrn
    cmp index, 10
    JE @FINALLY
    call ClrScrn
    call ResetFormat
    lea dx, bright
    int 21h
    lea dx,fg_yellow
    int 21h
    lea dx,  PAccent
    int 21h
    lea dx, blink
    int 21h
    mov ah,02h
    mov dl,index
    add dl,48
    int 21h
    call ResetFormat

    mov ah,09h
    lea dx,  Closure
    int 21h
    
    
    

    cmp index,01
    JE @quest1
    cmp index,02
    JE @quest2
    cmp index,03
    JE @quest3
    cmp index,04
    JE @quest4
    cmp index,05
    JE @quest5
    cmp index,06
    JE @quest6
    cmp index,07
    JE @quest7
    cmp index,08
    JE @quest8
    cmp index,09
    JE @quest9
    
    @FINALLY:
    mov ah,09h
    lea dx,  InsertNewLine
    int 21h
    mov ah,09h                
    lea dx,  FinalIndex
    int 21h
    call ResetFormat
    mov ah,09h                
    lea dx,  Closure
    int 21h
    
    JE @quest10
    ret
  ENDP

  PROC CALC
    
    call AddLine
    mov ah,02h
    mov DL,17 ;col
    mov DH,09
    int 10h
    mov ah,09h
    lea dx, ProgressMessage
    int 21h
    mov ah,02h
    mov DL,19 ;col
    mov DH,10
    int 10h
    mov bl, ten
    sub bl, score
    mov difference,bl
    mov ah,09h
    lea dx, ProgressBorder
    int 21h
    lea dx, Progress
    mov bl, score
    mov CH, 00
    mov CL, bl
    points:
      int 21h
    loop points
    cmp score,10
    JE @nomistake
    call ResetFormat
    lea dx, Progress2
    mov ch, 00
    mov cl, difference
    mistakes:
      int 21h
    loop mistakes
    @nomistake:
    call ResetFormat
    mov ah,09h
    lea dx, ProgressBorder
    int 21h
    call ResetFormat
    ret
  ENDP

  PROC CREDITOR
   
   cmp score, 4
   JLE @BRONZE

   cmp score, 9
   JLE @SILVER
   call CREDITS3
   JMP @EMPTY
   @BRONZE:
    call CREDITS1
    JMP @EMPTY
   @SILVER:
    call CREDITS2
    JMP @EMPTY  
   @EMPTY:
   ret
  endp

  PROC CREDITS1
     
    ;call ClrScrn

    mov ah,02h
    mov dh,12
    mov dl,57
    int 10h
    mov ah, 09h
    lea dx, trophya1
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,13
    mov dl,59
    int 10h
    mov ah, 09h
    lea dx, trophya2
    int 21h 

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,14
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophya2
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,15
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophya2
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,16
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophya2
    int 21h
    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,17
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophya2
    int 21h
    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,18
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophya2
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,19
    mov dl,62 ;col
    int 10h
    mov ah, 09h
    lea dx, trophya3
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,20
    mov dl,65 ;col
    int 10h
    mov ah, 09h
    lea dx, trophya4
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,21
    mov dl,65 ;col
    int 10h
    mov ah, 09h
    lea dx, trophya4
    int 21h

    mov ah,02h
    mov dh,22
    mov dl,60
    int 10h
    mov ah, 09h
    lea dx, trophya5
    int 21h
    ret
  ENDP
  PROC CREDITS2
     
    ;call ClrScrn

    mov ah,02h
    mov dh,12
    mov dl,57
    int 10h
    mov ah, 09h
    lea dx, trophyb1
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,13
    mov dl,59
    int 10h
    mov ah, 09h
    lea dx, trophyb2
    int 21h 

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,14
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophyb2
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,15
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophyb2
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,16
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophyb2
    int 21h
    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,17
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophyb2
    int 21h
    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,18
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophyb2
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,19
    mov dl,62 ;col
    int 10h
    mov ah, 09h
    lea dx, trophyb3
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,20
    mov dl,65 ;col
    int 10h
    mov ah, 09h
    lea dx, trophyb4
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,21
    mov dl,65 ;col
    int 10h
    mov ah, 09h
    lea dx, trophyb4
    int 21h

    mov ah,02h
    mov dh,22
    mov dl,60
    int 10h
    mov ah, 09h
    lea dx, trophyb5
    int 21h
    ret
  ENDP
  PROC CREDITS3
     
    ;call ClrScrn

    mov ah,02h
    mov dh,12
    mov dl,57
    int 10h
    mov ah, 09h
    lea dx, trophy1
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,13
    mov dl,59
    int 10h
    mov ah, 09h
    lea dx, trophy2
    int 21h 

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,14
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophy2
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,15
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophy2
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,16
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophy2
    int 21h
    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,17
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophy2
    int 21h
    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,18
    mov dl,59 ;col
    int 10h
    mov ah, 09h
    lea dx, trophy2
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,19
    mov dl,62 ;col
    int 10h
    mov ah, 09h
    lea dx, trophy3
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,20
    mov dl,65 ;col
    int 10h
    mov ah, 09h
    lea dx, trophy4
    int 21h

    mov ah,03h
    int 10h
    mov ah,02h
    mov dh,21
    mov dl,65 ;col
    int 10h
    mov ah, 09h
    lea dx, trophy4
    int 21h

    mov ah,02h
    mov dh,22
    mov dl,60
    int 10h
    mov ah, 09h
    lea dx, trophy5
    int 21h
    ret
  ENDP

END MAIN
