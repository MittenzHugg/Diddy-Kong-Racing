glabel func_8002F2AC
/* 02FEAC 8002F2AC 3C038012 */  lui   $v1, %hi(D_8011B118) # $v1, 0x8012
/* 02FEB0 8002F2B0 8C63B118 */  lw    $v1, %lo(D_8011B118)($v1)
/* 02FEB4 8002F2B4 3C0E8012 */  lui   $t6, 0x8012
/* 02FEB8 8002F2B8 18600028 */  blez  $v1, .L8002F35C
/* 02FEBC 8002F2BC 25C4B120 */   addiu $a0, $t6, -0x4ee0
/* 02FEC0 8002F2C0 00037900 */  sll   $t7, $v1, 4
/* 02FEC4 8002F2C4 01E42821 */  addu  $a1, $t7, $a0
/* 02FEC8 8002F2C8 24840010 */  addiu $a0, $a0, 0x10
/* 02FECC 8002F2CC 0085082B */  sltu  $at, $a0, $a1
/* 02FED0 8002F2D0 8C82FFFC */  lw    $v0, -4($a0)
/* 02FED4 8002F2D4 C492FFF0 */  lwc1  $f18, -0x10($a0)
/* 02FED8 8002F2D8 10200013 */  beqz  $at, .L8002F328
/* 02FEDC 8002F2DC 00000000 */   nop   
.L8002F2E0:
/* 02FEE0 8002F2E0 C4500000 */  lwc1  $f16, ($v0)
/* 02FEE4 8002F2E4 C48EFFF8 */  lwc1  $f14, -8($a0)
/* 02FEE8 8002F2E8 46109402 */  mul.s $f16, $f18, $f16
/* 02FEEC 8002F2EC C44C0008 */  lwc1  $f12, 8($v0)
/* 02FEF0 8002F2F0 C44A000C */  lwc1  $f10, 0xc($v0)
/* 02FEF4 8002F2F4 C4480004 */  lwc1  $f8, 4($v0)
/* 02FEF8 8002F2F8 460C7302 */  mul.s $f12, $f14, $f12
/* 02FEFC 8002F2FC C4920000 */  lwc1  $f18, ($a0)
/* 02FF00 8002F300 24840010 */  addiu $a0, $a0, 0x10
/* 02FF04 8002F304 8C82FFFC */  lw    $v0, -4($a0)
/* 02FF08 8002F308 460C8300 */  add.s $f12, $f16, $f12
/* 02FF0C 8002F30C 0085082B */  sltu  $at, $a0, $a1
/* 02FF10 8002F310 460A6280 */  add.s $f10, $f12, $f10
/* 02FF14 8002F314 46005287 */  neg.s $f10, $f10
/* 02FF18 8002F318 00000000 */  nop   
/* 02FF1C 8002F31C 46085203 */  div.s $f8, $f10, $f8
/* 02FF20 8002F320 1420FFEF */  bnez  $at, .L8002F2E0
/* 02FF24 8002F324 E488FFE4 */   swc1  $f8, -0x1c($a0)
.L8002F328:
/* 02FF28 8002F328 C4500000 */  lwc1  $f16, ($v0)
/* 02FF2C 8002F32C C48EFFF8 */  lwc1  $f14, -8($a0)
/* 02FF30 8002F330 46109402 */  mul.s $f16, $f18, $f16
/* 02FF34 8002F334 C44C0008 */  lwc1  $f12, 8($v0)
/* 02FF38 8002F338 C44A000C */  lwc1  $f10, 0xc($v0)
/* 02FF3C 8002F33C C4480004 */  lwc1  $f8, 4($v0)
/* 02FF40 8002F340 460C7302 */  mul.s $f12, $f14, $f12
/* 02FF44 8002F344 460C8300 */  add.s $f12, $f16, $f12
/* 02FF48 8002F348 460A6280 */  add.s $f10, $f12, $f10
/* 02FF4C 8002F34C 46005287 */  neg.s $f10, $f10
/* 02FF50 8002F350 00000000 */  nop   
/* 02FF54 8002F354 46085203 */  div.s $f8, $f10, $f8
/* 02FF58 8002F358 E488FFF4 */  swc1  $f8, -0xc($a0)
.L8002F35C:
/* 02FF5C 8002F35C 3C058012 */  lui   $a1, %hi(D_8011B320) # $a1, 0x8012
/* 02FF60 8002F360 3C088012 */  lui   $t0, %hi(D_8011B330) # $t0, 0x8012
/* 02FF64 8002F364 2508B330 */  addiu $t0, %lo(D_8011B330) # addiu $t0, $t0, -0x4cd0
/* 02FF68 8002F368 24A5B320 */  addiu $a1, %lo(D_8011B320) # addiu $a1, $a1, -0x4ce0
/* 02FF6C 8002F36C 00002025 */  move  $a0, $zero
.L8002F370:
/* 02FF70 8002F370 8CA60000 */  lw    $a2, ($a1)
/* 02FF74 8002F374 00001825 */  move  $v1, $zero
/* 02FF78 8002F378 18C0002C */  blez  $a2, .L8002F42C
/* 02FF7C 8002F37C 00801025 */   move  $v0, $a0
/* 02FF80 8002F380 3C198012 */  lui   $t9, %hi(D_8011B330) # $t9, 0x8012
/* 02FF84 8002F384 2739B330 */  addiu $t9, %lo(D_8011B330) # addiu $t9, $t9, -0x4cd0
/* 02FF88 8002F388 0002C140 */  sll   $t8, $v0, 5
/* 02FF8C 8002F38C 03193821 */  addu  $a3, $t8, $t9
/* 02FF90 8002F390 24630001 */  addiu $v1, $v1, 1
/* 02FF94 8002F394 0066082A */  slt   $at, $v1, $a2
/* 02FF98 8002F398 8CE2000C */  lw    $v0, 0xc($a3)
/* 02FF9C 8002F39C C4F20000 */  lwc1  $f18, ($a3)
/* 02FFA0 8002F3A0 10200014 */  beqz  $at, .L8002F3F4
/* 02FFA4 8002F3A4 00000000 */   nop   
.L8002F3A8:
/* 02FFA8 8002F3A8 C4500000 */  lwc1  $f16, ($v0)
/* 02FFAC 8002F3AC C4EE0008 */  lwc1  $f14, 8($a3)
/* 02FFB0 8002F3B0 46109402 */  mul.s $f16, $f18, $f16
/* 02FFB4 8002F3B4 C44C0008 */  lwc1  $f12, 8($v0)
/* 02FFB8 8002F3B8 C44A000C */  lwc1  $f10, 0xc($v0)
/* 02FFBC 8002F3BC C4480004 */  lwc1  $f8, 4($v0)
/* 02FFC0 8002F3C0 460C7302 */  mul.s $f12, $f14, $f12
/* 02FFC4 8002F3C4 C4F20020 */  lwc1  $f18, 0x20($a3)
/* 02FFC8 8002F3C8 24630001 */  addiu $v1, $v1, 1
/* 02FFCC 8002F3CC 8CE2002C */  lw    $v0, 0x2c($a3)
/* 02FFD0 8002F3D0 460C8300 */  add.s $f12, $f16, $f12
/* 02FFD4 8002F3D4 0066082A */  slt   $at, $v1, $a2
/* 02FFD8 8002F3D8 460A6280 */  add.s $f10, $f12, $f10
/* 02FFDC 8002F3DC 24E70020 */  addiu $a3, $a3, 0x20
/* 02FFE0 8002F3E0 46005287 */  neg.s $f10, $f10
/* 02FFE4 8002F3E4 00000000 */  nop   
/* 02FFE8 8002F3E8 46085203 */  div.s $f8, $f10, $f8
/* 02FFEC 8002F3EC 1420FFEE */  bnez  $at, .L8002F3A8
/* 02FFF0 8002F3F0 E4E8FFE4 */   swc1  $f8, -0x1c($a3)
.L8002F3F4:
/* 02FFF4 8002F3F4 C4500000 */  lwc1  $f16, ($v0)
/* 02FFF8 8002F3F8 C4EE0008 */  lwc1  $f14, 8($a3)
/* 02FFFC 8002F3FC 46109402 */  mul.s $f16, $f18, $f16
/* 030000 8002F400 C44C0008 */  lwc1  $f12, 8($v0)
/* 030004 8002F404 C44A000C */  lwc1  $f10, 0xc($v0)
/* 030008 8002F408 C4480004 */  lwc1  $f8, 4($v0)
/* 03000C 8002F40C 460C7302 */  mul.s $f12, $f14, $f12
/* 030010 8002F410 24E70020 */  addiu $a3, $a3, 0x20
/* 030014 8002F414 460C8300 */  add.s $f12, $f16, $f12
/* 030018 8002F418 460A6280 */  add.s $f10, $f12, $f10
/* 03001C 8002F41C 46005287 */  neg.s $f10, $f10
/* 030020 8002F420 00000000 */  nop   
/* 030024 8002F424 46085203 */  div.s $f8, $f10, $f8
/* 030028 8002F428 E4E8FFE4 */  swc1  $f8, -0x1c($a3)
.L8002F42C:
/* 03002C 8002F42C 24A50004 */  addiu $a1, $a1, 4
/* 030030 8002F430 14A8FFCF */  bne   $a1, $t0, .L8002F370
/* 030034 8002F434 24840020 */   addiu $a0, $a0, 0x20
/* 030038 8002F438 03E00008 */  jr    $ra
/* 03003C 8002F43C 00000000 */   nop   

