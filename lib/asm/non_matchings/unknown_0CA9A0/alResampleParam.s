glabel alResampleParam
/* 0CCC90 800CC090 24AEFFFF */  addiu $t6, $a1, -1
/* 0CCC94 800CC094 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0CCC98 800CC098 2DC10009 */  sltiu $at, $t6, 9
/* 0CCC9C 800CC09C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CCCA0 800CC0A0 1020002B */  beqz  $at, .L800CC150
/* 0CCCA4 800CC0A4 00803825 */   move  $a3, $a0
/* 0CCCA8 800CC0A8 000E7080 */  sll   $t6, $t6, 2
/* 0CCCAC 800CC0AC 3C01800F */  lui   $at, 0x800f
/* 0CCCB0 800CC0B0 002E0821 */  addu  $at, $at, $t6
/* 0CCCB4 800CC0B4 8C2E9600 */  lw    $t6, -0x6a00($at)
/* 0CCCB8 800CC0B8 01C00008 */  jr    $t6
/* 0CCCBC 800CC0BC 00000000 */   nop   
/* 0CCCC0 800CC0C0 10000029 */  b     .L800CC168
/* 0CCCC4 800CC0C4 ACE60000 */   sw    $a2, ($a3)
/* 0CCCC8 800CC0C8 8CE40000 */  lw    $a0, ($a3)
/* 0CCCCC 800CC0CC 44802000 */  mtc1  $zero, $f4
/* 0CCCD0 800CC0D0 240F0001 */  li    $t7, 1
/* 0CCCD4 800CC0D4 ACEF0024 */  sw    $t7, 0x24($a3)
/* 0CCCD8 800CC0D8 ACE00030 */  sw    $zero, 0x30($a3)
/* 0CCCDC 800CC0DC ACE0001C */  sw    $zero, 0x1c($a3)
/* 0CCCE0 800CC0E0 10800021 */  beqz  $a0, .L800CC168
/* 0CCCE4 800CC0E4 E4E40020 */   swc1  $f4, 0x20($a3)
/* 0CCCE8 800CC0E8 8C990008 */  lw    $t9, 8($a0)
/* 0CCCEC 800CC0EC 24050004 */  li    $a1, 4
/* 0CCCF0 800CC0F0 00003025 */  move  $a2, $zero
/* 0CCCF4 800CC0F4 0320F809 */  jalr  $t9
/* 0CCCF8 800CC0F8 00000000 */  nop   
/* 0CCCFC 800CC0FC 1000001B */  b     .L800CC16C
/* 0CCD00 800CC100 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0CCD04 800CC104 8CE40000 */  lw    $a0, ($a3)
/* 0CCD08 800CC108 24180001 */  li    $t8, 1
/* 0CCD0C 800CC10C ACF80030 */  sw    $t8, 0x30($a3)
/* 0CCD10 800CC110 50800016 */  beql  $a0, $zero, .L800CC16C
/* 0CCD14 800CC114 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0CCD18 800CC118 8C990008 */  lw    $t9, 8($a0)
/* 0CCD1C 800CC11C 24050009 */  li    $a1, 9
/* 0CCD20 800CC120 00003025 */  move  $a2, $zero
/* 0CCD24 800CC124 0320F809 */  jalr  $t9
/* 0CCD28 800CC128 00000000 */  nop   
/* 0CCD2C 800CC12C 1000000F */  b     .L800CC16C
/* 0CCD30 800CC130 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0CCD34 800CC134 AFA6001C */  sw    $a2, 0x1c($sp)
/* 0CCD38 800CC138 C7A6001C */  lwc1  $f6, 0x1c($sp)
/* 0CCD3C 800CC13C 1000000A */  b     .L800CC168
/* 0CCD40 800CC140 E4E60018 */   swc1  $f6, 0x18($a3)
/* 0CCD44 800CC144 24080001 */  li    $t0, 1
/* 0CCD48 800CC148 10000007 */  b     .L800CC168
/* 0CCD4C 800CC14C ACE8001C */   sw    $t0, 0x1c($a3)
.L800CC150:
/* 0CCD50 800CC150 8CE40000 */  lw    $a0, ($a3)
/* 0CCD54 800CC154 50800005 */  beql  $a0, $zero, .L800CC16C
/* 0CCD58 800CC158 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0CCD5C 800CC15C 8C990008 */  lw    $t9, 8($a0)
/* 0CCD60 800CC160 0320F809 */  jalr  $t9
/* 0CCD64 800CC164 00000000 */  nop   
.L800CC168:
/* 0CCD68 800CC168 8FBF0014 */  lw    $ra, 0x14($sp)
.L800CC16C:
/* 0CCD6C 800CC16C 27BD0028 */  addiu $sp, $sp, 0x28
/* 0CCD70 800CC170 00001025 */  move  $v0, $zero
/* 0CCD74 800CC174 03E00008 */  jr    $ra
/* 0CCD78 800CC178 00000000 */   nop   

