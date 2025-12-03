
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	268080e7          	jalr	616(ra) # 26c <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <concat_path.constprop.0>:
      1c:	00000793          	li	a5,0
      20:	03f00893          	li	a7,63
      24:	00f586b3          	add	a3,a1,a5
      28:	0006c803          	lbu	a6,0(a3)
      2c:	00078713          	mv	a4,a5
      30:	00f506b3          	add	a3,a0,a5
      34:	02080a63          	beqz	a6,68 <concat_path.constprop.0+0x4c>
      38:	03179263          	bne	a5,a7,5c <concat_path.constprop.0+0x40>
      3c:	00f507b3          	add	a5,a0,a5
      40:	03f50513          	add	a0,a0,63
      44:	00064703          	lbu	a4,0(a2)
      48:	00070663          	beqz	a4,54 <concat_path.constprop.0+0x38>
      4c:	00160613          	add	a2,a2,1
      50:	04a79063          	bne	a5,a0,90 <concat_path.constprop.0+0x74>
      54:	00078023          	sb	zero,0(a5)
      58:	00008067          	ret
      5c:	01068023          	sb	a6,0(a3)
      60:	00178793          	add	a5,a5,1
      64:	fc1ff06f          	j	24 <concat_path.constprop.0+0x8>
      68:	fc078ae3          	beqz	a5,3c <concat_path.constprop.0+0x20>
      6c:	fff6c583          	lbu	a1,-1(a3)
      70:	02f00693          	li	a3,47
      74:	fcd584e3          	beq	a1,a3,3c <concat_path.constprop.0+0x20>
      78:	03f00593          	li	a1,63
      7c:	fcb780e3          	beq	a5,a1,3c <concat_path.constprop.0+0x20>
      80:	00e50733          	add	a4,a0,a4
      84:	00178793          	add	a5,a5,1
      88:	00d70023          	sb	a3,0(a4)
      8c:	fb1ff06f          	j	3c <concat_path.constprop.0+0x20>
      90:	00e78023          	sb	a4,0(a5)
      94:	00178793          	add	a5,a5,1
      98:	fadff06f          	j	44 <concat_path.constprop.0+0x28>

0000009c <list_dir>:
      9c:	e8010113          	add	sp,sp,-384 # fe80 <_files+0x6684>
      a0:	00410593          	add	a1,sp,4
      a4:	16812c23          	sw	s0,376(sp)
      a8:	16112e23          	sw	ra,380(sp)
      ac:	16912a23          	sw	s1,372(sp)
      b0:	17212823          	sw	s2,368(sp)
      b4:	17312623          	sw	s3,364(sp)
      b8:	17412423          	sw	s4,360(sp)
      bc:	17512223          	sw	s5,356(sp)
      c0:	17612023          	sw	s6,352(sp)
      c4:	00050413          	mv	s0,a0
      c8:	00003097          	auipc	ra,0x3
      cc:	27c080e7          	jalr	636(ra) # 3344 <fl_opendir>
      d0:	02050e63          	beqz	a0,10c <list_dir+0x70>
      d4:	00005937          	lui	s2,0x5
      d8:	000054b7          	lui	s1,0x5
      dc:	000059b7          	lui	s3,0x5
      e0:	00005a37          	lui	s4,0x5
      e4:	19490913          	add	s2,s2,404 # 5194 <names>
      e8:	0dc48493          	add	s1,s1,220 # 50dc <song>
      ec:	0bc98993          	add	s3,s3,188 # 50bc <sizes>
      f0:	00700a93          	li	s5,7
      f4:	02e00b13          	li	s6,46
      f8:	08ca2783          	lw	a5,140(s4) # 508c <nfiles>
      fc:	0afad863          	bge	s5,a5,1ac <list_dir+0x110>
     100:	00410513          	add	a0,sp,4
     104:	00002097          	auipc	ra,0x2
     108:	e1c080e7          	jalr	-484(ra) # 1f20 <fl_closedir>
     10c:	17c12083          	lw	ra,380(sp)
     110:	17812403          	lw	s0,376(sp)
     114:	17412483          	lw	s1,372(sp)
     118:	17012903          	lw	s2,368(sp)
     11c:	16c12983          	lw	s3,364(sp)
     120:	16812a03          	lw	s4,360(sp)
     124:	16412a83          	lw	s5,356(sp)
     128:	16012b03          	lw	s6,352(sp)
     12c:	18010113          	add	sp,sp,384
     130:	00008067          	ret
     134:	08ca2a83          	lw	s5,140(s4)
     138:	05010613          	add	a2,sp,80
     13c:	00040593          	mv	a1,s0
     140:	006a9513          	sll	a0,s5,0x6
     144:	00a90533          	add	a0,s2,a0
     148:	00000097          	auipc	ra,0x0
     14c:	ed4080e7          	jalr	-300(ra) # 1c <concat_path.constprop.0>
     150:	001a9793          	sll	a5,s5,0x1
     154:	015787b3          	add	a5,a5,s5
     158:	00379793          	sll	a5,a5,0x3
     15c:	415787b3          	sub	a5,a5,s5
     160:	00f48533          	add	a0,s1,a5
     164:	01600613          	li	a2,22
     168:	05010593          	add	a1,sp,80
     16c:	00001097          	auipc	ra,0x1
     170:	1fc080e7          	jalr	508(ra) # 1368 <strncpy>
     174:	08ca2703          	lw	a4,140(s4)
     178:	15c12683          	lw	a3,348(sp)
     17c:	00171793          	sll	a5,a4,0x1
     180:	00e787b3          	add	a5,a5,a4
     184:	00379793          	sll	a5,a5,0x3
     188:	40e787b3          	sub	a5,a5,a4
     18c:	00f487b3          	add	a5,s1,a5
     190:	00078b23          	sb	zero,22(a5)
     194:	00271793          	sll	a5,a4,0x2
     198:	00f987b3          	add	a5,s3,a5
     19c:	00170713          	add	a4,a4,1
     1a0:	00d7a023          	sw	a3,0(a5)
     1a4:	08ea2623          	sw	a4,140(s4)
     1a8:	f49ff06f          	j	f0 <list_dir+0x54>
     1ac:	05010593          	add	a1,sp,80
     1b0:	00410513          	add	a0,sp,4
     1b4:	00004097          	auipc	ra,0x4
     1b8:	844080e7          	jalr	-1980(ra) # 39f8 <fl_readdir>
     1bc:	f40512e3          	bnez	a0,100 <list_dir+0x64>
     1c0:	05014783          	lbu	a5,80(sp)
     1c4:	f3678ae3          	beq	a5,s6,f8 <list_dir+0x5c>
     1c8:	15414783          	lbu	a5,340(sp)
     1cc:	f60784e3          	beqz	a5,134 <list_dir+0x98>
     1d0:	01010513          	add	a0,sp,16
     1d4:	05010613          	add	a2,sp,80
     1d8:	00040593          	mv	a1,s0
     1dc:	00000097          	auipc	ra,0x0
     1e0:	e40080e7          	jalr	-448(ra) # 1c <concat_path.constprop.0>
     1e4:	01010513          	add	a0,sp,16
     1e8:	00000097          	auipc	ra,0x0
     1ec:	eb4080e7          	jalr	-332(ra) # 9c <list_dir>
     1f0:	f01ff06f          	j	f0 <list_dir+0x54>

000001f4 <clear_audio>:
     1f4:	ff010113          	add	sp,sp,-16
     1f8:	000057b7          	lui	a5,0x5
     1fc:	00812423          	sw	s0,8(sp)
     200:	db47a403          	lw	s0,-588(a5) # 4db4 <AUDIO>
     204:	00112623          	sw	ra,12(sp)
     208:	00912223          	sw	s1,4(sp)
     20c:	00042703          	lw	a4,0(s0)
     210:	00042783          	lw	a5,0(s0)
     214:	fef70ee3          	beq	a4,a5,210 <clear_audio+0x1c>
     218:	00042483          	lw	s1,0(s0)
     21c:	20000613          	li	a2,512
     220:	00000593          	li	a1,0
     224:	00048513          	mv	a0,s1
     228:	00001097          	auipc	ra,0x1
     22c:	0a0080e7          	jalr	160(ra) # 12c8 <memset>
     230:	00042783          	lw	a5,0(s0)
     234:	fef48ee3          	beq	s1,a5,230 <clear_audio+0x3c>
     238:	00042483          	lw	s1,0(s0)
     23c:	20000613          	li	a2,512
     240:	00000593          	li	a1,0
     244:	00048513          	mv	a0,s1
     248:	00001097          	auipc	ra,0x1
     24c:	080080e7          	jalr	128(ra) # 12c8 <memset>
     250:	00042783          	lw	a5,0(s0)
     254:	fef48ee3          	beq	s1,a5,250 <clear_audio+0x5c>
     258:	00c12083          	lw	ra,12(sp)
     25c:	00812403          	lw	s0,8(sp)
     260:	00412483          	lw	s1,4(sp)
     264:	01010113          	add	sp,sp,16
     268:	00008067          	ret

0000026c <main>:
     26c:	000017b7          	lui	a5,0x1
     270:	fd010113          	add	sp,sp,-48
     274:	00005737          	lui	a4,0x5
     278:	5a478793          	add	a5,a5,1444 # 15a4 <display_putchar>
     27c:	02112623          	sw	ra,44(sp)
     280:	0af72023          	sw	a5,160(a4) # 50a0 <f_putchar>
     284:	02812423          	sw	s0,40(sp)
     288:	03212023          	sw	s2,32(sp)
     28c:	02912223          	sw	s1,36(sp)
     290:	01312e23          	sw	s3,28(sp)
     294:	01412c23          	sw	s4,24(sp)
     298:	01512a23          	sw	s5,20(sp)
     29c:	01612823          	sw	s6,16(sp)
     2a0:	01712623          	sw	s7,12(sp)
     2a4:	01812423          	sw	s8,8(sp)
     2a8:	01912223          	sw	s9,4(sp)
     2ac:	00001097          	auipc	ra,0x1
     2b0:	200080e7          	jalr	512(ra) # 14ac <oled_init>
     2b4:	00001097          	auipc	ra,0x1
     2b8:	204080e7          	jalr	516(ra) # 14b8 <oled_fullscreen>
     2bc:	00001097          	auipc	ra,0x1
     2c0:	2b4080e7          	jalr	692(ra) # 1570 <display_framebuffer>
     2c4:	00004637          	lui	a2,0x4
     2c8:	00000593          	li	a1,0
     2cc:	00001097          	auipc	ra,0x1
     2d0:	ffc080e7          	jalr	-4(ra) # 12c8 <memset>
     2d4:	00001097          	auipc	ra,0x1
     2d8:	3f4080e7          	jalr	1012(ra) # 16c8 <display_refresh>
     2dc:	00000593          	li	a1,0
     2e0:	00000513          	li	a0,0
     2e4:	00001097          	auipc	ra,0x1
     2e8:	298080e7          	jalr	664(ra) # 157c <display_set_cursor>
     2ec:	00000593          	li	a1,0
     2f0:	0ff00513          	li	a0,255
     2f4:	00001097          	auipc	ra,0x1
     2f8:	29c080e7          	jalr	668(ra) # 1590 <display_set_front_back_color>
     2fc:	00005537          	lui	a0,0x5
     300:	dcc50513          	add	a0,a0,-564 # 4dcc <LEDS+0x4>
     304:	00001097          	auipc	ra,0x1
     308:	5bc080e7          	jalr	1468(ra) # 18c0 <printf>
     30c:	00001097          	auipc	ra,0x1
     310:	3bc080e7          	jalr	956(ra) # 16c8 <display_refresh>
     314:	00001937          	lui	s2,0x1
     318:	00001097          	auipc	ra,0x1
     31c:	cd8080e7          	jalr	-808(ra) # ff0 <sdcard_init>
     320:	00001437          	lui	s0,0x1
     324:	00002097          	auipc	ra,0x2
     328:	b8c080e7          	jalr	-1140(ra) # 1eb0 <fl_init>
     32c:	20c90593          	add	a1,s2,524 # 120c <sdcard_writesector>
     330:	1b840513          	add	a0,s0,440 # 11b8 <sdcard_readsector>
     334:	00003097          	auipc	ra,0x3
     338:	a10080e7          	jalr	-1520(ra) # 2d44 <fl_attach_media>
     33c:	00050493          	mv	s1,a0
     340:	fe0516e3          	bnez	a0,32c <main+0xc0>
     344:	00005537          	lui	a0,0x5
     348:	dd850513          	add	a0,a0,-552 # 4dd8 <LEDS+0x10>
     34c:	00001097          	auipc	ra,0x1
     350:	574080e7          	jalr	1396(ra) # 18c0 <printf>
     354:	00001097          	auipc	ra,0x1
     358:	374080e7          	jalr	884(ra) # 16c8 <display_refresh>
     35c:	00005537          	lui	a0,0x5
     360:	000059b7          	lui	s3,0x5
     364:	de050513          	add	a0,a0,-544 # 4de0 <LEDS+0x18>
     368:	0809a623          	sw	zero,140(s3) # 508c <nfiles>
     36c:	00000097          	auipc	ra,0x0
     370:	d30080e7          	jalr	-720(ra) # 9c <list_dir>
     374:	08c9a783          	lw	a5,140(s3)
     378:	04079063          	bnez	a5,3b8 <main+0x14c>
     37c:	00000593          	li	a1,0
     380:	00000513          	li	a0,0
     384:	00001097          	auipc	ra,0x1
     388:	1f8080e7          	jalr	504(ra) # 157c <display_set_cursor>
     38c:	00000593          	li	a1,0
     390:	0ff00513          	li	a0,255
     394:	00001097          	auipc	ra,0x1
     398:	1fc080e7          	jalr	508(ra) # 1590 <display_set_front_back_color>
     39c:	00005537          	lui	a0,0x5
     3a0:	de850513          	add	a0,a0,-536 # 4de8 <LEDS+0x20>
     3a4:	00001097          	auipc	ra,0x1
     3a8:	51c080e7          	jalr	1308(ra) # 18c0 <printf>
     3ac:	00001097          	auipc	ra,0x1
     3b0:	31c080e7          	jalr	796(ra) # 16c8 <display_refresh>
     3b4:	0000006f          	j	3b4 <main+0x148>
     3b8:	000057b7          	lui	a5,0x5
     3bc:	db87aa03          	lw	s4,-584(a5) # 4db8 <BUTTONS>
     3c0:	00000a93          	li	s5,0
     3c4:	00000413          	li	s0,0
     3c8:	00005b37          	lui	s6,0x5
     3cc:	00005bb7          	lui	s7,0x5
     3d0:	00005c37          	lui	s8,0x5
     3d4:	00000593          	li	a1,0
     3d8:	00000513          	li	a0,0
     3dc:	00001097          	auipc	ra,0x1
     3e0:	1a0080e7          	jalr	416(ra) # 157c <display_set_cursor>
     3e4:	0ffaf593          	zext.b	a1,s5
     3e8:	07f58513          	add	a0,a1,127
     3ec:	0ff57513          	zext.b	a0,a0
     3f0:	00001097          	auipc	ra,0x1
     3f4:	1a0080e7          	jalr	416(ra) # 1590 <display_set_front_back_color>
     3f8:	e04b0513          	add	a0,s6,-508 # 4e04 <LEDS+0x3c>
     3fc:	007a8a93          	add	s5,s5,7
     400:	00001097          	auipc	ra,0x1
     404:	4c0080e7          	jalr	1216(ra) # 18c0 <printf>
     408:	0dcb8c93          	add	s9,s7,220 # 50dc <song>
     40c:	00000913          	li	s2,0
     410:	08c9a783          	lw	a5,140(s3)
     414:	0af94a63          	blt	s2,a5,4c8 <main+0x25c>
     418:	00001097          	auipc	ra,0x1
     41c:	2b0080e7          	jalr	688(ra) # 16c8 <display_refresh>
     420:	000a2783          	lw	a5,0(s4)
     424:	0107f793          	and	a5,a5,16
     428:	00078463          	beqz	a5,430 <main+0x1c4>
     42c:	00140413          	add	s0,s0,1
     430:	000a2783          	lw	a5,0(s4)
     434:	0087f793          	and	a5,a5,8
     438:	00078463          	beqz	a5,440 <main+0x1d4>
     43c:	fff40413          	add	s0,s0,-1
     440:	08c9a783          	lw	a5,140(s3)
     444:	0c045263          	bgez	s0,508 <main+0x29c>
     448:	fff78413          	add	s0,a5,-1
     44c:	000a2783          	lw	a5,0(s4)
     450:	0207f793          	and	a5,a5,32
     454:	f80780e3          	beqz	a5,3d4 <main+0x168>
     458:	00005537          	lui	a0,0x5
     45c:	00641413          	sll	s0,s0,0x6
     460:	000055b7          	lui	a1,0x5
     464:	19450513          	add	a0,a0,404 # 5194 <names>
     468:	e2858593          	add	a1,a1,-472 # 4e28 <LEDS+0x60>
     46c:	00850533          	add	a0,a0,s0
     470:	00004097          	auipc	ra,0x4
     474:	518080e7          	jalr	1304(ra) # 4988 <fl_fopen>
     478:	00050913          	mv	s2,a0
     47c:	08051c63          	bnez	a0,514 <main+0x2a8>
     480:	00005537          	lui	a0,0x5
     484:	e2c50513          	add	a0,a0,-468 # 4e2c <LEDS+0x64>
     488:	00001097          	auipc	ra,0x1
     48c:	438080e7          	jalr	1080(ra) # 18c0 <printf>
     490:	02812403          	lw	s0,40(sp)
     494:	02c12083          	lw	ra,44(sp)
     498:	02412483          	lw	s1,36(sp)
     49c:	02012903          	lw	s2,32(sp)
     4a0:	01c12983          	lw	s3,28(sp)
     4a4:	01812a03          	lw	s4,24(sp)
     4a8:	01412a83          	lw	s5,20(sp)
     4ac:	01012b03          	lw	s6,16(sp)
     4b0:	00c12b83          	lw	s7,12(sp)
     4b4:	00812c03          	lw	s8,8(sp)
     4b8:	00412c83          	lw	s9,4(sp)
     4bc:	03010113          	add	sp,sp,48
     4c0:	00001317          	auipc	t1,0x1
     4c4:	20830067          	jr	520(t1) # 16c8 <display_refresh>
     4c8:	03240a63          	beq	s0,s2,4fc <main+0x290>
     4cc:	0ff00513          	li	a0,255
     4d0:	00000593          	li	a1,0
     4d4:	00001097          	auipc	ra,0x1
     4d8:	0bc080e7          	jalr	188(ra) # 1590 <display_set_front_back_color>
     4dc:	000c8613          	mv	a2,s9
     4e0:	00090593          	mv	a1,s2
     4e4:	e20c0513          	add	a0,s8,-480 # 4e20 <LEDS+0x58>
     4e8:	00001097          	auipc	ra,0x1
     4ec:	3d8080e7          	jalr	984(ra) # 18c0 <printf>
     4f0:	00190913          	add	s2,s2,1
     4f4:	017c8c93          	add	s9,s9,23
     4f8:	f19ff06f          	j	410 <main+0x1a4>
     4fc:	00000513          	li	a0,0
     500:	0ff00593          	li	a1,255
     504:	fd1ff06f          	j	4d4 <main+0x268>
     508:	f4f442e3          	blt	s0,a5,44c <main+0x1e0>
     50c:	00000413          	li	s0,0
     510:	f3dff06f          	j	44c <main+0x1e0>
     514:	0ff00593          	li	a1,255
     518:	00000513          	li	a0,0
     51c:	00001097          	auipc	ra,0x1
     520:	074080e7          	jalr	116(ra) # 1590 <display_set_front_back_color>
     524:	00005537          	lui	a0,0x5
     528:	e4050513          	add	a0,a0,-448 # 4e40 <LEDS+0x78>
     52c:	00001097          	auipc	ra,0x1
     530:	394080e7          	jalr	916(ra) # 18c0 <printf>
     534:	00001097          	auipc	ra,0x1
     538:	194080e7          	jalr	404(ra) # 16c8 <display_refresh>
     53c:	00000593          	li	a1,0
     540:	0ff00513          	li	a0,255
     544:	00001097          	auipc	ra,0x1
     548:	04c080e7          	jalr	76(ra) # 1590 <display_set_front_back_color>
     54c:	00005537          	lui	a0,0x5
     550:	e5450513          	add	a0,a0,-428 # 4e54 <LEDS+0x8c>
     554:	00001097          	auipc	ra,0x1
     558:	36c080e7          	jalr	876(ra) # 18c0 <printf>
     55c:	00001097          	auipc	ra,0x1
     560:	16c080e7          	jalr	364(ra) # 16c8 <display_refresh>
     564:	00000097          	auipc	ra,0x0
     568:	c90080e7          	jalr	-880(ra) # 1f4 <clear_audio>
     56c:	000057b7          	lui	a5,0x5
     570:	db47a983          	lw	s3,-588(a5) # 4db4 <AUDIO>
     574:	000057b7          	lui	a5,0x5
     578:	dc87aa83          	lw	s5,-568(a5) # 4dc8 <LEDS>
     57c:	00100413          	li	s0,1
     580:	1ff00b13          	li	s6,511
     584:	08000b93          	li	s7,128
     588:	0009aa03          	lw	s4,0(s3)
     58c:	00090693          	mv	a3,s2
     590:	20000613          	li	a2,512
     594:	00100593          	li	a1,1
     598:	000a0513          	mv	a0,s4
     59c:	00004097          	auipc	ra,0x4
     5a0:	e24080e7          	jalr	-476(ra) # 43c0 <fl_fread>
     5a4:	02ab5c63          	bge	s6,a0,5dc <main+0x370>
     5a8:	0009a783          	lw	a5,0(s3)
     5ac:	fefa0ee3          	beq	s4,a5,5a8 <main+0x33c>
     5b0:	01740663          	beq	s0,s7,5bc <main+0x350>
     5b4:	00100793          	li	a5,1
     5b8:	00f41663          	bne	s0,a5,5c4 <main+0x358>
     5bc:	00100793          	li	a5,1
     5c0:	409784b3          	sub	s1,a5,s1
     5c4:	00048863          	beqz	s1,5d4 <main+0x368>
     5c8:	00141413          	sll	s0,s0,0x1
     5cc:	008aa023          	sw	s0,0(s5)
     5d0:	fb9ff06f          	j	588 <main+0x31c>
     5d4:	40145413          	sra	s0,s0,0x1
     5d8:	ff5ff06f          	j	5cc <main+0x360>
     5dc:	02812403          	lw	s0,40(sp)
     5e0:	02c12083          	lw	ra,44(sp)
     5e4:	02412483          	lw	s1,36(sp)
     5e8:	01c12983          	lw	s3,28(sp)
     5ec:	01812a03          	lw	s4,24(sp)
     5f0:	01412a83          	lw	s5,20(sp)
     5f4:	01012b03          	lw	s6,16(sp)
     5f8:	00c12b83          	lw	s7,12(sp)
     5fc:	00812c03          	lw	s8,8(sp)
     600:	00412c83          	lw	s9,4(sp)
     604:	00090513          	mv	a0,s2
     608:	02012903          	lw	s2,32(sp)
     60c:	03010113          	add	sp,sp,48
     610:	00004317          	auipc	t1,0x4
     614:	cd030067          	jr	-816(t1) # 42e0 <fl_fclose>

00000618 <sdcard_ponder>:
     618:	fe010113          	add	sp,sp,-32
     61c:	00812e23          	sw	s0,28(sp)
     620:	02010413          	add	s0,sp,32
     624:	fe042623          	sw	zero,-20(s0)
     628:	fe042423          	sw	zero,-24(s0)
     62c:	0380006f          	j	664 <sdcard_ponder+0x4c>
     630:	000057b7          	lui	a5,0x5
     634:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     638:	fec42703          	lw	a4,-20(s0)
     63c:	00676713          	or	a4,a4,6
     640:	00e7a023          	sw	a4,0(a5)
     644:	00100713          	li	a4,1
     648:	fec42783          	lw	a5,-20(s0)
     64c:	40f707b3          	sub	a5,a4,a5
     650:	fef42623          	sw	a5,-20(s0)
     654:	00000013          	nop
     658:	fe842783          	lw	a5,-24(s0)
     65c:	00178793          	add	a5,a5,1
     660:	fef42423          	sw	a5,-24(s0)
     664:	fe842703          	lw	a4,-24(s0)
     668:	00f00793          	li	a5,15
     66c:	fce7d2e3          	bge	a5,a4,630 <sdcard_ponder+0x18>
     670:	00000013          	nop
     674:	00000013          	nop
     678:	01c12403          	lw	s0,28(sp)
     67c:	02010113          	add	sp,sp,32
     680:	00008067          	ret

00000684 <sdcard_send>:
     684:	fd010113          	add	sp,sp,-48
     688:	02112623          	sw	ra,44(sp)
     68c:	02812423          	sw	s0,40(sp)
     690:	03010413          	add	s0,sp,48
     694:	fca42e23          	sw	a0,-36(s0)
     698:	fe042623          	sw	zero,-20(s0)
     69c:	fe042423          	sw	zero,-24(s0)
     6a0:	fdc42783          	lw	a5,-36(s0)
     6a4:	fef42223          	sw	a5,-28(s0)
     6a8:	fe442783          	lw	a5,-28(s0)
     6ac:	4077d793          	sra	a5,a5,0x7
     6b0:	0017f793          	and	a5,a5,1
     6b4:	fef42423          	sw	a5,-24(s0)
     6b8:	fec42783          	lw	a5,-20(s0)
     6bc:	fe442703          	lw	a4,-28(s0)
     6c0:	00f717b3          	sll	a5,a4,a5
     6c4:	fef42223          	sw	a5,-28(s0)
     6c8:	fe842783          	lw	a5,-24(s0)
     6cc:	00179693          	sll	a3,a5,0x1
     6d0:	000057b7          	lui	a5,0x5
     6d4:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     6d8:	fec42703          	lw	a4,-20(s0)
     6dc:	00e6e733          	or	a4,a3,a4
     6e0:	00e7a023          	sw	a4,0(a5)
     6e4:	00100713          	li	a4,1
     6e8:	fec42783          	lw	a5,-20(s0)
     6ec:	40f707b3          	sub	a5,a4,a5
     6f0:	fef42623          	sw	a5,-20(s0)
     6f4:	fe442783          	lw	a5,-28(s0)
     6f8:	4077d793          	sra	a5,a5,0x7
     6fc:	0017f793          	and	a5,a5,1
     700:	fef42423          	sw	a5,-24(s0)
     704:	fec42783          	lw	a5,-20(s0)
     708:	fe442703          	lw	a4,-28(s0)
     70c:	00f717b3          	sll	a5,a4,a5
     710:	fef42223          	sw	a5,-28(s0)
     714:	fe842783          	lw	a5,-24(s0)
     718:	00179693          	sll	a3,a5,0x1
     71c:	000057b7          	lui	a5,0x5
     720:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     724:	fec42703          	lw	a4,-20(s0)
     728:	00e6e733          	or	a4,a3,a4
     72c:	00e7a023          	sw	a4,0(a5)
     730:	00100713          	li	a4,1
     734:	fec42783          	lw	a5,-20(s0)
     738:	40f707b3          	sub	a5,a4,a5
     73c:	fef42623          	sw	a5,-20(s0)
     740:	fe442783          	lw	a5,-28(s0)
     744:	4077d793          	sra	a5,a5,0x7
     748:	0017f793          	and	a5,a5,1
     74c:	fef42423          	sw	a5,-24(s0)
     750:	fec42783          	lw	a5,-20(s0)
     754:	fe442703          	lw	a4,-28(s0)
     758:	00f717b3          	sll	a5,a4,a5
     75c:	fef42223          	sw	a5,-28(s0)
     760:	fe842783          	lw	a5,-24(s0)
     764:	00179693          	sll	a3,a5,0x1
     768:	000057b7          	lui	a5,0x5
     76c:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     770:	fec42703          	lw	a4,-20(s0)
     774:	00e6e733          	or	a4,a3,a4
     778:	00e7a023          	sw	a4,0(a5)
     77c:	00100713          	li	a4,1
     780:	fec42783          	lw	a5,-20(s0)
     784:	40f707b3          	sub	a5,a4,a5
     788:	fef42623          	sw	a5,-20(s0)
     78c:	fe442783          	lw	a5,-28(s0)
     790:	4077d793          	sra	a5,a5,0x7
     794:	0017f793          	and	a5,a5,1
     798:	fef42423          	sw	a5,-24(s0)
     79c:	fec42783          	lw	a5,-20(s0)
     7a0:	fe442703          	lw	a4,-28(s0)
     7a4:	00f717b3          	sll	a5,a4,a5
     7a8:	fef42223          	sw	a5,-28(s0)
     7ac:	fe842783          	lw	a5,-24(s0)
     7b0:	00179693          	sll	a3,a5,0x1
     7b4:	000057b7          	lui	a5,0x5
     7b8:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     7bc:	fec42703          	lw	a4,-20(s0)
     7c0:	00e6e733          	or	a4,a3,a4
     7c4:	00e7a023          	sw	a4,0(a5)
     7c8:	00100713          	li	a4,1
     7cc:	fec42783          	lw	a5,-20(s0)
     7d0:	40f707b3          	sub	a5,a4,a5
     7d4:	fef42623          	sw	a5,-20(s0)
     7d8:	fe442783          	lw	a5,-28(s0)
     7dc:	4077d793          	sra	a5,a5,0x7
     7e0:	0017f793          	and	a5,a5,1
     7e4:	fef42423          	sw	a5,-24(s0)
     7e8:	fec42783          	lw	a5,-20(s0)
     7ec:	fe442703          	lw	a4,-28(s0)
     7f0:	00f717b3          	sll	a5,a4,a5
     7f4:	fef42223          	sw	a5,-28(s0)
     7f8:	fe842783          	lw	a5,-24(s0)
     7fc:	00179693          	sll	a3,a5,0x1
     800:	000057b7          	lui	a5,0x5
     804:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     808:	fec42703          	lw	a4,-20(s0)
     80c:	00e6e733          	or	a4,a3,a4
     810:	00e7a023          	sw	a4,0(a5)
     814:	00100713          	li	a4,1
     818:	fec42783          	lw	a5,-20(s0)
     81c:	40f707b3          	sub	a5,a4,a5
     820:	fef42623          	sw	a5,-20(s0)
     824:	fe442783          	lw	a5,-28(s0)
     828:	4077d793          	sra	a5,a5,0x7
     82c:	0017f793          	and	a5,a5,1
     830:	fef42423          	sw	a5,-24(s0)
     834:	fec42783          	lw	a5,-20(s0)
     838:	fe442703          	lw	a4,-28(s0)
     83c:	00f717b3          	sll	a5,a4,a5
     840:	fef42223          	sw	a5,-28(s0)
     844:	fe842783          	lw	a5,-24(s0)
     848:	00179693          	sll	a3,a5,0x1
     84c:	000057b7          	lui	a5,0x5
     850:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     854:	fec42703          	lw	a4,-20(s0)
     858:	00e6e733          	or	a4,a3,a4
     85c:	00e7a023          	sw	a4,0(a5)
     860:	00100713          	li	a4,1
     864:	fec42783          	lw	a5,-20(s0)
     868:	40f707b3          	sub	a5,a4,a5
     86c:	fef42623          	sw	a5,-20(s0)
     870:	fe442783          	lw	a5,-28(s0)
     874:	4077d793          	sra	a5,a5,0x7
     878:	0017f793          	and	a5,a5,1
     87c:	fef42423          	sw	a5,-24(s0)
     880:	fec42783          	lw	a5,-20(s0)
     884:	fe442703          	lw	a4,-28(s0)
     888:	00f717b3          	sll	a5,a4,a5
     88c:	fef42223          	sw	a5,-28(s0)
     890:	fe842783          	lw	a5,-24(s0)
     894:	00179693          	sll	a3,a5,0x1
     898:	000057b7          	lui	a5,0x5
     89c:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     8a0:	fec42703          	lw	a4,-20(s0)
     8a4:	00e6e733          	or	a4,a3,a4
     8a8:	00e7a023          	sw	a4,0(a5)
     8ac:	00100713          	li	a4,1
     8b0:	fec42783          	lw	a5,-20(s0)
     8b4:	40f707b3          	sub	a5,a4,a5
     8b8:	fef42623          	sw	a5,-20(s0)
     8bc:	fe442783          	lw	a5,-28(s0)
     8c0:	4077d793          	sra	a5,a5,0x7
     8c4:	0017f793          	and	a5,a5,1
     8c8:	fef42423          	sw	a5,-24(s0)
     8cc:	fec42783          	lw	a5,-20(s0)
     8d0:	fe442703          	lw	a4,-28(s0)
     8d4:	00f717b3          	sll	a5,a4,a5
     8d8:	fef42223          	sw	a5,-28(s0)
     8dc:	fe842783          	lw	a5,-24(s0)
     8e0:	00179693          	sll	a3,a5,0x1
     8e4:	000057b7          	lui	a5,0x5
     8e8:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     8ec:	fec42703          	lw	a4,-20(s0)
     8f0:	00e6e733          	or	a4,a3,a4
     8f4:	00e7a023          	sw	a4,0(a5)
     8f8:	00100713          	li	a4,1
     8fc:	fec42783          	lw	a5,-20(s0)
     900:	40f707b3          	sub	a5,a4,a5
     904:	fef42623          	sw	a5,-20(s0)
     908:	fe442783          	lw	a5,-28(s0)
     90c:	4077d793          	sra	a5,a5,0x7
     910:	0017f793          	and	a5,a5,1
     914:	fef42423          	sw	a5,-24(s0)
     918:	fec42783          	lw	a5,-20(s0)
     91c:	fe442703          	lw	a4,-28(s0)
     920:	00f717b3          	sll	a5,a4,a5
     924:	fef42223          	sw	a5,-28(s0)
     928:	fe842783          	lw	a5,-24(s0)
     92c:	00179693          	sll	a3,a5,0x1
     930:	000057b7          	lui	a5,0x5
     934:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     938:	fec42703          	lw	a4,-20(s0)
     93c:	00e6e733          	or	a4,a3,a4
     940:	00e7a023          	sw	a4,0(a5)
     944:	00100713          	li	a4,1
     948:	fec42783          	lw	a5,-20(s0)
     94c:	40f707b3          	sub	a5,a4,a5
     950:	fef42623          	sw	a5,-20(s0)
     954:	fe442783          	lw	a5,-28(s0)
     958:	4077d793          	sra	a5,a5,0x7
     95c:	0017f793          	and	a5,a5,1
     960:	fef42423          	sw	a5,-24(s0)
     964:	fec42783          	lw	a5,-20(s0)
     968:	fe442703          	lw	a4,-28(s0)
     96c:	00f717b3          	sll	a5,a4,a5
     970:	fef42223          	sw	a5,-28(s0)
     974:	fe842783          	lw	a5,-24(s0)
     978:	00179693          	sll	a3,a5,0x1
     97c:	000057b7          	lui	a5,0x5
     980:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     984:	fec42703          	lw	a4,-20(s0)
     988:	00e6e733          	or	a4,a3,a4
     98c:	00e7a023          	sw	a4,0(a5)
     990:	00100713          	li	a4,1
     994:	fec42783          	lw	a5,-20(s0)
     998:	40f707b3          	sub	a5,a4,a5
     99c:	fef42623          	sw	a5,-20(s0)
     9a0:	fe442783          	lw	a5,-28(s0)
     9a4:	4077d793          	sra	a5,a5,0x7
     9a8:	0017f793          	and	a5,a5,1
     9ac:	fef42423          	sw	a5,-24(s0)
     9b0:	fec42783          	lw	a5,-20(s0)
     9b4:	fe442703          	lw	a4,-28(s0)
     9b8:	00f717b3          	sll	a5,a4,a5
     9bc:	fef42223          	sw	a5,-28(s0)
     9c0:	fe842783          	lw	a5,-24(s0)
     9c4:	00179693          	sll	a3,a5,0x1
     9c8:	000057b7          	lui	a5,0x5
     9cc:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     9d0:	fec42703          	lw	a4,-20(s0)
     9d4:	00e6e733          	or	a4,a3,a4
     9d8:	00e7a023          	sw	a4,0(a5)
     9dc:	00100713          	li	a4,1
     9e0:	fec42783          	lw	a5,-20(s0)
     9e4:	40f707b3          	sub	a5,a4,a5
     9e8:	fef42623          	sw	a5,-20(s0)
     9ec:	fe442783          	lw	a5,-28(s0)
     9f0:	4077d793          	sra	a5,a5,0x7
     9f4:	0017f793          	and	a5,a5,1
     9f8:	fef42423          	sw	a5,-24(s0)
     9fc:	fec42783          	lw	a5,-20(s0)
     a00:	fe442703          	lw	a4,-28(s0)
     a04:	00f717b3          	sll	a5,a4,a5
     a08:	fef42223          	sw	a5,-28(s0)
     a0c:	fe842783          	lw	a5,-24(s0)
     a10:	00179693          	sll	a3,a5,0x1
     a14:	000057b7          	lui	a5,0x5
     a18:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     a1c:	fec42703          	lw	a4,-20(s0)
     a20:	00e6e733          	or	a4,a3,a4
     a24:	00e7a023          	sw	a4,0(a5)
     a28:	00100713          	li	a4,1
     a2c:	fec42783          	lw	a5,-20(s0)
     a30:	40f707b3          	sub	a5,a4,a5
     a34:	fef42623          	sw	a5,-20(s0)
     a38:	fe442783          	lw	a5,-28(s0)
     a3c:	4077d793          	sra	a5,a5,0x7
     a40:	0017f793          	and	a5,a5,1
     a44:	fef42423          	sw	a5,-24(s0)
     a48:	fec42783          	lw	a5,-20(s0)
     a4c:	fe442703          	lw	a4,-28(s0)
     a50:	00f717b3          	sll	a5,a4,a5
     a54:	fef42223          	sw	a5,-28(s0)
     a58:	fe842783          	lw	a5,-24(s0)
     a5c:	00179693          	sll	a3,a5,0x1
     a60:	000057b7          	lui	a5,0x5
     a64:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     a68:	fec42703          	lw	a4,-20(s0)
     a6c:	00e6e733          	or	a4,a3,a4
     a70:	00e7a023          	sw	a4,0(a5)
     a74:	00100713          	li	a4,1
     a78:	fec42783          	lw	a5,-20(s0)
     a7c:	40f707b3          	sub	a5,a4,a5
     a80:	fef42623          	sw	a5,-20(s0)
     a84:	fe442783          	lw	a5,-28(s0)
     a88:	4077d793          	sra	a5,a5,0x7
     a8c:	0017f793          	and	a5,a5,1
     a90:	fef42423          	sw	a5,-24(s0)
     a94:	fec42783          	lw	a5,-20(s0)
     a98:	fe442703          	lw	a4,-28(s0)
     a9c:	00f717b3          	sll	a5,a4,a5
     aa0:	fef42223          	sw	a5,-28(s0)
     aa4:	fe842783          	lw	a5,-24(s0)
     aa8:	00179693          	sll	a3,a5,0x1
     aac:	000057b7          	lui	a5,0x5
     ab0:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     ab4:	fec42703          	lw	a4,-20(s0)
     ab8:	00e6e733          	or	a4,a3,a4
     abc:	00e7a023          	sw	a4,0(a5)
     ac0:	00100713          	li	a4,1
     ac4:	fec42783          	lw	a5,-20(s0)
     ac8:	40f707b3          	sub	a5,a4,a5
     acc:	fef42623          	sw	a5,-20(s0)
     ad0:	fe442783          	lw	a5,-28(s0)
     ad4:	4077d793          	sra	a5,a5,0x7
     ad8:	0017f793          	and	a5,a5,1
     adc:	fef42423          	sw	a5,-24(s0)
     ae0:	fec42783          	lw	a5,-20(s0)
     ae4:	fe442703          	lw	a4,-28(s0)
     ae8:	00f717b3          	sll	a5,a4,a5
     aec:	fef42223          	sw	a5,-28(s0)
     af0:	fe842783          	lw	a5,-24(s0)
     af4:	00179693          	sll	a3,a5,0x1
     af8:	000057b7          	lui	a5,0x5
     afc:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     b00:	fec42703          	lw	a4,-20(s0)
     b04:	00e6e733          	or	a4,a3,a4
     b08:	00e7a023          	sw	a4,0(a5)
     b0c:	00100713          	li	a4,1
     b10:	fec42783          	lw	a5,-20(s0)
     b14:	40f707b3          	sub	a5,a4,a5
     b18:	fef42623          	sw	a5,-20(s0)
     b1c:	fe442783          	lw	a5,-28(s0)
     b20:	4077d793          	sra	a5,a5,0x7
     b24:	0017f793          	and	a5,a5,1
     b28:	fef42423          	sw	a5,-24(s0)
     b2c:	fec42783          	lw	a5,-20(s0)
     b30:	fe442703          	lw	a4,-28(s0)
     b34:	00f717b3          	sll	a5,a4,a5
     b38:	fef42223          	sw	a5,-28(s0)
     b3c:	fe842783          	lw	a5,-24(s0)
     b40:	00179693          	sll	a3,a5,0x1
     b44:	000057b7          	lui	a5,0x5
     b48:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     b4c:	fec42703          	lw	a4,-20(s0)
     b50:	00e6e733          	or	a4,a3,a4
     b54:	00e7a023          	sw	a4,0(a5)
     b58:	00100713          	li	a4,1
     b5c:	fec42783          	lw	a5,-20(s0)
     b60:	40f707b3          	sub	a5,a4,a5
     b64:	fef42623          	sw	a5,-20(s0)
     b68:	000057b7          	lui	a5,0x5
     b6c:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     b70:	00200713          	li	a4,2
     b74:	00e7a023          	sw	a4,0(a5)
     b78:	000057b7          	lui	a5,0x5
     b7c:	0907a783          	lw	a5,144(a5) # 5090 <sdcard_while_loading_callback>
     b80:	000780e7          	jalr	a5
     b84:	00000013          	nop
     b88:	02c12083          	lw	ra,44(sp)
     b8c:	02812403          	lw	s0,40(sp)
     b90:	03010113          	add	sp,sp,48
     b94:	00008067          	ret

