glabel func_8006D968
/* 06E568 8006D968 3C0E8012 */  lui   $t6, %hi(D_801234EC) # $t6, 0x8012
/* 06E56C 8006D96C 8DCE34EC */  lw    $t6, %lo(D_801234EC)($t6)
/* 06E570 8006D970 24010004 */  li    $at, 4
/* 06E574 8006D974 11C10023 */  beq   $t6, $at, .L8006DA04
/* 06E578 8006D978 3C068012 */   lui   $a2, %hi(D_80121250) # $a2, 0x8012
/* 06E57C 8006D97C 3C0F8012 */  lui   $t7, %hi(D_801234F4) # $t7, 0x8012
/* 06E580 8006D980 8DEF34F4 */  lw    $t7, %lo(D_801234F4)($t7)
/* 06E584 8006D984 24C61250 */  addiu $a2, %lo(D_80121250) # addiu $a2, $a2, 0x1250
/* 06E588 8006D988 3C038012 */  lui   $v1, %hi(D_80121250) # $v1, 0x8012
/* 06E58C 8006D98C 3C028012 */  lui   $v0, %hi(D_80121252) # $v0, 0x8012
/* 06E590 8006D990 24421252 */  addiu $v0, %lo(D_80121252) # addiu $v0, $v0, 0x1252
/* 06E594 8006D994 24631250 */  addiu $v1, %lo(D_80121250) # addiu $v1, $v1, 0x1250
/* 06E598 8006D998 00802825 */  move  $a1, $a0
/* 06E59C 8006D99C A0CF0000 */  sb    $t7, ($a2)
.L8006D9A0:
/* 06E5A0 8006D9A0 80B80008 */  lb    $t8, 8($a1)
/* 06E5A4 8006D9A4 24630001 */  addiu $v1, $v1, 1
/* 06E5A8 8006D9A8 A0780001 */  sb    $t8, 1($v1)
/* 06E5AC 8006D9AC 80B9000A */  lb    $t9, 0xa($a1)
/* 06E5B0 8006D9B0 24A50001 */  addiu $a1, $a1, 1
/* 06E5B4 8006D9B4 A0790003 */  sb    $t9, 3($v1)
/* 06E5B8 8006D9B8 80A8000B */  lb    $t0, 0xb($a1)
/* 06E5BC 8006D9BC 00000000 */  nop   
/* 06E5C0 8006D9C0 A0680005 */  sb    $t0, 5($v1)
/* 06E5C4 8006D9C4 80A9000D */  lb    $t1, 0xd($a1)
/* 06E5C8 8006D9C8 00000000 */  nop   
/* 06E5CC 8006D9CC A0690007 */  sb    $t1, 7($v1)
/* 06E5D0 8006D9D0 80AA0011 */  lb    $t2, 0x11($a1)
/* 06E5D4 8006D9D4 00000000 */  nop   
/* 06E5D8 8006D9D8 A06A0009 */  sb    $t2, 9($v1)
/* 06E5DC 8006D9DC 80AB0013 */  lb    $t3, 0x13($a1)
/* 06E5E0 8006D9E0 1462FFEF */  bne   $v1, $v0, .L8006D9A0
/* 06E5E4 8006D9E4 A06B000B */   sb    $t3, 0xb($v1)
/* 06E5E8 8006D9E8 808C0016 */  lb    $t4, 0x16($a0)
/* 06E5EC 8006D9EC 240E0001 */  li    $t6, 1
/* 06E5F0 8006D9F0 A0CC000E */  sb    $t4, 0xe($a2)
/* 06E5F4 8006D9F4 808D0017 */  lb    $t5, 0x17($a0)
/* 06E5F8 8006D9F8 3C018012 */  lui   $at, %hi(D_801234FC) # $at, 0x8012
/* 06E5FC 8006D9FC A0CD000F */  sb    $t5, 0xf($a2)
/* 06E600 8006DA00 AC2E34FC */  sw    $t6, %lo(D_801234FC)($at)
.L8006DA04:
/* 06E604 8006DA04 03E00008 */  jr    $ra
/* 06E608 8006DA08 00000000 */   nop   
