glabel func_80002A98
/* 003698 80002A98 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 00369C 80002A9C AFA40050 */  sw    $a0, 0x50($sp)
/* 0036A0 80002AA0 3C048011 */  lui   $a0, %hi(D_80115F90) # $a0, 0x8011
/* 0036A4 80002AA4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0036A8 80002AA8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0036AC 80002AAC 8C845F90 */  lw    $a0, %lo(D_80115F90)($a0)
/* 0036B0 80002AB0 3C058011 */  lui   $a1, %hi(D_80116220) # $a1, 0x8011
/* 0036B4 80002AB4 3C068011 */  lui   $a2, %hi(OSMesgQueue_80116160) # $a2, 0x8011
/* 0036B8 80002AB8 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0036BC 80002ABC AFB70034 */  sw    $s7, 0x34($sp)
/* 0036C0 80002AC0 AFB60030 */  sw    $s6, 0x30($sp)
/* 0036C4 80002AC4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0036C8 80002AC8 AFB40028 */  sw    $s4, 0x28($sp)
/* 0036CC 80002ACC AFB30024 */  sw    $s3, 0x24($sp)
/* 0036D0 80002AD0 AFB20020 */  sw    $s2, 0x20($sp)
/* 0036D4 80002AD4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0036D8 80002AD8 00008025 */  move  $s0, $zero
/* 0036DC 80002ADC AFA00048 */  sw    $zero, 0x48($sp)
/* 0036E0 80002AE0 AFA00044 */  sw    $zero, 0x44($sp)
/* 0036E4 80002AE4 24C66160 */  addiu $a2, %lo(OSMesgQueue_80116160) # addiu $a2, $a2, 0x6160
/* 0036E8 80002AE8 24A56220 */  addiu $a1, %lo(D_80116220) # addiu $a1, $a1, 0x6220
/* 0036EC 80002AEC 0C01E520 */  jal   osScAddClient
/* 0036F0 80002AF0 24070001 */   li    $a3, 1
/* 0036F4 80002AF4 3C1E8011 */  lui   $fp, %hi(D_80116198) # $fp, 0x8011
/* 0036F8 80002AF8 3C16800E */  lui   $s6, %hi(D_800DC680) # $s6, 0x800e
/* 0036FC 80002AFC 3C158011 */  lui   $s5, %hi(D_80115F98) # $s5, 0x8011
/* 003700 80002B00 26B55F98 */  addiu $s5, %lo(D_80115F98) # addiu $s5, $s5, 0x5f98
/* 003704 80002B04 26D6C680 */  addiu $s6, %lo(D_800DC680) # addiu $s6, $s6, -0x3980
/* 003708 80002B08 27DE6198 */  addiu $fp, %lo(D_80116198) # addiu $fp, $fp, 0x6198
/* 00370C 80002B0C 24170003 */  li    $s7, 3
/* 003710 80002B10 2414000A */  li    $s4, 10
/* 003714 80002B14 24130004 */  li    $s3, 4
/* 003718 80002B18 24120001 */  li    $s2, 1
/* 00371C 80002B1C 27B10048 */  addiu $s1, $sp, 0x48
.L80002B20:
/* 003720 80002B20 3C048011 */  lui   $a0, %hi(OSMesgQueue_80116160) # $a0, 0x8011
/* 003724 80002B24 24846160 */  addiu $a0, %lo(OSMesgQueue_80116160) # addiu $a0, $a0, 0x6160
/* 003728 80002B28 02202825 */  move  $a1, $s1
/* 00372C 80002B2C 0C0322EC */  jal   osRecvMesg
/* 003730 80002B30 02403025 */   move  $a2, $s2
/* 003734 80002B34 8FAE0048 */  lw    $t6, 0x48($sp)
/* 003738 80002B38 00000000 */  nop   
/* 00373C 80002B3C 85C20000 */  lh    $v0, ($t6)
/* 003740 80002B40 00000000 */  nop   
/* 003744 80002B44 10520007 */  beq   $v0, $s2, .L80002B64
/* 003748 80002B48 00000000 */   nop   
/* 00374C 80002B4C 1053001B */  beq   $v0, $s3, .L80002BBC
/* 003750 80002B50 00000000 */   nop   
/* 003754 80002B54 10540018 */  beq   $v0, $s4, .L80002BB8
/* 003758 80002B58 00000000 */   nop   
/* 00375C 80002B5C 10000017 */  b     .L80002BBC
/* 003760 80002B60 00000000 */   nop   
.L80002B64:
/* 003764 80002B64 8ECF0000 */  lw    $t7, ($s6)
/* 003768 80002B68 8FA50044 */  lw    $a1, 0x44($sp)
/* 00376C 80002B6C 01F7001B */  divu  $zero, $t7, $s7
/* 003770 80002B70 16E00002 */  bnez  $s7, .L80002B7C
/* 003774 80002B74 00000000 */   nop   
/* 003778 80002B78 0007000D */  break 7
.L80002B7C:
/* 00377C 80002B7C 0000C010 */  mfhi  $t8
/* 003780 80002B80 0018C880 */  sll   $t9, $t8, 2
/* 003784 80002B84 02B94021 */  addu  $t0, $s5, $t9
/* 003788 80002B88 8D040008 */  lw    $a0, 8($t0)
/* 00378C 80002B8C 0C000B00 */  jal   func_80002C00
/* 003790 80002B90 00000000 */   nop   
/* 003794 80002B94 03C02025 */  move  $a0, $fp
/* 003798 80002B98 27A50044 */  addiu $a1, $sp, 0x44
/* 00379C 80002B9C 0C0322EC */  jal   osRecvMesg
/* 0037A0 80002BA0 02403025 */   move  $a2, $s2
/* 0037A4 80002BA4 8FA40044 */  lw    $a0, 0x44($sp)
/* 0037A8 80002BA8 0C000B7E */  jal   func_80002DF8
/* 0037AC 80002BAC 00000000 */   nop   
/* 0037B0 80002BB0 10000002 */  b     .L80002BBC
/* 0037B4 80002BB4 00000000 */   nop   
.L80002BB8:
/* 0037B8 80002BB8 02408025 */  move  $s0, $s2
.L80002BBC:
/* 0037BC 80002BBC 1200FFD8 */  beqz  $s0, .L80002B20
/* 0037C0 80002BC0 00000000 */   nop   
/* 0037C4 80002BC4 3C048011 */  lui   $a0, %hi(ALGlobals_801161D0) # $a0, 0x8011
/* 0037C8 80002BC8 0C0321ED */  jal   alClose
/* 0037CC 80002BCC 248461D0 */   addiu $a0, %lo(ALGlobals_801161D0) # addiu $a0, $a0, 0x61d0
/* 0037D0 80002BD0 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0037D4 80002BD4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0037D8 80002BD8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0037DC 80002BDC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0037E0 80002BE0 8FB30024 */  lw    $s3, 0x24($sp)
/* 0037E4 80002BE4 8FB40028 */  lw    $s4, 0x28($sp)
/* 0037E8 80002BE8 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0037EC 80002BEC 8FB60030 */  lw    $s6, 0x30($sp)
/* 0037F0 80002BF0 8FB70034 */  lw    $s7, 0x34($sp)
/* 0037F4 80002BF4 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0037F8 80002BF8 03E00008 */  jr    $ra
/* 0037FC 80002BFC 27BD0050 */   addiu $sp, $sp, 0x50

