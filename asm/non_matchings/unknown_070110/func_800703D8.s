glabel func_800703D8
/* 070FD8 800703D8 27BDFFF8 */  addiu $sp, $sp, -8
/* 070FDC 800703DC FFBF0000 */  sd    $ra, ($sp)
/* 070FE0 800703E0 00803025 */  move  $a2, $a0
/* 070FE4 800703E4 C4A40000 */  lwc1  $f4, ($a1)
/* 070FE8 800703E8 C4A60004 */  lwc1  $f6, 4($a1)
/* 070FEC 800703EC C4A80008 */  lwc1  $f8, 8($a1)
/* 070FF0 800703F0 0C01C1F1 */  jal   func_800707C4
/* 070FF4 800703F4 84C40000 */   lh    $a0, ($a2)
/* 070FF8 800703F8 46002282 */  mul.s $f10, $f4, $f0
/* 070FFC 800703FC 84C40000 */  lh    $a0, ($a2)
/* 071000 80070400 46004302 */  mul.s $f12, $f8, $f0
/* 071004 80070404 0C01C1FE */  jal   func_800707F8
/* 071008 80070408 00000000 */   nop   
/* 07100C 8007040C 46002102 */  mul.s $f4, $f4, $f0
/* 071010 80070410 84C40002 */  lh    $a0, 2($a2)
/* 071014 80070414 46004202 */  mul.s $f8, $f8, $f0
/* 071018 80070418 460C2100 */  add.s $f4, $f4, $f12
/* 07101C 8007041C 0C01C1F1 */  jal   func_800707C4
/* 071020 80070420 460A4201 */   sub.s $f8, $f8, $f10
/* 071024 80070424 46003282 */  mul.s $f10, $f6, $f0
/* 071028 80070428 84C40002 */  lh    $a0, 2($a2)
/* 07102C 8007042C 46004302 */  mul.s $f12, $f8, $f0
/* 071030 80070430 0C01C1FE */  jal   func_800707F8
/* 071034 80070434 00000000 */   nop   
/* 071038 80070438 46003182 */  mul.s $f6, $f6, $f0
/* 07103C 8007043C 84C40004 */  lh    $a0, 4($a2)
/* 071040 80070440 46004202 */  mul.s $f8, $f8, $f0
/* 071044 80070444 460C3181 */  sub.s $f6, $f6, $f12
/* 071048 80070448 0C01C1F1 */  jal   func_800707C4
/* 07104C 8007044C 460A4200 */   add.s $f8, $f8, $f10
/* 071050 80070450 46002282 */  mul.s $f10, $f4, $f0
/* 071054 80070454 84C40004 */  lh    $a0, 4($a2)
/* 071058 80070458 46003302 */  mul.s $f12, $f6, $f0
/* 07105C 8007045C 0C01C1FE */  jal   func_800707F8
/* 071060 80070460 00000000 */   nop   
/* 071064 80070464 46002102 */  mul.s $f4, $f4, $f0
/* 071068 80070468 E4A80008 */  swc1  $f8, 8($a1)
/* 07106C 8007046C 46003182 */  mul.s $f6, $f6, $f0
/* 071070 80070470 460C2101 */  sub.s $f4, $f4, $f12
/* 071074 80070474 460A3180 */  add.s $f6, $f6, $f10
/* 071078 80070478 E4A40000 */  swc1  $f4, ($a1)
/* 07107C 8007047C E4A60004 */  swc1  $f6, 4($a1)
/* 071080 80070480 DFBF0000 */  ld    $ra, ($sp)
/* 071084 80070484 27BD0008 */  addiu $sp, $sp, 8
/* 071088 80070488 03E00008 */  jr    $ra
/* 07108C 8007048C 00000000 */   nop   
