glabel func_800AD40C
/* 0AE00C 800AD40C 3C0E800E */  lui   $t6, %hi(D_800E2C5C) # $t6, 0x800e
/* 0AE010 800AD410 8DCE2C5C */  lw    $t6, %lo(D_800E2C5C)($t6)
/* 0AE014 800AD414 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0AE018 800AD418 11C00020 */  beqz  $t6, .L800AD49C
/* 0AE01C 800AD41C AFBF001C */   sw    $ra, 0x1c($sp)
/* 0AE020 800AD420 0C019884 */  jal   func_80066210
/* 0AE024 800AD424 00000000 */   nop   
/* 0AE028 800AD428 1440001C */  bnez  $v0, .L800AD49C
/* 0AE02C 800AD42C 00002025 */   move  $a0, $zero
/* 0AE030 800AD430 3C02800E */  lui   $v0, %hi(D_800E2C60) # $v0, 0x800e
/* 0AE034 800AD434 8C422C60 */  lw    $v0, %lo(D_800E2C60)($v0)
/* 0AE038 800AD438 240A000F */  li    $t2, 15
/* 0AE03C 800AD43C 00020823 */  negu  $at, $v0
/* 0AE040 800AD440 00011880 */  sll   $v1, $at, 2
/* 0AE044 800AD444 00611821 */  addu  $v1, $v1, $at
/* 0AE048 800AD448 00031880 */  sll   $v1, $v1, 2
/* 0AE04C 800AD44C 00014080 */  sll   $t0, $at, 2
/* 0AE050 800AD450 00611823 */  subu  $v1, $v1, $at
/* 0AE054 800AD454 01014021 */  addu  $t0, $t0, $at
/* 0AE058 800AD458 00031840 */  sll   $v1, $v1, 1
/* 0AE05C 800AD45C 00084080 */  sll   $t0, $t0, 2
/* 0AE060 800AD460 00037C03 */  sra   $t7, $v1, 0x10
/* 0AE064 800AD464 0008C403 */  sra   $t8, $t0, 0x10
/* 0AE068 800AD468 25E303FA */  addiu $v1, $t7, 0x3fa
/* 0AE06C 800AD46C 270803FF */  addiu $t0, $t8, 0x3ff
/* 0AE070 800AD470 00083400 */  sll   $a2, $t0, 0x10
/* 0AE074 800AD474 00032C00 */  sll   $a1, $v1, 0x10
/* 0AE078 800AD478 0005CC03 */  sra   $t9, $a1, 0x10
/* 0AE07C 800AD47C 00064C03 */  sra   $t1, $a2, 0x10
/* 0AE080 800AD480 240B0024 */  li    $t3, 36
/* 0AE084 800AD484 AFAB0014 */  sw    $t3, 0x14($sp)
/* 0AE088 800AD488 01203025 */  move  $a2, $t1
/* 0AE08C 800AD48C 03202825 */  move  $a1, $t9
/* 0AE090 800AD490 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0AE094 800AD494 0C00C199 */  jal   func_80030664
/* 0AE098 800AD498 2407001C */   li    $a3, 28
.L800AD49C:
/* 0AE09C 800AD49C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0AE0A0 800AD4A0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0AE0A4 800AD4A4 03E00008 */  jr    $ra
/* 0AE0A8 800AD4A8 00000000 */   nop   

/* 0AE0AC 800AD4AC 3C01800E */  lui   $at, 0x800e
/* 0AE0B0 800AD4B0 03E00008 */  jr    $ra
/* 0AE0B4 800AD4B4 AC242C6C */   sw    $a0, 0x2c6c($at)

