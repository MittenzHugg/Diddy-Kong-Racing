glabel __osPfsGetStatus
/* 0CF9D4 800CEDD4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CF9D8 800CEDD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CF9DC 800CEDDC AFA40038 */  sw    $a0, 0x38($sp)
/* 0CF9E0 800CEDE0 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0CF9E4 800CEDE4 AFA00034 */  sw    $zero, 0x34($sp)
/* 0CF9E8 800CEDE8 0C03350C */  jal   __osPfsRequestData
/* 0CF9EC 800CEDEC 00002025 */   move  $a0, $zero
/* 0CF9F0 800CEDF0 3C058013 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8013
/* 0CF9F4 800CEDF4 24A5CDE0 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, -0x3220
/* 0CF9F8 800CEDF8 0C0335B0 */  jal   __osSiRawStartDma
/* 0CF9FC 800CEDFC 24040001 */   li    $a0, 1
/* 0CFA00 800CEE00 AFA20034 */  sw    $v0, 0x34($sp)
/* 0CFA04 800CEE04 8FA40038 */  lw    $a0, 0x38($sp)
/* 0CFA08 800CEE08 27A50030 */  addiu $a1, $sp, 0x30
/* 0CFA0C 800CEE0C 0C0322EC */  jal   osRecvMesg
/* 0CFA10 800CEE10 24060001 */   li    $a2, 1
/* 0CFA14 800CEE14 3C058013 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8013
/* 0CFA18 800CEE18 24A5CDE0 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, -0x3220
/* 0CFA1C 800CEE1C 0C0335B0 */  jal   __osSiRawStartDma
/* 0CFA20 800CEE20 00002025 */   move  $a0, $zero
/* 0CFA24 800CEE24 AFA20034 */  sw    $v0, 0x34($sp)
/* 0CFA28 800CEE28 8FA40038 */  lw    $a0, 0x38($sp)
/* 0CFA2C 800CEE2C 27A50030 */  addiu $a1, $sp, 0x30
/* 0CFA30 800CEE30 0C0322EC */  jal   osRecvMesg
/* 0CFA34 800CEE34 24060001 */   li    $a2, 1
/* 0CFA38 800CEE38 27A4002F */  addiu $a0, $sp, 0x2f
/* 0CFA3C 800CEE3C 0C03354B */  jal   __osPfsGetInitData
/* 0CFA40 800CEE40 27A5001C */   addiu $a1, $sp, 0x1c
/* 0CFA44 800CEE44 8FAE003C */  lw    $t6, 0x3c($sp)
/* 0CFA48 800CEE48 000E7880 */  sll   $t7, $t6, 2
/* 0CFA4C 800CEE4C 03AFC021 */  addu  $t8, $sp, $t7
/* 0CFA50 800CEE50 9318001E */  lbu   $t8, 0x1e($t8)
/* 0CFA54 800CEE54 33190001 */  andi  $t9, $t8, 1
/* 0CFA58 800CEE58 13200006 */  beqz  $t9, .L800CEE74
/* 0CFA5C 800CEE5C 00000000 */   nop   
/* 0CFA60 800CEE60 33080002 */  andi  $t0, $t8, 2
/* 0CFA64 800CEE64 11000003 */  beqz  $t0, .L800CEE74
/* 0CFA68 800CEE68 00000000 */   nop   
/* 0CFA6C 800CEE6C 10000018 */  b     .L800CEED0
/* 0CFA70 800CEE70 24020002 */   li    $v0, 2
.L800CEE74:
/* 0CFA74 800CEE74 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0CFA78 800CEE78 27AB001C */  addiu $t3, $sp, 0x1c
/* 0CFA7C 800CEE7C 00095080 */  sll   $t2, $t1, 2
/* 0CFA80 800CEE80 014B6021 */  addu  $t4, $t2, $t3
/* 0CFA84 800CEE84 918D0003 */  lbu   $t5, 3($t4)
/* 0CFA88 800CEE88 15A00005 */  bnez  $t5, .L800CEEA0
/* 0CFA8C 800CEE8C 00000000 */   nop   
/* 0CFA90 800CEE90 918E0002 */  lbu   $t6, 2($t4)
/* 0CFA94 800CEE94 31CF0001 */  andi  $t7, $t6, 1
/* 0CFA98 800CEE98 15E00003 */  bnez  $t7, .L800CEEA8
/* 0CFA9C 800CEE9C 00000000 */   nop   
.L800CEEA0:
/* 0CFAA0 800CEEA0 1000000B */  b     .L800CEED0
/* 0CFAA4 800CEEA4 24020001 */   li    $v0, 1
.L800CEEA8:
/* 0CFAA8 800CEEA8 8FB9003C */  lw    $t9, 0x3c($sp)
/* 0CFAAC 800CEEAC 0019C080 */  sll   $t8, $t9, 2
/* 0CFAB0 800CEEB0 03B84021 */  addu  $t0, $sp, $t8
/* 0CFAB4 800CEEB4 9108001E */  lbu   $t0, 0x1e($t0)
/* 0CFAB8 800CEEB8 31090004 */  andi  $t1, $t0, 4
/* 0CFABC 800CEEBC 11200003 */  beqz  $t1, .L800CEECC
/* 0CFAC0 800CEEC0 00000000 */   nop   
/* 0CFAC4 800CEEC4 10000002 */  b     .L800CEED0
/* 0CFAC8 800CEEC8 24020004 */   li    $v0, 4
.L800CEECC:
/* 0CFACC 800CEECC 8FA20034 */  lw    $v0, 0x34($sp)
.L800CEED0:
/* 0CFAD0 800CEED0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CFAD4 800CEED4 27BD0038 */  addiu $sp, $sp, 0x38
/* 0CFAD8 800CEED8 03E00008 */  jr    $ra
/* 0CFADC 800CEEDC 00000000 */   nop   

