TITLE ASM1 (EXE)
;-----------------------------------------------------------------------------------------------------------
STACKSEG SEGMENT PARA 'Stack'
STACKSEG ENDS
;-----------------------------------------------------------------------------------------------------------
DATASEG SEGMENT PARA 'Data'
    ;///////////////////////////VARIABLES FOR LOADING SCREEN START//////////////////////////////////////
    TEMP DB ?
    BD00 DB "*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*", 10, 13
    BD01 DB "       ___        ___                                                 ___      ", 10, 13
    BD02 DB "      (   )      (   )                                               (   )     ", 10, 13  
    BD03 DB "    .-.| |  .---. | |.-.      .--.   ___ .-. .-.     .---.     .--.   | | .-.  ", 10, 13  
    BD04 DB "   /   \ | / .-, \| /   \   /  _  \ (   )   '   \   / .-, \  /  _  \  | |/   \ ", 10, 13
    BD05 DB "  |  .-. |(__) ; ||  .-. | . .' `. ; |  .-.  .-. ; (__) ; | . .' `. ; |  .-. . ", 10, 13  
    BD06 DB "  | |  | |  .'`  || |  | | | '   | | | |  | |  | |   .'`  | | '   | | | |  | | ", 10, 13  
    BD07 DB "  | |  | | / .'| || |  | | _\_`.(___)| |  | |  | |  / .'| | _\_`.(___)| |  | | ", 10, 13  
    BD08 DB "  | |  | || /  | || |  | |(   ). '.  | |  | |  | | | /  | |(   ). '.  | |  | | ", 10, 13  
    BD09 DB "  | '  | |; |  ; || '  | | | |  `\ | | |  | |  | | ; |  ; | | |  `\ | | |  | | ", 10, 13  
    BD10 DB "  ' `-'  /' `-'  |' `-' ;  ; '._,' ' | |  | |  | | ' `-'  | ; '._,' ' | |  | | ", 10, 13  
    BD11 DB "   `.__,' `.__.'_. `.__.    '.___.' (___)(___)(___)`.__.'_.  '.___.' (___)(___)", 10, 13
    BD12 DB " ", 10, 13
    BD13 DB "*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*_*", '$'

    LOAD DB "Loading...$"
    ;////////////////////////////VARIABLES FOR LOADING SCREEN END///////////////////////////////////////

    ;////////////////////////////VARIABLES FOR MENU SCREEN START////////////////////////////////////////
    ST00 DB "  _     ____    _____      _      ____    _____ ", 10, 13  
    ST01 DB " / |   / ___|  |_   _|    / \    |  _ \  |_   _|", 10, 13
    ST02 DB " | |   \___ \    | |     / _ \   | |_) |   | | ", 10, 13
    ST03 DB " | |_   ___) |   | |    / ___ \  |  _ <    | | ", 10, 13
    ST04 DB " |_(_) |____/    |_|   /_/   \_\ |_| \_\   |_| ", 10, 13, '$'

    HP00 DB "                     ____      _   _   _____   _       ____  ", 10, 13
    HP01 DB "                    |___ \    | | | | | ____| | |     |  _ \ ", 10, 13
    HP02 DB "                      __) |   | |_| | |  _|   | |     | |_) |", 10, 13
    HP03 DB "                     / __/ _  |  _  | | |___  | |___  |  __/", 10, 13
    HP04 DB "                    |_____(_) |_| |_| |_____| |_____| |_|  ", 10, 13, '$'

    QT00 DB "                                         _____     ___    _   _   ___   _____ ", 10, 13
    QT01 DB "                                        |___ /    / _ \  | | | | |_ _| |_   _|", 10, 13
    QT02 DB "                                          |_ \   | | | | | | | |  | |    | | ", 10, 13
    QT03 DB "                                         ___) |  | |_| | | |_| |  | |    | |  ", 10, 13
    QT04 DB "                                        |____(_)  \__\_\  \___/  |___|   |_|  ", 10, 13, 10, 13, 10, 13
    QT05 DB "                PRESS THE 'NUMBER' CORRESPONDING TO THE OPTION", 10, 13, '$'
    ;////////////////////////////VARIABLES FOR MENU SCREEN END//////////////////////////////////////////

    ;//////////////////////////VARIABLES FOR HOW TO SCREEN START///////////////////////////////////////
    HT01 DB "   _  _   ___ __      __  _____  ___    ___  _       _ __   __ _ ", 10, 13
    HT02 DB " | || | / _ \\ \    / / |_   _|/ _ \  | _ \| |     /_\\ \ / /(_)", 10, 13
    HT03 DB " | __ || (_) |\ \/\/ /    | | | (_) | |  _/| |__  / _ \\ V /  _ ", 10, 13
    HT04 DB " |_||_| \___/  \_/\_/     |_|  \___/  |_|  |____|/_/ \_\|_|  (_)", 10, 13, '$'

    HT05 DB "         IT IS SIMPLE! TAP THE KEY WHERE THERE IS A MOUNTED EVIL MOLE ", 10, 13
    HT06 DB "     TO GET THE HIGHEST SCORE. DO NOT LET THEM GET AWAY OR YOU WILL DIE.", 10, 13
    HT12 DB "          WHACK A MOLE AS MANY AS YOU CAN AND DOMINATE THIS EVIL", 10, 13
    HT11 DB "        YOU CAN AND DOMINATE THIS EVIL ASSEMBLY WORLD. SPARE NO EVIL! ", 10, 13, '$'

    HT07 DB "               ___    _    ___  ___  __  __    _    ___  _  _ ", 10, 13
    HT08 DB "              |   \  /_\  | _ )/ __||  \/  |  /_\  / __|| || |", 10, 13
    HT09 DB "              | |) |/ _ \ | _ \\__ \| |\/| | / _ \ \__ \| __ |", 10, 13
    HT10 DB "              |___//_/ \_\|___/|___/|_|  |_|/_/ \_\|___/|_||_|", 10, 13, 10, 13
    HT13 DB "                           PRESS '4' TO RETURN", 10, 13, '$'
    ;//////////////////////////VARIABLES FOR HOW TO SCREEN END/////////////////////////////////////////

    ;/////////////////////////VARIABLES FOR GAME OVER SCREEN START/////////////////////////////////////
    ET01 DB "                  oooooooooo.  oooooo   oooo oooooooooooo      .o.", 10, 13 
    ET02 DB "                  `888'   `Y8b  `888.   .8'  `888'     `8      888", 10, 13
    ET03 DB "                   888     888   `888. .8'    888              888", 10, 13
    ET04 DB "                   888oooo888'    `888.8'     888oooo8         Y8P", 10, 13
    ET05 DB "                   888    `88b     `888'      888             `8'", 10, 13
    ET06 DB "                   888    .88P      888       888       o      .o.", 10, 13
    ET07 DB "                  o888bood8P'      o888o     o888ooooood8      Y8P", 10, 13, '$'

    GO01 DB "           .oooooo.          .o.       ooo        ooooo oooooooooooo", 10, 13 
    GO02 DB "          d8P'  `Y8b        .888.      `88.       .888' `888'     `8", 10, 13 
    GO03 DB "         888               .8'888.      888b     d'888   888        ", 10, 13 
    GO04 DB "         888              .8' `888.     8 Y88. .P  888   888oooo8   ", 10, 13 
    GO05 DB "         888     ooooo   .88ooo8888.    8  `888'   888   888        ", 10, 13
    GO06 DB "         `88.    .88'   .8'     `888.   8    Y     888   888       o", 10, 13 
    GO07 DB "          `Y8bood8P'   o88o     o8888o o8o        o888o o888ooooood8", 10, 13, 10, 13 

    GO08 DB "              .oooooo.   oooooo     oooo oooooooooooo ooooooooo.  ", 10, 13     
    GO09 DB "             d8P'  `Y8b   `888.     .8'  `888'     `8 `888   `Y88.", 10, 13     
    GO10 DB "            888      888   `888.   .8'    888          888   .d88'", 10, 13      
    GO11 DB "            888      888    `888. .8'     888oooo8     888ooo88P' ", 10, 13      
    GO12 DB "            888      888     `888.8'      888          888`88b.   ", 10, 13      
    GO13 DB "            `88b    d88'      `888'       888       o  888  `88b. ", 10, 13      
    GO14 DB "             `Y8bood8P'        `8'       o888ooooood8 o888o  o888o", 10, 13, 10, 13
    GO15 DB "                              PRESS '4' TO RETURN", 10, 13 
    GO16 DB "                                 YOUR SCORE: ",'$', 10, 13 
    ;//////////////////////////VARIABLES FOR GAME OVER SCREEN END//////////////////////////////////////////

    ;////////////////////////////VARIABLES FOR GAME SCREEN START///////////////////////////////////////////
    GAME_SCREEN1  DB  " __.           .$"     ;Side panel title art and stats 
    GAME_SCREEN1A   DB  "(__ ._ _  _. __|_ $" 
    GAME_SCREEN1B   DB  ".__)[ | )(_]_) [ )$"
    GAME_SCREEN1C   DB  " , .     .  .   .  $"
    GAME_SCREEN1D   DB  "-+-|_  _ |\/| _ | _$"
    GAME_SCREEN1E   DB  " | [ )(/,|  |(_)|(/,$"   
    GAME_SCREEN6  DB  "CURRENT SCORE:$"
    GAME_SCREEN7    DB  "HIGH SCORE   :$"
    GAME_SCREEN8  DB  "MISSES       :$"
    GAME_SCREEN9  DB  "(ESC to exit)$"
    PRINT_SCORE   DB  6 DUP('$')
    PRINT_MISSES  DB  6 DUP('$')

    NEWLINE     DB  10, 13, '$'         ;preset newline/space for printing
    SPACE       DB  " $"

    SCORE       DB  0               ;player stats
    MISSES      DB  0

    DELAY_CONSTANT  DB  8             ;delay constant for game speed 
    ITERATEE_LOOP   DB  1             ;constant to compare loop repetition in game screen
    MOLE_STAY_LOOP  DB  3             ;controls the number of times sprite frames replay  
    AX1       DB  3             ;coordinates
    AX2       DB  8
    BX1       DB  10
    BX2       DB  15
    CX1       DB  17
    CX2       DB  22
    AY1       DB  4
    AY2       DB  19
    BY1       DB  21
    BY2       DB  24
    CY1       DB  38
    CY2       DB  41
    A_OFF       DB  27              ;offsets for mole position
    B_OFF       DB  10
    C_OFF       DB  7

    CURRENT_BOX   DB  5             ;current mole position, initially center
    CURR_X1     DB  1             ;current mole coordinates and offset
    CURR_Y1     DB  1
    CURR_X2     DB  1
    CURR_Y2     DB  1
    CURR_OFF    DB  1

    NEW_INPUT     DB  ?               ;holds input key id
    ;////////////////////////////VARIABLES FOR GAME SCREEN END/////////////////////////////////////////////

    ;////////////////////////////VARIABLES FOR HIGH SCORE START////////////////////////////////////////////
    PATHFILENAME_1  DB 'score.txt', 00H
    FILEHANDLE_1    DW ?

    RECORD_STR      DB 2              ;holds high score in int
                  DB ?
                  DB 2 DUP('$') 
    LINE            DB ' ', 10,13,'$'

    HIGH_SCORE    DW  ?, "$"            ;holds high score in string
    DECIMAL     DB "00000$"

    ERROR1_STR      DB 'Error in creating file.$'
    ERROR2_STR      DB 'Error writing in file.$'
    ERROR3_STR      DB 'Record not written properly.$'
    ERROR4_STR      DB 'Error in opening file.$'
    ERROR5_STR      DB 'Error reading from file.$'
    ERROR6_STR    DB 'No record read from file.$'
    YEZZNM_STR      DB 'PUMASOK$'
    YEZZN0_STR      DB 'PUMASOKKKKKKKKKK$'
    ;////////////////////////////VARIABLES FOR HIGH SCORE END/////////////////////////////////////////////

