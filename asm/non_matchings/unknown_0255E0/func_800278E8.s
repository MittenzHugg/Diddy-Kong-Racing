glabel func_800278E8
/* 0284E8 800278E8 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0284EC 800278EC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0284F0 800278F0 AFA40070 */  sw    $a0, 0x70($sp)
/* 0284F4 800278F4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0284F8 800278F8 AFB00014 */  sw    $s0, 0x14($sp)
/* 0284FC 800278FC 0C006E9D */  jal   func_8001BA74
/* 028500 80027900 27A40038 */   addiu $a0, $sp, 0x38
/* 028504 80027904 8FAE0038 */  lw    $t6, 0x38($sp)
/* 028508 80027908 00001825 */  move  $v1, $zero
/* 02850C 8002790C 19C00031 */  blez  $t6, .L800279D4
/* 028510 80027910 00003025 */   move  $a2, $zero
/* 028514 80027914 00408025 */  move  $s0, $v0
.L80027918:
/* 028518 80027918 8E020000 */  lw    $v0, ($s0)
/* 02851C 8002791C 00000000 */  nop   
/* 028520 80027920 10400028 */  beqz  $v0, .L800279C4
/* 028524 80027924 8FAE0038 */   lw    $t6, 0x38($sp)
/* 028528 80027928 8C510064 */  lw    $s1, 0x64($v0)
/* 02852C 8002792C 27A50030 */  addiu $a1, $sp, 0x30
/* 028530 80027930 822F01FD */  lb    $t7, 0x1fd($s1)
/* 028534 80027934 00000000 */  nop   
/* 028538 80027938 AFAF0030 */  sw    $t7, 0x30($sp)
/* 02853C 8002793C 8E040000 */  lw    $a0, ($s0)
/* 028540 80027940 AFA60034 */  sw    $a2, 0x34($sp)
/* 028544 80027944 0C006F75 */  jal   func_8001BDD4
/* 028548 80027948 AFA30040 */   sw    $v1, 0x40($sp)
/* 02854C 8002794C 8FB80030 */  lw    $t8, 0x30($sp)
/* 028550 80027950 823901D8 */  lb    $t9, 0x1d8($s1)
/* 028554 80027954 8FA30040 */  lw    $v1, 0x40($sp)
/* 028558 80027958 8FA60034 */  lw    $a2, 0x34($sp)
/* 02855C 8002795C 13200009 */  beqz  $t9, .L80027984
/* 028560 80027960 A23801FD */   sb    $t8, 0x1fd($s1)
/* 028564 80027964 862801AC */  lh    $t0, 0x1ac($s1)
/* 028568 80027968 24010001 */  li    $at, 1
/* 02856C 8002796C 15010015 */  bne   $t0, $at, .L800279C4
/* 028570 80027970 8FAE0038 */   lw    $t6, 0x38($sp)
/* 028574 80027974 AFB1003C */  sw    $s1, 0x3c($sp)
/* 028578 80027978 8E090000 */  lw    $t1, ($s0)
/* 02857C 8002797C 10000010 */  b     .L800279C0
/* 028580 80027980 AFA90048 */   sw    $t1, 0x48($sp)
.L80027984:
/* 028584 80027984 14600005 */  bnez  $v1, .L8002799C
/* 028588 80027988 00000000 */   nop   
/* 02858C 8002798C 8E0A0000 */  lw    $t2, ($s0)
/* 028590 80027990 02201825 */  move  $v1, $s1
/* 028594 80027994 1000000A */  b     .L800279C0
/* 028598 80027998 AFAA004C */   sw    $t2, 0x4c($sp)
.L8002799C:
/* 02859C 8002799C 862B01AE */  lh    $t3, 0x1ae($s1)
/* 0285A0 800279A0 846C01AE */  lh    $t4, 0x1ae($v1)
/* 0285A4 800279A4 00000000 */  nop   
/* 0285A8 800279A8 016C082A */  slt   $at, $t3, $t4
/* 0285AC 800279AC 10200005 */  beqz  $at, .L800279C4
/* 0285B0 800279B0 8FAE0038 */   lw    $t6, 0x38($sp)
/* 0285B4 800279B4 8E0D0000 */  lw    $t5, ($s0)
/* 0285B8 800279B8 02201825 */  move  $v1, $s1
/* 0285BC 800279BC AFAD004C */  sw    $t5, 0x4c($sp)
.L800279C0:
/* 0285C0 800279C0 8FAE0038 */  lw    $t6, 0x38($sp)
.L800279C4:
/* 0285C4 800279C4 24C60001 */  addiu $a2, $a2, 1
/* 0285C8 800279C8 00CE082A */  slt   $at, $a2, $t6
/* 0285CC 800279CC 1420FFD2 */  bnez  $at, .L80027918
/* 0285D0 800279D0 26100004 */   addiu $s0, $s0, 4
.L800279D4:
/* 0285D4 800279D4 10600005 */  beqz  $v1, .L800279EC
/* 0285D8 800279D8 8FB1003C */   lw    $s1, 0x3c($sp)
/* 0285DC 800279DC 8FA5004C */  lw    $a1, 0x4c($sp)
/* 0285E0 800279E0 10000004 */  b     .L800279F4
/* 0285E4 800279E4 00608825 */   move  $s1, $v1
/* 0285E8 800279E8 8FB1003C */  lw    $s1, 0x3c($sp)
.L800279EC:
/* 0285EC 800279EC 8FA50048 */  lw    $a1, 0x48($sp)
/* 0285F0 800279F0 00000000 */  nop   
.L800279F4:
/* 0285F4 800279F4 822401FD */  lb    $a0, 0x1fd($s1)
/* 0285F8 800279F8 0C006F65 */  jal   func_8001BD94
/* 0285FC 800279FC AFA50054 */   sw    $a1, 0x54($sp)
/* 028600 80027A00 3C0F8012 */  lui   $t7, %hi(D_8011B104) # $t7, 0x8012
/* 028604 80027A04 8DEFB104 */  lw    $t7, %lo(D_8011B104)($t7)
/* 028608 80027A08 823801FD */  lb    $t8, 0x1fd($s1)
/* 02860C 80027A0C 8FA50054 */  lw    $a1, 0x54($sp)
/* 028610 80027A10 11F80005 */  beq   $t7, $t8, .L80027A28
/* 028614 80027A14 00408025 */   move  $s0, $v0
/* 028618 80027A18 3C078012 */  lui   $a3, %hi(D_8011B108) # $a3, 0x8012
/* 02861C 80027A1C 24E7B108 */  addiu $a3, %lo(D_8011B108) # addiu $a3, $a3, -0x4ef8
/* 028620 80027A20 1000000E */  b     .L80027A5C
/* 028624 80027A24 ACE00000 */   sw    $zero, ($a3)
.L80027A28:
/* 028628 80027A28 3C038012 */  lui   $v1, %hi(D_8011B100) # $v1, 0x8012
/* 02862C 80027A2C 2463B100 */  addiu $v1, %lo(D_8011B100) # addiu $v1, $v1, -0x4f00
/* 028630 80027A30 8C790000 */  lw    $t9, ($v1)
/* 028634 80027A34 86280000 */  lh    $t0, ($s1)
/* 028638 80027A38 00000000 */  nop   
/* 02863C 80027A3C 13280007 */  beq   $t9, $t0, .L80027A5C
/* 028640 80027A40 3C078012 */   lui   $a3, %hi(D_8011B108) # $a3, 0x8012
/* 028644 80027A44 24E7B108 */  addiu $a3, %lo(D_8011B108) # addiu $a3, $a3, -0x4ef8
/* 028648 80027A48 240900B4 */  li    $t1, 180
/* 02864C 80027A4C ACE90000 */  sw    $t1, ($a3)
/* 028650 80027A50 862A0000 */  lh    $t2, ($s1)
/* 028654 80027A54 00000000 */  nop   
/* 028658 80027A58 AC6A0000 */  sw    $t2, ($v1)
.L80027A5C:
/* 02865C 80027A5C 104000ED */  beqz  $v0, .L80027E14
/* 028660 80027A60 8FBF001C */   lw    $ra, 0x1c($sp)
/* 028664 80027A64 0C01A73F */  jal   func_80069CFC
/* 028668 80027A68 AFA50054 */   sw    $a1, 0x54($sp)
/* 02866C 80027A6C C604000C */  lwc1  $f4, 0xc($s0)
/* 028670 80027A70 8FA50054 */  lw    $a1, 0x54($sp)
/* 028674 80027A74 E444000C */  swc1  $f4, 0xc($v0)
/* 028678 80027A78 C6060010 */  lwc1  $f6, 0x10($s0)
/* 02867C 80027A7C C44A000C */  lwc1  $f10, 0xc($v0)
/* 028680 80027A80 E4460010 */  swc1  $f6, 0x10($v0)
/* 028684 80027A84 C6080014 */  lwc1  $f8, 0x14($s0)
/* 028688 80027A88 C4520010 */  lwc1  $f18, 0x10($v0)
/* 02868C 80027A8C E4480014 */  swc1  $f8, 0x14($v0)
/* 028690 80027A90 C4A40010 */  lwc1  $f4, 0x10($a1)
/* 028694 80027A94 C4B0000C */  lwc1  $f16, 0xc($a1)
/* 028698 80027A98 46049181 */  sub.s $f6, $f18, $f4
/* 02869C 80027A9C 46105081 */  sub.s $f2, $f10, $f16
/* 0286A0 80027AA0 E7A60064 */  swc1  $f6, 0x64($sp)
/* 0286A4 80027AA4 C4480014 */  lwc1  $f8, 0x14($v0)
/* 0286A8 80027AA8 C4AA0014 */  lwc1  $f10, 0x14($a1)
/* 0286AC 80027AAC 46021402 */  mul.s $f16, $f2, $f2
/* 0286B0 80027AB0 460A4381 */  sub.s $f14, $f8, $f10
/* 0286B4 80027AB4 E7A20068 */  swc1  $f2, 0x68($sp)
/* 0286B8 80027AB8 E7AE0060 */  swc1  $f14, 0x60($sp)
/* 0286BC 80027ABC 460E7482 */  mul.s $f18, $f14, $f14
/* 0286C0 80027AC0 AFA20058 */  sw    $v0, 0x58($sp)
/* 0286C4 80027AC4 0C0326B4 */  jal   sqrtf
/* 0286C8 80027AC8 46128300 */   add.s $f12, $f16, $f18
/* 0286CC 80027ACC 3C078012 */  lui   $a3, %hi(D_8011B108) # $a3, 0x8012
/* 0286D0 80027AD0 24E7B108 */  addiu $a3, %lo(D_8011B108) # addiu $a3, $a3, -0x4ef8
/* 0286D4 80027AD4 8CEB0000 */  lw    $t3, ($a3)
/* 0286D8 80027AD8 8FA30058 */  lw    $v1, 0x58($sp)
/* 0286DC 80027ADC C7A20068 */  lwc1  $f2, 0x68($sp)
/* 0286E0 80027AE0 C7AE0060 */  lwc1  $f14, 0x60($sp)
/* 0286E4 80027AE4 1160008C */  beqz  $t3, .L80027D18
/* 0286E8 80027AE8 46000306 */   mov.s $f12, $f0
/* 0286EC 80027AEC 444CF800 */  cfc1  $t4, $31
/* 0286F0 80027AF0 AFA30058 */  sw    $v1, 0x58($sp)
/* 0286F4 80027AF4 35810003 */  ori   $at, $t4, 3
/* 0286F8 80027AF8 38210002 */  xori  $at, $at, 2
/* 0286FC 80027AFC 44C1F800 */  ctc1  $at, $31
/* 028700 80027B00 E7AC005C */  swc1  $f12, 0x5c($sp)
/* 028704 80027B04 46001124 */  cvt.w.s $f4, $f2
/* 028708 80027B08 44CCF800 */  ctc1  $t4, $31
/* 02870C 80027B0C 44042000 */  mfc1  $a0, $f4
/* 028710 80027B10 00000000 */  nop   
/* 028714 80027B14 444DF800 */  cfc1  $t5, $31
/* 028718 80027B18 00000000 */  nop   
/* 02871C 80027B1C 35A10003 */  ori   $at, $t5, 3
/* 028720 80027B20 38210002 */  xori  $at, $at, 2
/* 028724 80027B24 44C1F800 */  ctc1  $at, $31
/* 028728 80027B28 00000000 */  nop   
/* 02872C 80027B2C 460071A4 */  cvt.w.s $f6, $f14
/* 028730 80027B30 44053000 */  mfc1  $a1, $f6
/* 028734 80027B34 44CDF800 */  ctc1  $t5, $31
/* 028738 80027B38 0C01C19B */  jal   func_8007066C
/* 02873C 80027B3C 00000000 */   nop   
/* 028740 80027B40 8FA30058 */  lw    $v1, 0x58($sp)
/* 028744 80027B44 00027023 */  negu  $t6, $v0
/* 028748 80027B48 84660000 */  lh    $a2, ($v1)
/* 02874C 80027B4C 34018000 */  li    $at, 32768
/* 028750 80027B50 01C68023 */  subu  $s0, $t6, $a2
/* 028754 80027B54 02018021 */  addu  $s0, $s0, $at
/* 028758 80027B58 00107C00 */  sll   $t7, $s0, 0x10
/* 02875C 80027B5C 000FC403 */  sra   $t8, $t7, 0x10
/* 028760 80027B60 34018001 */  li    $at, 32769
/* 028764 80027B64 3C078012 */  lui   $a3, %hi(D_8011B108) # $a3, 0x8012
/* 028768 80027B68 C7AC005C */  lwc1  $f12, 0x5c($sp)
/* 02876C 80027B6C 0301082A */  slt   $at, $t8, $at
/* 028770 80027B70 24E7B108 */  addiu $a3, %lo(D_8011B108) # addiu $a3, $a3, -0x4ef8
/* 028774 80027B74 14200007 */  bnez  $at, .L80027B94
/* 028778 80027B78 03008025 */   move  $s0, $t8
/* 02877C 80027B7C 3C08FFFF */  lui   $t0, (0xFFFF0001 >> 16) # lui $t0, 0xffff
/* 028780 80027B80 35080001 */  ori   $t0, (0xFFFF0001 & 0xFFFF) # ori $t0, $t0, 1
/* 028784 80027B84 0018C823 */  negu  $t9, $t8
/* 028788 80027B88 01198023 */  subu  $s0, $t0, $t9
/* 02878C 80027B8C 00104C00 */  sll   $t1, $s0, 0x10
/* 028790 80027B90 00098403 */  sra   $s0, $t1, 0x10
.L80027B94:
/* 028794 80027B94 8CEB0000 */  lw    $t3, ($a3)
/* 028798 80027B98 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 02879C 80027B9C 448B4000 */  mtc1  $t3, $f8
/* 0287A0 80027BA0 44818000 */  mtc1  $at, $f16
/* 0287A4 80027BA4 468042A0 */  cvt.s.w $f10, $f8
/* 0287A8 80027BA8 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0287AC 80027BAC 44812000 */  mtc1  $at, $f4
/* 0287B0 80027BB0 46105483 */  div.s $f18, $f10, $f16
/* 0287B4 80027BB4 44904000 */  mtc1  $s0, $f8
/* 0287B8 80027BB8 00000000 */  nop   
/* 0287BC 80027BBC 468042A0 */  cvt.s.w $f10, $f8
/* 0287C0 80027BC0 46122182 */  mul.s $f6, $f4, $f18
/* 0287C4 80027BC4 00000000 */  nop   
/* 0287C8 80027BC8 46065403 */  div.s $f16, $f10, $f6
/* 0287CC 80027BCC 444CF800 */  cfc1  $t4, $31
/* 0287D0 80027BD0 00000000 */  nop   
/* 0287D4 80027BD4 35810003 */  ori   $at, $t4, 3
/* 0287D8 80027BD8 38210002 */  xori  $at, $at, 2
/* 0287DC 80027BDC 44C1F800 */  ctc1  $at, $31
/* 0287E0 80027BE0 00000000 */  nop   
/* 0287E4 80027BE4 46008124 */  cvt.w.s $f4, $f16
/* 0287E8 80027BE8 44CCF800 */  ctc1  $t4, $31
/* 0287EC 80027BEC 440E2000 */  mfc1  $t6, $f4
/* 0287F0 80027BF0 00000000 */  nop   
/* 0287F4 80027BF4 4458F800 */  cfc1  $t8, $31
/* 0287F8 80027BF8 00CE7821 */  addu  $t7, $a2, $t6
/* 0287FC 80027BFC 37010003 */  ori   $at, $t8, 3
/* 028800 80027C00 A46F0000 */  sh    $t7, ($v1)
/* 028804 80027C04 38210002 */  xori  $at, $at, 2
/* 028808 80027C08 44C1F800 */  ctc1  $at, $31
/* 02880C 80027C0C C7B20064 */  lwc1  $f18, 0x64($sp)
/* 028810 80027C10 AFA30058 */  sw    $v1, 0x58($sp)
/* 028814 80027C14 46009224 */  cvt.w.s $f8, $f18
/* 028818 80027C18 44D8F800 */  ctc1  $t8, $31
/* 02881C 80027C1C 44044000 */  mfc1  $a0, $f8
/* 028820 80027C20 00000000 */  nop   
/* 028824 80027C24 4448F800 */  cfc1  $t0, $31
/* 028828 80027C28 00000000 */  nop   
/* 02882C 80027C2C 35010003 */  ori   $at, $t0, 3
/* 028830 80027C30 38210002 */  xori  $at, $at, 2
/* 028834 80027C34 44C1F800 */  ctc1  $at, $31
/* 028838 80027C38 00000000 */  nop   
/* 02883C 80027C3C 460062A4 */  cvt.w.s $f10, $f12
/* 028840 80027C40 44055000 */  mfc1  $a1, $f10
/* 028844 80027C44 44C8F800 */  ctc1  $t0, $31
/* 028848 80027C48 0C01C19B */  jal   func_8007066C
/* 02884C 80027C4C 00000000 */   nop   
/* 028850 80027C50 8FA30058 */  lw    $v1, 0x58($sp)
/* 028854 80027C54 34018001 */  li    $at, 32769
/* 028858 80027C58 84640002 */  lh    $a0, 2($v1)
/* 02885C 80027C5C 3C078012 */  lui   $a3, %hi(D_8011B108) # $a3, 0x8012
/* 028860 80027C60 00448023 */  subu  $s0, $v0, $a0
/* 028864 80027C64 0010CC00 */  sll   $t9, $s0, 0x10
/* 028868 80027C68 00194C03 */  sra   $t1, $t9, 0x10
/* 02886C 80027C6C 0121082A */  slt   $at, $t1, $at
/* 028870 80027C70 01208025 */  move  $s0, $t1
/* 028874 80027C74 14200007 */  bnez  $at, .L80027C94
/* 028878 80027C78 24E7B108 */   addiu $a3, %lo(D_8011B108) # addiu $a3, $a3, -0x4ef8
/* 02887C 80027C7C 3C0BFFFF */  lui   $t3, (0xFFFF0001 >> 16) # lui $t3, 0xffff
/* 028880 80027C80 356B0001 */  ori   $t3, (0xFFFF0001 & 0xFFFF) # ori $t3, $t3, 1
/* 028884 80027C84 00095023 */  negu  $t2, $t1
/* 028888 80027C88 016A8023 */  subu  $s0, $t3, $t2
/* 02888C 80027C8C 00106400 */  sll   $t4, $s0, 0x10
/* 028890 80027C90 000C8403 */  sra   $s0, $t4, 0x10
.L80027C94:
/* 028894 80027C94 8CEE0000 */  lw    $t6, ($a3)
/* 028898 80027C98 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 02889C 80027C9C 448E3000 */  mtc1  $t6, $f6
/* 0288A0 80027CA0 44812000 */  mtc1  $at, $f4
/* 0288A4 80027CA4 46803420 */  cvt.s.w $f16, $f6
/* 0288A8 80027CA8 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0288AC 80027CAC 44814000 */  mtc1  $at, $f8
/* 0288B0 80027CB0 46048483 */  div.s $f18, $f16, $f4
/* 0288B4 80027CB4 44903000 */  mtc1  $s0, $f6
/* 0288B8 80027CB8 00000000 */  nop   
/* 0288BC 80027CBC 46803420 */  cvt.s.w $f16, $f6
/* 0288C0 80027CC0 46124282 */  mul.s $f10, $f8, $f18
/* 0288C4 80027CC4 00000000 */  nop   
/* 0288C8 80027CC8 460A8103 */  div.s $f4, $f16, $f10
/* 0288CC 80027CCC 444FF800 */  cfc1  $t7, $31
/* 0288D0 80027CD0 00000000 */  nop   
/* 0288D4 80027CD4 35E10003 */  ori   $at, $t7, 3
/* 0288D8 80027CD8 38210002 */  xori  $at, $at, 2
/* 0288DC 80027CDC 44C1F800 */  ctc1  $at, $31
/* 0288E0 80027CE0 00000000 */  nop   
/* 0288E4 80027CE4 46002224 */  cvt.w.s $f8, $f4
/* 0288E8 80027CE8 44084000 */  mfc1  $t0, $f8
/* 0288EC 80027CEC 44CFF800 */  ctc1  $t7, $31
/* 0288F0 80027CF0 0088C821 */  addu  $t9, $a0, $t0
/* 0288F4 80027CF4 A4790002 */  sh    $t9, 2($v1)
/* 0288F8 80027CF8 8CE90000 */  lw    $t1, ($a3)
/* 0288FC 80027CFC 8FAB0070 */  lw    $t3, 0x70($sp)
/* 028900 80027D00 00000000 */  nop   
/* 028904 80027D04 012B5023 */  subu  $t2, $t1, $t3
/* 028908 80027D08 05410035 */  bgez  $t2, .L80027DE0
/* 02890C 80027D0C ACEA0000 */   sw    $t2, ($a3)
/* 028910 80027D10 10000033 */  b     .L80027DE0
/* 028914 80027D14 ACE00000 */   sw    $zero, ($a3)
.L80027D18:
/* 028918 80027D18 444DF800 */  cfc1  $t5, $31
/* 02891C 80027D1C AFA30058 */  sw    $v1, 0x58($sp)
/* 028920 80027D20 35A10003 */  ori   $at, $t5, 3
/* 028924 80027D24 38210002 */  xori  $at, $at, 2
/* 028928 80027D28 44C1F800 */  ctc1  $at, $31
/* 02892C 80027D2C E7AC005C */  swc1  $f12, 0x5c($sp)
/* 028930 80027D30 460014A4 */  cvt.w.s $f18, $f2
/* 028934 80027D34 44CDF800 */  ctc1  $t5, $31
/* 028938 80027D38 44049000 */  mfc1  $a0, $f18
/* 02893C 80027D3C 00000000 */  nop   
/* 028940 80027D40 444EF800 */  cfc1  $t6, $31
/* 028944 80027D44 00000000 */  nop   
/* 028948 80027D48 35C10003 */  ori   $at, $t6, 3
/* 02894C 80027D4C 38210002 */  xori  $at, $at, 2
/* 028950 80027D50 44C1F800 */  ctc1  $at, $31
/* 028954 80027D54 00000000 */  nop   
/* 028958 80027D58 460071A4 */  cvt.w.s $f6, $f14
/* 02895C 80027D5C 44053000 */  mfc1  $a1, $f6
/* 028960 80027D60 44CEF800 */  ctc1  $t6, $31
/* 028964 80027D64 0C01C19B */  jal   func_8007066C
/* 028968 80027D68 00000000 */   nop   
/* 02896C 80027D6C 4448F800 */  cfc1  $t0, $31
/* 028970 80027D70 8FA30058 */  lw    $v1, 0x58($sp)
/* 028974 80027D74 340F8000 */  li    $t7, 32768
/* 028978 80027D78 C7AC005C */  lwc1  $f12, 0x5c($sp)
/* 02897C 80027D7C 01E2C023 */  subu  $t8, $t7, $v0
/* 028980 80027D80 35010003 */  ori   $at, $t0, 3
/* 028984 80027D84 38210002 */  xori  $at, $at, 2
/* 028988 80027D88 A4780000 */  sh    $t8, ($v1)
/* 02898C 80027D8C C7B00064 */  lwc1  $f16, 0x64($sp)
/* 028990 80027D90 44C1F800 */  ctc1  $at, $31
/* 028994 80027D94 00000000 */  nop   
/* 028998 80027D98 460082A4 */  cvt.w.s $f10, $f16
/* 02899C 80027D9C 44C8F800 */  ctc1  $t0, $31
/* 0289A0 80027DA0 44045000 */  mfc1  $a0, $f10
/* 0289A4 80027DA4 00000000 */  nop   
/* 0289A8 80027DA8 4459F800 */  cfc1  $t9, $31
/* 0289AC 80027DAC 00000000 */  nop   
/* 0289B0 80027DB0 37210003 */  ori   $at, $t9, 3
/* 0289B4 80027DB4 38210002 */  xori  $at, $at, 2
/* 0289B8 80027DB8 44C1F800 */  ctc1  $at, $31
/* 0289BC 80027DBC 00000000 */  nop   
/* 0289C0 80027DC0 46006124 */  cvt.w.s $f4, $f12
/* 0289C4 80027DC4 44052000 */  mfc1  $a1, $f4
/* 0289C8 80027DC8 44D9F800 */  ctc1  $t9, $31
/* 0289CC 80027DCC 0C01C19B */  jal   func_8007066C
/* 0289D0 80027DD0 00000000 */   nop   
/* 0289D4 80027DD4 8FA30058 */  lw    $v1, 0x58($sp)
/* 0289D8 80027DD8 00000000 */  nop   
/* 0289DC 80027DDC A4620002 */  sh    $v0, 2($v1)
.L80027DE0:
/* 0289E0 80027DE0 A4600004 */  sh    $zero, 4($v1)
/* 0289E4 80027DE4 C62E003C */  lwc1  $f14, 0x3c($s1)
/* 0289E8 80027DE8 C46C000C */  lwc1  $f12, 0xc($v1)
/* 0289EC 80027DEC 8C660014 */  lw    $a2, 0x14($v1)
/* 0289F0 80027DF0 0C00A7C6 */  jal   func_80029F18
/* 0289F4 80027DF4 AFA30058 */   sw    $v1, 0x58($sp)
/* 0289F8 80027DF8 8FA30058 */  lw    $v1, 0x58($sp)
/* 0289FC 80027DFC 3C018012 */  lui   $at, %hi(D_8011B104) # $at, 0x8012
/* 028A00 80027E00 A4620034 */  sh    $v0, 0x34($v1)
/* 028A04 80027E04 822901FD */  lb    $t1, 0x1fd($s1)
/* 028A08 80027E08 00000000 */  nop   
/* 028A0C 80027E0C AC29B104 */  sw    $t1, %lo(D_8011B104)($at)
/* 028A10 80027E10 8FBF001C */  lw    $ra, 0x1c($sp)
.L80027E14:
/* 028A14 80027E14 8FB00014 */  lw    $s0, 0x14($sp)
/* 028A18 80027E18 8FB10018 */  lw    $s1, 0x18($sp)
/* 028A1C 80027E1C 03E00008 */  jr    $ra
/* 028A20 80027E20 27BD0070 */   addiu $sp, $sp, 0x70