00000b98 <sdcard_read>:
     b98:	fc010113          	add	sp,sp,-64
     b9c:	02112e23          	sw	ra,60(sp)
     ba0:	02812c23          	sw	s0,56(sp)
     ba4:	04010413          	add	s0,sp,64
     ba8:	00050793          	mv	a5,a0
     bac:	00058713          	mv	a4,a1
     bb0:	fcf407a3          	sb	a5,-49(s0)
     bb4:	00070793          	mv	a5,a4
     bb8:	fcf40723          	sb	a5,-50(s0)
     bbc:	fce44783          	lbu	a5,-50(s0)
     bc0:	fef42223          	sw	a5,-28(s0)
     bc4:	fcf44783          	lbu	a5,-49(s0)
     bc8:	fef42023          	sw	a5,-32(s0)
     bcc:	fe042623          	sw	zero,-20(s0)
     bd0:	0ff00793          	li	a5,255
     bd4:	fef42423          	sw	a5,-24(s0)
     bd8:	0600006f          	j	c38 <sdcard_read+0xa0>
     bdc:	000057b7          	lui	a5,0x5
     be0:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     be4:	00300713          	li	a4,3
     be8:	00e7a023          	sw	a4,0(a5)
     bec:	fec42783          	lw	a5,-20(s0)
     bf0:	00178793          	add	a5,a5,1
     bf4:	fef42623          	sw	a5,-20(s0)
     bf8:	000057b7          	lui	a5,0x5
     bfc:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     c00:	00200713          	li	a4,2
     c04:	00e7a023          	sw	a4,0(a5)
     c08:	000057b7          	lui	a5,0x5
     c0c:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     c10:	0007a783          	lw	a5,0(a5)
     c14:	fcf42e23          	sw	a5,-36(s0)
     c18:	fe842783          	lw	a5,-24(s0)
     c1c:	00179793          	sll	a5,a5,0x1
     c20:	fdc42703          	lw	a4,-36(s0)
     c24:	00f767b3          	or	a5,a4,a5
     c28:	fef42423          	sw	a5,-24(s0)
     c2c:	000057b7          	lui	a5,0x5
     c30:	0907a783          	lw	a5,144(a5) # 5090 <sdcard_while_loading_callback>
     c34:	000780e7          	jalr	a5
     c38:	fe442783          	lw	a5,-28(s0)
     c3c:	00078e63          	beqz	a5,c58 <sdcard_read+0xc0>
     c40:	fe042783          	lw	a5,-32(s0)
     c44:	fff78793          	add	a5,a5,-1
     c48:	fe842703          	lw	a4,-24(s0)
     c4c:	40f757b3          	sra	a5,a4,a5
     c50:	0017f793          	and	a5,a5,1
     c54:	f80794e3          	bnez	a5,bdc <sdcard_read+0x44>
     c58:	fe442783          	lw	a5,-28(s0)
     c5c:	00079863          	bnez	a5,c6c <sdcard_read+0xd4>
     c60:	fec42703          	lw	a4,-20(s0)
     c64:	fe042783          	lw	a5,-32(s0)
     c68:	f6f74ae3          	blt	a4,a5,bdc <sdcard_read+0x44>
     c6c:	fe842783          	lw	a5,-24(s0)
     c70:	0ff7f793          	zext.b	a5,a5
     c74:	00078513          	mv	a0,a5
     c78:	03c12083          	lw	ra,60(sp)
     c7c:	03812403          	lw	s0,56(sp)
     c80:	04010113          	add	sp,sp,64
     c84:	00008067          	ret

00000c88 <sdcard_get>:
     c88:	fd010113          	add	sp,sp,-48
     c8c:	02112623          	sw	ra,44(sp)
     c90:	02812423          	sw	s0,40(sp)
     c94:	03010413          	add	s0,sp,48
     c98:	00050793          	mv	a5,a0
     c9c:	00058713          	mv	a4,a1
     ca0:	fcf40fa3          	sb	a5,-33(s0)
     ca4:	00070793          	mv	a5,a4
     ca8:	fcf40f23          	sb	a5,-34(s0)
     cac:	00000097          	auipc	ra,0x0
     cb0:	4e4080e7          	jalr	1252(ra) # 1190 <sdcard_select>
     cb4:	fde44703          	lbu	a4,-34(s0)
     cb8:	fdf44783          	lbu	a5,-33(s0)
     cbc:	00070593          	mv	a1,a4
     cc0:	00078513          	mv	a0,a5
     cc4:	00000097          	auipc	ra,0x0
     cc8:	ed4080e7          	jalr	-300(ra) # b98 <sdcard_read>
     ccc:	00050793          	mv	a5,a0
     cd0:	fef407a3          	sb	a5,-17(s0)
     cd4:	00100793          	li	a5,1
     cd8:	fef42423          	sw	a5,-24(s0)
     cdc:	0280006f          	j	d04 <sdcard_get+0x7c>
     ce0:	00000593          	li	a1,0
     ce4:	00800513          	li	a0,8
     ce8:	00000097          	auipc	ra,0x0
     cec:	eb0080e7          	jalr	-336(ra) # b98 <sdcard_read>
     cf0:	00050793          	mv	a5,a0
     cf4:	fef407a3          	sb	a5,-17(s0)
     cf8:	fe842783          	lw	a5,-24(s0)
     cfc:	00178793          	add	a5,a5,1
     d00:	fef42423          	sw	a5,-24(s0)
     d04:	fdf44783          	lbu	a5,-33(s0)
     d08:	0037d793          	srl	a5,a5,0x3
     d0c:	0ff7f793          	zext.b	a5,a5
     d10:	00078713          	mv	a4,a5
     d14:	fe842783          	lw	a5,-24(s0)
     d18:	fce7c4e3          	blt	a5,a4,ce0 <sdcard_get+0x58>
     d1c:	00000097          	auipc	ra,0x0
     d20:	488080e7          	jalr	1160(ra) # 11a4 <sdcard_unselect>
     d24:	fef44783          	lbu	a5,-17(s0)
     d28:	00078513          	mv	a0,a5
     d2c:	02c12083          	lw	ra,44(sp)
     d30:	02812403          	lw	s0,40(sp)
     d34:	03010113          	add	sp,sp,48
     d38:	00008067          	ret

00000d3c <sdcard_cmd>:
     d3c:	fd010113          	add	sp,sp,-48
     d40:	02112623          	sw	ra,44(sp)
     d44:	02812423          	sw	s0,40(sp)
     d48:	03010413          	add	s0,sp,48
     d4c:	fca42e23          	sw	a0,-36(s0)
     d50:	00000097          	auipc	ra,0x0
     d54:	440080e7          	jalr	1088(ra) # 1190 <sdcard_select>
     d58:	fe042623          	sw	zero,-20(s0)
     d5c:	02c0006f          	j	d88 <sdcard_cmd+0x4c>
     d60:	fec42783          	lw	a5,-20(s0)
     d64:	fdc42703          	lw	a4,-36(s0)
     d68:	00f707b3          	add	a5,a4,a5
     d6c:	0007c783          	lbu	a5,0(a5)
     d70:	00078513          	mv	a0,a5
     d74:	00000097          	auipc	ra,0x0
     d78:	910080e7          	jalr	-1776(ra) # 684 <sdcard_send>
     d7c:	fec42783          	lw	a5,-20(s0)
     d80:	00178793          	add	a5,a5,1
     d84:	fef42623          	sw	a5,-20(s0)
     d88:	fec42703          	lw	a4,-20(s0)
     d8c:	00500793          	li	a5,5
     d90:	fce7d8e3          	bge	a5,a4,d60 <sdcard_cmd+0x24>
     d94:	00000097          	auipc	ra,0x0
     d98:	410080e7          	jalr	1040(ra) # 11a4 <sdcard_unselect>
     d9c:	00000013          	nop
     da0:	02c12083          	lw	ra,44(sp)
     da4:	02812403          	lw	s0,40(sp)
     da8:	03010113          	add	sp,sp,48
     dac:	00008067          	ret

00000db0 <sdcard_start_sector>:
     db0:	fe010113          	add	sp,sp,-32
     db4:	00112e23          	sw	ra,28(sp)
     db8:	00812c23          	sw	s0,24(sp)
     dbc:	02010413          	add	s0,sp,32
     dc0:	fea42623          	sw	a0,-20(s0)
     dc4:	00000097          	auipc	ra,0x0
     dc8:	3cc080e7          	jalr	972(ra) # 1190 <sdcard_select>
     dcc:	05100793          	li	a5,81
     dd0:	00078513          	mv	a0,a5
     dd4:	00000097          	auipc	ra,0x0
     dd8:	8b0080e7          	jalr	-1872(ra) # 684 <sdcard_send>
     ddc:	fec42783          	lw	a5,-20(s0)
     de0:	0187d793          	srl	a5,a5,0x18
     de4:	00078513          	mv	a0,a5
     de8:	00000097          	auipc	ra,0x0
     dec:	89c080e7          	jalr	-1892(ra) # 684 <sdcard_send>
     df0:	fec42783          	lw	a5,-20(s0)
     df4:	4107d793          	sra	a5,a5,0x10
     df8:	0ff7f793          	zext.b	a5,a5
     dfc:	00078513          	mv	a0,a5
     e00:	00000097          	auipc	ra,0x0
     e04:	884080e7          	jalr	-1916(ra) # 684 <sdcard_send>
     e08:	fec42783          	lw	a5,-20(s0)
     e0c:	4087d793          	sra	a5,a5,0x8
     e10:	0ff7f793          	zext.b	a5,a5
     e14:	00078513          	mv	a0,a5
     e18:	00000097          	auipc	ra,0x0
     e1c:	86c080e7          	jalr	-1940(ra) # 684 <sdcard_send>
     e20:	fec42783          	lw	a5,-20(s0)
     e24:	0ff7f793          	zext.b	a5,a5
     e28:	00078513          	mv	a0,a5
     e2c:	00000097          	auipc	ra,0x0
     e30:	858080e7          	jalr	-1960(ra) # 684 <sdcard_send>
     e34:	05500793          	li	a5,85
     e38:	00078513          	mv	a0,a5
     e3c:	00000097          	auipc	ra,0x0
     e40:	848080e7          	jalr	-1976(ra) # 684 <sdcard_send>
     e44:	00000097          	auipc	ra,0x0
     e48:	360080e7          	jalr	864(ra) # 11a4 <sdcard_unselect>
     e4c:	fffff097          	auipc	ra,0xfffff
     e50:	7cc080e7          	jalr	1996(ra) # 618 <sdcard_ponder>
     e54:	00100593          	li	a1,1
     e58:	00800513          	li	a0,8
     e5c:	00000097          	auipc	ra,0x0
     e60:	e2c080e7          	jalr	-468(ra) # c88 <sdcard_get>
     e64:	00050793          	mv	a5,a0
     e68:	00078513          	mv	a0,a5
     e6c:	01c12083          	lw	ra,28(sp)
     e70:	01812403          	lw	s0,24(sp)
     e74:	02010113          	add	sp,sp,32
     e78:	00008067          	ret

00000e7c <sdcard_read_sector>:
     e7c:	fd010113          	add	sp,sp,-48
     e80:	02112623          	sw	ra,44(sp)
     e84:	02812423          	sw	s0,40(sp)
     e88:	03010413          	add	s0,sp,48
     e8c:	fca42e23          	sw	a0,-36(s0)
     e90:	fcb42c23          	sw	a1,-40(s0)
     e94:	fdc42503          	lw	a0,-36(s0)
     e98:	00000097          	auipc	ra,0x0
     e9c:	f18080e7          	jalr	-232(ra) # db0 <sdcard_start_sector>
     ea0:	00050793          	mv	a5,a0
     ea4:	fef405a3          	sb	a5,-21(s0)
     ea8:	feb44783          	lbu	a5,-21(s0)
     eac:	00078663          	beqz	a5,eb8 <sdcard_read_sector+0x3c>
     eb0:	fd842783          	lw	a5,-40(s0)
     eb4:	08c0006f          	j	f40 <sdcard_read_sector+0xc4>
     eb8:	00100593          	li	a1,1
     ebc:	00100513          	li	a0,1
     ec0:	00000097          	auipc	ra,0x0
     ec4:	dc8080e7          	jalr	-568(ra) # c88 <sdcard_get>
     ec8:	fe042623          	sw	zero,-20(s0)
     ecc:	03c0006f          	j	f08 <sdcard_read_sector+0x8c>
     ed0:	00000593          	li	a1,0
     ed4:	00800513          	li	a0,8
     ed8:	00000097          	auipc	ra,0x0
     edc:	db0080e7          	jalr	-592(ra) # c88 <sdcard_get>
     ee0:	00050793          	mv	a5,a0
     ee4:	fef401a3          	sb	a5,-29(s0)
     ee8:	fd842783          	lw	a5,-40(s0)
     eec:	00178713          	add	a4,a5,1
     ef0:	fce42c23          	sw	a4,-40(s0)
     ef4:	fe344703          	lbu	a4,-29(s0)
     ef8:	00e78023          	sb	a4,0(a5)
     efc:	fec42783          	lw	a5,-20(s0)
     f00:	00178793          	add	a5,a5,1
     f04:	fef42623          	sw	a5,-20(s0)
     f08:	fec42703          	lw	a4,-20(s0)
     f0c:	1ff00793          	li	a5,511
     f10:	fce7d0e3          	bge	a5,a4,ed0 <sdcard_read_sector+0x54>
     f14:	00000593          	li	a1,0
     f18:	01000513          	li	a0,16
     f1c:	00000097          	auipc	ra,0x0
     f20:	d6c080e7          	jalr	-660(ra) # c88 <sdcard_get>
     f24:	00050793          	mv	a5,a0
     f28:	fef42223          	sw	a5,-28(s0)
     f2c:	00000097          	auipc	ra,0x0
     f30:	278080e7          	jalr	632(ra) # 11a4 <sdcard_unselect>
     f34:	fffff097          	auipc	ra,0xfffff
     f38:	6e4080e7          	jalr	1764(ra) # 618 <sdcard_ponder>
     f3c:	fd842783          	lw	a5,-40(s0)
     f40:	00078513          	mv	a0,a5
     f44:	02c12083          	lw	ra,44(sp)
     f48:	02812403          	lw	s0,40(sp)
     f4c:	03010113          	add	sp,sp,48
     f50:	00008067          	ret

00000f54 <sdcard_preinit>:
     f54:	fe010113          	add	sp,sp,-32
     f58:	00112e23          	sw	ra,28(sp)
     f5c:	00812c23          	sw	s0,24(sp)
     f60:	02010413          	add	s0,sp,32
     f64:	000057b7          	lui	a5,0x5
     f68:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     f6c:	00600713          	li	a4,6
     f70:	00e7a023          	sw	a4,0(a5)
     f74:	013137b7          	lui	a5,0x1313
     f78:	d0078513          	add	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
     f7c:	00000097          	auipc	ra,0x0
     f80:	1fc080e7          	jalr	508(ra) # 1178 <pause>
     f84:	fe042623          	sw	zero,-20(s0)
     f88:	fe042423          	sw	zero,-24(s0)
     f8c:	0340006f          	j	fc0 <sdcard_preinit+0x6c>
     f90:	000057b7          	lui	a5,0x5
     f94:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     f98:	fec42703          	lw	a4,-20(s0)
     f9c:	00676713          	or	a4,a4,6
     fa0:	00e7a023          	sw	a4,0(a5)
     fa4:	00100713          	li	a4,1
     fa8:	fec42783          	lw	a5,-20(s0)
     fac:	40f707b3          	sub	a5,a4,a5
     fb0:	fef42623          	sw	a5,-20(s0)
     fb4:	fe842783          	lw	a5,-24(s0)
     fb8:	00178793          	add	a5,a5,1
     fbc:	fef42423          	sw	a5,-24(s0)
     fc0:	fe842703          	lw	a4,-24(s0)
     fc4:	09f00793          	li	a5,159
     fc8:	fce7d4e3          	bge	a5,a4,f90 <sdcard_preinit+0x3c>
     fcc:	000057b7          	lui	a5,0x5
     fd0:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
     fd4:	00600713          	li	a4,6
     fd8:	00e7a023          	sw	a4,0(a5)
     fdc:	00000013          	nop
     fe0:	01c12083          	lw	ra,28(sp)
     fe4:	01812403          	lw	s0,24(sp)
     fe8:	02010113          	add	sp,sp,32
     fec:	00008067          	ret

00000ff0 <sdcard_init>:
     ff0:	fe010113          	add	sp,sp,-32
     ff4:	00112e23          	sw	ra,28(sp)
     ff8:	00812c23          	sw	s0,24(sp)
     ffc:	02010413          	add	s0,sp,32
    1000:	000057b7          	lui	a5,0x5
    1004:	00001737          	lui	a4,0x1
    1008:	18c70713          	add	a4,a4,396 # 118c <sdcard_idle>
    100c:	08e7a823          	sw	a4,144(a5) # 5090 <sdcard_while_loading_callback>
    1010:	00000097          	auipc	ra,0x0
    1014:	f44080e7          	jalr	-188(ra) # f54 <sdcard_preinit>
    1018:	000057b7          	lui	a5,0x5
    101c:	dac78513          	add	a0,a5,-596 # 4dac <cmd0>
    1020:	00000097          	auipc	ra,0x0
    1024:	d1c080e7          	jalr	-740(ra) # d3c <sdcard_cmd>
    1028:	00100593          	li	a1,1
    102c:	00800513          	li	a0,8
    1030:	00000097          	auipc	ra,0x0
    1034:	c58080e7          	jalr	-936(ra) # c88 <sdcard_get>
    1038:	00050793          	mv	a5,a0
    103c:	fef407a3          	sb	a5,-17(s0)
    1040:	fffff097          	auipc	ra,0xfffff
    1044:	5d8080e7          	jalr	1496(ra) # 618 <sdcard_ponder>
    1048:	fef44703          	lbu	a4,-17(s0)
    104c:	0ff00793          	li	a5,255
    1050:	00f71c63          	bne	a4,a5,1068 <sdcard_init+0x78>
    1054:	013137b7          	lui	a5,0x1313
    1058:	d0078513          	add	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
    105c:	00000097          	auipc	ra,0x0
    1060:	11c080e7          	jalr	284(ra) # 1178 <pause>
    1064:	fadff06f          	j	1010 <sdcard_init+0x20>
    1068:	00000013          	nop
    106c:	000057b7          	lui	a5,0x5
    1070:	da478513          	add	a0,a5,-604 # 4da4 <cmd8>
    1074:	00000097          	auipc	ra,0x0
    1078:	cc8080e7          	jalr	-824(ra) # d3c <sdcard_cmd>
    107c:	00100593          	li	a1,1
    1080:	02800513          	li	a0,40
    1084:	00000097          	auipc	ra,0x0
    1088:	c04080e7          	jalr	-1020(ra) # c88 <sdcard_get>
    108c:	00050793          	mv	a5,a0
    1090:	fef407a3          	sb	a5,-17(s0)
    1094:	fffff097          	auipc	ra,0xfffff
    1098:	584080e7          	jalr	1412(ra) # 618 <sdcard_ponder>
    109c:	000057b7          	lui	a5,0x5
    10a0:	d9c78513          	add	a0,a5,-612 # 4d9c <cmd55>
    10a4:	00000097          	auipc	ra,0x0
    10a8:	c98080e7          	jalr	-872(ra) # d3c <sdcard_cmd>
    10ac:	00100593          	li	a1,1
    10b0:	00800513          	li	a0,8
    10b4:	00000097          	auipc	ra,0x0
    10b8:	bd4080e7          	jalr	-1068(ra) # c88 <sdcard_get>
    10bc:	00050793          	mv	a5,a0
    10c0:	fef407a3          	sb	a5,-17(s0)
    10c4:	fffff097          	auipc	ra,0xfffff
    10c8:	554080e7          	jalr	1364(ra) # 618 <sdcard_ponder>
    10cc:	000057b7          	lui	a5,0x5
    10d0:	d9478513          	add	a0,a5,-620 # 4d94 <acmd41>
    10d4:	00000097          	auipc	ra,0x0
    10d8:	c68080e7          	jalr	-920(ra) # d3c <sdcard_cmd>
    10dc:	00100593          	li	a1,1
    10e0:	00800513          	li	a0,8
    10e4:	00000097          	auipc	ra,0x0
    10e8:	ba4080e7          	jalr	-1116(ra) # c88 <sdcard_get>
    10ec:	00050793          	mv	a5,a0
    10f0:	fef407a3          	sb	a5,-17(s0)
    10f4:	fffff097          	auipc	ra,0xfffff
    10f8:	524080e7          	jalr	1316(ra) # 618 <sdcard_ponder>
    10fc:	fef44783          	lbu	a5,-17(s0)
    1100:	02078863          	beqz	a5,1130 <sdcard_init+0x140>
    1104:	00000097          	auipc	ra,0x0
    1108:	0a0080e7          	jalr	160(ra) # 11a4 <sdcard_unselect>
    110c:	fffff097          	auipc	ra,0xfffff
    1110:	50c080e7          	jalr	1292(ra) # 618 <sdcard_ponder>
    1114:	001e87b7          	lui	a5,0x1e8
    1118:	48078513          	add	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
    111c:	00000097          	auipc	ra,0x0
    1120:	05c080e7          	jalr	92(ra) # 1178 <pause>
    1124:	00000097          	auipc	ra,0x0
    1128:	06c080e7          	jalr	108(ra) # 1190 <sdcard_select>
    112c:	f71ff06f          	j	109c <sdcard_init+0xac>
    1130:	00000013          	nop
    1134:	000057b7          	lui	a5,0x5
    1138:	d8c78513          	add	a0,a5,-628 # 4d8c <cmd16>
    113c:	00000097          	auipc	ra,0x0
    1140:	c00080e7          	jalr	-1024(ra) # d3c <sdcard_cmd>
    1144:	00100593          	li	a1,1
    1148:	00800513          	li	a0,8
    114c:	00000097          	auipc	ra,0x0
    1150:	b3c080e7          	jalr	-1220(ra) # c88 <sdcard_get>
    1154:	00050793          	mv	a5,a0
    1158:	fef407a3          	sb	a5,-17(s0)
    115c:	fffff097          	auipc	ra,0xfffff
    1160:	4bc080e7          	jalr	1212(ra) # 618 <sdcard_ponder>
    1164:	00000013          	nop
    1168:	01c12083          	lw	ra,28(sp)
    116c:	01812403          	lw	s0,24(sp)
    1170:	02010113          	add	sp,sp,32
    1174:	00008067          	ret

00001178 <pause>:
    1178:	c0002773          	rdcycle	a4
    117c:	c00027f3          	rdcycle	a5
    1180:	40e787b3          	sub	a5,a5,a4
    1184:	fea7ece3          	bltu	a5,a0,117c <pause+0x4>
    1188:	00008067          	ret

0000118c <sdcard_idle>:
    118c:	00008067          	ret

00001190 <sdcard_select>:
    1190:	000057b7          	lui	a5,0x5
    1194:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
    1198:	00200713          	li	a4,2
    119c:	00e7a023          	sw	a4,0(a5)
    11a0:	00008067          	ret

000011a4 <sdcard_unselect>:
    11a4:	000057b7          	lui	a5,0x5
    11a8:	dbc7a783          	lw	a5,-580(a5) # 4dbc <SDCARD>
    11ac:	00600713          	li	a4,6
    11b0:	00e7a023          	sw	a4,0(a5)
    11b4:	00008067          	ret

000011b8 <sdcard_readsector>:
    11b8:	04060663          	beqz	a2,1204 <sdcard_readsector+0x4c>
    11bc:	ff010113          	add	sp,sp,-16
    11c0:	00912423          	sw	s1,8(sp)
    11c4:	01212223          	sw	s2,4(sp)
    11c8:	00112623          	sw	ra,12(sp)
    11cc:	00050493          	mv	s1,a0
    11d0:	00a60933          	add	s2,a2,a0
    11d4:	00048513          	mv	a0,s1
    11d8:	00000097          	auipc	ra,0x0
    11dc:	ca4080e7          	jalr	-860(ra) # e7c <sdcard_read_sector>
    11e0:	00148493          	add	s1,s1,1
    11e4:	00050593          	mv	a1,a0
    11e8:	fe9916e3          	bne	s2,s1,11d4 <sdcard_readsector+0x1c>
    11ec:	00c12083          	lw	ra,12(sp)
    11f0:	00812483          	lw	s1,8(sp)
    11f4:	00412903          	lw	s2,4(sp)
    11f8:	00100513          	li	a0,1
    11fc:	01010113          	add	sp,sp,16
    1200:	00008067          	ret
    1204:	00000513          	li	a0,0
    1208:	00008067          	ret

0000120c <sdcard_writesector>:
    120c:	00000513          	li	a0,0
    1210:	00008067          	ret

00001214 <__divsi3>:
    1214:	06054063          	bltz	a0,1274 <__umodsi3+0x10>
    1218:	0605c663          	bltz	a1,1284 <__umodsi3+0x20>

0000121c <__udivsi3>:
    121c:	00058613          	mv	a2,a1
    1220:	00050593          	mv	a1,a0
    1224:	fff00513          	li	a0,-1
    1228:	02060c63          	beqz	a2,1260 <__udivsi3+0x44>
    122c:	00100693          	li	a3,1
    1230:	00b67a63          	bgeu	a2,a1,1244 <__udivsi3+0x28>
    1234:	00c05863          	blez	a2,1244 <__udivsi3+0x28>
    1238:	00161613          	sll	a2,a2,0x1
    123c:	00169693          	sll	a3,a3,0x1
    1240:	feb66ae3          	bltu	a2,a1,1234 <__udivsi3+0x18>
    1244:	00000513          	li	a0,0
    1248:	00c5e663          	bltu	a1,a2,1254 <__udivsi3+0x38>
    124c:	40c585b3          	sub	a1,a1,a2
    1250:	00d56533          	or	a0,a0,a3
    1254:	0016d693          	srl	a3,a3,0x1
    1258:	00165613          	srl	a2,a2,0x1
    125c:	fe0696e3          	bnez	a3,1248 <__udivsi3+0x2c>
    1260:	00008067          	ret

00001264 <__umodsi3>:
    1264:	00008293          	mv	t0,ra
    1268:	fb5ff0ef          	jal	121c <__udivsi3>
    126c:	00058513          	mv	a0,a1
    1270:	00028067          	jr	t0
    1274:	40a00533          	neg	a0,a0
    1278:	0005d863          	bgez	a1,1288 <__umodsi3+0x24>
    127c:	40b005b3          	neg	a1,a1
    1280:	f95ff06f          	j	1214 <__divsi3>
    1284:	40b005b3          	neg	a1,a1
    1288:	00008293          	mv	t0,ra
    128c:	f89ff0ef          	jal	1214 <__divsi3>
    1290:	40a00533          	neg	a0,a0
    1294:	00028067          	jr	t0

00001298 <__modsi3>:
    1298:	00008293          	mv	t0,ra
    129c:	0005ca63          	bltz	a1,12b0 <__modsi3+0x18>
    12a0:	00054c63          	bltz	a0,12b8 <__modsi3+0x20>
    12a4:	f79ff0ef          	jal	121c <__udivsi3>
    12a8:	00058513          	mv	a0,a1
    12ac:	00028067          	jr	t0
    12b0:	40b005b3          	neg	a1,a1
    12b4:	fe0558e3          	bgez	a0,12a4 <__modsi3+0xc>
    12b8:	40a00533          	neg	a0,a0
    12bc:	f61ff0ef          	jal	121c <__udivsi3>
    12c0:	40b00533          	neg	a0,a1
    12c4:	00028067          	jr	t0

000012c8 <memset>:
    12c8:	00c50633          	add	a2,a0,a2
    12cc:	00050793          	mv	a5,a0
    12d0:	00c79463          	bne	a5,a2,12d8 <memset+0x10>
    12d4:	00008067          	ret
    12d8:	00178793          	add	a5,a5,1
    12dc:	feb78fa3          	sb	a1,-1(a5)
    12e0:	ff1ff06f          	j	12d0 <memset+0x8>

000012e4 <memcpy>:
    12e4:	00000793          	li	a5,0
    12e8:	00c79463          	bne	a5,a2,12f0 <memcpy+0xc>
    12ec:	00008067          	ret
    12f0:	00f58733          	add	a4,a1,a5
    12f4:	00074683          	lbu	a3,0(a4)
    12f8:	00f50733          	add	a4,a0,a5
    12fc:	00178793          	add	a5,a5,1
    1300:	00d70023          	sb	a3,0(a4)
    1304:	fe5ff06f          	j	12e8 <memcpy+0x4>

00001308 <strlen>:
    1308:	00050793          	mv	a5,a0
    130c:	00000513          	li	a0,0
    1310:	00a78733          	add	a4,a5,a0
    1314:	00074703          	lbu	a4,0(a4)
    1318:	00071463          	bnez	a4,1320 <strlen+0x18>
    131c:	00008067          	ret
    1320:	00150513          	add	a0,a0,1
    1324:	fedff06f          	j	1310 <strlen+0x8>

00001328 <strncmp>:
    1328:	00000793          	li	a5,0
    132c:	00c79663          	bne	a5,a2,1338 <strncmp+0x10>
    1330:	00000513          	li	a0,0
    1334:	00008067          	ret
    1338:	00f50733          	add	a4,a0,a5
    133c:	00074683          	lbu	a3,0(a4)
    1340:	00f58733          	add	a4,a1,a5
    1344:	00074703          	lbu	a4,0(a4)
    1348:	00e6e863          	bltu	a3,a4,1358 <strncmp+0x30>
    134c:	00d76a63          	bltu	a4,a3,1360 <strncmp+0x38>
    1350:	00178793          	add	a5,a5,1
    1354:	fd9ff06f          	j	132c <strncmp+0x4>
    1358:	fff00513          	li	a0,-1
    135c:	00008067          	ret
    1360:	00100513          	li	a0,1
    1364:	00008067          	ret

00001368 <strncpy>:
    1368:	00000793          	li	a5,0
    136c:	00f61463          	bne	a2,a5,1374 <strncpy+0xc>
    1370:	00008067          	ret
    1374:	00f58733          	add	a4,a1,a5
    1378:	00074683          	lbu	a3,0(a4)
    137c:	00f50733          	add	a4,a0,a5
    1380:	00178793          	add	a5,a5,1
    1384:	00d70023          	sb	a3,0(a4)
    1388:	fe5ff06f          	j	136c <strncpy+0x4>

0000138c <oled_wait>:
    138c:	00000013          	nop
    1390:	00000013          	nop
    1394:	00000013          	nop
    1398:	00000013          	nop
    139c:	00000013          	nop
    13a0:	00000013          	nop
    13a4:	00000013          	nop
    13a8:	00008067          	ret

000013ac <oled_init_mode>:
    13ac:	000057b7          	lui	a5,0x5
    13b0:	dc07a703          	lw	a4,-576(a5) # 4dc0 <OLED_RST>
    13b4:	ff010113          	add	sp,sp,-16
    13b8:	00912223          	sw	s1,4(sp)
    13bc:	00112623          	sw	ra,12(sp)
    13c0:	00812423          	sw	s0,8(sp)
    13c4:	00072023          	sw	zero,0(a4)
    13c8:	00050493          	mv	s1,a0
    13cc:	00040737          	lui	a4,0x40
    13d0:	00000013          	nop
    13d4:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    13d8:	fe071ce3          	bnez	a4,13d0 <oled_init_mode+0x24>
    13dc:	dc07a703          	lw	a4,-576(a5)
    13e0:	00100693          	li	a3,1
    13e4:	00d72023          	sw	a3,0(a4)
    13e8:	00040737          	lui	a4,0x40
    13ec:	00000013          	nop
    13f0:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    13f4:	fe071ce3          	bnez	a4,13ec <oled_init_mode+0x40>
    13f8:	dc07a783          	lw	a5,-576(a5)
    13fc:	0007a023          	sw	zero,0(a5)
    1400:	000407b7          	lui	a5,0x40
    1404:	00000013          	nop
    1408:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    140c:	fe079ce3          	bnez	a5,1404 <oled_init_mode+0x58>
    1410:	00005737          	lui	a4,0x5
    1414:	dc472783          	lw	a5,-572(a4) # 4dc4 <OLED>
    1418:	2af00693          	li	a3,687
    141c:	00d7a023          	sw	a3,0(a5)
    1420:	000407b7          	lui	a5,0x40
    1424:	00000013          	nop
    1428:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    142c:	fe079ce3          	bnez	a5,1424 <oled_init_mode+0x78>
    1430:	dc472403          	lw	s0,-572(a4)
    1434:	2a000793          	li	a5,672
    1438:	00f42023          	sw	a5,0(s0)
    143c:	00000097          	auipc	ra,0x0
    1440:	f50080e7          	jalr	-176(ra) # 138c <oled_wait>
    1444:	4a000793          	li	a5,1184
    1448:	00048463          	beqz	s1,1450 <oled_init_mode+0xa4>
    144c:	42000793          	li	a5,1056
    1450:	00f42023          	sw	a5,0(s0)
    1454:	00000097          	auipc	ra,0x0
    1458:	f38080e7          	jalr	-200(ra) # 138c <oled_wait>
    145c:	2fd00793          	li	a5,765
    1460:	00f42023          	sw	a5,0(s0)
    1464:	00000097          	auipc	ra,0x0
    1468:	f28080e7          	jalr	-216(ra) # 138c <oled_wait>
    146c:	4b100793          	li	a5,1201
    1470:	00f42023          	sw	a5,0(s0)
    1474:	00000097          	auipc	ra,0x0
    1478:	f18080e7          	jalr	-232(ra) # 138c <oled_wait>
    147c:	2a200793          	li	a5,674
    1480:	00f42023          	sw	a5,0(s0)
    1484:	00000097          	auipc	ra,0x0
    1488:	f08080e7          	jalr	-248(ra) # 138c <oled_wait>
    148c:	40000793          	li	a5,1024
    1490:	00f42023          	sw	a5,0(s0)
    1494:	00812403          	lw	s0,8(sp)
    1498:	00c12083          	lw	ra,12(sp)
    149c:	00412483          	lw	s1,4(sp)
    14a0:	01010113          	add	sp,sp,16
    14a4:	00000317          	auipc	t1,0x0
    14a8:	ee830067          	jr	-280(t1) # 138c <oled_wait>

000014ac <oled_init>:
    14ac:	00000513          	li	a0,0
    14b0:	00000317          	auipc	t1,0x0
    14b4:	efc30067          	jr	-260(t1) # 13ac <oled_init_mode>

