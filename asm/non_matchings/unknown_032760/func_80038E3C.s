glabel func_80038E3C
/* 039A3C 80038E3C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 039A40 80038E40 AFBF0014 */  sw    $ra, 0x14($sp)
/* 039A44 80038E44 90AF0010 */  lbu   $t7, 0x10($a1)
/* 039A48 80038E48 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 039A4C 80038E4C 448F2000 */  mtc1  $t7, $f4
/* 039A50 80038E50 44811000 */  mtc1  $at, $f2
/* 039A54 80038E54 46802020 */  cvt.s.w $f0, $f4
/* 039A58 80038E58 3C014300 */  li    $at, 0x43000000 # 128.000000
/* 039A5C 80038E5C 44813000 */  mtc1  $at, $f6
/* 039A60 80038E60 4602003C */  c.lt.s $f0, $f2
/* 039A64 80038E64 00803025 */  move  $a2, $a0
/* 039A68 80038E68 45000003 */  bc1f  .L80038E78
/* 039A6C 80038E6C 00000000 */   nop   
/* 039A70 80038E70 46001006 */  mov.s $f0, $f2
/* 039A74 80038E74 00000000 */  nop   
.L80038E78:
/* 039A78 80038E78 46060003 */  div.s $f0, $f0, $f6
/* 039A7C 80038E7C 8CC20064 */  lw    $v0, 0x64($a2)
/* 039A80 80038E80 E4C00008 */  swc1  $f0, 8($a2)
/* 039A84 80038E84 90B90011 */  lbu   $t9, 0x11($a1)
/* 039A88 80038E88 00000000 */  nop   
/* 039A8C 80038E8C 00194280 */  sll   $t0, $t9, 0xa
/* 039A90 80038E90 A4C80000 */  sh    $t0, ($a2)
/* 039A94 80038E94 84C40000 */  lh    $a0, ($a2)
/* 039A98 80038E98 AFA60020 */  sw    $a2, 0x20($sp)
/* 039A9C 80038E9C AFA50024 */  sw    $a1, 0x24($sp)
/* 039AA0 80038EA0 0C01C1F1 */  jal   func_800707C4
/* 039AA4 80038EA4 AFA20018 */   sw    $v0, 0x18($sp)
/* 039AA8 80038EA8 8FA20018 */  lw    $v0, 0x18($sp)
/* 039AAC 80038EAC 8FA60020 */  lw    $a2, 0x20($sp)
/* 039AB0 80038EB0 44804000 */  mtc1  $zero, $f8
/* 039AB4 80038EB4 E4400000 */  swc1  $f0, ($v0)
/* 039AB8 80038EB8 E4480004 */  swc1  $f8, 4($v0)
/* 039ABC 80038EBC 84C40000 */  lh    $a0, ($a2)
/* 039AC0 80038EC0 0C01C1FE */  jal   func_800707F8
/* 039AC4 80038EC4 00000000 */   nop   
/* 039AC8 80038EC8 8FA20018 */  lw    $v0, 0x18($sp)
/* 039ACC 80038ECC 8FA60020 */  lw    $a2, 0x20($sp)
/* 039AD0 80038ED0 8FA50024 */  lw    $a1, 0x24($sp)
/* 039AD4 80038ED4 E4400008 */  swc1  $f0, 8($v0)
/* 039AD8 80038ED8 C44A0000 */  lwc1  $f10, ($v0)
/* 039ADC 80038EDC C4D0000C */  lwc1  $f16, 0xc($a2)
/* 039AE0 80038EE0 C4C40014 */  lwc1  $f4, 0x14($a2)
/* 039AE4 80038EE4 46105482 */  mul.s $f18, $f10, $f16
/* 039AE8 80038EE8 240B0002 */  li    $t3, 2
/* 039AEC 80038EEC 46040182 */  mul.s $f6, $f0, $f4
/* 039AF0 80038EF0 46069200 */  add.s $f8, $f18, $f6
/* 039AF4 80038EF4 46004287 */  neg.s $f10, $f8
/* 039AF8 80038EF8 E44A000C */  swc1  $f10, 0xc($v0)
/* 039AFC 80038EFC 90A90010 */  lbu   $t1, 0x10($a1)
/* 039B00 80038F00 00000000 */  nop   
/* 039B04 80038F04 AC490010 */  sw    $t1, 0x10($v0)
/* 039B08 80038F08 80AA0018 */  lb    $t2, 0x18($a1)
/* 039B0C 80038F0C 00000000 */  nop   
/* 039B10 80038F10 A04A0014 */  sb    $t2, 0x14($v0)
/* 039B14 80038F14 8CCC004C */  lw    $t4, 0x4c($a2)
/* 039B18 80038F18 00000000 */  nop   
/* 039B1C 80038F1C A58B0014 */  sh    $t3, 0x14($t4)
/* 039B20 80038F20 8CCD004C */  lw    $t5, 0x4c($a2)
/* 039B24 80038F24 00000000 */  nop   
/* 039B28 80038F28 A1A00011 */  sb    $zero, 0x11($t5)
/* 039B2C 80038F2C 8CCF004C */  lw    $t7, 0x4c($a2)
/* 039B30 80038F30 90AE0010 */  lbu   $t6, 0x10($a1)
/* 039B34 80038F34 00000000 */  nop   
/* 039B38 80038F38 A1EE0010 */  sb    $t6, 0x10($t7)
/* 039B3C 80038F3C 8CD8004C */  lw    $t8, 0x4c($a2)
/* 039B40 80038F40 00000000 */  nop   
/* 039B44 80038F44 A3000012 */  sb    $zero, 0x12($t8)
/* 039B48 80038F48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 039B4C 80038F4C 27BD0020 */  addiu $sp, $sp, 0x20
/* 039B50 80038F50 03E00008 */  jr    $ra
/* 039B54 80038F54 00000000 */   nop   

