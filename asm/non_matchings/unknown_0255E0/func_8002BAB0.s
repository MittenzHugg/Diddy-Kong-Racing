glabel func_8002BAB0
/* 02C6B0 8002BAB0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 02C6B4 8002BAB4 AFB40020 */  sw    $s4, 0x20($sp)
/* 02C6B8 8002BAB8 44856000 */  mtc1  $a1, $f12
/* 02C6BC 8002BABC 44867000 */  mtc1  $a2, $f14
/* 02C6C0 8002BAC0 00E0A025 */  move  $s4, $a3
/* 02C6C4 8002BAC4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 02C6C8 8002BAC8 AFBE0030 */  sw    $fp, 0x30($sp)
/* 02C6CC 8002BACC AFB7002C */  sw    $s7, 0x2c($sp)
/* 02C6D0 8002BAD0 AFB60028 */  sw    $s6, 0x28($sp)
/* 02C6D4 8002BAD4 AFB50024 */  sw    $s5, 0x24($sp)
/* 02C6D8 8002BAD8 AFB3001C */  sw    $s3, 0x1c($sp)
/* 02C6DC 8002BADC AFB20018 */  sw    $s2, 0x18($sp)
/* 02C6E0 8002BAE0 AFB10014 */  sw    $s1, 0x14($sp)
/* 02C6E4 8002BAE4 AFB00010 */  sw    $s0, 0x10($sp)
/* 02C6E8 8002BAE8 E7B50008 */  swc1  $f21, 8($sp)
/* 02C6EC 8002BAEC 04800009 */  bltz  $a0, .L8002BB14
/* 02C6F0 8002BAF0 E7B4000C */   swc1  $f20, 0xc($sp)
/* 02C6F4 8002BAF4 3C02800E */  lui   $v0, %hi(D_800DC918) # $v0, 0x800e
/* 02C6F8 8002BAF8 8C42C918 */  lw    $v0, %lo(D_800DC918)($v0)
/* 02C6FC 8002BAFC 0004C100 */  sll   $t8, $a0, 4
/* 02C700 8002BB00 844E001A */  lh    $t6, 0x1a($v0)
/* 02C704 8002BB04 0304C021 */  addu  $t8, $t8, $a0
/* 02C708 8002BB08 008E082A */  slt   $at, $a0, $t6
/* 02C70C 8002BB0C 14200003 */  bnez  $at, .L8002BB1C
/* 02C710 8002BB10 0018C080 */   sll   $t8, $t8, 2
.L8002BB14:
/* 02C714 8002BB14 1000015D */  b     .L8002C08C
/* 02C718 8002BB18 00001025 */   move  $v0, $zero
.L8002BB1C:
/* 02C71C 8002BB1C 00047080 */  sll   $t6, $a0, 2
/* 02C720 8002BB20 8C590008 */  lw    $t9, 8($v0)
/* 02C724 8002BB24 01C47023 */  subu  $t6, $t6, $a0
/* 02C728 8002BB28 000E7080 */  sll   $t6, $t6, 2
/* 02C72C 8002BB2C 8C4F0004 */  lw    $t7, 4($v0)
/* 02C730 8002BB30 032E1821 */  addu  $v1, $t9, $t6
/* 02C734 8002BB34 444EF800 */  cfc1  $t6, $31
/* 02C738 8002BB38 01F86021 */  addu  $t4, $t7, $t8
/* 02C73C 8002BB3C 846F0006 */  lh    $t7, 6($v1)
/* 02C740 8002BB40 84670000 */  lh    $a3, ($v1)
/* 02C744 8002BB44 35C10003 */  ori   $at, $t6, 3
/* 02C748 8002BB48 38210002 */  xori  $at, $at, 2
/* 02C74C 8002BB4C 01E73023 */  subu  $a2, $t7, $a3
/* 02C750 8002BB50 44C1F800 */  ctc1  $at, $31
/* 02C754 8002BB54 0006C0C3 */  sra   $t8, $a2, 3
/* 02C758 8002BB58 27060001 */  addiu $a2, $t8, 1
/* 02C75C 8002BB5C 46006124 */  cvt.w.s $f4, $f12
/* 02C760 8002BB60 0006CC00 */  sll   $t9, $a2, 0x10
/* 02C764 8002BB64 00193403 */  sra   $a2, $t9, 0x10
/* 02C768 8002BB68 00C74021 */  addu  $t0, $a2, $a3
/* 02C76C 8002BB6C 00074C00 */  sll   $t1, $a3, 0x10
/* 02C770 8002BB70 44CEF800 */  ctc1  $t6, $31
/* 02C774 8002BB74 00087C00 */  sll   $t7, $t0, 0x10
/* 02C778 8002BB78 0009CC03 */  sra   $t9, $t1, 0x10
/* 02C77C 8002BB7C 44132000 */  mfc1  $s3, $f4
/* 02C780 8002BB80 24050001 */  li    $a1, 1
/* 02C784 8002BB84 00008825 */  move  $s1, $zero
/* 02C788 8002BB88 000F4403 */  sra   $t0, $t7, 0x10
/* 02C78C 8002BB8C 03204825 */  move  $t1, $t9
/* 02C790 8002BB90 00005025 */  move  $t2, $zero
.L8002BB94:
/* 02C794 8002BB94 0113082A */  slt   $at, $t0, $s3
/* 02C798 8002BB98 14200007 */  bnez  $at, .L8002BBB8
/* 02C79C 8002BB9C 01064021 */   addu  $t0, $t0, $a2
/* 02C7A0 8002BBA0 0269082A */  slt   $at, $s3, $t1
/* 02C7A4 8002BBA4 14200005 */  bnez  $at, .L8002BBBC
/* 02C7A8 8002BBA8 0008CC00 */   sll   $t9, $t0, 0x10
/* 02C7AC 8002BBAC 02258825 */  or    $s1, $s1, $a1
/* 02C7B0 8002BBB0 00117C00 */  sll   $t7, $s1, 0x10
/* 02C7B4 8002BBB4 000F8C03 */  sra   $s1, $t7, 0x10
.L8002BBB8:
/* 02C7B8 8002BBB8 0008CC00 */  sll   $t9, $t0, 0x10
.L8002BBBC:
/* 02C7BC 8002BBBC 00194403 */  sra   $t0, $t9, 0x10
/* 02C7C0 8002BBC0 254A0001 */  addiu $t2, $t2, 1
/* 02C7C4 8002BBC4 01264821 */  addu  $t1, $t1, $a2
/* 02C7C8 8002BBC8 00A0C825 */  move  $t9, $a1
/* 02C7CC 8002BBCC 29410008 */  slti  $at, $t2, 8
/* 02C7D0 8002BBD0 00097C00 */  sll   $t7, $t1, 0x10
/* 02C7D4 8002BBD4 00197440 */  sll   $t6, $t9, 0x11
/* 02C7D8 8002BBD8 000F4C03 */  sra   $t1, $t7, 0x10
/* 02C7DC 8002BBDC 1420FFED */  bnez  $at, .L8002BB94
/* 02C7E0 8002BBE0 000E2C03 */   sra   $a1, $t6, 0x10
/* 02C7E4 8002BBE4 84620004 */  lh    $v0, 4($v1)
/* 02C7E8 8002BBE8 8478000A */  lh    $t8, 0xa($v1)
/* 02C7EC 8002BBEC 444FF800 */  cfc1  $t7, $31
/* 02C7F0 8002BBF0 03023023 */  subu  $a2, $t8, $v0
/* 02C7F4 8002BBF4 35E10003 */  ori   $at, $t7, 3
/* 02C7F8 8002BBF8 0006C8C3 */  sra   $t9, $a2, 3
/* 02C7FC 8002BBFC 38210002 */  xori  $at, $at, 2
/* 02C800 8002BC00 44C1F800 */  ctc1  $at, $31
/* 02C804 8002BC04 27260001 */  addiu $a2, $t9, 1
/* 02C808 8002BC08 00067400 */  sll   $t6, $a2, 0x10
/* 02C80C 8002BC0C 460071A4 */  cvt.w.s $f6, $f14
/* 02C810 8002BC10 000E3403 */  sra   $a2, $t6, 0x10
/* 02C814 8002BC14 00C24021 */  addu  $t0, $a2, $v0
/* 02C818 8002BC18 00024C00 */  sll   $t1, $v0, 0x10
/* 02C81C 8002BC1C 44CFF800 */  ctc1  $t7, $31
/* 02C820 8002BC20 0008C400 */  sll   $t8, $t0, 0x10
/* 02C824 8002BC24 00097403 */  sra   $t6, $t1, 0x10
/* 02C828 8002BC28 44103000 */  mfc1  $s0, $f6
/* 02C82C 8002BC2C 00184403 */  sra   $t0, $t8, 0x10
/* 02C830 8002BC30 01C04825 */  move  $t1, $t6
/* 02C834 8002BC34 24020008 */  li    $v0, 8
/* 02C838 8002BC38 00005025 */  move  $t2, $zero
.L8002BC3C:
/* 02C83C 8002BC3C 0110082A */  slt   $at, $t0, $s0
/* 02C840 8002BC40 14200007 */  bnez  $at, .L8002BC60
/* 02C844 8002BC44 01064021 */   addu  $t0, $t0, $a2
/* 02C848 8002BC48 0209082A */  slt   $at, $s0, $t1
/* 02C84C 8002BC4C 14200005 */  bnez  $at, .L8002BC64
/* 02C850 8002BC50 00087400 */   sll   $t6, $t0, 0x10
/* 02C854 8002BC54 02258825 */  or    $s1, $s1, $a1
/* 02C858 8002BC58 0011C400 */  sll   $t8, $s1, 0x10
/* 02C85C 8002BC5C 00188C03 */  sra   $s1, $t8, 0x10
.L8002BC60:
/* 02C860 8002BC60 00087400 */  sll   $t6, $t0, 0x10
.L8002BC64:
/* 02C864 8002BC64 000E4403 */  sra   $t0, $t6, 0x10
/* 02C868 8002BC68 01264821 */  addu  $t1, $t1, $a2
/* 02C86C 8002BC6C 0009C400 */  sll   $t8, $t1, 0x10
/* 02C870 8002BC70 00A07025 */  move  $t6, $a1
/* 02C874 8002BC74 0018CC03 */  sra   $t9, $t8, 0x10
/* 02C878 8002BC78 000E7C40 */  sll   $t7, $t6, 0x11
/* 02C87C 8002BC7C 0110082A */  slt   $at, $t0, $s0
/* 02C880 8002BC80 000FC403 */  sra   $t8, $t7, 0x10
/* 02C884 8002BC84 03204825 */  move  $t1, $t9
/* 02C888 8002BC88 14200007 */  bnez  $at, .L8002BCA8
/* 02C88C 8002BC8C 03002825 */   move  $a1, $t8
/* 02C890 8002BC90 0219082A */  slt   $at, $s0, $t9
/* 02C894 8002BC94 14200004 */  bnez  $at, .L8002BCA8
/* 02C898 8002BC98 00000000 */   nop   
/* 02C89C 8002BC9C 02388825 */  or    $s1, $s1, $t8
/* 02C8A0 8002BCA0 0011CC00 */  sll   $t9, $s1, 0x10
/* 02C8A4 8002BCA4 00198C03 */  sra   $s1, $t9, 0x10
.L8002BCA8:
/* 02C8A8 8002BCA8 01064021 */  addu  $t0, $t0, $a2
/* 02C8AC 8002BCAC 00087C00 */  sll   $t7, $t0, 0x10
/* 02C8B0 8002BCB0 000F4403 */  sra   $t0, $t7, 0x10
/* 02C8B4 8002BCB4 01264821 */  addu  $t1, $t1, $a2
/* 02C8B8 8002BCB8 0009CC00 */  sll   $t9, $t1, 0x10
/* 02C8BC 8002BCBC 00A07825 */  move  $t7, $a1
/* 02C8C0 8002BCC0 000FC440 */  sll   $t8, $t7, 0x11
/* 02C8C4 8002BCC4 00197403 */  sra   $t6, $t9, 0x10
/* 02C8C8 8002BCC8 0018CC03 */  sra   $t9, $t8, 0x10
/* 02C8CC 8002BCCC 0110082A */  slt   $at, $t0, $s0
/* 02C8D0 8002BCD0 03202825 */  move  $a1, $t9
/* 02C8D4 8002BCD4 14200007 */  bnez  $at, .L8002BCF4
/* 02C8D8 8002BCD8 01C04825 */   move  $t1, $t6
/* 02C8DC 8002BCDC 020E082A */  slt   $at, $s0, $t6
/* 02C8E0 8002BCE0 14200004 */  bnez  $at, .L8002BCF4
/* 02C8E4 8002BCE4 00000000 */   nop   
/* 02C8E8 8002BCE8 02398825 */  or    $s1, $s1, $t9
/* 02C8EC 8002BCEC 00117400 */  sll   $t6, $s1, 0x10
/* 02C8F0 8002BCF0 000E8C03 */  sra   $s1, $t6, 0x10
.L8002BCF4:
/* 02C8F4 8002BCF4 01064021 */  addu  $t0, $t0, $a2
/* 02C8F8 8002BCF8 0008C400 */  sll   $t8, $t0, 0x10
/* 02C8FC 8002BCFC 00184403 */  sra   $t0, $t8, 0x10
/* 02C900 8002BD00 01264821 */  addu  $t1, $t1, $a2
/* 02C904 8002BD04 00097400 */  sll   $t6, $t1, 0x10
/* 02C908 8002BD08 00A0C025 */  move  $t8, $a1
/* 02C90C 8002BD0C 0018CC40 */  sll   $t9, $t8, 0x11
/* 02C910 8002BD10 000E7C03 */  sra   $t7, $t6, 0x10
/* 02C914 8002BD14 00197403 */  sra   $t6, $t9, 0x10
/* 02C918 8002BD18 0110082A */  slt   $at, $t0, $s0
/* 02C91C 8002BD1C 01C02825 */  move  $a1, $t6
/* 02C920 8002BD20 14200007 */  bnez  $at, .L8002BD40
/* 02C924 8002BD24 01E04825 */   move  $t1, $t7
/* 02C928 8002BD28 020F082A */  slt   $at, $s0, $t7
/* 02C92C 8002BD2C 14200004 */  bnez  $at, .L8002BD40
/* 02C930 8002BD30 00000000 */   nop   
/* 02C934 8002BD34 022E8825 */  or    $s1, $s1, $t6
/* 02C938 8002BD38 00117C00 */  sll   $t7, $s1, 0x10
/* 02C93C 8002BD3C 000F8C03 */  sra   $s1, $t7, 0x10
.L8002BD40:
/* 02C940 8002BD40 01064021 */  addu  $t0, $t0, $a2
/* 02C944 8002BD44 0008CC00 */  sll   $t9, $t0, 0x10
/* 02C948 8002BD48 00194403 */  sra   $t0, $t9, 0x10
/* 02C94C 8002BD4C 00A0C825 */  move  $t9, $a1
/* 02C950 8002BD50 01264821 */  addu  $t1, $t1, $a2
/* 02C954 8002BD54 00097C00 */  sll   $t7, $t1, 0x10
/* 02C958 8002BD58 00197440 */  sll   $t6, $t9, 0x11
/* 02C95C 8002BD5C 254A0004 */  addiu $t2, $t2, 4
/* 02C960 8002BD60 000E2C03 */  sra   $a1, $t6, 0x10
/* 02C964 8002BD64 1542FFB5 */  bne   $t2, $v0, .L8002BC3C
/* 02C968 8002BD68 000F4C03 */   sra   $t1, $t7, 0x10
/* 02C96C 8002BD6C 85820020 */  lh    $v0, 0x20($t4)
/* 02C970 8002BD70 00009025 */  move  $s2, $zero
/* 02C974 8002BD74 1840007C */  blez  $v0, .L8002BF68
/* 02C978 8002BD78 0000A825 */   move  $s5, $zero
/* 02C97C 8002BD7C 4480A800 */  mtc1  $zero, $f21
/* 02C980 8002BD80 4480A000 */  mtc1  $zero, $f20
/* 02C984 8002BD84 0000B025 */  move  $s6, $zero
/* 02C988 8002BD88 240B000A */  li    $t3, 10
.L8002BD8C:
/* 02C98C 8002BD8C 8D98000C */  lw    $t8, 0xc($t4)
/* 02C990 8002BD90 26B50001 */  addiu $s5, $s5, 1
/* 02C994 8002BD94 03162021 */  addu  $a0, $t8, $s6
/* 02C998 8002BD98 84830004 */  lh    $v1, 4($a0)
/* 02C99C 8002BD9C 848D0010 */  lh    $t5, 0x10($a0)
/* 02C9A0 8002BDA0 84890002 */  lh    $t1, 2($a0)
/* 02C9A4 8002BDA4 006D082A */  slt   $at, $v1, $t5
/* 02C9A8 8002BDA8 1020006C */  beqz  $at, .L8002BF5C
/* 02C9AC 8002BDAC 00603025 */   move  $a2, $v1
/* 02C9B0 8002BDB0 00035040 */  sll   $t2, $v1, 1
.L8002BDB4:
/* 02C9B4 8002BDB4 8D990010 */  lw    $t9, 0x10($t4)
/* 02C9B8 8002BDB8 00000000 */  nop   
/* 02C9BC 8002BDBC 032A7021 */  addu  $t6, $t9, $t2
/* 02C9C0 8002BDC0 85CF0000 */  lh    $t7, ($t6)
/* 02C9C4 8002BDC4 00000000 */  nop   
/* 02C9C8 8002BDC8 01F1C024 */  and   $t8, $t7, $s1
/* 02C9CC 8002BDCC 1638005D */  bne   $s1, $t8, .L8002BF44
/* 02C9D0 8002BDD0 00000000 */   nop   
/* 02C9D4 8002BDD4 8D990004 */  lw    $t9, 4($t4)
/* 02C9D8 8002BDD8 00067100 */  sll   $t6, $a2, 4
/* 02C9DC 8002BDDC 032EF021 */  addu  $fp, $t9, $t6
/* 02C9E0 8002BDE0 93CF0001 */  lbu   $t7, 1($fp)
/* 02C9E4 8002BDE4 93CE0002 */  lbu   $t6, 2($fp)
/* 02C9E8 8002BDE8 01E9C021 */  addu  $t8, $t7, $t1
/* 02C9EC 8002BDEC 030B0019 */  multu $t8, $t3
/* 02C9F0 8002BDF0 01C97821 */  addu  $t7, $t6, $t1
/* 02C9F4 8002BDF4 8D9F0000 */  lw    $ra, ($t4)
/* 02C9F8 8002BDF8 0000C812 */  mflo  $t9
/* 02C9FC 8002BDFC 033FB821 */  addu  $s7, $t9, $ra
/* 02CA00 8002BE00 93D90003 */  lbu   $t9, 3($fp)
/* 02CA04 8002BE04 01EB0019 */  multu $t7, $t3
/* 02CA08 8002BE08 03297021 */  addu  $t6, $t9, $t1
/* 02CA0C 8002BE0C 86E20000 */  lh    $v0, ($s7)
/* 02CA10 8002BE10 86E30004 */  lh    $v1, 4($s7)
/* 02CA14 8002BE14 00000000 */  nop   
/* 02CA18 8002BE18 0203F023 */  subu  $fp, $s0, $v1
/* 02CA1C 8002BE1C 0000C012 */  mflo  $t8
/* 02CA20 8002BE20 031FB821 */  addu  $s7, $t8, $ra
/* 02CA24 8002BE24 86E40000 */  lh    $a0, ($s7)
/* 02CA28 8002BE28 01CB0019 */  multu $t6, $t3
/* 02CA2C 8002BE2C 86E50004 */  lh    $a1, 4($s7)
/* 02CA30 8002BE30 00827023 */  subu  $t6, $a0, $v0
/* 02CA34 8002BE34 00A3C023 */  subu  $t8, $a1, $v1
/* 02CA38 8002BE38 00007812 */  mflo  $t7
/* 02CA3C 8002BE3C 01FFB821 */  addu  $s7, $t7, $ra
/* 02CA40 8002BE40 86E70000 */  lh    $a3, ($s7)
/* 02CA44 8002BE44 86E80004 */  lh    $t0, 4($s7)
/* 02CA48 8002BE48 0262B823 */  subu  $s7, $s3, $v0
/* 02CA4C 8002BE4C 02F80019 */  multu $s7, $t8
/* 02CA50 8002BE50 0000C812 */  mflo  $t9
/* 02CA54 8002BE54 00000000 */  nop   
/* 02CA58 8002BE58 00000000 */  nop   
/* 02CA5C 8002BE5C 01DE0019 */  multu $t6, $fp
/* 02CA60 8002BE60 02647023 */  subu  $t6, $s3, $a0
/* 02CA64 8002BE64 00007812 */  mflo  $t7
/* 02CA68 8002BE68 032FF823 */  subu  $ra, $t9, $t7
/* 02CA6C 8002BE6C 0105C823 */  subu  $t9, $t0, $a1
/* 02CA70 8002BE70 01D90019 */  multu $t6, $t9
/* 02CA74 8002BE74 2BF80000 */  slti  $t8, $ra, 0
/* 02CA78 8002BE78 3B1F0001 */  xori  $ra, $t8, 1
/* 02CA7C 8002BE7C 02057023 */  subu  $t6, $s0, $a1
/* 02CA80 8002BE80 00E4C023 */  subu  $t8, $a3, $a0
/* 02CA84 8002BE84 00007812 */  mflo  $t7
/* 02CA88 8002BE88 00000000 */  nop   
/* 02CA8C 8002BE8C 00000000 */  nop   
/* 02CA90 8002BE90 030E0019 */  multu $t8, $t6
/* 02CA94 8002BE94 0000C812 */  mflo  $t9
/* 02CA98 8002BE98 01F9C023 */  subu  $t8, $t7, $t9
/* 02CA9C 8002BE9C 2B0E0000 */  slti  $t6, $t8, 0
/* 02CAA0 8002BEA0 39CE0001 */  xori  $t6, $t6, 1
/* 02CAA4 8002BEA4 15DF0027 */  bne   $t6, $ra, .L8002BF44
/* 02CAA8 8002BEA8 01037823 */   subu  $t7, $t0, $v1
/* 02CAAC 8002BEAC 02EF0019 */  multu $s7, $t7
/* 02CAB0 8002BEB0 00E2C023 */  subu  $t8, $a3, $v0
/* 02CAB4 8002BEB4 0000C812 */  mflo  $t9
/* 02CAB8 8002BEB8 00000000 */  nop   
/* 02CABC 8002BEBC 00000000 */  nop   
/* 02CAC0 8002BEC0 031E0019 */  multu $t8, $fp
/* 02CAC4 8002BEC4 00007012 */  mflo  $t6
/* 02CAC8 8002BEC8 032E7823 */  subu  $t7, $t9, $t6
/* 02CACC 8002BECC 29F80000 */  slti  $t8, $t7, 0
/* 02CAD0 8002BED0 3B180001 */  xori  $t8, $t8, 1
/* 02CAD4 8002BED4 13F8001B */  beq   $ra, $t8, .L8002BF44
/* 02CAD8 8002BED8 00000000 */   nop   
/* 02CADC 8002BEDC 8D990014 */  lw    $t9, 0x14($t4)
/* 02CAE0 8002BEE0 000670C0 */  sll   $t6, $a2, 3
/* 02CAE4 8002BEE4 032E7821 */  addu  $t7, $t9, $t6
/* 02CAE8 8002BEE8 95F90000 */  lhu   $t9, ($t7)
/* 02CAEC 8002BEEC 8D980018 */  lw    $t8, 0x18($t4)
/* 02CAF0 8002BEF0 00197100 */  sll   $t6, $t9, 4
/* 02CAF4 8002BEF4 030E1821 */  addu  $v1, $t8, $t6
/* 02CAF8 8002BEF8 C4620004 */  lwc1  $f2, 4($v1)
/* 02CAFC 8002BEFC C4600000 */  lwc1  $f0, ($v1)
/* 02CB00 8002BF00 46001221 */  cvt.d.s $f8, $f2
/* 02CB04 8002BF04 4628A032 */  c.eq.d $f20, $f8
/* 02CB08 8002BF08 C4700008 */  lwc1  $f16, 8($v1)
/* 02CB0C 8002BF0C C472000C */  lwc1  $f18, 0xc($v1)
/* 02CB10 8002BF10 4501000C */  bc1t  .L8002BF44
/* 02CB14 8002BF14 00000000 */   nop   
/* 02CB18 8002BF18 460C0282 */  mul.s $f10, $f0, $f12
/* 02CB1C 8002BF1C 00127880 */  sll   $t7, $s2, 2
/* 02CB20 8002BF20 028FC821 */  addu  $t9, $s4, $t7
/* 02CB24 8002BF24 26520001 */  addiu $s2, $s2, 1
/* 02CB28 8002BF28 460E8102 */  mul.s $f4, $f16, $f14
/* 02CB2C 8002BF2C 46045180 */  add.s $f6, $f10, $f4
/* 02CB30 8002BF30 46123200 */  add.s $f8, $f6, $f18
/* 02CB34 8002BF34 00000000 */  nop   
/* 02CB38 8002BF38 46024283 */  div.s $f10, $f8, $f2
/* 02CB3C 8002BF3C 46005107 */  neg.s $f4, $f10
/* 02CB40 8002BF40 E7240000 */  swc1  $f4, ($t9)
.L8002BF44:
/* 02CB44 8002BF44 24C60001 */  addiu $a2, $a2, 1
/* 02CB48 8002BF48 00CD082A */  slt   $at, $a2, $t5
/* 02CB4C 8002BF4C 1420FF99 */  bnez  $at, .L8002BDB4
/* 02CB50 8002BF50 254A0002 */   addiu $t2, $t2, 2
/* 02CB54 8002BF54 85820020 */  lh    $v0, 0x20($t4)
/* 02CB58 8002BF58 00000000 */  nop   
.L8002BF5C:
/* 02CB5C 8002BF5C 02A2082A */  slt   $at, $s5, $v0
/* 02CB60 8002BF60 1420FF8A */  bnez  $at, .L8002BD8C
/* 02CB64 8002BF64 26D6000C */   addiu $s6, $s6, 0xc
.L8002BF68:
/* 02CB68 8002BF68 2644FFFF */  addiu $a0, $s2, -1
/* 02CB6C 8002BF6C 24030001 */  li    $v1, 1
.L8002BF70:
/* 02CB70 8002BF70 18800043 */  blez  $a0, .L8002C080
/* 02CB74 8002BF74 00001025 */   move  $v0, $zero
/* 02CB78 8002BF78 2647FFFF */  addiu $a3, $s2, -1
/* 02CB7C 8002BF7C 30F80003 */  andi  $t8, $a3, 3
/* 02CB80 8002BF80 13000010 */  beqz  $t8, .L8002BFC4
/* 02CB84 8002BF84 03003025 */   move  $a2, $t8
/* 02CB88 8002BF88 00007080 */  sll   $t6, $zero, 2
/* 02CB8C 8002BF8C 028E2821 */  addu  $a1, $s4, $t6
.L8002BF90:
/* 02CB90 8002BF90 C4A00004 */  lwc1  $f0, 4($a1)
/* 02CB94 8002BF94 C4A20000 */  lwc1  $f2, ($a1)
/* 02CB98 8002BF98 24420001 */  addiu $v0, $v0, 1
/* 02CB9C 8002BF9C 4602003C */  c.lt.s $f0, $f2
/* 02CBA0 8002BFA0 00000000 */  nop   
/* 02CBA4 8002BFA4 45000004 */  bc1f  .L8002BFB8
/* 02CBA8 8002BFA8 00000000 */   nop   
/* 02CBAC 8002BFAC 00001825 */  move  $v1, $zero
/* 02CBB0 8002BFB0 E4A00000 */  swc1  $f0, ($a1)
/* 02CBB4 8002BFB4 E4A20004 */  swc1  $f2, 4($a1)
.L8002BFB8:
/* 02CBB8 8002BFB8 14C2FFF5 */  bne   $a2, $v0, .L8002BF90
/* 02CBBC 8002BFBC 24A50004 */   addiu $a1, $a1, 4
/* 02CBC0 8002BFC0 1044002F */  beq   $v0, $a0, .L8002C080
.L8002BFC4:
/* 02CBC4 8002BFC4 00027880 */   sll   $t7, $v0, 2
/* 02CBC8 8002BFC8 0004C880 */  sll   $t9, $a0, 2
/* 02CBCC 8002BFCC 03343021 */  addu  $a2, $t9, $s4
/* 02CBD0 8002BFD0 028F2821 */  addu  $a1, $s4, $t7
.L8002BFD4:
/* 02CBD4 8002BFD4 C4A00004 */  lwc1  $f0, 4($a1)
/* 02CBD8 8002BFD8 C4A20000 */  lwc1  $f2, ($a1)
/* 02CBDC 8002BFDC 00000000 */  nop   
/* 02CBE0 8002BFE0 4602003C */  c.lt.s $f0, $f2
/* 02CBE4 8002BFE4 00000000 */  nop   
/* 02CBE8 8002BFE8 45000005 */  bc1f  .L8002C000
/* 02CBEC 8002BFEC 00000000 */   nop   
/* 02CBF0 8002BFF0 E4A00000 */  swc1  $f0, ($a1)
/* 02CBF4 8002BFF4 E4A20004 */  swc1  $f2, 4($a1)
/* 02CBF8 8002BFF8 C4A00004 */  lwc1  $f0, 4($a1)
/* 02CBFC 8002BFFC 00001825 */  move  $v1, $zero
.L8002C000:
/* 02CC00 8002C000 C4A20008 */  lwc1  $f2, 8($a1)
/* 02CC04 8002C004 00000000 */  nop   
/* 02CC08 8002C008 4600103C */  c.lt.s $f2, $f0
/* 02CC0C 8002C00C 00000000 */  nop   
/* 02CC10 8002C010 45000005 */  bc1f  .L8002C028
/* 02CC14 8002C014 00000000 */   nop   
/* 02CC18 8002C018 E4A20004 */  swc1  $f2, 4($a1)
/* 02CC1C 8002C01C E4A00008 */  swc1  $f0, 8($a1)
/* 02CC20 8002C020 C4A20008 */  lwc1  $f2, 8($a1)
/* 02CC24 8002C024 00001825 */  move  $v1, $zero
.L8002C028:
/* 02CC28 8002C028 C4A0000C */  lwc1  $f0, 0xc($a1)
/* 02CC2C 8002C02C 00000000 */  nop   
/* 02CC30 8002C030 4602003C */  c.lt.s $f0, $f2
/* 02CC34 8002C034 00000000 */  nop   
/* 02CC38 8002C038 45000005 */  bc1f  .L8002C050
/* 02CC3C 8002C03C 00000000 */   nop   
/* 02CC40 8002C040 E4A00008 */  swc1  $f0, 8($a1)
/* 02CC44 8002C044 E4A2000C */  swc1  $f2, 0xc($a1)
/* 02CC48 8002C048 C4A0000C */  lwc1  $f0, 0xc($a1)
/* 02CC4C 8002C04C 00001825 */  move  $v1, $zero
.L8002C050:
/* 02CC50 8002C050 C4A20010 */  lwc1  $f2, 0x10($a1)
/* 02CC54 8002C054 00000000 */  nop   
/* 02CC58 8002C058 4600103C */  c.lt.s $f2, $f0
/* 02CC5C 8002C05C 00000000 */  nop   
/* 02CC60 8002C060 45000004 */  bc1f  .L8002C074
/* 02CC64 8002C064 00000000 */   nop   
/* 02CC68 8002C068 00001825 */  move  $v1, $zero
/* 02CC6C 8002C06C E4A2000C */  swc1  $f2, 0xc($a1)
/* 02CC70 8002C070 E4A00010 */  swc1  $f0, 0x10($a1)
.L8002C074:
/* 02CC74 8002C074 24A50010 */  addiu $a1, $a1, 0x10
/* 02CC78 8002C078 14A6FFD6 */  bne   $a1, $a2, .L8002BFD4
/* 02CC7C 8002C07C 00000000 */   nop   
.L8002C080:
/* 02CC80 8002C080 1060FFBB */  beqz  $v1, .L8002BF70
/* 02CC84 8002C084 24030001 */   li    $v1, 1
/* 02CC88 8002C088 02401025 */  move  $v0, $s2
.L8002C08C:
/* 02CC8C 8002C08C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 02CC90 8002C090 C7B50008 */  lwc1  $f21, 8($sp)
/* 02CC94 8002C094 C7B4000C */  lwc1  $f20, 0xc($sp)
/* 02CC98 8002C098 8FB00010 */  lw    $s0, 0x10($sp)
/* 02CC9C 8002C09C 8FB10014 */  lw    $s1, 0x14($sp)
/* 02CCA0 8002C0A0 8FB20018 */  lw    $s2, 0x18($sp)
/* 02CCA4 8002C0A4 8FB3001C */  lw    $s3, 0x1c($sp)
/* 02CCA8 8002C0A8 8FB40020 */  lw    $s4, 0x20($sp)
/* 02CCAC 8002C0AC 8FB50024 */  lw    $s5, 0x24($sp)
/* 02CCB0 8002C0B0 8FB60028 */  lw    $s6, 0x28($sp)
/* 02CCB4 8002C0B4 8FB7002C */  lw    $s7, 0x2c($sp)
/* 02CCB8 8002C0B8 8FBE0030 */  lw    $fp, 0x30($sp)
/* 02CCBC 8002C0BC 03E00008 */  jr    $ra
/* 02CCC0 8002C0C0 27BD0038 */   addiu $sp, $sp, 0x38