000014b8 <oled_fullscreen>:
    14b8:	ff010113          	add	sp,sp,-16
    14bc:	000057b7          	lui	a5,0x5
    14c0:	00812423          	sw	s0,8(sp)
    14c4:	dc47a403          	lw	s0,-572(a5) # 4dc4 <OLED>
    14c8:	00112623          	sw	ra,12(sp)
    14cc:	00912223          	sw	s1,4(sp)
    14d0:	01212023          	sw	s2,0(sp)
    14d4:	21500793          	li	a5,533
    14d8:	00f42023          	sw	a5,0(s0)
    14dc:	40000913          	li	s2,1024
    14e0:	00000097          	auipc	ra,0x0
    14e4:	eac080e7          	jalr	-340(ra) # 138c <oled_wait>
    14e8:	47f00493          	li	s1,1151
    14ec:	01242023          	sw	s2,0(s0)
    14f0:	00000097          	auipc	ra,0x0
    14f4:	e9c080e7          	jalr	-356(ra) # 138c <oled_wait>
    14f8:	00942023          	sw	s1,0(s0)
    14fc:	00000097          	auipc	ra,0x0
    1500:	e90080e7          	jalr	-368(ra) # 138c <oled_wait>
    1504:	27500793          	li	a5,629
    1508:	00f42023          	sw	a5,0(s0)
    150c:	00000097          	auipc	ra,0x0
    1510:	e80080e7          	jalr	-384(ra) # 138c <oled_wait>
    1514:	01242023          	sw	s2,0(s0)
    1518:	00000097          	auipc	ra,0x0
    151c:	e74080e7          	jalr	-396(ra) # 138c <oled_wait>
    1520:	00942023          	sw	s1,0(s0)
    1524:	00000097          	auipc	ra,0x0
    1528:	e68080e7          	jalr	-408(ra) # 138c <oled_wait>
    152c:	25c00793          	li	a5,604
    1530:	00f42023          	sw	a5,0(s0)
    1534:	00812403          	lw	s0,8(sp)
    1538:	00c12083          	lw	ra,12(sp)
    153c:	00412483          	lw	s1,4(sp)
    1540:	00012903          	lw	s2,0(sp)
    1544:	01010113          	add	sp,sp,16
    1548:	00000317          	auipc	t1,0x0
    154c:	e4430067          	jr	-444(t1) # 138c <oled_wait>

00001550 <oled_wait>:
    1550:	00000013          	nop
    1554:	00000013          	nop
    1558:	00000013          	nop
    155c:	00000013          	nop
    1560:	00000013          	nop
    1564:	00000013          	nop
    1568:	00000013          	nop
    156c:	00008067          	ret

00001570 <display_framebuffer>:
    1570:	00005537          	lui	a0,0x5
    1574:	39450513          	add	a0,a0,916 # 5394 <framebuffer>
    1578:	00008067          	ret

0000157c <display_set_cursor>:
    157c:	000057b7          	lui	a5,0x5
    1580:	08a7ae23          	sw	a0,156(a5) # 509c <cursor_x>
    1584:	000057b7          	lui	a5,0x5
    1588:	08b7ac23          	sw	a1,152(a5) # 5098 <cursor_y>
    158c:	00008067          	ret

00001590 <display_set_front_back_color>:
    1590:	000057b7          	lui	a5,0x5
    1594:	08a78aa3          	sb	a0,149(a5) # 5095 <front_color>
    1598:	000057b7          	lui	a5,0x5
    159c:	08b78a23          	sb	a1,148(a5) # 5094 <back_color>
    15a0:	00008067          	ret

000015a4 <display_putchar>:
    15a4:	00a00793          	li	a5,10
    15a8:	00005637          	lui	a2,0x5
    15ac:	02f51663          	bne	a0,a5,15d8 <display_putchar+0x34>
    15b0:	00005737          	lui	a4,0x5
    15b4:	09872783          	lw	a5,152(a4) # 5098 <cursor_y>
    15b8:	08062e23          	sw	zero,156(a2) # 509c <cursor_x>
    15bc:	00878793          	add	a5,a5,8
    15c0:	08f72c23          	sw	a5,152(a4)
    15c4:	07f00713          	li	a4,127
    15c8:	00f75663          	bge	a4,a5,15d4 <display_putchar+0x30>
    15cc:	000057b7          	lui	a5,0x5
    15d0:	0807ac23          	sw	zero,152(a5) # 5098 <cursor_y>
    15d4:	00008067          	ret
    15d8:	ff010113          	add	sp,sp,-16
    15dc:	00812623          	sw	s0,12(sp)
    15e0:	00912423          	sw	s1,8(sp)
    15e4:	01212223          	sw	s2,4(sp)
    15e8:	01f00713          	li	a4,31
    15ec:	09c62783          	lw	a5,156(a2)
    15f0:	08a75863          	bge	a4,a0,1680 <display_putchar+0xdc>
    15f4:	00005737          	lui	a4,0x5
    15f8:	09474383          	lbu	t2,148(a4) # 5094 <back_color>
    15fc:	00005737          	lui	a4,0x5
    1600:	09574403          	lbu	s0,149(a4) # 5095 <front_color>
    1604:	00005737          	lui	a4,0x5
    1608:	09872f03          	lw	t5,152(a4) # 5098 <cursor_y>
    160c:	000056b7          	lui	a3,0x5
    1610:	00251713          	sll	a4,a0,0x2
    1614:	e6468693          	add	a3,a3,-412 # 4e64 <font>
    1618:	00a70733          	add	a4,a4,a0
    161c:	00779313          	sll	t1,a5,0x7
    1620:	00005837          	lui	a6,0x5
    1624:	00d70733          	add	a4,a4,a3
    1628:	28030493          	add	s1,t1,640
    162c:	00000693          	li	a3,0
    1630:	00100293          	li	t0,1
    1634:	39480813          	add	a6,a6,916 # 5394 <framebuffer>
    1638:	00800913          	li	s2,8
    163c:	00d29fb3          	sll	t6,t0,a3
    1640:	00df0eb3          	add	t4,t5,a3
    1644:	00030593          	mv	a1,t1
    1648:	00070513          	mv	a0,a4
    164c:	f6054883          	lbu	a7,-160(a0)
    1650:	00040e13          	mv	t3,s0
    1654:	01f8f8b3          	and	a7,a7,t6
    1658:	00089463          	bnez	a7,1660 <display_putchar+0xbc>
    165c:	00038e13          	mv	t3,t2
    1660:	00b808b3          	add	a7,a6,a1
    1664:	01d888b3          	add	a7,a7,t4
    1668:	01c88023          	sb	t3,0(a7)
    166c:	08058593          	add	a1,a1,128
    1670:	00150513          	add	a0,a0,1
    1674:	fc959ce3          	bne	a1,s1,164c <display_putchar+0xa8>
    1678:	00168693          	add	a3,a3,1
    167c:	fd2690e3          	bne	a3,s2,163c <display_putchar+0x98>
    1680:	00578793          	add	a5,a5,5
    1684:	07f00713          	li	a4,127
    1688:	00f74663          	blt	a4,a5,1694 <display_putchar+0xf0>
    168c:	08f62e23          	sw	a5,156(a2)
    1690:	0240006f          	j	16b4 <display_putchar+0x110>
    1694:	000056b7          	lui	a3,0x5
    1698:	0986a783          	lw	a5,152(a3) # 5098 <cursor_y>
    169c:	08062e23          	sw	zero,156(a2)
    16a0:	00878793          	add	a5,a5,8
    16a4:	08f6ac23          	sw	a5,152(a3)
    16a8:	00f75663          	bge	a4,a5,16b4 <display_putchar+0x110>
    16ac:	000057b7          	lui	a5,0x5
    16b0:	0807ac23          	sw	zero,152(a5) # 5098 <cursor_y>
    16b4:	00c12403          	lw	s0,12(sp)
    16b8:	00812483          	lw	s1,8(sp)
    16bc:	00412903          	lw	s2,4(sp)
    16c0:	01010113          	add	sp,sp,16
    16c4:	00008067          	ret

000016c8 <display_refresh>:
    16c8:	fe010113          	add	sp,sp,-32
    16cc:	000057b7          	lui	a5,0x5
    16d0:	01212823          	sw	s2,16(sp)
    16d4:	dc47a903          	lw	s2,-572(a5) # 4dc4 <OLED>
    16d8:	01312623          	sw	s3,12(sp)
    16dc:	000059b7          	lui	s3,0x5
    16e0:	00912a23          	sw	s1,20(sp)
    16e4:	01412423          	sw	s4,8(sp)
    16e8:	00112e23          	sw	ra,28(sp)
    16ec:	00812c23          	sw	s0,24(sp)
    16f0:	00000493          	li	s1,0
    16f4:	39498993          	add	s3,s3,916 # 5394 <framebuffer>
    16f8:	00004a37          	lui	s4,0x4
    16fc:	013487b3          	add	a5,s1,s3
    1700:	0007c403          	lbu	s0,0(a5)
    1704:	00148493          	add	s1,s1,1
    1708:	00245413          	srl	s0,s0,0x2
    170c:	40046413          	or	s0,s0,1024
    1710:	00892023          	sw	s0,0(s2)
    1714:	00000097          	auipc	ra,0x0
    1718:	e3c080e7          	jalr	-452(ra) # 1550 <oled_wait>
    171c:	00892023          	sw	s0,0(s2)
    1720:	00000097          	auipc	ra,0x0
    1724:	e30080e7          	jalr	-464(ra) # 1550 <oled_wait>
    1728:	00892023          	sw	s0,0(s2)
    172c:	00000097          	auipc	ra,0x0
    1730:	e24080e7          	jalr	-476(ra) # 1550 <oled_wait>
    1734:	fd4494e3          	bne	s1,s4,16fc <display_refresh+0x34>
    1738:	01c12083          	lw	ra,28(sp)
    173c:	01812403          	lw	s0,24(sp)
    1740:	01412483          	lw	s1,20(sp)
    1744:	01012903          	lw	s2,16(sp)
    1748:	00c12983          	lw	s3,12(sp)
    174c:	00812a03          	lw	s4,8(sp)
    1750:	02010113          	add	sp,sp,32
    1754:	00008067          	ret

00001758 <print_string>:
    1758:	ff010113          	add	sp,sp,-16
    175c:	00812423          	sw	s0,8(sp)
    1760:	00912223          	sw	s1,4(sp)
    1764:	00112623          	sw	ra,12(sp)
    1768:	00050413          	mv	s0,a0
    176c:	000054b7          	lui	s1,0x5
    1770:	00044503          	lbu	a0,0(s0)
    1774:	00051c63          	bnez	a0,178c <print_string+0x34>
    1778:	00c12083          	lw	ra,12(sp)
    177c:	00812403          	lw	s0,8(sp)
    1780:	00412483          	lw	s1,4(sp)
    1784:	01010113          	add	sp,sp,16
    1788:	00008067          	ret
    178c:	0a04a783          	lw	a5,160(s1) # 50a0 <f_putchar>
    1790:	00140413          	add	s0,s0,1
    1794:	000780e7          	jalr	a5
    1798:	fd9ff06f          	j	1770 <print_string+0x18>

0000179c <print_dec>:
    179c:	ef010113          	add	sp,sp,-272
    17a0:	10812423          	sw	s0,264(sp)
    17a4:	10912223          	sw	s1,260(sp)
    17a8:	10112623          	sw	ra,268(sp)
    17ac:	11212023          	sw	s2,256(sp)
    17b0:	00050413          	mv	s0,a0
    17b4:	000054b7          	lui	s1,0x5
    17b8:	08045063          	bgez	s0,1838 <print_dec+0x9c>
    17bc:	0a04a783          	lw	a5,160(s1) # 50a0 <f_putchar>
    17c0:	02d00513          	li	a0,45
    17c4:	40800433          	neg	s0,s0
    17c8:	000780e7          	jalr	a5
    17cc:	fedff06f          	j	17b8 <print_dec+0x1c>
    17d0:	00040513          	mv	a0,s0
    17d4:	00a00593          	li	a1,10
    17d8:	00000097          	auipc	ra,0x0
    17dc:	a3c080e7          	jalr	-1476(ra) # 1214 <__divsi3>
    17e0:	00251793          	sll	a5,a0,0x2
    17e4:	00f507b3          	add	a5,a0,a5
    17e8:	00179793          	sll	a5,a5,0x1
    17ec:	40f40433          	sub	s0,s0,a5
    17f0:	00148493          	add	s1,s1,1
    17f4:	fe848fa3          	sb	s0,-1(s1)
    17f8:	00050413          	mv	s0,a0
    17fc:	fc041ae3          	bnez	s0,17d0 <print_dec+0x34>
    1800:	fd2488e3          	beq	s1,s2,17d0 <print_dec+0x34>
    1804:	00005437          	lui	s0,0x5
    1808:	fff4c503          	lbu	a0,-1(s1)
    180c:	0a042783          	lw	a5,160(s0) # 50a0 <f_putchar>
    1810:	fff48493          	add	s1,s1,-1
    1814:	03050513          	add	a0,a0,48
    1818:	000780e7          	jalr	a5
    181c:	ff2496e3          	bne	s1,s2,1808 <print_dec+0x6c>
    1820:	10c12083          	lw	ra,268(sp)
    1824:	10812403          	lw	s0,264(sp)
    1828:	10412483          	lw	s1,260(sp)
    182c:	10012903          	lw	s2,256(sp)
    1830:	11010113          	add	sp,sp,272
    1834:	00008067          	ret
    1838:	00010493          	mv	s1,sp
    183c:	00048913          	mv	s2,s1
    1840:	fbdff06f          	j	17fc <print_dec+0x60>

00001844 <print_hex_digits>:
    1844:	fe010113          	add	sp,sp,-32
    1848:	00812c23          	sw	s0,24(sp)
    184c:	01212823          	sw	s2,16(sp)
    1850:	fff58413          	add	s0,a1,-1
    1854:	00005937          	lui	s2,0x5
    1858:	00912a23          	sw	s1,20(sp)
    185c:	01312623          	sw	s3,12(sp)
    1860:	00112e23          	sw	ra,28(sp)
    1864:	00050493          	mv	s1,a0
    1868:	00241413          	sll	s0,s0,0x2
    186c:	04490913          	add	s2,s2,68 # 5044 <font+0x1e0>
    1870:	000059b7          	lui	s3,0x5
    1874:	02045063          	bgez	s0,1894 <print_hex_digits+0x50>
    1878:	01c12083          	lw	ra,28(sp)
    187c:	01812403          	lw	s0,24(sp)
    1880:	01412483          	lw	s1,20(sp)
    1884:	01012903          	lw	s2,16(sp)
    1888:	00c12983          	lw	s3,12(sp)
    188c:	02010113          	add	sp,sp,32
    1890:	00008067          	ret
    1894:	0084d7b3          	srl	a5,s1,s0
    1898:	00f7f793          	and	a5,a5,15
    189c:	00f907b3          	add	a5,s2,a5
    18a0:	0a09a703          	lw	a4,160(s3) # 50a0 <f_putchar>
    18a4:	0007c503          	lbu	a0,0(a5)
    18a8:	ffc40413          	add	s0,s0,-4
    18ac:	000700e7          	jalr	a4
    18b0:	fc5ff06f          	j	1874 <print_hex_digits+0x30>

000018b4 <print_hex>:
    18b4:	00800593          	li	a1,8
    18b8:	00000317          	auipc	t1,0x0
    18bc:	f8c30067          	jr	-116(t1) # 1844 <print_hex_digits>

000018c0 <printf>:
    18c0:	fb010113          	add	sp,sp,-80
    18c4:	04f12223          	sw	a5,68(sp)
    18c8:	03410793          	add	a5,sp,52
    18cc:	02812423          	sw	s0,40(sp)
    18d0:	02912223          	sw	s1,36(sp)
    18d4:	03212023          	sw	s2,32(sp)
    18d8:	01312e23          	sw	s3,28(sp)
    18dc:	01412c23          	sw	s4,24(sp)
    18e0:	01512a23          	sw	s5,20(sp)
    18e4:	01612823          	sw	s6,16(sp)
    18e8:	02112623          	sw	ra,44(sp)
    18ec:	00050413          	mv	s0,a0
    18f0:	02b12a23          	sw	a1,52(sp)
    18f4:	02c12c23          	sw	a2,56(sp)
    18f8:	02d12e23          	sw	a3,60(sp)
    18fc:	04e12023          	sw	a4,64(sp)
    1900:	05012423          	sw	a6,72(sp)
    1904:	05112623          	sw	a7,76(sp)
    1908:	00f12623          	sw	a5,12(sp)
    190c:	02500913          	li	s2,37
    1910:	000054b7          	lui	s1,0x5
    1914:	07300993          	li	s3,115
    1918:	07800a13          	li	s4,120
    191c:	06400a93          	li	s5,100
    1920:	06300b13          	li	s6,99
    1924:	00044503          	lbu	a0,0(s0)
    1928:	02051663          	bnez	a0,1954 <printf+0x94>
    192c:	02c12083          	lw	ra,44(sp)
    1930:	02812403          	lw	s0,40(sp)
    1934:	02412483          	lw	s1,36(sp)
    1938:	02012903          	lw	s2,32(sp)
    193c:	01c12983          	lw	s3,28(sp)
    1940:	01812a03          	lw	s4,24(sp)
    1944:	01412a83          	lw	s5,20(sp)
    1948:	01012b03          	lw	s6,16(sp)
    194c:	05010113          	add	sp,sp,80
    1950:	00008067          	ret
    1954:	09251863          	bne	a0,s2,19e4 <printf+0x124>
    1958:	00144503          	lbu	a0,1(s0)
    195c:	03351463          	bne	a0,s3,1984 <printf+0xc4>
    1960:	00c12783          	lw	a5,12(sp)
    1964:	0007a503          	lw	a0,0(a5)
    1968:	00478713          	add	a4,a5,4
    196c:	00e12623          	sw	a4,12(sp)
    1970:	00000097          	auipc	ra,0x0
    1974:	de8080e7          	jalr	-536(ra) # 1758 <print_string>
    1978:	00140413          	add	s0,s0,1
    197c:	00140413          	add	s0,s0,1
    1980:	fa5ff06f          	j	1924 <printf+0x64>
    1984:	03451063          	bne	a0,s4,19a4 <printf+0xe4>
    1988:	00c12783          	lw	a5,12(sp)
    198c:	0007a503          	lw	a0,0(a5)
    1990:	00478713          	add	a4,a5,4
    1994:	00e12623          	sw	a4,12(sp)
    1998:	00000097          	auipc	ra,0x0
    199c:	f1c080e7          	jalr	-228(ra) # 18b4 <print_hex>
    19a0:	fd9ff06f          	j	1978 <printf+0xb8>
    19a4:	03551063          	bne	a0,s5,19c4 <printf+0x104>
    19a8:	00c12783          	lw	a5,12(sp)
    19ac:	0007a503          	lw	a0,0(a5)
    19b0:	00478713          	add	a4,a5,4
    19b4:	00e12623          	sw	a4,12(sp)
    19b8:	00000097          	auipc	ra,0x0
    19bc:	de4080e7          	jalr	-540(ra) # 179c <print_dec>
    19c0:	fb9ff06f          	j	1978 <printf+0xb8>
    19c4:	0a04a783          	lw	a5,160(s1) # 50a0 <f_putchar>
    19c8:	01651a63          	bne	a0,s6,19dc <printf+0x11c>
    19cc:	00c12703          	lw	a4,12(sp)
    19d0:	00072503          	lw	a0,0(a4)
    19d4:	00470693          	add	a3,a4,4
    19d8:	00d12623          	sw	a3,12(sp)
    19dc:	000780e7          	jalr	a5
    19e0:	f99ff06f          	j	1978 <printf+0xb8>
    19e4:	0a04a783          	lw	a5,160(s1)
    19e8:	000780e7          	jalr	a5
    19ec:	f91ff06f          	j	197c <printf+0xbc>

000019f0 <__mulsi3>:
    19f0:	00050793          	mv	a5,a0
    19f4:	00000513          	li	a0,0
    19f8:	00079463          	bnez	a5,1a00 <__mulsi3+0x10>
    19fc:	00008067          	ret
    1a00:	0017f713          	and	a4,a5,1
    1a04:	00070463          	beqz	a4,1a0c <__mulsi3+0x1c>
    1a08:	00b50533          	add	a0,a0,a1
    1a0c:	0017d793          	srl	a5,a5,0x1
    1a10:	00159593          	sll	a1,a1,0x1
    1a14:	fe5ff06f          	j	19f8 <__mulsi3+0x8>

00001a18 <fat_list_insert_last>:
    1a18:	00452783          	lw	a5,4(a0)
    1a1c:	04079263          	bnez	a5,1a60 <fat_list_insert_last+0x48>
    1a20:	00052783          	lw	a5,0(a0)
    1a24:	00079c63          	bnez	a5,1a3c <fat_list_insert_last+0x24>
    1a28:	00b52023          	sw	a1,0(a0)
    1a2c:	00b52223          	sw	a1,4(a0)
    1a30:	0005a023          	sw	zero,0(a1)
    1a34:	0005a223          	sw	zero,4(a1)
    1a38:	00008067          	ret
    1a3c:	0007a703          	lw	a4,0(a5)
    1a40:	00f5a223          	sw	a5,4(a1)
    1a44:	00e5a023          	sw	a4,0(a1)
    1a48:	00071863          	bnez	a4,1a58 <fat_list_insert_last+0x40>
    1a4c:	00b52023          	sw	a1,0(a0)
    1a50:	00b7a023          	sw	a1,0(a5)
    1a54:	00008067          	ret
    1a58:	00b72223          	sw	a1,4(a4)
    1a5c:	ff5ff06f          	j	1a50 <fat_list_insert_last+0x38>
    1a60:	0047a703          	lw	a4,4(a5)
    1a64:	00f5a023          	sw	a5,0(a1)
    1a68:	00e5a223          	sw	a4,4(a1)
    1a6c:	00071863          	bnez	a4,1a7c <fat_list_insert_last+0x64>
    1a70:	00b52223          	sw	a1,4(a0)
    1a74:	00b7a223          	sw	a1,4(a5)
    1a78:	00008067          	ret
    1a7c:	00b72023          	sw	a1,0(a4)
    1a80:	ff5ff06f          	j	1a74 <fat_list_insert_last+0x5c>

00001a84 <FileString_StrCmpNoCase>:
    1a84:	00050893          	mv	a7,a0
    1a88:	00000693          	li	a3,0
    1a8c:	01900313          	li	t1,25
    1a90:	00c69663          	bne	a3,a2,1a9c <FileString_StrCmpNoCase+0x18>
    1a94:	00000513          	li	a0,0
    1a98:	00008067          	ret
    1a9c:	00d887b3          	add	a5,a7,a3
    1aa0:	0007c703          	lbu	a4,0(a5)
    1aa4:	00d587b3          	add	a5,a1,a3
    1aa8:	0007c783          	lbu	a5,0(a5)
    1aac:	fbf70513          	add	a0,a4,-65
    1ab0:	0ff57513          	zext.b	a0,a0
    1ab4:	fbf78813          	add	a6,a5,-65
    1ab8:	0ff87813          	zext.b	a6,a6
    1abc:	02a36863          	bltu	t1,a0,1aec <FileString_StrCmpNoCase+0x68>
    1ac0:	02070713          	add	a4,a4,32
    1ac4:	0ff77713          	zext.b	a4,a4
    1ac8:	01036c63          	bltu	t1,a6,1ae0 <FileString_StrCmpNoCase+0x5c>
    1acc:	02078793          	add	a5,a5,32
    1ad0:	0ff7f793          	zext.b	a5,a5
    1ad4:	40f70533          	sub	a0,a4,a5
    1ad8:	02f70e63          	beq	a4,a5,1b14 <FileString_StrCmpNoCase+0x90>
    1adc:	00008067          	ret
    1ae0:	40f70533          	sub	a0,a4,a5
    1ae4:	02f70863          	beq	a4,a5,1b14 <FileString_StrCmpNoCase+0x90>
    1ae8:	00008067          	ret
    1aec:	01036c63          	bltu	t1,a6,1b04 <FileString_StrCmpNoCase+0x80>
    1af0:	02078793          	add	a5,a5,32
    1af4:	0ff7f793          	zext.b	a5,a5
    1af8:	40f70533          	sub	a0,a4,a5
    1afc:	00f70c63          	beq	a4,a5,1b14 <FileString_StrCmpNoCase+0x90>
    1b00:	00008067          	ret
    1b04:	40f70533          	sub	a0,a4,a5
    1b08:	f8f718e3          	bne	a4,a5,1a98 <FileString_StrCmpNoCase+0x14>
    1b0c:	f80706e3          	beqz	a4,1a98 <FileString_StrCmpNoCase+0x14>
    1b10:	f80784e3          	beqz	a5,1a98 <FileString_StrCmpNoCase+0x14>
    1b14:	00168693          	add	a3,a3,1
    1b18:	f79ff06f          	j	1a90 <FileString_StrCmpNoCase+0xc>

00001b1c <FileString_GetExtension>:
    1b1c:	00050713          	mv	a4,a0
    1b20:	00050793          	mv	a5,a0
    1b24:	02e00613          	li	a2,46
    1b28:	fff00513          	li	a0,-1
    1b2c:	0007c683          	lbu	a3,0(a5)
    1b30:	00069463          	bnez	a3,1b38 <FileString_GetExtension+0x1c>
    1b34:	00008067          	ret
    1b38:	00c69463          	bne	a3,a2,1b40 <FileString_GetExtension+0x24>
    1b3c:	40e78533          	sub	a0,a5,a4
    1b40:	00178793          	add	a5,a5,1
    1b44:	fe9ff06f          	j	1b2c <FileString_GetExtension+0x10>

00001b48 <fatfs_fat_writeback>:
    1b48:	00059663          	bnez	a1,1b54 <fatfs_fat_writeback+0xc>
    1b4c:	00000513          	li	a0,0
    1b50:	00008067          	ret
    1b54:	2045a703          	lw	a4,516(a1)
    1b58:	ff010113          	add	sp,sp,-16
    1b5c:	00812423          	sw	s0,8(sp)
    1b60:	00112623          	sw	ra,12(sp)
    1b64:	00058413          	mv	s0,a1
    1b68:	00070a63          	beqz	a4,1b7c <fatfs_fat_writeback+0x34>
    1b6c:	03852683          	lw	a3,56(a0)
    1b70:	00050793          	mv	a5,a0
    1b74:	00069863          	bnez	a3,1b84 <fatfs_fat_writeback+0x3c>
    1b78:	20042223          	sw	zero,516(s0)
    1b7c:	00100513          	li	a0,1
    1b80:	0380006f          	j	1bb8 <fatfs_fat_writeback+0x70>
    1b84:	2005a503          	lw	a0,512(a1)
    1b88:	0147a703          	lw	a4,20(a5)
    1b8c:	0207a583          	lw	a1,32(a5)
    1b90:	00100613          	li	a2,1
    1b94:	40e507b3          	sub	a5,a0,a4
    1b98:	00178793          	add	a5,a5,1
    1b9c:	00f5f663          	bgeu	a1,a5,1ba8 <fatfs_fat_writeback+0x60>
    1ba0:	00b70733          	add	a4,a4,a1
    1ba4:	40a70633          	sub	a2,a4,a0
    1ba8:	00040593          	mv	a1,s0
    1bac:	000680e7          	jalr	a3
    1bb0:	fc0514e3          	bnez	a0,1b78 <fatfs_fat_writeback+0x30>
    1bb4:	00000513          	li	a0,0
    1bb8:	00c12083          	lw	ra,12(sp)
    1bbc:	00812403          	lw	s0,8(sp)
    1bc0:	01010113          	add	sp,sp,16
    1bc4:	00008067          	ret

00001bc8 <fatfs_fat_read_sector>:
    1bc8:	fe010113          	add	sp,sp,-32
    1bcc:	01212823          	sw	s2,16(sp)
    1bd0:	25452903          	lw	s2,596(a0)
    1bd4:	00812c23          	sw	s0,24(sp)
    1bd8:	00912a23          	sw	s1,20(sp)
    1bdc:	01312623          	sw	s3,12(sp)
    1be0:	00112e23          	sw	ra,28(sp)
    1be4:	00050993          	mv	s3,a0
    1be8:	00058493          	mv	s1,a1
    1bec:	00000413          	li	s0,0
    1bf0:	04091663          	bnez	s2,1c3c <fatfs_fat_read_sector+0x74>
    1bf4:	2549a783          	lw	a5,596(s3)
    1bf8:	20f42623          	sw	a5,524(s0)
    1bfc:	20442783          	lw	a5,516(s0)
    1c00:	2489aa23          	sw	s0,596(s3)
    1c04:	06078663          	beqz	a5,1c70 <fatfs_fat_read_sector+0xa8>
    1c08:	00040593          	mv	a1,s0
    1c0c:	00098513          	mv	a0,s3
    1c10:	00000097          	auipc	ra,0x0
    1c14:	f38080e7          	jalr	-200(ra) # 1b48 <fatfs_fat_writeback>
    1c18:	04051c63          	bnez	a0,1c70 <fatfs_fat_read_sector+0xa8>
    1c1c:	01c12083          	lw	ra,28(sp)
    1c20:	01812403          	lw	s0,24(sp)
    1c24:	01412483          	lw	s1,20(sp)
    1c28:	00c12983          	lw	s3,12(sp)
    1c2c:	00090513          	mv	a0,s2
    1c30:	01012903          	lw	s2,16(sp)
    1c34:	02010113          	add	sp,sp,32
    1c38:	00008067          	ret
    1c3c:	20092783          	lw	a5,512(s2)
    1c40:	00f4e663          	bltu	s1,a5,1c4c <fatfs_fat_read_sector+0x84>
    1c44:	00178713          	add	a4,a5,1
    1c48:	04e4ee63          	bltu	s1,a4,1ca4 <fatfs_fat_read_sector+0xdc>
    1c4c:	20c92783          	lw	a5,524(s2)
    1c50:	00079663          	bnez	a5,1c5c <fatfs_fat_read_sector+0x94>
    1c54:	00040a63          	beqz	s0,1c68 <fatfs_fat_read_sector+0xa0>
    1c58:	20042623          	sw	zero,524(s0)
    1c5c:	00090413          	mv	s0,s2
    1c60:	20c92903          	lw	s2,524(s2)
    1c64:	f8dff06f          	j	1bf0 <fatfs_fat_read_sector+0x28>
    1c68:	2409aa23          	sw	zero,596(s3)
    1c6c:	ff1ff06f          	j	1c5c <fatfs_fat_read_sector+0x94>
    1c70:	0349a783          	lw	a5,52(s3)
    1c74:	20942023          	sw	s1,512(s0)
    1c78:	00100613          	li	a2,1
    1c7c:	00040593          	mv	a1,s0
    1c80:	00048513          	mv	a0,s1
    1c84:	000780e7          	jalr	a5
    1c88:	00051863          	bnez	a0,1c98 <fatfs_fat_read_sector+0xd0>
    1c8c:	fff00793          	li	a5,-1
    1c90:	20f42023          	sw	a5,512(s0)
    1c94:	f89ff06f          	j	1c1c <fatfs_fat_read_sector+0x54>
    1c98:	20842423          	sw	s0,520(s0)
    1c9c:	00040913          	mv	s2,s0
    1ca0:	f7dff06f          	j	1c1c <fatfs_fat_read_sector+0x54>
    1ca4:	40f484b3          	sub	s1,s1,a5
    1ca8:	00949493          	sll	s1,s1,0x9
    1cac:	009904b3          	add	s1,s2,s1
    1cb0:	20992423          	sw	s1,520(s2)
    1cb4:	f69ff06f          	j	1c1c <fatfs_fat_read_sector+0x54>

00001cb8 <_allocate_file>:
    1cb8:	ff010113          	add	sp,sp,-16
    1cbc:	000057b7          	lui	a5,0x5
    1cc0:	00812423          	sw	s0,8(sp)
    1cc4:	0a47a403          	lw	s0,164(a5) # 50a4 <_free_file_list>
    1cc8:	00112623          	sw	ra,12(sp)
    1ccc:	02040e63          	beqz	s0,1d08 <_allocate_file+0x50>
    1cd0:	00042703          	lw	a4,0(s0)
    1cd4:	00442683          	lw	a3,4(s0)
    1cd8:	0a478793          	add	a5,a5,164
    1cdc:	04071063          	bnez	a4,1d1c <_allocate_file+0x64>
    1ce0:	00d7a023          	sw	a3,0(a5)
    1ce4:	00442683          	lw	a3,4(s0)
    1ce8:	02069e63          	bnez	a3,1d24 <_allocate_file+0x6c>
    1cec:	00e7a223          	sw	a4,4(a5)
    1cf0:	00005537          	lui	a0,0x5
    1cf4:	00040593          	mv	a1,s0
    1cf8:	0ac50513          	add	a0,a0,172 # 50ac <_open_file_list>
    1cfc:	00000097          	auipc	ra,0x0
    1d00:	d1c080e7          	jalr	-740(ra) # 1a18 <fat_list_insert_last>
    1d04:	bc440413          	add	s0,s0,-1084
    1d08:	00c12083          	lw	ra,12(sp)
    1d0c:	00040513          	mv	a0,s0
    1d10:	00812403          	lw	s0,8(sp)
    1d14:	01010113          	add	sp,sp,16
    1d18:	00008067          	ret
    1d1c:	00d72223          	sw	a3,4(a4)
    1d20:	fc5ff06f          	j	1ce4 <_allocate_file+0x2c>
    1d24:	00e6a023          	sw	a4,0(a3)
    1d28:	fc9ff06f          	j	1cf0 <_allocate_file+0x38>

00001d2c <_free_file>:
    1d2c:	43c52783          	lw	a5,1084(a0)
    1d30:	44052703          	lw	a4,1088(a0)
    1d34:	43c50593          	add	a1,a0,1084
    1d38:	02079663          	bnez	a5,1d64 <_free_file+0x38>
    1d3c:	000056b7          	lui	a3,0x5
    1d40:	0ae6a623          	sw	a4,172(a3) # 50ac <_open_file_list>
    1d44:	44052703          	lw	a4,1088(a0)
    1d48:	02071263          	bnez	a4,1d6c <_free_file+0x40>
    1d4c:	00005737          	lui	a4,0x5
    1d50:	0af72823          	sw	a5,176(a4) # 50b0 <_open_file_list+0x4>
    1d54:	00005537          	lui	a0,0x5
    1d58:	0a450513          	add	a0,a0,164 # 50a4 <_free_file_list>
    1d5c:	00000317          	auipc	t1,0x0
    1d60:	cbc30067          	jr	-836(t1) # 1a18 <fat_list_insert_last>
    1d64:	00e7a223          	sw	a4,4(a5)
    1d68:	fddff06f          	j	1d44 <_free_file+0x18>
    1d6c:	00f72023          	sw	a5,0(a4)
    1d70:	fe5ff06f          	j	1d54 <_free_file+0x28>

00001d74 <fatfs_lba_of_cluster>:
    1d74:	ff010113          	add	sp,sp,-16
    1d78:	00812423          	sw	s0,8(sp)
    1d7c:	00112623          	sw	ra,12(sp)
    1d80:	00050413          	mv	s0,a0
    1d84:	00058513          	mv	a0,a1
    1d88:	00044583          	lbu	a1,0(s0)
    1d8c:	ffe50513          	add	a0,a0,-2
    1d90:	00000097          	auipc	ra,0x0
    1d94:	c60080e7          	jalr	-928(ra) # 19f0 <__mulsi3>
    1d98:	00442783          	lw	a5,4(s0)
    1d9c:	00f50533          	add	a0,a0,a5
    1da0:	03042783          	lw	a5,48(s0)
    1da4:	00079863          	bnez	a5,1db4 <fatfs_lba_of_cluster+0x40>
    1da8:	02845783          	lhu	a5,40(s0)
    1dac:	4047d793          	sra	a5,a5,0x4
    1db0:	00f50533          	add	a0,a0,a5
    1db4:	00c12083          	lw	ra,12(sp)
    1db8:	00812403          	lw	s0,8(sp)
    1dbc:	01010113          	add	sp,sp,16
    1dc0:	00008067          	ret

00001dc4 <fatfs_sector_read>:
    1dc4:	03452783          	lw	a5,52(a0)
    1dc8:	00058713          	mv	a4,a1
    1dcc:	00070513          	mv	a0,a4
    1dd0:	00060593          	mv	a1,a2
    1dd4:	00068613          	mv	a2,a3
    1dd8:	00078067          	jr	a5

00001ddc <fatfs_sector_write>:
    1ddc:	03852783          	lw	a5,56(a0)
    1de0:	00058713          	mv	a4,a1
    1de4:	00070513          	mv	a0,a4
    1de8:	00060593          	mv	a1,a2
    1dec:	00068613          	mv	a2,a3
    1df0:	00078067          	jr	a5

00001df4 <fatfs_write_sector>:
    1df4:	03852783          	lw	a5,56(a0)
    1df8:	0a078863          	beqz	a5,1ea8 <fatfs_write_sector+0xb4>
    1dfc:	fe010113          	add	sp,sp,-32
    1e00:	01212823          	sw	s2,16(sp)
    1e04:	00068913          	mv	s2,a3
    1e08:	03052683          	lw	a3,48(a0)
    1e0c:	00812c23          	sw	s0,24(sp)
    1e10:	00912a23          	sw	s1,20(sp)
    1e14:	00112e23          	sw	ra,28(sp)
    1e18:	00d5e733          	or	a4,a1,a3
    1e1c:	00050413          	mv	s0,a0
    1e20:	00060493          	mv	s1,a2
    1e24:	04071063          	bnez	a4,1e64 <fatfs_write_sector+0x70>
    1e28:	01052703          	lw	a4,16(a0)
    1e2c:	06e67063          	bgeu	a2,a4,1e8c <fatfs_write_sector+0x98>
    1e30:	01c52503          	lw	a0,28(a0)
    1e34:	00c42703          	lw	a4,12(s0)
    1e38:	00e50533          	add	a0,a0,a4
    1e3c:	00c50533          	add	a0,a0,a2
    1e40:	02090e63          	beqz	s2,1e7c <fatfs_write_sector+0x88>
    1e44:	00100613          	li	a2,1
    1e48:	00090593          	mv	a1,s2
    1e4c:	01812403          	lw	s0,24(sp)
    1e50:	01c12083          	lw	ra,28(sp)
    1e54:	01412483          	lw	s1,20(sp)
    1e58:	01012903          	lw	s2,16(sp)
    1e5c:	02010113          	add	sp,sp,32
    1e60:	00078067          	jr	a5
    1e64:	00f12623          	sw	a5,12(sp)
    1e68:	00000097          	auipc	ra,0x0
    1e6c:	f0c080e7          	jalr	-244(ra) # 1d74 <fatfs_lba_of_cluster>
    1e70:	00c12783          	lw	a5,12(sp)
    1e74:	00a48533          	add	a0,s1,a0
    1e78:	fc9ff06f          	j	1e40 <fatfs_write_sector+0x4c>
    1e7c:	24a42223          	sw	a0,580(s0)
    1e80:	00100613          	li	a2,1
    1e84:	04440593          	add	a1,s0,68
    1e88:	fc5ff06f          	j	1e4c <fatfs_write_sector+0x58>
    1e8c:	01c12083          	lw	ra,28(sp)
    1e90:	01812403          	lw	s0,24(sp)
    1e94:	01412483          	lw	s1,20(sp)
    1e98:	01012903          	lw	s2,16(sp)
    1e9c:	00000513          	li	a0,0
    1ea0:	02010113          	add	sp,sp,32
    1ea4:	00008067          	ret
    1ea8:	00000513          	li	a0,0
    1eac:	00008067          	ret

