glabel alAuxBusParam
/* 0665D4 800659D4 8C83001C */  lw    $v1, 0x1c($a0)
/* 0665D8 800659D8 24010002 */  li    $at, 2
/* 0665DC 800659DC 10A10006 */  beq   $a1, $at, .L800659F8
/* 0665E0 800659E0 00801025 */   move  $v0, $a0
/* 0665E4 800659E4 24010011 */  li    $at, 17
/* 0665E8 800659E8 10A1000D */  beq   $a1, $at, .L80065A20
/* 0665EC 800659EC 00000000 */   nop   
/* 0665F0 800659F0 03E00008 */  jr    $ra
/* 0665F4 800659F4 00001025 */   move  $v0, $zero

.L800659F8:
/* 0665F8 800659F8 8C8E0014 */  lw    $t6, 0x14($a0)
/* 0665FC 800659FC 00001025 */  move  $v0, $zero
/* 066600 80065A00 000E7880 */  sll   $t7, $t6, 2
/* 066604 80065A04 006FC021 */  addu  $t8, $v1, $t7
/* 066608 80065A08 AF060000 */  sw    $a2, ($t8)
/* 06660C 80065A0C 8C990014 */  lw    $t9, 0x14($a0)
/* 066610 80065A10 00000000 */  nop   
/* 066614 80065A14 27280001 */  addiu $t0, $t9, 1
/* 066618 80065A18 03E00008 */  jr    $ra
/* 06661C 80065A1C AC880014 */   sw    $t0, 0x14($a0)

.L80065A20:
/* 066620 80065A20 8C890014 */  lw    $t1, 0x14($a0)
/* 066624 80065A24 00002825 */  move  $a1, $zero
/* 066628 80065A28 19200013 */  blez  $t1, .L80065A78
/* 06662C 80065A2C 00603825 */   move  $a3, $v1
.L80065A30:
/* 066630 80065A30 8CEA0000 */  lw    $t2, ($a3)
/* 066634 80065A34 00000000 */  nop   
/* 066638 80065A38 14CA000A */  bne   $a2, $t2, .L80065A64
/* 06663C 80065A3C 00000000 */   nop   
/* 066640 80065A40 8C8B0014 */  lw    $t3, 0x14($a0)
/* 066644 80065A44 00000000 */  nop   
/* 066648 80065A48 256CFFFF */  addiu $t4, $t3, -1
/* 06664C 80065A4C 000C7080 */  sll   $t6, $t4, 2
/* 066650 80065A50 AC8C0014 */  sw    $t4, 0x14($a0)
/* 066654 80065A54 006E7821 */  addu  $t7, $v1, $t6
/* 066658 80065A58 8DF80000 */  lw    $t8, ($t7)
/* 06665C 80065A5C 00000000 */  nop   
/* 066660 80065A60 ACF80000 */  sw    $t8, ($a3)
.L80065A64:
/* 066664 80065A64 8C590014 */  lw    $t9, 0x14($v0)
/* 066668 80065A68 24A50001 */  addiu $a1, $a1, 1
/* 06666C 80065A6C 00B9082A */  slt   $at, $a1, $t9
/* 066670 80065A70 1420FFEF */  bnez  $at, .L80065A30
/* 066674 80065A74 24E70004 */   addiu $a3, $a3, 4
.L80065A78:
/* 066678 80065A78 03E00008 */  jr    $ra
/* 06667C 80065A7C 00001025 */   move  $v0, $zero

