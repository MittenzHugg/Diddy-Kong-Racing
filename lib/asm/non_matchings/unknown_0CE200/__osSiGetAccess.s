glabel __osSiGetAccess
/* 0CE250 800CD650 3C0E800E */  lui   $t6, %hi(D_800E38D0) # $t6, 0x800e
/* 0CE254 800CD654 8DCE38D0 */  lw    $t6, %lo(D_800E38D0)($t6)
/* 0CE258 800CD658 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0CE25C 800CD65C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CE260 800CD660 15C00003 */  bnez  $t6, .L800CD670
/* 0CE264 800CD664 00000000 */   nop   
/* 0CE268 800CD668 0C033580 */  jal   __osSiCreateAccessQueue
/* 0CE26C 800CD66C 00000000 */   nop   
.L800CD670:
/* 0CE270 800CD670 3C048013 */  lui   $a0, %hi(D_8012CE28) # $a0, 0x8013
/* 0CE274 800CD674 2484CE28 */  addiu $a0, %lo(D_8012CE28) # addiu $a0, $a0, -0x31d8
/* 0CE278 800CD678 27A5001C */  addiu $a1, $sp, 0x1c
/* 0CE27C 800CD67C 0C0322EC */  jal   osRecvMesg
/* 0CE280 800CD680 24060001 */   li    $a2, 1
/* 0CE284 800CD684 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CE288 800CD688 27BD0020 */  addiu $sp, $sp, 0x20
/* 0CE28C 800CD68C 03E00008 */  jr    $ra
/* 0CE290 800CD690 00000000 */   nop   

