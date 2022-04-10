; ldr and str work the same way
; operand 1 is the value to use, operand 2 in the square brackets is the source/destination to load/store from, offset by that many bits. The second operand can use a register as a base for the shifted address.

; movs simply puts the value in the register listed
; So movs r0, #9 moves value 9 into r0

; &gSpecialVar_Result = 0x020375F0

; Format for a request:
; 0x0203DB48 = request_buffer_length;
; 0x0203DB44 = request_send_buffer;
; request_send_buffer = request_number;
; 0x0203DB50 = request_const; //Just a constant consistent across scripts?
; 0x0203DB4C = request_recieve_buffer;

RemoveRocks:
; r0 = 16;
; r1 = 14;
; r2 = 0x00003201;
; r3 = 0x08088339; //MapGridSetMetatileEntryAt
; return;
   0x2018223:   push    {lr}
   0x2018225:   movs    r0, #16
   0x2018227:   movs    r1, #14
   0x2018229:   ldr     r2, [pc, #92]   ; (0x2018288)
   0x201822b:   ldr     r3, [pc, #96]   ; (0x201828c)
   0x201822d:   bl      Jump
   0x2018231:   pop     {r3}
Jump:
   0x2018233:   bx      r3

CertificateGeneration:
; request_buffer_length = 9;
; request_send_buffer = 0x020186D0;
; request_number = 7;
; request_const = 0x100;
; request_recieve_buffer = 0x020186F4;
   0x2018235:   ldr     r1, [pc, #88]   ; (0x2018290)
   0x2018237:   movs    r0, #9
   0x2018239:   str     r0, [r1, #0]
   0x201823b:   ldr     r1, [pc, #88]   ; (0x2018294)
   0x201823d:   ldr     r0, [pc, #88]   ; (0x2018298)
   0x201823f:   str     r0, [r1, #0]
   0x2018241:   movs    r1, #7
   0x2018243:   str     r1, [r0, #0]
   0x2018245:   ldr     r1, [pc, #84]   ; (0x201829C)
   0x2018247:   ldr     r0, [pc, #88]   ; (0x20182A0)
   0x2018249:   str     r0, [r1, #0]
   0x201824b:   ldr     r1, [pc, #88]   ; (0x20182A4)
   0x201824d:   ldr     r0, [pc, #88]   ; (0x20182A8)
   0x201824f:   str     r0, [r1, #0]
   0x2018251:   bx      lr

CertificateVerification:
; request_buffer_length = 65;
; request_send_buffer = 0x020186F0;
; request_number = 8;
; request_const = 0x100;
; request_recieve_buffer = 0x02021DC0;
   0x2018253:   ldr     r1, [pc, #60]   ; (0x2018290)
   0x2018255:   movs    r0, #65
   0x2018257:   str     r0, [r1, #0]
   0x2018259:   ldr     r1, [pc, #56]   ; (0x2018294)
   0x201825b:   ldr     r0, [pc, #80]   ; (0x20182AC)
   0x201825d:   str     r0, [r1, #0]
   0x201825f:   movs    r1, #8
   0x2018261:   str     r1, [r0, #0]
   0x2018263:   ldr     r1, [pc, #56]   ; (0x201829C)
   0x2018265:   ldr     r0, [pc, #56]   ; (0x20182A0)
   0x2018267:   str     r0, [r1, #0]
   0x2018269:   ldr     r1, [pc, #56]   ; (0x20182A4)
   0x201826b:   ldr     r0, [pc, #68]   ; (0x20182B0)
   0x201826d:   str     r0, [r1, #0]
   0x201826f:   bx      lr

   0x2018288:   db      0x00003201
   0x201828C:   db      0x08088339 ;MapGridSetMetatileEntryAt
   0x2018290:   db      0x0203DB48
   0x2018294:   db      0x0203DB44
   0x2018298:   db      0x020186D0
   0x201829C:   db      0x0203DB50
   0x20182A0:   db      0x00000100
   0x20182A4:   db      0x0203DB4C
   0x20182A8:   db      0x020186F4
   0x20182AC:   db      0x020186F0
   0x20182B0:   db      0x02021DC0

LotteryGenerationScript:
; request_buffer_length = 2;
; request_send_buffer = 0x0203DB90;
; request_number = 5;
; request_const = 32;
; request_recieve_buffer = 0x02018380;
   0x2018315:   ldr     r1, [pc, #56]   ; (0x2018350)
   0x2018317:   movs    r0, #2
   0x2018319:   str     r0, [r1, #0]
   0x201831b:   ldr     r1, [pc, #56]   ; (0x2018354)
   0x201831d:   ldr     r0, [pc, #56]   ; (0x2018358)
   0x201831f:   str     r0, [r1, #0]
   0x2018321:   movs    r1, #5
   0x2018323:   str     r1, [r0, #0]
   0x2018325:   ldr     r1, [pc, #52]   ; (0x201835c)
   0x2018327:   movs    r0, #32
   0x2018329:   str     r0, [r1, #0]
   0x201832b:   ldr     r1, [pc, #52]   ; (0x2018360)
   0x201832d:   ldr     r0, [pc, #52]   ; (0x2018364)
   0x201832f:   str     r0, [r1, #0]
   0x2018331:   bx      lr

YEETRequest:
; 0x0203DB70 = 0x020188B0
; 0x0203DB74 = 1
; 0x0203DB62 = 0
   0x2018333:   ldr     r0, [pc, #52]   ; (0x2018368)
   0x2018335:   ldr     r1, [pc, #52]   ; (0x201836c)
   0x2018337:   ldr     r1, [r1, #0]
   0x2018339:   str     r1, [r0, #0]
   0x201833b:   ldr     r0, [pc, #52]   ; (0x2018370)
   0x201833d:   movs    r1, #1
   0x201833f:   strb    r1, [r0, #0]
   0x2018341:   ldr     r0, [pc, #8]    ; (0x201834c)
   0x2018343:   movs    r1, #0
   0x2018345:   strb    r1, [r0, #0]
   0x2018347:   bx      lr

   0x201834c:   db      0x0203DB62
   0x2018350:   db      0x0203DB48
   0x2018354:   db      0x0203DB44
   0x2018358:   db      0x0203DB90
   0x201835c:   db      0x0203DB50
   0x2018360:   db      0x0203DB4C
   0x2018364:   db      0x02018380
   0x2018368:   db      0x0203DB70
   0x201836c:   db      0x020188B0
   0x2018370:   db      0x0203DB74

WirelessCommunicationMain:
   0x203d829:   push    {lr}
   0x203d82b:   bl      SeedValueWithRNG
   0x203d82f:   bl      ScrambleValue
   0x203d833:   bl      Communicate
; if(communication_success) gSpecialVar_Result  = 1;
; else gSpecialVar_Result = 0;
   0x203d837:   beq.n   CommunicationSuccessful
   0x203d839:   ldr     r1, [pc, #112]  ; (0x203d8ac)
   0x203d83b:   movs    r0, #0
   0x203d83d:   str     r0, [r1, #0]
   0x203d83f:   pop     {r0}
   0x203d841:   bx      r0
CommunicationSuccessful:
   0x203d842:   ldr     r1, [pc, #104]  ; (0x203d8ac)
   0x203d844:   movs    r0, #1
   0x203d846:   str     r0, [r1, #0]
   0x203d848:   pop     {r0}
   0x203d84a:   bx      r0

SeedValueWithRNG:
; [0x0203DB90] += (([0x3005D80] && 0xFF) << 8)
   0x203d690:   ldr     r2, [pc, #476]  ; (0x203d870), should be 0x0203DB90 by default always
   0x203d692:   ldr     r0, [pc, #480]  ; (0x203d874)
   0x203d694:   ldrb    r0, [r0, #0]    ; Load byte from (0x3005D80), least significant RNG byte
   0x203d696:   lsls    r0, r0, #8      ; Left shift the RNG byte by 8
   0x203d698:   ldr     r1, [r2, #0]    ; Load word from 0x0203DB90
   0x203d69a:   adds    r1, r1, r0      ; Add the left shifted RNG byte to it
   0x203d69c:   str     r1, [r2, #0]    ; Store it back
   0x203d69e:   bx      lr

ScrambleValue:
; r2 = 0x0203DB90;
; r3 = request_buffer_length;
; r0 = 0xF0DBEB15;
; do {
;     r0 = (r0 >> 5)|(r0 << (32 - 5)) //Rotate r0 right by 5
;     r1 = [r2];
;     r0 ^= r1;
;     r1 *= 2;
;     r0 += r1;
;     r2 += 4
;     r3 -= 1;
; }while(r3 != 0)
   0x203d6a0:   ldr     r2, [pc, #460]  ; (0x203d870)
   0x203d6a2:   ldr     r0, [pc, #468]  ; (0x203d878) 0x0203DB48
   0x203d6a4:   ldr     r3, [r0, #0]
   0x203d6a6:   ldr     r0, [pc, #468]  ; (0x203d87c)
ScrambleLoop.
   0x203d6a8:   movs    r1, #5
   0x203d6aa:   rors    r0, r1
   0x203d6ac:   ldr     r1, [r2, #0]
   0x203d6ae:   eors    r0, r1
   0x203d6b0:   adds    r1, r1, r1
   0x203d6b2:   adds    r0, r0, r1
   0x203d6b4:   adds    r2, #4
   0x203d6b6:   subs    r3, #1
   0x203d6b8:   bne.n   ScrambleLoop
; [0x203d870] += (r0 << 16)
   0x203d6ba:   ldr     r1, [pc, #436]  ; (0x203d870)
   0x203d6bc:   ldrh    r2, [r1, #0]    ; Load halfword
   0x203d6be:   lsls    r0, r0, #16     ; r0 <= 16
   0x203d6c0:   adds    r0, r0, r2
   0x203d6c2:   str     r0, [r1, #0]    ; Store it back
   0x203d6c4:   bx      lr

   0x203d574:   db      0x0203DB40 ; Communication retries count
; Magic communication numbers
   0x203d578:   db      0xBE5015FF
   0x203d57c:   db      0xFFBE5015
   0x203d580:   db      0x000F0015
   0x203d584:   db      0x420B00B5 ; Weed titties
; Actual data and pointers
   0x203d588:   db      0x20221337
   0x203d58c:   db      0x081973C5 ; DrawDialogueFrame()
   0x203d590:   db      0x0203E0AD
   0x203d594:   db      0x08178F45 ; SaveFailedScreenTextPrint()
   0x203d598:   db      0x04000208 ; Interrupt Master Enable Register Pointer
   0x203d59c:   db      0x04000084 ; Sound on/off
   0x203d5a0:   db      0x0203DB44
   0x203d5a4:   db      0x0203DB48
   0x203d5a8:   db      0xCACEFACE
   0x203d5ac:   db      0xFEF0CEC0
   0x203d5b0:   db      0x0203DB58
   0x203d5b4:   db      0x0000FFFF
   0x203d5b8:   db      0x0203DB4C
   0x203d5bc:   db      0x0203DB50
   0x203d5c0:   db      0x0203DB5B

Communicate:
; LoadandCreateWirelessIndicatorSprite();
   0x203d204:   push    {lr}
   0x203d206:   push    {r4, r5, r6, r7}
   0x203d208:   bl      LoadandCreateWirelessIndicatorSprite
; 0x0203DB40 = 3; //Counter for amount of tries to connect
   0x203d20c:   ldr     r1, [pc, #868]  ; (0x203d574)
   0x203d20e:   movs    r0, #3
   0x203d210:   str     r0, [r1, #0]
RetryConnection:
; if(!TransmitData) goto FailEarly;
; if(!TransmitData) goto FailEarly;
; if(!RecieveData) goto FailEarly;
; if(!RecieveData) goto FailEarly;
; if(recieved_data == 0x420B00B5) SetOrClearFlags();
; if(recieved_data == 0x20221337) FailEarly();
   0x203d212:   ldr     r0, [pc, #868]  ; (0x203d578)
   0x203d214:   bl      TransmitData
   0x203d218:   beq.n   FailEarly
   0x203d21a:   ldr     r0, [pc, #864]  ; (0x203d57c)
   0x203d21c:   bl      TransmitData
   0x203d220:   beq.n   FailEarly
   0x203d222:   bl      RecieveData
   0x203d226:   beq.n   FailEarly
   0x203d228:   ldr     r1, [pc, #852]  ; (0x203d580)
   0x203d22a:   cmp     r0, r1
   0x203d22c:   bne.n   FailEarly
   0x203d22e:   bl      RecieveData
   0x203d232:   beq.n   FailEarly
   0x203d234:   ldr     r1, [pc, #844]  ; (0x203d584)
   0x203d236:   cmp     r0, r1
   0x203d238:   beq.n   SetOrClearFlags
   0x203d23a:   ldr     r1, [pc, #844]  ; (0x203d588)
   0x203d23c:   cmp     r0, r1
   0x203d23e:   bne.n   FailEarly
HandledFlags:
; DestroyWirelessIndicatorSprite();
; DrawDialogueFrame(0, 1);
; SaveFailedScreenTextPrint(0x0203E0AD, 0, 0);
; DisableAllInterrupts();
; DisableSound();
; r4 = 0x0203DB44;
; r5 = 0x0203DB48;
; TransmitData(r5);
   0x203d240:   bl      DestroyWirelessIndicatorSprite
   0x203d244:   movs    r0, #0
   0x203d246:   movs    r1, #1
   0x203d248:   ldr     r7, [pc, #832]  ; (0x203d58c) DrawDialogueFrame
   0x203d24a:   bl      JumpTor7
   0x203d24e:   ldr     r0, [pc, #832]  ; (0x203d590) 0x0203E0AD, "Link established. Please wait..."
   0x203d250:   movs    r1, #0
   0x203d252:   movs    r2, #0
   0x203d254:   ldr     r7, [pc, #828]  ; (0x203d594) SaveFailedScreenTextPrint
   0x203d256:   bl      JumpTor7
   0x203d25a:   movs    r0, #3
   0x203d25c:   bl      WaitForVBlank
   0x203d260:   ldr     r1, [pc, #820]  ; (0x203d598)
   0x203d262:   movs    r0, #0
   0x203d264:   strh    r0, [r1, #0]    ; Disable all interrupts
   0x203d266:   ldr     r1, [pc, #820]  ; (0x203d59c)
   0x203d268:   movs    r0, #0
   0x203d26a:   strh    r0, [r1, #0]    ; Disable sound
   0x203d26c:   ldr     r4, [pc, #816]  ; (0x203d5a0)
   0x203d26e:   ldr     r4, [r4, #0]
   0x203d270:   ldr     r5, [pc, #816]  ; (0x203d5a4)
   0x203d272:   ldr     r5, [r5, #0]
   0x203d274:   adds    r0, r5, #0
   0x203d276:   bl      TransmitData
   0x203d27a:   beq.n   FailEarly
; do {
;     if(!TransmitData([r4])) goto FailEarly;
;     r4 += 4;
;     r1--;
; }while(r5 != 0);
TransmitLoop.
   0x203d27c:   ldr     r0, [r4, #0]
   0x203d27e:   bl      TransmitData
   0x203d282:   beq.n   FailEarly
   0x203d284:   adds    r4, #4
   0x203d286:   subs    r5, #1
   0x203d288:   cmp     r5, #0
   0x203d28a:   bne.n   TransmitLoop
; r4 = 0xCACEFACE;
; r5 = 0xFEF0CEC0;
   0x203d28c:   ldr     r4, [pc, #792]  ; (0x203d5a8)
   0x203d28e:   ldr     r5, [pc, #796]  ; (0x203d5ac)
RecieveLoop.
; do {
;     r0 = RecieveData();
;     if(r0 == 0xFEF0CEC0) continue;
;     if(r0 != 0xCACEFACE) goto FailEarly;
; }while(true);
   0x203d290:   bl      RecieveData
   0x203d294:   beq.n   FailEarly
   0x203d296:   cmp     r0, r5
   0x203d298:   beq.n   RecieveLoop
   0x203d29a:   cmp     r0, r4
   0x203d29c:   bne.n   FailEarly
; r0 = RecieveData();
; if(failure_flag) goto FailEarly;
; r5 += r0;
; 0x0203DB58 = r5;
; r5 &= 0xFFFF;
; r4 = request_recieve_buffer;
; r6 = request_const;
   0x203d29e:   bl      RecieveData
   0x203d2a2:   beq.n   FailEarly
   0x203d2a4:   adds    r5, r0, #0
   0x203d2a6:   ldr     r0, [pc, #776]  ; (0x203d5b0)
   0x203d2a8:   str     r5, [r0, #0]
   0x203d2aa:   ldr     r0, [pc, #776]  ; (0x203d5b4)
   0x203d2ac:   ands    r5, r0
   0x203d2ae:   ldr     r4, [pc, #776]  ; (0x203d5b8)
   0x203d2b0:   ldr     r4, [r4, #0]
   0x203d2b2:   ldr     r6, [pc, #776]  ; (0x203d5bc)
   0x203d2b4:   ldr     r6, [r6, #0]
RecieveLoop2.
;do {
;     [r4] = RecieveData();
;     r4 += 4;
;     r5--;
;     r6--;
; }while(r5 != 0 && r6 != 0);
   0x203d2b6:   bl      RecieveData
   0x203d2ba:   beq.n   FailEarly
   0x203d2bc:   str     r0, [r4, #0]
   0x203d2be:   adds    r4, #4
   0x203d2c0:   subs    r5, #1
   0x203d2c2:   subs    r6, #1
   0x203d2c4:   cmp     r5, #0
   0x203d2c6:   beq.n   RecieveLoop2Done
   0x203d2c8:   cmp     r6, #0
   0x203d2ca:   beq.n   RecieveLoop2Done
   0x203d2cc:   b.n     RecieveLoop2
RecieveLoop2Done.
; if(0x0203DB5B == 0x65) goto FailEarly3
; 
   0x203d2ce:   ldr     r0, [pc, #752]  ; (0x203d5c0)
   0x203d2d0:   ldrb    r0, [r0, #0]
   0x203d2d2:   cmp     r0, #101        ; 0x65
   0x203d2d4:   bne.n   FailEarly3
   0x203d2d6:   ldr     r1, [pc, #704]  ; (0x203d598)
   0x203d2d8:   movs    r0, #1
   0x203d2da:   str     r0, [r1, #0]    ; Enable interrupts
   0x203d2dc:   ldr     r1, [pc, #700]  ; (0x203d59c)
   0x203d2de:   movs    r0, #143
   0x203d2e0:   str     r0, [r1, #0]    ; Enable sound
   0x203d2e2:   bl      DestroyWirelessIndicatorSprite
   0x203d2e6:   cmp     r4, #0
   0x203d2e8:   pop     {r4, r5, r6, r7}
   0x203d2ea:   pop     {r0}
   0x203d2ec:   bx      r0

; Jump to function, proper setup pre-entry makes this a call
JumpTor7:
   0x203d002:   bx      r7

LoadandCreateWirelessIndicatorSprite:
   0x203d004:   push    {r7, lr}
   0x203d006:   ldr     r1, [pc, #360]  ; (0x203d170)
   0x203d008:   movs    r0, #2
   0x203d00a:   str     r0, [r1, #0]
   0x203d00c:   ldr     r7, [pc, #356]  ; (0x203d174)
   0x203d00e:   bl      0x203d002       ; LoadWirelessStatusIndicatorSpriteGfx call
   0x203d012:   movs    r0, #0
   0x203d014:   movs    r1, #0
   0x203d016:   ldr     r7, [pc, #352]  ; (0x203d178)
   0x203d018:   bl      0x203d002       ; CreateWirelessStatusIndicatorSprite call
   0x203d01c:   pop     {r7}
   0x203d01e:   pop     {r0}
   0x203d020:   bx      r0

DestroyWirelessIndicatorSprite:
   0x203d022:   push    {r7, lr}
   0x203d024:   ldr     r7, [pc, #340]  ; (0x203d17c)
   0x203d026:   bl      0x203d002       ; DestroyWirelessStatusIndicatorSprite call
   0x203d02a:   pop     {r7}
   0x203d02c:   pop     {r0}
   0x203d02e:   bx      r0

WaitForVBlank:
   0x203d048:   push    {r7, lr}
   0x203d04a:   push    {r0}
   0x203d04c:   ldr     r7, [pc, #304]  ; (0x203d180)
   0x203d04e:   bl      0x203d002       ; WaitForVBlank
   0x203d052:   pop     {r0}
   0x203d054:   subs    r0, #1
   0x203d056:   bne.n   0x203d04a       ; Loop
   0x203d058:   pop     {r7}
   0x203d05a:   pop     {r0}
   0x203d05c:   bx      r0

CertificateVerificationPostCommunication:
; Convert the recieved buffer from ASCII to Pokemon text encoding for display
; buffer_pointer = 0x02021dc4;
; pokemon_text_table = 0x0203d0d4;
; do {
;     if([buffer_pointer] == 0xFF) goto EndOFBufferReached;
;     r0 = [buffer_pointer];
;     r1 = 0;
;     do {
;         r2 = [0x0203d10b + r1];
;         if(r2 == r0) break;
;         r1++;
;     }while();
;     [buffer_pointer] = [pokemon_text_table + r1];
;     buffer_pointer++;
; }while();
; return;
   0x203d0ae:   ldr     r3, [pc, #216]  ; (0x203d188)
OuterLoop:
   0x203d0b0:   ldrb    r0, [r3, #0]
   0x203d0b2:   cmp     r0, #255        ; 0xff
   0x203d0b4:   beq.n   EndOFBufferReached
   0x203d0b6:   movs    r1, #0
InnerLoop:
   0x203d0b8:   ldr     r2, [pc, #232]  ; (0x203d1a4)
   0x203d0ba:   adds    r2, r2, r1
   0x203d0bc:   ldrb    r2, [r2, #0]
   0x203d0be:   cmp     r0, r2
   0x203d0c0:   beq.n   InnerLoopDone
   0x203d0c2:   adds    r1, #1
   0x203d0c4:   b.n     InnerLoop
InnerLoopDone:
   0x203d0c6:   ldr     r2, [pc, #224]  ; (0x203d1a8)
   0x203d0c8:   adds    r2, r2, r1
   0x203d0ca:   ldrb    r2, [r2, #0]
   0x203d0cc:   strb    r2, [r3, #0]
   0x203d0ce:   adds    r3, #1
   0x203d0d0:   b.n     OuterLoop
EndOFBufferReached:
   0x203d0d2:   bx      lr

   0x203d170:   db      0x03007890
   0x203d174:   db      0x0800e0e9
   0x203d178:   db      0x0800dfb5
   0x203d17c:   db      0x0800e085
   0x203d180:   db      0x080008ad
   0x203d184:   db      0x02021cc4
   0x203d188:   db      0x02021dc4 ; CertificateVerification recieve_buffer + 4
   0x203d18c:   db      0x08008c45
   0x203d190:   db      0x020375f0
   0x203d194:   db      0x080d2549
   0x203d198:   db      0x081d99e5
   0x203d19c:   db      0x00000182
   0x203d1a0:   db      0x080c0665
   0x203d1a4:   db      0x0203d10b ; Pointer to ASCII table
   0x203d1a8:   db      0x0203d0d4 ; Pokemon text table

; Function
; 0x04000140 = 7; //SIO JOY Bus Control reset flags on
; 0x04000140 = 0; //SIO JOY Bus Control reset flags off
; 0x04000158 = 16; //Toggle recieve flag on
SetCommunicationFlags.
   0x203d1bc:   movs    r0, #7
   0x203d1be:   str     r0, [r3, #32]
   0x203d1c0:   movs    r0, #0
   0x203d1c2:   str     r0, [r3, #32]
   0x203d1c4:   movs    r1, #16
   0x203d1c6:   str     r1, [r3, #56]
JoyFlagLoop.
; r1 = 0x100000 ; Timer variable
; r2 = 6;
; do {
;     r1--;
;     if(r1 == 0) break;
;     r0 = 0x04000140; //load SIO Joy Bus Control reset flags
;     r0 &= r2;
; }while((r0 && r2) != 0)
   0x203d1c8:   lsls    r1, r1, #16
   0x203d1ca:   movs    r2, #6
   0x203d1cc:   subs    r1, #1
   0x203d1ce:   beq.n   JoyFlagLoopDone       ; Jump past if r1 is 0
   0x203d1d0:   ldr     r0, [r3, #32]
   0x203d1d2:   ands    r0, r2
   0x203d1d4:   beq.n   JoyFlagLoop       ; Loop
JoyFlagLoopDone.
; 0x04000158 = 0; //Toggle recieve status off
; r0 = [0x04000150]; //Recieve the byte
; r2 = 0;
; 0x04000150 = 0; //Blank out recieve data
; 0x04000154 = 0; //Blank out transmission data
; //Set comparison flags
   0x203d1d6:   movs    r0, #0
   0x203d1d8:   str     r0, [r3, #56]   ; 0x38
   0x203d1da:   ldr     r0, [r3, #48]   ; 0x30
   0x203d1dc:   movs    r2, #0
   0x203d1de:   str     r2, [r3, #48]   ; 0x30
   0x203d1e0:   str     r2, [r3, #52]   ; 0x34
   0x203d1e2:   cmp     r1, #0          ; Check if timer for communication ran out
   0x203d1e4:   bx      lr
RecieveData:
; 0x04000150 = 0;
; 0x04000154 = 0;
   0x203d1e6:   push    {lr}
   0x203d1e8:   ldr     r3, [pc, #900]  ; (0x203d570)
   0x203d1ea:   movs    r0, #0
   0x203d1ec:   str     r0, [r3, #48]   ; 0x30
   0x203d1ee:   str     r0, [r3, #52]   ; 0x34
   0x203d1f0:   b.n     FinishedRecieveSetup
TransmitData:
; r3 = 0x04000120;
; 0x04000154 = r0;
; 0x04000150 = 0;
   0x203d1f2:   push    {lr}
   0x203d1f4:   ldr     r3, [pc, #888]  ; (0x203d570)
   0x203d1f6:   str     r0, [r3, #52]   ; 0x34
   0x203d1f8:   movs    r0, #0
   0x203d1fa:   str     r0, [r3, #48]   ; 0x30
FinishedRecieveSetup.
   0x203d1fc:   bl      SetCommunicationFlags
   0x203d200:   pop     {r1}
   0x203d202:   bx      r1

FailEarly:
; 0x04000208 = 0x01; //Enable interrupts
; 0x04000084 = 0x8F; //Enable sound
; 0x0203DB40 -= 1;
; if([0x0203DB40] != 0) goto RetryConnection
; //Otherwise set failed communication flag and return
   0x203d2ee:   ldr     r1, [pc, #680]  ; (0x203d598)
   0x203d2f0:   movs    r0, #1          ; Enable interrupts
   0x203d2f2:   strh    r0, [r1, #0]
   0x203d2f4:   ldr     r1, [pc, #676]  ; (0x203d59c)
   0x203d2f6:   movs    r0, #143        ; Enable sound
   0x203d2f8:   strh    r0, [r1, #0]
   0x203d2fa:   ldr     r1, [pc, #632]  ; (0x203d574)
   0x203d2fc:   ldr     r0, [r1, #0]
   0x203d2fe:   subs    r0, #1
   0x203d300:   str     r0, [r1, #0]
   0x203d302:   cmp     r0, #0
   0x203d304:   bne.n   RetryConnection       ; Jump back into third wireless function
   0x203d306:   bl      DestroyWirelessIndicatorSprite
   0x203d30a:   movs    r0, #0
   0x203d30c:   cmp     r0, #0
   0x203d30e:   pop     {r4, r5, r6, r7}
   0x203d310:   pop     {r0}
   0x203d312:   bx      r0
FailEarly3:
; 0x0203dbbc = 1;
; 0x0203DB40 = 1;
;
   0x203d314:   ldr     r0, [pc, #684]  ; (0x203d5c4)
   0x203d316:   movs    r1, #1
   0x203d318:   strb    r1, [r0, #0]
   0x203d31a:   ldr     r0, [pc, #600]  ; (0x203d574)
   0x203d31c:   strb    r1, [r0, #0]
   0x203d31e:   b.n     FailEarly
SetOrClearFlags:
; r4 += RecieveData();
; HandleFlags();
; goto HandledFlags;
   0x203d320:   bl      RecieveData
   0x203d324:   beq.n   FailEarly
   0x203d326:   adds    r4, r0, #0
   0x203d328:   bl      RecieveData
   0x203d32c:   beq.n   FailEarly
   0x203d32e:   bl      HandleFlags
   0x203d332:   b.n     HandledFlags       ; Jump back into third wireless function

HandleFlags:
; if(r0 == 0x64) goto FlagSet
; else if (r0 == 0x65) goto FlagClear
; 0x0203db70 = r4
; 0x0203db94 = r4
   0x203d334:   push    {lr}
   0x203d336:   movs    r1, #100        ; 0x64
   0x203d338:   cmp     r0, r1
   0x203d33a:   beq.n   FlagSet
   0x203d33c:   movs    r1, #101        ; 0x65
   0x203d33e:   cmp     r0, r1
   0x203d340:   beq.n   FlagClear
   0x203d342:   ldr     r0, [pc, #644]  ; (0x203d5c8)
   0x203d344:   str     r4, [r0, #0]
   0x203d346:   ldr     r0, [pc, #644]  ; (0x203d5cc)
   0x203d348:   str     r4, [r0, #0]
   0x203d34a:   pop     {r0}
   0x203d34c:   bx      r0
FlagSet.
; FlagSet(r0 + r4)
   0x203d34e:   adds    r0, r4, #0
   0x203d350:   ldr     r7, [pc, #636]  ; (0x203d5d0)
   0x203d352:   bl      0x203d002       ; FlagSet call
   0x203d356:   pop     {r0}
   0x203d358:   bx      r0
FlagClear.
; FlagClear(r0 + r4)
   0x203d35a:   adds    r0, r4, #0
   0x203d35c:   ldr     r7, [pc, #628]  ; (0x203d5d4)
   0x203d35e:   bl      0x203d002       ; FlagClear call
   0x203d362:   pop     {r0}
   0x203d364:   bx      r0

   0x203d570:   db      0x04000120

   0x203d870:   db      0x0203DB90   
   0x203d874:   db      0x03005D80
   0x203d878:   db      0x0203DB48
   0x203d87C:   db      0xF0DBEB15
   0x203d8ac:   db      0x020375F0
   0x203db90:   db      0xE601
   0x203db90:   db      0x5705
   
   0x203d5c4:   db      0x0203dbbc
   0x203d5c8:   db      0x0203db70
   0x203d5cc:   db      0x0203db94
   0x203d5d0:   db      0x0809d741
   0x203d5d4:   db      0x0809d769