DATASEG ENDS
;-----------------------------------------------------------------------------------------------------------
CODESEG SEGMENT PARA 'Code'
    ASSUME SS:STACKSEG, DS:DATASEG, CS:CODESEG
START:
    MOV   AX,   DATASEG
    MOV   DS,   AX

    CALL  CLEAR_SCREEN
    CALL  PRINT_LOADING_SCREEN
    
    _RUN:
      CALL  PRINT_MENU_SCREEN 
      JMP _RUN

EXIT_MAIN:
    MOV   AH,   4CH
    INT   21H
;-----------------------------------------------------------------------------------------------------------
PRINT_LOADING_SCREEN PROC NEAR            ;render loading screen
  MOV   DL,   00                ;displays title
  MOV   DH,   03
  CALL  _SET_CURSOR
  MOV   AH,   09                  
  LEA   DX,   BD00          
  INT   21H

  MOV   DL,   22H               ;displays loading
  MOV   DH,   20
  CALL  _SET_CURSOR
  MOV   AH,   09H
  LEA   DX,   LOAD
  INT   21H

  MOV   TEMP,   9               ;moving bar   

  __ITERATE:
  MOV   DL,   TEMP
  MOV   DH,   22
  CALL  _SET_CURSOR
  MOV   AL,   0DBH              ;display character from register
  MOV   AH,   02H
  MOV   DL,   AL
  INT   21H
  CALL  _DELAY
  INC   TEMP
  CMP   TEMP,   74
  JE    __TERMINATE
   JMP    __ITERATE

   __TERMINATE:
    MOV   DL,   22H
  MOV   DH,   20
  CALL  _SET_CURSOR

  MOV   DL,   00
  MOV   DH,   13
  CALL  _SET_CURSOR

    RET
PRINT_LOADING_SCREEN ENDP
;-----------------------------------------------------------------------------------------------------------
PRINT_MENU_SCREEN PROC NEAR             ;render menu screen

  CALL  CLEAR_SCREEN
  MOV   DL,     00
  MOV   DH,     00
  CALL  _SET_CURSOR
  CALL  PRINT_MENU_ART

  CHOOSE:
  MOV   DH,     24
  MOV   DL,     01
    CALL _SET_CURSOR

  MOV   AH,     1                 ;code for "read a character"
  INT   21H 

  CMP   AL,     '3'             ;exit
  JE    MENU_EXIT

  CMP   AL,     '2'             ;help
  JE    HELP

  CMP   AL,     '1'
  JE    GAME_START

  JMP   CHOOSE

  GAME_START:
    CALL  PRINT_GAME_SCREEN
    JMP   PMS_RET

  MENU_EXIT:
    CALL  PRINT_EXIT_SCREEN
    JMP   PMS_RET

  HELP:
    CALL  PRINT_HELP_SCREEN

PMS_RET:
   RET
