glabel osPfsFindFile
/* 0D1A80 800D0E80 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0D1A84 800D0E84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D1A88 800D0E88 AFA40048 */  sw    $a0, 0x48($sp)
/* 0D1A8C 800D0E8C AFA5004C */  sw    $a1, 0x4c($sp)
/* 0D1A90 800D0E90 AFA60050 */  sw    $a2, 0x50($sp)
/* 0D1A94 800D0E94 AFA70054 */  sw    $a3, 0x54($sp)
/* 0D1A98 800D0E98 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0D1A9C 800D0E9C 0C0356F0 */  jal   __osCheckId
/* 0D1AA0 800D0EA0 8FA40048 */   lw    $a0, 0x48($sp)
/* 0D1AA4 800D0EA4 24010002 */  li    $at, 2
/* 0D1AA8 800D0EA8 14410003 */  bne   $v0, $at, .L800D0EB8
/* 0D1AAC 800D0EAC 00000000 */   nop   
/* 0D1AB0 800D0EB0 1000005C */  b     .L800D1024
/* 0D1AB4 800D0EB4 24020002 */   li    $v0, 2
.L800D0EB8:
/* 0D1AB8 800D0EB8 8FAE0048 */  lw    $t6, 0x48($sp)
/* 0D1ABC 800D0EBC AFA00044 */  sw    $zero, 0x44($sp)
/* 0D1AC0 800D0EC0 8DCF0050 */  lw    $t7, 0x50($t6)
/* 0D1AC4 800D0EC4 19E00053 */  blez  $t7, .L800D1014
/* 0D1AC8 800D0EC8 00000000 */   nop   
.L800D0ECC:
/* 0D1ACC 800D0ECC 8FB80048 */  lw    $t8, 0x48($sp)
/* 0D1AD0 800D0ED0 8FA80044 */  lw    $t0, 0x44($sp)
/* 0D1AD4 800D0ED4 27A70020 */  addiu $a3, $sp, 0x20
/* 0D1AD8 800D0ED8 8F19005C */  lw    $t9, 0x5c($t8)
/* 0D1ADC 800D0EDC 8F040004 */  lw    $a0, 4($t8)
/* 0D1AE0 800D0EE0 8F050008 */  lw    $a1, 8($t8)
/* 0D1AE4 800D0EE4 0C033728 */  jal   __osContRamRead
/* 0D1AE8 800D0EE8 03283021 */   addu  $a2, $t9, $t0
/* 0D1AEC 800D0EEC AFA2001C */  sw    $v0, 0x1c($sp)
/* 0D1AF0 800D0EF0 8FA9001C */  lw    $t1, 0x1c($sp)
/* 0D1AF4 800D0EF4 11200003 */  beqz  $t1, .L800D0F04
/* 0D1AF8 800D0EF8 00000000 */   nop   
/* 0D1AFC 800D0EFC 10000049 */  b     .L800D1024
/* 0D1B00 800D0F00 01201025 */   move  $v0, $t1
.L800D0F04:
/* 0D1B04 800D0F04 97AA0024 */  lhu   $t2, 0x24($sp)
/* 0D1B08 800D0F08 97AB004E */  lhu   $t3, 0x4e($sp)
/* 0D1B0C 800D0F0C 154B0039 */  bne   $t2, $t3, .L800D0FF4
/* 0D1B10 800D0F10 00000000 */   nop   
/* 0D1B14 800D0F14 8FAC0020 */  lw    $t4, 0x20($sp)
/* 0D1B18 800D0F18 8FAD0050 */  lw    $t5, 0x50($sp)
/* 0D1B1C 800D0F1C 158D0035 */  bne   $t4, $t5, .L800D0FF4
/* 0D1B20 800D0F20 00000000 */   nop   
/* 0D1B24 800D0F24 8FAE0054 */  lw    $t6, 0x54($sp)
/* 0D1B28 800D0F28 AFA00018 */  sw    $zero, 0x18($sp)
/* 0D1B2C 800D0F2C 11C00012 */  beqz  $t6, .L800D0F78
/* 0D1B30 800D0F30 00000000 */   nop   
/* 0D1B34 800D0F34 AFA00040 */  sw    $zero, 0x40($sp)
.L800D0F38:
/* 0D1B38 800D0F38 8FB80040 */  lw    $t8, 0x40($sp)
/* 0D1B3C 800D0F3C 8FAF0054 */  lw    $t7, 0x54($sp)
/* 0D1B40 800D0F40 03B84821 */  addu  $t1, $sp, $t8
/* 0D1B44 800D0F44 01F8C821 */  addu  $t9, $t7, $t8
/* 0D1B48 800D0F48 93280000 */  lbu   $t0, ($t9)
/* 0D1B4C 800D0F4C 91290030 */  lbu   $t1, 0x30($t1)
/* 0D1B50 800D0F50 11090004 */  beq   $t0, $t1, .L800D0F64
/* 0D1B54 800D0F54 00000000 */   nop   
/* 0D1B58 800D0F58 240A0001 */  li    $t2, 1
/* 0D1B5C 800D0F5C 10000006 */  b     .L800D0F78
/* 0D1B60 800D0F60 AFAA0018 */   sw    $t2, 0x18($sp)
.L800D0F64:
/* 0D1B64 800D0F64 8FAB0040 */  lw    $t3, 0x40($sp)
/* 0D1B68 800D0F68 256C0001 */  addiu $t4, $t3, 1
/* 0D1B6C 800D0F6C 29810010 */  slti  $at, $t4, 0x10
/* 0D1B70 800D0F70 1420FFF1 */  bnez  $at, .L800D0F38
/* 0D1B74 800D0F74 AFAC0040 */   sw    $t4, 0x40($sp)
.L800D0F78:
/* 0D1B78 800D0F78 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0D1B7C 800D0F7C 11A00015 */  beqz  $t5, .L800D0FD4
/* 0D1B80 800D0F80 00000000 */   nop   
/* 0D1B84 800D0F84 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0D1B88 800D0F88 15C00012 */  bnez  $t6, .L800D0FD4
/* 0D1B8C 800D0F8C 00000000 */   nop   
/* 0D1B90 800D0F90 AFA00040 */  sw    $zero, 0x40($sp)
.L800D0F94:
/* 0D1B94 800D0F94 8FB90040 */  lw    $t9, 0x40($sp)
/* 0D1B98 800D0F98 8FAF0058 */  lw    $t7, 0x58($sp)
/* 0D1B9C 800D0F9C 03B94821 */  addu  $t1, $sp, $t9
/* 0D1BA0 800D0FA0 01F9C021 */  addu  $t8, $t7, $t9
/* 0D1BA4 800D0FA4 93080000 */  lbu   $t0, ($t8)
/* 0D1BA8 800D0FA8 9129002C */  lbu   $t1, 0x2c($t1)
/* 0D1BAC 800D0FAC 11090004 */  beq   $t0, $t1, .L800D0FC0
/* 0D1BB0 800D0FB0 00000000 */   nop   
/* 0D1BB4 800D0FB4 240A0001 */  li    $t2, 1
/* 0D1BB8 800D0FB8 10000006 */  b     .L800D0FD4
/* 0D1BBC 800D0FBC AFAA0018 */   sw    $t2, 0x18($sp)
.L800D0FC0:
/* 0D1BC0 800D0FC0 8FAB0040 */  lw    $t3, 0x40($sp)
/* 0D1BC4 800D0FC4 256C0001 */  addiu $t4, $t3, 1
/* 0D1BC8 800D0FC8 29810004 */  slti  $at, $t4, 4
/* 0D1BCC 800D0FCC 1420FFF1 */  bnez  $at, .L800D0F94
/* 0D1BD0 800D0FD0 AFAC0040 */   sw    $t4, 0x40($sp)
.L800D0FD4:
/* 0D1BD4 800D0FD4 8FAD0018 */  lw    $t5, 0x18($sp)
/* 0D1BD8 800D0FD8 15A00006 */  bnez  $t5, .L800D0FF4
/* 0D1BDC 800D0FDC 00000000 */   nop   
/* 0D1BE0 800D0FE0 8FAE0044 */  lw    $t6, 0x44($sp)
/* 0D1BE4 800D0FE4 8FAF005C */  lw    $t7, 0x5c($sp)
/* 0D1BE8 800D0FE8 ADEE0000 */  sw    $t6, ($t7)
/* 0D1BEC 800D0FEC 1000000D */  b     .L800D1024
/* 0D1BF0 800D0FF0 8FA2001C */   lw    $v0, 0x1c($sp)
.L800D0FF4:
/* 0D1BF4 800D0FF4 8FB80044 */  lw    $t8, 0x44($sp)
/* 0D1BF8 800D0FF8 8FA80048 */  lw    $t0, 0x48($sp)
/* 0D1BFC 800D0FFC 27190001 */  addiu $t9, $t8, 1
/* 0D1C00 800D1000 AFB90044 */  sw    $t9, 0x44($sp)
/* 0D1C04 800D1004 8D090050 */  lw    $t1, 0x50($t0)
/* 0D1C08 800D1008 0329082A */  slt   $at, $t9, $t1
/* 0D1C0C 800D100C 1420FFAF */  bnez  $at, .L800D0ECC
/* 0D1C10 800D1010 00000000 */   nop   
.L800D1014:
/* 0D1C14 800D1014 8FAB005C */  lw    $t3, 0x5c($sp)
/* 0D1C18 800D1018 240AFFFF */  li    $t2, -1
/* 0D1C1C 800D101C 24020005 */  li    $v0, 5
/* 0D1C20 800D1020 AD6A0000 */  sw    $t2, ($t3)
.L800D1024:
/* 0D1C24 800D1024 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D1C28 800D1028 27BD0048 */  addiu $sp, $sp, 0x48
/* 0D1C2C 800D102C 03E00008 */  jr    $ra
/* 0D1C30 800D1030 00000000 */   nop   

/* 0D1C34 800D1034 00000000 */  nop   
/* 0D1C38 800D1038 00000000 */  nop   
/* 0D1C3C 800D103C 00000000 */  nop   

