glabel func_80052B64
/* 053764 80052B64 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 053768 80052B68 AFBF001C */  sw    $ra, 0x1c($sp)
/* 05376C 80052B6C AFB00018 */  sw    $s0, 0x18($sp)
/* 053770 80052B70 AFA50024 */  sw    $a1, 0x24($sp)
/* 053774 80052B74 AFA7002C */  sw    $a3, 0x2c($sp)
/* 053778 80052B78 3C01800E */  lui   $at, %hi(D_800E66F4) # $at, 0x800e
/* 05377C 80052B7C C4A4002C */  lwc1  $f4, 0x2c($a1)
/* 053780 80052B80 C42966F0 */  lwc1  $f9, %lo(D_800E66F0)($at)
/* 053784 80052B84 C42866F4 */  lwc1  $f8, %lo(D_800E66F4)($at)
/* 053788 80052B88 460021A1 */  cvt.d.s $f6, $f4
/* 05378C 80052B8C 46283282 */  mul.d $f10, $f6, $f8
/* 053790 80052B90 44809000 */  mtc1  $zero, $f18
/* 053794 80052B94 80AE01D8 */  lb    $t6, 0x1d8($a1)
/* 053798 80052B98 00A03825 */  move  $a3, $a1
/* 05379C 80052B9C 00808025 */  move  $s0, $a0
/* 0537A0 80052BA0 46205420 */  cvt.s.d $f16, $f10
/* 0537A4 80052BA4 E4B20030 */  swc1  $f18, 0x30($a1)
/* 0537A8 80052BA8 15C00009 */  bnez  $t6, .L80052BD0
/* 0537AC 80052BAC E4B0002C */   swc1  $f16, 0x2c($a1)
/* 0537B0 80052BB0 84A40000 */  lh    $a0, ($a1)
/* 0537B4 80052BB4 AFA70024 */  sw    $a3, 0x24($sp)
/* 0537B8 80052BB8 AFA60028 */  sw    $a2, 0x28($sp)
/* 0537BC 80052BBC 0C01C8D2 */  jal   func_80072348
/* 0537C0 80052BC0 00002825 */   move  $a1, $zero
/* 0537C4 80052BC4 8FA60028 */  lw    $a2, 0x28($sp)
/* 0537C8 80052BC8 8FA70024 */  lw    $a3, 0x24($sp)
/* 0537CC 80052BCC 00000000 */  nop   
.L80052BD0:
/* 0537D0 80052BD0 3C0F8012 */  lui   $t7, %hi(D_8011D55C) # $t7, 0x8012
/* 0537D4 80052BD4 8DEFD55C */  lw    $t7, %lo(D_8011D55C)($t7)
/* 0537D8 80052BD8 84E301A2 */  lh    $v1, 0x1a2($a3)
/* 0537DC 80052BDC 05E0001E */  bltz  $t7, .L80052C58
/* 0537E0 80052BE0 3C18800E */   lui   $t8, %hi(D_800DCB98) # $t8, 0x800e
/* 0537E4 80052BE4 8F18CB98 */  lw    $t8, %lo(D_800DCB98)($t8)
/* 0537E8 80052BE8 00000000 */  nop   
/* 0537EC 80052BEC 2B010003 */  slti  $at, $t8, 3
/* 0537F0 80052BF0 10200007 */  beqz  $at, .L80052C10
/* 0537F4 80052BF4 00000000 */   nop   
/* 0537F8 80052BF8 8E190074 */  lw    $t9, 0x74($s0)
/* 0537FC 80052BFC 3C010004 */  lui   $at, (0x0004FC00 >> 16) # lui $at, 4
/* 053800 80052C00 3421FC00 */  ori   $at, (0x0004FC00 & 0xFFFF) # ori $at, $at, 0xfc00
/* 053804 80052C04 03214025 */  or    $t0, $t9, $at
/* 053808 80052C08 10000013 */  b     .L80052C58
/* 05380C 80052C0C AE080074 */   sw    $t0, 0x74($s0)
.L80052C10:
/* 053810 80052C10 90E201DE */  lbu   $v0, 0x1de($a3)
/* 053814 80052C14 240B0001 */  li    $t3, 1
/* 053818 80052C18 284100FF */  slti  $at, $v0, 0xff
/* 05381C 80052C1C 10200005 */  beqz  $at, .L80052C34
/* 053820 80052C20 00025040 */   sll   $t2, $v0, 1
/* 053824 80052C24 8E090074 */  lw    $t1, 0x74($s0)
/* 053828 80052C28 014B6004 */  sllv  $t4, $t3, $t2
/* 05382C 80052C2C 012C6825 */  or    $t5, $t1, $t4
/* 053830 80052C30 AE0D0074 */  sw    $t5, 0x74($s0)
.L80052C34:
/* 053834 80052C34 90E201DF */  lbu   $v0, 0x1df($a3)
/* 053838 80052C38 24180002 */  li    $t8, 2
/* 05383C 80052C3C 284100FF */  slti  $at, $v0, 0xff
/* 053840 80052C40 10200005 */  beqz  $at, .L80052C58
/* 053844 80052C44 00027840 */   sll   $t7, $v0, 1
/* 053848 80052C48 8E0E0074 */  lw    $t6, 0x74($s0)
/* 05384C 80052C4C 01F8C804 */  sllv  $t9, $t8, $t7
/* 053850 80052C50 01D94025 */  or    $t0, $t6, $t9
/* 053854 80052C54 AE080074 */  sw    $t0, 0x74($s0)
.L80052C58:
/* 053858 80052C58 80E201DB */  lb    $v0, 0x1db($a3)
/* 05385C 80052C5C 00065080 */  sll   $t2, $a2, 2
/* 053860 80052C60 1840001A */  blez  $v0, .L80052CCC
/* 053864 80052C64 01465021 */   addu  $t2, $t2, $a2
/* 053868 80052C68 84EB01A2 */  lh    $t3, 0x1a2($a3)
/* 05386C 80052C6C 000A5200 */  sll   $t2, $t2, 8
/* 053870 80052C70 016A4821 */  addu  $t1, $t3, $t2
/* 053874 80052C74 A4E901A2 */  sh    $t1, 0x1a2($a3)
/* 053878 80052C78 84EC01A2 */  lh    $t4, 0x1a2($a3)
/* 05387C 80052C7C 00000000 */  nop   
/* 053880 80052C80 1980002D */  blez  $t4, .L80052D38
/* 053884 80052C84 00000000 */   nop   
/* 053888 80052C88 0461002B */  bgez  $v1, .L80052D38
/* 05388C 80052C8C 00000000 */   nop   
/* 053890 80052C90 80ED01DB */  lb    $t5, 0x1db($a3)
/* 053894 80052C94 3C0F8012 */  lui   $t7, %hi(D_8011D534) # $t7, 0x8012
/* 053898 80052C98 25B8FFFF */  addiu $t8, $t5, -1
/* 05389C 80052C9C A0F801DB */  sb    $t8, 0x1db($a3)
/* 0538A0 80052CA0 8DEFD534 */  lw    $t7, %lo(D_8011D534)($t7)
/* 0538A4 80052CA4 00000000 */  nop   
/* 0538A8 80052CA8 29E10033 */  slti  $at, $t7, 0x33
/* 0538AC 80052CAC 14200022 */  bnez  $at, .L80052D38
/* 0538B0 80052CB0 00000000 */   nop   
/* 0538B4 80052CB4 80EE01DB */  lb    $t6, 0x1db($a3)
/* 0538B8 80052CB8 24010001 */  li    $at, 1
/* 0538BC 80052CBC 15C1001E */  bne   $t6, $at, .L80052D38
/* 0538C0 80052CC0 00000000 */   nop   
/* 0538C4 80052CC4 1000001C */  b     .L80052D38
/* 0538C8 80052CC8 A0E001DB */   sb    $zero, 0x1db($a3)
.L80052CCC:
/* 0538CC 80052CCC 0441001A */  bgez  $v0, .L80052D38
/* 0538D0 80052CD0 00064080 */   sll   $t0, $a2, 2
/* 0538D4 80052CD4 84F901A2 */  lh    $t9, 0x1a2($a3)
/* 0538D8 80052CD8 01064021 */  addu  $t0, $t0, $a2
/* 0538DC 80052CDC 00084200 */  sll   $t0, $t0, 8
/* 0538E0 80052CE0 03285823 */  subu  $t3, $t9, $t0
/* 0538E4 80052CE4 A4EB01A2 */  sh    $t3, 0x1a2($a3)
/* 0538E8 80052CE8 84EA01A2 */  lh    $t2, 0x1a2($a3)
/* 0538EC 80052CEC 00000000 */  nop   
/* 0538F0 80052CF0 05410011 */  bgez  $t2, .L80052D38
/* 0538F4 80052CF4 00000000 */   nop   
/* 0538F8 80052CF8 1860000F */  blez  $v1, .L80052D38
/* 0538FC 80052CFC 00000000 */   nop   
/* 053900 80052D00 80E901DB */  lb    $t1, 0x1db($a3)
/* 053904 80052D04 3C0D8012 */  lui   $t5, %hi(D_8011D534) # $t5, 0x8012
/* 053908 80052D08 252C0001 */  addiu $t4, $t1, 1
/* 05390C 80052D0C A0EC01DB */  sb    $t4, 0x1db($a3)
/* 053910 80052D10 8DADD534 */  lw    $t5, %lo(D_8011D534)($t5)
/* 053914 80052D14 00000000 */  nop   
/* 053918 80052D18 29A1FFCE */  slti  $at, $t5, -0x32
/* 05391C 80052D1C 10200006 */  beqz  $at, .L80052D38
/* 053920 80052D20 00000000 */   nop   
/* 053924 80052D24 80F801DB */  lb    $t8, 0x1db($a3)
/* 053928 80052D28 2401FFFF */  li    $at, -1
/* 05392C 80052D2C 17010002 */  bne   $t8, $at, .L80052D38
/* 053930 80052D30 00000000 */   nop   
/* 053934 80052D34 A0E001DB */  sb    $zero, 0x1db($a3)
.L80052D38:
/* 053938 80052D38 84EF01A2 */  lh    $t7, 0x1a2($a3)
/* 05393C 80052D3C 3C018012 */  lui   $at, %hi(D_8011D554) # $at, 0x8012
/* 053940 80052D40 AC2FD554 */  sw    $t7, %lo(D_8011D554)($at)
/* 053944 80052D44 3C018012 */  lui   $at, %hi(D_8011D56C) # $at, 0x8012
/* 053948 80052D48 C424D56C */  lwc1  $f4, %lo(D_8011D56C)($at)
/* 05394C 80052D4C C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 053950 80052D50 C60A0020 */  lwc1  $f10, 0x20($s0)
/* 053954 80052D54 46062202 */  mul.s $f8, $f4, $f6
/* 053958 80052D58 3C018012 */  lui   $at, %hi(D_8011D534) # $at, 0x8012
/* 05395C 80052D5C 46085401 */  sub.s $f16, $f10, $f8
/* 053960 80052D60 E6100020 */  swc1  $f16, 0x20($s0)
/* 053964 80052D64 AC20D534 */  sw    $zero, %lo(D_8011D534)($at)
/* 053968 80052D68 A0E001E1 */  sb    $zero, 0x1e1($a3)
/* 05396C 80052D6C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 053970 80052D70 8FB00018 */  lw    $s0, 0x18($sp)
/* 053974 80052D74 03E00008 */  jr    $ra
/* 053978 80052D78 27BD0020 */   addiu $sp, $sp, 0x20