PRINT_MENU_SCREEN ENDP
;-----------------------------------------------------------------------------------------------------------
PRINT_HELP_SCREEN PROC NEAR             ;render help screen
  CALL  CLEAR_SCREEN

  MOV   DH,     01
  MOV   DL,     00
  CALL  _SET_CURSOR

  LEA   DX,     BD13
  MOV   AH,     09 
  INT   21H

  MOV   AH,     09
  LEA   DX,     HT01
  INT   21H

  MOV   DH,     10
  MOV   DL,     00
  CALL  _SET_CURSOR

  MOV   AH,     09
  LEA   DX,     HT05
  INT   21H

  MOV   DH,     18
  MOV   DL,     00
  CALL  _SET_CURSOR

  MOV   AH,     09
  LEA   DX,     HT07
  INT   21H

  CHOOSE2:
  MOV   AH,     1                 ;code for "read a character"
  INT   21H 

  CMP   AL,     '4'
  JE    PHS_RET

  JMP   CHOOSE2
  
  PHS_RET:
  RET
PRINT_HELP_SCREEN ENDP
;-----------------------------------------------------------------------------------------------------------
PRINT_GAME_OVER_SCREEN PROC NEAR          ;render game over screen
  CALL  CLEAR_SCREEN

  MOV   DH,     01
  MOV   DL,     00
  CALL  _SET_CURSOR

  MOV   AH,     09
  LEA   DX,     BD13
  INT   21H

  MOV   DH,     04
  MOV   DL,     00
  CALL  _SET_CURSOR

  MOV   AH,     09
  LEA   DX,     GO01
  INT   21H

  MOV   DH,     21
  MOV   DL,     44
  CALL  _SET_CURSOR

  MOV   AL,       SCORE         ;move score to AL for convertion
    XOR   AH,       AH              ;clear AH

    MOV   BX,       10 
    MOV   CX,       0 
 cycle111:       
    MOV   DX,       0
    DIV   BX 
    PUSH  DX 
    INC   CX
    CMP   AX, 0  
    JNE   cycle111 
    MOV   SI,       offset PRINT_SCORE
  cycle211:  
    POP   DX        
    ADD   DL,       48 
    MOV   [SI],       DL
    INC   SI
    LOOP  cycle211                ;end convertion loop

  MOV   AH,     09
  LEA   DX,     PRINT_SCORE
  INT   21H

  MOV   DH,     22
  MOV   DL,     00
  CALL  _SET_CURSOR

  MOV   AH,     09
  LEA   DX,     BD13
  INT   21H

  MOV SCORE, 0                ;reset stats
  MOV MISSES, 0

  GOS_CHOOSE:
  MOV   AH,     1                 ; code for "read a character"
  INT   21H 

  CMP   AL,     '4'
  JE    PGO_RET

  JMP   GOS_CHOOSE

  PGO_RET:
  RET
PRINT_GAME_OVER_SCREEN ENDP
;-----------------------------------------------------------------------------------------------------------
PRINT_EXIT_SCREEN PROC NEAR             ;render exit screen
  CALL  CLEAR_SCREEN

  MOV   DH,     01
  MOV   DL,     00
  CALL  _SET_CURSOR

  MOV   AH,     09
  LEA   DX,     BD13
  INT   21H

  MOV   DH,     09
  MOV   DL,     00
  CALL  _SET_CURSOR

  MOV   AH,     09
  LEA   DX,     ET01
  INT   21H

  MOV   DH,     22
  MOV   DL,     00
  CALL  _SET_CURSOR

  MOV   AH,     09
  LEA   DX,     BD13
  INT   21H

  MOV   AH,     4CH
  INT   21H
PRINT_EXIT_SCREEN ENDP
;-----------------------------------------------------------------------------------------------------------
PRINT_GAME_SCREEN PROC NEAR             ;render game screen
    CALL  CLEAR_SCREEN
    CALL  PRINT_GAME_GRID             ;display grid
    CALL  GAME_SCREEN_PRINT_STM         ;display "smash the mole" ascii art and game stats

    CALL READ_FILE
    CALL STRING2NUMBER

    CALL   CHECK_HIGH_SCORE            ;preloads HIGH_SCORE variable with current high score
    CALL   GAME_SCREEN_PRINT_HIGHSCORE

    CALL  GAME_SCREEN_MOVING_MOLE         ;gameplay- proc holds main logic
    CALL  PRINT_GAME_OVER_SCREEN
  RET
PRINT_GAME_SCREEN ENDP
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_MOVING_MOLE PROC NEAR                     ;main game logic
  GAME_ONGOING:
      MOV       MOLE_STAY_LOOP,     3                 ;controls the number of times the sprite frame of mole replays
      MOV       ITERATEE_LOOP,      1                 ;reset loop sequence: 1-continue, 2-change location of mole(see line 443), 3-esc
      CALL      SET_CURR_BOX                          ;resets location of mole, invoked every loop iteration if user entered correct letter
      CALL      GAME_SCREEN_MOVING_MOLE_UP            
    ITERATEE:                                         ;loop of printing of mole sprites    
        CALL    GAME_SCREEN_MOVING_MOLE_STAY1         ;sprite of moles in place separated so user input
        CALL    CHECK_KEY                             ;   is read after every frame printed
          
        CMP     ITERATEE_LOOP,        2               ;in CHECK_KEY, ITERATE_LOOP is set to 2
        JE      CAUGHT                                ;   when user enters the right letter
        CMP     ITERATEE_LOOP,        3               ;if esc exit
        JE      GSMM_EXIT_PROGRAM

        CALL    GAME_SCREEN_MOVING_MOLE_STAY2         ;sprite frame 2
        CALL    CHECK_KEY

        CMP     ITERATEE_LOOP,        2               ;read input
        JE      CAUGHT
        CMP     ITERATEE_LOOP,        3        
        JE      GSMM_EXIT_PROGRAM

        CALL    GAME_SCREEN_MOVING_MOLE_STAY3         ;sprite frame 3
        CALL    CHECK_KEY

        CMP     ITERATEE_LOOP,        2               ;read input
        JE      CAUGHT
        CMP     ITERATEE_LOOP,        3       
        JE      GSMM_EXIT_PROGRAM

        DEC     MOLE_STAY_LOOP                        ;mole will only stay in the box 3 times before going down
        CMP     MOLE_STAY_LOOP,       0               ;check if mole has stayed 3 times already
        JE      INC_COUNT_MISSES                       
        JMP     TO_ITERATE                            ;jump to reloop 

      INC_COUNT_MISSES:                               ;player can only miss 5 times before game over
        INC     MISSES                                ;increment number of misses
        CMP     MISSES,               5               ;if player has missed 5 times, jump to game over screen
        JE      GSMM_EXIT                             ;jump to game over screen
        JMP     LEAVE                                 ;else, continue main loop

      TO_ITERATE:                                     ;iterates printing of mole sprites
        JMP     ITERATEE                                

      CAUGHT:                                         ;if player entered the correct key
        CALL    GAME_SCREEN_MOVING_MOLE_DOWN          ;render hit mole sprites
        CALL    CHECK_SCORE_SPEED_UP                  ;check if the speed should already increase or not depending on score  

      LEAVE:                                          ;print new stats
        CALL    SET_SCREEN_PART_INDICES               ;clear box where mole was
        CALL    CLEAR_SCREEN_PART 
        CALL    GAME_SCREEN_PRINT_SCORE               ;print new score
        CALL    GAME_SCREEN_PRINT_MISSES              ;print new misses(if any)

        CALL    CHECK_HIGH_SCORE                      ;check high score
        CALL    GAME_SCREEN_PRINT_HIGHSCORE           ;print new highscore(if any)

        MOV     NEW_INPUT,      00                    ;reset key input
        CALL    RANDGEN                               ;generates random new mole position

    JMP GAME_ONGOING                                  ;reloop main loop        

  GSMM_EXIT:                                          ;if player wishes to exit game
    RET

  GSMM_EXIT_PROGRAM:                                  ;if game over    
    CALL PRINT_EXIT_SCREEN

