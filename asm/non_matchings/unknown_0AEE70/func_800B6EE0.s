glabel func_800B6EE0
/* 0B7AE0 800B6EE0 3C0E8012 */  lui   $t6, %hi(D_80127CBC) # $t6, 0x8012
/* 0B7AE4 800B6EE4 8DCE7CBC */  lw    $t6, %lo(D_80127CBC)($t6)
/* 0B7AE8 800B6EE8 3C018012 */  lui   $at, %hi(D_80127CAC) # $at, 0x8012
/* 0B7AEC 800B6EEC 3C0F8012 */  lui   $t7, %hi(D_80127CC4) # $t7, 0x8012
/* 0B7AF0 800B6EF0 8DEF7CC4 */  lw    $t7, %lo(D_80127CC4)($t7)
/* 0B7AF4 800B6EF4 A42E7CAC */  sh    $t6, %lo(D_80127CAC)($at)
/* 0B7AF8 800B6EF8 3C018012 */  lui   $at, 0x8012
/* 0B7AFC 800B6EFC 03E00008 */  jr    $ra
/* 0B7B00 800B6F00 A42F7CAE */   sh    $t7, 0x7cae($at)

