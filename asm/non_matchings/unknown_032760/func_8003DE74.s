glabel func_8003DE74
/* 03EA74 8003DE74 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03EA78 8003DE78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03EA7C 8003DE7C 8C8F004C */  lw    $t7, 0x4c($a0)
/* 03EA80 8003DE80 240E0002 */  li    $t6, 2
/* 03EA84 8003DE84 A5EE0014 */  sh    $t6, 0x14($t7)
/* 03EA88 8003DE88 8C98004C */  lw    $t8, 0x4c($a0)
/* 03EA8C 8003DE8C 2419001E */  li    $t9, 30
/* 03EA90 8003DE90 A3000011 */  sb    $zero, 0x11($t8)
/* 03EA94 8003DE94 8C88004C */  lw    $t0, 0x4c($a0)
/* 03EA98 8003DE98 00000000 */  nop   
/* 03EA9C 8003DE9C A1190010 */  sb    $t9, 0x10($t0)
/* 03EAA0 8003DEA0 90A90008 */  lbu   $t1, 8($a1)
/* 03EAA4 8003DEA4 00000000 */  nop   
/* 03EAA8 8003DEA8 312A000F */  andi  $t2, $t1, 0xf
/* 03EAAC 8003DEAC A0AA0008 */  sb    $t2, 8($a1)
/* 03EAB0 8003DEB0 314B00FF */  andi  $t3, $t2, 0xff
/* 03EAB4 8003DEB4 AC8B0078 */  sw    $t3, 0x78($a0)
/* 03EAB8 8003DEB8 0C01BAA4 */  jal   get_settings
/* 03EABC 8003DEBC AFA40020 */   sw    $a0, 0x20($sp)
/* 03EAC0 8003DEC0 0C0270B4 */  jal   is_in_tracks_mode
/* 03EAC4 8003DEC4 AFA2001C */   sw    $v0, 0x1c($sp)
/* 03EAC8 8003DEC8 8FA40020 */  lw    $a0, 0x20($sp)
/* 03EACC 8003DECC 14400008 */  bnez  $v0, .L8003DEF0
/* 03EAD0 8003DED0 240F0001 */   li    $t7, 1
/* 03EAD4 8003DED4 8FAC001C */  lw    $t4, 0x1c($sp)
/* 03EAD8 8003DED8 8C8E0078 */  lw    $t6, 0x78($a0)
/* 03EADC 8003DEDC 958D0008 */  lhu   $t5, 8($t4)
/* 03EAE0 8003DEE0 01CFC004 */  sllv  $t8, $t7, $t6
/* 03EAE4 8003DEE4 01B8C824 */  and   $t9, $t5, $t8
/* 03EAE8 8003DEE8 13200004 */  beqz  $t9, .L8003DEFC
/* 03EAEC 8003DEEC 8FBF0014 */   lw    $ra, 0x14($sp)
.L8003DEF0:
/* 03EAF0 8003DEF0 0C003FEE */  jal   particlePtrList_addObject
/* 03EAF4 8003DEF4 00000000 */   nop   
/* 03EAF8 8003DEF8 8FBF0014 */  lw    $ra, 0x14($sp)
.L8003DEFC:
/* 03EAFC 8003DEFC 27BD0020 */  addiu $sp, $sp, 0x20
/* 03EB00 8003DF00 03E00008 */  jr    $ra
/* 03EB04 8003DF04 00000000 */   nop   