GAME_SCREEN_MOVING_MOLE ENDP
;-----------------------------------------------------------------------------------------------------------
;///////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////PROCEDURES USED START///////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
DISPLAY PROC NEAR                     ;display procedure    
    POP   BX
    POP   DX
    PUSH  BX
    MOV   AH, 9
    INT   21H
    RET
DISPLAY ENDP
;-----------------------------------------------------------------------------------------------------------
CLEAR_SCREEN PROC NEAR                ;clear full screen procedure
    MOV   AX,   0600H                 ;AH is clear screen command, AL is number of lines to scroll
    MOV   BH,   07H                     
    MOV   CX,   0000H                 ;upper left row:column (0:0)
    MOV   DX,   184FH                 ;lower right row:column (24:79)
    INT   10H
    RET
CLEAR_SCREEN ENDP
;-----------------------------------------------------------------------------------------------------------
CLEAR_SCREEN_PART PROC NEAR           ;clear only square where mole is procedure
    MOV   AX,   0606H                 ;AH is clear screen command, AL is number of lines to scroll
    MOV   BH,   07H     
    INT   10H
    RET
CLEAR_SCREEN_PART ENDP
;-----------------------------------------------------------------------------------------------------------
SET_CURR_BOX PROC NEAR                ;set current box stats according to current box number
 
    CMP   CURRENT_BOX,  1 
    JE    BOX_1
    CMP   CURRENT_BOX,  2 
    JE    BOX_2
    CMP   CURRENT_BOX,  3 
    JE    BOX_3

    JMP   NEXT_BYTE_SET               ;separated with other 6 to avoid byte set error

  BOX_1:                              ;box 1 coordinates and offset
    MOV   CH,         AX1
    MOV   CL,         AY1
    MOV   DH,         AX2
    MOV   DL,         AY2

    MOV   CURR_X1,    CH
    MOV   CURR_Y1,    CL
    MOV   CURR_X2,    DH
    MOV   CURR_Y2,    DL

    MOV   CH,         A_OFF
    MOV   CURR_OFF,   CH

    JMP   SCB_RET

  BOX_2:                                ;box 2 coordinates and offset
    MOV   CH,         AX1
    MOV   CL,         BY1
    MOV   DH,         AX2
    MOV   DL,         BY2

    MOV   CURR_X1,    CH
    MOV   CURR_Y1,    CL
    MOV   CURR_X2,    DH
    MOV   CURR_Y2,    DL

    MOV   CH,         B_OFF
    MOV   CURR_OFF,   CH

    JMP   SCB_RET

  BOX_3:                                ;box 3 coordinates and offset
    MOV   CH,         AX1
    MOV   CL,         CY1
    MOV   DH,         AX2
    MOV   DL,         CY2

    MOV   CURR_X1,    CH
    MOV   CURR_Y1,    CL
    MOV   CURR_X2,    DH
    MOV   CURR_Y2,    DL

    MOV   CH,         C_OFF
    MOV   CURR_OFF,   CH

    JMP SCB_RET                         ;jump to end

  NEXT_BYTE_SET:

    CMP   CURRENT_BOX,  4 
    JE    BOX_4
    CMP   CURRENT_BOX,  5 
    JE    BOX_5
    CMP   CURRENT_BOX,  6 
    JE    BOX_6
 
   JMP NEXT_BYTE_SET2

  BOX_4:                                ;box 4 coordinates and offset

    MOV   CH,         BX1
    MOV   CL,         AY1
    MOV   DH,         BX2
    MOV   DL,         AY2

    MOV   CURR_X1,    CH
    MOV   CURR_Y1,    CL
    MOV   CURR_X2,    DH
    MOV   CURR_Y2,    DL

    MOV   CH,         A_OFF
    MOV   CURR_OFF,   CH

    JMP   SCB_RET

  BOX_5:                                  ;box 5 coordinates and offset
    MOV   CH,         BX1
    MOV   CL,         BY1
    MOV   DH,         BX2
    MOV   DL,         BY2

    MOV   CURR_X1,    CH
    MOV   CURR_Y1,    CL
    MOV   CURR_X2,    DH
    MOV   CURR_Y2,    DL

    MOV   CH,         B_OFF
    MOV   CURR_OFF,   CH

    JMP   SCB_RET

  BOX_6:                                   ;box 6 coordinates and offset
    MOV   CH,         BX1
    MOV   CL,         CY1
    MOV   DH,         BX2
    MOV   DL,         CY2

    MOV   CURR_X1,    CH
    MOV   CURR_Y1,    CL
    MOV   CURR_X2,    DH
    MOV   CURR_Y2,    DL

    MOV   CH,         C_OFF
    MOV   CURR_OFF,   CH

    JMP SCB_RET

  NEXT_BYTE_SET2:

    CMP    CURRENT_BOX,  7 
    JE     BOX_7
    CMP    CURRENT_BOX,  8 
    JE     BOX_8
    CMP    CURRENT_BOX,  9 
    JE     BOX_9
  
  JMP SCB_RET

  BOX_7:                                   ;box 7 coordinates and offset
    MOV   CH,         CX1
    MOV   CL,         AY1
    MOV   DH,         CX2
    MOV   DL,         AY2

    MOV   CURR_X1,    CH
    MOV   CURR_Y1,    CL
    MOV   CURR_X2,    DH
    MOV   CURR_Y2,    DL

    MOV   CH,         A_OFF
    MOV   CURR_OFF,   CH

    JMP SCB_RET

  BOX_8:                                    ;box 8 coordinates and offset
    MOV   CH,         CX1
    MOV   CL,         BY1
    MOV   DH,         CX2
    MOV   DL,         BY2

    MOV   CURR_X1,    CH
    MOV   CURR_Y1,    CL
    MOV   CURR_X2,    DH
    MOV   CURR_Y2,    DL

    MOV   CH,         B_OFF
    MOV   CURR_OFF,   CH

    JMP SCB_RET

  BOX_9:                                    ;box 9 coordinates and offset
    MOV   CH,         CX1
    MOV   CL,         CY1
    MOV   DH,         CX2
    MOV   DL,         CY2

    MOV   CURR_X1,    CH
    MOV   CURR_Y1,    CL
    MOV   CURR_X2,    DH
    MOV   CURR_Y2,    DL

    MOV   CH,         C_OFF
    MOV   CURR_OFF,   CH

    JMP SCB_RET

  SCB_RET:
    RET
SET_CURR_BOX ENDP
;-----------------------------------------------------------------------------------------------------------
SET_SCREEN_PART_INDICES PROC NEAR           ;called before CLEAR_SCREEN_PARTS to set start and 
  MOV   CH,       CURR_X1                   ;              end indices of box to clear
  MOV   CL,       CURR_Y1
  MOV   DH,       CURR_X2
  MOV   DL,       CURR_Y2   
  RET
SET_SCREEN_PART_INDICES ENDP
;-----------------------------------------------------------------------------------------------------------
SET_LAYER_START_DL PROC NEAR                ;adds or substracts offset to DL before printing one 
    CMP   CURR_OFF,     27                  ;              layer of the sprite
    JE    A_1
    CMP   CURR_OFF,     10
    JE    B_2
    CMP   CURR_OFF,     7
    JE    C_3
    JMP   SLSD_RET

  A_1:                                      ;for boxes in column A 
    SUB   DL,       27
    JMP   SLSD_RET
  B_2:                                      ;for boxes in column B
    SUB   DL,       10
    JMP   SLSD_RET
  C_3:                                      ;for boxes in columns C  
    ADD   DL,       7
    JMP   SLSD_RET

  SLSD_RET:
    RET
