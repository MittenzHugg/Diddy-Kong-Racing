glabel D_800D25A0
/* 0D31A0 800D25A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0D31A4 800D25A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0D31A8 800D25A8 AFA40028 */  sw    $a0, 0x28($sp)
/* 0D31AC 800D25AC AFA5002C */  sw    $a1, 0x2c($sp)
/* 0D31B0 800D25B0 AFA60030 */  sw    $a2, 0x30($sp)
/* 0D31B4 800D25B4 AFA70034 */  sw    $a3, 0x34($sp)
/* 0D31B8 800D25B8 AFB10018 */  sw    $s1, 0x18($sp)
/* 0D31BC 800D25BC AFB00014 */  sw    $s0, 0x14($sp)
/* 0D31C0 800D25C0 3C0EA460 */  lui   $t6, %hi(D_A4600010) # $t6, 0xa460
/* 0D31C4 800D25C4 8DD00010 */  lw    $s0, %lo(D_A4600010)($t6)
/* 0D31C8 800D25C8 320F0003 */  andi  $t7, $s0, 3
/* 0D31CC 800D25CC 11E00006 */  beqz  $t7, .L800D25E8
/* 0D31D0 800D25D0 00000000 */   nop   
.L800D25D4:
/* 0D31D4 800D25D4 3C18A460 */  lui   $t8, %hi(D_A4600010) # $t8, 0xa460
/* 0D31D8 800D25D8 8F100010 */  lw    $s0, %lo(D_A4600010)($t8)
/* 0D31DC 800D25DC 32190003 */  andi  $t9, $s0, 3
/* 0D31E0 800D25E0 1720FFFC */  bnez  $t9, .L800D25D4
/* 0D31E4 800D25E4 00000000 */   nop   
.L800D25E8:
/* 0D31E8 800D25E8 0C03233C */  jal   osVirtualToPhysical
/* 0D31EC 800D25EC 8FA40030 */   lw    $a0, 0x30($sp)
/* 0D31F0 800D25F0 3C08A460 */  lui   $t0, 0xa460
/* 0D31F4 800D25F4 AD020000 */  sw    $v0, ($t0)
/* 0D31F8 800D25F8 3C098000 */  lui   $t1, %hi(osRomBase) # $t1, 0x8000
/* 0D31FC 800D25FC 8D290308 */  lw    $t1, %lo(osRomBase)($t1)
/* 0D3200 800D2600 8FAA002C */  lw    $t2, 0x2c($sp)
/* 0D3204 800D2604 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 0D3208 800D2608 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0D320C 800D260C 012A5825 */  or    $t3, $t1, $t2
/* 0D3210 800D2610 01616024 */  and   $t4, $t3, $at
/* 0D3214 800D2614 3C0DA460 */  lui   $t5, %hi(D_A4600004) # $t5, 0xa460
/* 0D3218 800D2618 ADAC0004 */  sw    $t4, %lo(D_A4600004)($t5)
/* 0D321C 800D261C 8FB10028 */  lw    $s1, 0x28($sp)
/* 0D3220 800D2620 12200005 */  beqz  $s1, .L800D2638
/* 0D3224 800D2624 24010001 */   li    $at, 1
/* 0D3228 800D2628 12210008 */  beq   $s1, $at, .L800D264C
/* 0D322C 800D262C 00000000 */   nop   
/* 0D3230 800D2630 1000000B */  b     .L800D2660
/* 0D3234 800D2634 00000000 */   nop   
.L800D2638:
/* 0D3238 800D2638 8FAE0034 */  lw    $t6, 0x34($sp)
/* 0D323C 800D263C 3C18A460 */  lui   $t8, %hi(D_A460000C) # $t8, 0xa460
/* 0D3240 800D2640 25CFFFFF */  addiu $t7, $t6, -1
/* 0D3244 800D2644 10000008 */  b     .L800D2668
/* 0D3248 800D2648 AF0F000C */   sw    $t7, %lo(D_A460000C)($t8)
.L800D264C:
/* 0D324C 800D264C 8FB90034 */  lw    $t9, 0x34($sp)
/* 0D3250 800D2650 3C09A460 */  lui   $t1, %hi(D_A4600008) # $t1, 0xa460
/* 0D3254 800D2654 2728FFFF */  addiu $t0, $t9, -1
/* 0D3258 800D2658 10000003 */  b     .L800D2668
/* 0D325C 800D265C AD280008 */   sw    $t0, %lo(D_A4600008)($t1)
.L800D2660:
/* 0D3260 800D2660 10000002 */  b     .L800D266C
/* 0D3264 800D2664 2402FFFF */   li    $v0, -1
.L800D2668:
/* 0D3268 800D2668 00001025 */  move  $v0, $zero
.L800D266C:
/* 0D326C 800D266C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0D3270 800D2670 8FB00014 */  lw    $s0, 0x14($sp)
/* 0D3274 800D2674 8FB10018 */  lw    $s1, 0x18($sp)
/* 0D3278 800D2678 03E00008 */  jr    $ra
/* 0D327C 800D267C 27BD0028 */   addiu $sp, $sp, 0x28
