glabel alCSPSetTempo
/* 0C85E0 800C79E0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0C85E4 800C79E4 3C0100FF */  lui   $at, 0xff
/* 0C85E8 800C79E8 00A1C824 */  and   $t9, $a1, $at
/* 0C85EC 800C79EC 30AAFF00 */  andi  $t2, $a1, 0xff00
/* 0C85F0 800C79F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C85F4 800C79F4 240E0007 */  li    $t6, 7
/* 0C85F8 800C79F8 240F00FF */  li    $t7, 255
/* 0C85FC 800C79FC 24180051 */  li    $t8, 81
/* 0C8600 800C7A00 00194C03 */  sra   $t1, $t9, 0x10
/* 0C8604 800C7A04 000A5A03 */  sra   $t3, $t2, 8
/* 0C8608 800C7A08 00A06025 */  move  $t4, $a1
/* 0C860C 800C7A0C A7AE0018 */  sh    $t6, 0x18($sp)
/* 0C8610 800C7A10 A3AF0020 */  sb    $t7, 0x20($sp)
/* 0C8614 800C7A14 A3B80021 */  sb    $t8, 0x21($sp)
/* 0C8618 800C7A18 A3A90023 */  sb    $t1, 0x23($sp)
/* 0C861C 800C7A1C A3AB0024 */  sb    $t3, 0x24($sp)
/* 0C8620 800C7A20 A3AC0025 */  sb    $t4, 0x25($sp)
/* 0C8624 800C7A24 27A50018 */  addiu $a1, $sp, 0x18
/* 0C8628 800C7A28 24840048 */  addiu $a0, $a0, 0x48
/* 0C862C 800C7A2C 0C03246B */  jal   alEvtqPostEvent
/* 0C8630 800C7A30 00003025 */   move  $a2, $zero
/* 0C8634 800C7A34 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C8638 800C7A38 27BD0028 */  addiu $sp, $sp, 0x28
/* 0C863C 800C7A3C 03E00008 */  jr    $ra
/* 0C8640 800C7A40 00000000 */   nop   

/* 0C8644 800C7A44 00000000 */  nop   
/* 0C8648 800C7A48 00000000 */  nop   
/* 0C864C 800C7A4C 00000000 */  nop   