SET_LAYER_START_DL ENDP
;-----------------------------------------------------------------------------------------------------------
SET_CURSOR PROC NEAR                ;sets cursor, multiple uses for game screen
  POP   BX
    POP   DX
    PUSH  BX
    MOV   AH,       02H             ;function code to request for set cursor
    MOV   BH,       00              ;page number 0, i.e. current screen
    INT 10H
    RET
SET_CURSOR ENDP
;-----------------------------------------------------------------------------------------------------------
_SET_CURSOR PROC NEAR               ;sets curson
  MOV   AH,       02H
  MOV   BH,       00
  INT   10H
  RET
_SET_CURSOR ENDP
;-----------------------------------------------------------------------------------------------------------
_DELAY PROC NEAR                  ;for loading screen
  MOV   BP,       2             ;lower value faster
  MOV   SI,       2             ;lower value faster
  delay12:
  DEC   BP
  NOP
  JNZ   delay12
  DEC   SI
  CMP   SI,       0
  JNZ   delay12
  RET
_DELAY ENDP
;-----------------------------------------------------------------------------------------------------------
_DELAY_SPRITE PROC  NEAR              ;delays display of next sprite
  MOV   CL,       DELAY_CONSTANT      
  XOR   CH,       CH

  MOV   BP,       CX            ;lower value is faster
  MOV   SI,       CX
  DELAY2:
  DEC   BP
  NOP
  JNZ   DELAY2
  
  DEC   SI
  CMP   SI,       0
  JNZ DELAY2
  RET
_DELAY_SPRITE ENDP
;-----------------------------------------------------------------------------------------------------------
GET_KEY PROC NEAR                 ;check for input
  MOV   AH,       01H           
  INT   16H

  JZ    LEAVETHIS

  MOV   AH,       00H           ;get input  MOV AH, 10H; INT 16H
  INT   16H

  MOV   NEW_INPUT,    AH
  RET

  LEAVETHIS:
  RET
GET_KEY   ENDP
;-----------------------------------------------------------------------------------------------------------
RANDGEN PROC NEAR                   ;generate a rand no using the system time and changes 
                                    ;     current box number accordingly
  MOV   AH,           00h           ;interrupts to get system time        
  INT   1AH                         ;CX:DX now hold number of clock ticks since midnight      
  MOV   AX,           DX
  XOR   DX,           DX            ;clears DX to be ready to hold generated random number
  MOV   CX,           9             ;set range of numbers to generate from
  DIV   CX                          ;here dx contains the remainder of the division - from 0 to 8
  ADD   DL,           1             ;add 1 since generated number follows zero based index
  MOV   CURRENT_BOX,  DL            ;CURRENT_BOX now holds random value
  RET 
RANDGEN ENDP
;-----------------------------------------------------------------------------------------------------------
CHECK_KEY PROC NEAR                 ;checks if entered key matches current location of the mole
  CALL GET_KEY  

  CMP   NEW_INPUT,    13H           ;compare if R
  JE    IF_CURR_R 
  CMP   NEW_INPUT,    14H           ;compare if T
  JE    IF_CURR_T
  CMP   NEW_INPUT,    15H           ;compare if Y
  JE    IF_CURR_Y
  CMP   NEW_INPUT,    20H           ;compare if D
  JE    IF_CURR_D
  CMP   NEW_INPUT,    21H           ;compare if F
  JE    IF_CURR_F
  CMP   NEW_INPUT,    22H           ;compare if G
  JE    IF_CURR_G
  CMP   NEW_INPUT,    2DH           ;compare if X
  JE    IF_CURR_X
  CMP   NEW_INPUT,    2EH           ;compare if C
  JE    IF_CURR_C
  CMP   NEW_INPUT,    2FH           ;compare if V
  JE    IF_CURR_V
  CMP   NEW_INPUT,    01H           ;compare if ESC
  JE    IF_CURR_ESC

  JMP   CK_EXIT

  IF_CURR_R:
    CMP   CURRENT_BOX,  1     
    JE    CHECK_KEY_YES
    JMP   CK_EXIT
  IF_CURR_T:
    CMP   CURRENT_BOX,  2
    JE    CHECK_KEY_YES
    JMP   CK_EXIT
  IF_CURR_Y:
    CMP   CURRENT_BOX,  3
    JE    CHECK_KEY_YES
    JMP   CK_EXIT
  IF_CURR_D:
    CMP   CURRENT_BOX,  4
    JE    CHECK_KEY_YES
    JMP   CK_EXIT
  IF_CURR_F:
    CMP   CURRENT_BOX,  5
    JE    CHECK_KEY_YES
    JMP   CK_EXIT
  IF_CURR_G:
    CMP   CURRENT_BOX,  6
    JE    CHECK_KEY_YES
    JMP   CK_EXIT
  IF_CURR_X:
    CMP   CURRENT_BOX,  7
    JE    CHECK_KEY_YES
    JMP   CK_EXIT
  IF_CURR_C:
    CMP   CURRENT_BOX,  8
    JE    CHECK_KEY_YES
    JMP   CK_EXIT
  IF_CURR_V:
    CMP   CURRENT_BOX,  9
    JE    CHECK_KEY_YES
    JMP   CK_EXIT
  IF_CURR_ESC:    
    MOV   ITERATEE_LOOP,  3
    JMP   CK_EXIT

    JMP CK_EXIT

  CHECK_KEY_YES:
    MOV   ITERATEE_LOOP,  2           ;set to 2 when user enters right letter
    INC   SCORE 

  CK_EXIT:
    RET
CHECK_KEY   ENDP
;-----------------------------------------------------------------------------------------------------------
CHECK_SCORE_SPEED_UP PROC NEAR        ;decrements delay constant to speed up sprite rate
  CMP   SCORE,      78                ;once score reaches 60, stops speeding up
  JGE   CSSU_EXIT
  
  XOR   AX,         AX
  MOV   AX,         SCORE             ;gets remainder of score%13 
  MOV   BX,         13
  MOV   DX,         0    
  DIV   BX                            ;DX now holds remainder

  CMP   DX,         0                 ;if score is divisible by 13, speed up
  JE    SPEED_UP

  JMP   CSSU_EXIT

  SPEED_UP:
  SUB   DELAY_CONSTANT, 1             ;subtract 1 to speed up 

  CSSU_EXIT:
  RET
CHECK_SCORE_SPEED_UP ENDP
;-----------------------------------------------------------------------------------------------------------
CHECK_HIGH_SCORE PROC NEAR            ;checks if highscore should change
  
  MOV   CX,         SCORE             ;move score to AX for comparison

  CMP   HIGH_SCORE, CX                ;compare
  JLE   LESSR
  JMP   CHS_RET

  LESSR:                              ;if new score is still less             
    MOV   AX,           CX
    CALL  NUMBER2STRING

  CHS_RET:
    RET
CHECK_HIGH_SCORE ENDP
;-----------------------------------------------------------------------------------------------------------
;///////////////////////////////////////////////////////////////////////////////////////////////////////////
;///////////////////////////////////////PROCEDURES USED END/////////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------
;///////////////////////////////////////////////////////////////////////////////////////////////////////////
;////////////////////////////////////PRINT GAME SCREEN ART START////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_PRINT_STM PROC NEAR           ;"SMASH THE MOLE" ascii art and stats
  
  MOV   DX,       0439H         ;"SMASH THE MOLE" ascii art start
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN1
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       0539H
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN1A
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       0639H
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN1B
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       0739H
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN1C
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       0839H
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN1D
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       0939H         ;"SMASH THE MOLE" ascii art end
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN1E
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       0D39H         ;"Current Score"
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN6
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       0E39H         ;"High Score"
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN7
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       1139H         ;"Misses"
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN8
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       1439H         ;"ESC to exit"
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       GAME_SCREEN9
  PUSH  DX
  CALL  DISPLAY

  MOV   DX,       1800H         ;set cursor 
  PUSH  DX
  CALL  SET_CURSOR
  
  RET
