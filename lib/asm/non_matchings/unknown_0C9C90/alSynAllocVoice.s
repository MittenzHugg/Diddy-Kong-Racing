glabel alSynAllocVoice
/* 0CA108 800C9508 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CA10C 800C950C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CA110 800C9510 AFB00018 */  sw    $s0, 0x18($sp)
/* 0CA114 800C9514 AFA40030 */  sw    $a0, 0x30($sp)
/* 0CA118 800C9518 AFA0002C */  sw    $zero, 0x2c($sp)
/* 0CA11C 800C951C 84CE0000 */  lh    $t6, ($a2)
/* 0CA120 800C9520 00A08025 */  move  $s0, $a1
/* 0CA124 800C9524 A4AE0016 */  sh    $t6, 0x16($a1)
/* 0CA128 800C9528 90CF0004 */  lbu   $t7, 4($a2)
/* 0CA12C 800C952C ACA0000C */  sw    $zero, 0xc($a1)
/* 0CA130 800C9530 A4AF001A */  sh    $t7, 0x1a($a1)
/* 0CA134 800C9534 84D80002 */  lh    $t8, 2($a2)
/* 0CA138 800C9538 A4A00014 */  sh    $zero, 0x14($a1)
/* 0CA13C 800C953C ACA00008 */  sw    $zero, 8($a1)
/* 0CA140 800C9540 A4B80018 */  sh    $t8, 0x18($a1)
/* 0CA144 800C9544 84C60000 */  lh    $a2, ($a2)
/* 0CA148 800C9548 8FA40030 */  lw    $a0, 0x30($sp)
/* 0CA14C 800C954C 0C032508 */  jal   _allocatePVoice
/* 0CA150 800C9550 27A5002C */   addiu $a1, $sp, 0x2c
/* 0CA154 800C9554 8FB9002C */  lw    $t9, 0x2c($sp)
/* 0CA158 800C9558 53200035 */  beql  $t9, $zero, .L800C9630
/* 0CA15C 800C955C 8FA2002C */   lw    $v0, 0x2c($sp)
/* 0CA160 800C9560 1040002C */  beqz  $v0, .L800C9614
/* 0CA164 800C9564 8F24000C */   lw    $a0, 0xc($t9)
/* 0CA168 800C9568 24080200 */  li    $t0, 512
/* 0CA16C 800C956C AF2800D8 */  sw    $t0, 0xd8($t9)
/* 0CA170 800C9570 8FA9002C */  lw    $t1, 0x2c($sp)
/* 0CA174 800C9574 8D2A0008 */  lw    $t2, 8($t1)
/* 0CA178 800C9578 AD400008 */  sw    $zero, 8($t2)
/* 0CA17C 800C957C 0C01959A */  jal   __allocParam
/* 0CA180 800C9580 AFA40028 */   sw    $a0, 0x28($sp)
/* 0CA184 800C9584 8FAB0030 */  lw    $t3, 0x30($sp)
/* 0CA188 800C9588 8FA40028 */  lw    $a0, 0x28($sp)
/* 0CA18C 800C958C 240D000B */  li    $t5, 11
/* 0CA190 800C9590 8D6C001C */  lw    $t4, 0x1c($t3)
/* 0CA194 800C9594 A44D0008 */  sh    $t5, 8($v0)
/* 0CA198 800C9598 AC40000C */  sw    $zero, 0xc($v0)
/* 0CA19C 800C959C AC4C0004 */  sw    $t4, 4($v0)
/* 0CA1A0 800C95A0 8FAE002C */  lw    $t6, 0x2c($sp)
/* 0CA1A4 800C95A4 24050003 */  li    $a1, 3
/* 0CA1A8 800C95A8 00403025 */  move  $a2, $v0
/* 0CA1AC 800C95AC 8DCF00D8 */  lw    $t7, 0xd8($t6)
/* 0CA1B0 800C95B0 25F8FFC0 */  addiu $t8, $t7, -0x40
/* 0CA1B4 800C95B4 AC580010 */  sw    $t8, 0x10($v0)
/* 0CA1B8 800C95B8 8C990008 */  lw    $t9, 8($a0)
/* 0CA1BC 800C95BC 0320F809 */  jalr  $t9
/* 0CA1C0 800C95C0 00000000 */  nop   
/* 0CA1C4 800C95C4 0C01959A */  jal   __allocParam
/* 0CA1C8 800C95C8 00000000 */   nop   
/* 0CA1CC 800C95CC 8FA40028 */  lw    $a0, 0x28($sp)
/* 0CA1D0 800C95D0 10400012 */  beqz  $v0, .L800C961C
/* 0CA1D4 800C95D4 00403025 */   move  $a2, $v0
/* 0CA1D8 800C95D8 8FA80030 */  lw    $t0, 0x30($sp)
/* 0CA1DC 800C95DC 8FAA002C */  lw    $t2, 0x2c($sp)
/* 0CA1E0 800C95E0 240D000F */  li    $t5, 15
/* 0CA1E4 800C95E4 8D09001C */  lw    $t1, 0x1c($t0)
/* 0CA1E8 800C95E8 8D4B00D8 */  lw    $t3, 0xd8($t2)
/* 0CA1EC 800C95EC A44D0008 */  sh    $t5, 8($v0)
/* 0CA1F0 800C95F0 AC400000 */  sw    $zero, ($v0)
/* 0CA1F4 800C95F4 012B6021 */  addu  $t4, $t1, $t3
/* 0CA1F8 800C95F8 AC4C0004 */  sw    $t4, 4($v0)
/* 0CA1FC 800C95FC 8C990008 */  lw    $t9, 8($a0)
/* 0CA200 800C9600 24050003 */  li    $a1, 3
/* 0CA204 800C9604 0320F809 */  jalr  $t9
/* 0CA208 800C9608 00000000 */  nop   
/* 0CA20C 800C960C 10000004 */  b     .L800C9620
/* 0CA210 800C9610 8FAF002C */   lw    $t7, 0x2c($sp)
.L800C9614:
/* 0CA214 800C9614 8FAE002C */  lw    $t6, 0x2c($sp)
/* 0CA218 800C9618 ADC000D8 */  sw    $zero, 0xd8($t6)
.L800C961C:
/* 0CA21C 800C961C 8FAF002C */  lw    $t7, 0x2c($sp)
.L800C9620:
/* 0CA220 800C9620 ADF00008 */  sw    $s0, 8($t7)
/* 0CA224 800C9624 8FB8002C */  lw    $t8, 0x2c($sp)
/* 0CA228 800C9628 AE180008 */  sw    $t8, 8($s0)
/* 0CA22C 800C962C 8FA2002C */  lw    $v0, 0x2c($sp)
.L800C9630:
/* 0CA230 800C9630 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CA234 800C9634 8FB00018 */  lw    $s0, 0x18($sp)
/* 0CA238 800C9638 0002402B */  sltu  $t0, $zero, $v0
/* 0CA23C 800C963C 01001025 */  move  $v0, $t0
/* 0CA240 800C9640 03E00008 */  jr    $ra
/* 0CA244 800C9644 27BD0030 */   addiu $sp, $sp, 0x30

/* 0CA248 800C9648 00000000 */  nop   
/* 0CA24C 800C964C 00000000 */  nop   
