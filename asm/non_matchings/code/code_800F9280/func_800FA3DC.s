.late_rodata
glabel jtbl_8014A680
    .word L800FAAE4
    .word L800FAB28
    .word L800FAB48
    .word L800FAB84
    .word L800FABAC
    .word L800FABD0
    .word L800FAC18
    .word L800FAAFC
    .word L800FAC24
    .word L800FAC84
    .word L800FACA4
    .word L800FACD4
    .word L800FACD4
    .word L800FACD4
    .word L800FAC3C

.text
glabel func_800FA3DC
/* B7157C 800FA3DC 27BDFF70 */  addiu $sp, $sp, -0x90
/* B71580 800FA3E0 AFB7003C */  sw    $s7, 0x3c($sp)
/* B71584 800FA3E4 F7B40018 */  sdc1  $f20, 0x18($sp)
/* B71588 800FA3E8 3C0142FE */  lui   $at, 0x42fe
/* B7158C 800FA3EC AFBE0040 */  sw    $fp, 0x40($sp)
/* B71590 800FA3F0 AFB60038 */  sw    $s6, 0x38($sp)
/* B71594 800FA3F4 AFB50034 */  sw    $s5, 0x34($sp)
/* B71598 800FA3F8 3C178017 */  lui   $s7, %hi(D_8016E750)
/* B7159C 800FA3FC 4481A000 */  mtc1  $at, $f20
/* B715A0 800FA400 AFBF0044 */  sw    $ra, 0x44($sp)
/* B715A4 800FA404 AFB40030 */  sw    $s4, 0x30($sp)
/* B715A8 800FA408 AFB3002C */  sw    $s3, 0x2c($sp)
/* B715AC 800FA40C AFB20028 */  sw    $s2, 0x28($sp)
/* B715B0 800FA410 AFB10024 */  sw    $s1, 0x24($sp)
/* B715B4 800FA414 AFB00020 */  sw    $s0, 0x20($sp)
/* B715B8 800FA418 26F7E750 */  addiu $s7, %lo(D_8016E750)
/* B715BC 800FA41C 0000A825 */  move  $s5, $zero
/* B715C0 800FA420 3C16E300 */  li    $s6, 0xE3000000 # 0.000000
/* B715C4 800FA424 241E0264 */  li    $fp, 612
.L800FA428:
/* B715C8 800FA428 02BE0019 */  multu $s5, $fp
/* B715CC 800FA42C 00007012 */  mflo  $t6
/* B715D0 800FA430 02EE9021 */  addu  $s2, $s7, $t6
/* B715D4 800FA434 924F0260 */  lbu   $t7, 0x260($s2)
/* B715D8 800FA438 51E00010 */  beql  $t7, $zero, .L800FA47C
/* B715DC 800FA43C 92580013 */   lbu   $t8, 0x13($s2)
/* B715E0 800FA440 0C039788 */  jal   func_800E5E20
/* B715E4 800FA444 27A40070 */   addiu $a0, $sp, 0x70
/* B715E8 800FA448 24010001 */  li    $at, 1
/* B715EC 800FA44C 10410007 */  beq   $v0, $at, .L800FA46C
/* B715F0 800FA450 24010002 */   li    $at, 2
/* B715F4 800FA454 10410005 */  beq   $v0, $at, .L800FA46C
/* B715F8 800FA458 24010003 */   li    $at, 3
/* B715FC 800FA45C 10410003 */  beq   $v0, $at, .L800FA46C
/* B71600 800FA460 24010004 */   li    $at, 4
/* B71604 800FA464 54410005 */  bnel  $v0, $at, .L800FA47C
/* B71608 800FA468 92580013 */   lbu   $t8, 0x13($s2)
.L800FA46C:
/* B7160C 800FA46C A2400260 */  sb    $zero, 0x260($s2)
/* B71610 800FA470 0C03E53F */  jal   Audio_ProcessSeqCmd
/* B71614 800FA474 8E44025C */   lw    $a0, 0x25c($s2)
/* B71618 800FA478 92580013 */  lbu   $t8, 0x13($s2)
.L800FA47C:
/* B7161C 800FA47C 13000047 */  beqz  $t8, .L800FA59C
/* B71620 800FA480 0015C880 */   sll   $t9, $s5, 2
/* B71624 800FA484 0335C821 */  addu  $t9, $t9, $s5
/* B71628 800FA488 0019C880 */  sll   $t9, $t9, 2
/* B7162C 800FA48C 0335C823 */  subu  $t9, $t9, $s5
/* B71630 800FA490 0019C8C0 */  sll   $t9, $t9, 3
/* B71634 800FA494 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B71638 800FA498 0335C821 */  addu  $t9, $t9, $s5
/* B7163C 800FA49C 0019C880 */  sll   $t9, $t9, 2
/* B71640 800FA4A0 44810000 */  mtc1  $at, $f0
/* B71644 800FA4A4 02F9A021 */  addu  $s4, $s7, $t9
/* B71648 800FA4A8 00009825 */  move  $s3, $zero
/* B7164C 800FA4AC 02A01025 */  move  $v0, $s5
/* B71650 800FA4B0 02935021 */  addu  $t2, $s4, $s3
.L800FA4B4:
/* B71654 800FA4B4 914B000E */  lbu   $t3, 0xe($t2)
/* B71658 800FA4B8 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B7165C 800FA4BC 448B2000 */  mtc1  $t3, $f4
/* B71660 800FA4C0 05610004 */  bgez  $t3, .L800FA4D4
/* B71664 800FA4C4 468021A0 */   cvt.s.w $f6, $f4
/* B71668 800FA4C8 44814000 */  mtc1  $at, $f8
/* B7166C 800FA4CC 00000000 */  nop   
/* B71670 800FA4D0 46083180 */  add.s $f6, $f6, $f8
.L800FA4D4:
/* B71674 800FA4D4 46143283 */  div.s $f10, $f6, $f20
/* B71678 800FA4D8 26730001 */  addiu $s3, $s3, 1
/* B7167C 800FA4DC 327300FF */  andi  $s3, $s3, 0xff
/* B71680 800FA4E0 2A610004 */  slti  $at, $s3, 4
/* B71684 800FA4E4 460A0002 */  mul.s $f0, $f0, $f10
/* B71688 800FA4E8 5420FFF2 */  bnezl $at, .L800FA4B4
/* B7168C 800FA4EC 02935021 */   addu  $t2, $s4, $s3
/* B71690 800FA4F0 46140402 */  mul.s $f16, $f0, $f20
/* B71694 800FA4F4 240A0001 */  li    $t2, 1
/* B71698 800FA4F8 924C0012 */  lbu   $t4, 0x12($s2)
/* B7169C 800FA4FC 3C014000 */  lui   $at, 0x4000
/* B716A0 800FA500 00027E00 */  sll   $t7, $v0, 0x18
/* B716A4 800FA504 000C6C00 */  sll   $t5, $t4, 0x10
/* B716A8 800FA508 01A17025 */  or    $t6, $t5, $at
/* B716AC 800FA50C 4459F800 */  cfc1  $t9, $31
/* B716B0 800FA510 44CAF800 */  ctc1  $t2, $31
/* B716B4 800FA514 01CFC025 */  or    $t8, $t6, $t7
/* B716B8 800FA518 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B716BC 800FA51C 460084A4 */  cvt.w.s $f18, $f16
/* B716C0 800FA520 444AF800 */  cfc1  $t2, $31
/* B716C4 800FA524 00000000 */  nop   
/* B716C8 800FA528 314A0078 */  andi  $t2, $t2, 0x78
/* B716CC 800FA52C 51400013 */  beql  $t2, $zero, .L800FA57C
/* B716D0 800FA530 440A9000 */   mfc1  $t2, $f18
/* B716D4 800FA534 44819000 */  mtc1  $at, $f18
/* B716D8 800FA538 240A0001 */  li    $t2, 1
/* B716DC 800FA53C 46128481 */  sub.s $f18, $f16, $f18
/* B716E0 800FA540 44CAF800 */  ctc1  $t2, $31
/* B716E4 800FA544 00000000 */  nop   
/* B716E8 800FA548 460094A4 */  cvt.w.s $f18, $f18
/* B716EC 800FA54C 444AF800 */  cfc1  $t2, $31
/* B716F0 800FA550 00000000 */  nop   
/* B716F4 800FA554 314A0078 */  andi  $t2, $t2, 0x78
/* B716F8 800FA558 15400005 */  bnez  $t2, .L800FA570
/* B716FC 800FA55C 00000000 */   nop   
/* B71700 800FA560 440A9000 */  mfc1  $t2, $f18
/* B71704 800FA564 3C018000 */  lui   $at, 0x8000
/* B71708 800FA568 10000007 */  b     .L800FA588
/* B7170C 800FA56C 01415025 */   or    $t2, $t2, $at
.L800FA570:
/* B71710 800FA570 10000005 */  b     .L800FA588
/* B71714 800FA574 240AFFFF */   li    $t2, -1
/* B71718 800FA578 440A9000 */  mfc1  $t2, $f18
.L800FA57C:
/* B7171C 800FA57C 00000000 */  nop   
/* B71720 800FA580 0540FFFB */  bltz  $t2, .L800FA570
/* B71724 800FA584 00000000 */   nop   
.L800FA588:
/* B71728 800FA588 44D9F800 */  ctc1  $t9, $31
/* B7172C 800FA58C 314B00FF */  andi  $t3, $t2, 0xff
/* B71730 800FA590 0C03E803 */  jal   Audio_QueueSeqCmd
/* B71734 800FA594 030B2025 */   or    $a0, $t8, $t3
/* B71738 800FA598 A2400013 */  sb    $zero, 0x13($s2)
.L800FA59C:
/* B7173C 800FA59C 9642000C */  lhu   $v0, 0xc($s2)
/* B71740 800FA5A0 10400011 */  beqz  $v0, .L800FA5E8
/* B71744 800FA5A4 244CFFFF */   addiu $t4, $v0, -1
/* B71748 800FA5A8 318DFFFF */  andi  $t5, $t4, 0xffff
/* B7174C 800FA5AC 11A00006 */  beqz  $t5, .L800FA5C8
/* B71750 800FA5B0 A64C000C */   sh    $t4, 0xc($s2)
/* B71754 800FA5B4 C6440000 */  lwc1  $f4, ($s2)
/* B71758 800FA5B8 C6480008 */  lwc1  $f8, 8($s2)
/* B7175C 800FA5BC 46082181 */  sub.s $f6, $f4, $f8
/* B71760 800FA5C0 10000003 */  b     .L800FA5D0
/* B71764 800FA5C4 E6460000 */   swc1  $f6, ($s2)
.L800FA5C8:
/* B71768 800FA5C8 C64A0004 */  lwc1  $f10, 4($s2)
/* B7176C 800FA5CC E64A0000 */  swc1  $f10, ($s2)
.L800FA5D0:
/* B71770 800FA5D0 32A400FF */  andi  $a0, $s5, 0xff
/* B71774 800FA5D4 00042400 */  sll   $a0, $a0, 0x10
/* B71778 800FA5D8 3C014100 */  lui   $at, 0x4100
/* B7177C 800FA5DC 00812025 */  or    $a0, $a0, $at
/* B71780 800FA5E0 0C0396B6 */  jal   Audio_QueueCmdF32
/* B71784 800FA5E4 8E450000 */   lw    $a1, ($s2)
.L800FA5E8:
/* B71788 800FA5E8 8E450014 */  lw    $a1, 0x14($s2)
/* B7178C 800FA5EC 10A0008F */  beqz  $a1, .L800FA82C
/* B71790 800FA5F0 3C0100FF */   li    $at, 0x00FF0000 # 0.000000
/* B71794 800FA5F4 00A11024 */  and   $v0, $a1, $at
/* B71798 800FA5F8 000213C2 */  srl   $v0, $v0, 0xf
/* B7179C 800FA5FC 30A40FFF */  andi  $a0, $a1, 0xfff
/* B717A0 800FA600 304700FF */  andi  $a3, $v0, 0xff
/* B717A4 800FA604 00A01825 */  move  $v1, $a1
/* B717A8 800FA608 304800FF */  andi  $t0, $v0, 0xff
/* B717AC 800FA60C 14E00003 */  bnez  $a3, .L800FA61C
/* B717B0 800FA610 3086FFFF */   andi  $a2, $a0, 0xffff
/* B717B4 800FA614 24E80001 */  addiu $t0, $a3, 1
/* B717B8 800FA618 310800FF */  andi  $t0, $t0, 0xff
.L800FA61C:
/* B717BC 800FA61C 00157080 */  sll   $t6, $s5, 2
/* B717C0 800FA620 01D57023 */  subu  $t6, $t6, $s5
/* B717C4 800FA624 000E7080 */  sll   $t6, $t6, 2
/* B717C8 800FA628 01D57023 */  subu  $t6, $t6, $s5
/* B717CC 800FA62C 3C0F8017 */  lui   $t7, %hi(gAudioContext)
/* B717D0 800FA630 25EFF180 */  addiu $t7, %lo(gAudioContext) # addiu $t7, $t7, -0xe80
/* B717D4 800FA634 000E7140 */  sll   $t6, $t6, 5
/* B717D8 800FA638 01CF2821 */  addu  $a1, $t6, $t7
/* B717DC 800FA63C 8CB93530 */  lw    $t9, 0x3530($a1)
/* B717E0 800FA640 24010030 */  li    $at, 48
/* B717E4 800FA644 3062F000 */  andi  $v0, $v1, 0xf000
/* B717E8 800FA648 001957C2 */  srl   $t2, $t9, 0x1f
/* B717EC 800FA64C 51400078 */  beql  $t2, $zero, .L800FA830
/* B717F0 800FA650 96420028 */   lhu   $v0, 0x28($s2)
/* B717F4 800FA654 94A93538 */  lhu   $t1, 0x3538($a1)
/* B717F8 800FA658 00021302 */  srl   $v0, $v0, 0xc
/* B717FC 800FA65C 304200FF */  andi  $v0, $v0, 0xff
/* B71800 800FA660 0121001A */  div   $zero, $t1, $at
/* B71804 800FA664 00004812 */  mflo  $t1
/* B71808 800FA668 24010001 */  li    $at, 1
/* B7180C 800FA66C 1041000C */  beq   $v0, $at, .L800FA6A0
/* B71810 800FA670 3127FFFF */   andi  $a3, $t1, 0xffff
/* B71814 800FA674 24010002 */  li    $at, 2
/* B71818 800FA678 1041000D */  beq   $v0, $at, .L800FA6B0
/* B7181C 800FA67C 3083FFFF */   andi  $v1, $a0, 0xffff
/* B71820 800FA680 24010003 */  li    $at, 3
/* B71824 800FA684 10410011 */  beq   $v0, $at, .L800FA6CC
/* B71828 800FA688 308BFFFF */   andi  $t3, $a0, 0xffff
/* B7182C 800FA68C 24010004 */  li    $at, 4
/* B71830 800FA690 50410045 */  beql  $v0, $at, .L800FA7A8
/* B71834 800FA694 96420018 */   lhu   $v0, 0x18($s2)
/* B71838 800FA698 10000048 */  b     .L800FA7BC
/* B7183C 800FA69C 96420018 */   lhu   $v0, 0x18($s2)
.L800FA6A0:
/* B71840 800FA6A0 00873021 */  addu  $a2, $a0, $a3
/* B71844 800FA6A4 30C6FFFF */  andi  $a2, $a2, 0xffff
/* B71848 800FA6A8 10000044 */  b     .L800FA7BC
/* B7184C 800FA6AC 96420018 */   lhu   $v0, 0x18($s2)
.L800FA6B0:
/* B71850 800FA6B0 0067082A */  slt   $at, $v1, $a3
/* B71854 800FA6B4 10200003 */  beqz  $at, .L800FA6C4
/* B71858 800FA6B8 00E01025 */   move  $v0, $a3
/* B7185C 800FA6BC 00433023 */  subu  $a2, $v0, $v1
/* B71860 800FA6C0 30C6FFFF */  andi  $a2, $a2, 0xffff
.L800FA6C4:
/* B71864 800FA6C4 1000003D */  b     .L800FA7BC
/* B71868 800FA6C8 96420018 */   lhu   $v0, 0x18($s2)
.L800FA6CC:
/* B7186C 800FA6CC 448B8000 */  mtc1  $t3, $f16
/* B71870 800FA6D0 44875000 */  mtc1  $a3, $f10
/* B71874 800FA6D4 05610005 */  bgez  $t3, .L800FA6EC
/* B71878 800FA6D8 468084A0 */   cvt.s.w $f18, $f16
/* B7187C 800FA6DC 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B71880 800FA6E0 44812000 */  mtc1  $at, $f4
/* B71884 800FA6E4 00000000 */  nop   
/* B71888 800FA6E8 46049480 */  add.s $f18, $f18, $f4
.L800FA6EC:
/* B7188C 800FA6EC 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* B71890 800FA6F0 44814000 */  mtc1  $at, $f8
/* B71894 800FA6F4 46805420 */  cvt.s.w $f16, $f10
/* B71898 800FA6F8 04E10005 */  bgez  $a3, .L800FA710
/* B7189C 800FA6FC 46089183 */   div.s $f6, $f18, $f8
/* B718A0 800FA700 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B718A4 800FA704 44812000 */  mtc1  $at, $f4
/* B718A8 800FA708 00000000 */  nop   
/* B718AC 800FA70C 46048400 */  add.s $f16, $f16, $f4
.L800FA710:
/* B718B0 800FA710 46068482 */  mul.s $f18, $f16, $f6
/* B718B4 800FA714 24060001 */  li    $a2, 1
/* B718B8 800FA718 3C014F00 */  li    $at, 0x4F000000 # 0.000000
/* B718BC 800FA71C 444CF800 */  cfc1  $t4, $31
/* B718C0 800FA720 44C6F800 */  ctc1  $a2, $31
/* B718C4 800FA724 00000000 */  nop   
/* B718C8 800FA728 46009224 */  cvt.w.s $f8, $f18
/* B718CC 800FA72C 4446F800 */  cfc1  $a2, $31
/* B718D0 800FA730 00000000 */  nop   
/* B718D4 800FA734 30C60078 */  andi  $a2, $a2, 0x78
/* B718D8 800FA738 50C00013 */  beql  $a2, $zero, .L800FA788
/* B718DC 800FA73C 44064000 */   mfc1  $a2, $f8
/* B718E0 800FA740 44814000 */  mtc1  $at, $f8
/* B718E4 800FA744 24060001 */  li    $a2, 1
/* B718E8 800FA748 46089201 */  sub.s $f8, $f18, $f8
/* B718EC 800FA74C 44C6F800 */  ctc1  $a2, $31
/* B718F0 800FA750 00000000 */  nop   
/* B718F4 800FA754 46004224 */  cvt.w.s $f8, $f8
/* B718F8 800FA758 4446F800 */  cfc1  $a2, $31
/* B718FC 800FA75C 00000000 */  nop   
/* B71900 800FA760 30C60078 */  andi  $a2, $a2, 0x78
/* B71904 800FA764 14C00005 */  bnez  $a2, .L800FA77C
/* B71908 800FA768 00000000 */   nop   
/* B7190C 800FA76C 44064000 */  mfc1  $a2, $f8
/* B71910 800FA770 3C018000 */  li    $at, 0x80000000 # 0.000000
/* B71914 800FA774 10000007 */  b     .L800FA794
/* B71918 800FA778 00C13025 */   or    $a2, $a2, $at
.L800FA77C:
/* B7191C 800FA77C 10000005 */  b     .L800FA794
/* B71920 800FA780 2406FFFF */   li    $a2, -1
/* B71924 800FA784 44064000 */  mfc1  $a2, $f8
.L800FA788:
/* B71928 800FA788 00000000 */  nop   
/* B7192C 800FA78C 04C0FFFB */  bltz  $a2, .L800FA77C
/* B71930 800FA790 00000000 */   nop   
.L800FA794:
/* B71934 800FA794 44CCF800 */  ctc1  $t4, $31
/* B71938 800FA798 30C6FFFF */  andi  $a2, $a2, 0xffff
/* B7193C 800FA79C 10000007 */  b     .L800FA7BC
/* B71940 800FA7A0 96420018 */   lhu   $v0, 0x18($s2)
/* B71944 800FA7A4 96420018 */  lhu   $v0, 0x18($s2)
.L800FA7A8:
/* B71948 800FA7A8 30E6FFFF */  andi  $a2, $a3, 0xffff
/* B7194C 800FA7AC 10400003 */  beqz  $v0, .L800FA7BC
/* B71950 800FA7B0 00000000 */   nop   
/* B71954 800FA7B4 10000001 */  b     .L800FA7BC
/* B71958 800FA7B8 3046FFFF */   andi  $a2, $v0, 0xffff
.L800FA7BC:
/* B7195C 800FA7BC 44898000 */  mtc1  $t1, $f16
/* B71960 800FA7C0 28C1012D */  slti  $at, $a2, 0x12d
/* B71964 800FA7C4 14200002 */  bnez  $at, .L800FA7D0
/* B71968 800FA7C8 468080A0 */   cvt.s.w $f2, $f16
/* B7196C 800FA7CC 2406012C */  li    $a2, 300
.L800FA7D0:
/* B71970 800FA7D0 44865000 */  mtc1  $a2, $f10
/* B71974 800FA7D4 14400002 */  bnez  $v0, .L800FA7E0
/* B71978 800FA7D8 3C014F80 */   li    $at, 0x4F800000 # 0.000000
/* B7197C 800FA7DC A6470018 */  sh    $a3, 0x18($s2)
.L800FA7E0:
/* B71980 800FA7E0 04C10004 */  bgez  $a2, .L800FA7F4
/* B71984 800FA7E4 46805020 */   cvt.s.w $f0, $f10
/* B71988 800FA7E8 44812000 */  mtc1  $at, $f4
/* B7198C 800FA7EC 00000000 */  nop   
/* B71990 800FA7F0 46040000 */  add.s $f0, $f0, $f4
.L800FA7F4:
/* B71994 800FA7F4 44889000 */  mtc1  $t0, $f18
/* B71998 800FA7F8 E6400020 */  swc1  $f0, 0x20($s2)
/* B7199C 800FA7FC E642001C */  swc1  $f2, 0x1c($s2)
/* B719A0 800FA800 46001181 */  sub.s $f6, $f2, $f0
/* B719A4 800FA804 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B719A8 800FA808 05010004 */  bgez  $t0, .L800FA81C
/* B719AC 800FA80C 46809220 */   cvt.s.w $f8, $f18
/* B719B0 800FA810 44815000 */  mtc1  $at, $f10
/* B719B4 800FA814 00000000 */  nop   
/* B719B8 800FA818 460A4200 */  add.s $f8, $f8, $f10
.L800FA81C:
/* B719BC 800FA81C 46083103 */  div.s $f4, $f6, $f8
/* B719C0 800FA820 A6480028 */  sh    $t0, 0x28($s2)
/* B719C4 800FA824 AE400014 */  sw    $zero, 0x14($s2)
/* B719C8 800FA828 E6440024 */  swc1  $f4, 0x24($s2)
.L800FA82C:
/* B719CC 800FA82C 96420028 */  lhu   $v0, 0x28($s2)
.L800FA830:
/* B719D0 800FA830 10400014 */  beqz  $v0, .L800FA884
/* B719D4 800FA834 244DFFFF */   addiu $t5, $v0, -1
/* B719D8 800FA838 31AEFFFF */  andi  $t6, $t5, 0xffff
/* B719DC 800FA83C 32A300FF */  andi  $v1, $s5, 0xff
/* B719E0 800FA840 A64D0028 */  sh    $t5, 0x28($s2)
/* B719E4 800FA844 11C00006 */  beqz  $t6, .L800FA860
/* B719E8 800FA848 00031C00 */   sll   $v1, $v1, 0x10
/* B719EC 800FA84C C650001C */  lwc1  $f16, 0x1c($s2)
/* B719F0 800FA850 C6520024 */  lwc1  $f18, 0x24($s2)
/* B719F4 800FA854 46128281 */  sub.s $f10, $f16, $f18
/* B719F8 800FA858 10000003 */  b     .L800FA868
/* B719FC 800FA85C E64A001C */   swc1  $f10, 0x1c($s2)
.L800FA860:
/* B71A00 800FA860 C6460020 */  lwc1  $f6, 0x20($s2)
/* B71A04 800FA864 E646001C */  swc1  $f6, 0x1c($s2)
.L800FA868:
/* B71A08 800FA868 C648001C */  lwc1  $f8, 0x1c($s2)
/* B71A0C 800FA86C 3C014700 */  lui   $at, 0x4700
/* B71A10 800FA870 00612025 */  or    $a0, $v1, $at
/* B71A14 800FA874 4600410D */  trunc.w.s $f4, $f8
/* B71A18 800FA878 44052000 */  mfc1  $a1, $f4
/* B71A1C 800FA87C 0C0396BF */  jal   Audio_QueueCmdS32
/* B71A20 800FA880 00000000 */   nop   
.L800FA884:
/* B71A24 800FA884 96590252 */  lhu   $t9, 0x252($s2)
/* B71A28 800FA888 1320002C */  beqz  $t9, .L800FA93C
/* B71A2C 800FA88C 00155080 */   sll   $t2, $s5, 2
/* B71A30 800FA890 01555021 */  addu  $t2, $t2, $s5
/* B71A34 800FA894 000A5080 */  sll   $t2, $t2, 2
/* B71A38 800FA898 01555023 */  subu  $t2, $t2, $s5
/* B71A3C 800FA89C 000A50C0 */  sll   $t2, $t2, 3
/* B71A40 800FA8A0 01555021 */  addu  $t2, $t2, $s5
/* B71A44 800FA8A4 000A5080 */  sll   $t2, $t2, 2
/* B71A48 800FA8A8 02EAA021 */  addu  $s4, $s7, $t2
/* B71A4C 800FA8AC 00008025 */  move  $s0, $zero
/* B71A50 800FA8B0 00102140 */  sll   $a0, $s0, 5
.L800FA8B4:
/* B71A54 800FA8B4 02841021 */  addu  $v0, $s4, $a0
/* B71A58 800FA8B8 9443005C */  lhu   $v1, 0x5c($v0)
/* B71A5C 800FA8BC 32A600FF */  andi  $a2, $s5, 0xff
/* B71A60 800FA8C0 00063400 */  sll   $a2, $a2, 0x10
/* B71A64 800FA8C4 10600018 */  beqz  $v1, .L800FA928
/* B71A68 800FA8C8 2478FFFF */   addiu $t8, $v1, -1
/* B71A6C 800FA8CC 3C010100 */  lui   $at, 0x100
/* B71A70 800FA8D0 330BFFFF */  andi  $t3, $t8, 0xffff
/* B71A74 800FA8D4 A458005C */  sh    $t8, 0x5c($v0)
/* B71A78 800FA8D8 11600006 */  beqz  $t3, .L800FA8F4
/* B71A7C 800FA8DC 00C13025 */   or    $a2, $a2, $at
/* B71A80 800FA8E0 C4500050 */  lwc1  $f16, 0x50($v0)
/* B71A84 800FA8E4 C4520058 */  lwc1  $f18, 0x58($v0)
/* B71A88 800FA8E8 46128281 */  sub.s $f10, $f16, $f18
/* B71A8C 800FA8EC 10000009 */  b     .L800FA914
/* B71A90 800FA8F0 E44A0050 */   swc1  $f10, 0x50($v0)
.L800FA8F4:
/* B71A94 800FA8F4 02441821 */  addu  $v1, $s2, $a0
/* B71A98 800FA8F8 C4660054 */  lwc1  $f6, 0x54($v1)
/* B71A9C 800FA8FC 240D0001 */  li    $t5, 1
/* B71AA0 800FA900 020D7004 */  sllv  $t6, $t5, $s0
/* B71AA4 800FA904 E4660050 */  swc1  $f6, 0x50($v1)
/* B71AA8 800FA908 964C0252 */  lhu   $t4, 0x252($s2)
/* B71AAC 800FA90C 018E7826 */  xor   $t7, $t4, $t6
/* B71AB0 800FA910 A64F0252 */  sh    $t7, 0x252($s2)
.L800FA914:
/* B71AB4 800FA914 321900FF */  andi  $t9, $s0, 0xff
/* B71AB8 800FA918 00195200 */  sll   $t2, $t9, 8
/* B71ABC 800FA91C 00CA2025 */  or    $a0, $a2, $t2
/* B71AC0 800FA920 0C0396B6 */  jal   Audio_QueueCmdF32
/* B71AC4 800FA924 8C450050 */   lw    $a1, 0x50($v0)
.L800FA928:
/* B71AC8 800FA928 26100001 */  addiu $s0, $s0, 1
/* B71ACC 800FA92C 321000FF */  andi  $s0, $s0, 0xff
/* B71AD0 800FA930 2A010010 */  slti  $at, $s0, 0x10
/* B71AD4 800FA934 5420FFDF */  bnezl $at, .L800FA8B4
/* B71AD8 800FA938 00102140 */   sll   $a0, $s0, 5
.L800FA93C:
/* B71ADC 800FA93C 96580250 */  lhu   $t8, 0x250($s2)
/* B71AE0 800FA940 1300002C */  beqz  $t8, .L800FA9F4
/* B71AE4 800FA944 00155880 */   sll   $t3, $s5, 2
/* B71AE8 800FA948 01755821 */  addu  $t3, $t3, $s5
/* B71AEC 800FA94C 000B5880 */  sll   $t3, $t3, 2
/* B71AF0 800FA950 01755823 */  subu  $t3, $t3, $s5
/* B71AF4 800FA954 000B58C0 */  sll   $t3, $t3, 3
/* B71AF8 800FA958 01755821 */  addu  $t3, $t3, $s5
/* B71AFC 800FA95C 000B5880 */  sll   $t3, $t3, 2
/* B71B00 800FA960 02EBA021 */  addu  $s4, $s7, $t3
/* B71B04 800FA964 00008025 */  move  $s0, $zero
/* B71B08 800FA968 00102140 */  sll   $a0, $s0, 5
.L800FA96C:
/* B71B0C 800FA96C 02841021 */  addu  $v0, $s4, $a0
/* B71B10 800FA970 9443006C */  lhu   $v1, 0x6c($v0)
/* B71B14 800FA974 32A600FF */  andi  $a2, $s5, 0xff
/* B71B18 800FA978 00063400 */  sll   $a2, $a2, 0x10
/* B71B1C 800FA97C 10600018 */  beqz  $v1, .L800FA9E0
/* B71B20 800FA980 246DFFFF */   addiu $t5, $v1, -1
/* B71B24 800FA984 3C010400 */  lui   $at, 0x400
/* B71B28 800FA988 31ACFFFF */  andi  $t4, $t5, 0xffff
/* B71B2C 800FA98C A44D006C */  sh    $t5, 0x6c($v0)
/* B71B30 800FA990 11800006 */  beqz  $t4, .L800FA9AC
/* B71B34 800FA994 00C13025 */   or    $a2, $a2, $at
/* B71B38 800FA998 C4480060 */  lwc1  $f8, 0x60($v0)
/* B71B3C 800FA99C C4440068 */  lwc1  $f4, 0x68($v0)
/* B71B40 800FA9A0 46044401 */  sub.s $f16, $f8, $f4
/* B71B44 800FA9A4 10000009 */  b     .L800FA9CC
/* B71B48 800FA9A8 E4500060 */   swc1  $f16, 0x60($v0)
.L800FA9AC:
/* B71B4C 800FA9AC 02441821 */  addu  $v1, $s2, $a0
/* B71B50 800FA9B0 C4720064 */  lwc1  $f18, 0x64($v1)
/* B71B54 800FA9B4 240F0001 */  li    $t7, 1
/* B71B58 800FA9B8 020FC804 */  sllv  $t9, $t7, $s0
/* B71B5C 800FA9BC E4720060 */  swc1  $f18, 0x60($v1)
/* B71B60 800FA9C0 964E0250 */  lhu   $t6, 0x250($s2)
/* B71B64 800FA9C4 01D95026 */  xor   $t2, $t6, $t9
/* B71B68 800FA9C8 A64A0250 */  sh    $t2, 0x250($s2)
.L800FA9CC:
/* B71B6C 800FA9CC 321800FF */  andi  $t8, $s0, 0xff
/* B71B70 800FA9D0 00185A00 */  sll   $t3, $t8, 8
/* B71B74 800FA9D4 00CB2025 */  or    $a0, $a2, $t3
/* B71B78 800FA9D8 0C0396B6 */  jal   Audio_QueueCmdF32
/* B71B7C 800FA9DC 8C450060 */   lw    $a1, 0x60($v0)
.L800FA9E0:
/* B71B80 800FA9E0 26100001 */  addiu $s0, $s0, 1
/* B71B84 800FA9E4 321000FF */  andi  $s0, $s0, 0xff
/* B71B88 800FA9E8 2A010010 */  slti  $at, $s0, 0x10
/* B71B8C 800FA9EC 5420FFDF */  bnezl $at, .L800FA96C
/* B71B90 800FA9F0 00102140 */   sll   $a0, $s0, 5
.L800FA9F4:
/* B71B94 800FA9F4 924D004D */  lbu   $t5, 0x4d($s2)
/* B71B98 800FA9F8 11A000BC */  beqz  $t5, .L800FACEC
/* B71B9C 800FA9FC 3C04F000 */   lui   $a0, 0xf000
/* B71BA0 800FAA00 0C03E847 */  jal   func_800FA11C
/* B71BA4 800FAA04 00802825 */   move  $a1, $a0
/* B71BA8 800FAA08 54400004 */  bnezl $v0, .L800FAA1C
/* B71BAC 800FAA0C 9242004C */   lbu   $v0, 0x4c($s2)
/* B71BB0 800FAA10 100000BB */  b     .L800FAD00
/* B71BB4 800FAA14 A240004D */   sb    $zero, 0x4d($s2)
/* B71BB8 800FAA18 9242004C */  lbu   $v0, 0x4c($s2)
.L800FAA1C:
/* B71BBC 800FAA1C 00157880 */  sll   $t7, $s5, 2
/* B71BC0 800FAA20 01F57823 */  subu  $t7, $t7, $s5
/* B71BC4 800FAA24 10400004 */  beqz  $v0, .L800FAA38
/* B71BC8 800FAA28 000F7880 */   sll   $t7, $t7, 2
/* B71BCC 800FAA2C 244CFFFF */  addiu $t4, $v0, -1
/* B71BD0 800FAA30 100000AE */  b     .L800FACEC
/* B71BD4 800FAA34 A24C004C */   sb    $t4, 0x4c($s2)
.L800FAA38:
/* B71BD8 800FAA38 01F57823 */  subu  $t7, $t7, $s5
/* B71BDC 800FAA3C 000F7940 */  sll   $t7, $t7, 5
/* B71BE0 800FAA40 3C0E8017 */  lui   $t6, %hi(gAudioContext+0x3530)
/* B71BE4 800FAA44 01CF7021 */  addu  $t6, $t6, $t7
/* B71BE8 800FAA48 8DCE26B0 */  lw    $t6, %lo(gAudioContext+0x3530)($t6)
/* B71BEC 800FAA4C 000ECFC2 */  srl   $t9, $t6, 0x1f
/* B71BF0 800FAA50 572000A7 */  bnezl $t9, .L800FACF0
/* B71BF4 800FAA54 26B50001 */   addiu $s5, $s5, 1
/* B71BF8 800FAA58 9243004D */  lbu   $v1, 0x4d($s2)
/* B71BFC 800FAA5C 00155080 */  sll   $t2, $s5, 2
/* B71C00 800FAA60 01555021 */  addu  $t2, $t2, $s5
/* B71C04 800FAA64 186000A0 */  blez  $v1, .L800FACE8
/* B71C08 800FAA68 00009825 */   move  $s3, $zero
/* B71C0C 800FAA6C 000A5080 */  sll   $t2, $t2, 2
/* B71C10 800FAA70 01555023 */  subu  $t2, $t2, $s5
/* B71C14 800FAA74 000A50C0 */  sll   $t2, $t2, 3
/* B71C18 800FAA78 01555021 */  addu  $t2, $t2, $s5
/* B71C1C 800FAA7C 000A5080 */  sll   $t2, $t2, 2
/* B71C20 800FAA80 02EAA021 */  addu  $s4, $s7, $t2
/* B71C24 800FAA84 0013C080 */  sll   $t8, $s3, 2
.L800FAA88:
/* B71C28 800FAA88 02985821 */  addu  $t3, $s4, $t8
/* B71C2C 800FAA8C 8D62002C */  lw    $v0, 0x2c($t3)
/* B71C30 800FAA90 3C0100F0 */  lui   $at, 0xf0
/* B71C34 800FAA94 00412024 */  and   $a0, $v0, $at
/* B71C38 800FAA98 3C01000F */  lui   $at, 0xf
/* B71C3C 800FAA9C 00042502 */  srl   $a0, $a0, 0x14
/* B71C40 800FAAA0 00418824 */  and   $s1, $v0, $at
/* B71C44 800FAAA4 308400FF */  andi  $a0, $a0, 0xff
/* B71C48 800FAAA8 3050FF00 */  andi  $s0, $v0, 0xff00
/* B71C4C 800FAAAC 00118C02 */  srl   $s1, $s1, 0x10
/* B71C50 800FAAB0 00108202 */  srl   $s0, $s0, 8
/* B71C54 800FAAB4 2C81000F */  sltiu $at, $a0, 0xf
/* B71C58 800FAAB8 00403825 */  move  $a3, $v0
/* B71C5C 800FAABC 323100FF */  andi  $s1, $s1, 0xff
/* B71C60 800FAAC0 321000FF */  andi  $s0, $s0, 0xff
/* B71C64 800FAAC4 10200083 */  beqz  $at, .L800FACD4
/* B71C68 800FAAC8 30E700FF */   andi  $a3, $a3, 0xff
/* B71C6C 800FAACC 00046880 */  sll   $t5, $a0, 2
/* B71C70 800FAAD0 3C018015 */  lui   $at, %hi(jtbl_8014A680)
/* B71C74 800FAAD4 002D0821 */  addu  $at, $at, $t5
/* B71C78 800FAAD8 8C2DA680 */  lw    $t5, %lo(jtbl_8014A680)($at)
/* B71C7C 800FAADC 01A00008 */  jr    $t5
/* B71C80 800FAAE0 00000000 */   nop   
glabel L800FAAE4
/* B71C84 800FAAE4 322400FF */  andi  $a0, $s1, 0xff
/* B71C88 800FAAE8 24050001 */  li    $a1, 1
/* B71C8C 800FAAEC 0C03E890 */  jal   Audio_SetVolScale
/* B71C90 800FAAF0 2406007F */   li    $a2, 127
/* B71C94 800FAAF4 10000077 */  b     .L800FACD4
/* B71C98 800FAAF8 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FAAFC
/* B71C9C 800FAAFC 3C0C8017 */  lui   $t4, %hi(D_8016E348)
/* B71CA0 800FAB00 01956021 */  addu  $t4, $t4, $s5
/* B71CA4 800FAB04 918CE348 */  lbu   $t4, %lo(D_8016E348)($t4)
/* B71CA8 800FAB08 322400FF */  andi  $a0, $s1, 0xff
/* B71CAC 800FAB0C 24050001 */  li    $a1, 1
/* B71CB0 800FAB10 14EC0070 */  bne   $a3, $t4, .L800FACD4
/* B71CB4 800FAB14 2406007F */   li    $a2, 127
/* B71CB8 800FAB18 0C03E890 */  jal   Audio_SetVolScale
/* B71CBC 800FAB1C 320700FF */   andi  $a3, $s0, 0xff
/* B71CC0 800FAB20 1000006C */  b     .L800FACD4
/* B71CC4 800FAB24 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FAB28
/* B71CC8 800FAB28 964F0254 */  lhu   $t7, 0x254($s2)
/* B71CCC 800FAB2C 3C013000 */  lui   $at, 0x3000
/* B71CD0 800FAB30 0015CE00 */  sll   $t9, $s5, 0x18
/* B71CD4 800FAB34 01E17025 */  or    $t6, $t7, $at
/* B71CD8 800FAB38 0C03E803 */  jal   Audio_QueueSeqCmd
/* B71CDC 800FAB3C 01D92025 */   or    $a0, $t6, $t9
/* B71CE0 800FAB40 10000064 */  b     .L800FACD4
/* B71CE4 800FAB44 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FAB48
/* B71CE8 800FAB48 023E0019 */  multu $s1, $fp
/* B71CEC 800FAB4C 00115E00 */  sll   $t3, $s1, 0x18
/* B71CF0 800FAB50 3C010001 */  lui   $at, 1
/* B71CF4 800FAB54 00005012 */  mflo  $t2
/* B71CF8 800FAB58 02EA8021 */  addu  $s0, $s7, $t2
/* B71CFC 800FAB5C 96180254 */  lhu   $t8, 0x254($s0)
/* B71D00 800FAB60 030B2025 */  or    $a0, $t8, $t3
/* B71D04 800FAB64 0C03E803 */  jal   Audio_QueueSeqCmd
/* B71D08 800FAB68 00812025 */   or    $a0, $a0, $at
/* B71D0C 800FAB6C 240D0001 */  li    $t5, 1
/* B71D10 800FAB70 240C007F */  li    $t4, 127
/* B71D14 800FAB74 A20D0013 */  sb    $t5, 0x13($s0)
/* B71D18 800FAB78 A20C000F */  sb    $t4, 0xf($s0)
/* B71D1C 800FAB7C 10000055 */  b     .L800FACD4
/* B71D20 800FAB80 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FAB84
/* B71D24 800FAB84 3C01B000 */  lui   $at, (0xB0003000 >> 16) # lui $at, 0xb000
/* B71D28 800FAB88 34213000 */  ori   $at, (0xB0003000 & 0xFFFF) # ori $at, $at, 0x3000
/* B71D2C 800FAB8C 00117E00 */  sll   $t7, $s1, 0x18
/* B71D30 800FAB90 01E17025 */  or    $t6, $t7, $at
/* B71D34 800FAB94 0010CC00 */  sll   $t9, $s0, 0x10
/* B71D38 800FAB98 01D95025 */  or    $t2, $t6, $t9
/* B71D3C 800FAB9C 0C03E803 */  jal   Audio_QueueSeqCmd
/* B71D40 800FABA0 01472025 */   or    $a0, $t2, $a3
/* B71D44 800FABA4 1000004B */  b     .L800FACD4
/* B71D48 800FABA8 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FABAC
/* B71D4C 800FABAC 3C01B000 */  lui   $at, (0xB0004000 >> 16) # lui $at, 0xb000
/* B71D50 800FABB0 34214000 */  ori   $at, (0xB0004000 & 0xFFFF) # ori $at, $at, 0x4000
/* B71D54 800FABB4 0011C600 */  sll   $t8, $s1, 0x18
/* B71D58 800FABB8 03015825 */  or    $t3, $t8, $at
/* B71D5C 800FABBC 00076C00 */  sll   $t5, $a3, 0x10
/* B71D60 800FABC0 0C03E803 */  jal   Audio_QueueSeqCmd
/* B71D64 800FABC4 016D2025 */   or    $a0, $t3, $t5
/* B71D68 800FABC8 10000042 */  b     .L800FACD4
/* B71D6C 800FABCC 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FABD0
/* B71D70 800FABD0 023E0019 */  multu $s1, $fp
/* B71D74 800FABD4 0011CE00 */  sll   $t9, $s1, 0x18
/* B71D78 800FABD8 3043FFFF */  andi  $v1, $v0, 0xffff
/* B71D7C 800FABDC 00006012 */  mflo  $t4
/* B71D80 800FABE0 02EC8021 */  addu  $s0, $s7, $t4
/* B71D84 800FABE4 920F004E */  lbu   $t7, 0x4e($s0)
/* B71D88 800FABE8 000F7400 */  sll   $t6, $t7, 0x10
/* B71D8C 800FABEC 01D95025 */  or    $t2, $t6, $t9
/* B71D90 800FABF0 0C03E803 */  jal   Audio_QueueSeqCmd
/* B71D94 800FABF4 01432025 */   or    $a0, $t2, $v1
/* B71D98 800FABF8 322400FF */  andi  $a0, $s1, 0xff
/* B71D9C 800FABFC 24050001 */  li    $a1, 1
/* B71DA0 800FAC00 2406007F */  li    $a2, 127
/* B71DA4 800FAC04 0C03E890 */  jal   Audio_SetVolScale
/* B71DA8 800FAC08 00003825 */   move  $a3, $zero
/* B71DAC 800FAC0C A200004E */  sb    $zero, 0x4e($s0)
/* B71DB0 800FAC10 10000030 */  b     .L800FACD4
/* B71DB4 800FAC14 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FAC18
/* B71DB8 800FAC18 A250004E */  sb    $s0, 0x4e($s2)
/* B71DBC 800FAC1C 1000002D */  b     .L800FACD4
/* B71DC0 800FAC20 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FAC24
/* B71DC4 800FAC24 322400FF */  andi  $a0, $s1, 0xff
/* B71DC8 800FAC28 320500FF */  andi  $a1, $s0, 0xff
/* B71DCC 800FAC2C 0C03E890 */  jal   Audio_SetVolScale
/* B71DD0 800FAC30 2406007F */   li    $a2, 127
/* B71DD4 800FAC34 10000027 */  b     .L800FACD4
/* B71DD8 800FAC38 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FAC3C
/* B71DDC 800FAC3C 30F80001 */  andi  $t8, $a3, 1
/* B71DE0 800FAC40 13000004 */  beqz  $t8, .L800FAC54
/* B71DE4 800FAC44 00E08025 */   move  $s0, $a3
/* B71DE8 800FAC48 02C02025 */  move  $a0, $s6
/* B71DEC 800FAC4C 0C0396BF */  jal   Audio_QueueCmdS32
/* B71DF0 800FAC50 00002825 */   move  $a1, $zero
.L800FAC54:
/* B71DF4 800FAC54 320B0002 */  andi  $t3, $s0, 2
/* B71DF8 800FAC58 11600003 */  beqz  $t3, .L800FAC68
/* B71DFC 800FAC5C 02C02025 */   move  $a0, $s6
/* B71E00 800FAC60 0C0396BF */  jal   Audio_QueueCmdS32
/* B71E04 800FAC64 24050001 */   li    $a1, 1
.L800FAC68:
/* B71E08 800FAC68 320D0004 */  andi  $t5, $s0, 4
/* B71E0C 800FAC6C 11A00003 */  beqz  $t5, .L800FAC7C
/* B71E10 800FAC70 02C02025 */   move  $a0, $s6
/* B71E14 800FAC74 0C0396BF */  jal   Audio_QueueCmdS32
/* B71E18 800FAC78 24050002 */   li    $a1, 2
.L800FAC7C:
/* B71E1C 800FAC7C 10000015 */  b     .L800FACD4
/* B71E20 800FAC80 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FAC84
/* B71E24 800FAC84 00116600 */  sll   $t4, $s1, 0x18
/* B71E28 800FAC88 3C01A000 */  lui   $at, 0xa000
/* B71E2C 800FAC8C 3043FFFF */  andi  $v1, $v0, 0xffff
/* B71E30 800FAC90 01817825 */  or    $t7, $t4, $at
/* B71E34 800FAC94 0C03E803 */  jal   Audio_QueueSeqCmd
/* B71E38 800FAC98 01E32025 */   or    $a0, $t7, $v1
/* B71E3C 800FAC9C 1000000D */  b     .L800FACD4
/* B71E40 800FACA0 9243004D */   lbu   $v1, 0x4d($s2)
glabel L800FACA4
/* B71E44 800FACA4 00075880 */  sll   $t3, $a3, 2
/* B71E48 800FACA8 01675821 */  addu  $t3, $t3, $a3
/* B71E4C 800FACAC 00117600 */  sll   $t6, $s1, 0x18
/* B71E50 800FACB0 3C015000 */  lui   $at, 0x5000
/* B71E54 800FACB4 01C1C825 */  or    $t9, $t6, $at
/* B71E58 800FACB8 000B5840 */  sll   $t3, $t3, 1
/* B71E5C 800FACBC 00105400 */  sll   $t2, $s0, 0x10
/* B71E60 800FACC0 032AC025 */  or    $t8, $t9, $t2
/* B71E64 800FACC4 316DFFFF */  andi  $t5, $t3, 0xffff
/* B71E68 800FACC8 0C03E803 */  jal   Audio_QueueSeqCmd
/* B71E6C 800FACCC 030D2025 */   or    $a0, $t8, $t5
/* B71E70 800FACD0 9243004D */  lbu   $v1, 0x4d($s2)
.L800FACD4:
glabel L800FACD4
/* B71E74 800FACD4 26730001 */  addiu $s3, $s3, 1
/* B71E78 800FACD8 327300FF */  andi  $s3, $s3, 0xff
/* B71E7C 800FACDC 0263082A */  slt   $at, $s3, $v1
/* B71E80 800FACE0 5420FF69 */  bnezl $at, .L800FAA88
/* B71E84 800FACE4 0013C080 */   sll   $t8, $s3, 2
.L800FACE8:
/* B71E88 800FACE8 A240004D */  sb    $zero, 0x4d($s2)
.L800FACEC:
/* B71E8C 800FACEC 26B50001 */  addiu $s5, $s5, 1
.L800FACF0:
/* B71E90 800FACF0 32B500FF */  andi  $s5, $s5, 0xff
/* B71E94 800FACF4 2AA10004 */  slti  $at, $s5, 4
/* B71E98 800FACF8 1420FDCB */  bnez  $at, .L800FA428
/* B71E9C 800FACFC 00000000 */   nop   
.L800FAD00:
/* B71EA0 800FAD00 8FBF0044 */  lw    $ra, 0x44($sp)
/* B71EA4 800FAD04 D7B40018 */  ldc1  $f20, 0x18($sp)
/* B71EA8 800FAD08 8FB00020 */  lw    $s0, 0x20($sp)
/* B71EAC 800FAD0C 8FB10024 */  lw    $s1, 0x24($sp)
/* B71EB0 800FAD10 8FB20028 */  lw    $s2, 0x28($sp)
/* B71EB4 800FAD14 8FB3002C */  lw    $s3, 0x2c($sp)
/* B71EB8 800FAD18 8FB40030 */  lw    $s4, 0x30($sp)
/* B71EBC 800FAD1C 8FB50034 */  lw    $s5, 0x34($sp)
/* B71EC0 800FAD20 8FB60038 */  lw    $s6, 0x38($sp)
/* B71EC4 800FAD24 8FB7003C */  lw    $s7, 0x3c($sp)
/* B71EC8 800FAD28 8FBE0040 */  lw    $fp, 0x40($sp)
/* B71ECC 800FAD2C 03E00008 */  jr    $ra
/* B71ED0 800FAD30 27BD0090 */   addiu $sp, $sp, 0x90

