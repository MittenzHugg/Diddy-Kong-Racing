glabel osEepromWrite
/* 0CF180 800CE580 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CF184 800CE584 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0CF188 800CE588 93AF003F */  lbu   $t7, 0x3f($sp)
/* 0CF18C 800CE58C 3C0E8013 */  lui   $t6, %hi(D_8012CE40) # $t6, 0x8013
/* 0CF190 800CE590 25CECE40 */  addiu $t6, %lo(D_8012CE40) # addiu $t6, $t6, -0x31c0
/* 0CF194 800CE594 29E10041 */  slti  $at, $t7, 0x41
/* 0CF198 800CE598 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CF19C 800CE59C AFA40038 */  sw    $a0, 0x38($sp)
/* 0CF1A0 800CE5A0 AFA60040 */  sw    $a2, 0x40($sp)
/* 0CF1A4 800CE5A4 AFA00034 */  sw    $zero, 0x34($sp)
/* 0CF1A8 800CE5A8 14200003 */  bnez  $at, .L800CE5B8
/* 0CF1AC 800CE5AC AFAE002C */   sw    $t6, 0x2c($sp)
/* 0CF1B0 800CE5B0 1000005B */  b     .L800CE720
/* 0CF1B4 800CE5B4 2402FFFF */   li    $v0, -1
.L800CE5B8:
/* 0CF1B8 800CE5B8 0C033594 */  jal   __osSiGetAccess
/* 0CF1BC 800CE5BC 00000000 */   nop   
/* 0CF1C0 800CE5C0 8FA40038 */  lw    $a0, 0x38($sp)
/* 0CF1C4 800CE5C4 0C033A0F */  jal   __osEepStatus
/* 0CF1C8 800CE5C8 27A5001C */   addiu $a1, $sp, 0x1c
/* 0CF1CC 800CE5CC AFA20034 */  sw    $v0, 0x34($sp)
/* 0CF1D0 800CE5D0 8FB80034 */  lw    $t8, 0x34($sp)
/* 0CF1D4 800CE5D4 17000005 */  bnez  $t8, .L800CE5EC
/* 0CF1D8 800CE5D8 00000000 */   nop   
/* 0CF1DC 800CE5DC 97B9001C */  lhu   $t9, 0x1c($sp)
/* 0CF1E0 800CE5E0 34018000 */  li    $at, 32768
/* 0CF1E4 800CE5E4 13210003 */  beq   $t9, $at, .L800CE5F4
/* 0CF1E8 800CE5E8 00000000 */   nop   
.L800CE5EC:
/* 0CF1EC 800CE5EC 1000004C */  b     .L800CE720
/* 0CF1F0 800CE5F0 24020008 */   li    $v0, 8
.L800CE5F4:
/* 0CF1F4 800CE5F4 93A8001E */  lbu   $t0, 0x1e($sp)
/* 0CF1F8 800CE5F8 31090080 */  andi  $t1, $t0, 0x80
/* 0CF1FC 800CE5FC 11200008 */  beqz  $t1, .L800CE620
/* 0CF200 800CE600 00000000 */   nop   
.L800CE604:
/* 0CF204 800CE604 8FA40038 */  lw    $a0, 0x38($sp)
/* 0CF208 800CE608 0C033A0F */  jal   __osEepStatus
/* 0CF20C 800CE60C 27A5001C */   addiu $a1, $sp, 0x1c
/* 0CF210 800CE610 93AA001E */  lbu   $t2, 0x1e($sp)
/* 0CF214 800CE614 314B0080 */  andi  $t3, $t2, 0x80
/* 0CF218 800CE618 1560FFFA */  bnez  $t3, .L800CE604
/* 0CF21C 800CE61C 00000000 */   nop   
.L800CE620:
/* 0CF220 800CE620 93A4003F */  lbu   $a0, 0x3f($sp)
/* 0CF224 800CE624 0C0339CC */  jal   __osPackEepWriteData
/* 0CF228 800CE628 8FA50040 */   lw    $a1, 0x40($sp)
/* 0CF22C 800CE62C 3C058013 */  lui   $a1, %hi(D_8012CE40) # $a1, 0x8013
/* 0CF230 800CE630 24A5CE40 */  addiu $a1, %lo(D_8012CE40) # addiu $a1, $a1, -0x31c0
/* 0CF234 800CE634 0C0335B0 */  jal   __osSiRawStartDma
/* 0CF238 800CE638 24040001 */   li    $a0, 1
/* 0CF23C 800CE63C AFA20034 */  sw    $v0, 0x34($sp)
/* 0CF240 800CE640 8FA40038 */  lw    $a0, 0x38($sp)
/* 0CF244 800CE644 00002825 */  move  $a1, $zero
/* 0CF248 800CE648 0C0322EC */  jal   osRecvMesg
/* 0CF24C 800CE64C 24060001 */   li    $a2, 1
/* 0CF250 800CE650 AFA00030 */  sw    $zero, 0x30($sp)
.L800CE654:
/* 0CF254 800CE654 8FAD0030 */  lw    $t5, 0x30($sp)
/* 0CF258 800CE658 8FAF0030 */  lw    $t7, 0x30($sp)
/* 0CF25C 800CE65C 3C018013 */  lui   $at, 0x8013
/* 0CF260 800CE660 000D7080 */  sll   $t6, $t5, 2
/* 0CF264 800CE664 002E0821 */  addu  $at, $at, $t6
/* 0CF268 800CE668 240C00FF */  li    $t4, 255
/* 0CF26C 800CE66C AC2CCE40 */  sw    $t4, -0x31c0($at)
/* 0CF270 800CE670 25F80001 */  addiu $t8, $t7, 1
/* 0CF274 800CE674 2B010010 */  slti  $at, $t8, 0x10
/* 0CF278 800CE678 1420FFF6 */  bnez  $at, .L800CE654
/* 0CF27C 800CE67C AFB80030 */   sw    $t8, 0x30($sp)
/* 0CF280 800CE680 3C018013 */  lui   $at, %hi(D_8012CE7C) # $at, 0x8013
/* 0CF284 800CE684 3C058013 */  lui   $a1, %hi(D_8012CE40) # $a1, 0x8013
/* 0CF288 800CE688 AC20CE7C */  sw    $zero, %lo(D_8012CE7C)($at)
/* 0CF28C 800CE68C 24A5CE40 */  addiu $a1, %lo(D_8012CE40) # addiu $a1, $a1, -0x31c0
/* 0CF290 800CE690 0C0335B0 */  jal   __osSiRawStartDma
/* 0CF294 800CE694 00002025 */   move  $a0, $zero
/* 0CF298 800CE698 24190005 */  li    $t9, 5
/* 0CF29C 800CE69C 3C018013 */  lui   $at, %hi(D_8012CD90) # $at, 0x8013
/* 0CF2A0 800CE6A0 AFA20034 */  sw    $v0, 0x34($sp)
/* 0CF2A4 800CE6A4 A039CD90 */  sb    $t9, %lo(D_8012CD90)($at)
/* 0CF2A8 800CE6A8 8FA40038 */  lw    $a0, 0x38($sp)
/* 0CF2AC 800CE6AC 00002825 */  move  $a1, $zero
/* 0CF2B0 800CE6B0 0C0322EC */  jal   osRecvMesg
/* 0CF2B4 800CE6B4 24060001 */   li    $a2, 1
/* 0CF2B8 800CE6B8 AFA00030 */  sw    $zero, 0x30($sp)
.L800CE6BC:
/* 0CF2BC 800CE6BC 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0CF2C0 800CE6C0 8FA8002C */  lw    $t0, 0x2c($sp)
/* 0CF2C4 800CE6C4 254B0001 */  addiu $t3, $t2, 1
/* 0CF2C8 800CE6C8 29610004 */  slti  $at, $t3, 4
/* 0CF2CC 800CE6CC 25090001 */  addiu $t1, $t0, 1
/* 0CF2D0 800CE6D0 AFAB0030 */  sw    $t3, 0x30($sp)
/* 0CF2D4 800CE6D4 1420FFF9 */  bnez  $at, .L800CE6BC
/* 0CF2D8 800CE6D8 AFA9002C */   sw    $t1, 0x2c($sp)
/* 0CF2DC 800CE6DC 8FAC002C */  lw    $t4, 0x2c($sp)
/* 0CF2E0 800CE6E0 27AD0020 */  addiu $t5, $sp, 0x20
/* 0CF2E4 800CE6E4 89810000 */  lwl   $at, ($t4)
/* 0CF2E8 800CE6E8 99810003 */  lwr   $at, 3($t4)
/* 0CF2EC 800CE6EC ADA10000 */  sw    $at, ($t5)
/* 0CF2F0 800CE6F0 898F0004 */  lwl   $t7, 4($t4)
/* 0CF2F4 800CE6F4 998F0007 */  lwr   $t7, 7($t4)
/* 0CF2F8 800CE6F8 ADAF0004 */  sw    $t7, 4($t5)
/* 0CF2FC 800CE6FC 89810008 */  lwl   $at, 8($t4)
/* 0CF300 800CE700 9981000B */  lwr   $at, 0xb($t4)
/* 0CF304 800CE704 ADA10008 */  sw    $at, 8($t5)
/* 0CF308 800CE708 93B80021 */  lbu   $t8, 0x21($sp)
/* 0CF30C 800CE70C 331900C0 */  andi  $t9, $t8, 0xc0
/* 0CF310 800CE710 00194103 */  sra   $t0, $t9, 4
/* 0CF314 800CE714 0C0335A5 */  jal   __osSiRelAccess
/* 0CF318 800CE718 AFA80034 */   sw    $t0, 0x34($sp)
/* 0CF31C 800CE71C 8FA20034 */  lw    $v0, 0x34($sp)
.L800CE720:
/* 0CF320 800CE720 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CF324 800CE724 27BD0038 */  addiu $sp, $sp, 0x38
/* 0CF328 800CE728 03E00008 */  jr    $ra
/* 0CF32C 800CE72C 00000000 */   nop   

