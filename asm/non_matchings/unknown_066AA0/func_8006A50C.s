glabel func_8006A50C
/* 06B10C 8006A50C 3C038012 */  lui   $v1, %hi(D_80121150) # $v1, 0x8012
/* 06B110 8006A510 24631150 */  addiu $v1, %lo(D_80121150) # addiu $v1, $v1, 0x1150
/* 06B114 8006A514 90620000 */  lbu   $v0, ($v1)
/* 06B118 8006A518 906E0001 */  lbu   $t6, 1($v1)
/* 06B11C 8006A51C A0620001 */  sb    $v0, 1($v1)
/* 06B120 8006A520 03E00008 */  jr    $ra
/* 06B124 8006A524 A06E0000 */   sb    $t6, ($v1)
