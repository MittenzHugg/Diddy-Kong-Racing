glabel func_800CFDA8
/* 0D09A8 800CFDA8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0D09AC 800CFDAC AFA50034 */  sw    $a1, 0x34($sp)
/* 0D09B0 800CFDB0 93B80034 */  lbu   $t8, 0x34($sp)
/* 0D09B4 800CFDB4 93AE0035 */  lbu   $t6, 0x35($sp)
/* 0D09B8 800CFDB8 AFA40030 */  sw    $a0, 0x30($sp)
/* 0D09BC 800CFDBC 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0D09C0 800CFDC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D09C4 800CFDC4 AFA60038 */  sw    $a2, 0x38($sp)
/* 0D09C8 800CFDC8 AFA00024 */  sw    $zero, 0x24($sp)
/* 0D09CC 800CFDCC AFA00018 */  sw    $zero, 0x18($sp)
/* 0D09D0 800CFDD0 05C10003 */  bgez  $t6, .L800CFDE0
/* 0D09D4 800CFDD4 000E7883 */   sra   $t7, $t6, 2
/* 0D09D8 800CFDD8 25C10003 */  addiu $at, $t6, 3
/* 0D09DC 800CFDDC 00017883 */  sra   $t7, $at, 2
.L800CFDE0:
/* 0D09E0 800CFDE0 07010004 */  bgez  $t8, .L800CFDF4
/* 0D09E4 800CFDE4 33190007 */   andi  $t9, $t8, 7
/* 0D09E8 800CFDE8 13200002 */  beqz  $t9, .L800CFDF4
/* 0D09EC 800CFDEC 00000000 */   nop   
/* 0D09F0 800CFDF0 2739FFF8 */  addiu $t9, $t9, -8
.L800CFDF4:
/* 0D09F4 800CFDF4 00194140 */  sll   $t0, $t9, 5
/* 0D09F8 800CFDF8 01E84821 */  addu  $t1, $t7, $t0
/* 0D09FC 800CFDFC AFA90028 */  sw    $t1, 0x28($sp)
/* 0D0A00 800CFE00 A3A00023 */  sb    $zero, 0x23($sp)
/* 0D0A04 800CFE04 914B0064 */  lbu   $t3, 0x64($t2)
/* 0D0A08 800CFE08 1960005C */  blez  $t3, .L800CFF7C
/* 0D0A0C 800CFE0C 00000000 */   nop   
.L800CFE10:
/* 0D0A10 800CFE10 93AC0023 */  lbu   $t4, 0x23($sp)
/* 0D0A14 800CFE14 19800004 */  blez  $t4, .L800CFE28
/* 0D0A18 800CFE18 00000000 */   nop   
/* 0D0A1C 800CFE1C 240D0001 */  li    $t5, 1
/* 0D0A20 800CFE20 10000004 */  b     .L800CFE34
/* 0D0A24 800CFE24 AFAD001C */   sw    $t5, 0x1c($sp)
.L800CFE28:
/* 0D0A28 800CFE28 8FAE0030 */  lw    $t6, 0x30($sp)
/* 0D0A2C 800CFE2C 8DD80060 */  lw    $t8, 0x60($t6)
/* 0D0A30 800CFE30 AFB8001C */  sw    $t8, 0x1c($sp)
.L800CFE34:
/* 0D0A34 800CFE34 93B90023 */  lbu   $t9, 0x23($sp)
/* 0D0A38 800CFE38 93AF0034 */  lbu   $t7, 0x34($sp)
/* 0D0A3C 800CFE3C 132F000F */  beq   $t9, $t7, .L800CFE7C
/* 0D0A40 800CFE40 00000000 */   nop   
/* 0D0A44 800CFE44 8FA80038 */  lw    $t0, 0x38($sp)
/* 0D0A48 800CFE48 8FA90028 */  lw    $t1, 0x28($sp)
/* 0D0A4C 800CFE4C 240D0001 */  li    $t5, 1
/* 0D0A50 800CFE50 01095021 */  addu  $t2, $t0, $t1
/* 0D0A54 800CFE54 914B0101 */  lbu   $t3, 0x101($t2)
/* 0D0A58 800CFE58 07210004 */  bgez  $t9, .L800CFE6C
/* 0D0A5C 800CFE5C 332C0007 */   andi  $t4, $t9, 7
/* 0D0A60 800CFE60 11800002 */  beqz  $t4, .L800CFE6C
/* 0D0A64 800CFE64 00000000 */   nop   
/* 0D0A68 800CFE68 258CFFF8 */  addiu $t4, $t4, -8
.L800CFE6C:
/* 0D0A6C 800CFE6C 018D7004 */  sllv  $t6, $t5, $t4
/* 0D0A70 800CFE70 016EC024 */  and   $t8, $t3, $t6
/* 0D0A74 800CFE74 13000038 */  beqz  $t8, .L800CFF58
/* 0D0A78 800CFE78 00000000 */   nop   
.L800CFE7C:
/* 0D0A7C 800CFE7C 8FA80038 */  lw    $t0, 0x38($sp)
/* 0D0A80 800CFE80 93AF0023 */  lbu   $t7, 0x23($sp)
/* 0D0A84 800CFE84 91090100 */  lbu   $t1, 0x100($t0)
/* 0D0A88 800CFE88 11E90011 */  beq   $t7, $t1, .L800CFED0
/* 0D0A8C 800CFE8C 00000000 */   nop   
/* 0D0A90 800CFE90 8FA40030 */  lw    $a0, 0x30($sp)
/* 0D0A94 800CFE94 01002825 */  move  $a1, $t0
/* 0D0A98 800CFE98 00003025 */  move  $a2, $zero
/* 0D0A9C 800CFE9C 0C03572F */  jal   __osPfsRWInode
/* 0D0AA0 800CFEA0 01E03825 */   move  $a3, $t7
/* 0D0AA4 800CFEA4 AFA20018 */  sw    $v0, 0x18($sp)
/* 0D0AA8 800CFEA8 8FAA0018 */  lw    $t2, 0x18($sp)
/* 0D0AAC 800CFEAC 11400005 */  beqz  $t2, .L800CFEC4
/* 0D0AB0 800CFEB0 24010003 */   li    $at, 3
/* 0D0AB4 800CFEB4 11410003 */  beq   $t2, $at, .L800CFEC4
/* 0D0AB8 800CFEB8 00000000 */   nop   
/* 0D0ABC 800CFEBC 10000030 */  b     .L800CFF80
/* 0D0AC0 800CFEC0 01401025 */   move  $v0, $t2
.L800CFEC4:
/* 0D0AC4 800CFEC4 93B90023 */  lbu   $t9, 0x23($sp)
/* 0D0AC8 800CFEC8 8FAD0038 */  lw    $t5, 0x38($sp)
/* 0D0ACC 800CFECC A1B90100 */  sb    $t9, 0x100($t5)
.L800CFED0:
/* 0D0AD0 800CFED0 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0D0AD4 800CFED4 8FAC001C */  lw    $t4, 0x1c($sp)
/* 0D0AD8 800CFED8 29610002 */  slti  $at, $t3, 2
/* 0D0ADC 800CFEDC 10200018 */  beqz  $at, .L800CFF40
/* 0D0AE0 800CFEE0 AFAC002C */   sw    $t4, 0x2c($sp)
/* 0D0AE4 800CFEE4 29810080 */  slti  $at, $t4, 0x80
/* 0D0AE8 800CFEE8 10200015 */  beqz  $at, .L800CFF40
/* 0D0AEC 800CFEEC 00000000 */   nop   
.L800CFEF0:
/* 0D0AF0 800CFEF0 8FB8002C */  lw    $t8, 0x2c($sp)
/* 0D0AF4 800CFEF4 8FAE0038 */  lw    $t6, 0x38($sp)
/* 0D0AF8 800CFEF8 97AA0034 */  lhu   $t2, 0x34($sp)
/* 0D0AFC 800CFEFC 00184840 */  sll   $t1, $t8, 1
/* 0D0B00 800CFF00 01C94021 */  addu  $t0, $t6, $t1
/* 0D0B04 800CFF04 950F0000 */  lhu   $t7, ($t0)
/* 0D0B08 800CFF08 15EA0004 */  bne   $t7, $t2, .L800CFF1C
/* 0D0B0C 800CFF0C 00000000 */   nop   
/* 0D0B10 800CFF10 8FB90024 */  lw    $t9, 0x24($sp)
/* 0D0B14 800CFF14 272D0001 */  addiu $t5, $t9, 1
/* 0D0B18 800CFF18 AFAD0024 */  sw    $t5, 0x24($sp)
.L800CFF1C:
/* 0D0B1C 800CFF1C 8FAB002C */  lw    $t3, 0x2c($sp)
/* 0D0B20 800CFF20 8FB80024 */  lw    $t8, 0x24($sp)
/* 0D0B24 800CFF24 256C0001 */  addiu $t4, $t3, 1
/* 0D0B28 800CFF28 2B010002 */  slti  $at, $t8, 2
/* 0D0B2C 800CFF2C 10200004 */  beqz  $at, .L800CFF40
/* 0D0B30 800CFF30 AFAC002C */   sw    $t4, 0x2c($sp)
/* 0D0B34 800CFF34 29810080 */  slti  $at, $t4, 0x80
/* 0D0B38 800CFF38 1420FFED */  bnez  $at, .L800CFEF0
/* 0D0B3C 800CFF3C 00000000 */   nop   
.L800CFF40:
/* 0D0B40 800CFF40 8FAE0024 */  lw    $t6, 0x24($sp)
/* 0D0B44 800CFF44 29C10002 */  slti  $at, $t6, 2
/* 0D0B48 800CFF48 14200003 */  bnez  $at, .L800CFF58
/* 0D0B4C 800CFF4C 00000000 */   nop   
/* 0D0B50 800CFF50 1000000B */  b     .L800CFF80
/* 0D0B54 800CFF54 24020002 */   li    $v0, 2
.L800CFF58:
/* 0D0B58 800CFF58 93A90023 */  lbu   $t1, 0x23($sp)
/* 0D0B5C 800CFF5C 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0D0B60 800CFF60 25280001 */  addiu $t0, $t1, 1
/* 0D0B64 800CFF64 A3A80023 */  sb    $t0, 0x23($sp)
/* 0D0B68 800CFF68 91590064 */  lbu   $t9, 0x64($t2)
/* 0D0B6C 800CFF6C 310F00FF */  andi  $t7, $t0, 0xff
/* 0D0B70 800CFF70 01F9082A */  slt   $at, $t7, $t9
/* 0D0B74 800CFF74 1420FFA6 */  bnez  $at, .L800CFE10
/* 0D0B78 800CFF78 00000000 */   nop   
.L800CFF7C:
/* 0D0B7C 800CFF7C 8FA20024 */  lw    $v0, 0x24($sp)
.L800CFF80:
/* 0D0B80 800CFF80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D0B84 800CFF84 27BD0030 */  addiu $sp, $sp, 0x30
/* 0D0B88 800CFF88 03E00008 */  jr    $ra
/* 0D0B8C 800CFF8C 00000000 */   nop   