00001eb0 <fl_init>:
    1eb0:	ff010113          	add	sp,sp,-16
    1eb4:	00812423          	sw	s0,8(sp)
    1eb8:	00005437          	lui	s0,0x5
    1ebc:	00112623          	sw	ra,12(sp)
    1ec0:	0a440793          	add	a5,s0,164 # 50a4 <_free_file_list>
    1ec4:	0007a223          	sw	zero,4(a5)
    1ec8:	0007a023          	sw	zero,0(a5)
    1ecc:	0000a5b7          	lui	a1,0xa
    1ed0:	000057b7          	lui	a5,0x5
    1ed4:	0ac78793          	add	a5,a5,172 # 50ac <_open_file_list>
    1ed8:	0a440513          	add	a0,s0,164
    1edc:	c3858593          	add	a1,a1,-968 # 9c38 <_files+0x43c>
    1ee0:	0007a223          	sw	zero,4(a5)
    1ee4:	0007a023          	sw	zero,0(a5)
    1ee8:	00000097          	auipc	ra,0x0
    1eec:	b30080e7          	jalr	-1232(ra) # 1a18 <fat_list_insert_last>
    1ef0:	0000a5b7          	lui	a1,0xa
    1ef4:	0a440513          	add	a0,s0,164
    1ef8:	07c58593          	add	a1,a1,124 # a07c <_files+0x880>
    1efc:	00000097          	auipc	ra,0x0
    1f00:	b1c080e7          	jalr	-1252(ra) # 1a18 <fat_list_insert_last>
    1f04:	00c12083          	lw	ra,12(sp)
    1f08:	00812403          	lw	s0,8(sp)
    1f0c:	000057b7          	lui	a5,0x5
    1f10:	00100713          	li	a4,1
    1f14:	0ae7ac23          	sw	a4,184(a5) # 50b8 <_filelib_init>
    1f18:	01010113          	add	sp,sp,16
    1f1c:	00008067          	ret

00001f20 <fl_closedir>:
    1f20:	00000513          	li	a0,0
    1f24:	00008067          	ret

00001f28 <fatfs_lfn_cache_entry>:
    1f28:	0005c783          	lbu	a5,0(a1)
    1f2c:	01300693          	li	a3,19
    1f30:	01f7f793          	and	a5,a5,31
    1f34:	fff78713          	add	a4,a5,-1
    1f38:	0ff77613          	zext.b	a2,a4
    1f3c:	0ac6ea63          	bltu	a3,a2,1ff0 <fatfs_lfn_cache_entry+0xc8>
    1f40:	10554683          	lbu	a3,261(a0)
    1f44:	00069463          	bnez	a3,1f4c <fatfs_lfn_cache_entry+0x24>
    1f48:	10f502a3          	sb	a5,261(a0)
    1f4c:	00171793          	sll	a5,a4,0x1
    1f50:	00e787b3          	add	a5,a5,a4
    1f54:	0015c683          	lbu	a3,1(a1)
    1f58:	00279793          	sll	a5,a5,0x2
    1f5c:	00e787b3          	add	a5,a5,a4
    1f60:	00f50533          	add	a0,a0,a5
    1f64:	00d50023          	sb	a3,0(a0)
    1f68:	0035c783          	lbu	a5,3(a1)
    1f6c:	0ff00713          	li	a4,255
    1f70:	02000693          	li	a3,32
    1f74:	00f500a3          	sb	a5,1(a0)
    1f78:	0055c783          	lbu	a5,5(a1)
    1f7c:	00f50123          	sb	a5,2(a0)
    1f80:	0075c783          	lbu	a5,7(a1)
    1f84:	00f501a3          	sb	a5,3(a0)
    1f88:	0095c783          	lbu	a5,9(a1)
    1f8c:	00f50223          	sb	a5,4(a0)
    1f90:	00e5c783          	lbu	a5,14(a1)
    1f94:	00f502a3          	sb	a5,5(a0)
    1f98:	0105c783          	lbu	a5,16(a1)
    1f9c:	00f50323          	sb	a5,6(a0)
    1fa0:	0125c783          	lbu	a5,18(a1)
    1fa4:	00f503a3          	sb	a5,7(a0)
    1fa8:	0145c783          	lbu	a5,20(a1)
    1fac:	00f50423          	sb	a5,8(a0)
    1fb0:	0165c783          	lbu	a5,22(a1)
    1fb4:	00f504a3          	sb	a5,9(a0)
    1fb8:	0185c783          	lbu	a5,24(a1)
    1fbc:	00f50523          	sb	a5,10(a0)
    1fc0:	01c5c783          	lbu	a5,28(a1)
    1fc4:	00f505a3          	sb	a5,11(a0)
    1fc8:	01e5c783          	lbu	a5,30(a1)
    1fcc:	00f50623          	sb	a5,12(a0)
    1fd0:	00d00793          	li	a5,13
    1fd4:	00054603          	lbu	a2,0(a0)
    1fd8:	00e61463          	bne	a2,a4,1fe0 <fatfs_lfn_cache_entry+0xb8>
    1fdc:	00d50023          	sb	a3,0(a0)
    1fe0:	fff78793          	add	a5,a5,-1
    1fe4:	0ff7f793          	zext.b	a5,a5
    1fe8:	00150513          	add	a0,a0,1
    1fec:	fe0794e3          	bnez	a5,1fd4 <fatfs_lfn_cache_entry+0xac>
    1ff0:	00008067          	ret

00001ff4 <fatfs_lfn_cache_get>:
    1ff4:	10554703          	lbu	a4,261(a0)
    1ff8:	01400793          	li	a5,20
    1ffc:	00f71663          	bne	a4,a5,2008 <fatfs_lfn_cache_get+0x14>
    2000:	10050223          	sb	zero,260(a0)
    2004:	00008067          	ret
    2008:	02070063          	beqz	a4,2028 <fatfs_lfn_cache_get+0x34>
    200c:	00171793          	sll	a5,a4,0x1
    2010:	00e787b3          	add	a5,a5,a4
    2014:	00279793          	sll	a5,a5,0x2
    2018:	00e787b3          	add	a5,a5,a4
    201c:	00f507b3          	add	a5,a0,a5
    2020:	00078023          	sb	zero,0(a5)
    2024:	00008067          	ret
    2028:	00050023          	sb	zero,0(a0)
    202c:	00008067          	ret

00002030 <fatfs_entry_lfn_text>:
    2030:	00b54503          	lbu	a0,11(a0)
    2034:	00f57513          	and	a0,a0,15
    2038:	ff150513          	add	a0,a0,-15
    203c:	00153513          	seqz	a0,a0
    2040:	00008067          	ret

00002044 <fatfs_entry_lfn_invalid>:
    2044:	00054703          	lbu	a4,0(a0)
    2048:	00050793          	mv	a5,a0
    204c:	02070463          	beqz	a4,2074 <fatfs_entry_lfn_invalid+0x30>
    2050:	0e500693          	li	a3,229
    2054:	00100513          	li	a0,1
    2058:	02d70063          	beq	a4,a3,2078 <fatfs_entry_lfn_invalid+0x34>
    205c:	00b7c783          	lbu	a5,11(a5)
    2060:	00800713          	li	a4,8
    2064:	00e78a63          	beq	a5,a4,2078 <fatfs_entry_lfn_invalid+0x34>
    2068:	0067f793          	and	a5,a5,6
    206c:	00f03533          	snez	a0,a5
    2070:	00008067          	ret
    2074:	00100513          	li	a0,1
    2078:	00008067          	ret

0000207c <fatfs_entry_lfn_exists>:
    207c:	00b5c783          	lbu	a5,11(a1)
    2080:	00f00693          	li	a3,15
    2084:	00050713          	mv	a4,a0
    2088:	02d78a63          	beq	a5,a3,20bc <fatfs_entry_lfn_exists+0x40>
    208c:	0005c683          	lbu	a3,0(a1)
    2090:	00000513          	li	a0,0
    2094:	02068663          	beqz	a3,20c0 <fatfs_entry_lfn_exists+0x44>
    2098:	0e500613          	li	a2,229
    209c:	02c68263          	beq	a3,a2,20c0 <fatfs_entry_lfn_exists+0x44>
    20a0:	00800693          	li	a3,8
    20a4:	00d78e63          	beq	a5,a3,20c0 <fatfs_entry_lfn_exists+0x44>
    20a8:	0067f793          	and	a5,a5,6
    20ac:	00079a63          	bnez	a5,20c0 <fatfs_entry_lfn_exists+0x44>
    20b0:	10574503          	lbu	a0,261(a4)
    20b4:	00a03533          	snez	a0,a0
    20b8:	00008067          	ret
    20bc:	00000513          	li	a0,0
    20c0:	00008067          	ret

000020c4 <fatfs_entry_sfn_only>:
    20c4:	00b54783          	lbu	a5,11(a0)
    20c8:	00f00713          	li	a4,15
    20cc:	02e78663          	beq	a5,a4,20f8 <fatfs_entry_sfn_only+0x34>
    20d0:	00054703          	lbu	a4,0(a0)
    20d4:	00000513          	li	a0,0
    20d8:	02070263          	beqz	a4,20fc <fatfs_entry_sfn_only+0x38>
    20dc:	0e500693          	li	a3,229
    20e0:	00d70e63          	beq	a4,a3,20fc <fatfs_entry_sfn_only+0x38>
    20e4:	00800713          	li	a4,8
    20e8:	00e78a63          	beq	a5,a4,20fc <fatfs_entry_sfn_only+0x38>
    20ec:	0067f793          	and	a5,a5,6
    20f0:	0017b513          	seqz	a0,a5
    20f4:	00008067          	ret
    20f8:	00000513          	li	a0,0
    20fc:	00008067          	ret

00002100 <fatfs_entry_is_dir>:
    2100:	00b54503          	lbu	a0,11(a0)
    2104:	00455513          	srl	a0,a0,0x4
    2108:	00157513          	and	a0,a0,1
    210c:	00008067          	ret

00002110 <fatfs_entry_is_file>:
    2110:	00b54503          	lbu	a0,11(a0)
    2114:	00555513          	srl	a0,a0,0x5
    2118:	00157513          	and	a0,a0,1
    211c:	00008067          	ret

00002120 <fatfs_lfn_entries_required>:
    2120:	ff010113          	add	sp,sp,-16
    2124:	00112623          	sw	ra,12(sp)
    2128:	fffff097          	auipc	ra,0xfffff
    212c:	1e0080e7          	jalr	480(ra) # 1308 <strlen>
    2130:	00050a63          	beqz	a0,2144 <fatfs_lfn_entries_required+0x24>
    2134:	00d00593          	li	a1,13
    2138:	00c50513          	add	a0,a0,12
    213c:	fffff097          	auipc	ra,0xfffff
    2140:	0d8080e7          	jalr	216(ra) # 1214 <__divsi3>
    2144:	00c12083          	lw	ra,12(sp)
    2148:	01010113          	add	sp,sp,16
    214c:	00008067          	ret

00002150 <fatfs_filename_to_lfn>:
    2150:	fa010113          	add	sp,sp,-96
    2154:	04912a23          	sw	s1,84(sp)
    2158:	00058493          	mv	s1,a1
    215c:	000055b7          	lui	a1,0x5
    2160:	05858593          	add	a1,a1,88 # 5058 <font+0x1f4>
    2164:	05212823          	sw	s2,80(sp)
    2168:	05312623          	sw	s3,76(sp)
    216c:	00060913          	mv	s2,a2
    2170:	00050993          	mv	s3,a0
    2174:	03400613          	li	a2,52
    2178:	00c10513          	add	a0,sp,12
    217c:	04112e23          	sw	ra,92(sp)
    2180:	04812c23          	sw	s0,88(sp)
    2184:	05412423          	sw	s4,72(sp)
    2188:	05512223          	sw	s5,68(sp)
    218c:	05612023          	sw	s6,64(sp)
    2190:	00068b13          	mv	s6,a3
    2194:	fffff097          	auipc	ra,0xfffff
    2198:	150080e7          	jalr	336(ra) # 12e4 <memcpy>
    219c:	00098513          	mv	a0,s3
    21a0:	fffff097          	auipc	ra,0xfffff
    21a4:	168080e7          	jalr	360(ra) # 1308 <strlen>
    21a8:	00050a93          	mv	s5,a0
    21ac:	00098513          	mv	a0,s3
    21b0:	00000097          	auipc	ra,0x0
    21b4:	f70080e7          	jalr	-144(ra) # 2120 <fatfs_lfn_entries_required>
    21b8:	00191793          	sll	a5,s2,0x1
    21bc:	012787b3          	add	a5,a5,s2
    21c0:	00279793          	sll	a5,a5,0x2
    21c4:	00050a13          	mv	s4,a0
    21c8:	02000613          	li	a2,32
    21cc:	00000593          	li	a1,0
    21d0:	00048513          	mv	a0,s1
    21d4:	01278433          	add	s0,a5,s2
    21d8:	fffff097          	auipc	ra,0xfffff
    21dc:	0f0080e7          	jalr	240(ra) # 12c8 <memset>
    21e0:	00190793          	add	a5,s2,1
    21e4:	fffa0a13          	add	s4,s4,-1 # 3fff <fatfs_add_free_space+0x2b>
    21e8:	0ff7f793          	zext.b	a5,a5
    21ec:	012a1463          	bne	s4,s2,21f4 <fatfs_filename_to_lfn+0xa4>
    21f0:	0407e793          	or	a5,a5,64
    21f4:	00f48023          	sb	a5,0(s1)
    21f8:	00f00793          	li	a5,15
    21fc:	00f485a3          	sb	a5,11(s1)
    2200:	016486a3          	sb	s6,13(s1)
    2204:	00c10713          	add	a4,sp,12
    2208:	00040793          	mv	a5,s0
    220c:	00d40593          	add	a1,s0,13
    2210:	fff00613          	li	a2,-1
    2214:	00072683          	lw	a3,0(a4)
    2218:	00d486b3          	add	a3,s1,a3
    221c:	0557d263          	bge	a5,s5,2260 <fatfs_filename_to_lfn+0x110>
    2220:	00f98533          	add	a0,s3,a5
    2224:	00054503          	lbu	a0,0(a0)
    2228:	00a68023          	sb	a0,0(a3)
    222c:	00178793          	add	a5,a5,1
    2230:	00470713          	add	a4,a4,4
    2234:	feb790e3          	bne	a5,a1,2214 <fatfs_filename_to_lfn+0xc4>
    2238:	05c12083          	lw	ra,92(sp)
    223c:	05812403          	lw	s0,88(sp)
    2240:	05412483          	lw	s1,84(sp)
    2244:	05012903          	lw	s2,80(sp)
    2248:	04c12983          	lw	s3,76(sp)
    224c:	04812a03          	lw	s4,72(sp)
    2250:	04412a83          	lw	s5,68(sp)
    2254:	04012b03          	lw	s6,64(sp)
    2258:	06010113          	add	sp,sp,96
    225c:	00008067          	ret
    2260:	00fa9663          	bne	s5,a5,226c <fatfs_filename_to_lfn+0x11c>
    2264:	00068023          	sb	zero,0(a3)
    2268:	fc5ff06f          	j	222c <fatfs_filename_to_lfn+0xdc>
    226c:	00c68023          	sb	a2,0(a3)
    2270:	00c680a3          	sb	a2,1(a3)
    2274:	fb9ff06f          	j	222c <fatfs_filename_to_lfn+0xdc>

00002278 <fatfs_sfn_create_entry>:
    2278:	00000793          	li	a5,0
    227c:	00b00813          	li	a6,11
    2280:	00f508b3          	add	a7,a0,a5
    2284:	0008c303          	lbu	t1,0(a7)
    2288:	00f688b3          	add	a7,a3,a5
    228c:	00178793          	add	a5,a5,1
    2290:	00688023          	sb	t1,0(a7)
    2294:	ff0796e3          	bne	a5,a6,2280 <fatfs_sfn_create_entry+0x8>
    2298:	02000793          	li	a5,32
    229c:	00f68823          	sb	a5,16(a3)
    22a0:	00f68923          	sb	a5,18(a3)
    22a4:	00f68c23          	sb	a5,24(a3)
    22a8:	000686a3          	sb	zero,13(a3)
    22ac:	00068723          	sb	zero,14(a3)
    22b0:	000687a3          	sb	zero,15(a3)
    22b4:	000688a3          	sb	zero,17(a3)
    22b8:	000689a3          	sb	zero,19(a3)
    22bc:	00068b23          	sb	zero,22(a3)
    22c0:	00068ba3          	sb	zero,23(a3)
    22c4:	00068ca3          	sb	zero,25(a3)
    22c8:	01000793          	li	a5,16
    22cc:	00071463          	bnez	a4,22d4 <fatfs_sfn_create_entry+0x5c>
    22d0:	02000793          	li	a5,32
    22d4:	00f685a3          	sb	a5,11(a3)
    22d8:	01065793          	srl	a5,a2,0x10
    22dc:	00f68a23          	sb	a5,20(a3)
    22e0:	0087d793          	srl	a5,a5,0x8
    22e4:	00f68aa3          	sb	a5,21(a3)
    22e8:	01061793          	sll	a5,a2,0x10
    22ec:	0107d793          	srl	a5,a5,0x10
    22f0:	0087d793          	srl	a5,a5,0x8
    22f4:	00f68da3          	sb	a5,27(a3)
    22f8:	0085d793          	srl	a5,a1,0x8
    22fc:	00b68e23          	sb	a1,28(a3)
    2300:	00f68ea3          	sb	a5,29(a3)
    2304:	0105d793          	srl	a5,a1,0x10
    2308:	0185d593          	srl	a1,a1,0x18
    230c:	00068623          	sb	zero,12(a3)
    2310:	00c68d23          	sb	a2,26(a3)
    2314:	00f68f23          	sb	a5,30(a3)
    2318:	00b68fa3          	sb	a1,31(a3)
    231c:	00008067          	ret

00002320 <fatfs_lfn_create_sfn>:
    2320:	0005c703          	lbu	a4,0(a1)
    2324:	02e00793          	li	a5,46
    2328:	16f70663          	beq	a4,a5,2494 <fatfs_lfn_create_sfn+0x174>
    232c:	fe010113          	add	sp,sp,-32
    2330:	00912a23          	sw	s1,20(sp)
    2334:	00050493          	mv	s1,a0
    2338:	00058513          	mv	a0,a1
    233c:	00112e23          	sw	ra,28(sp)
    2340:	00812c23          	sw	s0,24(sp)
    2344:	01212823          	sw	s2,16(sp)
    2348:	00058413          	mv	s0,a1
    234c:	fffff097          	auipc	ra,0xfffff
    2350:	fbc080e7          	jalr	-68(ra) # 1308 <strlen>
    2354:	00b00613          	li	a2,11
    2358:	02000593          	li	a1,32
    235c:	00050913          	mv	s2,a0
    2360:	00048513          	mv	a0,s1
    2364:	fffff097          	auipc	ra,0xfffff
    2368:	f64080e7          	jalr	-156(ra) # 12c8 <memset>
    236c:	00300613          	li	a2,3
    2370:	02000593          	li	a1,32
    2374:	00c10513          	add	a0,sp,12
    2378:	fffff097          	auipc	ra,0xfffff
    237c:	f50080e7          	jalr	-176(ra) # 12c8 <memset>
    2380:	fff00713          	li	a4,-1
    2384:	00000793          	li	a5,0
    2388:	02e00693          	li	a3,46
    238c:	0d27c263          	blt	a5,s2,2450 <fatfs_lfn_create_sfn+0x130>
    2390:	fff00793          	li	a5,-1
    2394:	0ef70863          	beq	a4,a5,2484 <fatfs_lfn_create_sfn+0x164>
    2398:	00170793          	add	a5,a4,1
    239c:	00c10693          	add	a3,sp,12
    23a0:	00470613          	add	a2,a4,4
    23a4:	0cf61263          	bne	a2,a5,2468 <fatfs_lfn_create_sfn+0x148>
    23a8:	00000613          	li	a2,0
    23ac:	00000693          	li	a3,0
    23b0:	02000513          	li	a0,32
    23b4:	02e00813          	li	a6,46
    23b8:	01900893          	li	a7,25
    23bc:	00800313          	li	t1,8
    23c0:	02e6dc63          	bge	a3,a4,23f8 <fatfs_lfn_create_sfn+0xd8>
    23c4:	00d407b3          	add	a5,s0,a3
    23c8:	0007c783          	lbu	a5,0(a5)
    23cc:	0ca78063          	beq	a5,a0,248c <fatfs_lfn_create_sfn+0x16c>
    23d0:	0b078e63          	beq	a5,a6,248c <fatfs_lfn_create_sfn+0x16c>
    23d4:	f9f78593          	add	a1,a5,-97
    23d8:	0ff5f593          	zext.b	a1,a1
    23dc:	00c48e33          	add	t3,s1,a2
    23e0:	00160613          	add	a2,a2,1
    23e4:	00b8e663          	bltu	a7,a1,23f0 <fatfs_lfn_create_sfn+0xd0>
    23e8:	fe078793          	add	a5,a5,-32
    23ec:	0ff7f793          	zext.b	a5,a5
    23f0:	00fe0023          	sb	a5,0(t3)
    23f4:	08661c63          	bne	a2,t1,248c <fatfs_lfn_create_sfn+0x16c>
    23f8:	00c10793          	add	a5,sp,12
    23fc:	00800693          	li	a3,8
    2400:	01900513          	li	a0,25
    2404:	00b00593          	li	a1,11
    2408:	0007c703          	lbu	a4,0(a5)
    240c:	f9f70613          	add	a2,a4,-97
    2410:	0ff67613          	zext.b	a2,a2
    2414:	00c56663          	bltu	a0,a2,2420 <fatfs_lfn_create_sfn+0x100>
    2418:	fe070713          	add	a4,a4,-32
    241c:	0ff77713          	zext.b	a4,a4
    2420:	00d48633          	add	a2,s1,a3
    2424:	00e60023          	sb	a4,0(a2)
    2428:	00168693          	add	a3,a3,1
    242c:	00178793          	add	a5,a5,1
    2430:	fcb69ce3          	bne	a3,a1,2408 <fatfs_lfn_create_sfn+0xe8>
    2434:	01c12083          	lw	ra,28(sp)
    2438:	01812403          	lw	s0,24(sp)
    243c:	01412483          	lw	s1,20(sp)
    2440:	01012903          	lw	s2,16(sp)
    2444:	00100513          	li	a0,1
    2448:	02010113          	add	sp,sp,32
    244c:	00008067          	ret
    2450:	00f40633          	add	a2,s0,a5
    2454:	00064603          	lbu	a2,0(a2)
    2458:	00d61463          	bne	a2,a3,2460 <fatfs_lfn_create_sfn+0x140>
    245c:	00078713          	mv	a4,a5
    2460:	00178793          	add	a5,a5,1
    2464:	f29ff06f          	j	238c <fatfs_lfn_create_sfn+0x6c>
    2468:	0127d863          	bge	a5,s2,2478 <fatfs_lfn_create_sfn+0x158>
    246c:	00f405b3          	add	a1,s0,a5
    2470:	0005c583          	lbu	a1,0(a1)
    2474:	00b68023          	sb	a1,0(a3)
    2478:	00178793          	add	a5,a5,1
    247c:	00168693          	add	a3,a3,1
    2480:	f25ff06f          	j	23a4 <fatfs_lfn_create_sfn+0x84>
    2484:	00090713          	mv	a4,s2
    2488:	f21ff06f          	j	23a8 <fatfs_lfn_create_sfn+0x88>
    248c:	00168693          	add	a3,a3,1
    2490:	f31ff06f          	j	23c0 <fatfs_lfn_create_sfn+0xa0>
    2494:	00000513          	li	a0,0
    2498:	00008067          	ret

0000249c <fatfs_lfn_generate_tail>:
    249c:	000187b7          	lui	a5,0x18
    24a0:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    24a4:	16c7e463          	bltu	a5,a2,260c <fatfs_lfn_generate_tail+0x170>
    24a8:	fa010113          	add	sp,sp,-96
    24ac:	04812c23          	sw	s0,88(sp)
    24b0:	04912a23          	sw	s1,84(sp)
    24b4:	05412423          	sw	s4,72(sp)
    24b8:	00050493          	mv	s1,a0
    24bc:	00058a13          	mv	s4,a1
    24c0:	00060413          	mv	s0,a2
    24c4:	00000593          	li	a1,0
    24c8:	00c00613          	li	a2,12
    24cc:	00410513          	add	a0,sp,4
    24d0:	04112e23          	sw	ra,92(sp)
    24d4:	05312623          	sw	s3,76(sp)
    24d8:	05512223          	sw	s5,68(sp)
    24dc:	03712e23          	sw	s7,60(sp)
    24e0:	05212823          	sw	s2,80(sp)
    24e4:	05612023          	sw	s6,64(sp)
    24e8:	fffff097          	auipc	ra,0xfffff
    24ec:	de0080e7          	jalr	-544(ra) # 12c8 <memset>
    24f0:	000055b7          	lui	a1,0x5
    24f4:	07e00793          	li	a5,126
    24f8:	01100613          	li	a2,17
    24fc:	04458593          	add	a1,a1,68 # 5044 <font+0x1e0>
    2500:	01c10513          	add	a0,sp,28
    2504:	01010993          	add	s3,sp,16
    2508:	00f10223          	sb	a5,4(sp)
    250c:	00098a93          	mv	s5,s3
    2510:	fffff097          	auipc	ra,0xfffff
    2514:	dd4080e7          	jalr	-556(ra) # 12e4 <memcpy>
    2518:	00900b93          	li	s7,9
    251c:	00a00593          	li	a1,10
    2520:	00040513          	mv	a0,s0
    2524:	fffff097          	auipc	ra,0xfffff
    2528:	d40080e7          	jalr	-704(ra) # 1264 <__umodsi3>
    252c:	03050793          	add	a5,a0,48
    2530:	00278533          	add	a0,a5,sp
    2534:	fec54783          	lbu	a5,-20(a0)
    2538:	00098913          	mv	s2,s3
    253c:	00040513          	mv	a0,s0
    2540:	00a00593          	li	a1,10
    2544:	00f98023          	sb	a5,0(s3)
    2548:	00040b13          	mv	s6,s0
    254c:	fffff097          	auipc	ra,0xfffff
    2550:	cd0080e7          	jalr	-816(ra) # 121c <__udivsi3>
    2554:	00198993          	add	s3,s3,1
    2558:	00050413          	mv	s0,a0
    255c:	fd6be0e3          	bltu	s7,s6,251c <fatfs_lfn_generate_tail+0x80>
    2560:	00098023          	sb	zero,0(s3)
    2564:	00410713          	add	a4,sp,4
    2568:	00090793          	mv	a5,s2
    256c:	00170713          	add	a4,a4,1
    2570:	0957f663          	bgeu	a5,s5,25fc <fatfs_lfn_generate_tail+0x160>
    2574:	00f10713          	add	a4,sp,15
    2578:	00000793          	li	a5,0
    257c:	00e96663          	bltu	s2,a4,2588 <fatfs_lfn_generate_tail+0xec>
    2580:	41590933          	sub	s2,s2,s5
    2584:	00190793          	add	a5,s2,1
    2588:	03078793          	add	a5,a5,48
    258c:	002787b3          	add	a5,a5,sp
    2590:	000a0593          	mv	a1,s4
    2594:	fc078aa3          	sb	zero,-43(a5)
    2598:	00b00613          	li	a2,11
    259c:	00048513          	mv	a0,s1
    25a0:	fffff097          	auipc	ra,0xfffff
    25a4:	d44080e7          	jalr	-700(ra) # 12e4 <memcpy>
    25a8:	00410513          	add	a0,sp,4
    25ac:	fffff097          	auipc	ra,0xfffff
    25b0:	d5c080e7          	jalr	-676(ra) # 1308 <strlen>
    25b4:	40a484b3          	sub	s1,s1,a0
    25b8:	00050613          	mv	a2,a0
    25bc:	00410593          	add	a1,sp,4
    25c0:	00848513          	add	a0,s1,8
    25c4:	fffff097          	auipc	ra,0xfffff
    25c8:	d20080e7          	jalr	-736(ra) # 12e4 <memcpy>
    25cc:	05c12083          	lw	ra,92(sp)
    25d0:	05812403          	lw	s0,88(sp)
    25d4:	05412483          	lw	s1,84(sp)
    25d8:	05012903          	lw	s2,80(sp)
    25dc:	04c12983          	lw	s3,76(sp)
    25e0:	04812a03          	lw	s4,72(sp)
    25e4:	04412a83          	lw	s5,68(sp)
    25e8:	04012b03          	lw	s6,64(sp)
    25ec:	03c12b83          	lw	s7,60(sp)
    25f0:	00100513          	li	a0,1
    25f4:	06010113          	add	sp,sp,96
    25f8:	00008067          	ret
    25fc:	0007c683          	lbu	a3,0(a5)
    2600:	fff78793          	add	a5,a5,-1
    2604:	00d70023          	sb	a3,0(a4)
    2608:	f65ff06f          	j	256c <fatfs_lfn_generate_tail+0xd0>
    260c:	00000513          	li	a0,0
    2610:	00008067          	ret

00002614 <fatfs_total_path_levels>:
    2614:	00050793          	mv	a5,a0
    2618:	06050463          	beqz	a0,2680 <fatfs_total_path_levels+0x6c>
    261c:	00054703          	lbu	a4,0(a0)
    2620:	02f00693          	li	a3,47
    2624:	00d71863          	bne	a4,a3,2634 <fatfs_total_path_levels+0x20>
    2628:	00150793          	add	a5,a0,1
    262c:	00000513          	li	a0,0
    2630:	0400006f          	j	2670 <fatfs_total_path_levels+0x5c>
    2634:	00154683          	lbu	a3,1(a0)
    2638:	03a00713          	li	a4,58
    263c:	00e68a63          	beq	a3,a4,2650 <fatfs_total_path_levels+0x3c>
    2640:	00254683          	lbu	a3,2(a0)
    2644:	05c00713          	li	a4,92
    2648:	fff00513          	li	a0,-1
    264c:	02e69c63          	bne	a3,a4,2684 <fatfs_total_path_levels+0x70>
    2650:	00378793          	add	a5,a5,3
    2654:	05c00713          	li	a4,92
    2658:	fd5ff06f          	j	262c <fatfs_total_path_levels+0x18>
    265c:	00178793          	add	a5,a5,1
    2660:	00e68663          	beq	a3,a4,266c <fatfs_total_path_levels+0x58>
    2664:	0007c683          	lbu	a3,0(a5)
    2668:	fe069ae3          	bnez	a3,265c <fatfs_total_path_levels+0x48>
    266c:	00150513          	add	a0,a0,1
    2670:	0007c683          	lbu	a3,0(a5)
    2674:	fe0698e3          	bnez	a3,2664 <fatfs_total_path_levels+0x50>
    2678:	fff50513          	add	a0,a0,-1
    267c:	00008067          	ret
    2680:	fff00513          	li	a0,-1
    2684:	00008067          	ret

00002688 <fatfs_get_substring>:
    2688:	0e050663          	beqz	a0,2774 <fatfs_get_substring+0xec>
    268c:	fe010113          	add	sp,sp,-32
    2690:	00912a23          	sw	s1,20(sp)
    2694:	00112e23          	sw	ra,28(sp)
    2698:	00812c23          	sw	s0,24(sp)
    269c:	01212823          	sw	s2,16(sp)
    26a0:	01312623          	sw	s3,12(sp)
    26a4:	01412423          	sw	s4,8(sp)
    26a8:	00050793          	mv	a5,a0
    26ac:	00068493          	mv	s1,a3
    26b0:	fff00513          	li	a0,-1
    26b4:	06d05a63          	blez	a3,2728 <fatfs_get_substring+0xa0>
    26b8:	0007c983          	lbu	s3,0(a5)
    26bc:	02f00713          	li	a4,47
    26c0:	00058a13          	mv	s4,a1
    26c4:	00060913          	mv	s2,a2
    26c8:	00178413          	add	s0,a5,1
    26cc:	02e98463          	beq	s3,a4,26f4 <fatfs_get_substring+0x6c>
    26d0:	0017c683          	lbu	a3,1(a5)
    26d4:	03a00713          	li	a4,58
    26d8:	00e68a63          	beq	a3,a4,26ec <fatfs_get_substring+0x64>
    26dc:	0027c683          	lbu	a3,2(a5)
    26e0:	05c00713          	li	a4,92
    26e4:	fff00513          	li	a0,-1
    26e8:	04e69063          	bne	a3,a4,2728 <fatfs_get_substring+0xa0>
    26ec:	00378413          	add	s0,a5,3
    26f0:	05c00993          	li	s3,92
    26f4:	00040513          	mv	a0,s0
    26f8:	fffff097          	auipc	ra,0xfffff
    26fc:	c10080e7          	jalr	-1008(ra) # 1308 <strlen>
    2700:	00000713          	li	a4,0
    2704:	00000693          	li	a3,0
    2708:	00000793          	li	a5,0
    270c:	fff48493          	add	s1,s1,-1
    2710:	00e90633          	add	a2,s2,a4
    2714:	02a7ca63          	blt	a5,a0,2748 <fatfs_get_substring+0xc0>
    2718:	00060023          	sb	zero,0(a2)
    271c:	00094503          	lbu	a0,0(s2)
    2720:	00153513          	seqz	a0,a0
    2724:	40a00533          	neg	a0,a0
    2728:	01c12083          	lw	ra,28(sp)
    272c:	01812403          	lw	s0,24(sp)
    2730:	01412483          	lw	s1,20(sp)
    2734:	01012903          	lw	s2,16(sp)
    2738:	00c12983          	lw	s3,12(sp)
    273c:	00812a03          	lw	s4,8(sp)
    2740:	02010113          	add	sp,sp,32
    2744:	00008067          	ret
    2748:	00f405b3          	add	a1,s0,a5
    274c:	0005c583          	lbu	a1,0(a1)
    2750:	01358c63          	beq	a1,s3,2768 <fatfs_get_substring+0xe0>
    2754:	01469c63          	bne	a3,s4,276c <fatfs_get_substring+0xe4>
    2758:	00975a63          	bge	a4,s1,276c <fatfs_get_substring+0xe4>
    275c:	00170713          	add	a4,a4,1
    2760:	00b60023          	sb	a1,0(a2)
    2764:	0080006f          	j	276c <fatfs_get_substring+0xe4>
    2768:	00168693          	add	a3,a3,1
    276c:	00178793          	add	a5,a5,1
    2770:	fa1ff06f          	j	2710 <fatfs_get_substring+0x88>
    2774:	fff00513          	li	a0,-1
    2778:	00008067          	ret

0000277c <fatfs_split_path>:
    277c:	fd010113          	add	sp,sp,-48
    2780:	02912223          	sw	s1,36(sp)
    2784:	01312e23          	sw	s3,28(sp)
    2788:	01412c23          	sw	s4,24(sp)
    278c:	01512a23          	sw	s5,20(sp)
    2790:	02112623          	sw	ra,44(sp)
    2794:	00068a93          	mv	s5,a3
    2798:	02812423          	sw	s0,40(sp)
    279c:	03212023          	sw	s2,32(sp)
    27a0:	00050993          	mv	s3,a0
    27a4:	00058493          	mv	s1,a1
    27a8:	00060a13          	mv	s4,a2
    27ac:	00e12623          	sw	a4,12(sp)
    27b0:	00000097          	auipc	ra,0x0
    27b4:	e64080e7          	jalr	-412(ra) # 2614 <fatfs_total_path_levels>
    27b8:	fff00793          	li	a5,-1
    27bc:	00c12683          	lw	a3,12(sp)
    27c0:	02f51863          	bne	a0,a5,27f0 <fatfs_split_path+0x74>
    27c4:	fff00913          	li	s2,-1
    27c8:	02c12083          	lw	ra,44(sp)
    27cc:	02812403          	lw	s0,40(sp)
    27d0:	02412483          	lw	s1,36(sp)
    27d4:	01c12983          	lw	s3,28(sp)
    27d8:	01812a03          	lw	s4,24(sp)
    27dc:	01412a83          	lw	s5,20(sp)
    27e0:	00090513          	mv	a0,s2
    27e4:	02012903          	lw	s2,32(sp)
    27e8:	03010113          	add	sp,sp,48
    27ec:	00008067          	ret
    27f0:	00050593          	mv	a1,a0
    27f4:	00050413          	mv	s0,a0
    27f8:	000a8613          	mv	a2,s5
    27fc:	00098513          	mv	a0,s3
    2800:	00000097          	auipc	ra,0x0
    2804:	e88080e7          	jalr	-376(ra) # 2688 <fatfs_get_substring>
    2808:	00050913          	mv	s2,a0
    280c:	fa051ce3          	bnez	a0,27c4 <fatfs_split_path+0x48>
    2810:	00041663          	bnez	s0,281c <fatfs_split_path+0xa0>
    2814:	00048023          	sb	zero,0(s1)
    2818:	fb1ff06f          	j	27c8 <fatfs_split_path+0x4c>
    281c:	00098513          	mv	a0,s3
    2820:	fffff097          	auipc	ra,0xfffff
    2824:	ae8080e7          	jalr	-1304(ra) # 1308 <strlen>
    2828:	00050413          	mv	s0,a0
    282c:	000a8513          	mv	a0,s5
    2830:	fffff097          	auipc	ra,0xfffff
    2834:	ad8080e7          	jalr	-1320(ra) # 1308 <strlen>
    2838:	40a40433          	sub	s0,s0,a0
    283c:	008a5463          	bge	s4,s0,2844 <fatfs_split_path+0xc8>
    2840:	000a0413          	mv	s0,s4
    2844:	00048513          	mv	a0,s1
    2848:	00040613          	mv	a2,s0
    284c:	00098593          	mv	a1,s3
    2850:	008484b3          	add	s1,s1,s0
    2854:	fffff097          	auipc	ra,0xfffff
    2858:	a90080e7          	jalr	-1392(ra) # 12e4 <memcpy>
    285c:	fe048fa3          	sb	zero,-1(s1)
    2860:	f69ff06f          	j	27c8 <fatfs_split_path+0x4c>

