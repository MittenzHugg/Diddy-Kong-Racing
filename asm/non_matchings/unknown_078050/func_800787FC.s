glabel func_800787FC
/* 0793FC 800787FC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 079400 80078800 AFBF001C */  sw    $ra, 0x1c($sp)
/* 079404 80078804 AFB00018 */  sw    $s0, 0x18($sp)
/* 079408 80078808 0C01E948 */  jal   func_8007A520
/* 07940C 8007880C 00808025 */   move  $s0, $a0
/* 079410 80078810 00027403 */  sra   $t6, $v0, 0x10
/* 079414 80078814 31DFFFFF */  andi  $ra, $t6, 0xffff
/* 079418 80078818 AFBF0020 */  sw    $ra, 0x20($sp)
/* 07941C 8007881C 8E030000 */  lw    $v1, ($s0)
/* 079420 80078820 3C0E800E */  lui   $t6, %hi(D_800DE5E0) # $t6, 0x800e
/* 079424 80078824 24780008 */  addiu $t8, $v1, 8
/* 079428 80078828 AE180000 */  sw    $t8, ($s0)
/* 07942C 8007882C 25CEE5E0 */  addiu $t6, %lo(D_800DE5E0) # addiu $t6, $t6, -0x1a20
/* 079430 80078830 3C190600 */  lui   $t9, 0x600
/* 079434 80078834 AC790000 */  sw    $t9, ($v1)
/* 079438 80078838 AC6E0004 */  sw    $t6, 4($v1)
/* 07943C 8007883C 8E030000 */  lw    $v1, ($s0)
/* 079440 80078840 3C18FA00 */  lui   $t8, 0xfa00
/* 079444 80078844 246F0008 */  addiu $t7, $v1, 8
/* 079448 80078848 AE0F0000 */  sw    $t7, ($s0)
/* 07944C 8007884C 3C198012 */  lui   $t9, %hi(D_80125F30) # $t9, 0x8012
/* 079450 80078850 AC780000 */  sw    $t8, ($v1)
/* 079454 80078854 932E5F30 */  lbu   $t6, %lo(D_80125F30)($t9)
/* 079458 80078858 3C188012 */  lui   $t8, %hi(D_80125F31) # $t8, 0x8012
/* 07945C 8007885C 93195F31 */  lbu   $t9, %lo(D_80125F31)($t8)
/* 079460 80078860 000E7E00 */  sll   $t7, $t6, 0x18
/* 079464 80078864 00197400 */  sll   $t6, $t9, 0x10
/* 079468 80078868 01EEC025 */  or    $t8, $t7, $t6
/* 07946C 8007886C 3C198012 */  lui   $t9, %hi(D_80125F32) # $t9, 0x8012
/* 079470 80078870 932F5F32 */  lbu   $t7, %lo(D_80125F32)($t9)
/* 079474 80078874 304DFFFF */  andi  $t5, $v0, 0xffff
/* 079478 80078878 000F7200 */  sll   $t6, $t7, 8
/* 07947C 8007887C 030EC825 */  or    $t9, $t8, $t6
/* 079480 80078880 3C0F8012 */  lui   $t7, %hi(D_80125F33) # $t7, 0x8012
/* 079484 80078884 91F85F33 */  lbu   $t8, %lo(D_80125F33)($t7)
/* 079488 80078888 01A05825 */  move  $t3, $t5
/* 07948C 8007888C 03387025 */  or    $t6, $t9, $t8
/* 079490 80078890 AC6E0004 */  sw    $t6, 4($v1)
/* 079494 80078894 8FAF0020 */  lw    $t7, 0x20($sp)
/* 079498 80078898 00004025 */  move  $t0, $zero
/* 07949C 8007889C 19E00032 */  blez  $t7, .L80078968
/* 0794A0 800788A0 00006025 */   move  $t4, $zero
/* 0794A4 800788A4 3C068012 */  lui   $a2, %hi(D_80125F38) # $a2, 0x8012
/* 0794A8 800788A8 3C098012 */  lui   $t1, %hi(D_80125F3C) # $t1, 0x8012
/* 0794AC 800788AC 3C078012 */  lui   $a3, %hi(D_80125F38) # $a3, 0x8012
/* 0794B0 800788B0 8CC65F38 */  lw    $a2, %lo(D_80125F38)($a2)
/* 0794B4 800788B4 24E75F38 */  addiu $a3, %lo(D_80125F38) # addiu $a3, $a3, 0x5f38
/* 0794B8 800788B8 25295F3C */  addiu $t1, %lo(D_80125F3C) # addiu $t1, $t1, 0x5f3c
/* 0794BC 800788BC 3C0AF600 */  lui   $t2, 0xf600
.L800788C0:
/* 0794C0 800788C0 01860019 */  multu $t4, $a2
/* 0794C4 800788C4 310503FF */  andi  $a1, $t0, 0x3ff
/* 0794C8 800788C8 0005C880 */  sll   $t9, $a1, 2
/* 0794CC 800788CC 03202825 */  move  $a1, $t9
/* 0794D0 800788D0 00001012 */  mflo  $v0
/* 0794D4 800788D4 004D082A */  slt   $at, $v0, $t5
/* 0794D8 800788D8 1020001C */  beqz  $at, .L8007894C
/* 0794DC 800788DC 00000000 */   nop   
.L800788E0:
/* 0794E0 800788E0 8E030000 */  lw    $v1, ($s0)
/* 0794E4 800788E4 00000000 */  nop   
/* 0794E8 800788E8 24780008 */  addiu $t8, $v1, 8
/* 0794EC 800788EC AE180000 */  sw    $t8, ($s0)
/* 0794F0 800788F0 8CEE0000 */  lw    $t6, ($a3)
/* 0794F4 800788F4 00000000 */  nop   
/* 0794F8 800788F8 004E7821 */  addu  $t7, $v0, $t6
/* 0794FC 800788FC 31F903FF */  andi  $t9, $t7, 0x3ff
/* 079500 80078900 8D2F0000 */  lw    $t7, ($t1)
/* 079504 80078904 0019C380 */  sll   $t8, $t9, 0xe
/* 079508 80078908 030A7025 */  or    $t6, $t8, $t2
/* 07950C 8007890C 010FC821 */  addu  $t9, $t0, $t7
/* 079510 80078910 333803FF */  andi  $t8, $t9, 0x3ff
/* 079514 80078914 00187880 */  sll   $t7, $t8, 2
/* 079518 80078918 01CFC825 */  or    $t9, $t6, $t7
/* 07951C 8007891C 305803FF */  andi  $t8, $v0, 0x3ff
/* 079520 80078920 00187380 */  sll   $t6, $t8, 0xe
/* 079524 80078924 01C57825 */  or    $t7, $t6, $a1
/* 079528 80078928 AC6F0004 */  sw    $t7, 4($v1)
/* 07952C 8007892C AC790000 */  sw    $t9, ($v1)
/* 079530 80078930 8CE60000 */  lw    $a2, ($a3)
/* 079534 80078934 00000000 */  nop   
/* 079538 80078938 0006C840 */  sll   $t9, $a2, 1
/* 07953C 8007893C 00591021 */  addu  $v0, $v0, $t9
/* 079540 80078940 004B082A */  slt   $at, $v0, $t3
/* 079544 80078944 1420FFE6 */  bnez  $at, .L800788E0
/* 079548 80078948 00000000 */   nop   
.L8007894C:
/* 07954C 8007894C 8D380000 */  lw    $t8, ($t1)
/* 079550 80078950 398E0001 */  xori  $t6, $t4, 1
/* 079554 80078954 01184021 */  addu  $t0, $t0, $t8
/* 079558 80078958 011F082A */  slt   $at, $t0, $ra
/* 07955C 8007895C 1420FFD8 */  bnez  $at, .L800788C0
/* 079560 80078960 01C06025 */   move  $t4, $t6
/* 079564 80078964 00004025 */  move  $t0, $zero
.L80078968:
/* 079568 80078968 8E030000 */  lw    $v1, ($s0)
/* 07956C 8007896C 3C19FA00 */  lui   $t9, 0xfa00
/* 079570 80078970 246F0008 */  addiu $t7, $v1, 8
/* 079574 80078974 AE0F0000 */  sw    $t7, ($s0)
/* 079578 80078978 3C188012 */  lui   $t8, %hi(D_80125F34) # $t8, 0x8012
/* 07957C 8007897C AC790000 */  sw    $t9, ($v1)
/* 079580 80078980 930E5F34 */  lbu   $t6, %lo(D_80125F34)($t8)
/* 079584 80078984 3C198012 */  lui   $t9, %hi(D_80125F35) # $t9, 0x8012
/* 079588 80078988 93385F35 */  lbu   $t8, %lo(D_80125F35)($t9)
/* 07958C 8007898C 000E7E00 */  sll   $t7, $t6, 0x18
/* 079590 80078990 00187400 */  sll   $t6, $t8, 0x10
/* 079594 80078994 01EEC825 */  or    $t9, $t7, $t6
/* 079598 80078998 3C188012 */  lui   $t8, %hi(D_80125F36) # $t8, 0x8012
/* 07959C 8007899C 930F5F36 */  lbu   $t7, %lo(D_80125F36)($t8)
/* 0795A0 800789A0 3C078012 */  lui   $a3, %hi(D_80125F38) # $a3, 0x8012
/* 0795A4 800789A4 000F7200 */  sll   $t6, $t7, 8
/* 0795A8 800789A8 032EC025 */  or    $t8, $t9, $t6
/* 0795AC 800789AC 3C0F8012 */  lui   $t7, %hi(D_80125F37) # $t7, 0x8012
/* 0795B0 800789B0 91F95F37 */  lbu   $t9, %lo(D_80125F37)($t7)
/* 0795B4 800789B4 3C098012 */  lui   $t1, %hi(D_80125F3C) # $t1, 0x8012
/* 0795B8 800789B8 03197025 */  or    $t6, $t8, $t9
/* 0795BC 800789BC AC6E0004 */  sw    $t6, 4($v1)
/* 0795C0 800789C0 8FAF0020 */  lw    $t7, 0x20($sp)
/* 0795C4 800789C4 25295F3C */  addiu $t1, %lo(D_80125F3C) # addiu $t1, $t1, 0x5f3c
/* 0795C8 800789C8 24E75F38 */  addiu $a3, %lo(D_80125F38) # addiu $a3, $a3, 0x5f38
/* 0795CC 800789CC 3C0AF600 */  lui   $t2, 0xf600
/* 0795D0 800789D0 19E0002C */  blez  $t7, .L80078A84
/* 0795D4 800789D4 240C0001 */   li    $t4, 1
/* 0795D8 800789D8 8CE60000 */  lw    $a2, ($a3)
/* 0795DC 800789DC 00000000 */  nop   
.L800789E0:
/* 0795E0 800789E0 01860019 */  multu $t4, $a2
/* 0795E4 800789E4 310503FF */  andi  $a1, $t0, 0x3ff
/* 0795E8 800789E8 0005C080 */  sll   $t8, $a1, 2
/* 0795EC 800789EC 03002825 */  move  $a1, $t8
/* 0795F0 800789F0 00001012 */  mflo  $v0
/* 0795F4 800789F4 004D082A */  slt   $at, $v0, $t5
/* 0795F8 800789F8 1020001C */  beqz  $at, .L80078A6C
/* 0795FC 800789FC 00000000 */   nop   
.L80078A00:
/* 079600 80078A00 8E030000 */  lw    $v1, ($s0)
/* 079604 80078A04 00000000 */  nop   
/* 079608 80078A08 24790008 */  addiu $t9, $v1, 8
/* 07960C 80078A0C AE190000 */  sw    $t9, ($s0)
/* 079610 80078A10 8CEE0000 */  lw    $t6, ($a3)
/* 079614 80078A14 00000000 */  nop   
/* 079618 80078A18 004E7821 */  addu  $t7, $v0, $t6
/* 07961C 80078A1C 31F803FF */  andi  $t8, $t7, 0x3ff
/* 079620 80078A20 8D2F0000 */  lw    $t7, ($t1)
/* 079624 80078A24 0018CB80 */  sll   $t9, $t8, 0xe
/* 079628 80078A28 032A7025 */  or    $t6, $t9, $t2
/* 07962C 80078A2C 010FC021 */  addu  $t8, $t0, $t7
/* 079630 80078A30 331903FF */  andi  $t9, $t8, 0x3ff
/* 079634 80078A34 00197880 */  sll   $t7, $t9, 2
/* 079638 80078A38 01CFC025 */  or    $t8, $t6, $t7
/* 07963C 80078A3C 305903FF */  andi  $t9, $v0, 0x3ff
/* 079640 80078A40 00197380 */  sll   $t6, $t9, 0xe
/* 079644 80078A44 01C57825 */  or    $t7, $t6, $a1
/* 079648 80078A48 AC6F0004 */  sw    $t7, 4($v1)
/* 07964C 80078A4C AC780000 */  sw    $t8, ($v1)
/* 079650 80078A50 8CE60000 */  lw    $a2, ($a3)
/* 079654 80078A54 00000000 */  nop   
/* 079658 80078A58 0006C040 */  sll   $t8, $a2, 1
/* 07965C 80078A5C 00581021 */  addu  $v0, $v0, $t8
/* 079660 80078A60 004B082A */  slt   $at, $v0, $t3
/* 079664 80078A64 1420FFE6 */  bnez  $at, .L80078A00
/* 079668 80078A68 00000000 */   nop   
.L80078A6C:
/* 07966C 80078A6C 8D390000 */  lw    $t9, ($t1)
/* 079670 80078A70 398E0001 */  xori  $t6, $t4, 1
/* 079674 80078A74 01194021 */  addu  $t0, $t0, $t9
/* 079678 80078A78 011F082A */  slt   $at, $t0, $ra
/* 07967C 80078A7C 1420FFD8 */  bnez  $at, .L800789E0
/* 079680 80078A80 01C06025 */   move  $t4, $t6
.L80078A84:
/* 079684 80078A84 8E030000 */  lw    $v1, ($s0)
/* 079688 80078A88 3C18E700 */  lui   $t8, 0xe700
/* 07968C 80078A8C 246F0008 */  addiu $t7, $v1, 8
/* 079690 80078A90 AE0F0000 */  sw    $t7, ($s0)
/* 079694 80078A94 AC600004 */  sw    $zero, 4($v1)
/* 079698 80078A98 AC780000 */  sw    $t8, ($v1)
/* 07969C 80078A9C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0796A0 80078AA0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0796A4 80078AA4 03E00008 */  jr    $ra
/* 0796A8 80078AA8 27BD0050 */   addiu $sp, $sp, 0x50