GAME_SCREEN_PRINT_STM ENDP
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_PRINT_SCORE PROC NEAR         ;print score from variable by converting it to string
  MOV   AL,       SCORE         ;move score to AL for convertion
    XOR   AH,       AH              ;clear AH

    MOV   BX,       10 
    MOV   CX,       0 
 cycle11:       
    MOV   DX,       0
    DIV   BX 
    PUSH  DX 
    INC   CX
    CMP   AX, 0  
    JNE   cycle11 
    MOV   SI,       offset PRINT_SCORE
  cycle21:  
    POP   DX        
    ADD   DL,       48 
    MOV   [SI],       DL
    INC   SI
    LOOP  cycle21 
  
  MOV   DX,       0D49H         
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       PRINT_SCORE       ;print score on game screen
  PUSH  DX
  CALL  DISPLAY

  RET
GAME_SCREEN_PRINT_SCORE ENDP
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_PRINT_MISSES PROC NEAR          ;print number of misses as it accumulates
  MOV   AL,       MISSES
    XOR   AH,       AH

    MOV   BX,       10 
    MOV   CX,       0 
 cycle1:       
    MOV   DX,       0
    DIV   BX 
    PUSH  DX 
    INC   CX
    CMP   AX, 0  
    JNE   cycle1 
    MOV   SI,       offset PRINT_MISSES
  cycle2:  
    POP   DX        
    ADD   DL,       48 
    MOV   [SI],       DL
    INC   SI
    LOOP  cycle2 

  MOV   DX,       1149H
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       PRINT_MISSES
  PUSH  DX
  CALL  DISPLAY

  RET
GAME_SCREEN_PRINT_MISSES ENDP
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_PRINT_HIGHSCORE PROC NEAR       ;print score from variable by converting it to string

  CALL NUMBER2STRING
  
  ;TODO CHAELLE : kani nga part kay nag print na sa string form. murag pwede ra ni dili hilabtan
  MOV   DX,       0E49H         
  PUSH  DX
  CALL  SET_CURSOR
  LEA   DX,       RECORD_STR       ;print score on game screen
  PUSH  DX
  CALL  DISPLAY

  RET
GAME_SCREEN_PRINT_HIGHSCORE ENDP
;-----------------------------------------------------------------------------------------------------------
PRINT_MENU_ART PROC NEAR              ;print menu art
  
  MOV   DH,     01
  MOV   DL,     00
  CALL  _SET_CURSOR  

  LEA   DX,     BD13
  MOV   AH,     09 
  INT   21H

  MOV   DH,     04
  MOV   DL,     00
  CALL  _SET_CURSOR 
  MOV   AH,     09
  LEA   DX,     ST00
  INT   21H

  MOV   DH,     09
  MOV   DL,     00
  CALL  _SET_CURSOR 
  MOV   AH,     09
  LEA   DX,     HP00
  INT   21H

  MOV   DH,     14
  MOV   DL,     00
  CALL  _SET_CURSOR 
  MOV   AH,     09
  LEA   DX,     QT00
  INT   21H

  MOV   DH,     23
  MOV   DL,     00  
  CALL  _SET_CURSOR
  MOV   AH,     09
  LEA   DX,     BD13
  INT   21H

  RET
PRINT_MENU_ART ENDP
;-----------------------------------------------------------------------------------------------------------
;////////////////////////////////////////PRINT GAME GRID START///////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
PRINT_GAME_GRID PROC NEAR

    MOV DH, 0     ;clean DX
    MOV AH, 02    ;set function

  MOV DX, 0200H
  PUSH DX
  CALL SET_CURSOR

    ;top border
    MOV DL, SPACE
    INT 21H
    MOV DL, SPACE
    INT 21H
    MOV DL, SPACE
    INT 21H
    MOV DL, 201       ;print upper left border                                     
    INT 21H  
    CALL GRID_MIDLINE
    MOV DL, 203       ;print "T" border
    INT 21H 
    CALL GRID_MIDLINE 
    MOV DL, 203
    INT 21H 
    CALL GRID_MIDLINE 
    MOV DL, 187       ;print upper right border
    INT 21H
    MOV DL, NEWLINE
    INT 21H
    
    ;spaces for box
    CALL SPACE_BOX

  ;MID border
    CALL MID_BORDER

    ;spaces for box
    CALL SPACE_BOX

  ;MID border
  CALL MID_BORDER

  ;spaces for box
    CALL SPACE_BOX

    ;bottom border
    MOV DL, SPACE
    INT 21H
    MOV DL, SPACE
    INT 21H
    MOV DL, SPACE
    INT 21H
    MOV DL, 200       ;print lower left border                                     
    INT 21H  
    CALL GRID_MIDLINE
    MOV DL, 202       ;print bottom "T" border
    INT 21H 
    CALL GRID_MIDLINE 
    MOV DL, 202
    INT 21H 
    CALL GRID_MIDLINE 
    MOV DL, 188       ;print lower right border
    INT 21H

    RET
PRINT_GAME_GRID ENDP
;-----------------------------------------------------------------------------------------------------------
GRID_MIDLINE PROC NEAR
    MOV DH, 0

    MOV CX, 16
    MOV DL, 205       ;print straight line              
    MIDLINE:
        INT 21H                                         
        DEC CX
    JNZ MIDLINE
  RET
GRID_MIDLINE ENDP
;-----------------------------------------------------------------------------------------------------------
GRID_COLUMN PROC NEAR
    MOV DH, 0
    MOV DL, 186       ;print column border
    INT 21H

    MOV CX, 16
    MOV DL, 32             
    PRINT_SPACE:
        INT 21H                                         
        DEC CX
    JNZ PRINT_SPACE
  RET
GRID_COLUMN ENDP
;-----------------------------------------------------------------------------------------------------------
SPACE_BOX PROC NEAR
    MOV BX, 6
  SB_LOOP:
      MOV DL, SPACE
      INT 21H
      MOV DL, SPACE
      INT 21H
      MOV DL, SPACE
      INT 21H
      CALL GRID_COLUMN
      CALL GRID_COLUMN
    CALL GRID_COLUMN
    MOV DL, 186       ;print column border
      INT 21H
      MOV DL, NEWLINE
      INT 21H
      DEC BX
      CMP BX, 0
    JNE SB_LOOP 
  RET
SPACE_BOX ENDP
;-----------------------------------------------------------------------------------------------------------
MID_BORDER PROC NEAR
    MOV DL, SPACE
    INT 21H
    MOV DL, SPACE
    INT 21H
    MOV DL, SPACE
  INT 21H
    MOV DL, 204       ;print sideways "T" border                                     
    INT 21H  
    CALL GRID_MIDLINE
    MOV DL, 206       ;print "+" border
    INT 21H 
    CALL GRID_MIDLINE 
    MOV DL, 206
    INT 21H 
    CALL GRID_MIDLINE 
    MOV DL, 185       ;print sideways "T"
    INT 21H
    MOV DL, NEWLINE
    INT 21H 
  RET