00002864 <fatfs_compare_names>:
    2864:	fd010113          	add	sp,sp,-48
    2868:	02112623          	sw	ra,44(sp)
    286c:	02812423          	sw	s0,40(sp)
    2870:	02912223          	sw	s1,36(sp)
    2874:	03212023          	sw	s2,32(sp)
    2878:	01312e23          	sw	s3,28(sp)
    287c:	00058913          	mv	s2,a1
    2880:	01412c23          	sw	s4,24(sp)
    2884:	01512a23          	sw	s5,20(sp)
    2888:	01612823          	sw	s6,16(sp)
    288c:	00050a13          	mv	s4,a0
    2890:	fffff097          	auipc	ra,0xfffff
    2894:	28c080e7          	jalr	652(ra) # 1b1c <FileString_GetExtension>
    2898:	00050493          	mv	s1,a0
    289c:	00090513          	mv	a0,s2
    28a0:	fffff097          	auipc	ra,0xfffff
    28a4:	27c080e7          	jalr	636(ra) # 1b1c <FileString_GetExtension>
    28a8:	fff00793          	li	a5,-1
    28ac:	00050413          	mv	s0,a0
    28b0:	00000993          	li	s3,0
    28b4:	08f49a63          	bne	s1,a5,2948 <fatfs_compare_names+0xe4>
    28b8:	0c951e63          	bne	a0,s1,2994 <fatfs_compare_names+0x130>
    28bc:	000a0513          	mv	a0,s4
    28c0:	fffff097          	auipc	ra,0xfffff
    28c4:	a48080e7          	jalr	-1464(ra) # 1308 <strlen>
    28c8:	00050493          	mv	s1,a0
    28cc:	00090513          	mv	a0,s2
    28d0:	fffff097          	auipc	ra,0xfffff
    28d4:	a38080e7          	jalr	-1480(ra) # 1308 <strlen>
    28d8:	00050413          	mv	s0,a0
    28dc:	fff48793          	add	a5,s1,-1
    28e0:	00fa07b3          	add	a5,s4,a5
    28e4:	40978733          	sub	a4,a5,s1
    28e8:	02000613          	li	a2,32
    28ec:	00078693          	mv	a3,a5
    28f0:	00e78863          	beq	a5,a4,2900 <fatfs_compare_names+0x9c>
    28f4:	0007c583          	lbu	a1,0(a5)
    28f8:	fff78793          	add	a5,a5,-1
    28fc:	0cc58263          	beq	a1,a2,29c0 <fatfs_compare_names+0x15c>
    2900:	fff40793          	add	a5,s0,-1
    2904:	00f907b3          	add	a5,s2,a5
    2908:	40878733          	sub	a4,a5,s0
    290c:	02000613          	li	a2,32
    2910:	00078693          	mv	a3,a5
    2914:	00e78863          	beq	a5,a4,2924 <fatfs_compare_names+0xc0>
    2918:	0007c583          	lbu	a1,0(a5)
    291c:	fff78793          	add	a5,a5,-1
    2920:	0ac58463          	beq	a1,a2,29c8 <fatfs_compare_names+0x164>
    2924:	00000993          	li	s3,0
    2928:	06941663          	bne	s0,s1,2994 <fatfs_compare_names+0x130>
    292c:	00040613          	mv	a2,s0
    2930:	00090593          	mv	a1,s2
    2934:	000a0513          	mv	a0,s4
    2938:	fffff097          	auipc	ra,0xfffff
    293c:	14c080e7          	jalr	332(ra) # 1a84 <FileString_StrCmpNoCase>
    2940:	00153993          	seqz	s3,a0
    2944:	0500006f          	j	2994 <fatfs_compare_names+0x130>
    2948:	04f50663          	beq	a0,a5,2994 <fatfs_compare_names+0x130>
    294c:	00148a93          	add	s5,s1,1
    2950:	015a0ab3          	add	s5,s4,s5
    2954:	00150b13          	add	s6,a0,1
    2958:	000a8513          	mv	a0,s5
    295c:	fffff097          	auipc	ra,0xfffff
    2960:	9ac080e7          	jalr	-1620(ra) # 1308 <strlen>
    2964:	01690b33          	add	s6,s2,s6
    2968:	00a12623          	sw	a0,12(sp)
    296c:	000b0513          	mv	a0,s6
    2970:	fffff097          	auipc	ra,0xfffff
    2974:	998080e7          	jalr	-1640(ra) # 1308 <strlen>
    2978:	00c12603          	lw	a2,12(sp)
    297c:	00a61c63          	bne	a2,a0,2994 <fatfs_compare_names+0x130>
    2980:	000b0593          	mv	a1,s6
    2984:	000a8513          	mv	a0,s5
    2988:	fffff097          	auipc	ra,0xfffff
    298c:	0fc080e7          	jalr	252(ra) # 1a84 <FileString_StrCmpNoCase>
    2990:	f40506e3          	beqz	a0,28dc <fatfs_compare_names+0x78>
    2994:	02c12083          	lw	ra,44(sp)
    2998:	02812403          	lw	s0,40(sp)
    299c:	02412483          	lw	s1,36(sp)
    29a0:	02012903          	lw	s2,32(sp)
    29a4:	01812a03          	lw	s4,24(sp)
    29a8:	01412a83          	lw	s5,20(sp)
    29ac:	01012b03          	lw	s6,16(sp)
    29b0:	00098513          	mv	a0,s3
    29b4:	01c12983          	lw	s3,28(sp)
    29b8:	03010113          	add	sp,sp,48
    29bc:	00008067          	ret
    29c0:	414684b3          	sub	s1,a3,s4
    29c4:	f29ff06f          	j	28ec <fatfs_compare_names+0x88>
    29c8:	41268433          	sub	s0,a3,s2
    29cc:	f45ff06f          	j	2910 <fatfs_compare_names+0xac>

000029d0 <_check_file_open>:
    29d0:	fe010113          	add	sp,sp,-32
    29d4:	000057b7          	lui	a5,0x5
    29d8:	00812c23          	sw	s0,24(sp)
    29dc:	0ac7a403          	lw	s0,172(a5) # 50ac <_open_file_list>
    29e0:	00912a23          	sw	s1,20(sp)
    29e4:	01212823          	sw	s2,16(sp)
    29e8:	01312623          	sw	s3,12(sp)
    29ec:	00112e23          	sw	ra,28(sp)
    29f0:	00050493          	mv	s1,a0
    29f4:	01450913          	add	s2,a0,20
    29f8:	11850993          	add	s3,a0,280
    29fc:	02041263          	bnez	s0,2a20 <_check_file_open+0x50>
    2a00:	00000513          	li	a0,0
    2a04:	01c12083          	lw	ra,28(sp)
    2a08:	01812403          	lw	s0,24(sp)
    2a0c:	01412483          	lw	s1,20(sp)
    2a10:	01012903          	lw	s2,16(sp)
    2a14:	00c12983          	lw	s3,12(sp)
    2a18:	02010113          	add	sp,sp,32
    2a1c:	00008067          	ret
    2a20:	bc440793          	add	a5,s0,-1084
    2a24:	02f48663          	beq	s1,a5,2a50 <_check_file_open+0x80>
    2a28:	00090593          	mv	a1,s2
    2a2c:	bd840513          	add	a0,s0,-1064
    2a30:	00000097          	auipc	ra,0x0
    2a34:	e34080e7          	jalr	-460(ra) # 2864 <fatfs_compare_names>
    2a38:	00050c63          	beqz	a0,2a50 <_check_file_open+0x80>
    2a3c:	00098593          	mv	a1,s3
    2a40:	cdc40513          	add	a0,s0,-804
    2a44:	00000097          	auipc	ra,0x0
    2a48:	e20080e7          	jalr	-480(ra) # 2864 <fatfs_compare_names>
    2a4c:	00051663          	bnez	a0,2a58 <_check_file_open+0x88>
    2a50:	00442403          	lw	s0,4(s0)
    2a54:	fa9ff06f          	j	29fc <_check_file_open+0x2c>
    2a58:	00100513          	li	a0,1
    2a5c:	fa9ff06f          	j	2a04 <_check_file_open+0x34>

00002a60 <fatfs_get_sfn_display_name>:
    2a60:	00000713          	li	a4,0
    2a64:	00c00613          	li	a2,12
    2a68:	02000813          	li	a6,32
    2a6c:	01900893          	li	a7,25
    2a70:	0005c783          	lbu	a5,0(a1)
    2a74:	00078463          	beqz	a5,2a7c <fatfs_get_sfn_display_name+0x1c>
    2a78:	00c71863          	bne	a4,a2,2a88 <fatfs_get_sfn_display_name+0x28>
    2a7c:	00050023          	sb	zero,0(a0)
    2a80:	00100513          	li	a0,1
    2a84:	00008067          	ret
    2a88:	00158593          	add	a1,a1,1
    2a8c:	ff0782e3          	beq	a5,a6,2a70 <fatfs_get_sfn_display_name+0x10>
    2a90:	fbf78693          	add	a3,a5,-65
    2a94:	0ff6f693          	zext.b	a3,a3
    2a98:	00d8e663          	bltu	a7,a3,2aa4 <fatfs_get_sfn_display_name+0x44>
    2a9c:	02078793          	add	a5,a5,32
    2aa0:	0ff7f793          	zext.b	a5,a5
    2aa4:	00f50023          	sb	a5,0(a0)
    2aa8:	00170713          	add	a4,a4,1
    2aac:	00150513          	add	a0,a0,1
    2ab0:	fc1ff06f          	j	2a70 <fatfs_get_sfn_display_name+0x10>

00002ab4 <fatfs_fat_init>:
    2ab4:	ff010113          	add	sp,sp,-16
    2ab8:	00812423          	sw	s0,8(sp)
    2abc:	00912223          	sw	s1,4(sp)
    2ac0:	00112623          	sw	ra,12(sp)
    2ac4:	fff00793          	li	a5,-1
    2ac8:	25850493          	add	s1,a0,600
    2acc:	00050413          	mv	s0,a0
    2ad0:	44f52c23          	sw	a5,1112(a0)
    2ad4:	24052a23          	sw	zero,596(a0)
    2ad8:	44052e23          	sw	zero,1116(a0)
    2adc:	20000613          	li	a2,512
    2ae0:	00048513          	mv	a0,s1
    2ae4:	00000593          	li	a1,0
    2ae8:	ffffe097          	auipc	ra,0xffffe
    2aec:	7e0080e7          	jalr	2016(ra) # 12c8 <memset>
    2af0:	25442783          	lw	a5,596(s0)
    2af4:	00c12083          	lw	ra,12(sp)
    2af8:	24942a23          	sw	s1,596(s0)
    2afc:	46042023          	sw	zero,1120(s0)
    2b00:	46f42223          	sw	a5,1124(s0)
    2b04:	00812403          	lw	s0,8(sp)
    2b08:	00412483          	lw	s1,4(sp)
    2b0c:	01010113          	add	sp,sp,16
    2b10:	00008067          	ret

00002b14 <fatfs_init>:
    2b14:	fd010113          	add	sp,sp,-48
    2b18:	02812423          	sw	s0,40(sp)
    2b1c:	02112623          	sw	ra,44(sp)
    2b20:	02912223          	sw	s1,36(sp)
    2b24:	03212023          	sw	s2,32(sp)
    2b28:	01312e23          	sw	s3,28(sp)
    2b2c:	fff00793          	li	a5,-1
    2b30:	24f52223          	sw	a5,580(a0)
    2b34:	24052423          	sw	zero,584(a0)
    2b38:	02052223          	sw	zero,36(a0)
    2b3c:	00050413          	mv	s0,a0
    2b40:	00000097          	auipc	ra,0x0
    2b44:	f74080e7          	jalr	-140(ra) # 2ab4 <fatfs_fat_init>
    2b48:	03442783          	lw	a5,52(s0)
    2b4c:	02079263          	bnez	a5,2b70 <fatfs_init+0x5c>
    2b50:	fff00513          	li	a0,-1
    2b54:	02c12083          	lw	ra,44(sp)
    2b58:	02812403          	lw	s0,40(sp)
    2b5c:	02412483          	lw	s1,36(sp)
    2b60:	02012903          	lw	s2,32(sp)
    2b64:	01c12983          	lw	s3,28(sp)
    2b68:	03010113          	add	sp,sp,48
    2b6c:	00008067          	ret
    2b70:	04440593          	add	a1,s0,68
    2b74:	00100613          	li	a2,1
    2b78:	00000513          	li	a0,0
    2b7c:	00b12623          	sw	a1,12(sp)
    2b80:	000780e7          	jalr	a5
    2b84:	fc0506e3          	beqz	a0,2b50 <fatfs_init+0x3c>
    2b88:	24042703          	lw	a4,576(s0)
    2b8c:	ffff07b7          	lui	a5,0xffff0
    2b90:	00c12583          	lw	a1,12(sp)
    2b94:	00e7f7b3          	and	a5,a5,a4
    2b98:	aa550737          	lui	a4,0xaa550
    2b9c:	00e78663          	beq	a5,a4,2ba8 <fatfs_init+0x94>
    2ba0:	ffd00513          	li	a0,-3
    2ba4:	fb1ff06f          	j	2b54 <fatfs_init+0x40>
    2ba8:	24245703          	lhu	a4,578(s0)
    2bac:	0000b7b7          	lui	a5,0xb
    2bb0:	a5578793          	add	a5,a5,-1451 # aa55 <_files+0x1259>
    2bb4:	ffc00513          	li	a0,-4
    2bb8:	f8f71ee3          	bne	a4,a5,2b54 <fatfs_init+0x40>
    2bbc:	20644783          	lbu	a5,518(s0)
    2bc0:	00600713          	li	a4,6
    2bc4:	02f76463          	bltu	a4,a5,2bec <fatfs_init+0xd8>
    2bc8:	00400713          	li	a4,4
    2bcc:	00f76663          	bltu	a4,a5,2bd8 <fatfs_init+0xc4>
    2bd0:	00000513          	li	a0,0
    2bd4:	02078663          	beqz	a5,2c00 <fatfs_init+0xec>
    2bd8:	20c45503          	lhu	a0,524(s0)
    2bdc:	20a45783          	lhu	a5,522(s0)
    2be0:	01051513          	sll	a0,a0,0x10
    2be4:	00f56533          	or	a0,a0,a5
    2be8:	0180006f          	j	2c00 <fatfs_init+0xec>
    2bec:	00c00713          	li	a4,12
    2bf0:	12f76e63          	bltu	a4,a5,2d2c <fatfs_init+0x218>
    2bf4:	00a00713          	li	a4,10
    2bf8:	00000513          	li	a0,0
    2bfc:	fcf76ee3          	bltu	a4,a5,2bd8 <fatfs_init+0xc4>
    2c00:	03442783          	lw	a5,52(s0)
    2c04:	00a42e23          	sw	a0,28(s0)
    2c08:	00100613          	li	a2,1
    2c0c:	000780e7          	jalr	a5
    2c10:	f40500e3          	beqz	a0,2b50 <fatfs_init+0x3c>
    2c14:	05044783          	lbu	a5,80(s0)
    2c18:	04f44703          	lbu	a4,79(s0)
    2c1c:	ffe00513          	li	a0,-2
    2c20:	00879793          	sll	a5,a5,0x8
    2c24:	00e7e7b3          	or	a5,a5,a4
    2c28:	20000713          	li	a4,512
    2c2c:	f2e794e3          	bne	a5,a4,2b54 <fatfs_init+0x40>
    2c30:	05644483          	lbu	s1,86(s0)
    2c34:	05544783          	lbu	a5,85(s0)
    2c38:	05144983          	lbu	s3,81(s0)
    2c3c:	00849493          	sll	s1,s1,0x8
    2c40:	05a45583          	lhu	a1,90(s0)
    2c44:	00f4e4b3          	or	s1,s1,a5
    2c48:	01340023          	sb	s3,0(s0)
    2c4c:	02941423          	sh	s1,40(s0)
    2c50:	05245903          	lhu	s2,82(s0)
    2c54:	05444503          	lbu	a0,84(s0)
    2c58:	00059463          	bnez	a1,2c60 <fatfs_init+0x14c>
    2c5c:	06842583          	lw	a1,104(s0)
    2c60:	07042783          	lw	a5,112(s0)
    2c64:	02b42023          	sw	a1,32(s0)
    2c68:	00549493          	sll	s1,s1,0x5
    2c6c:	00f42423          	sw	a5,8(s0)
    2c70:	07445783          	lhu	a5,116(s0)
    2c74:	1ff48493          	add	s1,s1,511
    2c78:	4094d493          	sra	s1,s1,0x9
    2c7c:	00f41c23          	sh	a5,24(s0)
    2c80:	fffff097          	auipc	ra,0xfffff
    2c84:	d70080e7          	jalr	-656(ra) # 19f0 <__mulsi3>
    2c88:	00a907b3          	add	a5,s2,a0
    2c8c:	00f42623          	sw	a5,12(s0)
    2c90:	01c42783          	lw	a5,28(s0)
    2c94:	24245703          	lhu	a4,578(s0)
    2c98:	00942823          	sw	s1,16(s0)
    2c9c:	00f907b3          	add	a5,s2,a5
    2ca0:	00f42a23          	sw	a5,20(s0)
    2ca4:	00f507b3          	add	a5,a0,a5
    2ca8:	00f42223          	sw	a5,4(s0)
    2cac:	0000b7b7          	lui	a5,0xb
    2cb0:	a5578793          	add	a5,a5,-1451 # aa55 <_files+0x1259>
    2cb4:	eef716e3          	bne	a4,a5,2ba0 <fatfs_init+0x8c>
    2cb8:	05844783          	lbu	a5,88(s0)
    2cbc:	05744703          	lbu	a4,87(s0)
    2cc0:	00879793          	sll	a5,a5,0x8
    2cc4:	00e7e7b3          	or	a5,a5,a4
    2cc8:	00079463          	bnez	a5,2cd0 <fatfs_init+0x1bc>
    2ccc:	06442783          	lw	a5,100(s0)
    2cd0:	00990933          	add	s2,s2,s1
    2cd4:	00a90533          	add	a0,s2,a0
    2cd8:	40a787b3          	sub	a5,a5,a0
    2cdc:	ffb00513          	li	a0,-5
    2ce0:	e6098ae3          	beqz	s3,2b54 <fatfs_init+0x40>
    2ce4:	00078513          	mv	a0,a5
    2ce8:	00098593          	mv	a1,s3
    2cec:	ffffe097          	auipc	ra,0xffffe
    2cf0:	530080e7          	jalr	1328(ra) # 121c <__udivsi3>
    2cf4:	00001737          	lui	a4,0x1
    2cf8:	00050793          	mv	a5,a0
    2cfc:	ff470713          	add	a4,a4,-12 # ff4 <sdcard_init+0x4>
    2d00:	ffb00513          	li	a0,-5
    2d04:	e4f778e3          	bgeu	a4,a5,2b54 <fatfs_init+0x40>
    2d08:	00010737          	lui	a4,0x10
    2d0c:	ff470713          	add	a4,a4,-12 # fff4 <_files+0x67f8>
    2d10:	00100693          	li	a3,1
    2d14:	00f76663          	bltu	a4,a5,2d20 <fatfs_init+0x20c>
    2d18:	00042423          	sw	zero,8(s0)
    2d1c:	00000693          	li	a3,0
    2d20:	02d42823          	sw	a3,48(s0)
    2d24:	00000513          	li	a0,0
    2d28:	e2dff06f          	j	2b54 <fatfs_init+0x40>
    2d2c:	ff278793          	add	a5,a5,-14
    2d30:	0ff7f793          	zext.b	a5,a5
    2d34:	00100713          	li	a4,1
    2d38:	00000513          	li	a0,0
    2d3c:	e8f77ee3          	bgeu	a4,a5,2bd8 <fatfs_init+0xc4>
    2d40:	ec1ff06f          	j	2c00 <fatfs_init+0xec>

00002d44 <fl_attach_media>:
    2d44:	000057b7          	lui	a5,0x5
    2d48:	0b87a783          	lw	a5,184(a5) # 50b8 <_filelib_init>
    2d4c:	ff010113          	add	sp,sp,-16
    2d50:	00812423          	sw	s0,8(sp)
    2d54:	00912223          	sw	s1,4(sp)
    2d58:	00112623          	sw	ra,12(sp)
    2d5c:	00050493          	mv	s1,a0
    2d60:	00058413          	mv	s0,a1
    2d64:	00079663          	bnez	a5,2d70 <fl_attach_media+0x2c>
    2d68:	fffff097          	auipc	ra,0xfffff
    2d6c:	148080e7          	jalr	328(ra) # 1eb0 <fl_init>
    2d70:	00009537          	lui	a0,0x9
    2d74:	39450793          	add	a5,a0,916 # 9394 <_fs>
    2d78:	39450513          	add	a0,a0,916
    2d7c:	0297aa23          	sw	s1,52(a5)
    2d80:	0287ac23          	sw	s0,56(a5)
    2d84:	00000097          	auipc	ra,0x0
    2d88:	d90080e7          	jalr	-624(ra) # 2b14 <fatfs_init>
    2d8c:	00051863          	bnez	a0,2d9c <fl_attach_media+0x58>
    2d90:	000057b7          	lui	a5,0x5
    2d94:	00100713          	li	a4,1
    2d98:	0ae7aa23          	sw	a4,180(a5) # 50b4 <_filelib_valid>
    2d9c:	00c12083          	lw	ra,12(sp)
    2da0:	00812403          	lw	s0,8(sp)
    2da4:	00412483          	lw	s1,4(sp)
    2da8:	01010113          	add	sp,sp,16
    2dac:	00008067          	ret

00002db0 <fatfs_fat_purge>:
    2db0:	ff010113          	add	sp,sp,-16
    2db4:	00812423          	sw	s0,8(sp)
    2db8:	25452403          	lw	s0,596(a0)
    2dbc:	00912223          	sw	s1,4(sp)
    2dc0:	00112623          	sw	ra,12(sp)
    2dc4:	00050493          	mv	s1,a0
    2dc8:	00041663          	bnez	s0,2dd4 <fatfs_fat_purge+0x24>
    2dcc:	00100513          	li	a0,1
    2dd0:	0280006f          	j	2df8 <fatfs_fat_purge+0x48>
    2dd4:	20442783          	lw	a5,516(s0)
    2dd8:	00079663          	bnez	a5,2de4 <fatfs_fat_purge+0x34>
    2ddc:	20c42403          	lw	s0,524(s0)
    2de0:	fe9ff06f          	j	2dc8 <fatfs_fat_purge+0x18>
    2de4:	00040593          	mv	a1,s0
    2de8:	00048513          	mv	a0,s1
    2dec:	fffff097          	auipc	ra,0xfffff
    2df0:	d5c080e7          	jalr	-676(ra) # 1b48 <fatfs_fat_writeback>
    2df4:	fe0514e3          	bnez	a0,2ddc <fatfs_fat_purge+0x2c>
    2df8:	00c12083          	lw	ra,12(sp)
    2dfc:	00812403          	lw	s0,8(sp)
    2e00:	00412483          	lw	s1,4(sp)
    2e04:	01010113          	add	sp,sp,16
    2e08:	00008067          	ret

00002e0c <fatfs_find_next_cluster>:
    2e0c:	ff010113          	add	sp,sp,-16
    2e10:	00812423          	sw	s0,8(sp)
    2e14:	01212023          	sw	s2,0(sp)
    2e18:	00112623          	sw	ra,12(sp)
    2e1c:	00912223          	sw	s1,4(sp)
    2e20:	00050913          	mv	s2,a0
    2e24:	00200413          	li	s0,2
    2e28:	00058463          	beqz	a1,2e30 <fatfs_find_next_cluster+0x24>
    2e2c:	00058413          	mv	s0,a1
    2e30:	03092783          	lw	a5,48(s2)
    2e34:	00745493          	srl	s1,s0,0x7
    2e38:	00079463          	bnez	a5,2e40 <fatfs_find_next_cluster+0x34>
    2e3c:	00845493          	srl	s1,s0,0x8
    2e40:	01492583          	lw	a1,20(s2)
    2e44:	00090513          	mv	a0,s2
    2e48:	00b485b3          	add	a1,s1,a1
    2e4c:	fffff097          	auipc	ra,0xfffff
    2e50:	d7c080e7          	jalr	-644(ra) # 1bc8 <fatfs_fat_read_sector>
    2e54:	00050793          	mv	a5,a0
    2e58:	fff00513          	li	a0,-1
    2e5c:	04078a63          	beqz	a5,2eb0 <fatfs_find_next_cluster+0xa4>
    2e60:	03092703          	lw	a4,48(s2)
    2e64:	2087a783          	lw	a5,520(a5)
    2e68:	06071063          	bnez	a4,2ec8 <fatfs_find_next_cluster+0xbc>
    2e6c:	00849493          	sll	s1,s1,0x8
    2e70:	40940433          	sub	s0,s0,s1
    2e74:	00010737          	lui	a4,0x10
    2e78:	00141413          	sll	s0,s0,0x1
    2e7c:	fff70713          	add	a4,a4,-1 # ffff <_files+0x6803>
    2e80:	00e47433          	and	s0,s0,a4
    2e84:	008787b3          	add	a5,a5,s0
    2e88:	0017c503          	lbu	a0,1(a5)
    2e8c:	0007c783          	lbu	a5,0(a5)
    2e90:	00851513          	sll	a0,a0,0x8
    2e94:	00f50533          	add	a0,a0,a5
    2e98:	ffff07b7          	lui	a5,0xffff0
    2e9c:	00878793          	add	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2ea0:	00f507b3          	add	a5,a0,a5
    2ea4:	00700713          	li	a4,7
    2ea8:	00f76463          	bltu	a4,a5,2eb0 <fatfs_find_next_cluster+0xa4>
    2eac:	fff00513          	li	a0,-1
    2eb0:	00c12083          	lw	ra,12(sp)
    2eb4:	00812403          	lw	s0,8(sp)
    2eb8:	00412483          	lw	s1,4(sp)
    2ebc:	00012903          	lw	s2,0(sp)
    2ec0:	01010113          	add	sp,sp,16
    2ec4:	00008067          	ret
    2ec8:	00749493          	sll	s1,s1,0x7
    2ecc:	40940433          	sub	s0,s0,s1
    2ed0:	00010737          	lui	a4,0x10
    2ed4:	fff70713          	add	a4,a4,-1 # ffff <_files+0x6803>
    2ed8:	00241413          	sll	s0,s0,0x2
    2edc:	00e47433          	and	s0,s0,a4
    2ee0:	008787b3          	add	a5,a5,s0
    2ee4:	0037c503          	lbu	a0,3(a5)
    2ee8:	0027c703          	lbu	a4,2(a5)
    2eec:	01851513          	sll	a0,a0,0x18
    2ef0:	01071713          	sll	a4,a4,0x10
    2ef4:	00e50533          	add	a0,a0,a4
    2ef8:	0007c703          	lbu	a4,0(a5)
    2efc:	0017c783          	lbu	a5,1(a5)
    2f00:	00e50533          	add	a0,a0,a4
    2f04:	00879793          	sll	a5,a5,0x8
    2f08:	00f50533          	add	a0,a0,a5
    2f0c:	00451513          	sll	a0,a0,0x4
    2f10:	00455513          	srl	a0,a0,0x4
    2f14:	f00007b7          	lui	a5,0xf0000
    2f18:	f85ff06f          	j	2e9c <fatfs_find_next_cluster+0x90>

00002f1c <fatfs_sector_reader>:
    2f1c:	03052783          	lw	a5,48(a0)
    2f20:	fd010113          	add	sp,sp,-48
    2f24:	02812423          	sw	s0,40(sp)
    2f28:	03212023          	sw	s2,32(sp)
    2f2c:	01312e23          	sw	s3,28(sp)
    2f30:	02112623          	sw	ra,44(sp)
    2f34:	02912223          	sw	s1,36(sp)
    2f38:	01412c23          	sw	s4,24(sp)
    2f3c:	01512a23          	sw	s5,20(sp)
    2f40:	00f5e7b3          	or	a5,a1,a5
    2f44:	00050413          	mv	s0,a0
    2f48:	00060913          	mv	s2,a2
    2f4c:	00068993          	mv	s3,a3
    2f50:	06079c63          	bnez	a5,2fc8 <fatfs_sector_reader+0xac>
    2f54:	01052783          	lw	a5,16(a0)
    2f58:	02f66663          	bltu	a2,a5,2f84 <fatfs_sector_reader+0x68>
    2f5c:	00000513          	li	a0,0
    2f60:	02c12083          	lw	ra,44(sp)
    2f64:	02812403          	lw	s0,40(sp)
    2f68:	02412483          	lw	s1,36(sp)
    2f6c:	02012903          	lw	s2,32(sp)
    2f70:	01c12983          	lw	s3,28(sp)
    2f74:	01812a03          	lw	s4,24(sp)
    2f78:	01412a83          	lw	s5,20(sp)
    2f7c:	03010113          	add	sp,sp,48
    2f80:	00008067          	ret
    2f84:	01c52503          	lw	a0,28(a0)
    2f88:	00c42783          	lw	a5,12(s0)
    2f8c:	00f50533          	add	a0,a0,a5
    2f90:	01250533          	add	a0,a0,s2
    2f94:	0a098263          	beqz	s3,3038 <fatfs_sector_reader+0x11c>
    2f98:	03442783          	lw	a5,52(s0)
    2f9c:	00100613          	li	a2,1
    2fa0:	00098593          	mv	a1,s3
    2fa4:	02812403          	lw	s0,40(sp)
    2fa8:	02c12083          	lw	ra,44(sp)
    2fac:	02412483          	lw	s1,36(sp)
    2fb0:	02012903          	lw	s2,32(sp)
    2fb4:	01c12983          	lw	s3,28(sp)
    2fb8:	01812a03          	lw	s4,24(sp)
    2fbc:	01412a83          	lw	s5,20(sp)
    2fc0:	03010113          	add	sp,sp,48
    2fc4:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2fc8:	00058493          	mv	s1,a1
    2fcc:	00054583          	lbu	a1,0(a0)
    2fd0:	00060513          	mv	a0,a2
    2fd4:	00000a93          	li	s5,0
    2fd8:	00b12623          	sw	a1,12(sp)
    2fdc:	ffffe097          	auipc	ra,0xffffe
    2fe0:	240080e7          	jalr	576(ra) # 121c <__udivsi3>
    2fe4:	00c12583          	lw	a1,12(sp)
    2fe8:	00050a13          	mv	s4,a0
    2fec:	00090513          	mv	a0,s2
    2ff0:	ffffe097          	auipc	ra,0xffffe
    2ff4:	274080e7          	jalr	628(ra) # 1264 <__umodsi3>
    2ff8:	00050913          	mv	s2,a0
    2ffc:	034a9063          	bne	s5,s4,301c <fatfs_sector_reader+0x100>
    3000:	fff00793          	li	a5,-1
    3004:	f4f48ce3          	beq	s1,a5,2f5c <fatfs_sector_reader+0x40>
    3008:	00048593          	mv	a1,s1
    300c:	00040513          	mv	a0,s0
    3010:	fffff097          	auipc	ra,0xfffff
    3014:	d64080e7          	jalr	-668(ra) # 1d74 <fatfs_lba_of_cluster>
    3018:	f79ff06f          	j	2f90 <fatfs_sector_reader+0x74>
    301c:	00048593          	mv	a1,s1
    3020:	00040513          	mv	a0,s0
    3024:	00000097          	auipc	ra,0x0
    3028:	de8080e7          	jalr	-536(ra) # 2e0c <fatfs_find_next_cluster>
    302c:	00050493          	mv	s1,a0
    3030:	001a8a93          	add	s5,s5,1
    3034:	fc9ff06f          	j	2ffc <fatfs_sector_reader+0xe0>
    3038:	24442783          	lw	a5,580(s0)
    303c:	00a78c63          	beq	a5,a0,3054 <fatfs_sector_reader+0x138>
    3040:	03442783          	lw	a5,52(s0)
    3044:	24a42223          	sw	a0,580(s0)
    3048:	00100613          	li	a2,1
    304c:	04440593          	add	a1,s0,68
    3050:	f55ff06f          	j	2fa4 <fatfs_sector_reader+0x88>
    3054:	00100513          	li	a0,1
    3058:	f09ff06f          	j	2f60 <fatfs_sector_reader+0x44>

0000305c <fatfs_get_file_entry>:
    305c:	eb010113          	add	sp,sp,-336
    3060:	14812423          	sw	s0,328(sp)
    3064:	01810413          	add	s0,sp,24
    3068:	14912223          	sw	s1,324(sp)
    306c:	15212023          	sw	s2,320(sp)
    3070:	13312e23          	sw	s3,316(sp)
    3074:	13412c23          	sw	s4,312(sp)
    3078:	13512a23          	sw	s5,308(sp)
    307c:	13612823          	sw	s6,304(sp)
    3080:	14112623          	sw	ra,332(sp)
    3084:	13712623          	sw	s7,300(sp)
    3088:	13812423          	sw	s8,296(sp)
    308c:	13912223          	sw	s9,292(sp)
    3090:	13a12023          	sw	s10,288(sp)
    3094:	00050493          	mv	s1,a0
    3098:	00058a93          	mv	s5,a1
    309c:	00060913          	mv	s2,a2
    30a0:	00068993          	mv	s3,a3
    30a4:	10010ea3          	sb	zero,285(sp)
    30a8:	11c10a13          	add	s4,sp,284
    30ac:	00040b13          	mv	s6,s0
    30b0:	00040513          	mv	a0,s0
    30b4:	00d00613          	li	a2,13
    30b8:	00000593          	li	a1,0
    30bc:	00d40413          	add	s0,s0,13
    30c0:	ffffe097          	auipc	ra,0xffffe
    30c4:	208080e7          	jalr	520(ra) # 12c8 <memset>
    30c8:	ff4414e3          	bne	s0,s4,30b0 <fatfs_get_file_entry+0x54>
    30cc:	00000a13          	li	s4,0
    30d0:	24448c13          	add	s8,s1,580
    30d4:	00800c93          	li	s9,8
    30d8:	02000b93          	li	s7,32
    30dc:	02e00d13          	li	s10,46
    30e0:	00000693          	li	a3,0
    30e4:	000a0613          	mv	a2,s4
    30e8:	000a8593          	mv	a1,s5
    30ec:	00048513          	mv	a0,s1
    30f0:	00000097          	auipc	ra,0x0
    30f4:	e2c080e7          	jalr	-468(ra) # 2f1c <fatfs_sector_reader>
    30f8:	14050e63          	beqz	a0,3254 <fatfs_get_file_entry+0x1f8>
    30fc:	04448413          	add	s0,s1,68
    3100:	00040513          	mv	a0,s0
    3104:	fffff097          	auipc	ra,0xfffff
    3108:	f2c080e7          	jalr	-212(ra) # 2030 <fatfs_entry_lfn_text>
    310c:	02050263          	beqz	a0,3130 <fatfs_get_file_entry+0xd4>
    3110:	00040593          	mv	a1,s0
    3114:	000b0513          	mv	a0,s6
    3118:	fffff097          	auipc	ra,0xfffff
    311c:	e10080e7          	jalr	-496(ra) # 1f28 <fatfs_lfn_cache_entry>
    3120:	02040413          	add	s0,s0,32
    3124:	fc8c1ee3          	bne	s8,s0,3100 <fatfs_get_file_entry+0xa4>
    3128:	001a0a13          	add	s4,s4,1
    312c:	fb5ff06f          	j	30e0 <fatfs_get_file_entry+0x84>
    3130:	00040513          	mv	a0,s0
    3134:	fffff097          	auipc	ra,0xfffff
    3138:	f10080e7          	jalr	-240(ra) # 2044 <fatfs_entry_lfn_invalid>
    313c:	00050663          	beqz	a0,3148 <fatfs_get_file_entry+0xec>
    3140:	10010ea3          	sb	zero,285(sp)
    3144:	fddff06f          	j	3120 <fatfs_get_file_entry+0xc4>
    3148:	00040593          	mv	a1,s0
    314c:	000b0513          	mv	a0,s6
    3150:	fffff097          	auipc	ra,0xfffff
    3154:	f2c080e7          	jalr	-212(ra) # 207c <fatfs_entry_lfn_exists>
    3158:	06050863          	beqz	a0,31c8 <fatfs_get_file_entry+0x16c>
    315c:	000b0513          	mv	a0,s6
    3160:	fffff097          	auipc	ra,0xfffff
    3164:	e94080e7          	jalr	-364(ra) # 1ff4 <fatfs_lfn_cache_get>
    3168:	00090593          	mv	a1,s2
    316c:	fffff097          	auipc	ra,0xfffff
    3170:	6f8080e7          	jalr	1784(ra) # 2864 <fatfs_compare_names>
    3174:	fc0506e3          	beqz	a0,3140 <fatfs_get_file_entry+0xe4>
    3178:	02000613          	li	a2,32
    317c:	00040593          	mv	a1,s0
    3180:	00098513          	mv	a0,s3
    3184:	ffffe097          	auipc	ra,0xffffe
    3188:	160080e7          	jalr	352(ra) # 12e4 <memcpy>
    318c:	00100513          	li	a0,1
    3190:	14c12083          	lw	ra,332(sp)
    3194:	14812403          	lw	s0,328(sp)
    3198:	14412483          	lw	s1,324(sp)
    319c:	14012903          	lw	s2,320(sp)
    31a0:	13c12983          	lw	s3,316(sp)
    31a4:	13812a03          	lw	s4,312(sp)
    31a8:	13412a83          	lw	s5,308(sp)
    31ac:	13012b03          	lw	s6,304(sp)
    31b0:	12c12b83          	lw	s7,300(sp)
    31b4:	12812c03          	lw	s8,296(sp)
    31b8:	12412c83          	lw	s9,292(sp)
    31bc:	12012d03          	lw	s10,288(sp)
    31c0:	15010113          	add	sp,sp,336
    31c4:	00008067          	ret
    31c8:	00040513          	mv	a0,s0
    31cc:	fffff097          	auipc	ra,0xfffff
    31d0:	ef8080e7          	jalr	-264(ra) # 20c4 <fatfs_entry_sfn_only>
    31d4:	f40506e3          	beqz	a0,3120 <fatfs_get_file_entry+0xc4>
    31d8:	00d00613          	li	a2,13
    31dc:	00000593          	li	a1,0
    31e0:	00810513          	add	a0,sp,8
    31e4:	ffffe097          	auipc	ra,0xffffe
    31e8:	0e4080e7          	jalr	228(ra) # 12c8 <memset>
    31ec:	00000793          	li	a5,0
    31f0:	00f406b3          	add	a3,s0,a5
    31f4:	0006c683          	lbu	a3,0(a3)
    31f8:	00810713          	add	a4,sp,8
    31fc:	00f70733          	add	a4,a4,a5
    3200:	00d70023          	sb	a3,0(a4)
    3204:	00178793          	add	a5,a5,1
    3208:	ff9794e3          	bne	a5,s9,31f0 <fatfs_get_file_entry+0x194>
    320c:	00844703          	lbu	a4,8(s0)
    3210:	00944683          	lbu	a3,9(s0)
    3214:	00a44783          	lbu	a5,10(s0)
    3218:	00e108a3          	sb	a4,17(sp)
    321c:	00d10923          	sb	a3,18(sp)
    3220:	00f109a3          	sb	a5,19(sp)
    3224:	03768063          	beq	a3,s7,3244 <fatfs_get_file_entry+0x1e8>
    3228:	00814703          	lbu	a4,8(sp)
    322c:	02e00793          	li	a5,46
    3230:	01a70e63          	beq	a4,s10,324c <fatfs_get_file_entry+0x1f0>
    3234:	00f10823          	sb	a5,16(sp)
    3238:	00090593          	mv	a1,s2
    323c:	00810513          	add	a0,sp,8
    3240:	f2dff06f          	j	316c <fatfs_get_file_entry+0x110>
    3244:	ff7792e3          	bne	a5,s7,3228 <fatfs_get_file_entry+0x1cc>
    3248:	ff7710e3          	bne	a4,s7,3228 <fatfs_get_file_entry+0x1cc>
    324c:	02000793          	li	a5,32
    3250:	fe5ff06f          	j	3234 <fatfs_get_file_entry+0x1d8>
    3254:	00000513          	li	a0,0
    3258:	f39ff06f          	j	3190 <fatfs_get_file_entry+0x134>

