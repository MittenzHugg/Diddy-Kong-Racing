glabel func_8006EFB8
/* 06FBB8 8006EFB8 3C0EA400 */  lui   $t6, 0xa400
/* 06FBBC 8006EFBC 8DCF0000 */  lw    $t7, ($t6)
/* 06FBC0 8006EFC0 2401FFFF */  li    $at, -1
/* 06FBC4 8006EFC4 11E10003 */  beq   $t7, $at, .L8006EFD4
/* 06FBC8 8006EFC8 24020001 */   li    $v0, 1
/* 06FBCC 8006EFCC 03E00008 */  jr    $ra
/* 06FBD0 8006EFD0 00001025 */   move  $v0, $zero
.L8006EFD4:
/* 06FBD4 8006EFD4 03E00008 */  jr    $ra
/* 06FBD8 8006EFD8 00000000 */   nop   

