glabel func_80077268
/* 077E68 80077268 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 077E6C 8007726C AFBF0014 */  sw    $ra, 0x14($sp)
/* 077E70 80077270 0C01E948 */  jal   func_8007A520
/* 077E74 80077274 AFA40030 */   sw    $a0, 0x30($sp)
/* 077E78 80077278 8FA40030 */  lw    $a0, 0x30($sp)
/* 077E7C 8007727C 00022C02 */  srl   $a1, $v0, 0x10
/* 077E80 80077280 8C830000 */  lw    $v1, ($a0)
/* 077E84 80077284 000571C2 */  srl   $t6, $a1, 7
/* 077E88 80077288 000E5080 */  sll   $t2, $t6, 2
/* 077E8C 8007728C 246E0008 */  addiu $t6, $v1, 8
/* 077E90 80077290 3C0FBA00 */  lui   $t7, (0xBA001402 >> 16) # lui $t7, 0xba00
/* 077E94 80077294 AC8E0000 */  sw    $t6, ($a0)
/* 077E98 80077298 35EF1402 */  ori   $t7, (0xBA001402 & 0xFFFF) # ori $t7, $t7, 0x1402
/* 077E9C 8007729C 3046FFFF */  andi  $a2, $v0, 0xffff
/* 077EA0 800772A0 AC6F0000 */  sw    $t7, ($v1)
/* 077EA4 800772A4 AC600004 */  sw    $zero, 4($v1)
/* 077EA8 800772A8 8C830000 */  lw    $v1, ($a0)
/* 077EAC 800772AC 0006C202 */  srl   $t8, $a2, 8
/* 077EB0 800772B0 0018F880 */  sll   $ra, $t8, 2
/* 077EB4 800772B4 24780008 */  addiu $t8, $v1, 8
/* 077EB8 800772B8 3C0EFFFD */  lui   $t6, (0xFFFDF6FB >> 16) # lui $t6, 0xfffd
/* 077EBC 800772BC 3C19FCFF */  lui   $t9, (0xFCFFFFFF >> 16) # lui $t9, 0xfcff
/* 077EC0 800772C0 AC980000 */  sw    $t8, ($a0)
/* 077EC4 800772C4 3739FFFF */  ori   $t9, (0xFCFFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 077EC8 800772C8 35CEF6FB */  ori   $t6, (0xFFFDF6FB & 0xFFFF) # ori $t6, $t6, 0xf6fb
/* 077ECC 800772CC AC6E0004 */  sw    $t6, 4($v1)
/* 077ED0 800772D0 AC790000 */  sw    $t9, ($v1)
/* 077ED4 800772D4 8C830000 */  lw    $v1, ($a0)
/* 077ED8 800772D8 3C190050 */  lui   $t9, (0x00504240 >> 16) # lui $t9, 0x50
/* 077EDC 800772DC 246F0008 */  addiu $t7, $v1, 8
/* 077EE0 800772E0 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 077EE4 800772E4 AC8F0000 */  sw    $t7, ($a0)
/* 077EE8 800772E8 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 077EEC 800772EC 37394240 */  ori   $t9, (0x00504240 & 0xFFFF) # ori $t9, $t9, 0x4240
/* 077EF0 800772F0 AC790004 */  sw    $t9, 4($v1)
/* 077EF4 800772F4 AC780000 */  sw    $t8, ($v1)
/* 077EF8 800772F8 8C830000 */  lw    $v1, ($a0)
/* 077EFC 800772FC 3C0FFA00 */  lui   $t7, 0xfa00
/* 077F00 80077300 246E0008 */  addiu $t6, $v1, 8
/* 077F04 80077304 AC8E0000 */  sw    $t6, ($a0)
/* 077F08 80077308 AC600004 */  sw    $zero, 4($v1)
/* 077F0C 8007730C AC6F0000 */  sw    $t7, ($v1)
/* 077F10 80077310 AFBF001C */  sw    $ra, 0x1c($sp)
/* 077F14 80077314 AFA60028 */  sw    $a2, 0x28($sp)
/* 077F18 80077318 AFA50024 */  sw    $a1, 0x24($sp)
/* 077F1C 8007731C AFAA0020 */  sw    $t2, 0x20($sp)
/* 077F20 80077320 0C019884 */  jal   func_80066210
/* 077F24 80077324 AFA40030 */   sw    $a0, 0x30($sp)
/* 077F28 80077328 8FA40030 */  lw    $a0, 0x30($sp)
/* 077F2C 8007732C 8FAA0020 */  lw    $t2, 0x20($sp)
/* 077F30 80077330 8FAC0024 */  lw    $t4, 0x24($sp)
/* 077F34 80077334 8FAD0028 */  lw    $t5, 0x28($sp)
/* 077F38 80077338 8FBF001C */  lw    $ra, 0x1c($sp)
/* 077F3C 8007733C 24010001 */  li    $at, 1
/* 077F40 80077340 10410009 */  beq   $v0, $at, .L80077368
/* 077F44 80077344 3C08F600 */   lui   $t0, 0xf600
/* 077F48 80077348 24010002 */  li    $at, 2
/* 077F4C 8007734C 10410018 */  beq   $v0, $at, .L800773B0
/* 077F50 80077350 3C08F600 */   lui   $t0, 0xf600
/* 077F54 80077354 24010003 */  li    $at, 3
/* 077F58 80077358 10410015 */  beq   $v0, $at, .L800773B0
/* 077F5C 8007735C 00000000 */   nop   
/* 077F60 80077360 10000036 */  b     .L8007743C
/* 077F64 80077364 8FBF0014 */   lw    $ra, 0x14($sp)
.L80077368:
/* 077F68 80077368 8C830000 */  lw    $v1, ($a0)
/* 077F6C 8007736C 000CC842 */  srl   $t9, $t4, 1
/* 077F70 80077370 24780008 */  addiu $t8, $v1, 8
/* 077F74 80077374 AC980000 */  sw    $t8, ($a0)
/* 077F78 80077378 000A7042 */  srl   $t6, $t2, 1
/* 077F7C 8007737C 31AF03FF */  andi  $t7, $t5, 0x3ff
/* 077F80 80077380 000FC380 */  sll   $t8, $t7, 0xe
/* 077F84 80077384 032E1023 */  subu  $v0, $t9, $t6
/* 077F88 80077388 004A7021 */  addu  $t6, $v0, $t2
/* 077F8C 8007738C 31CF03FF */  andi  $t7, $t6, 0x3ff
/* 077F90 80077390 0308C825 */  or    $t9, $t8, $t0
/* 077F94 80077394 000FC080 */  sll   $t8, $t7, 2
/* 077F98 80077398 03387025 */  or    $t6, $t9, $t8
/* 077F9C 8007739C 304F03FF */  andi  $t7, $v0, 0x3ff
/* 077FA0 800773A0 000FC880 */  sll   $t9, $t7, 2
/* 077FA4 800773A4 AC790004 */  sw    $t9, 4($v1)
/* 077FA8 800773A8 10000023 */  b     .L80077438
/* 077FAC 800773AC AC6E0000 */   sw    $t6, ($v1)
.L800773B0:
/* 077FB0 800773B0 8C830000 */  lw    $v1, ($a0)
/* 077FB4 800773B4 000C7042 */  srl   $t6, $t4, 1
/* 077FB8 800773B8 24780008 */  addiu $t8, $v1, 8
/* 077FBC 800773BC AC980000 */  sw    $t8, ($a0)
/* 077FC0 800773C0 000A7842 */  srl   $t7, $t2, 1
/* 077FC4 800773C4 31B903FF */  andi  $t9, $t5, 0x3ff
/* 077FC8 800773C8 0019C380 */  sll   $t8, $t9, 0xe
/* 077FCC 800773CC 01CF1023 */  subu  $v0, $t6, $t7
/* 077FD0 800773D0 004A7821 */  addu  $t7, $v0, $t2
/* 077FD4 800773D4 31F903FF */  andi  $t9, $t7, 0x3ff
/* 077FD8 800773D8 03087025 */  or    $t6, $t8, $t0
/* 077FDC 800773DC 0019C080 */  sll   $t8, $t9, 2
/* 077FE0 800773E0 01D87825 */  or    $t7, $t6, $t8
/* 077FE4 800773E4 305903FF */  andi  $t9, $v0, 0x3ff
/* 077FE8 800773E8 00197080 */  sll   $t6, $t9, 2
/* 077FEC 800773EC AC6E0004 */  sw    $t6, 4($v1)
/* 077FF0 800773F0 AC6F0000 */  sw    $t7, ($v1)
/* 077FF4 800773F4 8C830000 */  lw    $v1, ($a0)
/* 077FF8 800773F8 000D7842 */  srl   $t7, $t5, 1
/* 077FFC 800773FC 001FC842 */  srl   $t9, $ra, 1
/* 078000 80077400 01F93023 */  subu  $a2, $t7, $t9
/* 078004 80077404 24780008 */  addiu $t8, $v1, 8
/* 078008 80077408 AC980000 */  sw    $t8, ($a0)
/* 07800C 8007740C 00DF7021 */  addu  $t6, $a2, $ra
/* 078010 80077410 31D803FF */  andi  $t8, $t6, 0x3ff
/* 078014 80077414 00187B80 */  sll   $t7, $t8, 0xe
/* 078018 80077418 318E03FF */  andi  $t6, $t4, 0x3ff
/* 07801C 8007741C 000EC080 */  sll   $t8, $t6, 2
/* 078020 80077420 01E8C825 */  or    $t9, $t7, $t0
/* 078024 80077424 03387825 */  or    $t7, $t9, $t8
/* 078028 80077428 30CE03FF */  andi  $t6, $a2, 0x3ff
/* 07802C 8007742C 000ECB80 */  sll   $t9, $t6, 0xe
/* 078030 80077430 AC790004 */  sw    $t9, 4($v1)
/* 078034 80077434 AC6F0000 */  sw    $t7, ($v1)
.L80077438:
/* 078038 80077438 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007743C:
/* 07803C 8007743C 27BD0030 */  addiu $sp, $sp, 0x30
/* 078040 80077440 03E00008 */  jr    $ra
/* 078044 80077444 00000000 */   nop   

/* 078048 80077448 00000000 */  nop   
/* 07804C 8007744C 00000000 */  nop   