0000325c <_open_directory>:
    325c:	eb010113          	add	sp,sp,-336
    3260:	13512a23          	sw	s5,308(sp)
    3264:	00009ab7          	lui	s5,0x9
    3268:	394a8793          	add	a5,s5,916 # 9394 <_fs>
    326c:	14812423          	sw	s0,328(sp)
    3270:	14912223          	sw	s1,324(sp)
    3274:	15212023          	sw	s2,320(sp)
    3278:	13312e23          	sw	s3,316(sp)
    327c:	13412c23          	sw	s4,312(sp)
    3280:	13612823          	sw	s6,304(sp)
    3284:	0087a403          	lw	s0,8(a5)
    3288:	14112623          	sw	ra,332(sp)
    328c:	00050a13          	mv	s4,a0
    3290:	00058913          	mv	s2,a1
    3294:	fffff097          	auipc	ra,0xfffff
    3298:	380080e7          	jalr	896(ra) # 2614 <fatfs_total_path_levels>
    329c:	00050993          	mv	s3,a0
    32a0:	00000493          	li	s1,0
    32a4:	fff00b13          	li	s6,-1
    32a8:	0099d863          	bge	s3,s1,32b8 <_open_directory+0x5c>
    32ac:	00892023          	sw	s0,0(s2)
    32b0:	00100513          	li	a0,1
    32b4:	0240006f          	j	32d8 <_open_directory+0x7c>
    32b8:	10400693          	li	a3,260
    32bc:	02c10613          	add	a2,sp,44
    32c0:	00048593          	mv	a1,s1
    32c4:	000a0513          	mv	a0,s4
    32c8:	fffff097          	auipc	ra,0xfffff
    32cc:	3c0080e7          	jalr	960(ra) # 2688 <fatfs_get_substring>
    32d0:	03651863          	bne	a0,s6,3300 <_open_directory+0xa4>
    32d4:	00000513          	li	a0,0
    32d8:	14c12083          	lw	ra,332(sp)
    32dc:	14812403          	lw	s0,328(sp)
    32e0:	14412483          	lw	s1,324(sp)
    32e4:	14012903          	lw	s2,320(sp)
    32e8:	13c12983          	lw	s3,316(sp)
    32ec:	13812a03          	lw	s4,312(sp)
    32f0:	13412a83          	lw	s5,308(sp)
    32f4:	13012b03          	lw	s6,304(sp)
    32f8:	15010113          	add	sp,sp,336
    32fc:	00008067          	ret
    3300:	00c10693          	add	a3,sp,12
    3304:	02c10613          	add	a2,sp,44
    3308:	00040593          	mv	a1,s0
    330c:	394a8513          	add	a0,s5,916
    3310:	00000097          	auipc	ra,0x0
    3314:	d4c080e7          	jalr	-692(ra) # 305c <fatfs_get_file_entry>
    3318:	fa050ee3          	beqz	a0,32d4 <_open_directory+0x78>
    331c:	00c10513          	add	a0,sp,12
    3320:	fffff097          	auipc	ra,0xfffff
    3324:	de0080e7          	jalr	-544(ra) # 2100 <fatfs_entry_is_dir>
    3328:	fa0506e3          	beqz	a0,32d4 <_open_directory+0x78>
    332c:	02015403          	lhu	s0,32(sp)
    3330:	02615783          	lhu	a5,38(sp)
    3334:	00148493          	add	s1,s1,1
    3338:	01041413          	sll	s0,s0,0x10
    333c:	00f40433          	add	s0,s0,a5
    3340:	f69ff06f          	j	32a8 <_open_directory+0x4c>

00003344 <fl_opendir>:
    3344:	fe010113          	add	sp,sp,-32
    3348:	fff00793          	li	a5,-1
    334c:	00f12623          	sw	a5,12(sp)
    3350:	000057b7          	lui	a5,0x5
    3354:	0b87a783          	lw	a5,184(a5) # 50b8 <_filelib_init>
    3358:	00812c23          	sw	s0,24(sp)
    335c:	01212823          	sw	s2,16(sp)
    3360:	00112e23          	sw	ra,28(sp)
    3364:	00912a23          	sw	s1,20(sp)
    3368:	00050913          	mv	s2,a0
    336c:	00058413          	mv	s0,a1
    3370:	00079663          	bnez	a5,337c <fl_opendir+0x38>
    3374:	fffff097          	auipc	ra,0xfffff
    3378:	b3c080e7          	jalr	-1220(ra) # 1eb0 <fl_init>
    337c:	000094b7          	lui	s1,0x9
    3380:	39448793          	add	a5,s1,916 # 9394 <_fs>
    3384:	03c7a783          	lw	a5,60(a5)
    3388:	39448493          	add	s1,s1,916
    338c:	00078463          	beqz	a5,3394 <fl_opendir+0x50>
    3390:	000780e7          	jalr	a5
    3394:	00090513          	mv	a0,s2
    3398:	fffff097          	auipc	ra,0xfffff
    339c:	27c080e7          	jalr	636(ra) # 2614 <fatfs_total_path_levels>
    33a0:	fff00793          	li	a5,-1
    33a4:	02f51063          	bne	a0,a5,33c4 <fl_opendir+0x80>
    33a8:	0084a783          	lw	a5,8(s1)
    33ac:	00f12623          	sw	a5,12(sp)
    33b0:	00c12783          	lw	a5,12(sp)
    33b4:	00042023          	sw	zero,0(s0)
    33b8:	00040423          	sb	zero,8(s0)
    33bc:	00f42223          	sw	a5,4(s0)
    33c0:	0180006f          	j	33d8 <fl_opendir+0x94>
    33c4:	00c10593          	add	a1,sp,12
    33c8:	00090513          	mv	a0,s2
    33cc:	00000097          	auipc	ra,0x0
    33d0:	e90080e7          	jalr	-368(ra) # 325c <_open_directory>
    33d4:	fc051ee3          	bnez	a0,33b0 <fl_opendir+0x6c>
    33d8:	0404a783          	lw	a5,64(s1)
    33dc:	00078463          	beqz	a5,33e4 <fl_opendir+0xa0>
    33e0:	000780e7          	jalr	a5
    33e4:	00c12703          	lw	a4,12(sp)
    33e8:	fff00793          	li	a5,-1
    33ec:	00f71463          	bne	a4,a5,33f4 <fl_opendir+0xb0>
    33f0:	00000413          	li	s0,0
    33f4:	01c12083          	lw	ra,28(sp)
    33f8:	00040513          	mv	a0,s0
    33fc:	01812403          	lw	s0,24(sp)
    3400:	01412483          	lw	s1,20(sp)
    3404:	01012903          	lw	s2,16(sp)
    3408:	02010113          	add	sp,sp,32
    340c:	00008067          	ret

00003410 <_open_file>:
    3410:	fc010113          	add	sp,sp,-64
    3414:	03312623          	sw	s3,44(sp)
    3418:	02112e23          	sw	ra,60(sp)
    341c:	02812c23          	sw	s0,56(sp)
    3420:	02912a23          	sw	s1,52(sp)
    3424:	03212823          	sw	s2,48(sp)
    3428:	00050993          	mv	s3,a0
    342c:	fffff097          	auipc	ra,0xfffff
    3430:	88c080e7          	jalr	-1908(ra) # 1cb8 <_allocate_file>
    3434:	06050463          	beqz	a0,349c <_open_file+0x8c>
    3438:	01450913          	add	s2,a0,20
    343c:	00050413          	mv	s0,a0
    3440:	10400613          	li	a2,260
    3444:	00000593          	li	a1,0
    3448:	00090513          	mv	a0,s2
    344c:	ffffe097          	auipc	ra,0xffffe
    3450:	e7c080e7          	jalr	-388(ra) # 12c8 <memset>
    3454:	11840493          	add	s1,s0,280
    3458:	10400613          	li	a2,260
    345c:	00000593          	li	a1,0
    3460:	00048513          	mv	a0,s1
    3464:	ffffe097          	auipc	ra,0xffffe
    3468:	e64080e7          	jalr	-412(ra) # 12c8 <memset>
    346c:	10400713          	li	a4,260
    3470:	00048693          	mv	a3,s1
    3474:	10400613          	li	a2,260
    3478:	00090593          	mv	a1,s2
    347c:	00098513          	mv	a0,s3
    3480:	fffff097          	auipc	ra,0xfffff
    3484:	2fc080e7          	jalr	764(ra) # 277c <fatfs_split_path>
    3488:	fff00793          	li	a5,-1
    348c:	02f51a63          	bne	a0,a5,34c0 <_open_file+0xb0>
    3490:	00040513          	mv	a0,s0
    3494:	fffff097          	auipc	ra,0xfffff
    3498:	898080e7          	jalr	-1896(ra) # 1d2c <_free_file>
    349c:	00000413          	li	s0,0
    34a0:	03c12083          	lw	ra,60(sp)
    34a4:	00040513          	mv	a0,s0
    34a8:	03812403          	lw	s0,56(sp)
    34ac:	03412483          	lw	s1,52(sp)
    34b0:	03012903          	lw	s2,48(sp)
    34b4:	02c12983          	lw	s3,44(sp)
    34b8:	04010113          	add	sp,sp,64
    34bc:	00008067          	ret
    34c0:	00040513          	mv	a0,s0
    34c4:	fffff097          	auipc	ra,0xfffff
    34c8:	50c080e7          	jalr	1292(ra) # 29d0 <_check_file_open>
    34cc:	fc0512e3          	bnez	a0,3490 <_open_file+0x80>
    34d0:	01444783          	lbu	a5,20(s0)
    34d4:	08079e63          	bnez	a5,3570 <_open_file+0x160>
    34d8:	000097b7          	lui	a5,0x9
    34dc:	39c7a783          	lw	a5,924(a5) # 939c <_fs+0x8>
    34e0:	00f42023          	sw	a5,0(s0)
    34e4:	00042583          	lw	a1,0(s0)
    34e8:	00048613          	mv	a2,s1
    34ec:	000094b7          	lui	s1,0x9
    34f0:	00010693          	mv	a3,sp
    34f4:	39448513          	add	a0,s1,916 # 9394 <_fs>
    34f8:	00000097          	auipc	ra,0x0
    34fc:	b64080e7          	jalr	-1180(ra) # 305c <fatfs_get_file_entry>
    3500:	f80508e3          	beqz	a0,3490 <_open_file+0x80>
    3504:	00010513          	mv	a0,sp
    3508:	fffff097          	auipc	ra,0xfffff
    350c:	c08080e7          	jalr	-1016(ra) # 2110 <fatfs_entry_is_file>
    3510:	f80500e3          	beqz	a0,3490 <_open_file+0x80>
    3514:	00b00613          	li	a2,11
    3518:	00010593          	mv	a1,sp
    351c:	21c40513          	add	a0,s0,540
    3520:	ffffe097          	auipc	ra,0xffffe
    3524:	dc4080e7          	jalr	-572(ra) # 12e4 <memcpy>
    3528:	01c12783          	lw	a5,28(sp)
    352c:	01a15703          	lhu	a4,26(sp)
    3530:	00042423          	sw	zero,8(s0)
    3534:	00f42623          	sw	a5,12(s0)
    3538:	01415783          	lhu	a5,20(sp)
    353c:	42042a23          	sw	zero,1076(s0)
    3540:	00042823          	sw	zero,16(s0)
    3544:	01079793          	sll	a5,a5,0x10
    3548:	00e787b3          	add	a5,a5,a4
    354c:	00f42223          	sw	a5,4(s0)
    3550:	fff00793          	li	a5,-1
    3554:	42f42823          	sw	a5,1072(s0)
    3558:	22f42423          	sw	a5,552(s0)
    355c:	22f42623          	sw	a5,556(s0)
    3560:	39448513          	add	a0,s1,916
    3564:	00000097          	auipc	ra,0x0
    3568:	84c080e7          	jalr	-1972(ra) # 2db0 <fatfs_fat_purge>
    356c:	f35ff06f          	j	34a0 <_open_file+0x90>
    3570:	00040593          	mv	a1,s0
    3574:	00090513          	mv	a0,s2
    3578:	00000097          	auipc	ra,0x0
    357c:	ce4080e7          	jalr	-796(ra) # 325c <_open_directory>
    3580:	f60512e3          	bnez	a0,34e4 <_open_file+0xd4>
    3584:	f0dff06f          	j	3490 <_open_file+0x80>

00003588 <fatfs_sfn_exists>:
    3588:	fe010113          	add	sp,sp,-32
    358c:	00912a23          	sw	s1,20(sp)
    3590:	01212823          	sw	s2,16(sp)
    3594:	01312623          	sw	s3,12(sp)
    3598:	01412423          	sw	s4,8(sp)
    359c:	01512223          	sw	s5,4(sp)
    35a0:	00112e23          	sw	ra,28(sp)
    35a4:	00812c23          	sw	s0,24(sp)
    35a8:	00050493          	mv	s1,a0
    35ac:	00058993          	mv	s3,a1
    35b0:	00060a13          	mv	s4,a2
    35b4:	00000913          	li	s2,0
    35b8:	24450a93          	add	s5,a0,580
    35bc:	00000693          	li	a3,0
    35c0:	00090613          	mv	a2,s2
    35c4:	00098593          	mv	a1,s3
    35c8:	00048513          	mv	a0,s1
    35cc:	00000097          	auipc	ra,0x0
    35d0:	950080e7          	jalr	-1712(ra) # 2f1c <fatfs_sector_reader>
    35d4:	06050263          	beqz	a0,3638 <fatfs_sfn_exists+0xb0>
    35d8:	04448413          	add	s0,s1,68
    35dc:	00040513          	mv	a0,s0
    35e0:	fffff097          	auipc	ra,0xfffff
    35e4:	a50080e7          	jalr	-1456(ra) # 2030 <fatfs_entry_lfn_text>
    35e8:	02051e63          	bnez	a0,3624 <fatfs_sfn_exists+0x9c>
    35ec:	00040513          	mv	a0,s0
    35f0:	fffff097          	auipc	ra,0xfffff
    35f4:	a54080e7          	jalr	-1452(ra) # 2044 <fatfs_entry_lfn_invalid>
    35f8:	02051663          	bnez	a0,3624 <fatfs_sfn_exists+0x9c>
    35fc:	00040513          	mv	a0,s0
    3600:	fffff097          	auipc	ra,0xfffff
    3604:	ac4080e7          	jalr	-1340(ra) # 20c4 <fatfs_entry_sfn_only>
    3608:	00050e63          	beqz	a0,3624 <fatfs_sfn_exists+0x9c>
    360c:	00b00613          	li	a2,11
    3610:	000a0593          	mv	a1,s4
    3614:	00040513          	mv	a0,s0
    3618:	ffffe097          	auipc	ra,0xffffe
    361c:	d10080e7          	jalr	-752(ra) # 1328 <strncmp>
    3620:	00050a63          	beqz	a0,3634 <fatfs_sfn_exists+0xac>
    3624:	02040413          	add	s0,s0,32
    3628:	fb541ae3          	bne	s0,s5,35dc <fatfs_sfn_exists+0x54>
    362c:	00190913          	add	s2,s2,1
    3630:	f8dff06f          	j	35bc <fatfs_sfn_exists+0x34>
    3634:	00100513          	li	a0,1
    3638:	01c12083          	lw	ra,28(sp)
    363c:	01812403          	lw	s0,24(sp)
    3640:	01412483          	lw	s1,20(sp)
    3644:	01012903          	lw	s2,16(sp)
    3648:	00c12983          	lw	s3,12(sp)
    364c:	00812a03          	lw	s4,8(sp)
    3650:	00412a83          	lw	s5,4(sp)
    3654:	02010113          	add	sp,sp,32
    3658:	00008067          	ret

0000365c <fatfs_update_file_length>:
    365c:	03852783          	lw	a5,56(a0)
    3660:	14078e63          	beqz	a5,37bc <fatfs_update_file_length+0x160>
    3664:	fd010113          	add	sp,sp,-48
    3668:	02912223          	sw	s1,36(sp)
    366c:	03212023          	sw	s2,32(sp)
    3670:	01312e23          	sw	s3,28(sp)
    3674:	01412c23          	sw	s4,24(sp)
    3678:	01512a23          	sw	s5,20(sp)
    367c:	01612823          	sw	s6,16(sp)
    3680:	02112623          	sw	ra,44(sp)
    3684:	02812423          	sw	s0,40(sp)
    3688:	01712623          	sw	s7,12(sp)
    368c:	00050493          	mv	s1,a0
    3690:	00058a13          	mv	s4,a1
    3694:	00060a93          	mv	s5,a2
    3698:	00068913          	mv	s2,a3
    369c:	00000993          	li	s3,0
    36a0:	24450b13          	add	s6,a0,580
    36a4:	00000693          	li	a3,0
    36a8:	00098613          	mv	a2,s3
    36ac:	000a0593          	mv	a1,s4
    36b0:	00048513          	mv	a0,s1
    36b4:	00000097          	auipc	ra,0x0
    36b8:	868080e7          	jalr	-1944(ra) # 2f1c <fatfs_sector_reader>
    36bc:	0c050863          	beqz	a0,378c <fatfs_update_file_length+0x130>
    36c0:	04448413          	add	s0,s1,68
    36c4:	00040b93          	mv	s7,s0
    36c8:	00040513          	mv	a0,s0
    36cc:	fffff097          	auipc	ra,0xfffff
    36d0:	964080e7          	jalr	-1692(ra) # 2030 <fatfs_entry_lfn_text>
    36d4:	0a051463          	bnez	a0,377c <fatfs_update_file_length+0x120>
    36d8:	00040513          	mv	a0,s0
    36dc:	fffff097          	auipc	ra,0xfffff
    36e0:	968080e7          	jalr	-1688(ra) # 2044 <fatfs_entry_lfn_invalid>
    36e4:	08051c63          	bnez	a0,377c <fatfs_update_file_length+0x120>
    36e8:	00040513          	mv	a0,s0
    36ec:	fffff097          	auipc	ra,0xfffff
    36f0:	9d8080e7          	jalr	-1576(ra) # 20c4 <fatfs_entry_sfn_only>
    36f4:	08050463          	beqz	a0,377c <fatfs_update_file_length+0x120>
    36f8:	00b00613          	li	a2,11
    36fc:	000a8593          	mv	a1,s5
    3700:	00040513          	mv	a0,s0
    3704:	ffffe097          	auipc	ra,0xffffe
    3708:	c24080e7          	jalr	-988(ra) # 1328 <strncmp>
    370c:	06051863          	bnez	a0,377c <fatfs_update_file_length+0x120>
    3710:	00895793          	srl	a5,s2,0x8
    3714:	01240e23          	sb	s2,28(s0)
    3718:	00f40ea3          	sb	a5,29(s0)
    371c:	01095793          	srl	a5,s2,0x10
    3720:	01895913          	srl	s2,s2,0x18
    3724:	00f40f23          	sb	a5,30(s0)
    3728:	01240fa3          	sb	s2,31(s0)
    372c:	00040593          	mv	a1,s0
    3730:	02000613          	li	a2,32
    3734:	00040513          	mv	a0,s0
    3738:	ffffe097          	auipc	ra,0xffffe
    373c:	bac080e7          	jalr	-1108(ra) # 12e4 <memcpy>
    3740:	02812403          	lw	s0,40(sp)
    3744:	0384a783          	lw	a5,56(s1)
    3748:	2444a503          	lw	a0,580(s1)
    374c:	02c12083          	lw	ra,44(sp)
    3750:	02412483          	lw	s1,36(sp)
    3754:	02012903          	lw	s2,32(sp)
    3758:	01c12983          	lw	s3,28(sp)
    375c:	01812a03          	lw	s4,24(sp)
    3760:	01412a83          	lw	s5,20(sp)
    3764:	01012b03          	lw	s6,16(sp)
    3768:	000b8593          	mv	a1,s7
    376c:	00c12b83          	lw	s7,12(sp)
    3770:	00100613          	li	a2,1
    3774:	03010113          	add	sp,sp,48
    3778:	00078067          	jr	a5
    377c:	02040413          	add	s0,s0,32
    3780:	f56414e3          	bne	s0,s6,36c8 <fatfs_update_file_length+0x6c>
    3784:	00198993          	add	s3,s3,1
    3788:	f1dff06f          	j	36a4 <fatfs_update_file_length+0x48>
    378c:	02c12083          	lw	ra,44(sp)
    3790:	02812403          	lw	s0,40(sp)
    3794:	02412483          	lw	s1,36(sp)
    3798:	02012903          	lw	s2,32(sp)
    379c:	01c12983          	lw	s3,28(sp)
    37a0:	01812a03          	lw	s4,24(sp)
    37a4:	01412a83          	lw	s5,20(sp)
    37a8:	01012b03          	lw	s6,16(sp)
    37ac:	00c12b83          	lw	s7,12(sp)
    37b0:	00000513          	li	a0,0
    37b4:	03010113          	add	sp,sp,48
    37b8:	00008067          	ret
    37bc:	00000513          	li	a0,0
    37c0:	00008067          	ret

000037c4 <fatfs_list_directory_next>:
    37c4:	ec010113          	add	sp,sp,-320
    37c8:	13212823          	sw	s2,304(sp)
    37cc:	13312623          	sw	s3,300(sp)
    37d0:	13412423          	sw	s4,296(sp)
    37d4:	13512223          	sw	s5,292(sp)
    37d8:	12112e23          	sw	ra,316(sp)
    37dc:	12812c23          	sw	s0,312(sp)
    37e0:	12912a23          	sw	s1,308(sp)
    37e4:	00050a13          	mv	s4,a0
    37e8:	00058913          	mv	s2,a1
    37ec:	00060993          	mv	s3,a2
    37f0:	10010ea3          	sb	zero,285(sp)
    37f4:	00f00a93          	li	s5,15
    37f8:	00092603          	lw	a2,0(s2)
    37fc:	00492583          	lw	a1,4(s2)
    3800:	00000693          	li	a3,0
    3804:	000a0513          	mv	a0,s4
    3808:	fffff097          	auipc	ra,0xfffff
    380c:	714080e7          	jalr	1812(ra) # 2f1c <fatfs_sector_reader>
    3810:	12050263          	beqz	a0,3934 <fatfs_list_directory_next+0x170>
    3814:	00894483          	lbu	s1,8(s2)
    3818:	00549413          	sll	s0,s1,0x5
    381c:	04440413          	add	s0,s0,68
    3820:	008a0433          	add	s0,s4,s0
    3824:	009afc63          	bgeu	s5,s1,383c <fatfs_list_directory_next+0x78>
    3828:	00092783          	lw	a5,0(s2)
    382c:	00090423          	sb	zero,8(s2)
    3830:	00178793          	add	a5,a5,1
    3834:	00f92023          	sw	a5,0(s2)
    3838:	fc1ff06f          	j	37f8 <fatfs_list_directory_next+0x34>
    383c:	00040513          	mv	a0,s0
    3840:	ffffe097          	auipc	ra,0xffffe
    3844:	7f0080e7          	jalr	2032(ra) # 2030 <fatfs_entry_lfn_text>
    3848:	02050263          	beqz	a0,386c <fatfs_list_directory_next+0xa8>
    384c:	00040593          	mv	a1,s0
    3850:	01810513          	add	a0,sp,24
    3854:	ffffe097          	auipc	ra,0xffffe
    3858:	6d4080e7          	jalr	1748(ra) # 1f28 <fatfs_lfn_cache_entry>
    385c:	00148493          	add	s1,s1,1
    3860:	0ff4f493          	zext.b	s1,s1
    3864:	02040413          	add	s0,s0,32
    3868:	fbdff06f          	j	3824 <fatfs_list_directory_next+0x60>
    386c:	00040513          	mv	a0,s0
    3870:	ffffe097          	auipc	ra,0xffffe
    3874:	7d4080e7          	jalr	2004(ra) # 2044 <fatfs_entry_lfn_invalid>
    3878:	00050663          	beqz	a0,3884 <fatfs_list_directory_next+0xc0>
    387c:	10010ea3          	sb	zero,285(sp)
    3880:	fddff06f          	j	385c <fatfs_list_directory_next+0x98>
    3884:	00040593          	mv	a1,s0
    3888:	01810513          	add	a0,sp,24
    388c:	ffffe097          	auipc	ra,0xffffe
    3890:	7f0080e7          	jalr	2032(ra) # 207c <fatfs_entry_lfn_exists>
    3894:	0c050263          	beqz	a0,3958 <fatfs_list_directory_next+0x194>
    3898:	01810513          	add	a0,sp,24
    389c:	ffffe097          	auipc	ra,0xffffe
    38a0:	758080e7          	jalr	1880(ra) # 1ff4 <fatfs_lfn_cache_get>
    38a4:	00050593          	mv	a1,a0
    38a8:	10300613          	li	a2,259
    38ac:	00098513          	mv	a0,s3
    38b0:	ffffe097          	auipc	ra,0xffffe
    38b4:	ab8080e7          	jalr	-1352(ra) # 1368 <strncpy>
    38b8:	00040513          	mv	a0,s0
    38bc:	fffff097          	auipc	ra,0xfffff
    38c0:	844080e7          	jalr	-1980(ra) # 2100 <fatfs_entry_is_dir>
    38c4:	00a03533          	snez	a0,a0
    38c8:	10a98223          	sb	a0,260(s3)
    38cc:	01d44783          	lbu	a5,29(s0)
    38d0:	01c44703          	lbu	a4,28(s0)
    38d4:	00148493          	add	s1,s1,1
    38d8:	00879793          	sll	a5,a5,0x8
    38dc:	00e7e7b3          	or	a5,a5,a4
    38e0:	01e44703          	lbu	a4,30(s0)
    38e4:	0ff4f493          	zext.b	s1,s1
    38e8:	00100513          	li	a0,1
    38ec:	01071713          	sll	a4,a4,0x10
    38f0:	00f76733          	or	a4,a4,a5
    38f4:	01f44783          	lbu	a5,31(s0)
    38f8:	01879793          	sll	a5,a5,0x18
    38fc:	00e7e7b3          	or	a5,a5,a4
    3900:	10f9a623          	sw	a5,268(s3)
    3904:	01544783          	lbu	a5,21(s0)
    3908:	01444703          	lbu	a4,20(s0)
    390c:	01a44683          	lbu	a3,26(s0)
    3910:	00879793          	sll	a5,a5,0x8
    3914:	00e7e7b3          	or	a5,a5,a4
    3918:	01b44703          	lbu	a4,27(s0)
    391c:	01079793          	sll	a5,a5,0x10
    3920:	00871713          	sll	a4,a4,0x8
    3924:	00d76733          	or	a4,a4,a3
    3928:	00e7e7b3          	or	a5,a5,a4
    392c:	10f9a423          	sw	a5,264(s3)
    3930:	00990423          	sb	s1,8(s2)
    3934:	13c12083          	lw	ra,316(sp)
    3938:	13812403          	lw	s0,312(sp)
    393c:	13412483          	lw	s1,308(sp)
    3940:	13012903          	lw	s2,304(sp)
    3944:	12c12983          	lw	s3,300(sp)
    3948:	12812a03          	lw	s4,296(sp)
    394c:	12412a83          	lw	s5,292(sp)
    3950:	14010113          	add	sp,sp,320
    3954:	00008067          	ret
    3958:	00040513          	mv	a0,s0
    395c:	ffffe097          	auipc	ra,0xffffe
    3960:	768080e7          	jalr	1896(ra) # 20c4 <fatfs_entry_sfn_only>
    3964:	ee050ce3          	beqz	a0,385c <fatfs_list_directory_next+0x98>
    3968:	00d00613          	li	a2,13
    396c:	00000593          	li	a1,0
    3970:	00810513          	add	a0,sp,8
    3974:	10010ea3          	sb	zero,285(sp)
    3978:	ffffe097          	auipc	ra,0xffffe
    397c:	950080e7          	jalr	-1712(ra) # 12c8 <memset>
    3980:	00000793          	li	a5,0
    3984:	00800713          	li	a4,8
    3988:	00f40633          	add	a2,s0,a5
    398c:	00064603          	lbu	a2,0(a2)
    3990:	00810693          	add	a3,sp,8
    3994:	00f686b3          	add	a3,a3,a5
    3998:	00c68023          	sb	a2,0(a3)
    399c:	00178793          	add	a5,a5,1
    39a0:	fee794e3          	bne	a5,a4,3988 <fatfs_list_directory_next+0x1c4>
    39a4:	00844683          	lbu	a3,8(s0)
    39a8:	00944703          	lbu	a4,9(s0)
    39ac:	00a44783          	lbu	a5,10(s0)
    39b0:	00d108a3          	sb	a3,17(sp)
    39b4:	00e10923          	sb	a4,18(sp)
    39b8:	02000613          	li	a2,32
    39bc:	00f109a3          	sb	a5,19(sp)
    39c0:	02c70463          	beq	a4,a2,39e8 <fatfs_list_directory_next+0x224>
    39c4:	00814703          	lbu	a4,8(sp)
    39c8:	02e00793          	li	a5,46
    39cc:	02f70263          	beq	a4,a5,39f0 <fatfs_list_directory_next+0x22c>
    39d0:	00810593          	add	a1,sp,8
    39d4:	00098513          	mv	a0,s3
    39d8:	00f10823          	sb	a5,16(sp)
    39dc:	fffff097          	auipc	ra,0xfffff
    39e0:	084080e7          	jalr	132(ra) # 2a60 <fatfs_get_sfn_display_name>
    39e4:	ed5ff06f          	j	38b8 <fatfs_list_directory_next+0xf4>
    39e8:	fce79ee3          	bne	a5,a4,39c4 <fatfs_list_directory_next+0x200>
    39ec:	fcf69ce3          	bne	a3,a5,39c4 <fatfs_list_directory_next+0x200>
    39f0:	02000793          	li	a5,32
    39f4:	fddff06f          	j	39d0 <fatfs_list_directory_next+0x20c>

000039f8 <fl_readdir>:
    39f8:	000057b7          	lui	a5,0x5
    39fc:	0b87a783          	lw	a5,184(a5) # 50b8 <_filelib_init>
    3a00:	fe010113          	add	sp,sp,-32
    3a04:	00912a23          	sw	s1,20(sp)
    3a08:	01212823          	sw	s2,16(sp)
    3a0c:	00112e23          	sw	ra,28(sp)
    3a10:	00812c23          	sw	s0,24(sp)
    3a14:	01312623          	sw	s3,12(sp)
    3a18:	00050493          	mv	s1,a0
    3a1c:	00058913          	mv	s2,a1
    3a20:	00079663          	bnez	a5,3a2c <fl_readdir+0x34>
    3a24:	ffffe097          	auipc	ra,0xffffe
    3a28:	48c080e7          	jalr	1164(ra) # 1eb0 <fl_init>
    3a2c:	00009437          	lui	s0,0x9
    3a30:	39440793          	add	a5,s0,916 # 9394 <_fs>
    3a34:	03c7a783          	lw	a5,60(a5)
    3a38:	39440993          	add	s3,s0,916
    3a3c:	00078463          	beqz	a5,3a44 <fl_readdir+0x4c>
    3a40:	000780e7          	jalr	a5
    3a44:	39440513          	add	a0,s0,916
    3a48:	00090613          	mv	a2,s2
    3a4c:	00048593          	mv	a1,s1
    3a50:	00000097          	auipc	ra,0x0
    3a54:	d74080e7          	jalr	-652(ra) # 37c4 <fatfs_list_directory_next>
    3a58:	0409a783          	lw	a5,64(s3)
    3a5c:	00050413          	mv	s0,a0
    3a60:	00078463          	beqz	a5,3a68 <fl_readdir+0x70>
    3a64:	000780e7          	jalr	a5
    3a68:	01c12083          	lw	ra,28(sp)
    3a6c:	00143513          	seqz	a0,s0
    3a70:	01812403          	lw	s0,24(sp)
    3a74:	01412483          	lw	s1,20(sp)
    3a78:	01012903          	lw	s2,16(sp)
    3a7c:	00c12983          	lw	s3,12(sp)
    3a80:	40a00533          	neg	a0,a0
    3a84:	02010113          	add	sp,sp,32
    3a88:	00008067          	ret

00003a8c <_read_sectors>:
    3a8c:	fd010113          	add	sp,sp,-48
    3a90:	01612823          	sw	s6,16(sp)
    3a94:	00009b37          	lui	s6,0x9
    3a98:	01512a23          	sw	s5,20(sp)
    3a9c:	394b4a83          	lbu	s5,916(s6) # 9394 <_fs>
    3aa0:	01412c23          	sw	s4,24(sp)
    3aa4:	00058a13          	mv	s4,a1
    3aa8:	02912223          	sw	s1,36(sp)
    3aac:	000a8593          	mv	a1,s5
    3ab0:	00050493          	mv	s1,a0
    3ab4:	000a0513          	mv	a0,s4
    3ab8:	02112623          	sw	ra,44(sp)
    3abc:	02812423          	sw	s0,40(sp)
    3ac0:	03212023          	sw	s2,32(sp)
    3ac4:	00068413          	mv	s0,a3
    3ac8:	01712623          	sw	s7,12(sp)
    3acc:	01812423          	sw	s8,8(sp)
    3ad0:	01312e23          	sw	s3,28(sp)
    3ad4:	00060c13          	mv	s8,a2
    3ad8:	ffffd097          	auipc	ra,0xffffd
    3adc:	744080e7          	jalr	1860(ra) # 121c <__udivsi3>
    3ae0:	00050913          	mv	s2,a0
    3ae4:	000a8593          	mv	a1,s5
    3ae8:	000a0513          	mv	a0,s4
    3aec:	ffffd097          	auipc	ra,0xffffd
    3af0:	778080e7          	jalr	1912(ra) # 1264 <__umodsi3>
    3af4:	00a407b3          	add	a5,s0,a0
    3af8:	00050b93          	mv	s7,a0
    3afc:	00fafe63          	bgeu	s5,a5,3b18 <_read_sectors+0x8c>
    3b00:	00090593          	mv	a1,s2
    3b04:	000a8513          	mv	a0,s5
    3b08:	ffffe097          	auipc	ra,0xffffe
    3b0c:	ee8080e7          	jalr	-280(ra) # 19f0 <__mulsi3>
    3b10:	414a87b3          	sub	a5,s5,s4
    3b14:	00f50433          	add	s0,a0,a5
    3b18:	2284a983          	lw	s3,552(s1)
    3b1c:	07299863          	bne	s3,s2,3b8c <_read_sectors+0x100>
    3b20:	22c4a583          	lw	a1,556(s1)
    3b24:	fff00793          	li	a5,-1
    3b28:	02f58663          	beq	a1,a5,3b54 <_read_sectors+0xc8>
    3b2c:	394b0513          	add	a0,s6,916
    3b30:	ffffe097          	auipc	ra,0xffffe
    3b34:	244080e7          	jalr	580(ra) # 1d74 <fatfs_lba_of_cluster>
    3b38:	017505b3          	add	a1,a0,s7
    3b3c:	00040693          	mv	a3,s0
    3b40:	000c0613          	mv	a2,s8
    3b44:	394b0513          	add	a0,s6,916
    3b48:	ffffe097          	auipc	ra,0xffffe
    3b4c:	27c080e7          	jalr	636(ra) # 1dc4 <fatfs_sector_read>
    3b50:	00051463          	bnez	a0,3b58 <_read_sectors+0xcc>
    3b54:	00000413          	li	s0,0
    3b58:	02c12083          	lw	ra,44(sp)
    3b5c:	00040513          	mv	a0,s0
    3b60:	02812403          	lw	s0,40(sp)
    3b64:	02412483          	lw	s1,36(sp)
    3b68:	02012903          	lw	s2,32(sp)
    3b6c:	01c12983          	lw	s3,28(sp)
    3b70:	01812a03          	lw	s4,24(sp)
    3b74:	01412a83          	lw	s5,20(sp)
    3b78:	01012b03          	lw	s6,16(sp)
    3b7c:	00c12b83          	lw	s7,12(sp)
    3b80:	00812c03          	lw	s8,8(sp)
    3b84:	03010113          	add	sp,sp,48
    3b88:	00008067          	ret
    3b8c:	035a6463          	bltu	s4,s5,3bb4 <_read_sectors+0x128>
    3b90:	00198793          	add	a5,s3,1
    3b94:	03279063          	bne	a5,s2,3bb4 <_read_sectors+0x128>
    3b98:	22c4a583          	lw	a1,556(s1)
    3b9c:	0329e263          	bltu	s3,s2,3bc0 <_read_sectors+0x134>
    3ba0:	fff00793          	li	a5,-1
    3ba4:	faf588e3          	beq	a1,a5,3b54 <_read_sectors+0xc8>
    3ba8:	22b4a623          	sw	a1,556(s1)
    3bac:	2324a423          	sw	s2,552(s1)
    3bb0:	f7dff06f          	j	3b2c <_read_sectors+0xa0>
    3bb4:	0044a583          	lw	a1,4(s1)
    3bb8:	00000993          	li	s3,0
    3bbc:	fe1ff06f          	j	3b9c <_read_sectors+0x110>
    3bc0:	394b0513          	add	a0,s6,916
    3bc4:	fffff097          	auipc	ra,0xfffff
    3bc8:	248080e7          	jalr	584(ra) # 2e0c <fatfs_find_next_cluster>
    3bcc:	00050593          	mv	a1,a0
    3bd0:	00198993          	add	s3,s3,1
    3bd4:	fc9ff06f          	j	3b9c <_read_sectors+0x110>

