glabel func_800ACF60
/* 0ADB60 800ACF60 3C03800E */  lui   $v1, %hi(D_800E2A88) # $v1, 0x800e
/* 0ADB64 800ACF64 24632A88 */  addiu $v1, %lo(D_800E2A88) # addiu $v1, $v1, 0x2a88
/* 0ADB68 800ACF68 8C620000 */  lw    $v0, ($v1)
/* 0ADB6C 800ACF6C 00000000 */  nop   
/* 0ADB70 800ACF70 28410010 */  slti  $at, $v0, 0x10
/* 0ADB74 800ACF74 10200006 */  beqz  $at, .L800ACF90
/* 0ADB78 800ACF78 00027080 */   sll   $t6, $v0, 2
/* 0ADB7C 800ACF7C 3C018012 */  lui   $at, 0x8012
/* 0ADB80 800ACF80 002E0821 */  addu  $at, $at, $t6
/* 0ADB84 800ACF84 AC247C40 */  sw    $a0, 0x7c40($at)
/* 0ADB88 800ACF88 244F0001 */  addiu $t7, $v0, 1
/* 0ADB8C 800ACF8C AC6F0000 */  sw    $t7, ($v1)
.L800ACF90:
/* 0ADB90 800ACF90 03E00008 */  jr    $ra
/* 0ADB94 800ACF94 00000000 */   nop   