MID_BORDER ENDP
;-----------------------------------------------------------------------------------------------------------
PRINT_GAME_GRID_LETTERS PROC NEAR         ;print letter labels of each box corner
  
  ;print letter "R"
    MOV DX, 0711H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DX, 0811H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 220       
  INT 21H

  ;print letter "T"
    MOV DX, 0722H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 223       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DX, 0823H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H

  ;print letter "Y"
    MOV DX, 0733H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 223       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DX, 0834H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H

  ;print letter "D"
    MOV DX, 0E11H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DX, 0F11H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H

  ;print letter "F"
    MOV DX, 0E22H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DX, 0F22H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 223       
  INT 21H

  ;print letter "G"
    MOV DX, 0E33H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DX, 0F33H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 223       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 219       
  INT 21H

  ;print letter "X"
    MOV DX, 1511H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 223       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DX, 1611H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H

  ;print letter "C"
    MOV DX, 1522H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DX, 1622H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 223       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H

    ;print letter "V"
    MOV DX, 1533H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DX, 1633H
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 223       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H

  RET
PRINT_GAME_GRID_LETTERS ENDP
;-----------------------------------------------------------------------------------------------------------
;////////////////////////////////////////PRINT GAME GRID END/////////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
;/////////////////////////////////////PRINT MOLE IN PLACE START//////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_MOVING_MOLE_STAY1 PROC NEAR
    CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

    ;sprite 1
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR        

  ;layer 1
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 2
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 3
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 42       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H

  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 47      
  INT 21H
  MOV DL, 92       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
    MOV DL, 176       
  INT 21H 
  MOV DL, 219       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 176       
  INT 21H
    MOV DL, 177       
  INT 21H 
  MOV DL, 178       
  INT 21H
  MOV DL, 178       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

    ;CLEAR
  MOV DH, CURR_X1        
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR 
  
  ;layer 1,2,3,4,5,6
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE

  RET
GAME_SCREEN_MOVING_MOLE_STAY1 ENDP
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_MOVING_MOLE_STAY2 PROC NEAR
    ;sprite 2
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX         
  CALL SET_CURSOR        

  ;layer 1
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 2
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 3
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H

  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 47      
  INT 21H
  MOV DL, 92       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
    MOV DL, 42       
  INT 21H 
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 176       
  INT 21H
    MOV DL, 177       
  INT 21H 
  MOV DL, 178       
  INT 21H
  MOV DL, 176      
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

    ;CLEAR
  MOV DH, CURR_X1        
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR 
  
  ;layer 1,2,3,4,5,6
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE

  RET
GAME_SCREEN_MOVING_MOLE_STAY2 ENDP
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_MOVING_MOLE_STAY3 PROC NEAR
  ;sprite 3
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR        

  ;layer 1
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 2
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 3
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42      
  INT 21H

  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
    SUB DL, 10                 
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 47      
  INT 21H
  MOV DL, 92       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
    MOV DL, 176       
  INT 21H 
  MOV DL, 219       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 176       
  INT 21H
    MOV DL, 177       
  INT 21H 
  MOV DL, 178       
  INT 21H
  MOV DL, 178       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

    ;CLEAR
  MOV DH, CURR_X1     
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR 
  
  ;layer 1,2,3,4,5,6
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE

  RET
GAME_SCREEN_MOVING_MOLE_STAY3 ENDP
;-----------------------------------------------------------------------------------------------------------
;/////////////////////////////////////PRINT MOLE IN PLACE START//////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
;///////////////////////////////////PRINT MOLE MOVING DOWN START/////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_MOVING_MOLE_DOWN PROC NEAR
  CALL SET_SCREEN_PART_INDICES
  CALL CLEAR_SCREEN_PART

  ;sprite 1
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR
  
  ;layer 1
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 248       
  INT 21H
  MOV DL, 248      
  INT 21H
  MOV DL, 248       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 2
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 3
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 248       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 248       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H

  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 47      
  INT 21H
  MOV DL, 92       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
    MOV DL, 176       
  INT 21H 
  MOV DL, 219       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 176       
  INT 21H
    MOV DL, 177       
  INT 21H 
  MOV DL, 178       
  INT 21H
  MOV DL, 178       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

    ;sprite 2
    MOV DH, CURR_X1        ;where mole should appear
    MOV DL, CURR_Y1        
    PUSH DX          
    CALL SET_CURSOR
  
  ;layer 1
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 126       
  INT 21H
  MOV DL, 126      
  INT 21H
  MOV DL, 126       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 2
  ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 3
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 45       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 45       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 47      
  INT 21H
  MOV DL, 92       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
    SUB DL, 10              
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
    MOV DL, 177       
  INT 21H 
  MOV DL, 219       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

  ;sprite 3
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR
  
  ;layer 1
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE

  ;layer 2
  ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 126       
  INT 21H
  MOV DL, 126      
  INT 21H
  MOV DL, 126       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 3
  ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 88       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 88       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42      
  INT 21H

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
    SUB DL, 10               
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 47      
  INT 21H
  MOV DL, 92       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

  ;sprite 4
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR 
  
  ;layer 1,2
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE

  ;layer 3
    ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 126       
  INT 21H
  MOV DL, 126      
  INT 21H
  MOV DL, 126       
  INT 21H
  MOV DL, 32       


  ;layer 4
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 88       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 88       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

  ;sprite 5
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR 
  
  ;layer 1,2,3
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE

  ;layer 4
    ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 126       
  INT 21H
  MOV DL, 126      
  INT 21H
  MOV DL, 126       
  INT 21H
  MOV DL, 32       
  INT 21H

  ;layer 5
    ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

    ;sprite 6
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR 
  
  ;layer 1,2,3,4,5,6
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE

  RET
GAME_SCREEN_MOVING_MOLE_DOWN ENDP
;-----------------------------------------------------------------------------------------------------------
;////////////////////////////////////PRINT MOLE MOVING DOWN END//////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
;/////////////////////////////////////PRINT MOLE MOVING UP START/////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_MOVING_MOLE_UP PROC NEAR
  CALL SET_SCREEN_PART_INDICES
  CALL CLEAR_SCREEN_PART

  ;sprite 1
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR

  ;layer 1,2,3
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  
  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 33       
  INT 21H
  MOV DL, 33       
  INT 21H
  MOV DL, 33       

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 176       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 176       
  INT 21H
  MOV DL, 178       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 178       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176      

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

  ;sprite 2
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR  

  ;layer 1,2
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE
  ADD DH, 1
  CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR 
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE

  ;layer 3
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 33       
  INT 21H
  MOV DL, 33       
  INT 21H
  MOV DL, 33       

  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 42       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H
  MOV DL, 32       

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32      

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 176       
  INT 21H 
  MOV DL, 178       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 47      
  INT 21H
  MOV DL, 92       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 178       
  INT 21H
    MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32       

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

  ;sprite 3
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR 

  ;layer 1
  CALL GAME_SCREEN_MOVING_MOLE_BLANKLINE

  ;layer 2
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 33       
  INT 21H
  MOV DL, 33       
  INT 21H
  MOV DL, 33       

  ;layer 3
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       

  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32      

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 47      
  INT 21H
  MOV DL, 92       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 176       
  INT 21H
    MOV DL, 178       
  INT 21H 
  MOV DL, 219       
  INT 21H
  MOV DL, 178       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 177       
  INT 21H
    MOV DL, 178       
  INT 21H
  MOV DL, 32       

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

  ;sprite 4
  MOV DH, CURR_X1        ;where mole should appear
  MOV DL, CURR_Y1        
  PUSH DX          
  CALL SET_CURSOR

  ;layer 1
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220      
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 220       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       

  ;layer 2
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 220       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 95       
  INT 21H
  MOV DL, 223       
  INT 21H
    MOV DL, 220       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       

  ;layer 3
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 223       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 219       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42      

  ;layer 4
    ADD DH, 1
    CALL SET_LAYER_START_DL
    SUB DL, 10                 
  PUSH DX
  CALL SET_CURSOR
    MOV DL, 32       
  INT 21H 
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 47      
  INT 21H
  MOV DL, 92       
  INT 21H
  MOV DL, 240       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       

  ;layer 5
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 32       
  INT 21H
    MOV DL, 176       
  INT 21H 
  MOV DL, 219       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176       
  INT 21H
  MOV DL, 32      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 32       
  INT 21H
    MOV DL, 42       
  INT 21H
  MOV DL, 32       

  ;layer 6
    ADD DH, 1
    CALL SET_LAYER_START_DL
  PUSH DX
  CALL SET_CURSOR
  MOV DL, 176       
  INT 21H
    MOV DL, 177       
  INT 21H 
  MOV DL, 178       
  INT 21H
  MOV DL, 178       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 177       
  INT 21H
  MOV DL, 176      
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 42       
  INT 21H
  MOV DL, 32       
  INT 21H
  MOV DL, 219       
  INT 21H
  MOV DL, 176       
  INT 21H
    MOV DL, 32       
  INT 21H
  MOV DL, 32       

  CALL PRINT_GAME_GRID_LETTERS
  CALL _DELAY_SPRITE
  CALL SET_SCREEN_PART_INDICES
    CALL CLEAR_SCREEN_PART

  RET
