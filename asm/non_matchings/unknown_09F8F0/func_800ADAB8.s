glabel func_800ADAB8
/* 0AE6B8 800ADAB8 3C06800E */  lui   $a2, %hi(D_800E2C80) # $a2, 0x800e
/* 0AE6BC 800ADABC 24C62C80 */  addiu $a2, %lo(D_800E2C80) # addiu $a2, $a2, 0x2c80
/* 0AE6C0 800ADAC0 8CC20000 */  lw    $v0, ($a2)
/* 0AE6C4 800ADAC4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AE6C8 800ADAC8 18400016 */  blez  $v0, .L800ADB24
/* 0AE6CC 800ADACC AFBF0014 */   sw    $ra, 0x14($sp)
/* 0AE6D0 800ADAD0 00447023 */  subu  $t6, $v0, $a0
/* 0AE6D4 800ADAD4 1DC00038 */  bgtz  $t6, .L800ADBB8
/* 0AE6D8 800ADAD8 ACCE0000 */   sw    $t6, ($a2)
/* 0AE6DC 800ADADC 3C18800E */  lui   $t8, %hi(D_800E2C6C) # $t8, 0x800e
/* 0AE6E0 800ADAE0 8F182C6C */  lw    $t8, %lo(D_800E2C6C)($t8)
/* 0AE6E4 800ADAE4 34018001 */  li    $at, 32769
/* 0AE6E8 800ADAE8 0301082A */  slt   $at, $t8, $at
/* 0AE6EC 800ADAEC 14200008 */  bnez  $at, .L800ADB10
/* 0AE6F0 800ADAF0 24040027 */   li    $a0, 39
/* 0AE6F4 800ADAF4 0C030063 */  jal   func_800C018C
/* 0AE6F8 800ADAF8 00000000 */   nop   
/* 0AE6FC 800ADAFC 14400003 */  bnez  $v0, .L800ADB0C
/* 0AE700 800ADB00 3C04800E */   lui   $a0, %hi(D_800E2C98) # $a0, 0x800e
/* 0AE704 800ADB04 0C030076 */  jal   func_800C01D8
/* 0AE708 800ADB08 24842C98 */   addiu $a0, %lo(D_800E2C98) # addiu $a0, $a0, 0x2c98
.L800ADB0C:
/* 0AE70C 800ADB0C 24040027 */  li    $a0, 39
.L800ADB10:
/* 0AE710 800ADB10 0C000741 */  jal   func_80001D04
/* 0AE714 800ADB14 00002825 */   move  $a1, $zero
/* 0AE718 800ADB18 3C01800E */  lui   $at, %hi(D_800E2C80) # $at, 0x800e
/* 0AE71C 800ADB1C 10000026 */  b     .L800ADBB8
/* 0AE720 800ADB20 AC202C80 */   sw    $zero, %lo(D_800E2C80)($at)
.L800ADB24:
/* 0AE724 800ADB24 3C19800E */  lui   $t9, %hi(D_800E2C60) # $t9, 0x800e
/* 0AE728 800ADB28 8F392C60 */  lw    $t9, %lo(D_800E2C60)($t9)
/* 0AE72C 800ADB2C 3401BB80 */  li    $at, 48000
/* 0AE730 800ADB30 0321082A */  slt   $at, $t9, $at
/* 0AE734 800ADB34 14200020 */  bnez  $at, .L800ADBB8
/* 0AE738 800ADB38 3C03800E */   lui   $v1, %hi(D_800E2C7C) # $v1, 0x800e
/* 0AE73C 800ADB3C 24632C7C */  addiu $v1, %lo(D_800E2C7C) # addiu $v1, $v1, 0x2c7c
/* 0AE740 800ADB40 8C620000 */  lw    $v0, ($v1)
/* 0AE744 800ADB44 00002825 */  move  $a1, $zero
/* 0AE748 800ADB48 18400003 */  blez  $v0, .L800ADB58
/* 0AE74C 800ADB4C 00444023 */   subu  $t0, $v0, $a0
/* 0AE750 800ADB50 10000019 */  b     .L800ADBB8
/* 0AE754 800ADB54 AC680000 */   sw    $t0, ($v1)
.L800ADB58:
/* 0AE758 800ADB58 0C000741 */  jal   func_80001D04
/* 0AE75C 800ADB5C 2404023F */   li    $a0, 575
/* 0AE760 800ADB60 3C09800E */  lui   $t1, %hi(D_800E2C60) # $t1, 0x800e
/* 0AE764 800ADB64 8D292C60 */  lw    $t1, %lo(D_800E2C60)($t1)
/* 0AE768 800ADB68 3C01FFFF */  lui   $at, (0xFFFF4480 >> 16) # lui $at, 0xffff
/* 0AE76C 800ADB6C 34214480 */  ori   $at, (0xFFFF4480 & 0xFFFF) # ori $at, $at, 0x4480
/* 0AE770 800ADB70 01215021 */  addu  $t2, $t1, $at
/* 0AE774 800ADB74 000A5943 */  sra   $t3, $t2, 5
/* 0AE778 800ADB78 240C0258 */  li    $t4, 600
/* 0AE77C 800ADB7C 018B6823 */  subu  $t5, $t4, $t3
/* 0AE780 800ADB80 3C01800E */  lui   $at, %hi(D_800E2C80) # $at, 0x800e
/* 0AE784 800ADB84 AC2D2C80 */  sw    $t5, %lo(D_800E2C80)($at)
/* 0AE788 800ADB88 24040384 */  li    $a0, 900
/* 0AE78C 800ADB8C 0C01BE53 */  jal   func_8006F94C
/* 0AE790 800ADB90 24050474 */   li    $a1, 1140
/* 0AE794 800ADB94 3C0E800E */  lui   $t6, %hi(D_800E2C60) # $t6, 0x800e
/* 0AE798 800ADB98 8DCE2C60 */  lw    $t6, %lo(D_800E2C60)($t6)
/* 0AE79C 800ADB9C 3C01FFFF */  lui   $at, (0xFFFF4480 >> 16) # lui $at, 0xffff
/* 0AE7A0 800ADBA0 34214480 */  ori   $at, (0xFFFF4480 & 0xFFFF) # ori $at, $at, 0x4480
/* 0AE7A4 800ADBA4 01C17821 */  addu  $t7, $t6, $at
/* 0AE7A8 800ADBA8 000FC143 */  sra   $t8, $t7, 5
/* 0AE7AC 800ADBAC 0058C823 */  subu  $t9, $v0, $t8
/* 0AE7B0 800ADBB0 3C01800E */  lui   $at, %hi(D_800E2C7C) # $at, 0x800e
/* 0AE7B4 800ADBB4 AC392C7C */  sw    $t9, %lo(D_800E2C7C)($at)
.L800ADBB8:
/* 0AE7B8 800ADBB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0AE7BC 800ADBBC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0AE7C0 800ADBC0 03E00008 */  jr    $ra
/* 0AE7C4 800ADBC4 00000000 */   nop   

