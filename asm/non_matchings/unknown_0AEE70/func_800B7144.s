glabel func_800B7144
/* 0B7D44 800B7144 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B7D48 800B7148 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0B7D4C 800B714C AFB10018 */  sw    $s1, 0x18($sp)
/* 0B7D50 800B7150 0C03491C */  jal   func_800D2470
/* 0B7D54 800B7154 AFB00014 */   sw    $s0, 0x14($sp)
/* 0B7D58 800B7158 8C4E0004 */  lw    $t6, 4($v0)
/* 0B7D5C 800B715C 2411FFFF */  li    $s1, -1
/* 0B7D60 800B7160 122E000E */  beq   $s1, $t6, .L800B719C
/* 0B7D64 800B7164 00408025 */   move  $s0, $v0
/* 0B7D68 800B7168 01C01025 */  move  $v0, $t6
.L800B716C:
/* 0B7D6C 800B716C 18400005 */  blez  $v0, .L800B7184
/* 0B7D70 800B7170 28410080 */   slti  $at, $v0, 0x80
/* 0B7D74 800B7174 10200003 */  beqz  $at, .L800B7184
/* 0B7D78 800B7178 00000000 */   nop   
/* 0B7D7C 800B717C 0C0322BC */  jal   osStopThread
/* 0B7D80 800B7180 02002025 */   move  $a0, $s0
.L800B7184:
/* 0B7D84 800B7184 8E10000C */  lw    $s0, 0xc($s0)
/* 0B7D88 800B7188 00000000 */  nop   
/* 0B7D8C 800B718C 8E020004 */  lw    $v0, 4($s0)
/* 0B7D90 800B7190 00000000 */  nop   
/* 0B7D94 800B7194 1622FFF5 */  bne   $s1, $v0, .L800B716C
/* 0B7D98 800B7198 00000000 */   nop   
.L800B719C:
/* 0B7D9C 800B719C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0B7DA0 800B71A0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0B7DA4 800B71A4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0B7DA8 800B71A8 03E00008 */  jr    $ra
/* 0B7DAC 800B71AC 27BD0020 */   addiu $sp, $sp, 0x20