GAME_SCREEN_MOVING_MOLE_UP ENDP
;-----------------------------------------------------------------------------------------------------------
;///////////////////////////////////////PRINT MOLE MOVING UP END////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
GAME_SCREEN_MOVING_MOLE_BLANKLINE PROC NEAR     ;prints 16 spaces, for the 16 character width of one square
  MOV   BX,   15
  GSMMB_LOOP:
  MOV   DL,   SPACE
  INT   21H
  DEC   BX
  CMP   BX,   0
  JNE   GSMMB_LOOP 
  RET
GAME_SCREEN_MOVING_MOLE_BLANKLINE ENDP
;-----------------------------------------------------------------------------------------------------------
;///////////////////////////////////////////////////////////////////////////////////////////////////////////
;////////////////////////////////////PRINT GAME SCREEN ART START////////////////////////////////////////////
;///////////////////////////////////////////////////////////////////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
;/////////////////////////////////////////FOR HIGH SCORE START//////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
;----------------------------------------------------------------------------
READ_FILE PROC NEAR
  ;open file
  MOV AH, 3DH           ;requst open file
  MOV AL, 00            ;read only; 01 (write only); 10 (read/write)
  LEA DX, PATHFILENAME_1
  INT 21H
  JC DISPLAY_ERROR4
  MOV FILEHANDLE_1, AX

  ;read file
  MOV AH, 3FH           ;request read record
  MOV BX, FILEHANDLE_1  ;file handle
  MOV CX, 2            ;record length
  LEA DX, RECORD_STR   ;address of input area
  INT 21H
  JC DISPLAY_ERROR5
  CMP AX, 00            ;zero bytes read?
  JE DISPLAY_ERROR6

  ;close file handle
  MOV AH, 3EH             ;request close file
  MOV BX, FILEHANDLE_1    ;file handle
  INT 21H

  MOV AH, 41H
  MOV DX, offset PATHFILENAME_1 
  INT 21H

  JMP RETURN

  DISPLAY_ERROR4:
    LEA DX, ERROR1_STR
    MOV AH, 09
    INT 21H

  DISPLAY_ERROR5:
    LEA DX, ERROR2_STR
    MOV AH, 09
    INT 21H

  DISPLAY_ERROR6:
    LEA DX, ERROR3_STR
    MOV AH, 09
    INT 21H

  RETURN:
    RET
READ_FILE ENDP
;----------------------------------------------------------------------------
WRITE_FILE PROC NEAR 

  XOR AX, AX
  XOR CX, CX

  ;create file
  MOV AH, 3CH                     ;request create file
  MOV CX, 00                      ;normal attribute

  LEA DX, PATHFILENAME_1          ;load path and file name
  INT 21H
  JC DISPLAY_ERROR1               ;if there's error in creating file, carry flag = 1, otherwise 0
  MOV FILEHANDLE_1, AX

  ;write file
  MOV AH, 40H                     ;request write record
  MOV BX, OFFSET FILEHANDLE_1     ;file handle
  MOV CX, 2                       ;record length
  MOV DX, OFFSET DECIMAL          ;address of output area
  INT 21H
  JC DISPLAY_ERROR2               ;if carry flag = 1, there's error in writing (nothing is written)
  CMP AX, 2                       ;after writing, set AX to size of chars nga na write
  JNE DISPLAY_ERROR3

  ;close file handle
  MOV AH, 3EH           ;request close file
  MOV BX, OFFSET FILEHANDLE_1    ;file handle
  INT 21H

  DISPLAY_ERROR1:
    LEA DX, ERROR1_STR
    MOV AH, 09
    INT 21H

  DISPLAY_ERROR2:
    LEA DX, ERROR2_STR
    MOV AH, 09
    INT 21H

  DISPLAY_ERROR3:
    LEA DX, ERROR3_STR
    MOV AH, 09
    INT 21H

    RET
WRITE_FILE ENDP
;----------------------------------------------------------------------------
STRING2NUMBER PROC NEAR                                                 ;CONVERSION FROM STRING TO INTEGER TO WRITE 
    LEA SI, RECORD_STR
    MOV CX, 2
    MOV HIGH_SCORE, 0 ;initialize to 0
    CMP CX, 1
    JE  ONLYONE

    MOV BX, 10 ;for multiply
    REPEAT:       
        LEA SI, RECORD_STR
        MOV AL, [SI]
        SUB AL, 48
        MOV AH, 00
        MUL BX

        MOV HIGH_SCORE, AX
        MOV BX, 0
        INC SI

        ONLYONE:
          MOV AL, [SI]
          SUB AL, 48
          MOV AH, 00
          ADD HIGH_SCORE, AX
    RET
STRING2NUMBER ENDP  
;---------------------------------------------------------------
NUMBER2STRING PROC NEAR                                                ;CONVERSION FROM INTEGER TO STRING TO WRITE
        mov bx, 10              ; divisor
        xor cx, cx              ; CX=0 (number of digits)

    First_Loop:
        xor dx, dx              ; Attention: DIV applies also DX!
        div bx                  ; DX:AX / BX = AX remainder: DX
        push dx                 ; LIFO
        inc cx                  ; increment number of digits
        test  ax, ax            ; AX = 0?
        jnz First_Loop          ; no: once more

        mov di, OFFSET DECIMAL  ; target string DECIMAL
    Second_Loop:
        pop ax                  ; get back pushed digit
        or ax, 00110000b        ; to ASCII
        mov byte ptr [di], al   ; save AL
        inc di                  ; DI points to next character in string DECIMAL
        loop Second_Loop        ; until there are no digits left

        mov byte ptr [di], '$'  ; End-of-string delimiter for INT 21 / FN 09h

        ret
NUMBER2STRING ENDP
;---------------------------------------------------------------
;-----------------------------------------------------------------------------------------------------------
;/////////////////////////////////////////FOR HIGH SCORE END////////////////////////////////////////////////
;-----------------------------------------------------------------------------------------------------------
  MOV AH, 4CH
  INT 21H
CODESEG ENDS
END START