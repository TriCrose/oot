glabel func_800E283C
/* B599DC 800E283C 27BDFF90 */  addiu $sp, $sp, -0x70
/* B599E0 800E2840 00047080 */  sll   $t6, $a0, 2
/* B599E4 800E2844 3C0F8017 */  lui   $t7, %hi(gAudioContext+0x2844) # $t7, 0x8017
/* B599E8 800E2848 8DEF19C4 */  lw    $t7, %lo(gAudioContext+0x2844)($t7)
/* B599EC 800E284C 01C47021 */  addu  $t6, $t6, $a0
/* B599F0 800E2850 000E7080 */  sll   $t6, $t6, 2
/* B599F4 800E2854 AFBF0034 */  sw    $ra, 0x34($sp)
/* B599F8 800E2858 AFB60030 */  sw    $s6, 0x30($sp)
/* B599FC 800E285C AFB5002C */  sw    $s5, 0x2c($sp)
/* B59A00 800E2860 AFB40028 */  sw    $s4, 0x28($sp)
/* B59A04 800E2864 AFB30024 */  sw    $s3, 0x24($sp)
/* B59A08 800E2868 AFB20020 */  sw    $s2, 0x20($sp)
/* B59A0C 800E286C AFB1001C */  sw    $s1, 0x1c($sp)
/* B59A10 800E2870 AFB00018 */  sw    $s0, 0x18($sp)
/* B59A14 800E2874 AFAE0044 */  sw    $t6, 0x44($sp)
/* B59A18 800E2878 01EE1021 */  addu  $v0, $t7, $t6
/* B59A1C 800E287C 90590000 */  lbu   $t9, ($v0)
/* B59A20 800E2880 90470001 */  lbu   $a3, 1($v0)
/* B59A24 800E2884 00A09825 */  move  $s3, $a1
/* B59A28 800E2888 AFB90050 */  sw    $t9, 0x50($sp)
/* B59A2C 800E288C 8CA30000 */  lw    $v1, ($a1)
/* B59A30 800E2890 00C0A025 */  move  $s4, $a2
/* B59A34 800E2894 94550004 */  lhu   $s5, 4($v0)
/* B59A38 800E2898 50600021 */  beql  $v1, $zero, .L800E2920
/* B59A3C 800E289C 8E630004 */   lw    $v1, 4($s3)
/* B59A40 800E28A0 10E0001E */  beqz  $a3, .L800E291C
/* B59A44 800E28A4 00654021 */   addu  $t0, $v1, $a1
/* B59A48 800E28A8 18E0001C */  blez  $a3, .L800E291C
/* B59A4C 800E28AC ACA80000 */   sw    $t0, ($a1)
/* B59A50 800E28B0 00009025 */  move  $s2, $zero
/* B59A54 800E28B4 00071880 */  sll   $v1, $a3, 2
/* B59A58 800E28B8 24160001 */  li    $s6, 1
/* B59A5C 800E28BC 8E690000 */  lw    $t1, ($s3)
.L800E28C0:
/* B59A60 800E28C0 01321021 */  addu  $v0, $t1, $s2
/* B59A64 800E28C4 8C500000 */  lw    $s0, ($v0)
/* B59A68 800E28C8 12000011 */  beqz  $s0, .L800E2910
/* B59A6C 800E28CC 02138021 */   addu  $s0, $s0, $s3
/* B59A70 800E28D0 AC500000 */  sw    $s0, ($v0)
/* B59A74 800E28D4 920A0002 */  lbu   $t2, 2($s0)
/* B59A78 800E28D8 02008825 */  move  $s1, $s0
/* B59A7C 800E28DC 26040004 */  addiu $a0, $s0, 4
/* B59A80 800E28E0 1540000B */  bnez  $t2, .L800E2910
/* B59A84 800E28E4 02602825 */   move  $a1, $s3
/* B59A88 800E28E8 02803025 */  move  $a2, $s4
/* B59A8C 800E28EC AFA3003C */  sw    $v1, 0x3c($sp)
/* B59A90 800E28F0 0C039016 */  jal   Audio_SampleReloc
/* B59A94 800E28F4 AFA70054 */   sw    $a3, 0x54($sp)
/* B59A98 800E28F8 8E30000C */  lw    $s0, 0xc($s1)
/* B59A9C 800E28FC 8FA3003C */  lw    $v1, 0x3c($sp)
/* B59AA0 800E2900 8FA70054 */  lw    $a3, 0x54($sp)
/* B59AA4 800E2904 02135821 */  addu  $t3, $s0, $s3
/* B59AA8 800E2908 AE2B000C */  sw    $t3, 0xc($s1)
/* B59AAC 800E290C A2360002 */  sb    $s6, 2($s1)
.L800E2910:
/* B59AB0 800E2910 26520004 */  addiu $s2, $s2, 4
/* B59AB4 800E2914 5643FFEA */  bnel  $s2, $v1, .L800E28C0
/* B59AB8 800E2918 8E690000 */   lw    $t1, ($s3)
.L800E291C:
/* B59ABC 800E291C 8E630004 */  lw    $v1, 4($s3)
.L800E2920:
/* B59AC0 800E2920 24160001 */  li    $s6, 1
/* B59AC4 800E2924 50600016 */  beql  $v1, $zero, .L800E2980
/* B59AC8 800E2928 8FAF0050 */   lw    $t7, 0x50($sp)
/* B59ACC 800E292C 12A00013 */  beqz  $s5, .L800E297C
/* B59AD0 800E2930 00736021 */   addu  $t4, $v1, $s3
/* B59AD4 800E2934 1AA00011 */  blez  $s5, .L800E297C
/* B59AD8 800E2938 AE6C0004 */   sw    $t4, 4($s3)
/* B59ADC 800E293C 00008825 */  move  $s1, $zero
/* B59AE0 800E2940 001590C0 */  sll   $s2, $s5, 3
/* B59AE4 800E2944 8E6D0004 */  lw    $t5, 4($s3)
.L800E2948:
/* B59AE8 800E2948 01B18021 */  addu  $s0, $t5, $s1
/* B59AEC 800E294C 52000009 */  beql  $s0, $zero, .L800E2974
/* B59AF0 800E2950 26310008 */   addiu $s1, $s1, 8
/* B59AF4 800E2954 8E0E0000 */  lw    $t6, ($s0)
/* B59AF8 800E2958 02002025 */  move  $a0, $s0
/* B59AFC 800E295C 02602825 */  move  $a1, $s3
/* B59B00 800E2960 51C00004 */  beql  $t6, $zero, .L800E2974
/* B59B04 800E2964 26310008 */   addiu $s1, $s1, 8
/* B59B08 800E2968 0C039016 */  jal   Audio_SampleReloc
/* B59B0C 800E296C 02803025 */   move  $a2, $s4
/* B59B10 800E2970 26310008 */  addiu $s1, $s1, 8
.L800E2974:
/* B59B14 800E2974 5632FFF4 */  bnel  $s1, $s2, .L800E2948
/* B59B18 800E2978 8E6D0004 */   lw    $t5, 4($s3)
.L800E297C:
/* B59B1C 800E297C 8FAF0050 */  lw    $t7, 0x50($sp)
.L800E2980:
/* B59B20 800E2980 2418007E */  li    $t8, 126
/* B59B24 800E2984 26720008 */  addiu $s2, $s3, 8
/* B59B28 800E2988 29E1007F */  slti  $at, $t7, 0x7f
/* B59B2C 800E298C 54200003 */  bnezl $at, .L800E299C
/* B59B30 800E2990 8FA30050 */   lw    $v1, 0x50($sp)
/* B59B34 800E2994 AFB80050 */  sw    $t8, 0x50($sp)
/* B59B38 800E2998 8FA30050 */  lw    $v1, 0x50($sp)
.L800E299C:
/* B59B3C 800E299C 24630001 */  addiu $v1, $v1, 1
/* B59B40 800E29A0 28610002 */  slti  $at, $v1, 2
/* B59B44 800E29A4 14200024 */  bnez  $at, .L800E2A38
/* B59B48 800E29A8 0003C880 */   sll   $t9, $v1, 2
/* B59B4C 800E29AC 0333A821 */  addu  $s5, $t9, $s3
/* B59B50 800E29B0 8E420000 */  lw    $v0, ($s2)
.L800E29B4:
/* B59B54 800E29B4 1040001C */  beqz  $v0, .L800E2A28
/* B59B58 800E29B8 00534021 */   addu  $t0, $v0, $s3
/* B59B5C 800E29BC AE480000 */  sw    $t0, ($s2)
/* B59B60 800E29C0 91090000 */  lbu   $t1, ($t0)
/* B59B64 800E29C4 01008825 */  move  $s1, $t0
/* B59B68 800E29C8 55200018 */  bnezl $t1, .L800E2A2C
/* B59B6C 800E29CC 26520004 */   addiu $s2, $s2, 4
/* B59B70 800E29D0 910A0001 */  lbu   $t2, 1($t0)
/* B59B74 800E29D4 25040008 */  addiu $a0, $t0, 8
/* B59B78 800E29D8 02602825 */  move  $a1, $s3
/* B59B7C 800E29DC 51400004 */  beql  $t2, $zero, .L800E29F0
/* B59B80 800E29E0 26240010 */   addiu $a0, $s1, 0x10
/* B59B84 800E29E4 0C039016 */  jal   Audio_SampleReloc
/* B59B88 800E29E8 02803025 */   move  $a2, $s4
/* B59B8C 800E29EC 26240010 */  addiu $a0, $s1, 0x10
.L800E29F0:
/* B59B90 800E29F0 02602825 */  move  $a1, $s3
/* B59B94 800E29F4 0C039016 */  jal   Audio_SampleReloc
/* B59B98 800E29F8 02803025 */   move  $a2, $s4
/* B59B9C 800E29FC 922B0002 */  lbu   $t3, 2($s1)
/* B59BA0 800E2A00 2401007F */  li    $at, 127
/* B59BA4 800E2A04 26240018 */  addiu $a0, $s1, 0x18
/* B59BA8 800E2A08 11610003 */  beq   $t3, $at, .L800E2A18
/* B59BAC 800E2A0C 02602825 */   move  $a1, $s3
/* B59BB0 800E2A10 0C039016 */  jal   Audio_SampleReloc
/* B59BB4 800E2A14 02803025 */   move  $a2, $s4
.L800E2A18:
/* B59BB8 800E2A18 8E300004 */  lw    $s0, 4($s1)
/* B59BBC 800E2A1C A2360000 */  sb    $s6, ($s1)
/* B59BC0 800E2A20 02136021 */  addu  $t4, $s0, $s3
/* B59BC4 800E2A24 AE2C0004 */  sw    $t4, 4($s1)
.L800E2A28:
/* B59BC8 800E2A28 26520004 */  addiu $s2, $s2, 4
.L800E2A2C:
/* B59BCC 800E2A2C 02B2082B */  sltu  $at, $s5, $s2
/* B59BD0 800E2A30 5020FFE0 */  beql  $at, $zero, .L800E29B4
/* B59BD4 800E2A34 8E420000 */   lw    $v0, ($s2)
.L800E2A38:
/* B59BD8 800E2A38 3C0E8017 */  lui   $t6, %hi(gAudioContext+0x2844) # $t6, 0x8017
/* B59BDC 800E2A3C 8DCE19C4 */  lw    $t6, %lo(gAudioContext+0x2844)($t6)
/* B59BE0 800E2A40 8FAF0044 */  lw    $t7, 0x44($sp)
/* B59BE4 800E2A44 8E6D0000 */  lw    $t5, ($s3)
/* B59BE8 800E2A48 3C088017 */  lui   $t0, %hi(gAudioContext+0x2844) # $t0, 0x8017
/* B59BEC 800E2A4C 01CFC021 */  addu  $t8, $t6, $t7
/* B59BF0 800E2A50 AF0D000C */  sw    $t5, 0xc($t8)
/* B59BF4 800E2A54 8FA90044 */  lw    $t1, 0x44($sp)
/* B59BF8 800E2A58 8D0819C4 */  lw    $t0, %lo(gAudioContext+0x2844)($t0)
/* B59BFC 800E2A5C 8E790004 */  lw    $t9, 4($s3)
/* B59C00 800E2A60 3C0C8017 */  lui   $t4, %hi(gAudioContext+0x2844) # $t4, 0x8017
/* B59C04 800E2A64 01095021 */  addu  $t2, $t0, $t1
/* B59C08 800E2A68 AD590010 */  sw    $t9, 0x10($t2)
/* B59C0C 800E2A6C 8FAE0044 */  lw    $t6, 0x44($sp)
/* B59C10 800E2A70 8D8C19C4 */  lw    $t4, %lo(gAudioContext+0x2844)($t4)
/* B59C14 800E2A74 266B0008 */  addiu $t3, $s3, 8
/* B59C18 800E2A78 018E7821 */  addu  $t7, $t4, $t6
/* B59C1C 800E2A7C ADEB0008 */  sw    $t3, 8($t7)
/* B59C20 800E2A80 8FBF0034 */  lw    $ra, 0x34($sp)
/* B59C24 800E2A84 8FB60030 */  lw    $s6, 0x30($sp)
/* B59C28 800E2A88 8FB5002C */  lw    $s5, 0x2c($sp)
/* B59C2C 800E2A8C 8FB40028 */  lw    $s4, 0x28($sp)
/* B59C30 800E2A90 8FB30024 */  lw    $s3, 0x24($sp)
/* B59C34 800E2A94 8FB20020 */  lw    $s2, 0x20($sp)
/* B59C38 800E2A98 8FB1001C */  lw    $s1, 0x1c($sp)
/* B59C3C 800E2A9C 8FB00018 */  lw    $s0, 0x18($sp)
/* B59C40 800E2AA0 03E00008 */  jr    $ra
/* B59C44 800E2AA4 27BD0070 */   addiu $sp, $sp, 0x70