00003bd8 <fatfs_set_fs_info_next_free_cluster>:
    3bd8:	03052783          	lw	a5,48(a0)
    3bdc:	0a078863          	beqz	a5,3c8c <fatfs_set_fs_info_next_free_cluster+0xb4>
    3be0:	ff010113          	add	sp,sp,-16
    3be4:	01c52783          	lw	a5,28(a0)
    3be8:	01212023          	sw	s2,0(sp)
    3bec:	00058913          	mv	s2,a1
    3bf0:	01855583          	lhu	a1,24(a0)
    3bf4:	00812423          	sw	s0,8(sp)
    3bf8:	00912223          	sw	s1,4(sp)
    3bfc:	00f585b3          	add	a1,a1,a5
    3c00:	00112623          	sw	ra,12(sp)
    3c04:	00050493          	mv	s1,a0
    3c08:	ffffe097          	auipc	ra,0xffffe
    3c0c:	fc0080e7          	jalr	-64(ra) # 1bc8 <fatfs_fat_read_sector>
    3c10:	00050413          	mv	s0,a0
    3c14:	06050063          	beqz	a0,3c74 <fatfs_set_fs_info_next_free_cluster+0x9c>
    3c18:	20852783          	lw	a5,520(a0)
    3c1c:	00895713          	srl	a4,s2,0x8
    3c20:	1f278623          	sb	s2,492(a5)
    3c24:	20852783          	lw	a5,520(a0)
    3c28:	1ee786a3          	sb	a4,493(a5)
    3c2c:	20852783          	lw	a5,520(a0)
    3c30:	01095713          	srl	a4,s2,0x10
    3c34:	1ee78723          	sb	a4,494(a5)
    3c38:	20852783          	lw	a5,520(a0)
    3c3c:	01895713          	srl	a4,s2,0x18
    3c40:	1ee787a3          	sb	a4,495(a5)
    3c44:	00100793          	li	a5,1
    3c48:	20f52223          	sw	a5,516(a0)
    3c4c:	0384a783          	lw	a5,56(s1)
    3c50:	0324a223          	sw	s2,36(s1)
    3c54:	00078a63          	beqz	a5,3c68 <fatfs_set_fs_info_next_free_cluster+0x90>
    3c58:	00050593          	mv	a1,a0
    3c5c:	20052503          	lw	a0,512(a0)
    3c60:	00100613          	li	a2,1
    3c64:	000780e7          	jalr	a5
    3c68:	fff00793          	li	a5,-1
    3c6c:	20f42023          	sw	a5,512(s0)
    3c70:	20042223          	sw	zero,516(s0)
    3c74:	00c12083          	lw	ra,12(sp)
    3c78:	00812403          	lw	s0,8(sp)
    3c7c:	00412483          	lw	s1,4(sp)
    3c80:	00012903          	lw	s2,0(sp)
    3c84:	01010113          	add	sp,sp,16
    3c88:	00008067          	ret
    3c8c:	00008067          	ret

00003c90 <fatfs_find_blank_cluster>:
    3c90:	fe010113          	add	sp,sp,-32
    3c94:	01312623          	sw	s3,12(sp)
    3c98:	01512223          	sw	s5,4(sp)
    3c9c:	000109b7          	lui	s3,0x10
    3ca0:	10000ab7          	lui	s5,0x10000
    3ca4:	00912a23          	sw	s1,20(sp)
    3ca8:	01212823          	sw	s2,16(sp)
    3cac:	01412423          	sw	s4,8(sp)
    3cb0:	00112e23          	sw	ra,28(sp)
    3cb4:	00812c23          	sw	s0,24(sp)
    3cb8:	00050913          	mv	s2,a0
    3cbc:	00058493          	mv	s1,a1
    3cc0:	00060a13          	mv	s4,a2
    3cc4:	fff98993          	add	s3,s3,-1 # ffff <_files+0x6803>
    3cc8:	fffa8a93          	add	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    3ccc:	03092783          	lw	a5,48(s2)
    3cd0:	0074d413          	srl	s0,s1,0x7
    3cd4:	00079463          	bnez	a5,3cdc <fatfs_find_blank_cluster+0x4c>
    3cd8:	0084d413          	srl	s0,s1,0x8
    3cdc:	02092783          	lw	a5,32(s2)
    3ce0:	0cf47463          	bgeu	s0,a5,3da8 <fatfs_find_blank_cluster+0x118>
    3ce4:	01492583          	lw	a1,20(s2)
    3ce8:	00090513          	mv	a0,s2
    3cec:	00b405b3          	add	a1,s0,a1
    3cf0:	ffffe097          	auipc	ra,0xffffe
    3cf4:	ed8080e7          	jalr	-296(ra) # 1bc8 <fatfs_fat_read_sector>
    3cf8:	0a050863          	beqz	a0,3da8 <fatfs_find_blank_cluster+0x118>
    3cfc:	03092783          	lw	a5,48(s2)
    3d00:	20852703          	lw	a4,520(a0)
    3d04:	04079c63          	bnez	a5,3d5c <fatfs_find_blank_cluster+0xcc>
    3d08:	00841413          	sll	s0,s0,0x8
    3d0c:	40848433          	sub	s0,s1,s0
    3d10:	00141413          	sll	s0,s0,0x1
    3d14:	01347433          	and	s0,s0,s3
    3d18:	00870733          	add	a4,a4,s0
    3d1c:	00174783          	lbu	a5,1(a4)
    3d20:	00074703          	lbu	a4,0(a4)
    3d24:	00879793          	sll	a5,a5,0x8
    3d28:	00e787b3          	add	a5,a5,a4
    3d2c:	06079a63          	bnez	a5,3da0 <fatfs_find_blank_cluster+0x110>
    3d30:	009a2023          	sw	s1,0(s4)
    3d34:	00100513          	li	a0,1
    3d38:	01c12083          	lw	ra,28(sp)
    3d3c:	01812403          	lw	s0,24(sp)
    3d40:	01412483          	lw	s1,20(sp)
    3d44:	01012903          	lw	s2,16(sp)
    3d48:	00c12983          	lw	s3,12(sp)
    3d4c:	00812a03          	lw	s4,8(sp)
    3d50:	00412a83          	lw	s5,4(sp)
    3d54:	02010113          	add	sp,sp,32
    3d58:	00008067          	ret
    3d5c:	00741413          	sll	s0,s0,0x7
    3d60:	40848433          	sub	s0,s1,s0
    3d64:	00241413          	sll	s0,s0,0x2
    3d68:	01347433          	and	s0,s0,s3
    3d6c:	00870733          	add	a4,a4,s0
    3d70:	00374783          	lbu	a5,3(a4)
    3d74:	00274683          	lbu	a3,2(a4)
    3d78:	01879793          	sll	a5,a5,0x18
    3d7c:	01069693          	sll	a3,a3,0x10
    3d80:	00d787b3          	add	a5,a5,a3
    3d84:	00074683          	lbu	a3,0(a4)
    3d88:	00174703          	lbu	a4,1(a4)
    3d8c:	00d787b3          	add	a5,a5,a3
    3d90:	00871713          	sll	a4,a4,0x8
    3d94:	00e787b3          	add	a5,a5,a4
    3d98:	0157f7b3          	and	a5,a5,s5
    3d9c:	f91ff06f          	j	3d2c <fatfs_find_blank_cluster+0x9c>
    3da0:	00148493          	add	s1,s1,1
    3da4:	f29ff06f          	j	3ccc <fatfs_find_blank_cluster+0x3c>
    3da8:	00000513          	li	a0,0
    3dac:	f8dff06f          	j	3d38 <fatfs_find_blank_cluster+0xa8>

00003db0 <fatfs_fat_set_cluster>:
    3db0:	03052783          	lw	a5,48(a0)
    3db4:	fe010113          	add	sp,sp,-32
    3db8:	00812c23          	sw	s0,24(sp)
    3dbc:	00912a23          	sw	s1,20(sp)
    3dc0:	01212823          	sw	s2,16(sp)
    3dc4:	01312623          	sw	s3,12(sp)
    3dc8:	00112e23          	sw	ra,28(sp)
    3dcc:	00050993          	mv	s3,a0
    3dd0:	00058413          	mv	s0,a1
    3dd4:	00060493          	mv	s1,a2
    3dd8:	0085d913          	srl	s2,a1,0x8
    3ddc:	00078463          	beqz	a5,3de4 <fatfs_fat_set_cluster+0x34>
    3de0:	0075d913          	srl	s2,a1,0x7
    3de4:	0149a583          	lw	a1,20(s3)
    3de8:	00098513          	mv	a0,s3
    3dec:	00b905b3          	add	a1,s2,a1
    3df0:	ffffe097          	auipc	ra,0xffffe
    3df4:	dd8080e7          	jalr	-552(ra) # 1bc8 <fatfs_fat_read_sector>
    3df8:	00050793          	mv	a5,a0
    3dfc:	00000513          	li	a0,0
    3e00:	04078c63          	beqz	a5,3e58 <fatfs_fat_set_cluster+0xa8>
    3e04:	0309a683          	lw	a3,48(s3)
    3e08:	2087a703          	lw	a4,520(a5)
    3e0c:	0ff4f613          	zext.b	a2,s1
    3e10:	06069263          	bnez	a3,3e74 <fatfs_fat_set_cluster+0xc4>
    3e14:	00891913          	sll	s2,s2,0x8
    3e18:	41240433          	sub	s0,s0,s2
    3e1c:	000106b7          	lui	a3,0x10
    3e20:	00141413          	sll	s0,s0,0x1
    3e24:	fff68693          	add	a3,a3,-1 # ffff <_files+0x6803>
    3e28:	00d47433          	and	s0,s0,a3
    3e2c:	00870733          	add	a4,a4,s0
    3e30:	00c70023          	sb	a2,0(a4)
    3e34:	2087a703          	lw	a4,520(a5)
    3e38:	01049493          	sll	s1,s1,0x10
    3e3c:	0104d493          	srl	s1,s1,0x10
    3e40:	00870733          	add	a4,a4,s0
    3e44:	0084d493          	srl	s1,s1,0x8
    3e48:	009700a3          	sb	s1,1(a4)
    3e4c:	00100713          	li	a4,1
    3e50:	20e7a223          	sw	a4,516(a5)
    3e54:	00100513          	li	a0,1
    3e58:	01c12083          	lw	ra,28(sp)
    3e5c:	01812403          	lw	s0,24(sp)
    3e60:	01412483          	lw	s1,20(sp)
    3e64:	01012903          	lw	s2,16(sp)
    3e68:	00c12983          	lw	s3,12(sp)
    3e6c:	02010113          	add	sp,sp,32
    3e70:	00008067          	ret
    3e74:	00791913          	sll	s2,s2,0x7
    3e78:	41240433          	sub	s0,s0,s2
    3e7c:	000106b7          	lui	a3,0x10
    3e80:	fff68693          	add	a3,a3,-1 # ffff <_files+0x6803>
    3e84:	00241413          	sll	s0,s0,0x2
    3e88:	00d47433          	and	s0,s0,a3
    3e8c:	00870733          	add	a4,a4,s0
    3e90:	00c70023          	sb	a2,0(a4)
    3e94:	2087a703          	lw	a4,520(a5)
    3e98:	0084d693          	srl	a3,s1,0x8
    3e9c:	00870733          	add	a4,a4,s0
    3ea0:	00d700a3          	sb	a3,1(a4)
    3ea4:	2087a703          	lw	a4,520(a5)
    3ea8:	0104d693          	srl	a3,s1,0x10
    3eac:	0184d493          	srl	s1,s1,0x18
    3eb0:	00870733          	add	a4,a4,s0
    3eb4:	00d70123          	sb	a3,2(a4)
    3eb8:	2087a703          	lw	a4,520(a5)
    3ebc:	00870733          	add	a4,a4,s0
    3ec0:	009701a3          	sb	s1,3(a4)
    3ec4:	f89ff06f          	j	3e4c <fatfs_fat_set_cluster+0x9c>

00003ec8 <fatfs_free_cluster_chain>:
    3ec8:	fe010113          	add	sp,sp,-32
    3ecc:	00812c23          	sw	s0,24(sp)
    3ed0:	01212823          	sw	s2,16(sp)
    3ed4:	00112e23          	sw	ra,28(sp)
    3ed8:	00912a23          	sw	s1,20(sp)
    3edc:	00050413          	mv	s0,a0
    3ee0:	ffd00913          	li	s2,-3
    3ee4:	fff58793          	add	a5,a1,-1
    3ee8:	02f97063          	bgeu	s2,a5,3f08 <fatfs_free_cluster_chain+0x40>
    3eec:	01c12083          	lw	ra,28(sp)
    3ef0:	01812403          	lw	s0,24(sp)
    3ef4:	01412483          	lw	s1,20(sp)
    3ef8:	01012903          	lw	s2,16(sp)
    3efc:	00100513          	li	a0,1
    3f00:	02010113          	add	sp,sp,32
    3f04:	00008067          	ret
    3f08:	00040513          	mv	a0,s0
    3f0c:	00b12623          	sw	a1,12(sp)
    3f10:	fffff097          	auipc	ra,0xfffff
    3f14:	efc080e7          	jalr	-260(ra) # 2e0c <fatfs_find_next_cluster>
    3f18:	00c12583          	lw	a1,12(sp)
    3f1c:	00050493          	mv	s1,a0
    3f20:	00000613          	li	a2,0
    3f24:	00040513          	mv	a0,s0
    3f28:	00000097          	auipc	ra,0x0
    3f2c:	e88080e7          	jalr	-376(ra) # 3db0 <fatfs_fat_set_cluster>
    3f30:	00048593          	mv	a1,s1
    3f34:	fb1ff06f          	j	3ee4 <fatfs_free_cluster_chain+0x1c>

00003f38 <fatfs_fat_add_cluster_to_chain>:
    3f38:	fff00793          	li	a5,-1
    3f3c:	02f59463          	bne	a1,a5,3f64 <fatfs_fat_add_cluster_to_chain+0x2c>
    3f40:	00000513          	li	a0,0
    3f44:	00008067          	ret
    3f48:	00000513          	li	a0,0
    3f4c:	01c12083          	lw	ra,28(sp)
    3f50:	01812403          	lw	s0,24(sp)
    3f54:	01412483          	lw	s1,20(sp)
    3f58:	01012903          	lw	s2,16(sp)
    3f5c:	02010113          	add	sp,sp,32
    3f60:	00008067          	ret
    3f64:	fe010113          	add	sp,sp,-32
    3f68:	00812c23          	sw	s0,24(sp)
    3f6c:	00912a23          	sw	s1,20(sp)
    3f70:	01212823          	sw	s2,16(sp)
    3f74:	00050413          	mv	s0,a0
    3f78:	00112e23          	sw	ra,28(sp)
    3f7c:	00058513          	mv	a0,a1
    3f80:	00060493          	mv	s1,a2
    3f84:	fff00913          	li	s2,-1
    3f88:	00050593          	mv	a1,a0
    3f8c:	00a12623          	sw	a0,12(sp)
    3f90:	00040513          	mv	a0,s0
    3f94:	fffff097          	auipc	ra,0xfffff
    3f98:	e78080e7          	jalr	-392(ra) # 2e0c <fatfs_find_next_cluster>
    3f9c:	fa0506e3          	beqz	a0,3f48 <fatfs_fat_add_cluster_to_chain+0x10>
    3fa0:	00c12583          	lw	a1,12(sp)
    3fa4:	ff2512e3          	bne	a0,s2,3f88 <fatfs_fat_add_cluster_to_chain+0x50>
    3fa8:	00048613          	mv	a2,s1
    3fac:	00040513          	mv	a0,s0
    3fb0:	00000097          	auipc	ra,0x0
    3fb4:	e00080e7          	jalr	-512(ra) # 3db0 <fatfs_fat_set_cluster>
    3fb8:	fff00613          	li	a2,-1
    3fbc:	00048593          	mv	a1,s1
    3fc0:	00040513          	mv	a0,s0
    3fc4:	00000097          	auipc	ra,0x0
    3fc8:	dec080e7          	jalr	-532(ra) # 3db0 <fatfs_fat_set_cluster>
    3fcc:	00100513          	li	a0,1
    3fd0:	f7dff06f          	j	3f4c <fatfs_fat_add_cluster_to_chain+0x14>

00003fd4 <fatfs_add_free_space>:
    3fd4:	02452703          	lw	a4,36(a0)
    3fd8:	fd010113          	add	sp,sp,-48
    3fdc:	02812423          	sw	s0,40(sp)
    3fe0:	03212023          	sw	s2,32(sp)
    3fe4:	01412c23          	sw	s4,24(sp)
    3fe8:	01512a23          	sw	s5,20(sp)
    3fec:	02112623          	sw	ra,44(sp)
    3ff0:	02912223          	sw	s1,36(sp)
    3ff4:	01312e23          	sw	s3,28(sp)
    3ff8:	fff00793          	li	a5,-1
    3ffc:	0005aa83          	lw	s5,0(a1)
    4000:	00050413          	mv	s0,a0
    4004:	00058913          	mv	s2,a1
    4008:	00060a13          	mv	s4,a2
    400c:	00f70863          	beq	a4,a5,401c <fatfs_add_free_space+0x48>
    4010:	fff00593          	li	a1,-1
    4014:	00000097          	auipc	ra,0x0
    4018:	bc4080e7          	jalr	-1084(ra) # 3bd8 <fatfs_set_fs_info_next_free_cluster>
    401c:	00000493          	li	s1,0
    4020:	03449663          	bne	s1,s4,404c <fatfs_add_free_space+0x78>
    4024:	00100513          	li	a0,1
    4028:	02c12083          	lw	ra,44(sp)
    402c:	02812403          	lw	s0,40(sp)
    4030:	02412483          	lw	s1,36(sp)
    4034:	02012903          	lw	s2,32(sp)
    4038:	01c12983          	lw	s3,28(sp)
    403c:	01812a03          	lw	s4,24(sp)
    4040:	01412a83          	lw	s5,20(sp)
    4044:	03010113          	add	sp,sp,48
    4048:	00008067          	ret
    404c:	00842583          	lw	a1,8(s0)
    4050:	00c10613          	add	a2,sp,12
    4054:	00040513          	mv	a0,s0
    4058:	00000097          	auipc	ra,0x0
    405c:	c38080e7          	jalr	-968(ra) # 3c90 <fatfs_find_blank_cluster>
    4060:	fc0504e3          	beqz	a0,4028 <fatfs_add_free_space+0x54>
    4064:	00c12983          	lw	s3,12(sp)
    4068:	000a8593          	mv	a1,s5
    406c:	00040513          	mv	a0,s0
    4070:	00098613          	mv	a2,s3
    4074:	00000097          	auipc	ra,0x0
    4078:	d3c080e7          	jalr	-708(ra) # 3db0 <fatfs_fat_set_cluster>
    407c:	fff00613          	li	a2,-1
    4080:	00098593          	mv	a1,s3
    4084:	00040513          	mv	a0,s0
    4088:	00000097          	auipc	ra,0x0
    408c:	d28080e7          	jalr	-728(ra) # 3db0 <fatfs_fat_set_cluster>
    4090:	00049463          	bnez	s1,4098 <fatfs_add_free_space+0xc4>
    4094:	01392023          	sw	s3,0(s2)
    4098:	00148493          	add	s1,s1,1
    409c:	00098a93          	mv	s5,s3
    40a0:	f81ff06f          	j	4020 <fatfs_add_free_space+0x4c>

000040a4 <_write_sectors>:
    40a4:	fb010113          	add	sp,sp,-80
    40a8:	03312e23          	sw	s3,60(sp)
    40ac:	000099b7          	lui	s3,0x9
    40b0:	03612823          	sw	s6,48(sp)
    40b4:	3949cb03          	lbu	s6,916(s3) # 9394 <_fs>
    40b8:	03512a23          	sw	s5,52(sp)
    40bc:	00058a93          	mv	s5,a1
    40c0:	fff00793          	li	a5,-1
    40c4:	04812423          	sw	s0,72(sp)
    40c8:	000b0593          	mv	a1,s6
    40cc:	00050413          	mv	s0,a0
    40d0:	000a8513          	mv	a0,s5
    40d4:	00f12e23          	sw	a5,28(sp)
    40d8:	04112623          	sw	ra,76(sp)
    40dc:	04912223          	sw	s1,68(sp)
    40e0:	05212023          	sw	s2,64(sp)
    40e4:	03712623          	sw	s7,44(sp)
    40e8:	03812423          	sw	s8,40(sp)
    40ec:	00068b93          	mv	s7,a3
    40f0:	03912223          	sw	s9,36(sp)
    40f4:	03a12023          	sw	s10,32(sp)
    40f8:	00060c93          	mv	s9,a2
    40fc:	03412c23          	sw	s4,56(sp)
    4100:	ffffd097          	auipc	ra,0xffffd
    4104:	11c080e7          	jalr	284(ra) # 121c <__udivsi3>
    4108:	00050493          	mv	s1,a0
    410c:	000b0593          	mv	a1,s6
    4110:	000a8513          	mv	a0,s5
    4114:	ffffd097          	auipc	ra,0xffffd
    4118:	150080e7          	jalr	336(ra) # 1264 <__umodsi3>
    411c:	00ab87b3          	add	a5,s7,a0
    4120:	00050c13          	mv	s8,a0
    4124:	39498d13          	add	s10,s3,916
    4128:	000b8913          	mv	s2,s7
    412c:	00fb7e63          	bgeu	s6,a5,4148 <_write_sectors+0xa4>
    4130:	00048593          	mv	a1,s1
    4134:	000b0513          	mv	a0,s6
    4138:	ffffe097          	auipc	ra,0xffffe
    413c:	8b8080e7          	jalr	-1864(ra) # 19f0 <__mulsi3>
    4140:	415b07b3          	sub	a5,s6,s5
    4144:	00f50933          	add	s2,a0,a5
    4148:	22842a03          	lw	s4,552(s0)
    414c:	029a1a63          	bne	s4,s1,4180 <_write_sectors+0xdc>
    4150:	22c42583          	lw	a1,556(s0)
    4154:	39498513          	add	a0,s3,916
    4158:	ffffe097          	auipc	ra,0xffffe
    415c:	c1c080e7          	jalr	-996(ra) # 1d74 <fatfs_lba_of_cluster>
    4160:	018505b3          	add	a1,a0,s8
    4164:	00090693          	mv	a3,s2
    4168:	000c8613          	mv	a2,s9
    416c:	39498513          	add	a0,s3,916
    4170:	ffffe097          	auipc	ra,0xffffe
    4174:	c6c080e7          	jalr	-916(ra) # 1ddc <fatfs_sector_write>
    4178:	04050a63          	beqz	a0,41cc <_write_sectors+0x128>
    417c:	0540006f          	j	41d0 <_write_sectors+0x12c>
    4180:	096ae663          	bltu	s5,s6,420c <_write_sectors+0x168>
    4184:	001a0793          	add	a5,s4,1
    4188:	08979263          	bne	a5,s1,420c <_write_sectors+0x168>
    418c:	22c42583          	lw	a1,556(s0)
    4190:	fff00a93          	li	s5,-1
    4194:	089a6263          	bltu	s4,s1,4218 <_write_sectors+0x174>
    4198:	fff00793          	li	a5,-1
    419c:	0af59463          	bne	a1,a5,4244 <_write_sectors+0x1a0>
    41a0:	000d4583          	lbu	a1,0(s10)
    41a4:	fff58513          	add	a0,a1,-1
    41a8:	01750533          	add	a0,a0,s7
    41ac:	ffffd097          	auipc	ra,0xffffd
    41b0:	070080e7          	jalr	112(ra) # 121c <__udivsi3>
    41b4:	00050613          	mv	a2,a0
    41b8:	01c10593          	add	a1,sp,28
    41bc:	39498513          	add	a0,s3,916
    41c0:	00000097          	auipc	ra,0x0
    41c4:	e14080e7          	jalr	-492(ra) # 3fd4 <fatfs_add_free_space>
    41c8:	06051c63          	bnez	a0,4240 <_write_sectors+0x19c>
    41cc:	00000913          	li	s2,0
    41d0:	04c12083          	lw	ra,76(sp)
    41d4:	04812403          	lw	s0,72(sp)
    41d8:	04412483          	lw	s1,68(sp)
    41dc:	03c12983          	lw	s3,60(sp)
    41e0:	03812a03          	lw	s4,56(sp)
    41e4:	03412a83          	lw	s5,52(sp)
    41e8:	03012b03          	lw	s6,48(sp)
    41ec:	02c12b83          	lw	s7,44(sp)
    41f0:	02812c03          	lw	s8,40(sp)
    41f4:	02412c83          	lw	s9,36(sp)
    41f8:	02012d03          	lw	s10,32(sp)
    41fc:	00090513          	mv	a0,s2
    4200:	04012903          	lw	s2,64(sp)
    4204:	05010113          	add	sp,sp,80
    4208:	00008067          	ret
    420c:	00442583          	lw	a1,4(s0)
    4210:	00000a13          	li	s4,0
    4214:	f7dff06f          	j	4190 <_write_sectors+0xec>
    4218:	39498513          	add	a0,s3,916
    421c:	00b12623          	sw	a1,12(sp)
    4220:	fffff097          	auipc	ra,0xfffff
    4224:	bec080e7          	jalr	-1044(ra) # 2e0c <fatfs_find_next_cluster>
    4228:	00c12583          	lw	a1,12(sp)
    422c:	00b12e23          	sw	a1,28(sp)
    4230:	f75508e3          	beq	a0,s5,41a0 <_write_sectors+0xfc>
    4234:	001a0a13          	add	s4,s4,1
    4238:	00050593          	mv	a1,a0
    423c:	f59ff06f          	j	4194 <_write_sectors+0xf0>
    4240:	01c12583          	lw	a1,28(sp)
    4244:	22b42623          	sw	a1,556(s0)
    4248:	22942423          	sw	s1,552(s0)
    424c:	f09ff06f          	j	4154 <_write_sectors+0xb0>

00004250 <fl_fflush>:
    4250:	000057b7          	lui	a5,0x5
    4254:	0b87a783          	lw	a5,184(a5) # 50b8 <_filelib_init>
    4258:	ff010113          	add	sp,sp,-16
    425c:	00812423          	sw	s0,8(sp)
    4260:	00112623          	sw	ra,12(sp)
    4264:	00912223          	sw	s1,4(sp)
    4268:	00050413          	mv	s0,a0
    426c:	00079663          	bnez	a5,4278 <fl_fflush+0x28>
    4270:	ffffe097          	auipc	ra,0xffffe
    4274:	c40080e7          	jalr	-960(ra) # 1eb0 <fl_init>
    4278:	04040863          	beqz	s0,42c8 <fl_fflush+0x78>
    427c:	000097b7          	lui	a5,0x9
    4280:	39478713          	add	a4,a5,916 # 9394 <_fs>
    4284:	03c72703          	lw	a4,60(a4)
    4288:	39478493          	add	s1,a5,916
    428c:	00070463          	beqz	a4,4294 <fl_fflush+0x44>
    4290:	000700e7          	jalr	a4
    4294:	43442783          	lw	a5,1076(s0)
    4298:	02078263          	beqz	a5,42bc <fl_fflush+0x6c>
    429c:	43042583          	lw	a1,1072(s0)
    42a0:	00100693          	li	a3,1
    42a4:	23040613          	add	a2,s0,560
    42a8:	00040513          	mv	a0,s0
    42ac:	00000097          	auipc	ra,0x0
    42b0:	df8080e7          	jalr	-520(ra) # 40a4 <_write_sectors>
    42b4:	00050463          	beqz	a0,42bc <fl_fflush+0x6c>
    42b8:	42042a23          	sw	zero,1076(s0)
    42bc:	0404a783          	lw	a5,64(s1)
    42c0:	00078463          	beqz	a5,42c8 <fl_fflush+0x78>
    42c4:	000780e7          	jalr	a5
    42c8:	00c12083          	lw	ra,12(sp)
    42cc:	00812403          	lw	s0,8(sp)
    42d0:	00412483          	lw	s1,4(sp)
    42d4:	00000513          	li	a0,0
    42d8:	01010113          	add	sp,sp,16
    42dc:	00008067          	ret

000042e0 <fl_fclose>:
    42e0:	000057b7          	lui	a5,0x5
    42e4:	0b87a783          	lw	a5,184(a5) # 50b8 <_filelib_init>
    42e8:	ff010113          	add	sp,sp,-16
    42ec:	00812423          	sw	s0,8(sp)
    42f0:	00112623          	sw	ra,12(sp)
    42f4:	00912223          	sw	s1,4(sp)
    42f8:	01212023          	sw	s2,0(sp)
    42fc:	00050413          	mv	s0,a0
    4300:	00079663          	bnez	a5,430c <fl_fclose+0x2c>
    4304:	ffffe097          	auipc	ra,0xffffe
    4308:	bac080e7          	jalr	-1108(ra) # 1eb0 <fl_init>
    430c:	08040e63          	beqz	s0,43a8 <fl_fclose+0xc8>
    4310:	000094b7          	lui	s1,0x9
    4314:	39448793          	add	a5,s1,916 # 9394 <_fs>
    4318:	03c7a783          	lw	a5,60(a5)
    431c:	39448913          	add	s2,s1,916
    4320:	00078463          	beqz	a5,4328 <fl_fclose+0x48>
    4324:	000780e7          	jalr	a5
    4328:	00040513          	mv	a0,s0
    432c:	00000097          	auipc	ra,0x0
    4330:	f24080e7          	jalr	-220(ra) # 4250 <fl_fflush>
    4334:	01042783          	lw	a5,16(s0)
    4338:	00078e63          	beqz	a5,4354 <fl_fclose+0x74>
    433c:	00c42683          	lw	a3,12(s0)
    4340:	00042583          	lw	a1,0(s0)
    4344:	21c40613          	add	a2,s0,540
    4348:	39448513          	add	a0,s1,916
    434c:	fffff097          	auipc	ra,0xfffff
    4350:	310080e7          	jalr	784(ra) # 365c <fatfs_update_file_length>
    4354:	fff00793          	li	a5,-1
    4358:	42f42823          	sw	a5,1072(s0)
    435c:	00040513          	mv	a0,s0
    4360:	00042423          	sw	zero,8(s0)
    4364:	00042623          	sw	zero,12(s0)
    4368:	00042223          	sw	zero,4(s0)
    436c:	42042a23          	sw	zero,1076(s0)
    4370:	00042823          	sw	zero,16(s0)
    4374:	ffffe097          	auipc	ra,0xffffe
    4378:	9b8080e7          	jalr	-1608(ra) # 1d2c <_free_file>
    437c:	39448513          	add	a0,s1,916
    4380:	fffff097          	auipc	ra,0xfffff
    4384:	a30080e7          	jalr	-1488(ra) # 2db0 <fatfs_fat_purge>
    4388:	04092783          	lw	a5,64(s2)
    438c:	00078e63          	beqz	a5,43a8 <fl_fclose+0xc8>
    4390:	00812403          	lw	s0,8(sp)
    4394:	00c12083          	lw	ra,12(sp)
    4398:	00412483          	lw	s1,4(sp)
    439c:	00012903          	lw	s2,0(sp)
    43a0:	01010113          	add	sp,sp,16
    43a4:	00078067          	jr	a5
    43a8:	00c12083          	lw	ra,12(sp)
    43ac:	00812403          	lw	s0,8(sp)
    43b0:	00412483          	lw	s1,4(sp)
    43b4:	00012903          	lw	s2,0(sp)
    43b8:	01010113          	add	sp,sp,16
    43bc:	00008067          	ret

000043c0 <fl_fread>:
    43c0:	fd010113          	add	sp,sp,-48
    43c4:	01612823          	sw	s6,16(sp)
    43c8:	00050b13          	mv	s6,a0
    43cc:	00058513          	mv	a0,a1
    43d0:	00060593          	mv	a1,a2
    43d4:	02812423          	sw	s0,40(sp)
    43d8:	02912223          	sw	s1,36(sp)
    43dc:	02112623          	sw	ra,44(sp)
    43e0:	03212023          	sw	s2,32(sp)
    43e4:	01312e23          	sw	s3,28(sp)
    43e8:	01412c23          	sw	s4,24(sp)
    43ec:	01512a23          	sw	s5,20(sp)
    43f0:	01712623          	sw	s7,12(sp)
    43f4:	00068493          	mv	s1,a3
    43f8:	ffffd097          	auipc	ra,0xffffd
    43fc:	5f8080e7          	jalr	1528(ra) # 19f0 <__mulsi3>
    4400:	000057b7          	lui	a5,0x5
    4404:	0b87a783          	lw	a5,184(a5) # 50b8 <_filelib_init>
    4408:	00050413          	mv	s0,a0
    440c:	00079663          	bnez	a5,4418 <fl_fread+0x58>
    4410:	ffffe097          	auipc	ra,0xffffe
    4414:	aa0080e7          	jalr	-1376(ra) # 1eb0 <fl_init>
    4418:	120b0a63          	beqz	s6,454c <fl_fread+0x18c>
    441c:	12048863          	beqz	s1,454c <fl_fread+0x18c>
    4420:	4384c783          	lbu	a5,1080(s1)
    4424:	0017f793          	and	a5,a5,1
    4428:	12078263          	beqz	a5,454c <fl_fread+0x18c>
    442c:	06040e63          	beqz	s0,44a8 <fl_fread+0xe8>
    4430:	0084a583          	lw	a1,8(s1)
    4434:	00c4a783          	lw	a5,12(s1)
    4438:	10f5fa63          	bgeu	a1,a5,454c <fl_fread+0x18c>
    443c:	00b40733          	add	a4,s0,a1
    4440:	00040a93          	mv	s5,s0
    4444:	00e7f463          	bgeu	a5,a4,444c <fl_fread+0x8c>
    4448:	40b78ab3          	sub	s5,a5,a1
    444c:	0095d993          	srl	s3,a1,0x9
    4450:	1ff5f913          	and	s2,a1,511
    4454:	00000413          	li	s0,0
    4458:	05505863          	blez	s5,44a8 <fl_fread+0xe8>
    445c:	06091e63          	bnez	s2,44d8 <fl_fread+0x118>
    4460:	408a86b3          	sub	a3,s5,s0
    4464:	1ff00793          	li	a5,511
    4468:	00000913          	li	s2,0
    446c:	06d7d663          	bge	a5,a3,44d8 <fl_fread+0x118>
    4470:	4096d693          	sra	a3,a3,0x9
    4474:	008b0633          	add	a2,s6,s0
    4478:	00098593          	mv	a1,s3
    447c:	00048513          	mv	a0,s1
    4480:	fffff097          	auipc	ra,0xfffff
    4484:	60c080e7          	jalr	1548(ra) # 3a8c <_read_sectors>
    4488:	02050063          	beqz	a0,44a8 <fl_fread+0xe8>
    448c:	00951a13          	sll	s4,a0,0x9
    4490:	00a989b3          	add	s3,s3,a0
    4494:	0084a783          	lw	a5,8(s1)
    4498:	01440433          	add	s0,s0,s4
    449c:	014787b3          	add	a5,a5,s4
    44a0:	00f4a423          	sw	a5,8(s1)
    44a4:	fb544ee3          	blt	s0,s5,4460 <fl_fread+0xa0>
    44a8:	02c12083          	lw	ra,44(sp)
    44ac:	00040513          	mv	a0,s0
    44b0:	02812403          	lw	s0,40(sp)
    44b4:	02412483          	lw	s1,36(sp)
    44b8:	02012903          	lw	s2,32(sp)
    44bc:	01c12983          	lw	s3,28(sp)
    44c0:	01812a03          	lw	s4,24(sp)
    44c4:	01412a83          	lw	s5,20(sp)
    44c8:	01012b03          	lw	s6,16(sp)
    44cc:	00c12b83          	lw	s7,12(sp)
    44d0:	03010113          	add	sp,sp,48
    44d4:	00008067          	ret
    44d8:	4304a783          	lw	a5,1072(s1)
    44dc:	23048b93          	add	s7,s1,560
    44e0:	03378e63          	beq	a5,s3,451c <fl_fread+0x15c>
    44e4:	4344a783          	lw	a5,1076(s1)
    44e8:	00078863          	beqz	a5,44f8 <fl_fread+0x138>
    44ec:	00048513          	mv	a0,s1
    44f0:	00000097          	auipc	ra,0x0
    44f4:	d60080e7          	jalr	-672(ra) # 4250 <fl_fflush>
    44f8:	00100693          	li	a3,1
    44fc:	000b8613          	mv	a2,s7
    4500:	00098593          	mv	a1,s3
    4504:	00048513          	mv	a0,s1
    4508:	fffff097          	auipc	ra,0xfffff
    450c:	584080e7          	jalr	1412(ra) # 3a8c <_read_sectors>
    4510:	f8050ce3          	beqz	a0,44a8 <fl_fread+0xe8>
    4514:	4334a823          	sw	s3,1072(s1)
    4518:	4204aa23          	sw	zero,1076(s1)
    451c:	20000793          	li	a5,512
    4520:	412787b3          	sub	a5,a5,s2
    4524:	408a8a33          	sub	s4,s5,s0
    4528:	0147d463          	bge	a5,s4,4530 <fl_fread+0x170>
    452c:	00078a13          	mv	s4,a5
    4530:	000a0613          	mv	a2,s4
    4534:	012b85b3          	add	a1,s7,s2
    4538:	008b0533          	add	a0,s6,s0
    453c:	ffffd097          	auipc	ra,0xffffd
    4540:	da8080e7          	jalr	-600(ra) # 12e4 <memcpy>
    4544:	00198993          	add	s3,s3,1
    4548:	f4dff06f          	j	4494 <fl_fread+0xd4>
    454c:	fff00413          	li	s0,-1
    4550:	f59ff06f          	j	44a8 <fl_fread+0xe8>

