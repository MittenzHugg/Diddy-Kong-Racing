glabel func_80006BFC
/* 0077FC 80006BFC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 007800 80006C00 AFBF0014 */  sw    $ra, 0x14($sp)
/* 007804 80006C04 AFA70054 */  sw    $a3, 0x54($sp)
/* 007808 80006C08 8CC20064 */  lw    $v0, 0x64($a2)
/* 00780C 80006C0C 8C830064 */  lw    $v1, 0x64($a0)
/* 007810 80006C10 8C4E0118 */  lw    $t6, 0x118($v0)
/* 007814 80006C14 3C018012 */  lui   $at, %hi(D_80119C38) # $at, 0x8012
/* 007818 80006C18 3C0F8012 */  lui   $t7, %hi(D_80119C38) # $t7, 0x8012
/* 00781C 80006C1C AC2E9C38 */  sw    $t6, %lo(D_80119C38)($at)
/* 007820 80006C20 8DEF9C38 */  lw    $t7, %lo(D_80119C38)($t7)
/* 007824 80006C24 00000000 */  nop   
/* 007828 80006C28 11E000E4 */  beqz  $t7, .L80006FBC
/* 00782C 80006C2C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 007830 80006C30 10A0000E */  beqz  $a1, .L80006C6C
/* 007834 80006C34 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 007838 80006C38 84780000 */  lh    $t8, ($v1)
/* 00783C 80006C3C 44814000 */  mtc1  $at, $f8
/* 007840 80006C40 0018C900 */  sll   $t9, $t8, 4
/* 007844 80006C44 0338C821 */  addu  $t9, $t9, $t8
/* 007848 80006C48 0019C880 */  sll   $t9, $t9, 2
/* 00784C 80006C4C 00B91021 */  addu  $v0, $a1, $t9
/* 007850 80006C50 C4440010 */  lwc1  $f4, 0x10($v0)
/* 007854 80006C54 C452000C */  lwc1  $f18, 0xc($v0)
/* 007858 80006C58 E7A40038 */  swc1  $f4, 0x38($sp)
/* 00785C 80006C5C C4460014 */  lwc1  $f6, 0x14($v0)
/* 007860 80006C60 E7A8001C */  swc1  $f8, 0x1c($sp)
/* 007864 80006C64 10000047 */  b     .L80006D84
/* 007868 80006C68 E7A60034 */   swc1  $f6, 0x34($sp)
.L80006C6C:
/* 00786C 80006C6C C48A0010 */  lwc1  $f10, 0x10($a0)
/* 007870 80006C70 C492000C */  lwc1  $f18, 0xc($a0)
/* 007874 80006C74 E7AA0038 */  swc1  $f10, 0x38($sp)
/* 007878 80006C78 C4840014 */  lwc1  $f4, 0x14($a0)
/* 00787C 80006C7C 24010001 */  li    $at, 1
/* 007880 80006C80 E7A40034 */  swc1  $f4, 0x34($sp)
/* 007884 80006C84 806201D6 */  lb    $v0, 0x1d6($v1)
/* 007888 80006C88 00000000 */  nop   
/* 00788C 80006C8C 10400005 */  beqz  $v0, .L80006CA4
/* 007890 80006C90 00000000 */   nop   
/* 007894 80006C94 1041000E */  beq   $v0, $at, .L80006CD0
/* 007898 80006C98 00000000 */   nop   
/* 00789C 80006C9C 1000001B */  b     .L80006D0C
/* 0078A0 80006CA0 C480001C */   lwc1  $f0, 0x1c($a0)
.L80006CA4:
/* 0078A4 80006CA4 C460002C */  lwc1  $f0, 0x2c($v1)
/* 0078A8 80006CA8 44803000 */  mtc1  $zero, $f6
/* 0078AC 80006CAC 00000000 */  nop   
/* 0078B0 80006CB0 4600303E */  c.le.s $f6, $f0
/* 0078B4 80006CB4 00000000 */  nop   
/* 0078B8 80006CB8 45000003 */  bc1f  .L80006CC8
/* 0078BC 80006CBC 00000000 */   nop   
/* 0078C0 80006CC0 10000021 */  b     .L80006D48
/* 0078C4 80006CC4 46000086 */   mov.s $f2, $f0
.L80006CC8:
/* 0078C8 80006CC8 1000001F */  b     .L80006D48
/* 0078CC 80006CCC 46000087 */   neg.s $f2, $f0
.L80006CD0:
/* 0078D0 80006CD0 C480001C */  lwc1  $f0, 0x1c($a0)
/* 0078D4 80006CD4 C4820024 */  lwc1  $f2, 0x24($a0)
/* 0078D8 80006CD8 46000202 */  mul.s $f8, $f0, $f0
/* 0078DC 80006CDC E7B2003C */  swc1  $f18, 0x3c($sp)
/* 0078E0 80006CE0 AFA60050 */  sw    $a2, 0x50($sp)
/* 0078E4 80006CE4 AFA30044 */  sw    $v1, 0x44($sp)
/* 0078E8 80006CE8 46021282 */  mul.s $f10, $f2, $f2
/* 0078EC 80006CEC 0C0326B4 */  jal   sqrtf
/* 0078F0 80006CF0 460A4300 */   add.s $f12, $f8, $f10
/* 0078F4 80006CF4 8FA30044 */  lw    $v1, 0x44($sp)
/* 0078F8 80006CF8 8FA60050 */  lw    $a2, 0x50($sp)
/* 0078FC 80006CFC C7B2003C */  lwc1  $f18, 0x3c($sp)
/* 007900 80006D00 10000011 */  b     .L80006D48
/* 007904 80006D04 46000086 */   mov.s $f2, $f0
/* 007908 80006D08 C480001C */  lwc1  $f0, 0x1c($a0)
.L80006D0C:
/* 00790C 80006D0C C4820024 */  lwc1  $f2, 0x24($a0)
/* 007910 80006D10 46000102 */  mul.s $f4, $f0, $f0
/* 007914 80006D14 C48E0020 */  lwc1  $f14, 0x20($a0)
/* 007918 80006D18 E7B2003C */  swc1  $f18, 0x3c($sp)
/* 00791C 80006D1C AFA60050 */  sw    $a2, 0x50($sp)
/* 007920 80006D20 46021182 */  mul.s $f6, $f2, $f2
/* 007924 80006D24 AFA30044 */  sw    $v1, 0x44($sp)
/* 007928 80006D28 460E7282 */  mul.s $f10, $f14, $f14
/* 00792C 80006D2C 46062200 */  add.s $f8, $f4, $f6
/* 007930 80006D30 0C0326B4 */  jal   sqrtf
/* 007934 80006D34 460A4300 */   add.s $f12, $f8, $f10
/* 007938 80006D38 8FA30044 */  lw    $v1, 0x44($sp)
/* 00793C 80006D3C 8FA60050 */  lw    $a2, 0x50($sp)
/* 007940 80006D40 C7B2003C */  lwc1  $f18, 0x3c($sp)
/* 007944 80006D44 46000086 */  mov.s $f2, $f0
.L80006D48:
/* 007948 80006D48 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 00794C 80006D4C 44818000 */  mtc1  $at, $f16
/* 007950 80006D50 00000000 */  nop   
/* 007954 80006D54 4602803C */  c.lt.s $f16, $f2
/* 007958 80006D58 00000000 */  nop   
/* 00795C 80006D5C 45000003 */  bc1f  .L80006D6C
/* 007960 80006D60 00000000 */   nop   
/* 007964 80006D64 46008086 */  mov.s $f2, $f16
/* 007968 80006D68 00000000 */  nop   
.L80006D6C:
/* 00796C 80006D6C 46101183 */  div.s $f6, $f2, $f16
/* 007970 80006D70 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 007974 80006D74 44812000 */  mtc1  $at, $f4
/* 007978 80006D78 00000000 */  nop   
/* 00797C 80006D7C 46062201 */  sub.s $f8, $f4, $f6
/* 007980 80006D80 E7A8001C */  swc1  $f8, 0x1c($sp)
.L80006D84:
/* 007984 80006D84 C4CA000C */  lwc1  $f10, 0xc($a2)
/* 007988 80006D88 C4C40010 */  lwc1  $f4, 0x10($a2)
/* 00798C 80006D8C C7A60038 */  lwc1  $f6, 0x38($sp)
/* 007990 80006D90 46125001 */  sub.s $f0, $f10, $f18
/* 007994 80006D94 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 007998 80006D98 46062081 */  sub.s $f2, $f4, $f6
/* 00799C 80006D9C C4C80014 */  lwc1  $f8, 0x14($a2)
/* 0079A0 80006DA0 46000102 */  mul.s $f4, $f0, $f0
/* 0079A4 80006DA4 460A4381 */  sub.s $f14, $f8, $f10
/* 0079A8 80006DA8 AFA30044 */  sw    $v1, 0x44($sp)
/* 0079AC 80006DAC 46021182 */  mul.s $f6, $f2, $f2
/* 0079B0 80006DB0 00000000 */  nop   
/* 0079B4 80006DB4 460E7282 */  mul.s $f10, $f14, $f14
/* 0079B8 80006DB8 46062200 */  add.s $f8, $f4, $f6
/* 0079BC 80006DBC 0C0326B4 */  jal   sqrtf
/* 0079C0 80006DC0 460A4300 */   add.s $f12, $f8, $f10
/* 0079C4 80006DC4 8FA30044 */  lw    $v1, 0x44($sp)
/* 0079C8 80006DC8 E7A00020 */  swc1  $f0, 0x20($sp)
/* 0079CC 80006DCC 84680000 */  lh    $t0, ($v1)
/* 0079D0 80006DD0 3C028012 */  lui   $v0, %hi(D_80119C38) # $v0, 0x8012
/* 0079D4 80006DD4 8C429C38 */  lw    $v0, %lo(D_80119C38)($v0)
/* 0079D8 80006DD8 8FAB0054 */  lw    $t3, 0x54($sp)
/* 0079DC 80006DDC 00084880 */  sll   $t1, $t0, 2
/* 0079E0 80006DE0 448B4000 */  mtc1  $t3, $f8
/* 0079E4 80006DE4 00495021 */  addu  $t2, $v0, $t1
/* 0079E8 80006DE8 C544006C */  lwc1  $f4, 0x6c($t2)
/* 0079EC 80006DEC 468042A0 */  cvt.s.w $f10, $f8
/* 0079F0 80006DF0 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0079F4 80006DF4 44818000 */  mtc1  $at, $f16
/* 0079F8 80006DF8 46002181 */  sub.s $f6, $f4, $f0
/* 0079FC 80006DFC 3C01C170 */  li    $at, 0xC1700000 # -15.000000
/* 007A00 80006E00 460A3083 */  div.s $f2, $f6, $f10
/* 007A04 80006E04 4602803C */  c.lt.s $f16, $f2
/* 007A08 80006E08 00000000 */  nop   
/* 007A0C 80006E0C 45000003 */  bc1f  .L80006E1C
/* 007A10 80006E10 00000000 */   nop   
/* 007A14 80006E14 10000008 */  b     .L80006E38
/* 007A18 80006E18 46008086 */   mov.s $f2, $f16
.L80006E1C:
/* 007A1C 80006E1C 44810000 */  mtc1  $at, $f0
/* 007A20 80006E20 00000000 */  nop   
/* 007A24 80006E24 4600103C */  c.lt.s $f2, $f0
/* 007A28 80006E28 00000000 */  nop   
/* 007A2C 80006E2C 45000002 */  bc1f  .L80006E38
/* 007A30 80006E30 00000000 */   nop   
/* 007A34 80006E34 46000086 */  mov.s $f2, $f0
.L80006E38:
/* 007A38 80006E38 C44C005C */  lwc1  $f12, 0x5c($v0)
/* 007A3C 80006E3C E7A20024 */  swc1  $f2, 0x24($sp)
/* 007A40 80006E40 0C001FE9 */  jal   func_80007FA4
/* 007A44 80006E44 AFA30044 */   sw    $v1, 0x44($sp)
/* 007A48 80006E48 3C01428C */  li    $at, 0x428C0000 # 70.000000
/* 007A4C 80006E4C 44816000 */  mtc1  $at, $f12
/* 007A50 80006E50 C7A20024 */  lwc1  $f2, 0x24($sp)
/* 007A54 80006E54 3C01800E */  lui   $at, %hi(D_800E4CA4) # $at, 0x800e
/* 007A58 80006E58 46026100 */  add.s $f4, $f12, $f2
/* 007A5C 80006E5C C4254CA0 */  lwc1  $f5, %lo(D_800E4CA0)($at)
/* 007A60 80006E60 46026201 */  sub.s $f8, $f12, $f2
/* 007A64 80006E64 00000000 */  nop   
/* 007A68 80006E68 46082183 */  div.s $f6, $f4, $f8
/* 007A6C 80006E6C C4244CA4 */  lwc1  $f4, %lo(D_800E4CA4)($at)
/* 007A70 80006E70 460002A1 */  cvt.d.s $f10, $f0
/* 007A74 80006E74 46245202 */  mul.d $f8, $f10, $f4
/* 007A78 80006E78 444CF800 */  cfc1  $t4, $31
/* 007A7C 80006E7C 00000000 */  nop   
/* 007A80 80006E80 35810003 */  ori   $at, $t4, 3
/* 007A84 80006E84 38210002 */  xori  $at, $at, 2
/* 007A88 80006E88 44C1F800 */  ctc1  $at, $31
/* 007A8C 80006E8C 00000000 */  nop   
/* 007A90 80006E90 462042A4 */  cvt.w.d $f10, $f8
/* 007A94 80006E94 440D5000 */  mfc1  $t5, $f10
/* 007A98 80006E98 44CCF800 */  ctc1  $t4, $31
/* 007A9C 80006E9C 448D2000 */  mtc1  $t5, $f4
/* 007AA0 80006EA0 00000000 */  nop   
/* 007AA4 80006EA4 46802220 */  cvt.s.w $f8, $f4
/* 007AA8 80006EA8 46083282 */  mul.s $f10, $f6, $f8
/* 007AAC 80006EAC 444EF800 */  cfc1  $t6, $31
/* 007AB0 80006EB0 00000000 */  nop   
/* 007AB4 80006EB4 35C10003 */  ori   $at, $t6, 3
/* 007AB8 80006EB8 38210002 */  xori  $at, $at, 2
/* 007ABC 80006EBC 44C1F800 */  ctc1  $at, $31
/* 007AC0 80006EC0 00000000 */  nop   
/* 007AC4 80006EC4 46005124 */  cvt.w.s $f4, $f10
/* 007AC8 80006EC8 44042000 */  mfc1  $a0, $f4
/* 007ACC 80006ECC 44CEF800 */  ctc1  $t6, $31
/* 007AD0 80006ED0 0C032678 */  jal   alCents2Ratio
/* 007AD4 80006ED4 00000000 */   nop   
/* 007AD8 80006ED8 3C028012 */  lui   $v0, %hi(D_80119C38) # $v0, 0x8012
/* 007ADC 80006EDC 8C429C38 */  lw    $v0, %lo(D_80119C38)($v0)
/* 007AE0 80006EE0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 007AE4 80006EE4 C446005C */  lwc1  $f6, 0x5c($v0)
/* 007AE8 80006EE8 C4420068 */  lwc1  $f2, 0x68($v0)
/* 007AEC 80006EEC 46060201 */  sub.s $f8, $f0, $f6
/* 007AF0 80006EF0 44812000 */  mtc1  $at, $f4
/* 007AF4 80006EF4 46024281 */  sub.s $f10, $f8, $f2
/* 007AF8 80006EF8 8FA30044 */  lw    $v1, 0x44($sp)
/* 007AFC 80006EFC 46045183 */  div.s $f6, $f10, $f4
/* 007B00 80006F00 3C01800E */  lui   $at, %hi(D_800E4CA8) # $at, 0x800e
/* 007B04 80006F04 46061200 */  add.s $f8, $f2, $f6
/* 007B08 80006F08 E4480068 */  swc1  $f8, 0x68($v0)
/* 007B0C 80006F0C 3C028012 */  lui   $v0, %hi(D_80119C38) # $v0, 0x8012
/* 007B10 80006F10 8C429C38 */  lw    $v0, %lo(D_80119C38)($v0)
/* 007B14 80006F14 C7A4001C */  lwc1  $f4, 0x1c($sp)
/* 007B18 80006F18 C44A0068 */  lwc1  $f10, 0x68($v0)
/* 007B1C 80006F1C 00000000 */  nop   
/* 007B20 80006F20 46045182 */  mul.s $f6, $f10, $f4
/* 007B24 80006F24 E4460068 */  swc1  $f6, 0x68($v0)
/* 007B28 80006F28 3C028012 */  lui   $v0, %hi(D_80119C38) # $v0, 0x8012
/* 007B2C 80006F2C 8C429C38 */  lw    $v0, %lo(D_80119C38)($v0)
/* 007B30 80006F30 C42A4CAC */  lwc1  $f10, %lo(D_800E4CAC)($at)
/* 007B34 80006F34 C4480068 */  lwc1  $f8, 0x68($v0)
/* 007B38 80006F38 C42B4CA8 */  lwc1  $f11, %lo(D_800E4CA8)($at)
/* 007B3C 80006F3C 46004321 */  cvt.d.s $f12, $f8
/* 007B40 80006F40 462C503C */  c.lt.d $f10, $f12
/* 007B44 80006F44 3C01800E */  lui   $at, 0x800e
/* 007B48 80006F48 45000009 */  bc1f  .L80006F70
/* 007B4C 80006F4C 00000000 */   nop   
/* 007B50 80006F50 3C01800E */  lui   $at, %hi(D_800E4CBC) # $at, 0x800e
/* 007B54 80006F54 C4244CB0 */  lwc1  $f4, %lo(D_800E4CB0)($at)
/* 007B58 80006F58 00000000 */  nop   
/* 007B5C 80006F5C E4440068 */  swc1  $f4, 0x68($v0)
/* 007B60 80006F60 3C028012 */  lui   $v0, %hi(D_80119C38) # $v0, 0x8012
/* 007B64 80006F64 8C429C38 */  lw    $v0, %lo(D_80119C38)($v0)
/* 007B68 80006F68 1000000F */  b     .L80006FA8
/* 007B6C 80006F6C 846F0000 */   lh    $t7, ($v1)
.L80006F70:
/* 007B70 80006F70 C4274CB8 */  lwc1  $f7, %lo(D_800E4CB8)($at)
/* 007B74 80006F74 C4264CBC */  lwc1  $f6, %lo(D_800E4CBC)($at)
/* 007B78 80006F78 3C01800E */  lui   $at, %hi(D_800E4CC0) # $at, 0x800e
/* 007B7C 80006F7C 4626603C */  c.lt.d $f12, $f6
/* 007B80 80006F80 00000000 */  nop   
/* 007B84 80006F84 45000007 */  bc1f  .L80006FA4
/* 007B88 80006F88 00000000 */   nop   
/* 007B8C 80006F8C C4284CC0 */  lwc1  $f8, %lo(D_800E4CC0)($at)
/* 007B90 80006F90 00000000 */  nop   
/* 007B94 80006F94 E4480068 */  swc1  $f8, 0x68($v0)
/* 007B98 80006F98 3C028012 */  lui   $v0, %hi(D_80119C38) # $v0, 0x8012
/* 007B9C 80006F9C 8C429C38 */  lw    $v0, %lo(D_80119C38)($v0)
/* 007BA0 80006FA0 00000000 */  nop   
.L80006FA4:
/* 007BA4 80006FA4 846F0000 */  lh    $t7, ($v1)
.L80006FA8:
/* 007BA8 80006FA8 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 007BAC 80006FAC 000FC080 */  sll   $t8, $t7, 2
/* 007BB0 80006FB0 0058C821 */  addu  $t9, $v0, $t8
/* 007BB4 80006FB4 E72A006C */  swc1  $f10, 0x6c($t9)
/* 007BB8 80006FB8 8FBF0014 */  lw    $ra, 0x14($sp)
.L80006FBC:
/* 007BBC 80006FBC 27BD0048 */  addiu $sp, $sp, 0x48
/* 007BC0 80006FC0 03E00008 */  jr    $ra
/* 007BC4 80006FC4 00000000 */   nop   

