glabel func_8007EF80
/* 07FB80 8007EF80 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 07FB84 8007EF84 AFBF001C */  sw    $ra, 0x1c($sp)
/* 07FB88 8007EF88 AFB10018 */  sw    $s1, 0x18($sp)
/* 07FB8C 8007EF8C AFB00014 */  sw    $s0, 0x14($sp)
/* 07FB90 8007EF90 8CA20000 */  lw    $v0, ($a1)
/* 07FB94 8007EF94 3C080400 */  lui   $t0, 0x400
/* 07FB98 8007EF98 3C010200 */  lui   $at, 0x200
/* 07FB9C 8007EF9C 00021A00 */  sll   $v1, $v0, 8
/* 07FBA0 8007EFA0 00A08025 */  move  $s0, $a1
/* 07FBA4 8007EFA4 00808825 */  move  $s1, $a0
/* 07FBA8 8007EFA8 00485024 */  and   $t2, $v0, $t0
/* 07FBAC 8007EFAC 0461003B */  bgez  $v1, .L8007F09C
/* 07FBB0 8007EFB0 00414824 */   and   $t1, $v0, $at
/* 07FBB4 8007EFB4 1520000E */  bnez  $t1, .L8007EFF0
/* 07FBB8 8007EFB8 00002025 */   move  $a0, $zero
/* 07FBBC 8007EFBC 0C01BE53 */  jal   func_8006F94C
/* 07FBC0 8007EFC0 240503E8 */   li    $a1, 1000
/* 07FBC4 8007EFC4 284103DA */  slti  $at, $v0, 0x3da
/* 07FBC8 8007EFC8 14200082 */  bnez  $at, .L8007F1D4
/* 07FBCC 8007EFCC 3C05FBFF */   lui   $a1, (0xFBFFFFFF >> 16) # lui $a1, 0xfbff
/* 07FBD0 8007EFD0 8E0E0000 */  lw    $t6, ($s0)
/* 07FBD4 8007EFD4 34A5FFFF */  ori   $a1, (0xFBFFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* 07FBD8 8007EFD8 01C57824 */  and   $t7, $t6, $a1
/* 07FBDC 8007EFDC 3C010200 */  lui   $at, 0x200
/* 07FBE0 8007EFE0 AE0F0000 */  sw    $t7, ($s0)
/* 07FBE4 8007EFE4 01E1C825 */  or    $t9, $t7, $at
/* 07FBE8 8007EFE8 1000007A */  b     .L8007F1D4
/* 07FBEC 8007EFEC AE190000 */   sw    $t9, ($s0)
.L8007EFF0:
/* 07FBF0 8007EFF0 1540001C */  bnez  $t2, .L8007F064
/* 07FBF4 8007EFF4 00000000 */   nop   
/* 07FBF8 8007EFF8 962C0014 */  lhu   $t4, 0x14($s1)
/* 07FBFC 8007EFFC 8CCB0000 */  lw    $t3, ($a2)
/* 07FC00 8007F000 01870019 */  multu $t4, $a3
/* 07FC04 8007F004 00006812 */  mflo  $t5
/* 07FC08 8007F008 016D7021 */  addu  $t6, $t3, $t5
/* 07FC0C 8007F00C ACCE0000 */  sw    $t6, ($a2)
/* 07FC10 8007F010 96230012 */  lhu   $v1, 0x12($s1)
/* 07FC14 8007F014 00000000 */  nop   
/* 07FC18 8007F018 01C3082A */  slt   $at, $t6, $v1
/* 07FC1C 8007F01C 1420006D */  bnez  $at, .L8007F1D4
/* 07FC20 8007F020 00037840 */   sll   $t7, $v1, 1
/* 07FC24 8007F024 01EEC023 */  subu  $t8, $t7, $t6
/* 07FC28 8007F028 2719FFFF */  addiu $t9, $t8, -1
/* 07FC2C 8007F02C 07210008 */  bgez  $t9, .L8007F050
/* 07FC30 8007F030 ACD90000 */   sw    $t9, ($a2)
/* 07FC34 8007F034 ACC00000 */  sw    $zero, ($a2)
/* 07FC38 8007F038 8E0B0000 */  lw    $t3, ($s0)
/* 07FC3C 8007F03C 3C01F9FF */  lui   $at, (0xF9FFFFFF >> 16) # lui $at, 0xf9ff
/* 07FC40 8007F040 3421FFFF */  ori   $at, (0xF9FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 07FC44 8007F044 01616824 */  and   $t5, $t3, $at
/* 07FC48 8007F048 10000062 */  b     .L8007F1D4
/* 07FC4C 8007F04C AE0D0000 */   sw    $t5, ($s0)
.L8007F050:
/* 07FC50 8007F050 8E0E0000 */  lw    $t6, ($s0)
/* 07FC54 8007F054 00000000 */  nop   
/* 07FC58 8007F058 01C87825 */  or    $t7, $t6, $t0
/* 07FC5C 8007F05C 1000005D */  b     .L8007F1D4
/* 07FC60 8007F060 AE0F0000 */   sw    $t7, ($s0)
.L8007F064:
/* 07FC64 8007F064 96390014 */  lhu   $t9, 0x14($s1)
/* 07FC68 8007F068 8CD80000 */  lw    $t8, ($a2)
/* 07FC6C 8007F06C 03270019 */  multu $t9, $a3
/* 07FC70 8007F070 3C01F9FF */  lui   $at, (0xF9FFFFFF >> 16) # lui $at, 0xf9ff
/* 07FC74 8007F074 00006012 */  mflo  $t4
/* 07FC78 8007F078 030C5823 */  subu  $t3, $t8, $t4
/* 07FC7C 8007F07C 05610055 */  bgez  $t3, .L8007F1D4
/* 07FC80 8007F080 ACCB0000 */   sw    $t3, ($a2)
/* 07FC84 8007F084 ACC00000 */  sw    $zero, ($a2)
/* 07FC88 8007F088 8E0E0000 */  lw    $t6, ($s0)
/* 07FC8C 8007F08C 3421FFFF */  ori   $at, (0xF9FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 07FC90 8007F090 01C17824 */  and   $t7, $t6, $at
/* 07FC94 8007F094 1000004F */  b     .L8007F1D4
/* 07FC98 8007F098 AE0F0000 */   sw    $t7, ($s0)
.L8007F09C:
/* 07FC9C 8007F09C 1120002B */  beqz  $t1, .L8007F14C
/* 07FCA0 8007F0A0 3C05FBFF */   lui   $a1, (0xFBFFFFFF >> 16) # lui $a1, 0xfbff
/* 07FCA4 8007F0A4 15400008 */  bnez  $t2, .L8007F0C8
/* 07FCA8 8007F0A8 34A5FFFF */   ori   $a1, (0xFBFFFFFF & 0xFFFF) # ori $a1, $a1, 0xffff
/* 07FCAC 8007F0AC 96380014 */  lhu   $t8, 0x14($s1)
/* 07FCB0 8007F0B0 8CD90000 */  lw    $t9, ($a2)
/* 07FCB4 8007F0B4 03070019 */  multu $t8, $a3
/* 07FCB8 8007F0B8 00006012 */  mflo  $t4
/* 07FCBC 8007F0BC 032C5821 */  addu  $t3, $t9, $t4
/* 07FCC0 8007F0C0 10000007 */  b     .L8007F0E0
/* 07FCC4 8007F0C4 ACCB0000 */   sw    $t3, ($a2)
.L8007F0C8:
/* 07FCC8 8007F0C8 962E0014 */  lhu   $t6, 0x14($s1)
/* 07FCCC 8007F0CC 8CCD0000 */  lw    $t5, ($a2)
/* 07FCD0 8007F0D0 01C70019 */  multu $t6, $a3
/* 07FCD4 8007F0D4 00007812 */  mflo  $t7
/* 07FCD8 8007F0D8 01AFC023 */  subu  $t8, $t5, $t7
/* 07FCDC 8007F0DC ACD80000 */  sw    $t8, ($a2)
.L8007F0E0:
/* 07FCE0 8007F0E0 8CC20000 */  lw    $v0, ($a2)
/* 07FCE4 8007F0E4 00002025 */  move  $a0, $zero
/* 07FCE8 8007F0E8 04410008 */  bgez  $v0, .L8007F10C
/* 07FCEC 8007F0EC 0002C823 */   negu  $t9, $v0
/* 07FCF0 8007F0F0 ACD90000 */  sw    $t9, ($a2)
/* 07FCF4 8007F0F4 8E0C0000 */  lw    $t4, ($s0)
/* 07FCF8 8007F0F8 24040001 */  li    $a0, 1
/* 07FCFC 8007F0FC 01855824 */  and   $t3, $t4, $a1
/* 07FD00 8007F100 AE0B0000 */  sw    $t3, ($s0)
/* 07FD04 8007F104 8CC20000 */  lw    $v0, ($a2)
/* 07FD08 8007F108 00000000 */  nop   
.L8007F10C:
/* 07FD0C 8007F10C 96230012 */  lhu   $v1, 0x12($s1)
/* 07FD10 8007F110 00000000 */  nop   
/* 07FD14 8007F114 0043082A */  slt   $at, $v0, $v1
/* 07FD18 8007F118 14200008 */  bnez  $at, .L8007F13C
/* 07FD1C 8007F11C 00037040 */   sll   $t6, $v1, 1
/* 07FD20 8007F120 01C26823 */  subu  $t5, $t6, $v0
/* 07FD24 8007F124 25AFFFFF */  addiu $t7, $t5, -1
/* 07FD28 8007F128 ACCF0000 */  sw    $t7, ($a2)
/* 07FD2C 8007F12C 8E180000 */  lw    $t8, ($s0)
/* 07FD30 8007F130 24040001 */  li    $a0, 1
/* 07FD34 8007F134 0308C825 */  or    $t9, $t8, $t0
/* 07FD38 8007F138 AE190000 */  sw    $t9, ($s0)
.L8007F13C:
/* 07FD3C 8007F13C 1480FFE8 */  bnez  $a0, .L8007F0E0
/* 07FD40 8007F140 00000000 */   nop   
/* 07FD44 8007F144 10000024 */  b     .L8007F1D8
/* 07FD48 8007F148 8FBF001C */   lw    $ra, 0x1c($sp)
.L8007F14C:
/* 07FD4C 8007F14C 15400014 */  bnez  $t2, .L8007F1A0
/* 07FD50 8007F150 00000000 */   nop   
/* 07FD54 8007F154 962B0014 */  lhu   $t3, 0x14($s1)
/* 07FD58 8007F158 8CCC0000 */  lw    $t4, ($a2)
/* 07FD5C 8007F15C 01670019 */  multu $t3, $a3
/* 07FD60 8007F160 00007012 */  mflo  $t6
/* 07FD64 8007F164 018E1021 */  addu  $v0, $t4, $t6
/* 07FD68 8007F168 ACC20000 */  sw    $v0, ($a2)
/* 07FD6C 8007F16C 96230012 */  lhu   $v1, 0x12($s1)
/* 07FD70 8007F170 00000000 */  nop   
/* 07FD74 8007F174 0043082A */  slt   $at, $v0, $v1
/* 07FD78 8007F178 14200016 */  bnez  $at, .L8007F1D4
/* 07FD7C 8007F17C 00437823 */   subu  $t7, $v0, $v1
.L8007F180:
/* 07FD80 8007F180 ACCF0000 */  sw    $t7, ($a2)
/* 07FD84 8007F184 96230012 */  lhu   $v1, 0x12($s1)
/* 07FD88 8007F188 01E01025 */  move  $v0, $t7
/* 07FD8C 8007F18C 01E3082A */  slt   $at, $t7, $v1
/* 07FD90 8007F190 1020FFFB */  beqz  $at, .L8007F180
/* 07FD94 8007F194 00437823 */   subu  $t7, $v0, $v1
/* 07FD98 8007F198 1000000F */  b     .L8007F1D8
/* 07FD9C 8007F19C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8007F1A0:
/* 07FDA0 8007F1A0 96390014 */  lhu   $t9, 0x14($s1)
/* 07FDA4 8007F1A4 8CD80000 */  lw    $t8, ($a2)
/* 07FDA8 8007F1A8 03270019 */  multu $t9, $a3
/* 07FDAC 8007F1AC 00005812 */  mflo  $t3
/* 07FDB0 8007F1B0 030B1023 */  subu  $v0, $t8, $t3
/* 07FDB4 8007F1B4 04410007 */  bgez  $v0, .L8007F1D4
/* 07FDB8 8007F1B8 ACC20000 */   sw    $v0, ($a2)
.L8007F1BC:
/* 07FDBC 8007F1BC 962E0012 */  lhu   $t6, 0x12($s1)
/* 07FDC0 8007F1C0 00000000 */  nop   
/* 07FDC4 8007F1C4 004E6821 */  addu  $t5, $v0, $t6
/* 07FDC8 8007F1C8 ACCD0000 */  sw    $t5, ($a2)
/* 07FDCC 8007F1CC 05A0FFFB */  bltz  $t5, .L8007F1BC
/* 07FDD0 8007F1D0 01A01025 */   move  $v0, $t5
.L8007F1D4:
/* 07FDD4 8007F1D4 8FBF001C */  lw    $ra, 0x1c($sp)
.L8007F1D8:
/* 07FDD8 8007F1D8 8FB00014 */  lw    $s0, 0x14($sp)
/* 07FDDC 8007F1DC 8FB10018 */  lw    $s1, 0x18($sp)
/* 07FDE0 8007F1E0 03E00008 */  jr    $ra
/* 07FDE4 8007F1E4 27BD0020 */   addiu $sp, $sp, 0x20