00004554 <fatfs_allocate_free_space>:
    4554:	02069a63          	bnez	a3,4588 <fatfs_allocate_free_space+0x34>
    4558:	00000513          	li	a0,0
    455c:	00008067          	ret
    4560:	00000513          	li	a0,0
    4564:	02c12083          	lw	ra,44(sp)
    4568:	02812403          	lw	s0,40(sp)
    456c:	02412483          	lw	s1,36(sp)
    4570:	02012903          	lw	s2,32(sp)
    4574:	01c12983          	lw	s3,28(sp)
    4578:	01812a03          	lw	s4,24(sp)
    457c:	01412a83          	lw	s5,20(sp)
    4580:	03010113          	add	sp,sp,48
    4584:	00008067          	ret
    4588:	02452703          	lw	a4,36(a0)
    458c:	fd010113          	add	sp,sp,-48
    4590:	02812423          	sw	s0,40(sp)
    4594:	03212023          	sw	s2,32(sp)
    4598:	01312e23          	sw	s3,28(sp)
    459c:	01512a23          	sw	s5,20(sp)
    45a0:	02112623          	sw	ra,44(sp)
    45a4:	02912223          	sw	s1,36(sp)
    45a8:	01412c23          	sw	s4,24(sp)
    45ac:	fff00793          	li	a5,-1
    45b0:	00050413          	mv	s0,a0
    45b4:	00058a93          	mv	s5,a1
    45b8:	00060993          	mv	s3,a2
    45bc:	00068913          	mv	s2,a3
    45c0:	00f70863          	beq	a4,a5,45d0 <fatfs_allocate_free_space+0x7c>
    45c4:	fff00593          	li	a1,-1
    45c8:	fffff097          	auipc	ra,0xfffff
    45cc:	610080e7          	jalr	1552(ra) # 3bd8 <fatfs_set_fs_info_next_free_cluster>
    45d0:	00044a03          	lbu	s4,0(s0)
    45d4:	00090513          	mv	a0,s2
    45d8:	009a1a13          	sll	s4,s4,0x9
    45dc:	000a0593          	mv	a1,s4
    45e0:	ffffd097          	auipc	ra,0xffffd
    45e4:	c3c080e7          	jalr	-964(ra) # 121c <__udivsi3>
    45e8:	00050493          	mv	s1,a0
    45ec:	00050593          	mv	a1,a0
    45f0:	000a0513          	mv	a0,s4
    45f4:	ffffd097          	auipc	ra,0xffffd
    45f8:	3fc080e7          	jalr	1020(ra) # 19f0 <__mulsi3>
    45fc:	01250463          	beq	a0,s2,4604 <fatfs_allocate_free_space+0xb0>
    4600:	00148493          	add	s1,s1,1
    4604:	040a8463          	beqz	s5,464c <fatfs_allocate_free_space+0xf8>
    4608:	00842583          	lw	a1,8(s0)
    460c:	00c10613          	add	a2,sp,12
    4610:	00040513          	mv	a0,s0
    4614:	fffff097          	auipc	ra,0xfffff
    4618:	67c080e7          	jalr	1660(ra) # 3c90 <fatfs_find_blank_cluster>
    461c:	f40502e3          	beqz	a0,4560 <fatfs_allocate_free_space+0xc>
    4620:	00100793          	li	a5,1
    4624:	02f49863          	bne	s1,a5,4654 <fatfs_allocate_free_space+0x100>
    4628:	00c12483          	lw	s1,12(sp)
    462c:	fff00613          	li	a2,-1
    4630:	00040513          	mv	a0,s0
    4634:	00048593          	mv	a1,s1
    4638:	fffff097          	auipc	ra,0xfffff
    463c:	778080e7          	jalr	1912(ra) # 3db0 <fatfs_fat_set_cluster>
    4640:	00100513          	li	a0,1
    4644:	0099a023          	sw	s1,0(s3)
    4648:	f1dff06f          	j	4564 <fatfs_allocate_free_space+0x10>
    464c:	0009a783          	lw	a5,0(s3)
    4650:	00f12623          	sw	a5,12(sp)
    4654:	00048613          	mv	a2,s1
    4658:	00c10593          	add	a1,sp,12
    465c:	00040513          	mv	a0,s0
    4660:	00000097          	auipc	ra,0x0
    4664:	974080e7          	jalr	-1676(ra) # 3fd4 <fatfs_add_free_space>
    4668:	00a03533          	snez	a0,a0
    466c:	ef9ff06f          	j	4564 <fatfs_allocate_free_space+0x10>

00004670 <fatfs_add_file_entry>:
    4670:	f8010113          	add	sp,sp,-128
    4674:	00f12a23          	sw	a5,20(sp)
    4678:	03852783          	lw	a5,56(a0)
    467c:	06112e23          	sw	ra,124(sp)
    4680:	06812c23          	sw	s0,120(sp)
    4684:	06912a23          	sw	s1,116(sp)
    4688:	07212823          	sw	s2,112(sp)
    468c:	07312623          	sw	s3,108(sp)
    4690:	07412423          	sw	s4,104(sp)
    4694:	07512223          	sw	s5,100(sp)
    4698:	07612023          	sw	s6,96(sp)
    469c:	05712e23          	sw	s7,92(sp)
    46a0:	05812c23          	sw	s8,88(sp)
    46a4:	05912a23          	sw	s9,84(sp)
    46a8:	05a12823          	sw	s10,80(sp)
    46ac:	05b12623          	sw	s11,76(sp)
    46b0:	00b12423          	sw	a1,8(sp)
    46b4:	00c12623          	sw	a2,12(sp)
    46b8:	00e12823          	sw	a4,16(sp)
    46bc:	01012c23          	sw	a6,24(sp)
    46c0:	2c078063          	beqz	a5,4980 <fatfs_add_file_entry+0x310>
    46c4:	00050413          	mv	s0,a0
    46c8:	00060513          	mv	a0,a2
    46cc:	00068a93          	mv	s5,a3
    46d0:	ffffe097          	auipc	ra,0xffffe
    46d4:	a50080e7          	jalr	-1456(ra) # 2120 <fatfs_lfn_entries_required>
    46d8:	00150713          	add	a4,a0,1
    46dc:	00100793          	li	a5,1
    46e0:	00050913          	mv	s2,a0
    46e4:	28e7fe63          	bgeu	a5,a4,4980 <fatfs_add_file_entry+0x310>
    46e8:	00000493          	li	s1,0
    46ec:	00000a13          	li	s4,0
    46f0:	00000993          	li	s3,0
    46f4:	00000b13          	li	s6,0
    46f8:	00000d93          	li	s11,0
    46fc:	0e500c93          	li	s9,229
    4700:	01000d13          	li	s10,16
    4704:	00812583          	lw	a1,8(sp)
    4708:	00000693          	li	a3,0
    470c:	00048613          	mv	a2,s1
    4710:	00040513          	mv	a0,s0
    4714:	fffff097          	auipc	ra,0xfffff
    4718:	808080e7          	jalr	-2040(ra) # 2f1c <fatfs_sector_reader>
    471c:	18050063          	beqz	a0,489c <fatfs_add_file_entry+0x22c>
    4720:	04440c13          	add	s8,s0,68
    4724:	000d8793          	mv	a5,s11
    4728:	00000b93          	li	s7,0
    472c:	000c0513          	mv	a0,s8
    4730:	00f12e23          	sw	a5,28(sp)
    4734:	ffffe097          	auipc	ra,0xffffe
    4738:	8fc080e7          	jalr	-1796(ra) # 2030 <fatfs_entry_lfn_text>
    473c:	01c12783          	lw	a5,28(sp)
    4740:	00050d93          	mv	s11,a0
    4744:	02050c63          	beqz	a0,477c <fatfs_add_file_entry+0x10c>
    4748:	00079863          	bnez	a5,4758 <fatfs_add_file_entry+0xe8>
    474c:	000b8a13          	mv	s4,s7
    4750:	00048993          	mv	s3,s1
    4754:	00100b13          	li	s6,1
    4758:	00178d93          	add	s11,a5,1
    475c:	001b8713          	add	a4,s7,1
    4760:	0ff77b93          	zext.b	s7,a4
    4764:	020c0c13          	add	s8,s8,32
    4768:	01ab9663          	bne	s7,s10,4774 <fatfs_add_file_entry+0x104>
    476c:	00148493          	add	s1,s1,1
    4770:	f95ff06f          	j	4704 <fatfs_add_file_entry+0x94>
    4774:	000d8793          	mv	a5,s11
    4778:	fb5ff06f          	j	472c <fatfs_add_file_entry+0xbc>
    477c:	000c4603          	lbu	a2,0(s8)
    4780:	11961863          	bne	a2,s9,4890 <fatfs_add_file_entry+0x220>
    4784:	00079863          	bnez	a5,4794 <fatfs_add_file_entry+0x124>
    4788:	000b8a13          	mv	s4,s7
    478c:	00048993          	mv	s3,s1
    4790:	00100b13          	li	s6,1
    4794:	00178d93          	add	s11,a5,1
    4798:	fd27c2e3          	blt	a5,s2,475c <fatfs_add_file_entry+0xec>
    479c:	00ba8713          	add	a4,s5,11
    47a0:	000a8793          	mv	a5,s5
    47a4:	00000493          	li	s1,0
    47a8:	0007c603          	lbu	a2,0(a5)
    47ac:	00749693          	sll	a3,s1,0x7
    47b0:	0014d493          	srl	s1,s1,0x1
    47b4:	00c484b3          	add	s1,s1,a2
    47b8:	00178793          	add	a5,a5,1
    47bc:	00d484b3          	add	s1,s1,a3
    47c0:	0ff4f493          	zext.b	s1,s1
    47c4:	fef712e3          	bne	a4,a5,47a8 <fatfs_add_file_entry+0x138>
    47c8:	00098b13          	mv	s6,s3
    47cc:	00000d13          	li	s10,0
    47d0:	01000d93          	li	s11,16
    47d4:	00812583          	lw	a1,8(sp)
    47d8:	00000693          	li	a3,0
    47dc:	000b0613          	mv	a2,s6
    47e0:	00040513          	mv	a0,s0
    47e4:	ffffe097          	auipc	ra,0xffffe
    47e8:	738080e7          	jalr	1848(ra) # 2f1c <fatfs_sector_reader>
    47ec:	18050a63          	beqz	a0,4980 <fatfs_add_file_entry+0x310>
    47f0:	04440c13          	add	s8,s0,68
    47f4:	00000713          	li	a4,0
    47f8:	00000b93          	li	s7,0
    47fc:	000c0c93          	mv	s9,s8
    4800:	000d1663          	bnez	s10,480c <fatfs_add_file_entry+0x19c>
    4804:	153b1863          	bne	s6,s3,4954 <fatfs_add_file_entry+0x2e4>
    4808:	154b9663          	bne	s7,s4,4954 <fatfs_add_file_entry+0x2e4>
    480c:	12091263          	bnez	s2,4930 <fatfs_add_file_entry+0x2c0>
    4810:	01812703          	lw	a4,24(sp)
    4814:	01012603          	lw	a2,16(sp)
    4818:	01412583          	lw	a1,20(sp)
    481c:	02010693          	add	a3,sp,32
    4820:	000a8513          	mv	a0,s5
    4824:	ffffe097          	auipc	ra,0xffffe
    4828:	a54080e7          	jalr	-1452(ra) # 2278 <fatfs_sfn_create_entry>
    482c:	02000613          	li	a2,32
    4830:	02010593          	add	a1,sp,32
    4834:	000c0513          	mv	a0,s8
    4838:	ffffd097          	auipc	ra,0xffffd
    483c:	aac080e7          	jalr	-1364(ra) # 12e4 <memcpy>
    4840:	03842783          	lw	a5,56(s0)
    4844:	24442503          	lw	a0,580(s0)
    4848:	00100613          	li	a2,1
    484c:	000c8593          	mv	a1,s9
    4850:	000780e7          	jalr	a5
    4854:	07c12083          	lw	ra,124(sp)
    4858:	07812403          	lw	s0,120(sp)
    485c:	07412483          	lw	s1,116(sp)
    4860:	07012903          	lw	s2,112(sp)
    4864:	06c12983          	lw	s3,108(sp)
    4868:	06812a03          	lw	s4,104(sp)
    486c:	06412a83          	lw	s5,100(sp)
    4870:	06012b03          	lw	s6,96(sp)
    4874:	05c12b83          	lw	s7,92(sp)
    4878:	05812c03          	lw	s8,88(sp)
    487c:	05412c83          	lw	s9,84(sp)
    4880:	05012d03          	lw	s10,80(sp)
    4884:	04c12d83          	lw	s11,76(sp)
    4888:	08010113          	add	sp,sp,128
    488c:	00008067          	ret
    4890:	ee060ae3          	beqz	a2,4784 <fatfs_add_file_entry+0x114>
    4894:	00000b13          	li	s6,0
    4898:	ec5ff06f          	j	475c <fatfs_add_file_entry+0xec>
    489c:	00842583          	lw	a1,8(s0)
    48a0:	02010613          	add	a2,sp,32
    48a4:	00040513          	mv	a0,s0
    48a8:	fffff097          	auipc	ra,0xfffff
    48ac:	3e8080e7          	jalr	1000(ra) # 3c90 <fatfs_find_blank_cluster>
    48b0:	0c050863          	beqz	a0,4980 <fatfs_add_file_entry+0x310>
    48b4:	02012c83          	lw	s9,32(sp)
    48b8:	00812583          	lw	a1,8(sp)
    48bc:	00040513          	mv	a0,s0
    48c0:	000c8613          	mv	a2,s9
    48c4:	fffff097          	auipc	ra,0xfffff
    48c8:	674080e7          	jalr	1652(ra) # 3f38 <fatfs_fat_add_cluster_to_chain>
    48cc:	0a050a63          	beqz	a0,4980 <fatfs_add_file_entry+0x310>
    48d0:	20000613          	li	a2,512
    48d4:	00000593          	li	a1,0
    48d8:	04440513          	add	a0,s0,68
    48dc:	ffffd097          	auipc	ra,0xffffd
    48e0:	9ec080e7          	jalr	-1556(ra) # 12c8 <memset>
    48e4:	00000d13          	li	s10,0
    48e8:	00044783          	lbu	a5,0(s0)
    48ec:	00fd6a63          	bltu	s10,a5,4900 <fatfs_add_file_entry+0x290>
    48f0:	ea0b16e3          	bnez	s6,479c <fatfs_add_file_entry+0x12c>
    48f4:	00048993          	mv	s3,s1
    48f8:	00000a13          	li	s4,0
    48fc:	ea1ff06f          	j	479c <fatfs_add_file_entry+0x12c>
    4900:	00000693          	li	a3,0
    4904:	000d0613          	mv	a2,s10
    4908:	000c8593          	mv	a1,s9
    490c:	00040513          	mv	a0,s0
    4910:	ffffd097          	auipc	ra,0xffffd
    4914:	4e4080e7          	jalr	1252(ra) # 1df4 <fatfs_write_sector>
    4918:	06050463          	beqz	a0,4980 <fatfs_add_file_entry+0x310>
    491c:	001d0d13          	add	s10,s10,1
    4920:	0ffd7d13          	zext.b	s10,s10
    4924:	fc5ff06f          	j	48e8 <fatfs_add_file_entry+0x278>
    4928:	001b0b13          	add	s6,s6,1
    492c:	ea9ff06f          	j	47d4 <fatfs_add_file_entry+0x164>
    4930:	00c12503          	lw	a0,12(sp)
    4934:	fff90913          	add	s2,s2,-1
    4938:	00048693          	mv	a3,s1
    493c:	00090613          	mv	a2,s2
    4940:	000c0593          	mv	a1,s8
    4944:	ffffe097          	auipc	ra,0xffffe
    4948:	80c080e7          	jalr	-2036(ra) # 2150 <fatfs_filename_to_lfn>
    494c:	00100d13          	li	s10,1
    4950:	00100713          	li	a4,1
    4954:	001b8793          	add	a5,s7,1
    4958:	0ff7fb93          	zext.b	s7,a5
    495c:	020c0c13          	add	s8,s8,32
    4960:	ebbb90e3          	bne	s7,s11,4800 <fatfs_add_file_entry+0x190>
    4964:	fc0702e3          	beqz	a4,4928 <fatfs_add_file_entry+0x2b8>
    4968:	03842783          	lw	a5,56(s0)
    496c:	24442503          	lw	a0,580(s0)
    4970:	00100613          	li	a2,1
    4974:	000c8593          	mv	a1,s9
    4978:	000780e7          	jalr	a5
    497c:	fa0516e3          	bnez	a0,4928 <fatfs_add_file_entry+0x2b8>
    4980:	00000513          	li	a0,0
    4984:	ed1ff06f          	j	4854 <fatfs_add_file_entry+0x1e4>

00004988 <fl_fopen>:
    4988:	000057b7          	lui	a5,0x5
    498c:	0b87a783          	lw	a5,184(a5) # 50b8 <_filelib_init>
    4990:	fa010113          	add	sp,sp,-96
    4994:	04812c23          	sw	s0,88(sp)
    4998:	05512223          	sw	s5,68(sp)
    499c:	04112e23          	sw	ra,92(sp)
    49a0:	04912a23          	sw	s1,84(sp)
    49a4:	05212823          	sw	s2,80(sp)
    49a8:	05312623          	sw	s3,76(sp)
    49ac:	05412423          	sw	s4,72(sp)
    49b0:	05612023          	sw	s6,64(sp)
    49b4:	03712e23          	sw	s7,60(sp)
    49b8:	03812c23          	sw	s8,56(sp)
    49bc:	03912a23          	sw	s9,52(sp)
    49c0:	00050a93          	mv	s5,a0
    49c4:	00058413          	mv	s0,a1
    49c8:	00079663          	bnez	a5,49d4 <fl_fopen+0x4c>
    49cc:	ffffd097          	auipc	ra,0xffffd
    49d0:	4e4080e7          	jalr	1252(ra) # 1eb0 <fl_init>
    49d4:	000057b7          	lui	a5,0x5
    49d8:	0b47a783          	lw	a5,180(a5) # 50b4 <_filelib_valid>
    49dc:	3a078463          	beqz	a5,4d84 <fl_fopen+0x3fc>
    49e0:	3a0a8263          	beqz	s5,4d84 <fl_fopen+0x3fc>
    49e4:	16040063          	beqz	s0,4b44 <fl_fopen+0x1bc>
    49e8:	00040513          	mv	a0,s0
    49ec:	ffffd097          	auipc	ra,0xffffd
    49f0:	91c080e7          	jalr	-1764(ra) # 1308 <strlen>
    49f4:	00000493          	li	s1,0
    49f8:	00000713          	li	a4,0
    49fc:	05700693          	li	a3,87
    4a00:	07200613          	li	a2,114
    4a04:	07700813          	li	a6,119
    4a08:	06100893          	li	a7,97
    4a0c:	06200313          	li	t1,98
    4a10:	04100593          	li	a1,65
    4a14:	04200e13          	li	t3,66
    4a18:	05200e93          	li	t4,82
    4a1c:	02b00f13          	li	t5,43
    4a20:	06a74063          	blt	a4,a0,4a80 <fl_fopen+0xf8>
    4a24:	00009937          	lui	s2,0x9
    4a28:	39490793          	add	a5,s2,916 # 9394 <_fs>
    4a2c:	0387a783          	lw	a5,56(a5)
    4a30:	39490b93          	add	s7,s2,916
    4a34:	00079463          	bnez	a5,4a3c <fl_fopen+0xb4>
    4a38:	0d94f493          	and	s1,s1,217
    4a3c:	03cba783          	lw	a5,60(s7)
    4a40:	00078463          	beqz	a5,4a48 <fl_fopen+0xc0>
    4a44:	000780e7          	jalr	a5
    4a48:	0014f993          	and	s3,s1,1
    4a4c:	0c099263          	bnez	s3,4b10 <fl_fopen+0x188>
    4a50:	0204f793          	and	a5,s1,32
    4a54:	0e078063          	beqz	a5,4b34 <fl_fopen+0x1ac>
    4a58:	038ba783          	lw	a5,56(s7)
    4a5c:	12079063          	bnez	a5,4b7c <fl_fopen+0x1f4>
    4a60:	0064f793          	and	a5,s1,6
    4a64:	0c078863          	beqz	a5,4b34 <fl_fopen+0x1ac>
    4a68:	000a8513          	mv	a0,s5
    4a6c:	fffff097          	auipc	ra,0xfffff
    4a70:	9a4080e7          	jalr	-1628(ra) # 3410 <_open_file>
    4a74:	00050413          	mv	s0,a0
    4a78:	30051263          	bnez	a0,4d7c <fl_fopen+0x3f4>
    4a7c:	0b80006f          	j	4b34 <fl_fopen+0x1ac>
    4a80:	00e407b3          	add	a5,s0,a4
    4a84:	0007c783          	lbu	a5,0(a5)
    4a88:	04d78463          	beq	a5,a3,4ad0 <fl_fopen+0x148>
    4a8c:	02f6e463          	bltu	a3,a5,4ab4 <fl_fopen+0x12c>
    4a90:	04b78463          	beq	a5,a1,4ad8 <fl_fopen+0x150>
    4a94:	00f5e863          	bltu	a1,a5,4aa4 <fl_fopen+0x11c>
    4a98:	05e78463          	beq	a5,t5,4ae0 <fl_fopen+0x158>
    4a9c:	00170713          	add	a4,a4,1
    4aa0:	f81ff06f          	j	4a20 <fl_fopen+0x98>
    4aa4:	03c78063          	beq	a5,t3,4ac4 <fl_fopen+0x13c>
    4aa8:	ffd79ae3          	bne	a5,t4,4a9c <fl_fopen+0x114>
    4aac:	0014e493          	or	s1,s1,1
    4ab0:	fedff06f          	j	4a9c <fl_fopen+0x114>
    4ab4:	fec78ce3          	beq	a5,a2,4aac <fl_fopen+0x124>
    4ab8:	00f66a63          	bltu	a2,a5,4acc <fl_fopen+0x144>
    4abc:	01178e63          	beq	a5,a7,4ad8 <fl_fopen+0x150>
    4ac0:	fc679ee3          	bne	a5,t1,4a9c <fl_fopen+0x114>
    4ac4:	0084e493          	or	s1,s1,8
    4ac8:	fd5ff06f          	j	4a9c <fl_fopen+0x114>
    4acc:	fd0798e3          	bne	a5,a6,4a9c <fl_fopen+0x114>
    4ad0:	0324e493          	or	s1,s1,50
    4ad4:	fc9ff06f          	j	4a9c <fl_fopen+0x114>
    4ad8:	0264e493          	or	s1,s1,38
    4adc:	fc1ff06f          	j	4a9c <fl_fopen+0x114>
    4ae0:	0014f793          	and	a5,s1,1
    4ae4:	00078663          	beqz	a5,4af0 <fl_fopen+0x168>
    4ae8:	0024e493          	or	s1,s1,2
    4aec:	fb1ff06f          	j	4a9c <fl_fopen+0x114>
    4af0:	0024f793          	and	a5,s1,2
    4af4:	00078663          	beqz	a5,4b00 <fl_fopen+0x178>
    4af8:	0314e493          	or	s1,s1,49
    4afc:	fa1ff06f          	j	4a9c <fl_fopen+0x114>
    4b00:	0044f793          	and	a5,s1,4
    4b04:	f8078ce3          	beqz	a5,4a9c <fl_fopen+0x114>
    4b08:	0274e493          	or	s1,s1,39
    4b0c:	f91ff06f          	j	4a9c <fl_fopen+0x114>
    4b10:	000a8513          	mv	a0,s5
    4b14:	fffff097          	auipc	ra,0xfffff
    4b18:	8fc080e7          	jalr	-1796(ra) # 3410 <_open_file>
    4b1c:	00050413          	mv	s0,a0
    4b20:	24051e63          	bnez	a0,4d7c <fl_fopen+0x3f4>
    4b24:	0204f793          	and	a5,s1,32
    4b28:	00078663          	beqz	a5,4b34 <fl_fopen+0x1ac>
    4b2c:	038ba783          	lw	a5,56(s7)
    4b30:	0c079663          	bnez	a5,4bfc <fl_fopen+0x274>
    4b34:	00000413          	li	s0,0
    4b38:	040ba783          	lw	a5,64(s7)
    4b3c:	00078463          	beqz	a5,4b44 <fl_fopen+0x1bc>
    4b40:	000780e7          	jalr	a5
    4b44:	05c12083          	lw	ra,92(sp)
    4b48:	00040513          	mv	a0,s0
    4b4c:	05812403          	lw	s0,88(sp)
    4b50:	05412483          	lw	s1,84(sp)
    4b54:	05012903          	lw	s2,80(sp)
    4b58:	04c12983          	lw	s3,76(sp)
    4b5c:	04812a03          	lw	s4,72(sp)
    4b60:	04412a83          	lw	s5,68(sp)
    4b64:	04012b03          	lw	s6,64(sp)
    4b68:	03c12b83          	lw	s7,60(sp)
    4b6c:	03812c03          	lw	s8,56(sp)
    4b70:	03412c83          	lw	s9,52(sp)
    4b74:	06010113          	add	sp,sp,96
    4b78:	00008067          	ret
    4b7c:	ffffd097          	auipc	ra,0xffffd
    4b80:	13c080e7          	jalr	316(ra) # 1cb8 <_allocate_file>
    4b84:	00050413          	mv	s0,a0
    4b88:	ec050ce3          	beqz	a0,4a60 <fl_fopen+0xd8>
    4b8c:	01440c13          	add	s8,s0,20
    4b90:	10400613          	li	a2,260
    4b94:	00000593          	li	a1,0
    4b98:	000c0513          	mv	a0,s8
    4b9c:	ffffc097          	auipc	ra,0xffffc
    4ba0:	72c080e7          	jalr	1836(ra) # 12c8 <memset>
    4ba4:	11840b13          	add	s6,s0,280
    4ba8:	10400613          	li	a2,260
    4bac:	00000593          	li	a1,0
    4bb0:	000b0513          	mv	a0,s6
    4bb4:	ffffc097          	auipc	ra,0xffffc
    4bb8:	714080e7          	jalr	1812(ra) # 12c8 <memset>
    4bbc:	10400713          	li	a4,260
    4bc0:	000b0693          	mv	a3,s6
    4bc4:	10400613          	li	a2,260
    4bc8:	000c0593          	mv	a1,s8
    4bcc:	000a8513          	mv	a0,s5
    4bd0:	ffffe097          	auipc	ra,0xffffe
    4bd4:	bac080e7          	jalr	-1108(ra) # 277c <fatfs_split_path>
    4bd8:	fff00793          	li	a5,-1
    4bdc:	02f51a63          	bne	a0,a5,4c10 <fl_fopen+0x288>
    4be0:	00040513          	mv	a0,s0
    4be4:	ffffd097          	auipc	ra,0xffffd
    4be8:	148080e7          	jalr	328(ra) # 1d2c <_free_file>
    4bec:	f40994e3          	bnez	s3,4b34 <fl_fopen+0x1ac>
    4bf0:	0204f793          	and	a5,s1,32
    4bf4:	f40780e3          	beqz	a5,4b34 <fl_fopen+0x1ac>
    4bf8:	e69ff06f          	j	4a60 <fl_fopen+0xd8>
    4bfc:	ffffd097          	auipc	ra,0xffffd
    4c00:	0bc080e7          	jalr	188(ra) # 1cb8 <_allocate_file>
    4c04:	00050413          	mv	s0,a0
    4c08:	f80512e3          	bnez	a0,4b8c <fl_fopen+0x204>
    4c0c:	f29ff06f          	j	4b34 <fl_fopen+0x1ac>
    4c10:	00040513          	mv	a0,s0
    4c14:	ffffe097          	auipc	ra,0xffffe
    4c18:	dbc080e7          	jalr	-580(ra) # 29d0 <_check_file_open>
    4c1c:	00050a13          	mv	s4,a0
    4c20:	fc0510e3          	bnez	a0,4be0 <fl_fopen+0x258>
    4c24:	01444783          	lbu	a5,20(s0)
    4c28:	0c079263          	bnez	a5,4cec <fl_fopen+0x364>
    4c2c:	008ba783          	lw	a5,8(s7)
    4c30:	00f42023          	sw	a5,0(s0)
    4c34:	00042583          	lw	a1,0(s0)
    4c38:	01010693          	add	a3,sp,16
    4c3c:	000b0613          	mv	a2,s6
    4c40:	39490513          	add	a0,s2,916
    4c44:	ffffe097          	auipc	ra,0xffffe
    4c48:	418080e7          	jalr	1048(ra) # 305c <fatfs_get_file_entry>
    4c4c:	00100793          	li	a5,1
    4c50:	f8f508e3          	beq	a0,a5,4be0 <fl_fopen+0x258>
    4c54:	00042223          	sw	zero,4(s0)
    4c58:	00100693          	li	a3,1
    4c5c:	00440613          	add	a2,s0,4
    4c60:	00100593          	li	a1,1
    4c64:	39490513          	add	a0,s2,916
    4c68:	00000097          	auipc	ra,0x0
    4c6c:	8ec080e7          	jalr	-1812(ra) # 4554 <fatfs_allocate_free_space>
    4c70:	f60508e3          	beqz	a0,4be0 <fl_fopen+0x258>
    4c74:	000b0593          	mv	a1,s6
    4c78:	00410513          	add	a0,sp,4
    4c7c:	ffffd097          	auipc	ra,0xffffd
    4c80:	6a4080e7          	jalr	1700(ra) # 2320 <fatfs_lfn_create_sfn>
    4c84:	21c40c13          	add	s8,s0,540
    4c88:	00b00613          	li	a2,11
    4c8c:	00410593          	add	a1,sp,4
    4c90:	000c0513          	mv	a0,s8
    4c94:	00002cb7          	lui	s9,0x2
    4c98:	ffffc097          	auipc	ra,0xffffc
    4c9c:	64c080e7          	jalr	1612(ra) # 12e4 <memcpy>
    4ca0:	70fc8c93          	add	s9,s9,1807 # 270f <fatfs_get_substring+0x87>
    4ca4:	00042583          	lw	a1,0(s0)
    4ca8:	000c0613          	mv	a2,s8
    4cac:	39490513          	add	a0,s2,916
    4cb0:	fffff097          	auipc	ra,0xfffff
    4cb4:	8d8080e7          	jalr	-1832(ra) # 3588 <fatfs_sfn_exists>
    4cb8:	04050663          	beqz	a0,4d04 <fl_fopen+0x37c>
    4cbc:	001a0a13          	add	s4,s4,1
    4cc0:	059a0263          	beq	s4,s9,4d04 <fl_fopen+0x37c>
    4cc4:	000b0593          	mv	a1,s6
    4cc8:	00410513          	add	a0,sp,4
    4ccc:	ffffd097          	auipc	ra,0xffffd
    4cd0:	654080e7          	jalr	1620(ra) # 2320 <fatfs_lfn_create_sfn>
    4cd4:	000a0613          	mv	a2,s4
    4cd8:	00410593          	add	a1,sp,4
    4cdc:	000c0513          	mv	a0,s8
    4ce0:	ffffd097          	auipc	ra,0xffffd
    4ce4:	7bc080e7          	jalr	1980(ra) # 249c <fatfs_lfn_generate_tail>
    4ce8:	fbdff06f          	j	4ca4 <fl_fopen+0x31c>
    4cec:	00040593          	mv	a1,s0
    4cf0:	000c0513          	mv	a0,s8
    4cf4:	ffffe097          	auipc	ra,0xffffe
    4cf8:	568080e7          	jalr	1384(ra) # 325c <_open_directory>
    4cfc:	f2051ce3          	bnez	a0,4c34 <fl_fopen+0x2ac>
    4d00:	ee1ff06f          	j	4be0 <fl_fopen+0x258>
    4d04:	00442703          	lw	a4,4(s0)
    4d08:	000027b7          	lui	a5,0x2
    4d0c:	70f78793          	add	a5,a5,1807 # 270f <fatfs_get_substring+0x87>
    4d10:	00070593          	mv	a1,a4
    4d14:	02fa0663          	beq	s4,a5,4d40 <fl_fopen+0x3b8>
    4d18:	00042583          	lw	a1,0(s0)
    4d1c:	00000813          	li	a6,0
    4d20:	00000793          	li	a5,0
    4d24:	000c0693          	mv	a3,s8
    4d28:	000b0613          	mv	a2,s6
    4d2c:	39490513          	add	a0,s2,916
    4d30:	00000097          	auipc	ra,0x0
    4d34:	940080e7          	jalr	-1728(ra) # 4670 <fatfs_add_file_entry>
    4d38:	00051c63          	bnez	a0,4d50 <fl_fopen+0x3c8>
    4d3c:	00442583          	lw	a1,4(s0)
    4d40:	39490513          	add	a0,s2,916
    4d44:	fffff097          	auipc	ra,0xfffff
    4d48:	184080e7          	jalr	388(ra) # 3ec8 <fatfs_free_cluster_chain>
    4d4c:	e95ff06f          	j	4be0 <fl_fopen+0x258>
    4d50:	fff00793          	li	a5,-1
    4d54:	00042623          	sw	zero,12(s0)
    4d58:	00042423          	sw	zero,8(s0)
    4d5c:	42f42823          	sw	a5,1072(s0)
    4d60:	42042a23          	sw	zero,1076(s0)
    4d64:	00042823          	sw	zero,16(s0)
    4d68:	22f42423          	sw	a5,552(s0)
    4d6c:	22f42623          	sw	a5,556(s0)
    4d70:	39490513          	add	a0,s2,916
    4d74:	ffffe097          	auipc	ra,0xffffe
    4d78:	03c080e7          	jalr	60(ra) # 2db0 <fatfs_fat_purge>
    4d7c:	42940c23          	sb	s1,1080(s0)
    4d80:	db9ff06f          	j	4b38 <fl_fopen+0x1b0>
    4d84:	00000413          	li	s0,0
    4d88:	dbdff06f          	j	4b44 <fl_fopen+0x1bc>

00004d8c <cmd16>:
    4d8c:	02000050 00001500                       P.......

00004d94 <acmd41>:
    4d94:	00004069 00000100                       i@......

00004d9c <cmd55>:
    4d9c:	00000077 00000100                       w.......

00004da4 <cmd8>:
    4da4:	01000048 000087aa                       H.......

00004dac <cmd0>:
    4dac:	00000040 00009500                       @.......

00004db4 <AUDIO>:
    4db4:	00018000                                ....

00004db8 <BUTTONS>:
    4db8:	00010100                                ....

00004dbc <SDCARD>:
    4dbc:	00010080                                ....

00004dc0 <OLED_RST>:
    4dc0:	00010010                                ....

00004dc4 <OLED>:
    4dc4:	00010008                                ....

00004dc8 <LEDS>:
    4dc8:	00010004 74696e69 2e2e2e20 00000020     ....init ... ...
    4dd8:	656e6f64 00000a2e 6e6f732f 00000067     done..../song...
    4de8:	66206f4e 73656c69 756f6620 6920646e     No files found i
    4df8:	732f206e 2e676e6f 0000000a 3d202020     n /song.....   =
    4e08:	6f73203d 2073676e 6f732f28 2029676e     = songs (/song) 
    4e18:	20203d3d 000a0a20 203e6425 000a7325     ==   ...%d> %s..
    4e28:	00006272 656c6966 746f6e20 756f6620     rb..file not fou
    4e38:	0a2e646e 00000000 6973756d 69662063     nd......music fi
    4e48:	6620656c 646e756f 00000a2e 79616c70     le found....play
    4e58:	20676e69 202e2e2e 00000000              ing ... ....

00004e64 <font>:
    4e64:	00000000 00002f00 00030000 14000003     ...../..........
    4e74:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4e84:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4e94:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4ea4:	00080800 00200000 20000000 02040810     ...... .... ....
    4eb4:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4ec4:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4ed4:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4ee4:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4ef4:	00141400 0a110000 01000004 0007052d     ............-...
    4f04:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4f14:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    4f24:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    4f34:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4f44:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4f54:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4f64:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4f74:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4f84:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4f94:	003f2102 01020000 20000201 00000020     .!?........  ...
    4fa4:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4fb4:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4fc4:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4fd4:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4fe4:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4ff4:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5004:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5014:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5024:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5034:	043f2100 02010000 00000102 00000000     .!?.............
    5044:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    5054:	00000000 00000001 00000003 00000005     ................
    5064:	00000007 00000009 0000000e 00000010     ................
    5074:	00000012 00000014 00000016 00000018     ................
    5084:	0000001c 0000001e                       ........

0000508c <nfiles>:
    508c:	00000000                                ....

00005090 <sdcard_while_loading_callback>:
    5090:	00000000                                ....

00005094 <back_color>:
	...

00005095 <front_color>:
    5095:	                                         ...

00005098 <cursor_y>:
    5098:	00000000                                ....

0000509c <cursor_x>:
    509c:	00000000                                ....

000050a0 <f_putchar>:
    50a0:	00000000                                ....

000050a4 <_free_file_list>:
	...

000050ac <_open_file_list>:
	...

000050b4 <_filelib_valid>:
    50b4:	00000000                                ....

000050b8 <_filelib_init>:
    50b8:	00000000                                ....
