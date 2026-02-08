
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	018080e7          	jalr	24(ra) # 1c <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <main>:
      1c:	000067b7          	lui	a5,0x6
      20:	e147a783          	lw	a5,-492(a5) # 5e14 <RGBSEL>
      24:	fe010113          	add	sp,sp,-32 # ffe0 <Songs+0x8e90>
      28:	00812c23          	sw	s0,24(sp)
      2c:	00912a23          	sw	s1,20(sp)
      30:	01212823          	sw	s2,16(sp)
      34:	01312623          	sw	s3,12(sp)
      38:	00112e23          	sw	ra,28(sp)
      3c:	00100713          	li	a4,1
      40:	00006437          	lui	s0,0x6
      44:	00e7a023          	sw	a4,0(a5)
      48:	de042783          	lw	a5,-544(s0) # 5de0 <back>
      4c:	00006937          	lui	s2,0x6
      50:	00100993          	li	s3,1
      54:	0007a023          	sw	zero,0(a5)
      58:	000064b7          	lui	s1,0x6
      5c:	00004097          	auipc	ra,0x4
      60:	79c080e7          	jalr	1948(ra) # 47f8 <Init_menu>
      64:	2ea92e23          	sw	a0,764(s2) # 62fc <situation>
      68:	04051463          	bnez	a0,b0 <main+0x94>
      6c:	de042583          	lw	a1,-544(s0)
      70:	34848513          	add	a0,s1,840 # 6348 <Album>
      74:	00005097          	auipc	ra,0x5
      78:	bb4080e7          	jalr	-1100(ra) # 4c28 <audio_menu>
      7c:	de042583          	lw	a1,-544(s0)
      80:	0005a783          	lw	a5,0(a1)
      84:	00078663          	beqz	a5,90 <main+0x74>
      88:	0005a023          	sw	zero,0(a1)
      8c:	fd1ff06f          	j	5c <main+0x40>
      90:	34848513          	add	a0,s1,840
      94:	00005097          	auipc	ra,0x5
      98:	210080e7          	jalr	528(ra) # 52a4 <Select_and_play_Song>
      9c:	de042783          	lw	a5,-544(s0)
      a0:	0007a703          	lw	a4,0(a5)
      a4:	fc0704e3          	beqz	a4,6c <main+0x50>
      a8:	0007a023          	sw	zero,0(a5)
      ac:	fc1ff06f          	j	6c <main+0x50>
      b0:	fb3516e3          	bne	a0,s3,5c <main+0x40>
      b4:	00006097          	auipc	ra,0x6
      b8:	b40080e7          	jalr	-1216(ra) # 5bf4 <Game_menu>
      bc:	fa1ff06f          	j	5c <main+0x40>

000000c0 <sdcard_ponder>:
      c0:	fe010113          	add	sp,sp,-32
      c4:	00812e23          	sw	s0,28(sp)
      c8:	02010413          	add	s0,sp,32
      cc:	fe042623          	sw	zero,-20(s0)
      d0:	fe042423          	sw	zero,-24(s0)
      d4:	0380006f          	j	10c <sdcard_ponder+0x4c>
      d8:	000067b7          	lui	a5,0x6
      dc:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
      e0:	fec42703          	lw	a4,-20(s0)
      e4:	00676713          	or	a4,a4,6
      e8:	00e7a023          	sw	a4,0(a5)
      ec:	00100713          	li	a4,1
      f0:	fec42783          	lw	a5,-20(s0)
      f4:	40f707b3          	sub	a5,a4,a5
      f8:	fef42623          	sw	a5,-20(s0)
      fc:	00000013          	nop
     100:	fe842783          	lw	a5,-24(s0)
     104:	00178793          	add	a5,a5,1
     108:	fef42423          	sw	a5,-24(s0)
     10c:	fe842703          	lw	a4,-24(s0)
     110:	00f00793          	li	a5,15
     114:	fce7d2e3          	bge	a5,a4,d8 <sdcard_ponder+0x18>
     118:	00000013          	nop
     11c:	00000013          	nop
     120:	01c12403          	lw	s0,28(sp)
     124:	02010113          	add	sp,sp,32
     128:	00008067          	ret

0000012c <sdcard_send>:
     12c:	fd010113          	add	sp,sp,-48
     130:	02112623          	sw	ra,44(sp)
     134:	02812423          	sw	s0,40(sp)
     138:	03010413          	add	s0,sp,48
     13c:	fca42e23          	sw	a0,-36(s0)
     140:	fe042623          	sw	zero,-20(s0)
     144:	fe042423          	sw	zero,-24(s0)
     148:	fdc42783          	lw	a5,-36(s0)
     14c:	fef42223          	sw	a5,-28(s0)
     150:	fe442783          	lw	a5,-28(s0)
     154:	4077d793          	sra	a5,a5,0x7
     158:	0017f793          	and	a5,a5,1
     15c:	fef42423          	sw	a5,-24(s0)
     160:	fec42783          	lw	a5,-20(s0)
     164:	fe442703          	lw	a4,-28(s0)
     168:	00f717b3          	sll	a5,a4,a5
     16c:	fef42223          	sw	a5,-28(s0)
     170:	fe842783          	lw	a5,-24(s0)
     174:	00179693          	sll	a3,a5,0x1
     178:	000067b7          	lui	a5,0x6
     17c:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     180:	fec42703          	lw	a4,-20(s0)
     184:	00e6e733          	or	a4,a3,a4
     188:	00e7a023          	sw	a4,0(a5)
     18c:	00100713          	li	a4,1
     190:	fec42783          	lw	a5,-20(s0)
     194:	40f707b3          	sub	a5,a4,a5
     198:	fef42623          	sw	a5,-20(s0)
     19c:	fe442783          	lw	a5,-28(s0)
     1a0:	4077d793          	sra	a5,a5,0x7
     1a4:	0017f793          	and	a5,a5,1
     1a8:	fef42423          	sw	a5,-24(s0)
     1ac:	fec42783          	lw	a5,-20(s0)
     1b0:	fe442703          	lw	a4,-28(s0)
     1b4:	00f717b3          	sll	a5,a4,a5
     1b8:	fef42223          	sw	a5,-28(s0)
     1bc:	fe842783          	lw	a5,-24(s0)
     1c0:	00179693          	sll	a3,a5,0x1
     1c4:	000067b7          	lui	a5,0x6
     1c8:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     1cc:	fec42703          	lw	a4,-20(s0)
     1d0:	00e6e733          	or	a4,a3,a4
     1d4:	00e7a023          	sw	a4,0(a5)
     1d8:	00100713          	li	a4,1
     1dc:	fec42783          	lw	a5,-20(s0)
     1e0:	40f707b3          	sub	a5,a4,a5
     1e4:	fef42623          	sw	a5,-20(s0)
     1e8:	fe442783          	lw	a5,-28(s0)
     1ec:	4077d793          	sra	a5,a5,0x7
     1f0:	0017f793          	and	a5,a5,1
     1f4:	fef42423          	sw	a5,-24(s0)
     1f8:	fec42783          	lw	a5,-20(s0)
     1fc:	fe442703          	lw	a4,-28(s0)
     200:	00f717b3          	sll	a5,a4,a5
     204:	fef42223          	sw	a5,-28(s0)
     208:	fe842783          	lw	a5,-24(s0)
     20c:	00179693          	sll	a3,a5,0x1
     210:	000067b7          	lui	a5,0x6
     214:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     218:	fec42703          	lw	a4,-20(s0)
     21c:	00e6e733          	or	a4,a3,a4
     220:	00e7a023          	sw	a4,0(a5)
     224:	00100713          	li	a4,1
     228:	fec42783          	lw	a5,-20(s0)
     22c:	40f707b3          	sub	a5,a4,a5
     230:	fef42623          	sw	a5,-20(s0)
     234:	fe442783          	lw	a5,-28(s0)
     238:	4077d793          	sra	a5,a5,0x7
     23c:	0017f793          	and	a5,a5,1
     240:	fef42423          	sw	a5,-24(s0)
     244:	fec42783          	lw	a5,-20(s0)
     248:	fe442703          	lw	a4,-28(s0)
     24c:	00f717b3          	sll	a5,a4,a5
     250:	fef42223          	sw	a5,-28(s0)
     254:	fe842783          	lw	a5,-24(s0)
     258:	00179693          	sll	a3,a5,0x1
     25c:	000067b7          	lui	a5,0x6
     260:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     264:	fec42703          	lw	a4,-20(s0)
     268:	00e6e733          	or	a4,a3,a4
     26c:	00e7a023          	sw	a4,0(a5)
     270:	00100713          	li	a4,1
     274:	fec42783          	lw	a5,-20(s0)
     278:	40f707b3          	sub	a5,a4,a5
     27c:	fef42623          	sw	a5,-20(s0)
     280:	fe442783          	lw	a5,-28(s0)
     284:	4077d793          	sra	a5,a5,0x7
     288:	0017f793          	and	a5,a5,1
     28c:	fef42423          	sw	a5,-24(s0)
     290:	fec42783          	lw	a5,-20(s0)
     294:	fe442703          	lw	a4,-28(s0)
     298:	00f717b3          	sll	a5,a4,a5
     29c:	fef42223          	sw	a5,-28(s0)
     2a0:	fe842783          	lw	a5,-24(s0)
     2a4:	00179693          	sll	a3,a5,0x1
     2a8:	000067b7          	lui	a5,0x6
     2ac:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     2b0:	fec42703          	lw	a4,-20(s0)
     2b4:	00e6e733          	or	a4,a3,a4
     2b8:	00e7a023          	sw	a4,0(a5)
     2bc:	00100713          	li	a4,1
     2c0:	fec42783          	lw	a5,-20(s0)
     2c4:	40f707b3          	sub	a5,a4,a5
     2c8:	fef42623          	sw	a5,-20(s0)
     2cc:	fe442783          	lw	a5,-28(s0)
     2d0:	4077d793          	sra	a5,a5,0x7
     2d4:	0017f793          	and	a5,a5,1
     2d8:	fef42423          	sw	a5,-24(s0)
     2dc:	fec42783          	lw	a5,-20(s0)
     2e0:	fe442703          	lw	a4,-28(s0)
     2e4:	00f717b3          	sll	a5,a4,a5
     2e8:	fef42223          	sw	a5,-28(s0)
     2ec:	fe842783          	lw	a5,-24(s0)
     2f0:	00179693          	sll	a3,a5,0x1
     2f4:	000067b7          	lui	a5,0x6
     2f8:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     2fc:	fec42703          	lw	a4,-20(s0)
     300:	00e6e733          	or	a4,a3,a4
     304:	00e7a023          	sw	a4,0(a5)
     308:	00100713          	li	a4,1
     30c:	fec42783          	lw	a5,-20(s0)
     310:	40f707b3          	sub	a5,a4,a5
     314:	fef42623          	sw	a5,-20(s0)
     318:	fe442783          	lw	a5,-28(s0)
     31c:	4077d793          	sra	a5,a5,0x7
     320:	0017f793          	and	a5,a5,1
     324:	fef42423          	sw	a5,-24(s0)
     328:	fec42783          	lw	a5,-20(s0)
     32c:	fe442703          	lw	a4,-28(s0)
     330:	00f717b3          	sll	a5,a4,a5
     334:	fef42223          	sw	a5,-28(s0)
     338:	fe842783          	lw	a5,-24(s0)
     33c:	00179693          	sll	a3,a5,0x1
     340:	000067b7          	lui	a5,0x6
     344:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     348:	fec42703          	lw	a4,-20(s0)
     34c:	00e6e733          	or	a4,a3,a4
     350:	00e7a023          	sw	a4,0(a5)
     354:	00100713          	li	a4,1
     358:	fec42783          	lw	a5,-20(s0)
     35c:	40f707b3          	sub	a5,a4,a5
     360:	fef42623          	sw	a5,-20(s0)
     364:	fe442783          	lw	a5,-28(s0)
     368:	4077d793          	sra	a5,a5,0x7
     36c:	0017f793          	and	a5,a5,1
     370:	fef42423          	sw	a5,-24(s0)
     374:	fec42783          	lw	a5,-20(s0)
     378:	fe442703          	lw	a4,-28(s0)
     37c:	00f717b3          	sll	a5,a4,a5
     380:	fef42223          	sw	a5,-28(s0)
     384:	fe842783          	lw	a5,-24(s0)
     388:	00179693          	sll	a3,a5,0x1
     38c:	000067b7          	lui	a5,0x6
     390:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     394:	fec42703          	lw	a4,-20(s0)
     398:	00e6e733          	or	a4,a3,a4
     39c:	00e7a023          	sw	a4,0(a5)
     3a0:	00100713          	li	a4,1
     3a4:	fec42783          	lw	a5,-20(s0)
     3a8:	40f707b3          	sub	a5,a4,a5
     3ac:	fef42623          	sw	a5,-20(s0)
     3b0:	fe442783          	lw	a5,-28(s0)
     3b4:	4077d793          	sra	a5,a5,0x7
     3b8:	0017f793          	and	a5,a5,1
     3bc:	fef42423          	sw	a5,-24(s0)
     3c0:	fec42783          	lw	a5,-20(s0)
     3c4:	fe442703          	lw	a4,-28(s0)
     3c8:	00f717b3          	sll	a5,a4,a5
     3cc:	fef42223          	sw	a5,-28(s0)
     3d0:	fe842783          	lw	a5,-24(s0)
     3d4:	00179693          	sll	a3,a5,0x1
     3d8:	000067b7          	lui	a5,0x6
     3dc:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     3e0:	fec42703          	lw	a4,-20(s0)
     3e4:	00e6e733          	or	a4,a3,a4
     3e8:	00e7a023          	sw	a4,0(a5)
     3ec:	00100713          	li	a4,1
     3f0:	fec42783          	lw	a5,-20(s0)
     3f4:	40f707b3          	sub	a5,a4,a5
     3f8:	fef42623          	sw	a5,-20(s0)
     3fc:	fe442783          	lw	a5,-28(s0)
     400:	4077d793          	sra	a5,a5,0x7
     404:	0017f793          	and	a5,a5,1
     408:	fef42423          	sw	a5,-24(s0)
     40c:	fec42783          	lw	a5,-20(s0)
     410:	fe442703          	lw	a4,-28(s0)
     414:	00f717b3          	sll	a5,a4,a5
     418:	fef42223          	sw	a5,-28(s0)
     41c:	fe842783          	lw	a5,-24(s0)
     420:	00179693          	sll	a3,a5,0x1
     424:	000067b7          	lui	a5,0x6
     428:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     42c:	fec42703          	lw	a4,-20(s0)
     430:	00e6e733          	or	a4,a3,a4
     434:	00e7a023          	sw	a4,0(a5)
     438:	00100713          	li	a4,1
     43c:	fec42783          	lw	a5,-20(s0)
     440:	40f707b3          	sub	a5,a4,a5
     444:	fef42623          	sw	a5,-20(s0)
     448:	fe442783          	lw	a5,-28(s0)
     44c:	4077d793          	sra	a5,a5,0x7
     450:	0017f793          	and	a5,a5,1
     454:	fef42423          	sw	a5,-24(s0)
     458:	fec42783          	lw	a5,-20(s0)
     45c:	fe442703          	lw	a4,-28(s0)
     460:	00f717b3          	sll	a5,a4,a5
     464:	fef42223          	sw	a5,-28(s0)
     468:	fe842783          	lw	a5,-24(s0)
     46c:	00179693          	sll	a3,a5,0x1
     470:	000067b7          	lui	a5,0x6
     474:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     478:	fec42703          	lw	a4,-20(s0)
     47c:	00e6e733          	or	a4,a3,a4
     480:	00e7a023          	sw	a4,0(a5)
     484:	00100713          	li	a4,1
     488:	fec42783          	lw	a5,-20(s0)
     48c:	40f707b3          	sub	a5,a4,a5
     490:	fef42623          	sw	a5,-20(s0)
     494:	fe442783          	lw	a5,-28(s0)
     498:	4077d793          	sra	a5,a5,0x7
     49c:	0017f793          	and	a5,a5,1
     4a0:	fef42423          	sw	a5,-24(s0)
     4a4:	fec42783          	lw	a5,-20(s0)
     4a8:	fe442703          	lw	a4,-28(s0)
     4ac:	00f717b3          	sll	a5,a4,a5
     4b0:	fef42223          	sw	a5,-28(s0)
     4b4:	fe842783          	lw	a5,-24(s0)
     4b8:	00179693          	sll	a3,a5,0x1
     4bc:	000067b7          	lui	a5,0x6
     4c0:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     4c4:	fec42703          	lw	a4,-20(s0)
     4c8:	00e6e733          	or	a4,a3,a4
     4cc:	00e7a023          	sw	a4,0(a5)
     4d0:	00100713          	li	a4,1
     4d4:	fec42783          	lw	a5,-20(s0)
     4d8:	40f707b3          	sub	a5,a4,a5
     4dc:	fef42623          	sw	a5,-20(s0)
     4e0:	fe442783          	lw	a5,-28(s0)
     4e4:	4077d793          	sra	a5,a5,0x7
     4e8:	0017f793          	and	a5,a5,1
     4ec:	fef42423          	sw	a5,-24(s0)
     4f0:	fec42783          	lw	a5,-20(s0)
     4f4:	fe442703          	lw	a4,-28(s0)
     4f8:	00f717b3          	sll	a5,a4,a5
     4fc:	fef42223          	sw	a5,-28(s0)
     500:	fe842783          	lw	a5,-24(s0)
     504:	00179693          	sll	a3,a5,0x1
     508:	000067b7          	lui	a5,0x6
     50c:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     510:	fec42703          	lw	a4,-20(s0)
     514:	00e6e733          	or	a4,a3,a4
     518:	00e7a023          	sw	a4,0(a5)
     51c:	00100713          	li	a4,1
     520:	fec42783          	lw	a5,-20(s0)
     524:	40f707b3          	sub	a5,a4,a5
     528:	fef42623          	sw	a5,-20(s0)
     52c:	fe442783          	lw	a5,-28(s0)
     530:	4077d793          	sra	a5,a5,0x7
     534:	0017f793          	and	a5,a5,1
     538:	fef42423          	sw	a5,-24(s0)
     53c:	fec42783          	lw	a5,-20(s0)
     540:	fe442703          	lw	a4,-28(s0)
     544:	00f717b3          	sll	a5,a4,a5
     548:	fef42223          	sw	a5,-28(s0)
     54c:	fe842783          	lw	a5,-24(s0)
     550:	00179693          	sll	a3,a5,0x1
     554:	000067b7          	lui	a5,0x6
     558:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     55c:	fec42703          	lw	a4,-20(s0)
     560:	00e6e733          	or	a4,a3,a4
     564:	00e7a023          	sw	a4,0(a5)
     568:	00100713          	li	a4,1
     56c:	fec42783          	lw	a5,-20(s0)
     570:	40f707b3          	sub	a5,a4,a5
     574:	fef42623          	sw	a5,-20(s0)
     578:	fe442783          	lw	a5,-28(s0)
     57c:	4077d793          	sra	a5,a5,0x7
     580:	0017f793          	and	a5,a5,1
     584:	fef42423          	sw	a5,-24(s0)
     588:	fec42783          	lw	a5,-20(s0)
     58c:	fe442703          	lw	a4,-28(s0)
     590:	00f717b3          	sll	a5,a4,a5
     594:	fef42223          	sw	a5,-28(s0)
     598:	fe842783          	lw	a5,-24(s0)
     59c:	00179693          	sll	a3,a5,0x1
     5a0:	000067b7          	lui	a5,0x6
     5a4:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     5a8:	fec42703          	lw	a4,-20(s0)
     5ac:	00e6e733          	or	a4,a3,a4
     5b0:	00e7a023          	sw	a4,0(a5)
     5b4:	00100713          	li	a4,1
     5b8:	fec42783          	lw	a5,-20(s0)
     5bc:	40f707b3          	sub	a5,a4,a5
     5c0:	fef42623          	sw	a5,-20(s0)
     5c4:	fe442783          	lw	a5,-28(s0)
     5c8:	4077d793          	sra	a5,a5,0x7
     5cc:	0017f793          	and	a5,a5,1
     5d0:	fef42423          	sw	a5,-24(s0)
     5d4:	fec42783          	lw	a5,-20(s0)
     5d8:	fe442703          	lw	a4,-28(s0)
     5dc:	00f717b3          	sll	a5,a4,a5
     5e0:	fef42223          	sw	a5,-28(s0)
     5e4:	fe842783          	lw	a5,-24(s0)
     5e8:	00179693          	sll	a3,a5,0x1
     5ec:	000067b7          	lui	a5,0x6
     5f0:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     5f4:	fec42703          	lw	a4,-20(s0)
     5f8:	00e6e733          	or	a4,a3,a4
     5fc:	00e7a023          	sw	a4,0(a5)
     600:	00100713          	li	a4,1
     604:	fec42783          	lw	a5,-20(s0)
     608:	40f707b3          	sub	a5,a4,a5
     60c:	fef42623          	sw	a5,-20(s0)
     610:	000067b7          	lui	a5,0x6
     614:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     618:	00200713          	li	a4,2
     61c:	00e7a023          	sw	a4,0(a5)
     620:	000067b7          	lui	a5,0x6
     624:	3007a783          	lw	a5,768(a5) # 6300 <sdcard_while_loading_callback>
     628:	000780e7          	jalr	a5
     62c:	00000013          	nop
     630:	02c12083          	lw	ra,44(sp)
     634:	02812403          	lw	s0,40(sp)
     638:	03010113          	add	sp,sp,48
     63c:	00008067          	ret

00000640 <sdcard_read>:
     640:	fc010113          	add	sp,sp,-64
     644:	02112e23          	sw	ra,60(sp)
     648:	02812c23          	sw	s0,56(sp)
     64c:	04010413          	add	s0,sp,64
     650:	00050793          	mv	a5,a0
     654:	00058713          	mv	a4,a1
     658:	fcf407a3          	sb	a5,-49(s0)
     65c:	00070793          	mv	a5,a4
     660:	fcf40723          	sb	a5,-50(s0)
     664:	fce44783          	lbu	a5,-50(s0)
     668:	fef42223          	sw	a5,-28(s0)
     66c:	fcf44783          	lbu	a5,-49(s0)
     670:	fef42023          	sw	a5,-32(s0)
     674:	fe042623          	sw	zero,-20(s0)
     678:	0ff00793          	li	a5,255
     67c:	fef42423          	sw	a5,-24(s0)
     680:	0600006f          	j	6e0 <sdcard_read+0xa0>
     684:	000067b7          	lui	a5,0x6
     688:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     68c:	00300713          	li	a4,3
     690:	00e7a023          	sw	a4,0(a5)
     694:	fec42783          	lw	a5,-20(s0)
     698:	00178793          	add	a5,a5,1
     69c:	fef42623          	sw	a5,-20(s0)
     6a0:	000067b7          	lui	a5,0x6
     6a4:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     6a8:	00200713          	li	a4,2
     6ac:	00e7a023          	sw	a4,0(a5)
     6b0:	000067b7          	lui	a5,0x6
     6b4:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     6b8:	0007a783          	lw	a5,0(a5)
     6bc:	fcf42e23          	sw	a5,-36(s0)
     6c0:	fe842783          	lw	a5,-24(s0)
     6c4:	00179793          	sll	a5,a5,0x1
     6c8:	fdc42703          	lw	a4,-36(s0)
     6cc:	00f767b3          	or	a5,a4,a5
     6d0:	fef42423          	sw	a5,-24(s0)
     6d4:	000067b7          	lui	a5,0x6
     6d8:	3007a783          	lw	a5,768(a5) # 6300 <sdcard_while_loading_callback>
     6dc:	000780e7          	jalr	a5
     6e0:	fe442783          	lw	a5,-28(s0)
     6e4:	00078e63          	beqz	a5,700 <sdcard_read+0xc0>
     6e8:	fe042783          	lw	a5,-32(s0)
     6ec:	fff78793          	add	a5,a5,-1
     6f0:	fe842703          	lw	a4,-24(s0)
     6f4:	40f757b3          	sra	a5,a4,a5
     6f8:	0017f793          	and	a5,a5,1
     6fc:	f80794e3          	bnez	a5,684 <sdcard_read+0x44>
     700:	fe442783          	lw	a5,-28(s0)
     704:	00079863          	bnez	a5,714 <sdcard_read+0xd4>
     708:	fec42703          	lw	a4,-20(s0)
     70c:	fe042783          	lw	a5,-32(s0)
     710:	f6f74ae3          	blt	a4,a5,684 <sdcard_read+0x44>
     714:	fe842783          	lw	a5,-24(s0)
     718:	0ff7f793          	zext.b	a5,a5
     71c:	00078513          	mv	a0,a5
     720:	03c12083          	lw	ra,60(sp)
     724:	03812403          	lw	s0,56(sp)
     728:	04010113          	add	sp,sp,64
     72c:	00008067          	ret

00000730 <sdcard_get>:
     730:	fd010113          	add	sp,sp,-48
     734:	02112623          	sw	ra,44(sp)
     738:	02812423          	sw	s0,40(sp)
     73c:	03010413          	add	s0,sp,48
     740:	00050793          	mv	a5,a0
     744:	00058713          	mv	a4,a1
     748:	fcf40fa3          	sb	a5,-33(s0)
     74c:	00070793          	mv	a5,a4
     750:	fcf40f23          	sb	a5,-34(s0)
     754:	00000097          	auipc	ra,0x0
     758:	4e4080e7          	jalr	1252(ra) # c38 <sdcard_select>
     75c:	fde44703          	lbu	a4,-34(s0)
     760:	fdf44783          	lbu	a5,-33(s0)
     764:	00070593          	mv	a1,a4
     768:	00078513          	mv	a0,a5
     76c:	00000097          	auipc	ra,0x0
     770:	ed4080e7          	jalr	-300(ra) # 640 <sdcard_read>
     774:	00050793          	mv	a5,a0
     778:	fef407a3          	sb	a5,-17(s0)
     77c:	00100793          	li	a5,1
     780:	fef42423          	sw	a5,-24(s0)
     784:	0280006f          	j	7ac <sdcard_get+0x7c>
     788:	00000593          	li	a1,0
     78c:	00800513          	li	a0,8
     790:	00000097          	auipc	ra,0x0
     794:	eb0080e7          	jalr	-336(ra) # 640 <sdcard_read>
     798:	00050793          	mv	a5,a0
     79c:	fef407a3          	sb	a5,-17(s0)
     7a0:	fe842783          	lw	a5,-24(s0)
     7a4:	00178793          	add	a5,a5,1
     7a8:	fef42423          	sw	a5,-24(s0)
     7ac:	fdf44783          	lbu	a5,-33(s0)
     7b0:	0037d793          	srl	a5,a5,0x3
     7b4:	0ff7f793          	zext.b	a5,a5
     7b8:	00078713          	mv	a4,a5
     7bc:	fe842783          	lw	a5,-24(s0)
     7c0:	fce7c4e3          	blt	a5,a4,788 <sdcard_get+0x58>
     7c4:	00000097          	auipc	ra,0x0
     7c8:	488080e7          	jalr	1160(ra) # c4c <sdcard_unselect>
     7cc:	fef44783          	lbu	a5,-17(s0)
     7d0:	00078513          	mv	a0,a5
     7d4:	02c12083          	lw	ra,44(sp)
     7d8:	02812403          	lw	s0,40(sp)
     7dc:	03010113          	add	sp,sp,48
     7e0:	00008067          	ret

000007e4 <sdcard_cmd>:
     7e4:	fd010113          	add	sp,sp,-48
     7e8:	02112623          	sw	ra,44(sp)
     7ec:	02812423          	sw	s0,40(sp)
     7f0:	03010413          	add	s0,sp,48
     7f4:	fca42e23          	sw	a0,-36(s0)
     7f8:	00000097          	auipc	ra,0x0
     7fc:	440080e7          	jalr	1088(ra) # c38 <sdcard_select>
     800:	fe042623          	sw	zero,-20(s0)
     804:	02c0006f          	j	830 <sdcard_cmd+0x4c>
     808:	fec42783          	lw	a5,-20(s0)
     80c:	fdc42703          	lw	a4,-36(s0)
     810:	00f707b3          	add	a5,a4,a5
     814:	0007c783          	lbu	a5,0(a5)
     818:	00078513          	mv	a0,a5
     81c:	00000097          	auipc	ra,0x0
     820:	910080e7          	jalr	-1776(ra) # 12c <sdcard_send>
     824:	fec42783          	lw	a5,-20(s0)
     828:	00178793          	add	a5,a5,1
     82c:	fef42623          	sw	a5,-20(s0)
     830:	fec42703          	lw	a4,-20(s0)
     834:	00500793          	li	a5,5
     838:	fce7d8e3          	bge	a5,a4,808 <sdcard_cmd+0x24>
     83c:	00000097          	auipc	ra,0x0
     840:	410080e7          	jalr	1040(ra) # c4c <sdcard_unselect>
     844:	00000013          	nop
     848:	02c12083          	lw	ra,44(sp)
     84c:	02812403          	lw	s0,40(sp)
     850:	03010113          	add	sp,sp,48
     854:	00008067          	ret

00000858 <sdcard_start_sector>:
     858:	fe010113          	add	sp,sp,-32
     85c:	00112e23          	sw	ra,28(sp)
     860:	00812c23          	sw	s0,24(sp)
     864:	02010413          	add	s0,sp,32
     868:	fea42623          	sw	a0,-20(s0)
     86c:	00000097          	auipc	ra,0x0
     870:	3cc080e7          	jalr	972(ra) # c38 <sdcard_select>
     874:	05100793          	li	a5,81
     878:	00078513          	mv	a0,a5
     87c:	00000097          	auipc	ra,0x0
     880:	8b0080e7          	jalr	-1872(ra) # 12c <sdcard_send>
     884:	fec42783          	lw	a5,-20(s0)
     888:	0187d793          	srl	a5,a5,0x18
     88c:	00078513          	mv	a0,a5
     890:	00000097          	auipc	ra,0x0
     894:	89c080e7          	jalr	-1892(ra) # 12c <sdcard_send>
     898:	fec42783          	lw	a5,-20(s0)
     89c:	4107d793          	sra	a5,a5,0x10
     8a0:	0ff7f793          	zext.b	a5,a5
     8a4:	00078513          	mv	a0,a5
     8a8:	00000097          	auipc	ra,0x0
     8ac:	884080e7          	jalr	-1916(ra) # 12c <sdcard_send>
     8b0:	fec42783          	lw	a5,-20(s0)
     8b4:	4087d793          	sra	a5,a5,0x8
     8b8:	0ff7f793          	zext.b	a5,a5
     8bc:	00078513          	mv	a0,a5
     8c0:	00000097          	auipc	ra,0x0
     8c4:	86c080e7          	jalr	-1940(ra) # 12c <sdcard_send>
     8c8:	fec42783          	lw	a5,-20(s0)
     8cc:	0ff7f793          	zext.b	a5,a5
     8d0:	00078513          	mv	a0,a5
     8d4:	00000097          	auipc	ra,0x0
     8d8:	858080e7          	jalr	-1960(ra) # 12c <sdcard_send>
     8dc:	05500793          	li	a5,85
     8e0:	00078513          	mv	a0,a5
     8e4:	00000097          	auipc	ra,0x0
     8e8:	848080e7          	jalr	-1976(ra) # 12c <sdcard_send>
     8ec:	00000097          	auipc	ra,0x0
     8f0:	360080e7          	jalr	864(ra) # c4c <sdcard_unselect>
     8f4:	fffff097          	auipc	ra,0xfffff
     8f8:	7cc080e7          	jalr	1996(ra) # c0 <sdcard_ponder>
     8fc:	00100593          	li	a1,1
     900:	00800513          	li	a0,8
     904:	00000097          	auipc	ra,0x0
     908:	e2c080e7          	jalr	-468(ra) # 730 <sdcard_get>
     90c:	00050793          	mv	a5,a0
     910:	00078513          	mv	a0,a5
     914:	01c12083          	lw	ra,28(sp)
     918:	01812403          	lw	s0,24(sp)
     91c:	02010113          	add	sp,sp,32
     920:	00008067          	ret

00000924 <sdcard_read_sector>:
     924:	fd010113          	add	sp,sp,-48
     928:	02112623          	sw	ra,44(sp)
     92c:	02812423          	sw	s0,40(sp)
     930:	03010413          	add	s0,sp,48
     934:	fca42e23          	sw	a0,-36(s0)
     938:	fcb42c23          	sw	a1,-40(s0)
     93c:	fdc42503          	lw	a0,-36(s0)
     940:	00000097          	auipc	ra,0x0
     944:	f18080e7          	jalr	-232(ra) # 858 <sdcard_start_sector>
     948:	00050793          	mv	a5,a0
     94c:	fef405a3          	sb	a5,-21(s0)
     950:	feb44783          	lbu	a5,-21(s0)
     954:	00078663          	beqz	a5,960 <sdcard_read_sector+0x3c>
     958:	fd842783          	lw	a5,-40(s0)
     95c:	08c0006f          	j	9e8 <sdcard_read_sector+0xc4>
     960:	00100593          	li	a1,1
     964:	00100513          	li	a0,1
     968:	00000097          	auipc	ra,0x0
     96c:	dc8080e7          	jalr	-568(ra) # 730 <sdcard_get>
     970:	fe042623          	sw	zero,-20(s0)
     974:	03c0006f          	j	9b0 <sdcard_read_sector+0x8c>
     978:	00000593          	li	a1,0
     97c:	00800513          	li	a0,8
     980:	00000097          	auipc	ra,0x0
     984:	db0080e7          	jalr	-592(ra) # 730 <sdcard_get>
     988:	00050793          	mv	a5,a0
     98c:	fef401a3          	sb	a5,-29(s0)
     990:	fd842783          	lw	a5,-40(s0)
     994:	00178713          	add	a4,a5,1
     998:	fce42c23          	sw	a4,-40(s0)
     99c:	fe344703          	lbu	a4,-29(s0)
     9a0:	00e78023          	sb	a4,0(a5)
     9a4:	fec42783          	lw	a5,-20(s0)
     9a8:	00178793          	add	a5,a5,1
     9ac:	fef42623          	sw	a5,-20(s0)
     9b0:	fec42703          	lw	a4,-20(s0)
     9b4:	1ff00793          	li	a5,511
     9b8:	fce7d0e3          	bge	a5,a4,978 <sdcard_read_sector+0x54>
     9bc:	00000593          	li	a1,0
     9c0:	01000513          	li	a0,16
     9c4:	00000097          	auipc	ra,0x0
     9c8:	d6c080e7          	jalr	-660(ra) # 730 <sdcard_get>
     9cc:	00050793          	mv	a5,a0
     9d0:	fef42223          	sw	a5,-28(s0)
     9d4:	00000097          	auipc	ra,0x0
     9d8:	278080e7          	jalr	632(ra) # c4c <sdcard_unselect>
     9dc:	fffff097          	auipc	ra,0xfffff
     9e0:	6e4080e7          	jalr	1764(ra) # c0 <sdcard_ponder>
     9e4:	fd842783          	lw	a5,-40(s0)
     9e8:	00078513          	mv	a0,a5
     9ec:	02c12083          	lw	ra,44(sp)
     9f0:	02812403          	lw	s0,40(sp)
     9f4:	03010113          	add	sp,sp,48
     9f8:	00008067          	ret

000009fc <sdcard_preinit>:
     9fc:	fe010113          	add	sp,sp,-32
     a00:	00112e23          	sw	ra,28(sp)
     a04:	00812c23          	sw	s0,24(sp)
     a08:	02010413          	add	s0,sp,32
     a0c:	000067b7          	lui	a5,0x6
     a10:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     a14:	00600713          	li	a4,6
     a18:	00e7a023          	sw	a4,0(a5)
     a1c:	013137b7          	lui	a5,0x1313
     a20:	d0078513          	add	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
     a24:	00000097          	auipc	ra,0x0
     a28:	1fc080e7          	jalr	508(ra) # c20 <pause>
     a2c:	fe042623          	sw	zero,-20(s0)
     a30:	fe042423          	sw	zero,-24(s0)
     a34:	0340006f          	j	a68 <sdcard_preinit+0x6c>
     a38:	000067b7          	lui	a5,0x6
     a3c:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     a40:	fec42703          	lw	a4,-20(s0)
     a44:	00676713          	or	a4,a4,6
     a48:	00e7a023          	sw	a4,0(a5)
     a4c:	00100713          	li	a4,1
     a50:	fec42783          	lw	a5,-20(s0)
     a54:	40f707b3          	sub	a5,a4,a5
     a58:	fef42623          	sw	a5,-20(s0)
     a5c:	fe842783          	lw	a5,-24(s0)
     a60:	00178793          	add	a5,a5,1
     a64:	fef42423          	sw	a5,-24(s0)
     a68:	fe842703          	lw	a4,-24(s0)
     a6c:	09f00793          	li	a5,159
     a70:	fce7d4e3          	bge	a5,a4,a38 <sdcard_preinit+0x3c>
     a74:	000067b7          	lui	a5,0x6
     a78:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     a7c:	00600713          	li	a4,6
     a80:	00e7a023          	sw	a4,0(a5)
     a84:	00000013          	nop
     a88:	01c12083          	lw	ra,28(sp)
     a8c:	01812403          	lw	s0,24(sp)
     a90:	02010113          	add	sp,sp,32
     a94:	00008067          	ret

00000a98 <sdcard_init>:
     a98:	fe010113          	add	sp,sp,-32
     a9c:	00112e23          	sw	ra,28(sp)
     aa0:	00812c23          	sw	s0,24(sp)
     aa4:	02010413          	add	s0,sp,32
     aa8:	000067b7          	lui	a5,0x6
     aac:	00001737          	lui	a4,0x1
     ab0:	c3470713          	add	a4,a4,-972 # c34 <sdcard_idle>
     ab4:	30e7a023          	sw	a4,768(a5) # 6300 <sdcard_while_loading_callback>
     ab8:	00000097          	auipc	ra,0x0
     abc:	f44080e7          	jalr	-188(ra) # 9fc <sdcard_preinit>
     ac0:	000067b7          	lui	a5,0x6
     ac4:	e0478513          	add	a0,a5,-508 # 5e04 <cmd0>
     ac8:	00000097          	auipc	ra,0x0
     acc:	d1c080e7          	jalr	-740(ra) # 7e4 <sdcard_cmd>
     ad0:	00100593          	li	a1,1
     ad4:	00800513          	li	a0,8
     ad8:	00000097          	auipc	ra,0x0
     adc:	c58080e7          	jalr	-936(ra) # 730 <sdcard_get>
     ae0:	00050793          	mv	a5,a0
     ae4:	fef407a3          	sb	a5,-17(s0)
     ae8:	fffff097          	auipc	ra,0xfffff
     aec:	5d8080e7          	jalr	1496(ra) # c0 <sdcard_ponder>
     af0:	fef44703          	lbu	a4,-17(s0)
     af4:	0ff00793          	li	a5,255
     af8:	00f71c63          	bne	a4,a5,b10 <sdcard_init+0x78>
     afc:	013137b7          	lui	a5,0x1313
     b00:	d0078513          	add	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
     b04:	00000097          	auipc	ra,0x0
     b08:	11c080e7          	jalr	284(ra) # c20 <pause>
     b0c:	fadff06f          	j	ab8 <sdcard_init+0x20>
     b10:	00000013          	nop
     b14:	000067b7          	lui	a5,0x6
     b18:	dfc78513          	add	a0,a5,-516 # 5dfc <cmd8>
     b1c:	00000097          	auipc	ra,0x0
     b20:	cc8080e7          	jalr	-824(ra) # 7e4 <sdcard_cmd>
     b24:	00100593          	li	a1,1
     b28:	02800513          	li	a0,40
     b2c:	00000097          	auipc	ra,0x0
     b30:	c04080e7          	jalr	-1020(ra) # 730 <sdcard_get>
     b34:	00050793          	mv	a5,a0
     b38:	fef407a3          	sb	a5,-17(s0)
     b3c:	fffff097          	auipc	ra,0xfffff
     b40:	584080e7          	jalr	1412(ra) # c0 <sdcard_ponder>
     b44:	000067b7          	lui	a5,0x6
     b48:	df478513          	add	a0,a5,-524 # 5df4 <cmd55>
     b4c:	00000097          	auipc	ra,0x0
     b50:	c98080e7          	jalr	-872(ra) # 7e4 <sdcard_cmd>
     b54:	00100593          	li	a1,1
     b58:	00800513          	li	a0,8
     b5c:	00000097          	auipc	ra,0x0
     b60:	bd4080e7          	jalr	-1068(ra) # 730 <sdcard_get>
     b64:	00050793          	mv	a5,a0
     b68:	fef407a3          	sb	a5,-17(s0)
     b6c:	fffff097          	auipc	ra,0xfffff
     b70:	554080e7          	jalr	1364(ra) # c0 <sdcard_ponder>
     b74:	000067b7          	lui	a5,0x6
     b78:	dec78513          	add	a0,a5,-532 # 5dec <acmd41>
     b7c:	00000097          	auipc	ra,0x0
     b80:	c68080e7          	jalr	-920(ra) # 7e4 <sdcard_cmd>
     b84:	00100593          	li	a1,1
     b88:	00800513          	li	a0,8
     b8c:	00000097          	auipc	ra,0x0
     b90:	ba4080e7          	jalr	-1116(ra) # 730 <sdcard_get>
     b94:	00050793          	mv	a5,a0
     b98:	fef407a3          	sb	a5,-17(s0)
     b9c:	fffff097          	auipc	ra,0xfffff
     ba0:	524080e7          	jalr	1316(ra) # c0 <sdcard_ponder>
     ba4:	fef44783          	lbu	a5,-17(s0)
     ba8:	02078863          	beqz	a5,bd8 <sdcard_init+0x140>
     bac:	00000097          	auipc	ra,0x0
     bb0:	0a0080e7          	jalr	160(ra) # c4c <sdcard_unselect>
     bb4:	fffff097          	auipc	ra,0xfffff
     bb8:	50c080e7          	jalr	1292(ra) # c0 <sdcard_ponder>
     bbc:	001e87b7          	lui	a5,0x1e8
     bc0:	48078513          	add	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
     bc4:	00000097          	auipc	ra,0x0
     bc8:	05c080e7          	jalr	92(ra) # c20 <pause>
     bcc:	00000097          	auipc	ra,0x0
     bd0:	06c080e7          	jalr	108(ra) # c38 <sdcard_select>
     bd4:	f71ff06f          	j	b44 <sdcard_init+0xac>
     bd8:	00000013          	nop
     bdc:	000067b7          	lui	a5,0x6
     be0:	de478513          	add	a0,a5,-540 # 5de4 <cmd16>
     be4:	00000097          	auipc	ra,0x0
     be8:	c00080e7          	jalr	-1024(ra) # 7e4 <sdcard_cmd>
     bec:	00100593          	li	a1,1
     bf0:	00800513          	li	a0,8
     bf4:	00000097          	auipc	ra,0x0
     bf8:	b3c080e7          	jalr	-1220(ra) # 730 <sdcard_get>
     bfc:	00050793          	mv	a5,a0
     c00:	fef407a3          	sb	a5,-17(s0)
     c04:	fffff097          	auipc	ra,0xfffff
     c08:	4bc080e7          	jalr	1212(ra) # c0 <sdcard_ponder>
     c0c:	00000013          	nop
     c10:	01c12083          	lw	ra,28(sp)
     c14:	01812403          	lw	s0,24(sp)
     c18:	02010113          	add	sp,sp,32
     c1c:	00008067          	ret

00000c20 <pause>:
     c20:	c0002773          	rdcycle	a4
     c24:	c00027f3          	rdcycle	a5
     c28:	40e787b3          	sub	a5,a5,a4
     c2c:	fea7ece3          	bltu	a5,a0,c24 <pause+0x4>
     c30:	00008067          	ret

00000c34 <sdcard_idle>:
     c34:	00008067          	ret

00000c38 <sdcard_select>:
     c38:	000067b7          	lui	a5,0x6
     c3c:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     c40:	00200713          	li	a4,2
     c44:	00e7a023          	sw	a4,0(a5)
     c48:	00008067          	ret

00000c4c <sdcard_unselect>:
     c4c:	000067b7          	lui	a5,0x6
     c50:	e1c7a783          	lw	a5,-484(a5) # 5e1c <SDCARD>
     c54:	00600713          	li	a4,6
     c58:	00e7a023          	sw	a4,0(a5)
     c5c:	00008067          	ret

00000c60 <sdcard_readsector>:
     c60:	04060663          	beqz	a2,cac <sdcard_readsector+0x4c>
     c64:	ff010113          	add	sp,sp,-16
     c68:	00912423          	sw	s1,8(sp)
     c6c:	01212223          	sw	s2,4(sp)
     c70:	00112623          	sw	ra,12(sp)
     c74:	00050493          	mv	s1,a0
     c78:	00a60933          	add	s2,a2,a0
     c7c:	00048513          	mv	a0,s1
     c80:	00000097          	auipc	ra,0x0
     c84:	ca4080e7          	jalr	-860(ra) # 924 <sdcard_read_sector>
     c88:	00148493          	add	s1,s1,1
     c8c:	00050593          	mv	a1,a0
     c90:	fe9916e3          	bne	s2,s1,c7c <sdcard_readsector+0x1c>
     c94:	00c12083          	lw	ra,12(sp)
     c98:	00812483          	lw	s1,8(sp)
     c9c:	00412903          	lw	s2,4(sp)
     ca0:	00100513          	li	a0,1
     ca4:	01010113          	add	sp,sp,16
     ca8:	00008067          	ret
     cac:	00000513          	li	a0,0
     cb0:	00008067          	ret

00000cb4 <sdcard_writesector>:
     cb4:	00000513          	li	a0,0
     cb8:	00008067          	ret

00000cbc <__divsi3>:
     cbc:	06054063          	bltz	a0,d1c <__umodsi3+0x10>
     cc0:	0605c663          	bltz	a1,d2c <__umodsi3+0x20>

00000cc4 <__udivsi3>:
     cc4:	00058613          	mv	a2,a1
     cc8:	00050593          	mv	a1,a0
     ccc:	fff00513          	li	a0,-1
     cd0:	02060c63          	beqz	a2,d08 <__udivsi3+0x44>
     cd4:	00100693          	li	a3,1
     cd8:	00b67a63          	bgeu	a2,a1,cec <__udivsi3+0x28>
     cdc:	00c05863          	blez	a2,cec <__udivsi3+0x28>
     ce0:	00161613          	sll	a2,a2,0x1
     ce4:	00169693          	sll	a3,a3,0x1
     ce8:	feb66ae3          	bltu	a2,a1,cdc <__udivsi3+0x18>
     cec:	00000513          	li	a0,0
     cf0:	00c5e663          	bltu	a1,a2,cfc <__udivsi3+0x38>
     cf4:	40c585b3          	sub	a1,a1,a2
     cf8:	00d56533          	or	a0,a0,a3
     cfc:	0016d693          	srl	a3,a3,0x1
     d00:	00165613          	srl	a2,a2,0x1
     d04:	fe0696e3          	bnez	a3,cf0 <__udivsi3+0x2c>
     d08:	00008067          	ret

00000d0c <__umodsi3>:
     d0c:	00008293          	mv	t0,ra
     d10:	fb5ff0ef          	jal	cc4 <__udivsi3>
     d14:	00058513          	mv	a0,a1
     d18:	00028067          	jr	t0
     d1c:	40a00533          	neg	a0,a0
     d20:	0005d863          	bgez	a1,d30 <__umodsi3+0x24>
     d24:	40b005b3          	neg	a1,a1
     d28:	f95ff06f          	j	cbc <__divsi3>
     d2c:	40b005b3          	neg	a1,a1
     d30:	00008293          	mv	t0,ra
     d34:	f89ff0ef          	jal	cbc <__divsi3>
     d38:	40a00533          	neg	a0,a0
     d3c:	00028067          	jr	t0

00000d40 <__modsi3>:
     d40:	00008293          	mv	t0,ra
     d44:	0005ca63          	bltz	a1,d58 <__modsi3+0x18>
     d48:	00054c63          	bltz	a0,d60 <__modsi3+0x20>
     d4c:	f79ff0ef          	jal	cc4 <__udivsi3>
     d50:	00058513          	mv	a0,a1
     d54:	00028067          	jr	t0
     d58:	40b005b3          	neg	a1,a1
     d5c:	fe0558e3          	bgez	a0,d4c <__modsi3+0xc>
     d60:	40a00533          	neg	a0,a0
     d64:	f61ff0ef          	jal	cc4 <__udivsi3>
     d68:	40b00533          	neg	a0,a1
     d6c:	00028067          	jr	t0

00000d70 <memset>:
     d70:	00c50633          	add	a2,a0,a2
     d74:	00050793          	mv	a5,a0
     d78:	00c79463          	bne	a5,a2,d80 <memset+0x10>
     d7c:	00008067          	ret
     d80:	00178793          	add	a5,a5,1
     d84:	feb78fa3          	sb	a1,-1(a5)
     d88:	ff1ff06f          	j	d78 <memset+0x8>

00000d8c <memcpy>:
     d8c:	00000793          	li	a5,0
     d90:	00c79463          	bne	a5,a2,d98 <memcpy+0xc>
     d94:	00008067          	ret
     d98:	00f58733          	add	a4,a1,a5
     d9c:	00074683          	lbu	a3,0(a4)
     da0:	00f50733          	add	a4,a0,a5
     da4:	00178793          	add	a5,a5,1
     da8:	00d70023          	sb	a3,0(a4)
     dac:	fe5ff06f          	j	d90 <memcpy+0x4>

00000db0 <strlen>:
     db0:	00050793          	mv	a5,a0
     db4:	00000513          	li	a0,0
     db8:	00a78733          	add	a4,a5,a0
     dbc:	00074703          	lbu	a4,0(a4)
     dc0:	00071463          	bnez	a4,dc8 <strlen+0x18>
     dc4:	00008067          	ret
     dc8:	00150513          	add	a0,a0,1
     dcc:	fedff06f          	j	db8 <strlen+0x8>

00000dd0 <strncmp>:
     dd0:	00000793          	li	a5,0
     dd4:	00c79663          	bne	a5,a2,de0 <strncmp+0x10>
     dd8:	00000513          	li	a0,0
     ddc:	00008067          	ret
     de0:	00f50733          	add	a4,a0,a5
     de4:	00074683          	lbu	a3,0(a4)
     de8:	00f58733          	add	a4,a1,a5
     dec:	00074703          	lbu	a4,0(a4)
     df0:	00e6e863          	bltu	a3,a4,e00 <strncmp+0x30>
     df4:	00d76a63          	bltu	a4,a3,e08 <strncmp+0x38>
     df8:	00178793          	add	a5,a5,1
     dfc:	fd9ff06f          	j	dd4 <strncmp+0x4>
     e00:	fff00513          	li	a0,-1
     e04:	00008067          	ret
     e08:	00100513          	li	a0,1
     e0c:	00008067          	ret

00000e10 <strncpy>:
     e10:	00000793          	li	a5,0
     e14:	00f61463          	bne	a2,a5,e1c <strncpy+0xc>
     e18:	00008067          	ret
     e1c:	00f58733          	add	a4,a1,a5
     e20:	00074683          	lbu	a3,0(a4)
     e24:	00f50733          	add	a4,a0,a5
     e28:	00178793          	add	a5,a5,1
     e2c:	00d70023          	sb	a3,0(a4)
     e30:	fe5ff06f          	j	e14 <strncpy+0x4>

00000e34 <strcpy>:
     e34:	0005c783          	lbu	a5,0(a1)
     e38:	00079663          	bnez	a5,e44 <strcpy+0x10>
     e3c:	00050023          	sb	zero,0(a0)
     e40:	00008067          	ret
     e44:	00150513          	add	a0,a0,1
     e48:	00158593          	add	a1,a1,1
     e4c:	fef50fa3          	sb	a5,-1(a0)
     e50:	fe5ff06f          	j	e34 <strcpy>

00000e54 <strcat>:
     e54:	00050793          	mv	a5,a0
     e58:	0007c683          	lbu	a3,0(a5)
     e5c:	00078713          	mv	a4,a5
     e60:	00178793          	add	a5,a5,1
     e64:	fe069ae3          	bnez	a3,e58 <strcat+0x4>
     e68:	0005c783          	lbu	a5,0(a1)
     e6c:	00158593          	add	a1,a1,1
     e70:	00170713          	add	a4,a4,1
     e74:	fef70fa3          	sb	a5,-1(a4)
     e78:	fe0798e3          	bnez	a5,e68 <strcat+0x14>
     e7c:	00008067          	ret

00000e80 <oled_wait>:
     e80:	00000013          	nop
     e84:	00000013          	nop
     e88:	00000013          	nop
     e8c:	00000013          	nop
     e90:	00000013          	nop
     e94:	00000013          	nop
     e98:	00000013          	nop
     e9c:	00008067          	ret

00000ea0 <oled_init_mode>:
     ea0:	000067b7          	lui	a5,0x6
     ea4:	e207a703          	lw	a4,-480(a5) # 5e20 <OLED_RST>
     ea8:	ff010113          	add	sp,sp,-16
     eac:	00912223          	sw	s1,4(sp)
     eb0:	00112623          	sw	ra,12(sp)
     eb4:	00812423          	sw	s0,8(sp)
     eb8:	00072023          	sw	zero,0(a4)
     ebc:	00050493          	mv	s1,a0
     ec0:	00040737          	lui	a4,0x40
     ec4:	00000013          	nop
     ec8:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     ecc:	fe071ce3          	bnez	a4,ec4 <oled_init_mode+0x24>
     ed0:	e207a703          	lw	a4,-480(a5)
     ed4:	00100693          	li	a3,1
     ed8:	00d72023          	sw	a3,0(a4)
     edc:	00040737          	lui	a4,0x40
     ee0:	00000013          	nop
     ee4:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     ee8:	fe071ce3          	bnez	a4,ee0 <oled_init_mode+0x40>
     eec:	e207a783          	lw	a5,-480(a5)
     ef0:	0007a023          	sw	zero,0(a5)
     ef4:	000407b7          	lui	a5,0x40
     ef8:	00000013          	nop
     efc:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     f00:	fe079ce3          	bnez	a5,ef8 <oled_init_mode+0x58>
     f04:	00006737          	lui	a4,0x6
     f08:	e2472783          	lw	a5,-476(a4) # 5e24 <OLED>
     f0c:	2af00693          	li	a3,687
     f10:	00d7a023          	sw	a3,0(a5)
     f14:	000407b7          	lui	a5,0x40
     f18:	00000013          	nop
     f1c:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     f20:	fe079ce3          	bnez	a5,f18 <oled_init_mode+0x78>
     f24:	e2472403          	lw	s0,-476(a4)
     f28:	2a000793          	li	a5,672
     f2c:	00f42023          	sw	a5,0(s0)
     f30:	00000097          	auipc	ra,0x0
     f34:	f50080e7          	jalr	-176(ra) # e80 <oled_wait>
     f38:	4a000793          	li	a5,1184
     f3c:	00048463          	beqz	s1,f44 <oled_init_mode+0xa4>
     f40:	42000793          	li	a5,1056
     f44:	00f42023          	sw	a5,0(s0)
     f48:	00000097          	auipc	ra,0x0
     f4c:	f38080e7          	jalr	-200(ra) # e80 <oled_wait>
     f50:	2fd00793          	li	a5,765
     f54:	00f42023          	sw	a5,0(s0)
     f58:	00000097          	auipc	ra,0x0
     f5c:	f28080e7          	jalr	-216(ra) # e80 <oled_wait>
     f60:	4b100793          	li	a5,1201
     f64:	00f42023          	sw	a5,0(s0)
     f68:	00000097          	auipc	ra,0x0
     f6c:	f18080e7          	jalr	-232(ra) # e80 <oled_wait>
     f70:	2a200793          	li	a5,674
     f74:	00f42023          	sw	a5,0(s0)
     f78:	00000097          	auipc	ra,0x0
     f7c:	f08080e7          	jalr	-248(ra) # e80 <oled_wait>
     f80:	40000793          	li	a5,1024
     f84:	00f42023          	sw	a5,0(s0)
     f88:	00812403          	lw	s0,8(sp)
     f8c:	00c12083          	lw	ra,12(sp)
     f90:	00412483          	lw	s1,4(sp)
     f94:	01010113          	add	sp,sp,16
     f98:	00000317          	auipc	t1,0x0
     f9c:	ee830067          	jr	-280(t1) # e80 <oled_wait>

00000fa0 <oled_init>:
     fa0:	00000513          	li	a0,0
     fa4:	00000317          	auipc	t1,0x0
     fa8:	efc30067          	jr	-260(t1) # ea0 <oled_init_mode>

00000fac <oled_fullscreen>:
     fac:	ff010113          	add	sp,sp,-16
     fb0:	000067b7          	lui	a5,0x6
     fb4:	00812423          	sw	s0,8(sp)
     fb8:	e247a403          	lw	s0,-476(a5) # 5e24 <OLED>
     fbc:	00112623          	sw	ra,12(sp)
     fc0:	00912223          	sw	s1,4(sp)
     fc4:	01212023          	sw	s2,0(sp)
     fc8:	21500793          	li	a5,533
     fcc:	00f42023          	sw	a5,0(s0)
     fd0:	40000913          	li	s2,1024
     fd4:	00000097          	auipc	ra,0x0
     fd8:	eac080e7          	jalr	-340(ra) # e80 <oled_wait>
     fdc:	47f00493          	li	s1,1151
     fe0:	01242023          	sw	s2,0(s0)
     fe4:	00000097          	auipc	ra,0x0
     fe8:	e9c080e7          	jalr	-356(ra) # e80 <oled_wait>
     fec:	00942023          	sw	s1,0(s0)
     ff0:	00000097          	auipc	ra,0x0
     ff4:	e90080e7          	jalr	-368(ra) # e80 <oled_wait>
     ff8:	27500793          	li	a5,629
     ffc:	00f42023          	sw	a5,0(s0)
    1000:	00000097          	auipc	ra,0x0
    1004:	e80080e7          	jalr	-384(ra) # e80 <oled_wait>
    1008:	01242023          	sw	s2,0(s0)
    100c:	00000097          	auipc	ra,0x0
    1010:	e74080e7          	jalr	-396(ra) # e80 <oled_wait>
    1014:	00942023          	sw	s1,0(s0)
    1018:	00000097          	auipc	ra,0x0
    101c:	e68080e7          	jalr	-408(ra) # e80 <oled_wait>
    1020:	25c00793          	li	a5,604
    1024:	00f42023          	sw	a5,0(s0)
    1028:	00812403          	lw	s0,8(sp)
    102c:	00c12083          	lw	ra,12(sp)
    1030:	00412483          	lw	s1,4(sp)
    1034:	00012903          	lw	s2,0(sp)
    1038:	01010113          	add	sp,sp,16
    103c:	00000317          	auipc	t1,0x0
    1040:	e4430067          	jr	-444(t1) # e80 <oled_wait>

00001044 <display_framebuffer>:
    1044:	000067b7          	lui	a5,0x6
    1048:	e107a503          	lw	a0,-496(a5) # 5e10 <DISPLAY>
    104c:	00008067          	ret

00001050 <display_set_cursor>:
    1050:	000067b7          	lui	a5,0x6
    1054:	30a7a623          	sw	a0,780(a5) # 630c <cursor_x>
    1058:	000067b7          	lui	a5,0x6
    105c:	30b7a423          	sw	a1,776(a5) # 6308 <cursor_y>
    1060:	00008067          	ret

00001064 <display_set_front_back_color>:
    1064:	000067b7          	lui	a5,0x6
    1068:	30a782a3          	sb	a0,773(a5) # 6305 <front_color>
    106c:	000067b7          	lui	a5,0x6
    1070:	30b78223          	sb	a1,772(a5) # 6304 <back_color>
    1074:	00008067          	ret

00001078 <display_putchar>:
    1078:	00a00793          	li	a5,10
    107c:	00006737          	lui	a4,0x6
    1080:	02f51663          	bne	a0,a5,10ac <display_putchar+0x34>
    1084:	30072623          	sw	zero,780(a4) # 630c <cursor_x>
    1088:	00006737          	lui	a4,0x6
    108c:	30872783          	lw	a5,776(a4) # 6308 <cursor_y>
    1090:	00878793          	add	a5,a5,8
    1094:	30f72423          	sw	a5,776(a4)
    1098:	07f00713          	li	a4,127
    109c:	00f75663          	bge	a4,a5,10a8 <display_putchar+0x30>
    10a0:	000067b7          	lui	a5,0x6
    10a4:	3007a423          	sw	zero,776(a5) # 6308 <cursor_y>
    10a8:	00008067          	ret
    10ac:	ff010113          	add	sp,sp,-16
    10b0:	00812623          	sw	s0,12(sp)
    10b4:	01f00793          	li	a5,31
    10b8:	0ca7d263          	bge	a5,a0,117c <display_putchar+0x104>
    10bc:	00006e37          	lui	t3,0x6
    10c0:	308e2783          	lw	a5,776(t3) # 6308 <cursor_y>
    10c4:	08000593          	li	a1,128
    10c8:	40f585b3          	sub	a1,a1,a5
    10cc:	00800793          	li	a5,8
    10d0:	00b7d463          	bge	a5,a1,10d8 <display_putchar+0x60>
    10d4:	00800593          	li	a1,8
    10d8:	30c72783          	lw	a5,780(a4)
    10dc:	08000813          	li	a6,128
    10e0:	40f80833          	sub	a6,a6,a5
    10e4:	00500793          	li	a5,5
    10e8:	0107d463          	bge	a5,a6,10f0 <display_putchar+0x78>
    10ec:	00500813          	li	a6,5
    10f0:	000067b7          	lui	a5,0x6
    10f4:	e107a283          	lw	t0,-496(a5) # 5e10 <DISPLAY>
    10f8:	00251693          	sll	a3,a0,0x2
    10fc:	000067b7          	lui	a5,0x6
    1100:	00a686b3          	add	a3,a3,a0
    1104:	e3078793          	add	a5,a5,-464 # 5e30 <font>
    1108:	00f686b3          	add	a3,a3,a5
    110c:	00000613          	li	a2,0
    1110:	00100f93          	li	t6,1
    1114:	000063b7          	lui	t2,0x6
    1118:	00006437          	lui	s0,0x6
    111c:	06b65063          	bge	a2,a1,117c <display_putchar+0x104>
    1120:	00cf9f33          	sll	t5,t6,a2
    1124:	00068893          	mv	a7,a3
    1128:	00000513          	li	a0,0
    112c:	03c0006f          	j	1168 <display_putchar+0xf0>
    1130:	f608c783          	lbu	a5,-160(a7)
    1134:	01e7f7b3          	and	a5,a5,t5
    1138:	02078e63          	beqz	a5,1174 <display_putchar+0xfc>
    113c:	30544e83          	lbu	t4,773(s0) # 6305 <front_color>
    1140:	30c72783          	lw	a5,780(a4)
    1144:	308e2303          	lw	t1,776(t3)
    1148:	00188893          	add	a7,a7,1
    114c:	00f507b3          	add	a5,a0,a5
    1150:	00779793          	sll	a5,a5,0x7
    1154:	00660333          	add	t1,a2,t1
    1158:	006787b3          	add	a5,a5,t1
    115c:	00f287b3          	add	a5,t0,a5
    1160:	01d78023          	sb	t4,0(a5)
    1164:	00150513          	add	a0,a0,1
    1168:	fd0544e3          	blt	a0,a6,1130 <display_putchar+0xb8>
    116c:	00160613          	add	a2,a2,1
    1170:	fadff06f          	j	111c <display_putchar+0xa4>
    1174:	3043ce83          	lbu	t4,772(t2) # 6304 <back_color>
    1178:	fc9ff06f          	j	1140 <display_putchar+0xc8>
    117c:	30c72783          	lw	a5,780(a4)
    1180:	07f00693          	li	a3,127
    1184:	00578793          	add	a5,a5,5
    1188:	00f6c663          	blt	a3,a5,1194 <display_putchar+0x11c>
    118c:	30f72623          	sw	a5,780(a4)
    1190:	0240006f          	j	11b4 <display_putchar+0x13c>
    1194:	30072623          	sw	zero,780(a4)
    1198:	00006737          	lui	a4,0x6
    119c:	30872783          	lw	a5,776(a4) # 6308 <cursor_y>
    11a0:	00878793          	add	a5,a5,8
    11a4:	30f72423          	sw	a5,776(a4)
    11a8:	00f6d663          	bge	a3,a5,11b4 <display_putchar+0x13c>
    11ac:	000067b7          	lui	a5,0x6
    11b0:	3007a423          	sw	zero,776(a5) # 6308 <cursor_y>
    11b4:	00c12403          	lw	s0,12(sp)
    11b8:	01010113          	add	sp,sp,16
    11bc:	00008067          	ret

000011c0 <display_refresh>:
    11c0:	00008067          	ret

000011c4 <print_string>:
    11c4:	ff010113          	add	sp,sp,-16
    11c8:	00812423          	sw	s0,8(sp)
    11cc:	00912223          	sw	s1,4(sp)
    11d0:	00112623          	sw	ra,12(sp)
    11d4:	00050413          	mv	s0,a0
    11d8:	000064b7          	lui	s1,0x6
    11dc:	00044503          	lbu	a0,0(s0)
    11e0:	00051c63          	bnez	a0,11f8 <print_string+0x34>
    11e4:	00c12083          	lw	ra,12(sp)
    11e8:	00812403          	lw	s0,8(sp)
    11ec:	00412483          	lw	s1,4(sp)
    11f0:	01010113          	add	sp,sp,16
    11f4:	00008067          	ret
    11f8:	3104a783          	lw	a5,784(s1) # 6310 <f_putchar>
    11fc:	00140413          	add	s0,s0,1
    1200:	000780e7          	jalr	a5
    1204:	fd9ff06f          	j	11dc <print_string+0x18>

00001208 <print_dec>:
    1208:	ef010113          	add	sp,sp,-272
    120c:	10812423          	sw	s0,264(sp)
    1210:	10912223          	sw	s1,260(sp)
    1214:	10112623          	sw	ra,268(sp)
    1218:	11212023          	sw	s2,256(sp)
    121c:	00050413          	mv	s0,a0
    1220:	000064b7          	lui	s1,0x6
    1224:	08045063          	bgez	s0,12a4 <print_dec+0x9c>
    1228:	3104a783          	lw	a5,784(s1) # 6310 <f_putchar>
    122c:	02d00513          	li	a0,45
    1230:	40800433          	neg	s0,s0
    1234:	000780e7          	jalr	a5
    1238:	fedff06f          	j	1224 <print_dec+0x1c>
    123c:	00040513          	mv	a0,s0
    1240:	00a00593          	li	a1,10
    1244:	00000097          	auipc	ra,0x0
    1248:	a78080e7          	jalr	-1416(ra) # cbc <__divsi3>
    124c:	00251793          	sll	a5,a0,0x2
    1250:	00f507b3          	add	a5,a0,a5
    1254:	00179793          	sll	a5,a5,0x1
    1258:	40f40433          	sub	s0,s0,a5
    125c:	00148493          	add	s1,s1,1
    1260:	fe848fa3          	sb	s0,-1(s1)
    1264:	00050413          	mv	s0,a0
    1268:	fc041ae3          	bnez	s0,123c <print_dec+0x34>
    126c:	fd2488e3          	beq	s1,s2,123c <print_dec+0x34>
    1270:	00006437          	lui	s0,0x6
    1274:	fff4c503          	lbu	a0,-1(s1)
    1278:	31042783          	lw	a5,784(s0) # 6310 <f_putchar>
    127c:	fff48493          	add	s1,s1,-1
    1280:	03050513          	add	a0,a0,48
    1284:	000780e7          	jalr	a5
    1288:	ff2496e3          	bne	s1,s2,1274 <print_dec+0x6c>
    128c:	10c12083          	lw	ra,268(sp)
    1290:	10812403          	lw	s0,264(sp)
    1294:	10412483          	lw	s1,260(sp)
    1298:	10012903          	lw	s2,256(sp)
    129c:	11010113          	add	sp,sp,272
    12a0:	00008067          	ret
    12a4:	00010493          	mv	s1,sp
    12a8:	00048913          	mv	s2,s1
    12ac:	fbdff06f          	j	1268 <print_dec+0x60>

000012b0 <print_hex_digits>:
    12b0:	fe010113          	add	sp,sp,-32
    12b4:	00812c23          	sw	s0,24(sp)
    12b8:	01212823          	sw	s2,16(sp)
    12bc:	fff58413          	add	s0,a1,-1
    12c0:	00006937          	lui	s2,0x6
    12c4:	00912a23          	sw	s1,20(sp)
    12c8:	01312623          	sw	s3,12(sp)
    12cc:	00112e23          	sw	ra,28(sp)
    12d0:	00050493          	mv	s1,a0
    12d4:	00241413          	sll	s0,s0,0x2
    12d8:	01090913          	add	s2,s2,16 # 6010 <font+0x1e0>
    12dc:	000069b7          	lui	s3,0x6
    12e0:	02045063          	bgez	s0,1300 <print_hex_digits+0x50>
    12e4:	01c12083          	lw	ra,28(sp)
    12e8:	01812403          	lw	s0,24(sp)
    12ec:	01412483          	lw	s1,20(sp)
    12f0:	01012903          	lw	s2,16(sp)
    12f4:	00c12983          	lw	s3,12(sp)
    12f8:	02010113          	add	sp,sp,32
    12fc:	00008067          	ret
    1300:	0084d7b3          	srl	a5,s1,s0
    1304:	00f7f793          	and	a5,a5,15
    1308:	00f907b3          	add	a5,s2,a5
    130c:	3109a703          	lw	a4,784(s3) # 6310 <f_putchar>
    1310:	0007c503          	lbu	a0,0(a5)
    1314:	ffc40413          	add	s0,s0,-4
    1318:	000700e7          	jalr	a4
    131c:	fc5ff06f          	j	12e0 <print_hex_digits+0x30>

00001320 <print_hex>:
    1320:	00800593          	li	a1,8
    1324:	00000317          	auipc	t1,0x0
    1328:	f8c30067          	jr	-116(t1) # 12b0 <print_hex_digits>

0000132c <printf>:
    132c:	fb010113          	add	sp,sp,-80
    1330:	04f12223          	sw	a5,68(sp)
    1334:	03410793          	add	a5,sp,52
    1338:	02812423          	sw	s0,40(sp)
    133c:	02912223          	sw	s1,36(sp)
    1340:	03212023          	sw	s2,32(sp)
    1344:	01312e23          	sw	s3,28(sp)
    1348:	01412c23          	sw	s4,24(sp)
    134c:	01512a23          	sw	s5,20(sp)
    1350:	01612823          	sw	s6,16(sp)
    1354:	02112623          	sw	ra,44(sp)
    1358:	00050413          	mv	s0,a0
    135c:	02b12a23          	sw	a1,52(sp)
    1360:	02c12c23          	sw	a2,56(sp)
    1364:	02d12e23          	sw	a3,60(sp)
    1368:	04e12023          	sw	a4,64(sp)
    136c:	05012423          	sw	a6,72(sp)
    1370:	05112623          	sw	a7,76(sp)
    1374:	00f12623          	sw	a5,12(sp)
    1378:	02500913          	li	s2,37
    137c:	000064b7          	lui	s1,0x6
    1380:	07300993          	li	s3,115
    1384:	07800a13          	li	s4,120
    1388:	06400a93          	li	s5,100
    138c:	06300b13          	li	s6,99
    1390:	00044503          	lbu	a0,0(s0)
    1394:	02051663          	bnez	a0,13c0 <printf+0x94>
    1398:	02c12083          	lw	ra,44(sp)
    139c:	02812403          	lw	s0,40(sp)
    13a0:	02412483          	lw	s1,36(sp)
    13a4:	02012903          	lw	s2,32(sp)
    13a8:	01c12983          	lw	s3,28(sp)
    13ac:	01812a03          	lw	s4,24(sp)
    13b0:	01412a83          	lw	s5,20(sp)
    13b4:	01012b03          	lw	s6,16(sp)
    13b8:	05010113          	add	sp,sp,80
    13bc:	00008067          	ret
    13c0:	09251863          	bne	a0,s2,1450 <printf+0x124>
    13c4:	00144503          	lbu	a0,1(s0)
    13c8:	03351463          	bne	a0,s3,13f0 <printf+0xc4>
    13cc:	00c12783          	lw	a5,12(sp)
    13d0:	0007a503          	lw	a0,0(a5)
    13d4:	00478713          	add	a4,a5,4
    13d8:	00e12623          	sw	a4,12(sp)
    13dc:	00000097          	auipc	ra,0x0
    13e0:	de8080e7          	jalr	-536(ra) # 11c4 <print_string>
    13e4:	00140413          	add	s0,s0,1
    13e8:	00140413          	add	s0,s0,1
    13ec:	fa5ff06f          	j	1390 <printf+0x64>
    13f0:	03451063          	bne	a0,s4,1410 <printf+0xe4>
    13f4:	00c12783          	lw	a5,12(sp)
    13f8:	0007a503          	lw	a0,0(a5)
    13fc:	00478713          	add	a4,a5,4
    1400:	00e12623          	sw	a4,12(sp)
    1404:	00000097          	auipc	ra,0x0
    1408:	f1c080e7          	jalr	-228(ra) # 1320 <print_hex>
    140c:	fd9ff06f          	j	13e4 <printf+0xb8>
    1410:	03551063          	bne	a0,s5,1430 <printf+0x104>
    1414:	00c12783          	lw	a5,12(sp)
    1418:	0007a503          	lw	a0,0(a5)
    141c:	00478713          	add	a4,a5,4
    1420:	00e12623          	sw	a4,12(sp)
    1424:	00000097          	auipc	ra,0x0
    1428:	de4080e7          	jalr	-540(ra) # 1208 <print_dec>
    142c:	fb9ff06f          	j	13e4 <printf+0xb8>
    1430:	3104a783          	lw	a5,784(s1) # 6310 <f_putchar>
    1434:	01651a63          	bne	a0,s6,1448 <printf+0x11c>
    1438:	00c12703          	lw	a4,12(sp)
    143c:	00072503          	lw	a0,0(a4)
    1440:	00470693          	add	a3,a4,4
    1444:	00d12623          	sw	a3,12(sp)
    1448:	000780e7          	jalr	a5
    144c:	f99ff06f          	j	13e4 <printf+0xb8>
    1450:	3104a783          	lw	a5,784(s1)
    1454:	000780e7          	jalr	a5
    1458:	f91ff06f          	j	13e8 <printf+0xbc>

0000145c <__mulsi3>:
    145c:	00050793          	mv	a5,a0
    1460:	00000513          	li	a0,0
    1464:	00079463          	bnez	a5,146c <__mulsi3+0x10>
    1468:	00008067          	ret
    146c:	0017f713          	and	a4,a5,1
    1470:	00070463          	beqz	a4,1478 <__mulsi3+0x1c>
    1474:	00b50533          	add	a0,a0,a1
    1478:	0017d793          	srl	a5,a5,0x1
    147c:	00159593          	sll	a1,a1,0x1
    1480:	fe5ff06f          	j	1464 <__mulsi3+0x8>

00001484 <fat_list_insert_last>:
    1484:	00452783          	lw	a5,4(a0)
    1488:	04079263          	bnez	a5,14cc <fat_list_insert_last+0x48>
    148c:	00052783          	lw	a5,0(a0)
    1490:	00079c63          	bnez	a5,14a8 <fat_list_insert_last+0x24>
    1494:	00b52023          	sw	a1,0(a0)
    1498:	00b52223          	sw	a1,4(a0)
    149c:	0005a023          	sw	zero,0(a1)
    14a0:	0005a223          	sw	zero,4(a1)
    14a4:	00008067          	ret
    14a8:	0007a703          	lw	a4,0(a5)
    14ac:	00f5a223          	sw	a5,4(a1)
    14b0:	00e5a023          	sw	a4,0(a1)
    14b4:	00071863          	bnez	a4,14c4 <fat_list_insert_last+0x40>
    14b8:	00b52023          	sw	a1,0(a0)
    14bc:	00b7a023          	sw	a1,0(a5)
    14c0:	00008067          	ret
    14c4:	00b72223          	sw	a1,4(a4)
    14c8:	ff5ff06f          	j	14bc <fat_list_insert_last+0x38>
    14cc:	0047a703          	lw	a4,4(a5)
    14d0:	00f5a023          	sw	a5,0(a1)
    14d4:	00e5a223          	sw	a4,4(a1)
    14d8:	00071863          	bnez	a4,14e8 <fat_list_insert_last+0x64>
    14dc:	00b52223          	sw	a1,4(a0)
    14e0:	00b7a223          	sw	a1,4(a5)
    14e4:	00008067          	ret
    14e8:	00b72023          	sw	a1,0(a4)
    14ec:	ff5ff06f          	j	14e0 <fat_list_insert_last+0x5c>

000014f0 <FileString_StrCmpNoCase>:
    14f0:	00050893          	mv	a7,a0
    14f4:	00000693          	li	a3,0
    14f8:	01900313          	li	t1,25
    14fc:	00c69663          	bne	a3,a2,1508 <FileString_StrCmpNoCase+0x18>
    1500:	00000513          	li	a0,0
    1504:	00008067          	ret
    1508:	00d887b3          	add	a5,a7,a3
    150c:	0007c703          	lbu	a4,0(a5)
    1510:	00d587b3          	add	a5,a1,a3
    1514:	0007c783          	lbu	a5,0(a5)
    1518:	fbf70513          	add	a0,a4,-65
    151c:	0ff57513          	zext.b	a0,a0
    1520:	fbf78813          	add	a6,a5,-65
    1524:	0ff87813          	zext.b	a6,a6
    1528:	02a36863          	bltu	t1,a0,1558 <FileString_StrCmpNoCase+0x68>
    152c:	02070713          	add	a4,a4,32
    1530:	0ff77713          	zext.b	a4,a4
    1534:	01036c63          	bltu	t1,a6,154c <FileString_StrCmpNoCase+0x5c>
    1538:	02078793          	add	a5,a5,32
    153c:	0ff7f793          	zext.b	a5,a5
    1540:	40f70533          	sub	a0,a4,a5
    1544:	02f70e63          	beq	a4,a5,1580 <FileString_StrCmpNoCase+0x90>
    1548:	00008067          	ret
    154c:	40f70533          	sub	a0,a4,a5
    1550:	02f70863          	beq	a4,a5,1580 <FileString_StrCmpNoCase+0x90>
    1554:	00008067          	ret
    1558:	01036c63          	bltu	t1,a6,1570 <FileString_StrCmpNoCase+0x80>
    155c:	02078793          	add	a5,a5,32
    1560:	0ff7f793          	zext.b	a5,a5
    1564:	40f70533          	sub	a0,a4,a5
    1568:	00f70c63          	beq	a4,a5,1580 <FileString_StrCmpNoCase+0x90>
    156c:	00008067          	ret
    1570:	40f70533          	sub	a0,a4,a5
    1574:	f8f718e3          	bne	a4,a5,1504 <FileString_StrCmpNoCase+0x14>
    1578:	f80706e3          	beqz	a4,1504 <FileString_StrCmpNoCase+0x14>
    157c:	f80784e3          	beqz	a5,1504 <FileString_StrCmpNoCase+0x14>
    1580:	00168693          	add	a3,a3,1
    1584:	f79ff06f          	j	14fc <FileString_StrCmpNoCase+0xc>

00001588 <FileString_GetExtension>:
    1588:	00050713          	mv	a4,a0
    158c:	00050793          	mv	a5,a0
    1590:	02e00613          	li	a2,46
    1594:	fff00513          	li	a0,-1
    1598:	0007c683          	lbu	a3,0(a5)
    159c:	00069463          	bnez	a3,15a4 <FileString_GetExtension+0x1c>
    15a0:	00008067          	ret
    15a4:	00c69463          	bne	a3,a2,15ac <FileString_GetExtension+0x24>
    15a8:	40e78533          	sub	a0,a5,a4
    15ac:	00178793          	add	a5,a5,1
    15b0:	fe9ff06f          	j	1598 <FileString_GetExtension+0x10>

000015b4 <fatfs_fat_writeback>:
    15b4:	00059663          	bnez	a1,15c0 <fatfs_fat_writeback+0xc>
    15b8:	00000513          	li	a0,0
    15bc:	00008067          	ret
    15c0:	2045a703          	lw	a4,516(a1)
    15c4:	ff010113          	add	sp,sp,-16
    15c8:	00812423          	sw	s0,8(sp)
    15cc:	00112623          	sw	ra,12(sp)
    15d0:	00058413          	mv	s0,a1
    15d4:	00070a63          	beqz	a4,15e8 <fatfs_fat_writeback+0x34>
    15d8:	03852683          	lw	a3,56(a0)
    15dc:	00050793          	mv	a5,a0
    15e0:	00069863          	bnez	a3,15f0 <fatfs_fat_writeback+0x3c>
    15e4:	20042223          	sw	zero,516(s0)
    15e8:	00100513          	li	a0,1
    15ec:	0380006f          	j	1624 <fatfs_fat_writeback+0x70>
    15f0:	2005a503          	lw	a0,512(a1)
    15f4:	0147a703          	lw	a4,20(a5)
    15f8:	0207a583          	lw	a1,32(a5)
    15fc:	00100613          	li	a2,1
    1600:	40e507b3          	sub	a5,a0,a4
    1604:	00178793          	add	a5,a5,1
    1608:	00f5f663          	bgeu	a1,a5,1614 <fatfs_fat_writeback+0x60>
    160c:	00b70733          	add	a4,a4,a1
    1610:	40a70633          	sub	a2,a4,a0
    1614:	00040593          	mv	a1,s0
    1618:	000680e7          	jalr	a3
    161c:	fc0514e3          	bnez	a0,15e4 <fatfs_fat_writeback+0x30>
    1620:	00000513          	li	a0,0
    1624:	00c12083          	lw	ra,12(sp)
    1628:	00812403          	lw	s0,8(sp)
    162c:	01010113          	add	sp,sp,16
    1630:	00008067          	ret

00001634 <fatfs_fat_read_sector>:
    1634:	fe010113          	add	sp,sp,-32
    1638:	01212823          	sw	s2,16(sp)
    163c:	25452903          	lw	s2,596(a0)
    1640:	00812c23          	sw	s0,24(sp)
    1644:	00912a23          	sw	s1,20(sp)
    1648:	01312623          	sw	s3,12(sp)
    164c:	00112e23          	sw	ra,28(sp)
    1650:	00050993          	mv	s3,a0
    1654:	00058493          	mv	s1,a1
    1658:	00000413          	li	s0,0
    165c:	04091663          	bnez	s2,16a8 <fatfs_fat_read_sector+0x74>
    1660:	2549a783          	lw	a5,596(s3)
    1664:	20f42623          	sw	a5,524(s0)
    1668:	20442783          	lw	a5,516(s0)
    166c:	2489aa23          	sw	s0,596(s3)
    1670:	06078663          	beqz	a5,16dc <fatfs_fat_read_sector+0xa8>
    1674:	00040593          	mv	a1,s0
    1678:	00098513          	mv	a0,s3
    167c:	00000097          	auipc	ra,0x0
    1680:	f38080e7          	jalr	-200(ra) # 15b4 <fatfs_fat_writeback>
    1684:	04051c63          	bnez	a0,16dc <fatfs_fat_read_sector+0xa8>
    1688:	01c12083          	lw	ra,28(sp)
    168c:	01812403          	lw	s0,24(sp)
    1690:	01412483          	lw	s1,20(sp)
    1694:	00c12983          	lw	s3,12(sp)
    1698:	00090513          	mv	a0,s2
    169c:	01012903          	lw	s2,16(sp)
    16a0:	02010113          	add	sp,sp,32
    16a4:	00008067          	ret
    16a8:	20092783          	lw	a5,512(s2)
    16ac:	00f4e663          	bltu	s1,a5,16b8 <fatfs_fat_read_sector+0x84>
    16b0:	00178713          	add	a4,a5,1
    16b4:	04e4ee63          	bltu	s1,a4,1710 <fatfs_fat_read_sector+0xdc>
    16b8:	20c92783          	lw	a5,524(s2)
    16bc:	00079663          	bnez	a5,16c8 <fatfs_fat_read_sector+0x94>
    16c0:	00040a63          	beqz	s0,16d4 <fatfs_fat_read_sector+0xa0>
    16c4:	20042623          	sw	zero,524(s0)
    16c8:	00090413          	mv	s0,s2
    16cc:	20c92903          	lw	s2,524(s2)
    16d0:	f8dff06f          	j	165c <fatfs_fat_read_sector+0x28>
    16d4:	2409aa23          	sw	zero,596(s3)
    16d8:	ff1ff06f          	j	16c8 <fatfs_fat_read_sector+0x94>
    16dc:	0349a783          	lw	a5,52(s3)
    16e0:	20942023          	sw	s1,512(s0)
    16e4:	00100613          	li	a2,1
    16e8:	00040593          	mv	a1,s0
    16ec:	00048513          	mv	a0,s1
    16f0:	000780e7          	jalr	a5
    16f4:	00051863          	bnez	a0,1704 <fatfs_fat_read_sector+0xd0>
    16f8:	fff00793          	li	a5,-1
    16fc:	20f42023          	sw	a5,512(s0)
    1700:	f89ff06f          	j	1688 <fatfs_fat_read_sector+0x54>
    1704:	20842423          	sw	s0,520(s0)
    1708:	00040913          	mv	s2,s0
    170c:	f7dff06f          	j	1688 <fatfs_fat_read_sector+0x54>
    1710:	40f484b3          	sub	s1,s1,a5
    1714:	00949493          	sll	s1,s1,0x9
    1718:	009904b3          	add	s1,s2,s1
    171c:	20992423          	sw	s1,520(s2)
    1720:	f69ff06f          	j	1688 <fatfs_fat_read_sector+0x54>

00001724 <_allocate_file>:
    1724:	ff010113          	add	sp,sp,-16
    1728:	000067b7          	lui	a5,0x6
    172c:	00812423          	sw	s0,8(sp)
    1730:	3147a403          	lw	s0,788(a5) # 6314 <_free_file_list>
    1734:	00112623          	sw	ra,12(sp)
    1738:	02040e63          	beqz	s0,1774 <_allocate_file+0x50>
    173c:	00042703          	lw	a4,0(s0)
    1740:	00442683          	lw	a3,4(s0)
    1744:	31478793          	add	a5,a5,788
    1748:	04071063          	bnez	a4,1788 <_allocate_file+0x64>
    174c:	00d7a023          	sw	a3,0(a5)
    1750:	00442683          	lw	a3,4(s0)
    1754:	02069e63          	bnez	a3,1790 <_allocate_file+0x6c>
    1758:	00e7a223          	sw	a4,4(a5)
    175c:	00006537          	lui	a0,0x6
    1760:	00040593          	mv	a1,s0
    1764:	31c50513          	add	a0,a0,796 # 631c <_open_file_list>
    1768:	00000097          	auipc	ra,0x0
    176c:	d1c080e7          	jalr	-740(ra) # 1484 <fat_list_insert_last>
    1770:	bc440413          	add	s0,s0,-1084
    1774:	00c12083          	lw	ra,12(sp)
    1778:	00040513          	mv	a0,s0
    177c:	00812403          	lw	s0,8(sp)
    1780:	01010113          	add	sp,sp,16
    1784:	00008067          	ret
    1788:	00d72223          	sw	a3,4(a4)
    178c:	fc5ff06f          	j	1750 <_allocate_file+0x2c>
    1790:	00e6a023          	sw	a4,0(a3)
    1794:	fc9ff06f          	j	175c <_allocate_file+0x38>

00001798 <_free_file>:
    1798:	43c52783          	lw	a5,1084(a0)
    179c:	44052703          	lw	a4,1088(a0)
    17a0:	43c50593          	add	a1,a0,1084
    17a4:	02079663          	bnez	a5,17d0 <_free_file+0x38>
    17a8:	000066b7          	lui	a3,0x6
    17ac:	30e6ae23          	sw	a4,796(a3) # 631c <_open_file_list>
    17b0:	44052703          	lw	a4,1088(a0)
    17b4:	02071263          	bnez	a4,17d8 <_free_file+0x40>
    17b8:	00006737          	lui	a4,0x6
    17bc:	32f72023          	sw	a5,800(a4) # 6320 <_open_file_list+0x4>
    17c0:	00006537          	lui	a0,0x6
    17c4:	31450513          	add	a0,a0,788 # 6314 <_free_file_list>
    17c8:	00000317          	auipc	t1,0x0
    17cc:	cbc30067          	jr	-836(t1) # 1484 <fat_list_insert_last>
    17d0:	00e7a223          	sw	a4,4(a5)
    17d4:	fddff06f          	j	17b0 <_free_file+0x18>
    17d8:	00f72023          	sw	a5,0(a4)
    17dc:	fe5ff06f          	j	17c0 <_free_file+0x28>

000017e0 <fatfs_lba_of_cluster>:
    17e0:	ff010113          	add	sp,sp,-16
    17e4:	00812423          	sw	s0,8(sp)
    17e8:	00112623          	sw	ra,12(sp)
    17ec:	00050413          	mv	s0,a0
    17f0:	00058513          	mv	a0,a1
    17f4:	00044583          	lbu	a1,0(s0)
    17f8:	ffe50513          	add	a0,a0,-2
    17fc:	00000097          	auipc	ra,0x0
    1800:	c60080e7          	jalr	-928(ra) # 145c <__mulsi3>
    1804:	00442783          	lw	a5,4(s0)
    1808:	00f50533          	add	a0,a0,a5
    180c:	03042783          	lw	a5,48(s0)
    1810:	00079863          	bnez	a5,1820 <fatfs_lba_of_cluster+0x40>
    1814:	02845783          	lhu	a5,40(s0)
    1818:	4047d793          	sra	a5,a5,0x4
    181c:	00f50533          	add	a0,a0,a5
    1820:	00c12083          	lw	ra,12(sp)
    1824:	00812403          	lw	s0,8(sp)
    1828:	01010113          	add	sp,sp,16
    182c:	00008067          	ret

00001830 <fatfs_sector_read>:
    1830:	03452783          	lw	a5,52(a0)
    1834:	00058713          	mv	a4,a1
    1838:	00070513          	mv	a0,a4
    183c:	00060593          	mv	a1,a2
    1840:	00068613          	mv	a2,a3
    1844:	00078067          	jr	a5

00001848 <fatfs_sector_write>:
    1848:	03852783          	lw	a5,56(a0)
    184c:	00058713          	mv	a4,a1
    1850:	00070513          	mv	a0,a4
    1854:	00060593          	mv	a1,a2
    1858:	00068613          	mv	a2,a3
    185c:	00078067          	jr	a5

00001860 <fatfs_write_sector>:
    1860:	03852783          	lw	a5,56(a0)
    1864:	0a078863          	beqz	a5,1914 <fatfs_write_sector+0xb4>
    1868:	fe010113          	add	sp,sp,-32
    186c:	01212823          	sw	s2,16(sp)
    1870:	00068913          	mv	s2,a3
    1874:	03052683          	lw	a3,48(a0)
    1878:	00812c23          	sw	s0,24(sp)
    187c:	00912a23          	sw	s1,20(sp)
    1880:	00112e23          	sw	ra,28(sp)
    1884:	00d5e733          	or	a4,a1,a3
    1888:	00050413          	mv	s0,a0
    188c:	00060493          	mv	s1,a2
    1890:	04071063          	bnez	a4,18d0 <fatfs_write_sector+0x70>
    1894:	01052703          	lw	a4,16(a0)
    1898:	06e67063          	bgeu	a2,a4,18f8 <fatfs_write_sector+0x98>
    189c:	01c52503          	lw	a0,28(a0)
    18a0:	00c42703          	lw	a4,12(s0)
    18a4:	00e50533          	add	a0,a0,a4
    18a8:	00c50533          	add	a0,a0,a2
    18ac:	02090e63          	beqz	s2,18e8 <fatfs_write_sector+0x88>
    18b0:	00100613          	li	a2,1
    18b4:	00090593          	mv	a1,s2
    18b8:	01812403          	lw	s0,24(sp)
    18bc:	01c12083          	lw	ra,28(sp)
    18c0:	01412483          	lw	s1,20(sp)
    18c4:	01012903          	lw	s2,16(sp)
    18c8:	02010113          	add	sp,sp,32
    18cc:	00078067          	jr	a5
    18d0:	00f12623          	sw	a5,12(sp)
    18d4:	00000097          	auipc	ra,0x0
    18d8:	f0c080e7          	jalr	-244(ra) # 17e0 <fatfs_lba_of_cluster>
    18dc:	00c12783          	lw	a5,12(sp)
    18e0:	00a48533          	add	a0,s1,a0
    18e4:	fc9ff06f          	j	18ac <fatfs_write_sector+0x4c>
    18e8:	24a42223          	sw	a0,580(s0)
    18ec:	00100613          	li	a2,1
    18f0:	04440593          	add	a1,s0,68
    18f4:	fc5ff06f          	j	18b8 <fatfs_write_sector+0x58>
    18f8:	01c12083          	lw	ra,28(sp)
    18fc:	01812403          	lw	s0,24(sp)
    1900:	01412483          	lw	s1,20(sp)
    1904:	01012903          	lw	s2,16(sp)
    1908:	00000513          	li	a0,0
    190c:	02010113          	add	sp,sp,32
    1910:	00008067          	ret
    1914:	00000513          	li	a0,0
    1918:	00008067          	ret

0000191c <fl_init>:
    191c:	ff010113          	add	sp,sp,-16
    1920:	00812423          	sw	s0,8(sp)
    1924:	00006437          	lui	s0,0x6
    1928:	00112623          	sw	ra,12(sp)
    192c:	31440793          	add	a5,s0,788 # 6314 <_free_file_list>
    1930:	0007a223          	sw	zero,4(a5)
    1934:	0007a023          	sw	zero,0(a5)
    1938:	000075b7          	lui	a1,0x7
    193c:	000067b7          	lui	a5,0x6
    1940:	31c78793          	add	a5,a5,796 # 631c <_open_file_list>
    1944:	31440513          	add	a0,s0,788
    1948:	c2c58593          	add	a1,a1,-980 # 6c2c <_files+0x43c>
    194c:	0007a223          	sw	zero,4(a5)
    1950:	0007a023          	sw	zero,0(a5)
    1954:	00000097          	auipc	ra,0x0
    1958:	b30080e7          	jalr	-1232(ra) # 1484 <fat_list_insert_last>
    195c:	000075b7          	lui	a1,0x7
    1960:	31440513          	add	a0,s0,788
    1964:	07058593          	add	a1,a1,112 # 7070 <_files+0x880>
    1968:	00000097          	auipc	ra,0x0
    196c:	b1c080e7          	jalr	-1252(ra) # 1484 <fat_list_insert_last>
    1970:	00c12083          	lw	ra,12(sp)
    1974:	00812403          	lw	s0,8(sp)
    1978:	000067b7          	lui	a5,0x6
    197c:	00100713          	li	a4,1
    1980:	32e7a423          	sw	a4,808(a5) # 6328 <_filelib_init>
    1984:	01010113          	add	sp,sp,16
    1988:	00008067          	ret

0000198c <fl_closedir>:
    198c:	00000513          	li	a0,0
    1990:	00008067          	ret

00001994 <fatfs_lfn_cache_entry>:
    1994:	0005c783          	lbu	a5,0(a1)
    1998:	01300693          	li	a3,19
    199c:	01f7f793          	and	a5,a5,31
    19a0:	fff78713          	add	a4,a5,-1
    19a4:	0ff77613          	zext.b	a2,a4
    19a8:	0ac6ea63          	bltu	a3,a2,1a5c <fatfs_lfn_cache_entry+0xc8>
    19ac:	10554683          	lbu	a3,261(a0)
    19b0:	00069463          	bnez	a3,19b8 <fatfs_lfn_cache_entry+0x24>
    19b4:	10f502a3          	sb	a5,261(a0)
    19b8:	00171793          	sll	a5,a4,0x1
    19bc:	00e787b3          	add	a5,a5,a4
    19c0:	0015c683          	lbu	a3,1(a1)
    19c4:	00279793          	sll	a5,a5,0x2
    19c8:	00e787b3          	add	a5,a5,a4
    19cc:	00f50533          	add	a0,a0,a5
    19d0:	00d50023          	sb	a3,0(a0)
    19d4:	0035c783          	lbu	a5,3(a1)
    19d8:	0ff00713          	li	a4,255
    19dc:	02000693          	li	a3,32
    19e0:	00f500a3          	sb	a5,1(a0)
    19e4:	0055c783          	lbu	a5,5(a1)
    19e8:	00f50123          	sb	a5,2(a0)
    19ec:	0075c783          	lbu	a5,7(a1)
    19f0:	00f501a3          	sb	a5,3(a0)
    19f4:	0095c783          	lbu	a5,9(a1)
    19f8:	00f50223          	sb	a5,4(a0)
    19fc:	00e5c783          	lbu	a5,14(a1)
    1a00:	00f502a3          	sb	a5,5(a0)
    1a04:	0105c783          	lbu	a5,16(a1)
    1a08:	00f50323          	sb	a5,6(a0)
    1a0c:	0125c783          	lbu	a5,18(a1)
    1a10:	00f503a3          	sb	a5,7(a0)
    1a14:	0145c783          	lbu	a5,20(a1)
    1a18:	00f50423          	sb	a5,8(a0)
    1a1c:	0165c783          	lbu	a5,22(a1)
    1a20:	00f504a3          	sb	a5,9(a0)
    1a24:	0185c783          	lbu	a5,24(a1)
    1a28:	00f50523          	sb	a5,10(a0)
    1a2c:	01c5c783          	lbu	a5,28(a1)
    1a30:	00f505a3          	sb	a5,11(a0)
    1a34:	01e5c783          	lbu	a5,30(a1)
    1a38:	00f50623          	sb	a5,12(a0)
    1a3c:	00d00793          	li	a5,13
    1a40:	00054603          	lbu	a2,0(a0)
    1a44:	00e61463          	bne	a2,a4,1a4c <fatfs_lfn_cache_entry+0xb8>
    1a48:	00d50023          	sb	a3,0(a0)
    1a4c:	fff78793          	add	a5,a5,-1
    1a50:	0ff7f793          	zext.b	a5,a5
    1a54:	00150513          	add	a0,a0,1
    1a58:	fe0794e3          	bnez	a5,1a40 <fatfs_lfn_cache_entry+0xac>
    1a5c:	00008067          	ret

00001a60 <fatfs_lfn_cache_get>:
    1a60:	10554703          	lbu	a4,261(a0)
    1a64:	01400793          	li	a5,20
    1a68:	00f71663          	bne	a4,a5,1a74 <fatfs_lfn_cache_get+0x14>
    1a6c:	10050223          	sb	zero,260(a0)
    1a70:	00008067          	ret
    1a74:	02070063          	beqz	a4,1a94 <fatfs_lfn_cache_get+0x34>
    1a78:	00171793          	sll	a5,a4,0x1
    1a7c:	00e787b3          	add	a5,a5,a4
    1a80:	00279793          	sll	a5,a5,0x2
    1a84:	00e787b3          	add	a5,a5,a4
    1a88:	00f507b3          	add	a5,a0,a5
    1a8c:	00078023          	sb	zero,0(a5)
    1a90:	00008067          	ret
    1a94:	00050023          	sb	zero,0(a0)
    1a98:	00008067          	ret

00001a9c <fatfs_entry_lfn_text>:
    1a9c:	00b54503          	lbu	a0,11(a0)
    1aa0:	00f57513          	and	a0,a0,15
    1aa4:	ff150513          	add	a0,a0,-15
    1aa8:	00153513          	seqz	a0,a0
    1aac:	00008067          	ret

00001ab0 <fatfs_entry_lfn_invalid>:
    1ab0:	00054703          	lbu	a4,0(a0)
    1ab4:	00050793          	mv	a5,a0
    1ab8:	02070463          	beqz	a4,1ae0 <fatfs_entry_lfn_invalid+0x30>
    1abc:	0e500693          	li	a3,229
    1ac0:	00100513          	li	a0,1
    1ac4:	02d70063          	beq	a4,a3,1ae4 <fatfs_entry_lfn_invalid+0x34>
    1ac8:	00b7c783          	lbu	a5,11(a5)
    1acc:	00800713          	li	a4,8
    1ad0:	00e78a63          	beq	a5,a4,1ae4 <fatfs_entry_lfn_invalid+0x34>
    1ad4:	0067f793          	and	a5,a5,6
    1ad8:	00f03533          	snez	a0,a5
    1adc:	00008067          	ret
    1ae0:	00100513          	li	a0,1
    1ae4:	00008067          	ret

00001ae8 <fatfs_entry_lfn_exists>:
    1ae8:	00b5c783          	lbu	a5,11(a1)
    1aec:	00f00693          	li	a3,15
    1af0:	00050713          	mv	a4,a0
    1af4:	02d78a63          	beq	a5,a3,1b28 <fatfs_entry_lfn_exists+0x40>
    1af8:	0005c683          	lbu	a3,0(a1)
    1afc:	00000513          	li	a0,0
    1b00:	02068663          	beqz	a3,1b2c <fatfs_entry_lfn_exists+0x44>
    1b04:	0e500613          	li	a2,229
    1b08:	02c68263          	beq	a3,a2,1b2c <fatfs_entry_lfn_exists+0x44>
    1b0c:	00800693          	li	a3,8
    1b10:	00d78e63          	beq	a5,a3,1b2c <fatfs_entry_lfn_exists+0x44>
    1b14:	0067f793          	and	a5,a5,6
    1b18:	00079a63          	bnez	a5,1b2c <fatfs_entry_lfn_exists+0x44>
    1b1c:	10574503          	lbu	a0,261(a4)
    1b20:	00a03533          	snez	a0,a0
    1b24:	00008067          	ret
    1b28:	00000513          	li	a0,0
    1b2c:	00008067          	ret

00001b30 <fatfs_entry_sfn_only>:
    1b30:	00b54783          	lbu	a5,11(a0)
    1b34:	00f00713          	li	a4,15
    1b38:	02e78663          	beq	a5,a4,1b64 <fatfs_entry_sfn_only+0x34>
    1b3c:	00054703          	lbu	a4,0(a0)
    1b40:	00000513          	li	a0,0
    1b44:	02070263          	beqz	a4,1b68 <fatfs_entry_sfn_only+0x38>
    1b48:	0e500693          	li	a3,229
    1b4c:	00d70e63          	beq	a4,a3,1b68 <fatfs_entry_sfn_only+0x38>
    1b50:	00800713          	li	a4,8
    1b54:	00e78a63          	beq	a5,a4,1b68 <fatfs_entry_sfn_only+0x38>
    1b58:	0067f793          	and	a5,a5,6
    1b5c:	0017b513          	seqz	a0,a5
    1b60:	00008067          	ret
    1b64:	00000513          	li	a0,0
    1b68:	00008067          	ret

00001b6c <fatfs_entry_is_dir>:
    1b6c:	00b54503          	lbu	a0,11(a0)
    1b70:	00455513          	srl	a0,a0,0x4
    1b74:	00157513          	and	a0,a0,1
    1b78:	00008067          	ret

00001b7c <fatfs_entry_is_file>:
    1b7c:	00b54503          	lbu	a0,11(a0)
    1b80:	00555513          	srl	a0,a0,0x5
    1b84:	00157513          	and	a0,a0,1
    1b88:	00008067          	ret

00001b8c <fatfs_lfn_entries_required>:
    1b8c:	ff010113          	add	sp,sp,-16
    1b90:	00112623          	sw	ra,12(sp)
    1b94:	fffff097          	auipc	ra,0xfffff
    1b98:	21c080e7          	jalr	540(ra) # db0 <strlen>
    1b9c:	00050a63          	beqz	a0,1bb0 <fatfs_lfn_entries_required+0x24>
    1ba0:	00d00593          	li	a1,13
    1ba4:	00c50513          	add	a0,a0,12
    1ba8:	fffff097          	auipc	ra,0xfffff
    1bac:	114080e7          	jalr	276(ra) # cbc <__divsi3>
    1bb0:	00c12083          	lw	ra,12(sp)
    1bb4:	01010113          	add	sp,sp,16
    1bb8:	00008067          	ret

00001bbc <fatfs_filename_to_lfn>:
    1bbc:	fa010113          	add	sp,sp,-96
    1bc0:	04912a23          	sw	s1,84(sp)
    1bc4:	00058493          	mv	s1,a1
    1bc8:	000065b7          	lui	a1,0x6
    1bcc:	02458593          	add	a1,a1,36 # 6024 <font+0x1f4>
    1bd0:	05212823          	sw	s2,80(sp)
    1bd4:	05312623          	sw	s3,76(sp)
    1bd8:	00060913          	mv	s2,a2
    1bdc:	00050993          	mv	s3,a0
    1be0:	03400613          	li	a2,52
    1be4:	00c10513          	add	a0,sp,12
    1be8:	04112e23          	sw	ra,92(sp)
    1bec:	04812c23          	sw	s0,88(sp)
    1bf0:	05412423          	sw	s4,72(sp)
    1bf4:	05512223          	sw	s5,68(sp)
    1bf8:	05612023          	sw	s6,64(sp)
    1bfc:	00068b13          	mv	s6,a3
    1c00:	fffff097          	auipc	ra,0xfffff
    1c04:	18c080e7          	jalr	396(ra) # d8c <memcpy>
    1c08:	00098513          	mv	a0,s3
    1c0c:	fffff097          	auipc	ra,0xfffff
    1c10:	1a4080e7          	jalr	420(ra) # db0 <strlen>
    1c14:	00050a93          	mv	s5,a0
    1c18:	00098513          	mv	a0,s3
    1c1c:	00000097          	auipc	ra,0x0
    1c20:	f70080e7          	jalr	-144(ra) # 1b8c <fatfs_lfn_entries_required>
    1c24:	00191793          	sll	a5,s2,0x1
    1c28:	012787b3          	add	a5,a5,s2
    1c2c:	00279793          	sll	a5,a5,0x2
    1c30:	00050a13          	mv	s4,a0
    1c34:	02000613          	li	a2,32
    1c38:	00000593          	li	a1,0
    1c3c:	00048513          	mv	a0,s1
    1c40:	01278433          	add	s0,a5,s2
    1c44:	fffff097          	auipc	ra,0xfffff
    1c48:	12c080e7          	jalr	300(ra) # d70 <memset>
    1c4c:	00190793          	add	a5,s2,1
    1c50:	fffa0a13          	add	s4,s4,-1
    1c54:	0ff7f793          	zext.b	a5,a5
    1c58:	012a1463          	bne	s4,s2,1c60 <fatfs_filename_to_lfn+0xa4>
    1c5c:	0407e793          	or	a5,a5,64
    1c60:	00f48023          	sb	a5,0(s1)
    1c64:	00f00793          	li	a5,15
    1c68:	00f485a3          	sb	a5,11(s1)
    1c6c:	016486a3          	sb	s6,13(s1)
    1c70:	00c10713          	add	a4,sp,12
    1c74:	00040793          	mv	a5,s0
    1c78:	00d40593          	add	a1,s0,13
    1c7c:	fff00613          	li	a2,-1
    1c80:	00072683          	lw	a3,0(a4)
    1c84:	00d486b3          	add	a3,s1,a3
    1c88:	0557d263          	bge	a5,s5,1ccc <fatfs_filename_to_lfn+0x110>
    1c8c:	00f98533          	add	a0,s3,a5
    1c90:	00054503          	lbu	a0,0(a0)
    1c94:	00a68023          	sb	a0,0(a3)
    1c98:	00178793          	add	a5,a5,1
    1c9c:	00470713          	add	a4,a4,4
    1ca0:	feb790e3          	bne	a5,a1,1c80 <fatfs_filename_to_lfn+0xc4>
    1ca4:	05c12083          	lw	ra,92(sp)
    1ca8:	05812403          	lw	s0,88(sp)
    1cac:	05412483          	lw	s1,84(sp)
    1cb0:	05012903          	lw	s2,80(sp)
    1cb4:	04c12983          	lw	s3,76(sp)
    1cb8:	04812a03          	lw	s4,72(sp)
    1cbc:	04412a83          	lw	s5,68(sp)
    1cc0:	04012b03          	lw	s6,64(sp)
    1cc4:	06010113          	add	sp,sp,96
    1cc8:	00008067          	ret
    1ccc:	00fa9663          	bne	s5,a5,1cd8 <fatfs_filename_to_lfn+0x11c>
    1cd0:	00068023          	sb	zero,0(a3)
    1cd4:	fc5ff06f          	j	1c98 <fatfs_filename_to_lfn+0xdc>
    1cd8:	00c68023          	sb	a2,0(a3)
    1cdc:	00c680a3          	sb	a2,1(a3)
    1ce0:	fb9ff06f          	j	1c98 <fatfs_filename_to_lfn+0xdc>

00001ce4 <fatfs_sfn_create_entry>:
    1ce4:	00000793          	li	a5,0
    1ce8:	00b00813          	li	a6,11
    1cec:	00f508b3          	add	a7,a0,a5
    1cf0:	0008c303          	lbu	t1,0(a7)
    1cf4:	00f688b3          	add	a7,a3,a5
    1cf8:	00178793          	add	a5,a5,1
    1cfc:	00688023          	sb	t1,0(a7)
    1d00:	ff0796e3          	bne	a5,a6,1cec <fatfs_sfn_create_entry+0x8>
    1d04:	02000793          	li	a5,32
    1d08:	00f68823          	sb	a5,16(a3)
    1d0c:	00f68923          	sb	a5,18(a3)
    1d10:	00f68c23          	sb	a5,24(a3)
    1d14:	000686a3          	sb	zero,13(a3)
    1d18:	00068723          	sb	zero,14(a3)
    1d1c:	000687a3          	sb	zero,15(a3)
    1d20:	000688a3          	sb	zero,17(a3)
    1d24:	000689a3          	sb	zero,19(a3)
    1d28:	00068b23          	sb	zero,22(a3)
    1d2c:	00068ba3          	sb	zero,23(a3)
    1d30:	00068ca3          	sb	zero,25(a3)
    1d34:	01000793          	li	a5,16
    1d38:	00071463          	bnez	a4,1d40 <fatfs_sfn_create_entry+0x5c>
    1d3c:	02000793          	li	a5,32
    1d40:	00f685a3          	sb	a5,11(a3)
    1d44:	01065793          	srl	a5,a2,0x10
    1d48:	00f68a23          	sb	a5,20(a3)
    1d4c:	0087d793          	srl	a5,a5,0x8
    1d50:	00f68aa3          	sb	a5,21(a3)
    1d54:	01061793          	sll	a5,a2,0x10
    1d58:	0107d793          	srl	a5,a5,0x10
    1d5c:	0087d793          	srl	a5,a5,0x8
    1d60:	00f68da3          	sb	a5,27(a3)
    1d64:	0085d793          	srl	a5,a1,0x8
    1d68:	00b68e23          	sb	a1,28(a3)
    1d6c:	00f68ea3          	sb	a5,29(a3)
    1d70:	0105d793          	srl	a5,a1,0x10
    1d74:	0185d593          	srl	a1,a1,0x18
    1d78:	00068623          	sb	zero,12(a3)
    1d7c:	00c68d23          	sb	a2,26(a3)
    1d80:	00f68f23          	sb	a5,30(a3)
    1d84:	00b68fa3          	sb	a1,31(a3)
    1d88:	00008067          	ret

00001d8c <fatfs_lfn_create_sfn>:
    1d8c:	0005c703          	lbu	a4,0(a1)
    1d90:	02e00793          	li	a5,46
    1d94:	16f70663          	beq	a4,a5,1f00 <fatfs_lfn_create_sfn+0x174>
    1d98:	fe010113          	add	sp,sp,-32
    1d9c:	00912a23          	sw	s1,20(sp)
    1da0:	00050493          	mv	s1,a0
    1da4:	00058513          	mv	a0,a1
    1da8:	00112e23          	sw	ra,28(sp)
    1dac:	00812c23          	sw	s0,24(sp)
    1db0:	01212823          	sw	s2,16(sp)
    1db4:	00058413          	mv	s0,a1
    1db8:	fffff097          	auipc	ra,0xfffff
    1dbc:	ff8080e7          	jalr	-8(ra) # db0 <strlen>
    1dc0:	00b00613          	li	a2,11
    1dc4:	02000593          	li	a1,32
    1dc8:	00050913          	mv	s2,a0
    1dcc:	00048513          	mv	a0,s1
    1dd0:	fffff097          	auipc	ra,0xfffff
    1dd4:	fa0080e7          	jalr	-96(ra) # d70 <memset>
    1dd8:	00300613          	li	a2,3
    1ddc:	02000593          	li	a1,32
    1de0:	00c10513          	add	a0,sp,12
    1de4:	fffff097          	auipc	ra,0xfffff
    1de8:	f8c080e7          	jalr	-116(ra) # d70 <memset>
    1dec:	fff00713          	li	a4,-1
    1df0:	00000793          	li	a5,0
    1df4:	02e00693          	li	a3,46
    1df8:	0d27c263          	blt	a5,s2,1ebc <fatfs_lfn_create_sfn+0x130>
    1dfc:	fff00793          	li	a5,-1
    1e00:	0ef70863          	beq	a4,a5,1ef0 <fatfs_lfn_create_sfn+0x164>
    1e04:	00170793          	add	a5,a4,1
    1e08:	00c10693          	add	a3,sp,12
    1e0c:	00470613          	add	a2,a4,4
    1e10:	0cf61263          	bne	a2,a5,1ed4 <fatfs_lfn_create_sfn+0x148>
    1e14:	00000613          	li	a2,0
    1e18:	00000693          	li	a3,0
    1e1c:	02000513          	li	a0,32
    1e20:	02e00813          	li	a6,46
    1e24:	01900893          	li	a7,25
    1e28:	00800313          	li	t1,8
    1e2c:	02e6dc63          	bge	a3,a4,1e64 <fatfs_lfn_create_sfn+0xd8>
    1e30:	00d407b3          	add	a5,s0,a3
    1e34:	0007c783          	lbu	a5,0(a5)
    1e38:	0ca78063          	beq	a5,a0,1ef8 <fatfs_lfn_create_sfn+0x16c>
    1e3c:	0b078e63          	beq	a5,a6,1ef8 <fatfs_lfn_create_sfn+0x16c>
    1e40:	f9f78593          	add	a1,a5,-97
    1e44:	0ff5f593          	zext.b	a1,a1
    1e48:	00c48e33          	add	t3,s1,a2
    1e4c:	00160613          	add	a2,a2,1
    1e50:	00b8e663          	bltu	a7,a1,1e5c <fatfs_lfn_create_sfn+0xd0>
    1e54:	fe078793          	add	a5,a5,-32
    1e58:	0ff7f793          	zext.b	a5,a5
    1e5c:	00fe0023          	sb	a5,0(t3)
    1e60:	08661c63          	bne	a2,t1,1ef8 <fatfs_lfn_create_sfn+0x16c>
    1e64:	00c10793          	add	a5,sp,12
    1e68:	00800693          	li	a3,8
    1e6c:	01900513          	li	a0,25
    1e70:	00b00593          	li	a1,11
    1e74:	0007c703          	lbu	a4,0(a5)
    1e78:	f9f70613          	add	a2,a4,-97
    1e7c:	0ff67613          	zext.b	a2,a2
    1e80:	00c56663          	bltu	a0,a2,1e8c <fatfs_lfn_create_sfn+0x100>
    1e84:	fe070713          	add	a4,a4,-32
    1e88:	0ff77713          	zext.b	a4,a4
    1e8c:	00d48633          	add	a2,s1,a3
    1e90:	00e60023          	sb	a4,0(a2)
    1e94:	00168693          	add	a3,a3,1
    1e98:	00178793          	add	a5,a5,1
    1e9c:	fcb69ce3          	bne	a3,a1,1e74 <fatfs_lfn_create_sfn+0xe8>
    1ea0:	01c12083          	lw	ra,28(sp)
    1ea4:	01812403          	lw	s0,24(sp)
    1ea8:	01412483          	lw	s1,20(sp)
    1eac:	01012903          	lw	s2,16(sp)
    1eb0:	00100513          	li	a0,1
    1eb4:	02010113          	add	sp,sp,32
    1eb8:	00008067          	ret
    1ebc:	00f40633          	add	a2,s0,a5
    1ec0:	00064603          	lbu	a2,0(a2)
    1ec4:	00d61463          	bne	a2,a3,1ecc <fatfs_lfn_create_sfn+0x140>
    1ec8:	00078713          	mv	a4,a5
    1ecc:	00178793          	add	a5,a5,1
    1ed0:	f29ff06f          	j	1df8 <fatfs_lfn_create_sfn+0x6c>
    1ed4:	0127d863          	bge	a5,s2,1ee4 <fatfs_lfn_create_sfn+0x158>
    1ed8:	00f405b3          	add	a1,s0,a5
    1edc:	0005c583          	lbu	a1,0(a1)
    1ee0:	00b68023          	sb	a1,0(a3)
    1ee4:	00178793          	add	a5,a5,1
    1ee8:	00168693          	add	a3,a3,1
    1eec:	f25ff06f          	j	1e10 <fatfs_lfn_create_sfn+0x84>
    1ef0:	00090713          	mv	a4,s2
    1ef4:	f21ff06f          	j	1e14 <fatfs_lfn_create_sfn+0x88>
    1ef8:	00168693          	add	a3,a3,1
    1efc:	f31ff06f          	j	1e2c <fatfs_lfn_create_sfn+0xa0>
    1f00:	00000513          	li	a0,0
    1f04:	00008067          	ret

00001f08 <fatfs_lfn_generate_tail>:
    1f08:	000187b7          	lui	a5,0x18
    1f0c:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1f10:	16c7e463          	bltu	a5,a2,2078 <fatfs_lfn_generate_tail+0x170>
    1f14:	fa010113          	add	sp,sp,-96
    1f18:	04812c23          	sw	s0,88(sp)
    1f1c:	04912a23          	sw	s1,84(sp)
    1f20:	05412423          	sw	s4,72(sp)
    1f24:	00050493          	mv	s1,a0
    1f28:	00058a13          	mv	s4,a1
    1f2c:	00060413          	mv	s0,a2
    1f30:	00000593          	li	a1,0
    1f34:	00c00613          	li	a2,12
    1f38:	00410513          	add	a0,sp,4
    1f3c:	04112e23          	sw	ra,92(sp)
    1f40:	05312623          	sw	s3,76(sp)
    1f44:	05512223          	sw	s5,68(sp)
    1f48:	03712e23          	sw	s7,60(sp)
    1f4c:	05212823          	sw	s2,80(sp)
    1f50:	05612023          	sw	s6,64(sp)
    1f54:	fffff097          	auipc	ra,0xfffff
    1f58:	e1c080e7          	jalr	-484(ra) # d70 <memset>
    1f5c:	000065b7          	lui	a1,0x6
    1f60:	07e00793          	li	a5,126
    1f64:	01100613          	li	a2,17
    1f68:	01058593          	add	a1,a1,16 # 6010 <font+0x1e0>
    1f6c:	01c10513          	add	a0,sp,28
    1f70:	01010993          	add	s3,sp,16
    1f74:	00f10223          	sb	a5,4(sp)
    1f78:	00098a93          	mv	s5,s3
    1f7c:	fffff097          	auipc	ra,0xfffff
    1f80:	e10080e7          	jalr	-496(ra) # d8c <memcpy>
    1f84:	00900b93          	li	s7,9
    1f88:	00a00593          	li	a1,10
    1f8c:	00040513          	mv	a0,s0
    1f90:	fffff097          	auipc	ra,0xfffff
    1f94:	d7c080e7          	jalr	-644(ra) # d0c <__umodsi3>
    1f98:	03050793          	add	a5,a0,48
    1f9c:	00278533          	add	a0,a5,sp
    1fa0:	fec54783          	lbu	a5,-20(a0)
    1fa4:	00098913          	mv	s2,s3
    1fa8:	00040513          	mv	a0,s0
    1fac:	00a00593          	li	a1,10
    1fb0:	00f98023          	sb	a5,0(s3)
    1fb4:	00040b13          	mv	s6,s0
    1fb8:	fffff097          	auipc	ra,0xfffff
    1fbc:	d0c080e7          	jalr	-756(ra) # cc4 <__udivsi3>
    1fc0:	00198993          	add	s3,s3,1
    1fc4:	00050413          	mv	s0,a0
    1fc8:	fd6be0e3          	bltu	s7,s6,1f88 <fatfs_lfn_generate_tail+0x80>
    1fcc:	00098023          	sb	zero,0(s3)
    1fd0:	00410713          	add	a4,sp,4
    1fd4:	00090793          	mv	a5,s2
    1fd8:	00170713          	add	a4,a4,1
    1fdc:	0957f663          	bgeu	a5,s5,2068 <fatfs_lfn_generate_tail+0x160>
    1fe0:	00f10713          	add	a4,sp,15
    1fe4:	00000793          	li	a5,0
    1fe8:	00e96663          	bltu	s2,a4,1ff4 <fatfs_lfn_generate_tail+0xec>
    1fec:	41590933          	sub	s2,s2,s5
    1ff0:	00190793          	add	a5,s2,1
    1ff4:	03078793          	add	a5,a5,48
    1ff8:	002787b3          	add	a5,a5,sp
    1ffc:	000a0593          	mv	a1,s4
    2000:	fc078aa3          	sb	zero,-43(a5)
    2004:	00b00613          	li	a2,11
    2008:	00048513          	mv	a0,s1
    200c:	fffff097          	auipc	ra,0xfffff
    2010:	d80080e7          	jalr	-640(ra) # d8c <memcpy>
    2014:	00410513          	add	a0,sp,4
    2018:	fffff097          	auipc	ra,0xfffff
    201c:	d98080e7          	jalr	-616(ra) # db0 <strlen>
    2020:	40a484b3          	sub	s1,s1,a0
    2024:	00050613          	mv	a2,a0
    2028:	00410593          	add	a1,sp,4
    202c:	00848513          	add	a0,s1,8
    2030:	fffff097          	auipc	ra,0xfffff
    2034:	d5c080e7          	jalr	-676(ra) # d8c <memcpy>
    2038:	05c12083          	lw	ra,92(sp)
    203c:	05812403          	lw	s0,88(sp)
    2040:	05412483          	lw	s1,84(sp)
    2044:	05012903          	lw	s2,80(sp)
    2048:	04c12983          	lw	s3,76(sp)
    204c:	04812a03          	lw	s4,72(sp)
    2050:	04412a83          	lw	s5,68(sp)
    2054:	04012b03          	lw	s6,64(sp)
    2058:	03c12b83          	lw	s7,60(sp)
    205c:	00100513          	li	a0,1
    2060:	06010113          	add	sp,sp,96
    2064:	00008067          	ret
    2068:	0007c683          	lbu	a3,0(a5)
    206c:	fff78793          	add	a5,a5,-1
    2070:	00d70023          	sb	a3,0(a4)
    2074:	f65ff06f          	j	1fd8 <fatfs_lfn_generate_tail+0xd0>
    2078:	00000513          	li	a0,0
    207c:	00008067          	ret

00002080 <fatfs_total_path_levels>:
    2080:	00050793          	mv	a5,a0
    2084:	06050463          	beqz	a0,20ec <fatfs_total_path_levels+0x6c>
    2088:	00054703          	lbu	a4,0(a0)
    208c:	02f00693          	li	a3,47
    2090:	00d71863          	bne	a4,a3,20a0 <fatfs_total_path_levels+0x20>
    2094:	00150793          	add	a5,a0,1
    2098:	00000513          	li	a0,0
    209c:	0400006f          	j	20dc <fatfs_total_path_levels+0x5c>
    20a0:	00154683          	lbu	a3,1(a0)
    20a4:	03a00713          	li	a4,58
    20a8:	00e68a63          	beq	a3,a4,20bc <fatfs_total_path_levels+0x3c>
    20ac:	00254683          	lbu	a3,2(a0)
    20b0:	05c00713          	li	a4,92
    20b4:	fff00513          	li	a0,-1
    20b8:	02e69c63          	bne	a3,a4,20f0 <fatfs_total_path_levels+0x70>
    20bc:	00378793          	add	a5,a5,3
    20c0:	05c00713          	li	a4,92
    20c4:	fd5ff06f          	j	2098 <fatfs_total_path_levels+0x18>
    20c8:	00178793          	add	a5,a5,1
    20cc:	00e68663          	beq	a3,a4,20d8 <fatfs_total_path_levels+0x58>
    20d0:	0007c683          	lbu	a3,0(a5)
    20d4:	fe069ae3          	bnez	a3,20c8 <fatfs_total_path_levels+0x48>
    20d8:	00150513          	add	a0,a0,1
    20dc:	0007c683          	lbu	a3,0(a5)
    20e0:	fe0698e3          	bnez	a3,20d0 <fatfs_total_path_levels+0x50>
    20e4:	fff50513          	add	a0,a0,-1
    20e8:	00008067          	ret
    20ec:	fff00513          	li	a0,-1
    20f0:	00008067          	ret

000020f4 <fatfs_get_substring>:
    20f4:	0e050663          	beqz	a0,21e0 <fatfs_get_substring+0xec>
    20f8:	fe010113          	add	sp,sp,-32
    20fc:	00912a23          	sw	s1,20(sp)
    2100:	00112e23          	sw	ra,28(sp)
    2104:	00812c23          	sw	s0,24(sp)
    2108:	01212823          	sw	s2,16(sp)
    210c:	01312623          	sw	s3,12(sp)
    2110:	01412423          	sw	s4,8(sp)
    2114:	00050793          	mv	a5,a0
    2118:	00068493          	mv	s1,a3
    211c:	fff00513          	li	a0,-1
    2120:	06d05a63          	blez	a3,2194 <fatfs_get_substring+0xa0>
    2124:	0007c983          	lbu	s3,0(a5)
    2128:	02f00713          	li	a4,47
    212c:	00058a13          	mv	s4,a1
    2130:	00060913          	mv	s2,a2
    2134:	00178413          	add	s0,a5,1
    2138:	02e98463          	beq	s3,a4,2160 <fatfs_get_substring+0x6c>
    213c:	0017c683          	lbu	a3,1(a5)
    2140:	03a00713          	li	a4,58
    2144:	00e68a63          	beq	a3,a4,2158 <fatfs_get_substring+0x64>
    2148:	0027c683          	lbu	a3,2(a5)
    214c:	05c00713          	li	a4,92
    2150:	fff00513          	li	a0,-1
    2154:	04e69063          	bne	a3,a4,2194 <fatfs_get_substring+0xa0>
    2158:	00378413          	add	s0,a5,3
    215c:	05c00993          	li	s3,92
    2160:	00040513          	mv	a0,s0
    2164:	fffff097          	auipc	ra,0xfffff
    2168:	c4c080e7          	jalr	-948(ra) # db0 <strlen>
    216c:	00000713          	li	a4,0
    2170:	00000693          	li	a3,0
    2174:	00000793          	li	a5,0
    2178:	fff48493          	add	s1,s1,-1
    217c:	00e90633          	add	a2,s2,a4
    2180:	02a7ca63          	blt	a5,a0,21b4 <fatfs_get_substring+0xc0>
    2184:	00060023          	sb	zero,0(a2)
    2188:	00094503          	lbu	a0,0(s2)
    218c:	00153513          	seqz	a0,a0
    2190:	40a00533          	neg	a0,a0
    2194:	01c12083          	lw	ra,28(sp)
    2198:	01812403          	lw	s0,24(sp)
    219c:	01412483          	lw	s1,20(sp)
    21a0:	01012903          	lw	s2,16(sp)
    21a4:	00c12983          	lw	s3,12(sp)
    21a8:	00812a03          	lw	s4,8(sp)
    21ac:	02010113          	add	sp,sp,32
    21b0:	00008067          	ret
    21b4:	00f405b3          	add	a1,s0,a5
    21b8:	0005c583          	lbu	a1,0(a1)
    21bc:	01358c63          	beq	a1,s3,21d4 <fatfs_get_substring+0xe0>
    21c0:	01469c63          	bne	a3,s4,21d8 <fatfs_get_substring+0xe4>
    21c4:	00975a63          	bge	a4,s1,21d8 <fatfs_get_substring+0xe4>
    21c8:	00170713          	add	a4,a4,1
    21cc:	00b60023          	sb	a1,0(a2)
    21d0:	0080006f          	j	21d8 <fatfs_get_substring+0xe4>
    21d4:	00168693          	add	a3,a3,1
    21d8:	00178793          	add	a5,a5,1
    21dc:	fa1ff06f          	j	217c <fatfs_get_substring+0x88>
    21e0:	fff00513          	li	a0,-1
    21e4:	00008067          	ret

000021e8 <fatfs_split_path>:
    21e8:	fd010113          	add	sp,sp,-48
    21ec:	02912223          	sw	s1,36(sp)
    21f0:	01312e23          	sw	s3,28(sp)
    21f4:	01412c23          	sw	s4,24(sp)
    21f8:	01512a23          	sw	s5,20(sp)
    21fc:	02112623          	sw	ra,44(sp)
    2200:	00068a93          	mv	s5,a3
    2204:	02812423          	sw	s0,40(sp)
    2208:	03212023          	sw	s2,32(sp)
    220c:	00050993          	mv	s3,a0
    2210:	00058493          	mv	s1,a1
    2214:	00060a13          	mv	s4,a2
    2218:	00e12623          	sw	a4,12(sp)
    221c:	00000097          	auipc	ra,0x0
    2220:	e64080e7          	jalr	-412(ra) # 2080 <fatfs_total_path_levels>
    2224:	fff00793          	li	a5,-1
    2228:	00c12683          	lw	a3,12(sp)
    222c:	02f51863          	bne	a0,a5,225c <fatfs_split_path+0x74>
    2230:	fff00913          	li	s2,-1
    2234:	02c12083          	lw	ra,44(sp)
    2238:	02812403          	lw	s0,40(sp)
    223c:	02412483          	lw	s1,36(sp)
    2240:	01c12983          	lw	s3,28(sp)
    2244:	01812a03          	lw	s4,24(sp)
    2248:	01412a83          	lw	s5,20(sp)
    224c:	00090513          	mv	a0,s2
    2250:	02012903          	lw	s2,32(sp)
    2254:	03010113          	add	sp,sp,48
    2258:	00008067          	ret
    225c:	00050593          	mv	a1,a0
    2260:	00050413          	mv	s0,a0
    2264:	000a8613          	mv	a2,s5
    2268:	00098513          	mv	a0,s3
    226c:	00000097          	auipc	ra,0x0
    2270:	e88080e7          	jalr	-376(ra) # 20f4 <fatfs_get_substring>
    2274:	00050913          	mv	s2,a0
    2278:	fa051ce3          	bnez	a0,2230 <fatfs_split_path+0x48>
    227c:	00041663          	bnez	s0,2288 <fatfs_split_path+0xa0>
    2280:	00048023          	sb	zero,0(s1)
    2284:	fb1ff06f          	j	2234 <fatfs_split_path+0x4c>
    2288:	00098513          	mv	a0,s3
    228c:	fffff097          	auipc	ra,0xfffff
    2290:	b24080e7          	jalr	-1244(ra) # db0 <strlen>
    2294:	00050413          	mv	s0,a0
    2298:	000a8513          	mv	a0,s5
    229c:	fffff097          	auipc	ra,0xfffff
    22a0:	b14080e7          	jalr	-1260(ra) # db0 <strlen>
    22a4:	40a40433          	sub	s0,s0,a0
    22a8:	008a5463          	bge	s4,s0,22b0 <fatfs_split_path+0xc8>
    22ac:	000a0413          	mv	s0,s4
    22b0:	00048513          	mv	a0,s1
    22b4:	00040613          	mv	a2,s0
    22b8:	00098593          	mv	a1,s3
    22bc:	008484b3          	add	s1,s1,s0
    22c0:	fffff097          	auipc	ra,0xfffff
    22c4:	acc080e7          	jalr	-1332(ra) # d8c <memcpy>
    22c8:	fe048fa3          	sb	zero,-1(s1)
    22cc:	f69ff06f          	j	2234 <fatfs_split_path+0x4c>

000022d0 <fatfs_compare_names>:
    22d0:	fd010113          	add	sp,sp,-48
    22d4:	02112623          	sw	ra,44(sp)
    22d8:	02812423          	sw	s0,40(sp)
    22dc:	02912223          	sw	s1,36(sp)
    22e0:	03212023          	sw	s2,32(sp)
    22e4:	01312e23          	sw	s3,28(sp)
    22e8:	00058913          	mv	s2,a1
    22ec:	01412c23          	sw	s4,24(sp)
    22f0:	01512a23          	sw	s5,20(sp)
    22f4:	01612823          	sw	s6,16(sp)
    22f8:	00050a13          	mv	s4,a0
    22fc:	fffff097          	auipc	ra,0xfffff
    2300:	28c080e7          	jalr	652(ra) # 1588 <FileString_GetExtension>
    2304:	00050493          	mv	s1,a0
    2308:	00090513          	mv	a0,s2
    230c:	fffff097          	auipc	ra,0xfffff
    2310:	27c080e7          	jalr	636(ra) # 1588 <FileString_GetExtension>
    2314:	fff00793          	li	a5,-1
    2318:	00050413          	mv	s0,a0
    231c:	00000993          	li	s3,0
    2320:	08f49a63          	bne	s1,a5,23b4 <fatfs_compare_names+0xe4>
    2324:	0c951e63          	bne	a0,s1,2400 <fatfs_compare_names+0x130>
    2328:	000a0513          	mv	a0,s4
    232c:	fffff097          	auipc	ra,0xfffff
    2330:	a84080e7          	jalr	-1404(ra) # db0 <strlen>
    2334:	00050493          	mv	s1,a0
    2338:	00090513          	mv	a0,s2
    233c:	fffff097          	auipc	ra,0xfffff
    2340:	a74080e7          	jalr	-1420(ra) # db0 <strlen>
    2344:	00050413          	mv	s0,a0
    2348:	fff48793          	add	a5,s1,-1
    234c:	00fa07b3          	add	a5,s4,a5
    2350:	40978733          	sub	a4,a5,s1
    2354:	02000613          	li	a2,32
    2358:	00078693          	mv	a3,a5
    235c:	00e78863          	beq	a5,a4,236c <fatfs_compare_names+0x9c>
    2360:	0007c583          	lbu	a1,0(a5)
    2364:	fff78793          	add	a5,a5,-1
    2368:	0cc58263          	beq	a1,a2,242c <fatfs_compare_names+0x15c>
    236c:	fff40793          	add	a5,s0,-1
    2370:	00f907b3          	add	a5,s2,a5
    2374:	40878733          	sub	a4,a5,s0
    2378:	02000613          	li	a2,32
    237c:	00078693          	mv	a3,a5
    2380:	00e78863          	beq	a5,a4,2390 <fatfs_compare_names+0xc0>
    2384:	0007c583          	lbu	a1,0(a5)
    2388:	fff78793          	add	a5,a5,-1
    238c:	0ac58463          	beq	a1,a2,2434 <fatfs_compare_names+0x164>
    2390:	00000993          	li	s3,0
    2394:	06941663          	bne	s0,s1,2400 <fatfs_compare_names+0x130>
    2398:	00040613          	mv	a2,s0
    239c:	00090593          	mv	a1,s2
    23a0:	000a0513          	mv	a0,s4
    23a4:	fffff097          	auipc	ra,0xfffff
    23a8:	14c080e7          	jalr	332(ra) # 14f0 <FileString_StrCmpNoCase>
    23ac:	00153993          	seqz	s3,a0
    23b0:	0500006f          	j	2400 <fatfs_compare_names+0x130>
    23b4:	04f50663          	beq	a0,a5,2400 <fatfs_compare_names+0x130>
    23b8:	00148a93          	add	s5,s1,1
    23bc:	015a0ab3          	add	s5,s4,s5
    23c0:	00150b13          	add	s6,a0,1
    23c4:	000a8513          	mv	a0,s5
    23c8:	fffff097          	auipc	ra,0xfffff
    23cc:	9e8080e7          	jalr	-1560(ra) # db0 <strlen>
    23d0:	01690b33          	add	s6,s2,s6
    23d4:	00a12623          	sw	a0,12(sp)
    23d8:	000b0513          	mv	a0,s6
    23dc:	fffff097          	auipc	ra,0xfffff
    23e0:	9d4080e7          	jalr	-1580(ra) # db0 <strlen>
    23e4:	00c12603          	lw	a2,12(sp)
    23e8:	00a61c63          	bne	a2,a0,2400 <fatfs_compare_names+0x130>
    23ec:	000b0593          	mv	a1,s6
    23f0:	000a8513          	mv	a0,s5
    23f4:	fffff097          	auipc	ra,0xfffff
    23f8:	0fc080e7          	jalr	252(ra) # 14f0 <FileString_StrCmpNoCase>
    23fc:	f40506e3          	beqz	a0,2348 <fatfs_compare_names+0x78>
    2400:	02c12083          	lw	ra,44(sp)
    2404:	02812403          	lw	s0,40(sp)
    2408:	02412483          	lw	s1,36(sp)
    240c:	02012903          	lw	s2,32(sp)
    2410:	01812a03          	lw	s4,24(sp)
    2414:	01412a83          	lw	s5,20(sp)
    2418:	01012b03          	lw	s6,16(sp)
    241c:	00098513          	mv	a0,s3
    2420:	01c12983          	lw	s3,28(sp)
    2424:	03010113          	add	sp,sp,48
    2428:	00008067          	ret
    242c:	414684b3          	sub	s1,a3,s4
    2430:	f29ff06f          	j	2358 <fatfs_compare_names+0x88>
    2434:	41268433          	sub	s0,a3,s2
    2438:	f45ff06f          	j	237c <fatfs_compare_names+0xac>

0000243c <_check_file_open>:
    243c:	fe010113          	add	sp,sp,-32
    2440:	000067b7          	lui	a5,0x6
    2444:	00812c23          	sw	s0,24(sp)
    2448:	31c7a403          	lw	s0,796(a5) # 631c <_open_file_list>
    244c:	00912a23          	sw	s1,20(sp)
    2450:	01212823          	sw	s2,16(sp)
    2454:	01312623          	sw	s3,12(sp)
    2458:	00112e23          	sw	ra,28(sp)
    245c:	00050493          	mv	s1,a0
    2460:	01450913          	add	s2,a0,20
    2464:	11850993          	add	s3,a0,280
    2468:	02041263          	bnez	s0,248c <_check_file_open+0x50>
    246c:	00000513          	li	a0,0
    2470:	01c12083          	lw	ra,28(sp)
    2474:	01812403          	lw	s0,24(sp)
    2478:	01412483          	lw	s1,20(sp)
    247c:	01012903          	lw	s2,16(sp)
    2480:	00c12983          	lw	s3,12(sp)
    2484:	02010113          	add	sp,sp,32
    2488:	00008067          	ret
    248c:	bc440793          	add	a5,s0,-1084
    2490:	02f48663          	beq	s1,a5,24bc <_check_file_open+0x80>
    2494:	00090593          	mv	a1,s2
    2498:	bd840513          	add	a0,s0,-1064
    249c:	00000097          	auipc	ra,0x0
    24a0:	e34080e7          	jalr	-460(ra) # 22d0 <fatfs_compare_names>
    24a4:	00050c63          	beqz	a0,24bc <_check_file_open+0x80>
    24a8:	00098593          	mv	a1,s3
    24ac:	cdc40513          	add	a0,s0,-804
    24b0:	00000097          	auipc	ra,0x0
    24b4:	e20080e7          	jalr	-480(ra) # 22d0 <fatfs_compare_names>
    24b8:	00051663          	bnez	a0,24c4 <_check_file_open+0x88>
    24bc:	00442403          	lw	s0,4(s0)
    24c0:	fa9ff06f          	j	2468 <_check_file_open+0x2c>
    24c4:	00100513          	li	a0,1
    24c8:	fa9ff06f          	j	2470 <_check_file_open+0x34>

000024cc <fatfs_get_sfn_display_name>:
    24cc:	00000713          	li	a4,0
    24d0:	00c00613          	li	a2,12
    24d4:	02000813          	li	a6,32
    24d8:	01900893          	li	a7,25
    24dc:	0005c783          	lbu	a5,0(a1)
    24e0:	00078463          	beqz	a5,24e8 <fatfs_get_sfn_display_name+0x1c>
    24e4:	00c71863          	bne	a4,a2,24f4 <fatfs_get_sfn_display_name+0x28>
    24e8:	00050023          	sb	zero,0(a0)
    24ec:	00100513          	li	a0,1
    24f0:	00008067          	ret
    24f4:	00158593          	add	a1,a1,1
    24f8:	ff0782e3          	beq	a5,a6,24dc <fatfs_get_sfn_display_name+0x10>
    24fc:	fbf78693          	add	a3,a5,-65
    2500:	0ff6f693          	zext.b	a3,a3
    2504:	00d8e663          	bltu	a7,a3,2510 <fatfs_get_sfn_display_name+0x44>
    2508:	02078793          	add	a5,a5,32
    250c:	0ff7f793          	zext.b	a5,a5
    2510:	00f50023          	sb	a5,0(a0)
    2514:	00170713          	add	a4,a4,1
    2518:	00150513          	add	a0,a0,1
    251c:	fc1ff06f          	j	24dc <fatfs_get_sfn_display_name+0x10>

00002520 <fatfs_fat_init>:
    2520:	ff010113          	add	sp,sp,-16
    2524:	00812423          	sw	s0,8(sp)
    2528:	00912223          	sw	s1,4(sp)
    252c:	00112623          	sw	ra,12(sp)
    2530:	fff00793          	li	a5,-1
    2534:	25850493          	add	s1,a0,600
    2538:	00050413          	mv	s0,a0
    253c:	44f52c23          	sw	a5,1112(a0)
    2540:	24052a23          	sw	zero,596(a0)
    2544:	44052e23          	sw	zero,1116(a0)
    2548:	20000613          	li	a2,512
    254c:	00048513          	mv	a0,s1
    2550:	00000593          	li	a1,0
    2554:	fffff097          	auipc	ra,0xfffff
    2558:	81c080e7          	jalr	-2020(ra) # d70 <memset>
    255c:	25442783          	lw	a5,596(s0)
    2560:	00c12083          	lw	ra,12(sp)
    2564:	24942a23          	sw	s1,596(s0)
    2568:	46042023          	sw	zero,1120(s0)
    256c:	46f42223          	sw	a5,1124(s0)
    2570:	00812403          	lw	s0,8(sp)
    2574:	00412483          	lw	s1,4(sp)
    2578:	01010113          	add	sp,sp,16
    257c:	00008067          	ret

00002580 <fatfs_init>:
    2580:	fd010113          	add	sp,sp,-48
    2584:	02812423          	sw	s0,40(sp)
    2588:	02112623          	sw	ra,44(sp)
    258c:	02912223          	sw	s1,36(sp)
    2590:	03212023          	sw	s2,32(sp)
    2594:	01312e23          	sw	s3,28(sp)
    2598:	fff00793          	li	a5,-1
    259c:	24f52223          	sw	a5,580(a0)
    25a0:	24052423          	sw	zero,584(a0)
    25a4:	02052223          	sw	zero,36(a0)
    25a8:	00050413          	mv	s0,a0
    25ac:	00000097          	auipc	ra,0x0
    25b0:	f74080e7          	jalr	-140(ra) # 2520 <fatfs_fat_init>
    25b4:	03442783          	lw	a5,52(s0)
    25b8:	02079263          	bnez	a5,25dc <fatfs_init+0x5c>
    25bc:	fff00513          	li	a0,-1
    25c0:	02c12083          	lw	ra,44(sp)
    25c4:	02812403          	lw	s0,40(sp)
    25c8:	02412483          	lw	s1,36(sp)
    25cc:	02012903          	lw	s2,32(sp)
    25d0:	01c12983          	lw	s3,28(sp)
    25d4:	03010113          	add	sp,sp,48
    25d8:	00008067          	ret
    25dc:	04440593          	add	a1,s0,68
    25e0:	00100613          	li	a2,1
    25e4:	00000513          	li	a0,0
    25e8:	00b12623          	sw	a1,12(sp)
    25ec:	000780e7          	jalr	a5
    25f0:	fc0506e3          	beqz	a0,25bc <fatfs_init+0x3c>
    25f4:	24042703          	lw	a4,576(s0)
    25f8:	ffff07b7          	lui	a5,0xffff0
    25fc:	00c12583          	lw	a1,12(sp)
    2600:	00e7f7b3          	and	a5,a5,a4
    2604:	aa550737          	lui	a4,0xaa550
    2608:	00e78663          	beq	a5,a4,2614 <fatfs_init+0x94>
    260c:	ffd00513          	li	a0,-3
    2610:	fb1ff06f          	j	25c0 <fatfs_init+0x40>
    2614:	24245703          	lhu	a4,578(s0)
    2618:	0000b7b7          	lui	a5,0xb
    261c:	a5578793          	add	a5,a5,-1451 # aa55 <Songs+0x3905>
    2620:	ffc00513          	li	a0,-4
    2624:	f8f71ee3          	bne	a4,a5,25c0 <fatfs_init+0x40>
    2628:	20644783          	lbu	a5,518(s0)
    262c:	00600713          	li	a4,6
    2630:	02f76463          	bltu	a4,a5,2658 <fatfs_init+0xd8>
    2634:	00400713          	li	a4,4
    2638:	00f76663          	bltu	a4,a5,2644 <fatfs_init+0xc4>
    263c:	00000513          	li	a0,0
    2640:	02078663          	beqz	a5,266c <fatfs_init+0xec>
    2644:	20c45503          	lhu	a0,524(s0)
    2648:	20a45783          	lhu	a5,522(s0)
    264c:	01051513          	sll	a0,a0,0x10
    2650:	00f56533          	or	a0,a0,a5
    2654:	0180006f          	j	266c <fatfs_init+0xec>
    2658:	00c00713          	li	a4,12
    265c:	12f76e63          	bltu	a4,a5,2798 <fatfs_init+0x218>
    2660:	00a00713          	li	a4,10
    2664:	00000513          	li	a0,0
    2668:	fcf76ee3          	bltu	a4,a5,2644 <fatfs_init+0xc4>
    266c:	03442783          	lw	a5,52(s0)
    2670:	00a42e23          	sw	a0,28(s0)
    2674:	00100613          	li	a2,1
    2678:	000780e7          	jalr	a5
    267c:	f40500e3          	beqz	a0,25bc <fatfs_init+0x3c>
    2680:	05044783          	lbu	a5,80(s0)
    2684:	04f44703          	lbu	a4,79(s0)
    2688:	ffe00513          	li	a0,-2
    268c:	00879793          	sll	a5,a5,0x8
    2690:	00e7e7b3          	or	a5,a5,a4
    2694:	20000713          	li	a4,512
    2698:	f2e794e3          	bne	a5,a4,25c0 <fatfs_init+0x40>
    269c:	05644483          	lbu	s1,86(s0)
    26a0:	05544783          	lbu	a5,85(s0)
    26a4:	05144983          	lbu	s3,81(s0)
    26a8:	00849493          	sll	s1,s1,0x8
    26ac:	05a45583          	lhu	a1,90(s0)
    26b0:	00f4e4b3          	or	s1,s1,a5
    26b4:	01340023          	sb	s3,0(s0)
    26b8:	02941423          	sh	s1,40(s0)
    26bc:	05245903          	lhu	s2,82(s0)
    26c0:	05444503          	lbu	a0,84(s0)
    26c4:	00059463          	bnez	a1,26cc <fatfs_init+0x14c>
    26c8:	06842583          	lw	a1,104(s0)
    26cc:	07042783          	lw	a5,112(s0)
    26d0:	02b42023          	sw	a1,32(s0)
    26d4:	00549493          	sll	s1,s1,0x5
    26d8:	00f42423          	sw	a5,8(s0)
    26dc:	07445783          	lhu	a5,116(s0)
    26e0:	1ff48493          	add	s1,s1,511
    26e4:	4094d493          	sra	s1,s1,0x9
    26e8:	00f41c23          	sh	a5,24(s0)
    26ec:	fffff097          	auipc	ra,0xfffff
    26f0:	d70080e7          	jalr	-656(ra) # 145c <__mulsi3>
    26f4:	00a907b3          	add	a5,s2,a0
    26f8:	00f42623          	sw	a5,12(s0)
    26fc:	01c42783          	lw	a5,28(s0)
    2700:	24245703          	lhu	a4,578(s0)
    2704:	00942823          	sw	s1,16(s0)
    2708:	00f907b3          	add	a5,s2,a5
    270c:	00f42a23          	sw	a5,20(s0)
    2710:	00f507b3          	add	a5,a0,a5
    2714:	00f42223          	sw	a5,4(s0)
    2718:	0000b7b7          	lui	a5,0xb
    271c:	a5578793          	add	a5,a5,-1451 # aa55 <Songs+0x3905>
    2720:	eef716e3          	bne	a4,a5,260c <fatfs_init+0x8c>
    2724:	05844783          	lbu	a5,88(s0)
    2728:	05744703          	lbu	a4,87(s0)
    272c:	00879793          	sll	a5,a5,0x8
    2730:	00e7e7b3          	or	a5,a5,a4
    2734:	00079463          	bnez	a5,273c <fatfs_init+0x1bc>
    2738:	06442783          	lw	a5,100(s0)
    273c:	00990933          	add	s2,s2,s1
    2740:	00a90533          	add	a0,s2,a0
    2744:	40a787b3          	sub	a5,a5,a0
    2748:	ffb00513          	li	a0,-5
    274c:	e6098ae3          	beqz	s3,25c0 <fatfs_init+0x40>
    2750:	00078513          	mv	a0,a5
    2754:	00098593          	mv	a1,s3
    2758:	ffffe097          	auipc	ra,0xffffe
    275c:	56c080e7          	jalr	1388(ra) # cc4 <__udivsi3>
    2760:	00001737          	lui	a4,0x1
    2764:	00050793          	mv	a5,a0
    2768:	ff470713          	add	a4,a4,-12 # ff4 <oled_fullscreen+0x48>
    276c:	ffb00513          	li	a0,-5
    2770:	e4f778e3          	bgeu	a4,a5,25c0 <fatfs_init+0x40>
    2774:	00010737          	lui	a4,0x10
    2778:	ff470713          	add	a4,a4,-12 # fff4 <Songs+0x8ea4>
    277c:	00100693          	li	a3,1
    2780:	00f76663          	bltu	a4,a5,278c <fatfs_init+0x20c>
    2784:	00042423          	sw	zero,8(s0)
    2788:	00000693          	li	a3,0
    278c:	02d42823          	sw	a3,48(s0)
    2790:	00000513          	li	a0,0
    2794:	e2dff06f          	j	25c0 <fatfs_init+0x40>
    2798:	ff278793          	add	a5,a5,-14
    279c:	0ff7f793          	zext.b	a5,a5
    27a0:	00100713          	li	a4,1
    27a4:	00000513          	li	a0,0
    27a8:	e8f77ee3          	bgeu	a4,a5,2644 <fatfs_init+0xc4>
    27ac:	ec1ff06f          	j	266c <fatfs_init+0xec>

000027b0 <fl_attach_media>:
    27b0:	000067b7          	lui	a5,0x6
    27b4:	3287a783          	lw	a5,808(a5) # 6328 <_filelib_init>
    27b8:	ff010113          	add	sp,sp,-16
    27bc:	00812423          	sw	s0,8(sp)
    27c0:	00912223          	sw	s1,4(sp)
    27c4:	00112623          	sw	ra,12(sp)
    27c8:	00050493          	mv	s1,a0
    27cc:	00058413          	mv	s0,a1
    27d0:	00079663          	bnez	a5,27dc <fl_attach_media+0x2c>
    27d4:	fffff097          	auipc	ra,0xfffff
    27d8:	148080e7          	jalr	328(ra) # 191c <fl_init>
    27dc:	00006537          	lui	a0,0x6
    27e0:	38850793          	add	a5,a0,904 # 6388 <_fs>
    27e4:	38850513          	add	a0,a0,904
    27e8:	0297aa23          	sw	s1,52(a5)
    27ec:	0287ac23          	sw	s0,56(a5)
    27f0:	00000097          	auipc	ra,0x0
    27f4:	d90080e7          	jalr	-624(ra) # 2580 <fatfs_init>
    27f8:	00051863          	bnez	a0,2808 <fl_attach_media+0x58>
    27fc:	000067b7          	lui	a5,0x6
    2800:	00100713          	li	a4,1
    2804:	32e7a223          	sw	a4,804(a5) # 6324 <_filelib_valid>
    2808:	00c12083          	lw	ra,12(sp)
    280c:	00812403          	lw	s0,8(sp)
    2810:	00412483          	lw	s1,4(sp)
    2814:	01010113          	add	sp,sp,16
    2818:	00008067          	ret

0000281c <fatfs_fat_purge>:
    281c:	ff010113          	add	sp,sp,-16
    2820:	00812423          	sw	s0,8(sp)
    2824:	25452403          	lw	s0,596(a0)
    2828:	00912223          	sw	s1,4(sp)
    282c:	00112623          	sw	ra,12(sp)
    2830:	00050493          	mv	s1,a0
    2834:	00041663          	bnez	s0,2840 <fatfs_fat_purge+0x24>
    2838:	00100513          	li	a0,1
    283c:	0280006f          	j	2864 <fatfs_fat_purge+0x48>
    2840:	20442783          	lw	a5,516(s0)
    2844:	00079663          	bnez	a5,2850 <fatfs_fat_purge+0x34>
    2848:	20c42403          	lw	s0,524(s0)
    284c:	fe9ff06f          	j	2834 <fatfs_fat_purge+0x18>
    2850:	00040593          	mv	a1,s0
    2854:	00048513          	mv	a0,s1
    2858:	fffff097          	auipc	ra,0xfffff
    285c:	d5c080e7          	jalr	-676(ra) # 15b4 <fatfs_fat_writeback>
    2860:	fe0514e3          	bnez	a0,2848 <fatfs_fat_purge+0x2c>
    2864:	00c12083          	lw	ra,12(sp)
    2868:	00812403          	lw	s0,8(sp)
    286c:	00412483          	lw	s1,4(sp)
    2870:	01010113          	add	sp,sp,16
    2874:	00008067          	ret

00002878 <fatfs_find_next_cluster>:
    2878:	ff010113          	add	sp,sp,-16
    287c:	00812423          	sw	s0,8(sp)
    2880:	01212023          	sw	s2,0(sp)
    2884:	00112623          	sw	ra,12(sp)
    2888:	00912223          	sw	s1,4(sp)
    288c:	00050913          	mv	s2,a0
    2890:	00200413          	li	s0,2
    2894:	00058463          	beqz	a1,289c <fatfs_find_next_cluster+0x24>
    2898:	00058413          	mv	s0,a1
    289c:	03092783          	lw	a5,48(s2)
    28a0:	00745493          	srl	s1,s0,0x7
    28a4:	00079463          	bnez	a5,28ac <fatfs_find_next_cluster+0x34>
    28a8:	00845493          	srl	s1,s0,0x8
    28ac:	01492583          	lw	a1,20(s2)
    28b0:	00090513          	mv	a0,s2
    28b4:	00b485b3          	add	a1,s1,a1
    28b8:	fffff097          	auipc	ra,0xfffff
    28bc:	d7c080e7          	jalr	-644(ra) # 1634 <fatfs_fat_read_sector>
    28c0:	00050793          	mv	a5,a0
    28c4:	fff00513          	li	a0,-1
    28c8:	04078a63          	beqz	a5,291c <fatfs_find_next_cluster+0xa4>
    28cc:	03092703          	lw	a4,48(s2)
    28d0:	2087a783          	lw	a5,520(a5)
    28d4:	06071063          	bnez	a4,2934 <fatfs_find_next_cluster+0xbc>
    28d8:	00849493          	sll	s1,s1,0x8
    28dc:	40940433          	sub	s0,s0,s1
    28e0:	00010737          	lui	a4,0x10
    28e4:	00141413          	sll	s0,s0,0x1
    28e8:	fff70713          	add	a4,a4,-1 # ffff <Songs+0x8eaf>
    28ec:	00e47433          	and	s0,s0,a4
    28f0:	008787b3          	add	a5,a5,s0
    28f4:	0017c503          	lbu	a0,1(a5)
    28f8:	0007c783          	lbu	a5,0(a5)
    28fc:	00851513          	sll	a0,a0,0x8
    2900:	00f50533          	add	a0,a0,a5
    2904:	ffff07b7          	lui	a5,0xffff0
    2908:	00878793          	add	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    290c:	00f507b3          	add	a5,a0,a5
    2910:	00700713          	li	a4,7
    2914:	00f76463          	bltu	a4,a5,291c <fatfs_find_next_cluster+0xa4>
    2918:	fff00513          	li	a0,-1
    291c:	00c12083          	lw	ra,12(sp)
    2920:	00812403          	lw	s0,8(sp)
    2924:	00412483          	lw	s1,4(sp)
    2928:	00012903          	lw	s2,0(sp)
    292c:	01010113          	add	sp,sp,16
    2930:	00008067          	ret
    2934:	00749493          	sll	s1,s1,0x7
    2938:	40940433          	sub	s0,s0,s1
    293c:	00010737          	lui	a4,0x10
    2940:	fff70713          	add	a4,a4,-1 # ffff <Songs+0x8eaf>
    2944:	00241413          	sll	s0,s0,0x2
    2948:	00e47433          	and	s0,s0,a4
    294c:	008787b3          	add	a5,a5,s0
    2950:	0037c503          	lbu	a0,3(a5)
    2954:	0027c703          	lbu	a4,2(a5)
    2958:	01851513          	sll	a0,a0,0x18
    295c:	01071713          	sll	a4,a4,0x10
    2960:	00e50533          	add	a0,a0,a4
    2964:	0007c703          	lbu	a4,0(a5)
    2968:	0017c783          	lbu	a5,1(a5)
    296c:	00e50533          	add	a0,a0,a4
    2970:	00879793          	sll	a5,a5,0x8
    2974:	00f50533          	add	a0,a0,a5
    2978:	00451513          	sll	a0,a0,0x4
    297c:	00455513          	srl	a0,a0,0x4
    2980:	f00007b7          	lui	a5,0xf0000
    2984:	f85ff06f          	j	2908 <fatfs_find_next_cluster+0x90>

00002988 <fatfs_sector_reader>:
    2988:	03052783          	lw	a5,48(a0)
    298c:	fd010113          	add	sp,sp,-48
    2990:	02812423          	sw	s0,40(sp)
    2994:	03212023          	sw	s2,32(sp)
    2998:	01312e23          	sw	s3,28(sp)
    299c:	02112623          	sw	ra,44(sp)
    29a0:	02912223          	sw	s1,36(sp)
    29a4:	01412c23          	sw	s4,24(sp)
    29a8:	01512a23          	sw	s5,20(sp)
    29ac:	00f5e7b3          	or	a5,a1,a5
    29b0:	00050413          	mv	s0,a0
    29b4:	00060913          	mv	s2,a2
    29b8:	00068993          	mv	s3,a3
    29bc:	06079c63          	bnez	a5,2a34 <fatfs_sector_reader+0xac>
    29c0:	01052783          	lw	a5,16(a0)
    29c4:	02f66663          	bltu	a2,a5,29f0 <fatfs_sector_reader+0x68>
    29c8:	00000513          	li	a0,0
    29cc:	02c12083          	lw	ra,44(sp)
    29d0:	02812403          	lw	s0,40(sp)
    29d4:	02412483          	lw	s1,36(sp)
    29d8:	02012903          	lw	s2,32(sp)
    29dc:	01c12983          	lw	s3,28(sp)
    29e0:	01812a03          	lw	s4,24(sp)
    29e4:	01412a83          	lw	s5,20(sp)
    29e8:	03010113          	add	sp,sp,48
    29ec:	00008067          	ret
    29f0:	01c52503          	lw	a0,28(a0)
    29f4:	00c42783          	lw	a5,12(s0)
    29f8:	00f50533          	add	a0,a0,a5
    29fc:	01250533          	add	a0,a0,s2
    2a00:	0a098263          	beqz	s3,2aa4 <fatfs_sector_reader+0x11c>
    2a04:	03442783          	lw	a5,52(s0)
    2a08:	00100613          	li	a2,1
    2a0c:	00098593          	mv	a1,s3
    2a10:	02812403          	lw	s0,40(sp)
    2a14:	02c12083          	lw	ra,44(sp)
    2a18:	02412483          	lw	s1,36(sp)
    2a1c:	02012903          	lw	s2,32(sp)
    2a20:	01c12983          	lw	s3,28(sp)
    2a24:	01812a03          	lw	s4,24(sp)
    2a28:	01412a83          	lw	s5,20(sp)
    2a2c:	03010113          	add	sp,sp,48
    2a30:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2a34:	00058493          	mv	s1,a1
    2a38:	00054583          	lbu	a1,0(a0)
    2a3c:	00060513          	mv	a0,a2
    2a40:	00000a93          	li	s5,0
    2a44:	00b12623          	sw	a1,12(sp)
    2a48:	ffffe097          	auipc	ra,0xffffe
    2a4c:	27c080e7          	jalr	636(ra) # cc4 <__udivsi3>
    2a50:	00c12583          	lw	a1,12(sp)
    2a54:	00050a13          	mv	s4,a0
    2a58:	00090513          	mv	a0,s2
    2a5c:	ffffe097          	auipc	ra,0xffffe
    2a60:	2b0080e7          	jalr	688(ra) # d0c <__umodsi3>
    2a64:	00050913          	mv	s2,a0
    2a68:	034a9063          	bne	s5,s4,2a88 <fatfs_sector_reader+0x100>
    2a6c:	fff00793          	li	a5,-1
    2a70:	f4f48ce3          	beq	s1,a5,29c8 <fatfs_sector_reader+0x40>
    2a74:	00048593          	mv	a1,s1
    2a78:	00040513          	mv	a0,s0
    2a7c:	fffff097          	auipc	ra,0xfffff
    2a80:	d64080e7          	jalr	-668(ra) # 17e0 <fatfs_lba_of_cluster>
    2a84:	f79ff06f          	j	29fc <fatfs_sector_reader+0x74>
    2a88:	00048593          	mv	a1,s1
    2a8c:	00040513          	mv	a0,s0
    2a90:	00000097          	auipc	ra,0x0
    2a94:	de8080e7          	jalr	-536(ra) # 2878 <fatfs_find_next_cluster>
    2a98:	00050493          	mv	s1,a0
    2a9c:	001a8a93          	add	s5,s5,1
    2aa0:	fc9ff06f          	j	2a68 <fatfs_sector_reader+0xe0>
    2aa4:	24442783          	lw	a5,580(s0)
    2aa8:	00a78c63          	beq	a5,a0,2ac0 <fatfs_sector_reader+0x138>
    2aac:	03442783          	lw	a5,52(s0)
    2ab0:	24a42223          	sw	a0,580(s0)
    2ab4:	00100613          	li	a2,1
    2ab8:	04440593          	add	a1,s0,68
    2abc:	f55ff06f          	j	2a10 <fatfs_sector_reader+0x88>
    2ac0:	00100513          	li	a0,1
    2ac4:	f09ff06f          	j	29cc <fatfs_sector_reader+0x44>

00002ac8 <fatfs_get_file_entry>:
    2ac8:	eb010113          	add	sp,sp,-336
    2acc:	14812423          	sw	s0,328(sp)
    2ad0:	01810413          	add	s0,sp,24
    2ad4:	14912223          	sw	s1,324(sp)
    2ad8:	15212023          	sw	s2,320(sp)
    2adc:	13312e23          	sw	s3,316(sp)
    2ae0:	13412c23          	sw	s4,312(sp)
    2ae4:	13512a23          	sw	s5,308(sp)
    2ae8:	13612823          	sw	s6,304(sp)
    2aec:	14112623          	sw	ra,332(sp)
    2af0:	13712623          	sw	s7,300(sp)
    2af4:	13812423          	sw	s8,296(sp)
    2af8:	13912223          	sw	s9,292(sp)
    2afc:	13a12023          	sw	s10,288(sp)
    2b00:	00050493          	mv	s1,a0
    2b04:	00058a93          	mv	s5,a1
    2b08:	00060913          	mv	s2,a2
    2b0c:	00068993          	mv	s3,a3
    2b10:	10010ea3          	sb	zero,285(sp)
    2b14:	11c10a13          	add	s4,sp,284
    2b18:	00040b13          	mv	s6,s0
    2b1c:	00040513          	mv	a0,s0
    2b20:	00d00613          	li	a2,13
    2b24:	00000593          	li	a1,0
    2b28:	00d40413          	add	s0,s0,13
    2b2c:	ffffe097          	auipc	ra,0xffffe
    2b30:	244080e7          	jalr	580(ra) # d70 <memset>
    2b34:	ff4414e3          	bne	s0,s4,2b1c <fatfs_get_file_entry+0x54>
    2b38:	00000a13          	li	s4,0
    2b3c:	24448c13          	add	s8,s1,580
    2b40:	00800c93          	li	s9,8
    2b44:	02000b93          	li	s7,32
    2b48:	02e00d13          	li	s10,46
    2b4c:	00000693          	li	a3,0
    2b50:	000a0613          	mv	a2,s4
    2b54:	000a8593          	mv	a1,s5
    2b58:	00048513          	mv	a0,s1
    2b5c:	00000097          	auipc	ra,0x0
    2b60:	e2c080e7          	jalr	-468(ra) # 2988 <fatfs_sector_reader>
    2b64:	14050e63          	beqz	a0,2cc0 <fatfs_get_file_entry+0x1f8>
    2b68:	04448413          	add	s0,s1,68
    2b6c:	00040513          	mv	a0,s0
    2b70:	fffff097          	auipc	ra,0xfffff
    2b74:	f2c080e7          	jalr	-212(ra) # 1a9c <fatfs_entry_lfn_text>
    2b78:	02050263          	beqz	a0,2b9c <fatfs_get_file_entry+0xd4>
    2b7c:	00040593          	mv	a1,s0
    2b80:	000b0513          	mv	a0,s6
    2b84:	fffff097          	auipc	ra,0xfffff
    2b88:	e10080e7          	jalr	-496(ra) # 1994 <fatfs_lfn_cache_entry>
    2b8c:	02040413          	add	s0,s0,32
    2b90:	fc8c1ee3          	bne	s8,s0,2b6c <fatfs_get_file_entry+0xa4>
    2b94:	001a0a13          	add	s4,s4,1
    2b98:	fb5ff06f          	j	2b4c <fatfs_get_file_entry+0x84>
    2b9c:	00040513          	mv	a0,s0
    2ba0:	fffff097          	auipc	ra,0xfffff
    2ba4:	f10080e7          	jalr	-240(ra) # 1ab0 <fatfs_entry_lfn_invalid>
    2ba8:	00050663          	beqz	a0,2bb4 <fatfs_get_file_entry+0xec>
    2bac:	10010ea3          	sb	zero,285(sp)
    2bb0:	fddff06f          	j	2b8c <fatfs_get_file_entry+0xc4>
    2bb4:	00040593          	mv	a1,s0
    2bb8:	000b0513          	mv	a0,s6
    2bbc:	fffff097          	auipc	ra,0xfffff
    2bc0:	f2c080e7          	jalr	-212(ra) # 1ae8 <fatfs_entry_lfn_exists>
    2bc4:	06050863          	beqz	a0,2c34 <fatfs_get_file_entry+0x16c>
    2bc8:	000b0513          	mv	a0,s6
    2bcc:	fffff097          	auipc	ra,0xfffff
    2bd0:	e94080e7          	jalr	-364(ra) # 1a60 <fatfs_lfn_cache_get>
    2bd4:	00090593          	mv	a1,s2
    2bd8:	fffff097          	auipc	ra,0xfffff
    2bdc:	6f8080e7          	jalr	1784(ra) # 22d0 <fatfs_compare_names>
    2be0:	fc0506e3          	beqz	a0,2bac <fatfs_get_file_entry+0xe4>
    2be4:	02000613          	li	a2,32
    2be8:	00040593          	mv	a1,s0
    2bec:	00098513          	mv	a0,s3
    2bf0:	ffffe097          	auipc	ra,0xffffe
    2bf4:	19c080e7          	jalr	412(ra) # d8c <memcpy>
    2bf8:	00100513          	li	a0,1
    2bfc:	14c12083          	lw	ra,332(sp)
    2c00:	14812403          	lw	s0,328(sp)
    2c04:	14412483          	lw	s1,324(sp)
    2c08:	14012903          	lw	s2,320(sp)
    2c0c:	13c12983          	lw	s3,316(sp)
    2c10:	13812a03          	lw	s4,312(sp)
    2c14:	13412a83          	lw	s5,308(sp)
    2c18:	13012b03          	lw	s6,304(sp)
    2c1c:	12c12b83          	lw	s7,300(sp)
    2c20:	12812c03          	lw	s8,296(sp)
    2c24:	12412c83          	lw	s9,292(sp)
    2c28:	12012d03          	lw	s10,288(sp)
    2c2c:	15010113          	add	sp,sp,336
    2c30:	00008067          	ret
    2c34:	00040513          	mv	a0,s0
    2c38:	fffff097          	auipc	ra,0xfffff
    2c3c:	ef8080e7          	jalr	-264(ra) # 1b30 <fatfs_entry_sfn_only>
    2c40:	f40506e3          	beqz	a0,2b8c <fatfs_get_file_entry+0xc4>
    2c44:	00d00613          	li	a2,13
    2c48:	00000593          	li	a1,0
    2c4c:	00810513          	add	a0,sp,8
    2c50:	ffffe097          	auipc	ra,0xffffe
    2c54:	120080e7          	jalr	288(ra) # d70 <memset>
    2c58:	00000793          	li	a5,0
    2c5c:	00f406b3          	add	a3,s0,a5
    2c60:	0006c683          	lbu	a3,0(a3)
    2c64:	00810713          	add	a4,sp,8
    2c68:	00f70733          	add	a4,a4,a5
    2c6c:	00d70023          	sb	a3,0(a4)
    2c70:	00178793          	add	a5,a5,1
    2c74:	ff9794e3          	bne	a5,s9,2c5c <fatfs_get_file_entry+0x194>
    2c78:	00844703          	lbu	a4,8(s0)
    2c7c:	00944683          	lbu	a3,9(s0)
    2c80:	00a44783          	lbu	a5,10(s0)
    2c84:	00e108a3          	sb	a4,17(sp)
    2c88:	00d10923          	sb	a3,18(sp)
    2c8c:	00f109a3          	sb	a5,19(sp)
    2c90:	03768063          	beq	a3,s7,2cb0 <fatfs_get_file_entry+0x1e8>
    2c94:	00814703          	lbu	a4,8(sp)
    2c98:	02e00793          	li	a5,46
    2c9c:	01a70e63          	beq	a4,s10,2cb8 <fatfs_get_file_entry+0x1f0>
    2ca0:	00f10823          	sb	a5,16(sp)
    2ca4:	00090593          	mv	a1,s2
    2ca8:	00810513          	add	a0,sp,8
    2cac:	f2dff06f          	j	2bd8 <fatfs_get_file_entry+0x110>
    2cb0:	ff7792e3          	bne	a5,s7,2c94 <fatfs_get_file_entry+0x1cc>
    2cb4:	ff7710e3          	bne	a4,s7,2c94 <fatfs_get_file_entry+0x1cc>
    2cb8:	02000793          	li	a5,32
    2cbc:	fe5ff06f          	j	2ca0 <fatfs_get_file_entry+0x1d8>
    2cc0:	00000513          	li	a0,0
    2cc4:	f39ff06f          	j	2bfc <fatfs_get_file_entry+0x134>

00002cc8 <_open_directory>:
    2cc8:	eb010113          	add	sp,sp,-336
    2ccc:	13512a23          	sw	s5,308(sp)
    2cd0:	00006ab7          	lui	s5,0x6
    2cd4:	388a8793          	add	a5,s5,904 # 6388 <_fs>
    2cd8:	14812423          	sw	s0,328(sp)
    2cdc:	14912223          	sw	s1,324(sp)
    2ce0:	15212023          	sw	s2,320(sp)
    2ce4:	13312e23          	sw	s3,316(sp)
    2ce8:	13412c23          	sw	s4,312(sp)
    2cec:	13612823          	sw	s6,304(sp)
    2cf0:	0087a403          	lw	s0,8(a5)
    2cf4:	14112623          	sw	ra,332(sp)
    2cf8:	00050a13          	mv	s4,a0
    2cfc:	00058913          	mv	s2,a1
    2d00:	fffff097          	auipc	ra,0xfffff
    2d04:	380080e7          	jalr	896(ra) # 2080 <fatfs_total_path_levels>
    2d08:	00050993          	mv	s3,a0
    2d0c:	00000493          	li	s1,0
    2d10:	fff00b13          	li	s6,-1
    2d14:	0099d863          	bge	s3,s1,2d24 <_open_directory+0x5c>
    2d18:	00892023          	sw	s0,0(s2)
    2d1c:	00100513          	li	a0,1
    2d20:	0240006f          	j	2d44 <_open_directory+0x7c>
    2d24:	10400693          	li	a3,260
    2d28:	02c10613          	add	a2,sp,44
    2d2c:	00048593          	mv	a1,s1
    2d30:	000a0513          	mv	a0,s4
    2d34:	fffff097          	auipc	ra,0xfffff
    2d38:	3c0080e7          	jalr	960(ra) # 20f4 <fatfs_get_substring>
    2d3c:	03651863          	bne	a0,s6,2d6c <_open_directory+0xa4>
    2d40:	00000513          	li	a0,0
    2d44:	14c12083          	lw	ra,332(sp)
    2d48:	14812403          	lw	s0,328(sp)
    2d4c:	14412483          	lw	s1,324(sp)
    2d50:	14012903          	lw	s2,320(sp)
    2d54:	13c12983          	lw	s3,316(sp)
    2d58:	13812a03          	lw	s4,312(sp)
    2d5c:	13412a83          	lw	s5,308(sp)
    2d60:	13012b03          	lw	s6,304(sp)
    2d64:	15010113          	add	sp,sp,336
    2d68:	00008067          	ret
    2d6c:	00c10693          	add	a3,sp,12
    2d70:	02c10613          	add	a2,sp,44
    2d74:	00040593          	mv	a1,s0
    2d78:	388a8513          	add	a0,s5,904
    2d7c:	00000097          	auipc	ra,0x0
    2d80:	d4c080e7          	jalr	-692(ra) # 2ac8 <fatfs_get_file_entry>
    2d84:	fa050ee3          	beqz	a0,2d40 <_open_directory+0x78>
    2d88:	00c10513          	add	a0,sp,12
    2d8c:	fffff097          	auipc	ra,0xfffff
    2d90:	de0080e7          	jalr	-544(ra) # 1b6c <fatfs_entry_is_dir>
    2d94:	fa0506e3          	beqz	a0,2d40 <_open_directory+0x78>
    2d98:	02015403          	lhu	s0,32(sp)
    2d9c:	02615783          	lhu	a5,38(sp)
    2da0:	00148493          	add	s1,s1,1
    2da4:	01041413          	sll	s0,s0,0x10
    2da8:	00f40433          	add	s0,s0,a5
    2dac:	f69ff06f          	j	2d14 <_open_directory+0x4c>

00002db0 <fl_opendir>:
    2db0:	fe010113          	add	sp,sp,-32
    2db4:	fff00793          	li	a5,-1
    2db8:	00f12623          	sw	a5,12(sp)
    2dbc:	000067b7          	lui	a5,0x6
    2dc0:	3287a783          	lw	a5,808(a5) # 6328 <_filelib_init>
    2dc4:	00812c23          	sw	s0,24(sp)
    2dc8:	01212823          	sw	s2,16(sp)
    2dcc:	00112e23          	sw	ra,28(sp)
    2dd0:	00912a23          	sw	s1,20(sp)
    2dd4:	00050913          	mv	s2,a0
    2dd8:	00058413          	mv	s0,a1
    2ddc:	00079663          	bnez	a5,2de8 <fl_opendir+0x38>
    2de0:	fffff097          	auipc	ra,0xfffff
    2de4:	b3c080e7          	jalr	-1220(ra) # 191c <fl_init>
    2de8:	000064b7          	lui	s1,0x6
    2dec:	38848793          	add	a5,s1,904 # 6388 <_fs>
    2df0:	03c7a783          	lw	a5,60(a5)
    2df4:	38848493          	add	s1,s1,904
    2df8:	00078463          	beqz	a5,2e00 <fl_opendir+0x50>
    2dfc:	000780e7          	jalr	a5
    2e00:	00090513          	mv	a0,s2
    2e04:	fffff097          	auipc	ra,0xfffff
    2e08:	27c080e7          	jalr	636(ra) # 2080 <fatfs_total_path_levels>
    2e0c:	fff00793          	li	a5,-1
    2e10:	02f51063          	bne	a0,a5,2e30 <fl_opendir+0x80>
    2e14:	0084a783          	lw	a5,8(s1)
    2e18:	00f12623          	sw	a5,12(sp)
    2e1c:	00c12783          	lw	a5,12(sp)
    2e20:	00042023          	sw	zero,0(s0)
    2e24:	00040423          	sb	zero,8(s0)
    2e28:	00f42223          	sw	a5,4(s0)
    2e2c:	0180006f          	j	2e44 <fl_opendir+0x94>
    2e30:	00c10593          	add	a1,sp,12
    2e34:	00090513          	mv	a0,s2
    2e38:	00000097          	auipc	ra,0x0
    2e3c:	e90080e7          	jalr	-368(ra) # 2cc8 <_open_directory>
    2e40:	fc051ee3          	bnez	a0,2e1c <fl_opendir+0x6c>
    2e44:	0404a783          	lw	a5,64(s1)
    2e48:	00078463          	beqz	a5,2e50 <fl_opendir+0xa0>
    2e4c:	000780e7          	jalr	a5
    2e50:	00c12703          	lw	a4,12(sp)
    2e54:	fff00793          	li	a5,-1
    2e58:	00f71463          	bne	a4,a5,2e60 <fl_opendir+0xb0>
    2e5c:	00000413          	li	s0,0
    2e60:	01c12083          	lw	ra,28(sp)
    2e64:	00040513          	mv	a0,s0
    2e68:	01812403          	lw	s0,24(sp)
    2e6c:	01412483          	lw	s1,20(sp)
    2e70:	01012903          	lw	s2,16(sp)
    2e74:	02010113          	add	sp,sp,32
    2e78:	00008067          	ret

00002e7c <_open_file>:
    2e7c:	fc010113          	add	sp,sp,-64
    2e80:	03312623          	sw	s3,44(sp)
    2e84:	02112e23          	sw	ra,60(sp)
    2e88:	02812c23          	sw	s0,56(sp)
    2e8c:	02912a23          	sw	s1,52(sp)
    2e90:	03212823          	sw	s2,48(sp)
    2e94:	00050993          	mv	s3,a0
    2e98:	fffff097          	auipc	ra,0xfffff
    2e9c:	88c080e7          	jalr	-1908(ra) # 1724 <_allocate_file>
    2ea0:	06050463          	beqz	a0,2f08 <_open_file+0x8c>
    2ea4:	01450913          	add	s2,a0,20
    2ea8:	00050413          	mv	s0,a0
    2eac:	10400613          	li	a2,260
    2eb0:	00000593          	li	a1,0
    2eb4:	00090513          	mv	a0,s2
    2eb8:	ffffe097          	auipc	ra,0xffffe
    2ebc:	eb8080e7          	jalr	-328(ra) # d70 <memset>
    2ec0:	11840493          	add	s1,s0,280
    2ec4:	10400613          	li	a2,260
    2ec8:	00000593          	li	a1,0
    2ecc:	00048513          	mv	a0,s1
    2ed0:	ffffe097          	auipc	ra,0xffffe
    2ed4:	ea0080e7          	jalr	-352(ra) # d70 <memset>
    2ed8:	10400713          	li	a4,260
    2edc:	00048693          	mv	a3,s1
    2ee0:	10400613          	li	a2,260
    2ee4:	00090593          	mv	a1,s2
    2ee8:	00098513          	mv	a0,s3
    2eec:	fffff097          	auipc	ra,0xfffff
    2ef0:	2fc080e7          	jalr	764(ra) # 21e8 <fatfs_split_path>
    2ef4:	fff00793          	li	a5,-1
    2ef8:	02f51a63          	bne	a0,a5,2f2c <_open_file+0xb0>
    2efc:	00040513          	mv	a0,s0
    2f00:	fffff097          	auipc	ra,0xfffff
    2f04:	898080e7          	jalr	-1896(ra) # 1798 <_free_file>
    2f08:	00000413          	li	s0,0
    2f0c:	03c12083          	lw	ra,60(sp)
    2f10:	00040513          	mv	a0,s0
    2f14:	03812403          	lw	s0,56(sp)
    2f18:	03412483          	lw	s1,52(sp)
    2f1c:	03012903          	lw	s2,48(sp)
    2f20:	02c12983          	lw	s3,44(sp)
    2f24:	04010113          	add	sp,sp,64
    2f28:	00008067          	ret
    2f2c:	00040513          	mv	a0,s0
    2f30:	fffff097          	auipc	ra,0xfffff
    2f34:	50c080e7          	jalr	1292(ra) # 243c <_check_file_open>
    2f38:	fc0512e3          	bnez	a0,2efc <_open_file+0x80>
    2f3c:	01444783          	lbu	a5,20(s0)
    2f40:	08079e63          	bnez	a5,2fdc <_open_file+0x160>
    2f44:	000067b7          	lui	a5,0x6
    2f48:	3907a783          	lw	a5,912(a5) # 6390 <_fs+0x8>
    2f4c:	00f42023          	sw	a5,0(s0)
    2f50:	00042583          	lw	a1,0(s0)
    2f54:	00048613          	mv	a2,s1
    2f58:	000064b7          	lui	s1,0x6
    2f5c:	00010693          	mv	a3,sp
    2f60:	38848513          	add	a0,s1,904 # 6388 <_fs>
    2f64:	00000097          	auipc	ra,0x0
    2f68:	b64080e7          	jalr	-1180(ra) # 2ac8 <fatfs_get_file_entry>
    2f6c:	f80508e3          	beqz	a0,2efc <_open_file+0x80>
    2f70:	00010513          	mv	a0,sp
    2f74:	fffff097          	auipc	ra,0xfffff
    2f78:	c08080e7          	jalr	-1016(ra) # 1b7c <fatfs_entry_is_file>
    2f7c:	f80500e3          	beqz	a0,2efc <_open_file+0x80>
    2f80:	00b00613          	li	a2,11
    2f84:	00010593          	mv	a1,sp
    2f88:	21c40513          	add	a0,s0,540
    2f8c:	ffffe097          	auipc	ra,0xffffe
    2f90:	e00080e7          	jalr	-512(ra) # d8c <memcpy>
    2f94:	01c12783          	lw	a5,28(sp)
    2f98:	01a15703          	lhu	a4,26(sp)
    2f9c:	00042423          	sw	zero,8(s0)
    2fa0:	00f42623          	sw	a5,12(s0)
    2fa4:	01415783          	lhu	a5,20(sp)
    2fa8:	42042a23          	sw	zero,1076(s0)
    2fac:	00042823          	sw	zero,16(s0)
    2fb0:	01079793          	sll	a5,a5,0x10
    2fb4:	00e787b3          	add	a5,a5,a4
    2fb8:	00f42223          	sw	a5,4(s0)
    2fbc:	fff00793          	li	a5,-1
    2fc0:	42f42823          	sw	a5,1072(s0)
    2fc4:	22f42423          	sw	a5,552(s0)
    2fc8:	22f42623          	sw	a5,556(s0)
    2fcc:	38848513          	add	a0,s1,904
    2fd0:	00000097          	auipc	ra,0x0
    2fd4:	84c080e7          	jalr	-1972(ra) # 281c <fatfs_fat_purge>
    2fd8:	f35ff06f          	j	2f0c <_open_file+0x90>
    2fdc:	00040593          	mv	a1,s0
    2fe0:	00090513          	mv	a0,s2
    2fe4:	00000097          	auipc	ra,0x0
    2fe8:	ce4080e7          	jalr	-796(ra) # 2cc8 <_open_directory>
    2fec:	f60512e3          	bnez	a0,2f50 <_open_file+0xd4>
    2ff0:	f0dff06f          	j	2efc <_open_file+0x80>

00002ff4 <fatfs_sfn_exists>:
    2ff4:	fe010113          	add	sp,sp,-32
    2ff8:	00912a23          	sw	s1,20(sp)
    2ffc:	01212823          	sw	s2,16(sp)
    3000:	01312623          	sw	s3,12(sp)
    3004:	01412423          	sw	s4,8(sp)
    3008:	01512223          	sw	s5,4(sp)
    300c:	00112e23          	sw	ra,28(sp)
    3010:	00812c23          	sw	s0,24(sp)
    3014:	00050493          	mv	s1,a0
    3018:	00058993          	mv	s3,a1
    301c:	00060a13          	mv	s4,a2
    3020:	00000913          	li	s2,0
    3024:	24450a93          	add	s5,a0,580
    3028:	00000693          	li	a3,0
    302c:	00090613          	mv	a2,s2
    3030:	00098593          	mv	a1,s3
    3034:	00048513          	mv	a0,s1
    3038:	00000097          	auipc	ra,0x0
    303c:	950080e7          	jalr	-1712(ra) # 2988 <fatfs_sector_reader>
    3040:	06050263          	beqz	a0,30a4 <fatfs_sfn_exists+0xb0>
    3044:	04448413          	add	s0,s1,68
    3048:	00040513          	mv	a0,s0
    304c:	fffff097          	auipc	ra,0xfffff
    3050:	a50080e7          	jalr	-1456(ra) # 1a9c <fatfs_entry_lfn_text>
    3054:	02051e63          	bnez	a0,3090 <fatfs_sfn_exists+0x9c>
    3058:	00040513          	mv	a0,s0
    305c:	fffff097          	auipc	ra,0xfffff
    3060:	a54080e7          	jalr	-1452(ra) # 1ab0 <fatfs_entry_lfn_invalid>
    3064:	02051663          	bnez	a0,3090 <fatfs_sfn_exists+0x9c>
    3068:	00040513          	mv	a0,s0
    306c:	fffff097          	auipc	ra,0xfffff
    3070:	ac4080e7          	jalr	-1340(ra) # 1b30 <fatfs_entry_sfn_only>
    3074:	00050e63          	beqz	a0,3090 <fatfs_sfn_exists+0x9c>
    3078:	00b00613          	li	a2,11
    307c:	000a0593          	mv	a1,s4
    3080:	00040513          	mv	a0,s0
    3084:	ffffe097          	auipc	ra,0xffffe
    3088:	d4c080e7          	jalr	-692(ra) # dd0 <strncmp>
    308c:	00050a63          	beqz	a0,30a0 <fatfs_sfn_exists+0xac>
    3090:	02040413          	add	s0,s0,32
    3094:	fb541ae3          	bne	s0,s5,3048 <fatfs_sfn_exists+0x54>
    3098:	00190913          	add	s2,s2,1
    309c:	f8dff06f          	j	3028 <fatfs_sfn_exists+0x34>
    30a0:	00100513          	li	a0,1
    30a4:	01c12083          	lw	ra,28(sp)
    30a8:	01812403          	lw	s0,24(sp)
    30ac:	01412483          	lw	s1,20(sp)
    30b0:	01012903          	lw	s2,16(sp)
    30b4:	00c12983          	lw	s3,12(sp)
    30b8:	00812a03          	lw	s4,8(sp)
    30bc:	00412a83          	lw	s5,4(sp)
    30c0:	02010113          	add	sp,sp,32
    30c4:	00008067          	ret

000030c8 <fatfs_update_file_length>:
    30c8:	03852783          	lw	a5,56(a0)
    30cc:	14078e63          	beqz	a5,3228 <fatfs_update_file_length+0x160>
    30d0:	fd010113          	add	sp,sp,-48
    30d4:	02912223          	sw	s1,36(sp)
    30d8:	03212023          	sw	s2,32(sp)
    30dc:	01312e23          	sw	s3,28(sp)
    30e0:	01412c23          	sw	s4,24(sp)
    30e4:	01512a23          	sw	s5,20(sp)
    30e8:	01612823          	sw	s6,16(sp)
    30ec:	02112623          	sw	ra,44(sp)
    30f0:	02812423          	sw	s0,40(sp)
    30f4:	01712623          	sw	s7,12(sp)
    30f8:	00050493          	mv	s1,a0
    30fc:	00058a13          	mv	s4,a1
    3100:	00060a93          	mv	s5,a2
    3104:	00068913          	mv	s2,a3
    3108:	00000993          	li	s3,0
    310c:	24450b13          	add	s6,a0,580
    3110:	00000693          	li	a3,0
    3114:	00098613          	mv	a2,s3
    3118:	000a0593          	mv	a1,s4
    311c:	00048513          	mv	a0,s1
    3120:	00000097          	auipc	ra,0x0
    3124:	868080e7          	jalr	-1944(ra) # 2988 <fatfs_sector_reader>
    3128:	0c050863          	beqz	a0,31f8 <fatfs_update_file_length+0x130>
    312c:	04448413          	add	s0,s1,68
    3130:	00040b93          	mv	s7,s0
    3134:	00040513          	mv	a0,s0
    3138:	fffff097          	auipc	ra,0xfffff
    313c:	964080e7          	jalr	-1692(ra) # 1a9c <fatfs_entry_lfn_text>
    3140:	0a051463          	bnez	a0,31e8 <fatfs_update_file_length+0x120>
    3144:	00040513          	mv	a0,s0
    3148:	fffff097          	auipc	ra,0xfffff
    314c:	968080e7          	jalr	-1688(ra) # 1ab0 <fatfs_entry_lfn_invalid>
    3150:	08051c63          	bnez	a0,31e8 <fatfs_update_file_length+0x120>
    3154:	00040513          	mv	a0,s0
    3158:	fffff097          	auipc	ra,0xfffff
    315c:	9d8080e7          	jalr	-1576(ra) # 1b30 <fatfs_entry_sfn_only>
    3160:	08050463          	beqz	a0,31e8 <fatfs_update_file_length+0x120>
    3164:	00b00613          	li	a2,11
    3168:	000a8593          	mv	a1,s5
    316c:	00040513          	mv	a0,s0
    3170:	ffffe097          	auipc	ra,0xffffe
    3174:	c60080e7          	jalr	-928(ra) # dd0 <strncmp>
    3178:	06051863          	bnez	a0,31e8 <fatfs_update_file_length+0x120>
    317c:	00895793          	srl	a5,s2,0x8
    3180:	01240e23          	sb	s2,28(s0)
    3184:	00f40ea3          	sb	a5,29(s0)
    3188:	01095793          	srl	a5,s2,0x10
    318c:	01895913          	srl	s2,s2,0x18
    3190:	00f40f23          	sb	a5,30(s0)
    3194:	01240fa3          	sb	s2,31(s0)
    3198:	00040593          	mv	a1,s0
    319c:	02000613          	li	a2,32
    31a0:	00040513          	mv	a0,s0
    31a4:	ffffe097          	auipc	ra,0xffffe
    31a8:	be8080e7          	jalr	-1048(ra) # d8c <memcpy>
    31ac:	02812403          	lw	s0,40(sp)
    31b0:	0384a783          	lw	a5,56(s1)
    31b4:	2444a503          	lw	a0,580(s1)
    31b8:	02c12083          	lw	ra,44(sp)
    31bc:	02412483          	lw	s1,36(sp)
    31c0:	02012903          	lw	s2,32(sp)
    31c4:	01c12983          	lw	s3,28(sp)
    31c8:	01812a03          	lw	s4,24(sp)
    31cc:	01412a83          	lw	s5,20(sp)
    31d0:	01012b03          	lw	s6,16(sp)
    31d4:	000b8593          	mv	a1,s7
    31d8:	00c12b83          	lw	s7,12(sp)
    31dc:	00100613          	li	a2,1
    31e0:	03010113          	add	sp,sp,48
    31e4:	00078067          	jr	a5
    31e8:	02040413          	add	s0,s0,32
    31ec:	f56414e3          	bne	s0,s6,3134 <fatfs_update_file_length+0x6c>
    31f0:	00198993          	add	s3,s3,1
    31f4:	f1dff06f          	j	3110 <fatfs_update_file_length+0x48>
    31f8:	02c12083          	lw	ra,44(sp)
    31fc:	02812403          	lw	s0,40(sp)
    3200:	02412483          	lw	s1,36(sp)
    3204:	02012903          	lw	s2,32(sp)
    3208:	01c12983          	lw	s3,28(sp)
    320c:	01812a03          	lw	s4,24(sp)
    3210:	01412a83          	lw	s5,20(sp)
    3214:	01012b03          	lw	s6,16(sp)
    3218:	00c12b83          	lw	s7,12(sp)
    321c:	00000513          	li	a0,0
    3220:	03010113          	add	sp,sp,48
    3224:	00008067          	ret
    3228:	00000513          	li	a0,0
    322c:	00008067          	ret

00003230 <fatfs_list_directory_next>:
    3230:	ec010113          	add	sp,sp,-320
    3234:	13212823          	sw	s2,304(sp)
    3238:	13312623          	sw	s3,300(sp)
    323c:	13412423          	sw	s4,296(sp)
    3240:	13512223          	sw	s5,292(sp)
    3244:	12112e23          	sw	ra,316(sp)
    3248:	12812c23          	sw	s0,312(sp)
    324c:	12912a23          	sw	s1,308(sp)
    3250:	00050a13          	mv	s4,a0
    3254:	00058913          	mv	s2,a1
    3258:	00060993          	mv	s3,a2
    325c:	10010ea3          	sb	zero,285(sp)
    3260:	00f00a93          	li	s5,15
    3264:	00092603          	lw	a2,0(s2)
    3268:	00492583          	lw	a1,4(s2)
    326c:	00000693          	li	a3,0
    3270:	000a0513          	mv	a0,s4
    3274:	fffff097          	auipc	ra,0xfffff
    3278:	714080e7          	jalr	1812(ra) # 2988 <fatfs_sector_reader>
    327c:	12050263          	beqz	a0,33a0 <fatfs_list_directory_next+0x170>
    3280:	00894483          	lbu	s1,8(s2)
    3284:	00549413          	sll	s0,s1,0x5
    3288:	04440413          	add	s0,s0,68
    328c:	008a0433          	add	s0,s4,s0
    3290:	009afc63          	bgeu	s5,s1,32a8 <fatfs_list_directory_next+0x78>
    3294:	00092783          	lw	a5,0(s2)
    3298:	00090423          	sb	zero,8(s2)
    329c:	00178793          	add	a5,a5,1
    32a0:	00f92023          	sw	a5,0(s2)
    32a4:	fc1ff06f          	j	3264 <fatfs_list_directory_next+0x34>
    32a8:	00040513          	mv	a0,s0
    32ac:	ffffe097          	auipc	ra,0xffffe
    32b0:	7f0080e7          	jalr	2032(ra) # 1a9c <fatfs_entry_lfn_text>
    32b4:	02050263          	beqz	a0,32d8 <fatfs_list_directory_next+0xa8>
    32b8:	00040593          	mv	a1,s0
    32bc:	01810513          	add	a0,sp,24
    32c0:	ffffe097          	auipc	ra,0xffffe
    32c4:	6d4080e7          	jalr	1748(ra) # 1994 <fatfs_lfn_cache_entry>
    32c8:	00148493          	add	s1,s1,1
    32cc:	0ff4f493          	zext.b	s1,s1
    32d0:	02040413          	add	s0,s0,32
    32d4:	fbdff06f          	j	3290 <fatfs_list_directory_next+0x60>
    32d8:	00040513          	mv	a0,s0
    32dc:	ffffe097          	auipc	ra,0xffffe
    32e0:	7d4080e7          	jalr	2004(ra) # 1ab0 <fatfs_entry_lfn_invalid>
    32e4:	00050663          	beqz	a0,32f0 <fatfs_list_directory_next+0xc0>
    32e8:	10010ea3          	sb	zero,285(sp)
    32ec:	fddff06f          	j	32c8 <fatfs_list_directory_next+0x98>
    32f0:	00040593          	mv	a1,s0
    32f4:	01810513          	add	a0,sp,24
    32f8:	ffffe097          	auipc	ra,0xffffe
    32fc:	7f0080e7          	jalr	2032(ra) # 1ae8 <fatfs_entry_lfn_exists>
    3300:	0c050263          	beqz	a0,33c4 <fatfs_list_directory_next+0x194>
    3304:	01810513          	add	a0,sp,24
    3308:	ffffe097          	auipc	ra,0xffffe
    330c:	758080e7          	jalr	1880(ra) # 1a60 <fatfs_lfn_cache_get>
    3310:	00050593          	mv	a1,a0
    3314:	10300613          	li	a2,259
    3318:	00098513          	mv	a0,s3
    331c:	ffffe097          	auipc	ra,0xffffe
    3320:	af4080e7          	jalr	-1292(ra) # e10 <strncpy>
    3324:	00040513          	mv	a0,s0
    3328:	fffff097          	auipc	ra,0xfffff
    332c:	844080e7          	jalr	-1980(ra) # 1b6c <fatfs_entry_is_dir>
    3330:	00a03533          	snez	a0,a0
    3334:	10a98223          	sb	a0,260(s3)
    3338:	01d44783          	lbu	a5,29(s0)
    333c:	01c44703          	lbu	a4,28(s0)
    3340:	00148493          	add	s1,s1,1
    3344:	00879793          	sll	a5,a5,0x8
    3348:	00e7e7b3          	or	a5,a5,a4
    334c:	01e44703          	lbu	a4,30(s0)
    3350:	0ff4f493          	zext.b	s1,s1
    3354:	00100513          	li	a0,1
    3358:	01071713          	sll	a4,a4,0x10
    335c:	00f76733          	or	a4,a4,a5
    3360:	01f44783          	lbu	a5,31(s0)
    3364:	01879793          	sll	a5,a5,0x18
    3368:	00e7e7b3          	or	a5,a5,a4
    336c:	10f9a623          	sw	a5,268(s3)
    3370:	01544783          	lbu	a5,21(s0)
    3374:	01444703          	lbu	a4,20(s0)
    3378:	01a44683          	lbu	a3,26(s0)
    337c:	00879793          	sll	a5,a5,0x8
    3380:	00e7e7b3          	or	a5,a5,a4
    3384:	01b44703          	lbu	a4,27(s0)
    3388:	01079793          	sll	a5,a5,0x10
    338c:	00871713          	sll	a4,a4,0x8
    3390:	00d76733          	or	a4,a4,a3
    3394:	00e7e7b3          	or	a5,a5,a4
    3398:	10f9a423          	sw	a5,264(s3)
    339c:	00990423          	sb	s1,8(s2)
    33a0:	13c12083          	lw	ra,316(sp)
    33a4:	13812403          	lw	s0,312(sp)
    33a8:	13412483          	lw	s1,308(sp)
    33ac:	13012903          	lw	s2,304(sp)
    33b0:	12c12983          	lw	s3,300(sp)
    33b4:	12812a03          	lw	s4,296(sp)
    33b8:	12412a83          	lw	s5,292(sp)
    33bc:	14010113          	add	sp,sp,320
    33c0:	00008067          	ret
    33c4:	00040513          	mv	a0,s0
    33c8:	ffffe097          	auipc	ra,0xffffe
    33cc:	768080e7          	jalr	1896(ra) # 1b30 <fatfs_entry_sfn_only>
    33d0:	ee050ce3          	beqz	a0,32c8 <fatfs_list_directory_next+0x98>
    33d4:	00d00613          	li	a2,13
    33d8:	00000593          	li	a1,0
    33dc:	00810513          	add	a0,sp,8
    33e0:	10010ea3          	sb	zero,285(sp)
    33e4:	ffffe097          	auipc	ra,0xffffe
    33e8:	98c080e7          	jalr	-1652(ra) # d70 <memset>
    33ec:	00000793          	li	a5,0
    33f0:	00800713          	li	a4,8
    33f4:	00f40633          	add	a2,s0,a5
    33f8:	00064603          	lbu	a2,0(a2)
    33fc:	00810693          	add	a3,sp,8
    3400:	00f686b3          	add	a3,a3,a5
    3404:	00c68023          	sb	a2,0(a3)
    3408:	00178793          	add	a5,a5,1
    340c:	fee794e3          	bne	a5,a4,33f4 <fatfs_list_directory_next+0x1c4>
    3410:	00844683          	lbu	a3,8(s0)
    3414:	00944703          	lbu	a4,9(s0)
    3418:	00a44783          	lbu	a5,10(s0)
    341c:	00d108a3          	sb	a3,17(sp)
    3420:	00e10923          	sb	a4,18(sp)
    3424:	02000613          	li	a2,32
    3428:	00f109a3          	sb	a5,19(sp)
    342c:	02c70463          	beq	a4,a2,3454 <fatfs_list_directory_next+0x224>
    3430:	00814703          	lbu	a4,8(sp)
    3434:	02e00793          	li	a5,46
    3438:	02f70263          	beq	a4,a5,345c <fatfs_list_directory_next+0x22c>
    343c:	00810593          	add	a1,sp,8
    3440:	00098513          	mv	a0,s3
    3444:	00f10823          	sb	a5,16(sp)
    3448:	fffff097          	auipc	ra,0xfffff
    344c:	084080e7          	jalr	132(ra) # 24cc <fatfs_get_sfn_display_name>
    3450:	ed5ff06f          	j	3324 <fatfs_list_directory_next+0xf4>
    3454:	fce79ee3          	bne	a5,a4,3430 <fatfs_list_directory_next+0x200>
    3458:	fcf69ce3          	bne	a3,a5,3430 <fatfs_list_directory_next+0x200>
    345c:	02000793          	li	a5,32
    3460:	fddff06f          	j	343c <fatfs_list_directory_next+0x20c>

00003464 <fl_readdir>:
    3464:	000067b7          	lui	a5,0x6
    3468:	3287a783          	lw	a5,808(a5) # 6328 <_filelib_init>
    346c:	fe010113          	add	sp,sp,-32
    3470:	00912a23          	sw	s1,20(sp)
    3474:	01212823          	sw	s2,16(sp)
    3478:	00112e23          	sw	ra,28(sp)
    347c:	00812c23          	sw	s0,24(sp)
    3480:	01312623          	sw	s3,12(sp)
    3484:	00050493          	mv	s1,a0
    3488:	00058913          	mv	s2,a1
    348c:	00079663          	bnez	a5,3498 <fl_readdir+0x34>
    3490:	ffffe097          	auipc	ra,0xffffe
    3494:	48c080e7          	jalr	1164(ra) # 191c <fl_init>
    3498:	00006437          	lui	s0,0x6
    349c:	38840793          	add	a5,s0,904 # 6388 <_fs>
    34a0:	03c7a783          	lw	a5,60(a5)
    34a4:	38840993          	add	s3,s0,904
    34a8:	00078463          	beqz	a5,34b0 <fl_readdir+0x4c>
    34ac:	000780e7          	jalr	a5
    34b0:	38840513          	add	a0,s0,904
    34b4:	00090613          	mv	a2,s2
    34b8:	00048593          	mv	a1,s1
    34bc:	00000097          	auipc	ra,0x0
    34c0:	d74080e7          	jalr	-652(ra) # 3230 <fatfs_list_directory_next>
    34c4:	0409a783          	lw	a5,64(s3)
    34c8:	00050413          	mv	s0,a0
    34cc:	00078463          	beqz	a5,34d4 <fl_readdir+0x70>
    34d0:	000780e7          	jalr	a5
    34d4:	01c12083          	lw	ra,28(sp)
    34d8:	00143513          	seqz	a0,s0
    34dc:	01812403          	lw	s0,24(sp)
    34e0:	01412483          	lw	s1,20(sp)
    34e4:	01012903          	lw	s2,16(sp)
    34e8:	00c12983          	lw	s3,12(sp)
    34ec:	40a00533          	neg	a0,a0
    34f0:	02010113          	add	sp,sp,32
    34f4:	00008067          	ret

000034f8 <_read_sectors>:
    34f8:	fd010113          	add	sp,sp,-48
    34fc:	01612823          	sw	s6,16(sp)
    3500:	00006b37          	lui	s6,0x6
    3504:	01512a23          	sw	s5,20(sp)
    3508:	388b4a83          	lbu	s5,904(s6) # 6388 <_fs>
    350c:	01412c23          	sw	s4,24(sp)
    3510:	00058a13          	mv	s4,a1
    3514:	02912223          	sw	s1,36(sp)
    3518:	000a8593          	mv	a1,s5
    351c:	00050493          	mv	s1,a0
    3520:	000a0513          	mv	a0,s4
    3524:	02112623          	sw	ra,44(sp)
    3528:	02812423          	sw	s0,40(sp)
    352c:	03212023          	sw	s2,32(sp)
    3530:	00068413          	mv	s0,a3
    3534:	01712623          	sw	s7,12(sp)
    3538:	01812423          	sw	s8,8(sp)
    353c:	01312e23          	sw	s3,28(sp)
    3540:	00060c13          	mv	s8,a2
    3544:	ffffd097          	auipc	ra,0xffffd
    3548:	780080e7          	jalr	1920(ra) # cc4 <__udivsi3>
    354c:	00050913          	mv	s2,a0
    3550:	000a8593          	mv	a1,s5
    3554:	000a0513          	mv	a0,s4
    3558:	ffffd097          	auipc	ra,0xffffd
    355c:	7b4080e7          	jalr	1972(ra) # d0c <__umodsi3>
    3560:	00a407b3          	add	a5,s0,a0
    3564:	00050b93          	mv	s7,a0
    3568:	00fafe63          	bgeu	s5,a5,3584 <_read_sectors+0x8c>
    356c:	00090593          	mv	a1,s2
    3570:	000a8513          	mv	a0,s5
    3574:	ffffe097          	auipc	ra,0xffffe
    3578:	ee8080e7          	jalr	-280(ra) # 145c <__mulsi3>
    357c:	414a87b3          	sub	a5,s5,s4
    3580:	00f50433          	add	s0,a0,a5
    3584:	2284a983          	lw	s3,552(s1)
    3588:	07299863          	bne	s3,s2,35f8 <_read_sectors+0x100>
    358c:	22c4a583          	lw	a1,556(s1)
    3590:	fff00793          	li	a5,-1
    3594:	02f58663          	beq	a1,a5,35c0 <_read_sectors+0xc8>
    3598:	388b0513          	add	a0,s6,904
    359c:	ffffe097          	auipc	ra,0xffffe
    35a0:	244080e7          	jalr	580(ra) # 17e0 <fatfs_lba_of_cluster>
    35a4:	017505b3          	add	a1,a0,s7
    35a8:	00040693          	mv	a3,s0
    35ac:	000c0613          	mv	a2,s8
    35b0:	388b0513          	add	a0,s6,904
    35b4:	ffffe097          	auipc	ra,0xffffe
    35b8:	27c080e7          	jalr	636(ra) # 1830 <fatfs_sector_read>
    35bc:	00051463          	bnez	a0,35c4 <_read_sectors+0xcc>
    35c0:	00000413          	li	s0,0
    35c4:	02c12083          	lw	ra,44(sp)
    35c8:	00040513          	mv	a0,s0
    35cc:	02812403          	lw	s0,40(sp)
    35d0:	02412483          	lw	s1,36(sp)
    35d4:	02012903          	lw	s2,32(sp)
    35d8:	01c12983          	lw	s3,28(sp)
    35dc:	01812a03          	lw	s4,24(sp)
    35e0:	01412a83          	lw	s5,20(sp)
    35e4:	01012b03          	lw	s6,16(sp)
    35e8:	00c12b83          	lw	s7,12(sp)
    35ec:	00812c03          	lw	s8,8(sp)
    35f0:	03010113          	add	sp,sp,48
    35f4:	00008067          	ret
    35f8:	035a6463          	bltu	s4,s5,3620 <_read_sectors+0x128>
    35fc:	00198793          	add	a5,s3,1
    3600:	03279063          	bne	a5,s2,3620 <_read_sectors+0x128>
    3604:	22c4a583          	lw	a1,556(s1)
    3608:	0329e263          	bltu	s3,s2,362c <_read_sectors+0x134>
    360c:	fff00793          	li	a5,-1
    3610:	faf588e3          	beq	a1,a5,35c0 <_read_sectors+0xc8>
    3614:	22b4a623          	sw	a1,556(s1)
    3618:	2324a423          	sw	s2,552(s1)
    361c:	f7dff06f          	j	3598 <_read_sectors+0xa0>
    3620:	0044a583          	lw	a1,4(s1)
    3624:	00000993          	li	s3,0
    3628:	fe1ff06f          	j	3608 <_read_sectors+0x110>
    362c:	388b0513          	add	a0,s6,904
    3630:	fffff097          	auipc	ra,0xfffff
    3634:	248080e7          	jalr	584(ra) # 2878 <fatfs_find_next_cluster>
    3638:	00050593          	mv	a1,a0
    363c:	00198993          	add	s3,s3,1
    3640:	fc9ff06f          	j	3608 <_read_sectors+0x110>

00003644 <fatfs_set_fs_info_next_free_cluster>:
    3644:	03052783          	lw	a5,48(a0)
    3648:	0a078863          	beqz	a5,36f8 <fatfs_set_fs_info_next_free_cluster+0xb4>
    364c:	ff010113          	add	sp,sp,-16
    3650:	01c52783          	lw	a5,28(a0)
    3654:	01212023          	sw	s2,0(sp)
    3658:	00058913          	mv	s2,a1
    365c:	01855583          	lhu	a1,24(a0)
    3660:	00812423          	sw	s0,8(sp)
    3664:	00912223          	sw	s1,4(sp)
    3668:	00f585b3          	add	a1,a1,a5
    366c:	00112623          	sw	ra,12(sp)
    3670:	00050493          	mv	s1,a0
    3674:	ffffe097          	auipc	ra,0xffffe
    3678:	fc0080e7          	jalr	-64(ra) # 1634 <fatfs_fat_read_sector>
    367c:	00050413          	mv	s0,a0
    3680:	06050063          	beqz	a0,36e0 <fatfs_set_fs_info_next_free_cluster+0x9c>
    3684:	20852783          	lw	a5,520(a0)
    3688:	00895713          	srl	a4,s2,0x8
    368c:	1f278623          	sb	s2,492(a5)
    3690:	20852783          	lw	a5,520(a0)
    3694:	1ee786a3          	sb	a4,493(a5)
    3698:	20852783          	lw	a5,520(a0)
    369c:	01095713          	srl	a4,s2,0x10
    36a0:	1ee78723          	sb	a4,494(a5)
    36a4:	20852783          	lw	a5,520(a0)
    36a8:	01895713          	srl	a4,s2,0x18
    36ac:	1ee787a3          	sb	a4,495(a5)
    36b0:	00100793          	li	a5,1
    36b4:	20f52223          	sw	a5,516(a0)
    36b8:	0384a783          	lw	a5,56(s1)
    36bc:	0324a223          	sw	s2,36(s1)
    36c0:	00078a63          	beqz	a5,36d4 <fatfs_set_fs_info_next_free_cluster+0x90>
    36c4:	00050593          	mv	a1,a0
    36c8:	20052503          	lw	a0,512(a0)
    36cc:	00100613          	li	a2,1
    36d0:	000780e7          	jalr	a5
    36d4:	fff00793          	li	a5,-1
    36d8:	20f42023          	sw	a5,512(s0)
    36dc:	20042223          	sw	zero,516(s0)
    36e0:	00c12083          	lw	ra,12(sp)
    36e4:	00812403          	lw	s0,8(sp)
    36e8:	00412483          	lw	s1,4(sp)
    36ec:	00012903          	lw	s2,0(sp)
    36f0:	01010113          	add	sp,sp,16
    36f4:	00008067          	ret
    36f8:	00008067          	ret

000036fc <fatfs_find_blank_cluster>:
    36fc:	fe010113          	add	sp,sp,-32
    3700:	01312623          	sw	s3,12(sp)
    3704:	01512223          	sw	s5,4(sp)
    3708:	000109b7          	lui	s3,0x10
    370c:	10000ab7          	lui	s5,0x10000
    3710:	00912a23          	sw	s1,20(sp)
    3714:	01212823          	sw	s2,16(sp)
    3718:	01412423          	sw	s4,8(sp)
    371c:	00112e23          	sw	ra,28(sp)
    3720:	00812c23          	sw	s0,24(sp)
    3724:	00050913          	mv	s2,a0
    3728:	00058493          	mv	s1,a1
    372c:	00060a13          	mv	s4,a2
    3730:	fff98993          	add	s3,s3,-1 # ffff <Songs+0x8eaf>
    3734:	fffa8a93          	add	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    3738:	03092783          	lw	a5,48(s2)
    373c:	0074d413          	srl	s0,s1,0x7
    3740:	00079463          	bnez	a5,3748 <fatfs_find_blank_cluster+0x4c>
    3744:	0084d413          	srl	s0,s1,0x8
    3748:	02092783          	lw	a5,32(s2)
    374c:	0cf47463          	bgeu	s0,a5,3814 <fatfs_find_blank_cluster+0x118>
    3750:	01492583          	lw	a1,20(s2)
    3754:	00090513          	mv	a0,s2
    3758:	00b405b3          	add	a1,s0,a1
    375c:	ffffe097          	auipc	ra,0xffffe
    3760:	ed8080e7          	jalr	-296(ra) # 1634 <fatfs_fat_read_sector>
    3764:	0a050863          	beqz	a0,3814 <fatfs_find_blank_cluster+0x118>
    3768:	03092783          	lw	a5,48(s2)
    376c:	20852703          	lw	a4,520(a0)
    3770:	04079c63          	bnez	a5,37c8 <fatfs_find_blank_cluster+0xcc>
    3774:	00841413          	sll	s0,s0,0x8
    3778:	40848433          	sub	s0,s1,s0
    377c:	00141413          	sll	s0,s0,0x1
    3780:	01347433          	and	s0,s0,s3
    3784:	00870733          	add	a4,a4,s0
    3788:	00174783          	lbu	a5,1(a4)
    378c:	00074703          	lbu	a4,0(a4)
    3790:	00879793          	sll	a5,a5,0x8
    3794:	00e787b3          	add	a5,a5,a4
    3798:	06079a63          	bnez	a5,380c <fatfs_find_blank_cluster+0x110>
    379c:	009a2023          	sw	s1,0(s4)
    37a0:	00100513          	li	a0,1
    37a4:	01c12083          	lw	ra,28(sp)
    37a8:	01812403          	lw	s0,24(sp)
    37ac:	01412483          	lw	s1,20(sp)
    37b0:	01012903          	lw	s2,16(sp)
    37b4:	00c12983          	lw	s3,12(sp)
    37b8:	00812a03          	lw	s4,8(sp)
    37bc:	00412a83          	lw	s5,4(sp)
    37c0:	02010113          	add	sp,sp,32
    37c4:	00008067          	ret
    37c8:	00741413          	sll	s0,s0,0x7
    37cc:	40848433          	sub	s0,s1,s0
    37d0:	00241413          	sll	s0,s0,0x2
    37d4:	01347433          	and	s0,s0,s3
    37d8:	00870733          	add	a4,a4,s0
    37dc:	00374783          	lbu	a5,3(a4)
    37e0:	00274683          	lbu	a3,2(a4)
    37e4:	01879793          	sll	a5,a5,0x18
    37e8:	01069693          	sll	a3,a3,0x10
    37ec:	00d787b3          	add	a5,a5,a3
    37f0:	00074683          	lbu	a3,0(a4)
    37f4:	00174703          	lbu	a4,1(a4)
    37f8:	00d787b3          	add	a5,a5,a3
    37fc:	00871713          	sll	a4,a4,0x8
    3800:	00e787b3          	add	a5,a5,a4
    3804:	0157f7b3          	and	a5,a5,s5
    3808:	f91ff06f          	j	3798 <fatfs_find_blank_cluster+0x9c>
    380c:	00148493          	add	s1,s1,1
    3810:	f29ff06f          	j	3738 <fatfs_find_blank_cluster+0x3c>
    3814:	00000513          	li	a0,0
    3818:	f8dff06f          	j	37a4 <fatfs_find_blank_cluster+0xa8>

0000381c <fatfs_fat_set_cluster>:
    381c:	03052783          	lw	a5,48(a0)
    3820:	fe010113          	add	sp,sp,-32
    3824:	00812c23          	sw	s0,24(sp)
    3828:	00912a23          	sw	s1,20(sp)
    382c:	01212823          	sw	s2,16(sp)
    3830:	01312623          	sw	s3,12(sp)
    3834:	00112e23          	sw	ra,28(sp)
    3838:	00050993          	mv	s3,a0
    383c:	00058413          	mv	s0,a1
    3840:	00060493          	mv	s1,a2
    3844:	0085d913          	srl	s2,a1,0x8
    3848:	00078463          	beqz	a5,3850 <fatfs_fat_set_cluster+0x34>
    384c:	0075d913          	srl	s2,a1,0x7
    3850:	0149a583          	lw	a1,20(s3)
    3854:	00098513          	mv	a0,s3
    3858:	00b905b3          	add	a1,s2,a1
    385c:	ffffe097          	auipc	ra,0xffffe
    3860:	dd8080e7          	jalr	-552(ra) # 1634 <fatfs_fat_read_sector>
    3864:	00050793          	mv	a5,a0
    3868:	00000513          	li	a0,0
    386c:	04078c63          	beqz	a5,38c4 <fatfs_fat_set_cluster+0xa8>
    3870:	0309a683          	lw	a3,48(s3)
    3874:	2087a703          	lw	a4,520(a5)
    3878:	0ff4f613          	zext.b	a2,s1
    387c:	06069263          	bnez	a3,38e0 <fatfs_fat_set_cluster+0xc4>
    3880:	00891913          	sll	s2,s2,0x8
    3884:	41240433          	sub	s0,s0,s2
    3888:	000106b7          	lui	a3,0x10
    388c:	00141413          	sll	s0,s0,0x1
    3890:	fff68693          	add	a3,a3,-1 # ffff <Songs+0x8eaf>
    3894:	00d47433          	and	s0,s0,a3
    3898:	00870733          	add	a4,a4,s0
    389c:	00c70023          	sb	a2,0(a4)
    38a0:	2087a703          	lw	a4,520(a5)
    38a4:	01049493          	sll	s1,s1,0x10
    38a8:	0104d493          	srl	s1,s1,0x10
    38ac:	00870733          	add	a4,a4,s0
    38b0:	0084d493          	srl	s1,s1,0x8
    38b4:	009700a3          	sb	s1,1(a4)
    38b8:	00100713          	li	a4,1
    38bc:	20e7a223          	sw	a4,516(a5)
    38c0:	00100513          	li	a0,1
    38c4:	01c12083          	lw	ra,28(sp)
    38c8:	01812403          	lw	s0,24(sp)
    38cc:	01412483          	lw	s1,20(sp)
    38d0:	01012903          	lw	s2,16(sp)
    38d4:	00c12983          	lw	s3,12(sp)
    38d8:	02010113          	add	sp,sp,32
    38dc:	00008067          	ret
    38e0:	00791913          	sll	s2,s2,0x7
    38e4:	41240433          	sub	s0,s0,s2
    38e8:	000106b7          	lui	a3,0x10
    38ec:	fff68693          	add	a3,a3,-1 # ffff <Songs+0x8eaf>
    38f0:	00241413          	sll	s0,s0,0x2
    38f4:	00d47433          	and	s0,s0,a3
    38f8:	00870733          	add	a4,a4,s0
    38fc:	00c70023          	sb	a2,0(a4)
    3900:	2087a703          	lw	a4,520(a5)
    3904:	0084d693          	srl	a3,s1,0x8
    3908:	00870733          	add	a4,a4,s0
    390c:	00d700a3          	sb	a3,1(a4)
    3910:	2087a703          	lw	a4,520(a5)
    3914:	0104d693          	srl	a3,s1,0x10
    3918:	0184d493          	srl	s1,s1,0x18
    391c:	00870733          	add	a4,a4,s0
    3920:	00d70123          	sb	a3,2(a4)
    3924:	2087a703          	lw	a4,520(a5)
    3928:	00870733          	add	a4,a4,s0
    392c:	009701a3          	sb	s1,3(a4)
    3930:	f89ff06f          	j	38b8 <fatfs_fat_set_cluster+0x9c>

00003934 <fatfs_free_cluster_chain>:
    3934:	fe010113          	add	sp,sp,-32
    3938:	00812c23          	sw	s0,24(sp)
    393c:	01212823          	sw	s2,16(sp)
    3940:	00112e23          	sw	ra,28(sp)
    3944:	00912a23          	sw	s1,20(sp)
    3948:	00050413          	mv	s0,a0
    394c:	ffd00913          	li	s2,-3
    3950:	fff58793          	add	a5,a1,-1
    3954:	02f97063          	bgeu	s2,a5,3974 <fatfs_free_cluster_chain+0x40>
    3958:	01c12083          	lw	ra,28(sp)
    395c:	01812403          	lw	s0,24(sp)
    3960:	01412483          	lw	s1,20(sp)
    3964:	01012903          	lw	s2,16(sp)
    3968:	00100513          	li	a0,1
    396c:	02010113          	add	sp,sp,32
    3970:	00008067          	ret
    3974:	00040513          	mv	a0,s0
    3978:	00b12623          	sw	a1,12(sp)
    397c:	fffff097          	auipc	ra,0xfffff
    3980:	efc080e7          	jalr	-260(ra) # 2878 <fatfs_find_next_cluster>
    3984:	00c12583          	lw	a1,12(sp)
    3988:	00050493          	mv	s1,a0
    398c:	00000613          	li	a2,0
    3990:	00040513          	mv	a0,s0
    3994:	00000097          	auipc	ra,0x0
    3998:	e88080e7          	jalr	-376(ra) # 381c <fatfs_fat_set_cluster>
    399c:	00048593          	mv	a1,s1
    39a0:	fb1ff06f          	j	3950 <fatfs_free_cluster_chain+0x1c>

000039a4 <fatfs_fat_add_cluster_to_chain>:
    39a4:	fff00793          	li	a5,-1
    39a8:	02f59463          	bne	a1,a5,39d0 <fatfs_fat_add_cluster_to_chain+0x2c>
    39ac:	00000513          	li	a0,0
    39b0:	00008067          	ret
    39b4:	00000513          	li	a0,0
    39b8:	01c12083          	lw	ra,28(sp)
    39bc:	01812403          	lw	s0,24(sp)
    39c0:	01412483          	lw	s1,20(sp)
    39c4:	01012903          	lw	s2,16(sp)
    39c8:	02010113          	add	sp,sp,32
    39cc:	00008067          	ret
    39d0:	fe010113          	add	sp,sp,-32
    39d4:	00812c23          	sw	s0,24(sp)
    39d8:	00912a23          	sw	s1,20(sp)
    39dc:	01212823          	sw	s2,16(sp)
    39e0:	00050413          	mv	s0,a0
    39e4:	00112e23          	sw	ra,28(sp)
    39e8:	00058513          	mv	a0,a1
    39ec:	00060493          	mv	s1,a2
    39f0:	fff00913          	li	s2,-1
    39f4:	00050593          	mv	a1,a0
    39f8:	00a12623          	sw	a0,12(sp)
    39fc:	00040513          	mv	a0,s0
    3a00:	fffff097          	auipc	ra,0xfffff
    3a04:	e78080e7          	jalr	-392(ra) # 2878 <fatfs_find_next_cluster>
    3a08:	fa0506e3          	beqz	a0,39b4 <fatfs_fat_add_cluster_to_chain+0x10>
    3a0c:	00c12583          	lw	a1,12(sp)
    3a10:	ff2512e3          	bne	a0,s2,39f4 <fatfs_fat_add_cluster_to_chain+0x50>
    3a14:	00048613          	mv	a2,s1
    3a18:	00040513          	mv	a0,s0
    3a1c:	00000097          	auipc	ra,0x0
    3a20:	e00080e7          	jalr	-512(ra) # 381c <fatfs_fat_set_cluster>
    3a24:	fff00613          	li	a2,-1
    3a28:	00048593          	mv	a1,s1
    3a2c:	00040513          	mv	a0,s0
    3a30:	00000097          	auipc	ra,0x0
    3a34:	dec080e7          	jalr	-532(ra) # 381c <fatfs_fat_set_cluster>
    3a38:	00100513          	li	a0,1
    3a3c:	f7dff06f          	j	39b8 <fatfs_fat_add_cluster_to_chain+0x14>

00003a40 <fatfs_add_free_space>:
    3a40:	02452703          	lw	a4,36(a0)
    3a44:	fd010113          	add	sp,sp,-48
    3a48:	02812423          	sw	s0,40(sp)
    3a4c:	03212023          	sw	s2,32(sp)
    3a50:	01412c23          	sw	s4,24(sp)
    3a54:	01512a23          	sw	s5,20(sp)
    3a58:	02112623          	sw	ra,44(sp)
    3a5c:	02912223          	sw	s1,36(sp)
    3a60:	01312e23          	sw	s3,28(sp)
    3a64:	fff00793          	li	a5,-1
    3a68:	0005aa83          	lw	s5,0(a1)
    3a6c:	00050413          	mv	s0,a0
    3a70:	00058913          	mv	s2,a1
    3a74:	00060a13          	mv	s4,a2
    3a78:	00f70863          	beq	a4,a5,3a88 <fatfs_add_free_space+0x48>
    3a7c:	fff00593          	li	a1,-1
    3a80:	00000097          	auipc	ra,0x0
    3a84:	bc4080e7          	jalr	-1084(ra) # 3644 <fatfs_set_fs_info_next_free_cluster>
    3a88:	00000493          	li	s1,0
    3a8c:	03449663          	bne	s1,s4,3ab8 <fatfs_add_free_space+0x78>
    3a90:	00100513          	li	a0,1
    3a94:	02c12083          	lw	ra,44(sp)
    3a98:	02812403          	lw	s0,40(sp)
    3a9c:	02412483          	lw	s1,36(sp)
    3aa0:	02012903          	lw	s2,32(sp)
    3aa4:	01c12983          	lw	s3,28(sp)
    3aa8:	01812a03          	lw	s4,24(sp)
    3aac:	01412a83          	lw	s5,20(sp)
    3ab0:	03010113          	add	sp,sp,48
    3ab4:	00008067          	ret
    3ab8:	00842583          	lw	a1,8(s0)
    3abc:	00c10613          	add	a2,sp,12
    3ac0:	00040513          	mv	a0,s0
    3ac4:	00000097          	auipc	ra,0x0
    3ac8:	c38080e7          	jalr	-968(ra) # 36fc <fatfs_find_blank_cluster>
    3acc:	fc0504e3          	beqz	a0,3a94 <fatfs_add_free_space+0x54>
    3ad0:	00c12983          	lw	s3,12(sp)
    3ad4:	000a8593          	mv	a1,s5
    3ad8:	00040513          	mv	a0,s0
    3adc:	00098613          	mv	a2,s3
    3ae0:	00000097          	auipc	ra,0x0
    3ae4:	d3c080e7          	jalr	-708(ra) # 381c <fatfs_fat_set_cluster>
    3ae8:	fff00613          	li	a2,-1
    3aec:	00098593          	mv	a1,s3
    3af0:	00040513          	mv	a0,s0
    3af4:	00000097          	auipc	ra,0x0
    3af8:	d28080e7          	jalr	-728(ra) # 381c <fatfs_fat_set_cluster>
    3afc:	00049463          	bnez	s1,3b04 <fatfs_add_free_space+0xc4>
    3b00:	01392023          	sw	s3,0(s2)
    3b04:	00148493          	add	s1,s1,1
    3b08:	00098a93          	mv	s5,s3
    3b0c:	f81ff06f          	j	3a8c <fatfs_add_free_space+0x4c>

00003b10 <_write_sectors>:
    3b10:	fb010113          	add	sp,sp,-80
    3b14:	03312e23          	sw	s3,60(sp)
    3b18:	000069b7          	lui	s3,0x6
    3b1c:	03612823          	sw	s6,48(sp)
    3b20:	3889cb03          	lbu	s6,904(s3) # 6388 <_fs>
    3b24:	03512a23          	sw	s5,52(sp)
    3b28:	00058a93          	mv	s5,a1
    3b2c:	fff00793          	li	a5,-1
    3b30:	04812423          	sw	s0,72(sp)
    3b34:	000b0593          	mv	a1,s6
    3b38:	00050413          	mv	s0,a0
    3b3c:	000a8513          	mv	a0,s5
    3b40:	00f12e23          	sw	a5,28(sp)
    3b44:	04112623          	sw	ra,76(sp)
    3b48:	04912223          	sw	s1,68(sp)
    3b4c:	05212023          	sw	s2,64(sp)
    3b50:	03712623          	sw	s7,44(sp)
    3b54:	03812423          	sw	s8,40(sp)
    3b58:	00068b93          	mv	s7,a3
    3b5c:	03912223          	sw	s9,36(sp)
    3b60:	03a12023          	sw	s10,32(sp)
    3b64:	00060c93          	mv	s9,a2
    3b68:	03412c23          	sw	s4,56(sp)
    3b6c:	ffffd097          	auipc	ra,0xffffd
    3b70:	158080e7          	jalr	344(ra) # cc4 <__udivsi3>
    3b74:	00050493          	mv	s1,a0
    3b78:	000b0593          	mv	a1,s6
    3b7c:	000a8513          	mv	a0,s5
    3b80:	ffffd097          	auipc	ra,0xffffd
    3b84:	18c080e7          	jalr	396(ra) # d0c <__umodsi3>
    3b88:	00ab87b3          	add	a5,s7,a0
    3b8c:	00050c13          	mv	s8,a0
    3b90:	38898d13          	add	s10,s3,904
    3b94:	000b8913          	mv	s2,s7
    3b98:	00fb7e63          	bgeu	s6,a5,3bb4 <_write_sectors+0xa4>
    3b9c:	00048593          	mv	a1,s1
    3ba0:	000b0513          	mv	a0,s6
    3ba4:	ffffe097          	auipc	ra,0xffffe
    3ba8:	8b8080e7          	jalr	-1864(ra) # 145c <__mulsi3>
    3bac:	415b07b3          	sub	a5,s6,s5
    3bb0:	00f50933          	add	s2,a0,a5
    3bb4:	22842a03          	lw	s4,552(s0)
    3bb8:	029a1a63          	bne	s4,s1,3bec <_write_sectors+0xdc>
    3bbc:	22c42583          	lw	a1,556(s0)
    3bc0:	38898513          	add	a0,s3,904
    3bc4:	ffffe097          	auipc	ra,0xffffe
    3bc8:	c1c080e7          	jalr	-996(ra) # 17e0 <fatfs_lba_of_cluster>
    3bcc:	018505b3          	add	a1,a0,s8
    3bd0:	00090693          	mv	a3,s2
    3bd4:	000c8613          	mv	a2,s9
    3bd8:	38898513          	add	a0,s3,904
    3bdc:	ffffe097          	auipc	ra,0xffffe
    3be0:	c6c080e7          	jalr	-916(ra) # 1848 <fatfs_sector_write>
    3be4:	04050a63          	beqz	a0,3c38 <_write_sectors+0x128>
    3be8:	0540006f          	j	3c3c <_write_sectors+0x12c>
    3bec:	096ae663          	bltu	s5,s6,3c78 <_write_sectors+0x168>
    3bf0:	001a0793          	add	a5,s4,1
    3bf4:	08979263          	bne	a5,s1,3c78 <_write_sectors+0x168>
    3bf8:	22c42583          	lw	a1,556(s0)
    3bfc:	fff00a93          	li	s5,-1
    3c00:	089a6263          	bltu	s4,s1,3c84 <_write_sectors+0x174>
    3c04:	fff00793          	li	a5,-1
    3c08:	0af59463          	bne	a1,a5,3cb0 <_write_sectors+0x1a0>
    3c0c:	000d4583          	lbu	a1,0(s10)
    3c10:	fff58513          	add	a0,a1,-1
    3c14:	01750533          	add	a0,a0,s7
    3c18:	ffffd097          	auipc	ra,0xffffd
    3c1c:	0ac080e7          	jalr	172(ra) # cc4 <__udivsi3>
    3c20:	00050613          	mv	a2,a0
    3c24:	01c10593          	add	a1,sp,28
    3c28:	38898513          	add	a0,s3,904
    3c2c:	00000097          	auipc	ra,0x0
    3c30:	e14080e7          	jalr	-492(ra) # 3a40 <fatfs_add_free_space>
    3c34:	06051c63          	bnez	a0,3cac <_write_sectors+0x19c>
    3c38:	00000913          	li	s2,0
    3c3c:	04c12083          	lw	ra,76(sp)
    3c40:	04812403          	lw	s0,72(sp)
    3c44:	04412483          	lw	s1,68(sp)
    3c48:	03c12983          	lw	s3,60(sp)
    3c4c:	03812a03          	lw	s4,56(sp)
    3c50:	03412a83          	lw	s5,52(sp)
    3c54:	03012b03          	lw	s6,48(sp)
    3c58:	02c12b83          	lw	s7,44(sp)
    3c5c:	02812c03          	lw	s8,40(sp)
    3c60:	02412c83          	lw	s9,36(sp)
    3c64:	02012d03          	lw	s10,32(sp)
    3c68:	00090513          	mv	a0,s2
    3c6c:	04012903          	lw	s2,64(sp)
    3c70:	05010113          	add	sp,sp,80
    3c74:	00008067          	ret
    3c78:	00442583          	lw	a1,4(s0)
    3c7c:	00000a13          	li	s4,0
    3c80:	f7dff06f          	j	3bfc <_write_sectors+0xec>
    3c84:	38898513          	add	a0,s3,904
    3c88:	00b12623          	sw	a1,12(sp)
    3c8c:	fffff097          	auipc	ra,0xfffff
    3c90:	bec080e7          	jalr	-1044(ra) # 2878 <fatfs_find_next_cluster>
    3c94:	00c12583          	lw	a1,12(sp)
    3c98:	00b12e23          	sw	a1,28(sp)
    3c9c:	f75508e3          	beq	a0,s5,3c0c <_write_sectors+0xfc>
    3ca0:	001a0a13          	add	s4,s4,1
    3ca4:	00050593          	mv	a1,a0
    3ca8:	f59ff06f          	j	3c00 <_write_sectors+0xf0>
    3cac:	01c12583          	lw	a1,28(sp)
    3cb0:	22b42623          	sw	a1,556(s0)
    3cb4:	22942423          	sw	s1,552(s0)
    3cb8:	f09ff06f          	j	3bc0 <_write_sectors+0xb0>

00003cbc <fl_fflush>:
    3cbc:	000067b7          	lui	a5,0x6
    3cc0:	3287a783          	lw	a5,808(a5) # 6328 <_filelib_init>
    3cc4:	ff010113          	add	sp,sp,-16
    3cc8:	00812423          	sw	s0,8(sp)
    3ccc:	00112623          	sw	ra,12(sp)
    3cd0:	00912223          	sw	s1,4(sp)
    3cd4:	00050413          	mv	s0,a0
    3cd8:	00079663          	bnez	a5,3ce4 <fl_fflush+0x28>
    3cdc:	ffffe097          	auipc	ra,0xffffe
    3ce0:	c40080e7          	jalr	-960(ra) # 191c <fl_init>
    3ce4:	04040863          	beqz	s0,3d34 <fl_fflush+0x78>
    3ce8:	000067b7          	lui	a5,0x6
    3cec:	38878713          	add	a4,a5,904 # 6388 <_fs>
    3cf0:	03c72703          	lw	a4,60(a4)
    3cf4:	38878493          	add	s1,a5,904
    3cf8:	00070463          	beqz	a4,3d00 <fl_fflush+0x44>
    3cfc:	000700e7          	jalr	a4
    3d00:	43442783          	lw	a5,1076(s0)
    3d04:	02078263          	beqz	a5,3d28 <fl_fflush+0x6c>
    3d08:	43042583          	lw	a1,1072(s0)
    3d0c:	00100693          	li	a3,1
    3d10:	23040613          	add	a2,s0,560
    3d14:	00040513          	mv	a0,s0
    3d18:	00000097          	auipc	ra,0x0
    3d1c:	df8080e7          	jalr	-520(ra) # 3b10 <_write_sectors>
    3d20:	00050463          	beqz	a0,3d28 <fl_fflush+0x6c>
    3d24:	42042a23          	sw	zero,1076(s0)
    3d28:	0404a783          	lw	a5,64(s1)
    3d2c:	00078463          	beqz	a5,3d34 <fl_fflush+0x78>
    3d30:	000780e7          	jalr	a5
    3d34:	00c12083          	lw	ra,12(sp)
    3d38:	00812403          	lw	s0,8(sp)
    3d3c:	00412483          	lw	s1,4(sp)
    3d40:	00000513          	li	a0,0
    3d44:	01010113          	add	sp,sp,16
    3d48:	00008067          	ret

00003d4c <fl_fclose>:
    3d4c:	000067b7          	lui	a5,0x6
    3d50:	3287a783          	lw	a5,808(a5) # 6328 <_filelib_init>
    3d54:	ff010113          	add	sp,sp,-16
    3d58:	00812423          	sw	s0,8(sp)
    3d5c:	00112623          	sw	ra,12(sp)
    3d60:	00912223          	sw	s1,4(sp)
    3d64:	01212023          	sw	s2,0(sp)
    3d68:	00050413          	mv	s0,a0
    3d6c:	00079663          	bnez	a5,3d78 <fl_fclose+0x2c>
    3d70:	ffffe097          	auipc	ra,0xffffe
    3d74:	bac080e7          	jalr	-1108(ra) # 191c <fl_init>
    3d78:	08040e63          	beqz	s0,3e14 <fl_fclose+0xc8>
    3d7c:	000064b7          	lui	s1,0x6
    3d80:	38848793          	add	a5,s1,904 # 6388 <_fs>
    3d84:	03c7a783          	lw	a5,60(a5)
    3d88:	38848913          	add	s2,s1,904
    3d8c:	00078463          	beqz	a5,3d94 <fl_fclose+0x48>
    3d90:	000780e7          	jalr	a5
    3d94:	00040513          	mv	a0,s0
    3d98:	00000097          	auipc	ra,0x0
    3d9c:	f24080e7          	jalr	-220(ra) # 3cbc <fl_fflush>
    3da0:	01042783          	lw	a5,16(s0)
    3da4:	00078e63          	beqz	a5,3dc0 <fl_fclose+0x74>
    3da8:	00c42683          	lw	a3,12(s0)
    3dac:	00042583          	lw	a1,0(s0)
    3db0:	21c40613          	add	a2,s0,540
    3db4:	38848513          	add	a0,s1,904
    3db8:	fffff097          	auipc	ra,0xfffff
    3dbc:	310080e7          	jalr	784(ra) # 30c8 <fatfs_update_file_length>
    3dc0:	fff00793          	li	a5,-1
    3dc4:	42f42823          	sw	a5,1072(s0)
    3dc8:	00040513          	mv	a0,s0
    3dcc:	00042423          	sw	zero,8(s0)
    3dd0:	00042623          	sw	zero,12(s0)
    3dd4:	00042223          	sw	zero,4(s0)
    3dd8:	42042a23          	sw	zero,1076(s0)
    3ddc:	00042823          	sw	zero,16(s0)
    3de0:	ffffe097          	auipc	ra,0xffffe
    3de4:	9b8080e7          	jalr	-1608(ra) # 1798 <_free_file>
    3de8:	38848513          	add	a0,s1,904
    3dec:	fffff097          	auipc	ra,0xfffff
    3df0:	a30080e7          	jalr	-1488(ra) # 281c <fatfs_fat_purge>
    3df4:	04092783          	lw	a5,64(s2)
    3df8:	00078e63          	beqz	a5,3e14 <fl_fclose+0xc8>
    3dfc:	00812403          	lw	s0,8(sp)
    3e00:	00c12083          	lw	ra,12(sp)
    3e04:	00412483          	lw	s1,4(sp)
    3e08:	00012903          	lw	s2,0(sp)
    3e0c:	01010113          	add	sp,sp,16
    3e10:	00078067          	jr	a5
    3e14:	00c12083          	lw	ra,12(sp)
    3e18:	00812403          	lw	s0,8(sp)
    3e1c:	00412483          	lw	s1,4(sp)
    3e20:	00012903          	lw	s2,0(sp)
    3e24:	01010113          	add	sp,sp,16
    3e28:	00008067          	ret

00003e2c <fl_fread>:
    3e2c:	fd010113          	add	sp,sp,-48
    3e30:	01612823          	sw	s6,16(sp)
    3e34:	00050b13          	mv	s6,a0
    3e38:	00058513          	mv	a0,a1
    3e3c:	00060593          	mv	a1,a2
    3e40:	02812423          	sw	s0,40(sp)
    3e44:	02912223          	sw	s1,36(sp)
    3e48:	02112623          	sw	ra,44(sp)
    3e4c:	03212023          	sw	s2,32(sp)
    3e50:	01312e23          	sw	s3,28(sp)
    3e54:	01412c23          	sw	s4,24(sp)
    3e58:	01512a23          	sw	s5,20(sp)
    3e5c:	01712623          	sw	s7,12(sp)
    3e60:	00068493          	mv	s1,a3
    3e64:	ffffd097          	auipc	ra,0xffffd
    3e68:	5f8080e7          	jalr	1528(ra) # 145c <__mulsi3>
    3e6c:	000067b7          	lui	a5,0x6
    3e70:	3287a783          	lw	a5,808(a5) # 6328 <_filelib_init>
    3e74:	00050413          	mv	s0,a0
    3e78:	00079663          	bnez	a5,3e84 <fl_fread+0x58>
    3e7c:	ffffe097          	auipc	ra,0xffffe
    3e80:	aa0080e7          	jalr	-1376(ra) # 191c <fl_init>
    3e84:	120b0a63          	beqz	s6,3fb8 <fl_fread+0x18c>
    3e88:	12048863          	beqz	s1,3fb8 <fl_fread+0x18c>
    3e8c:	4384c783          	lbu	a5,1080(s1)
    3e90:	0017f793          	and	a5,a5,1
    3e94:	12078263          	beqz	a5,3fb8 <fl_fread+0x18c>
    3e98:	06040e63          	beqz	s0,3f14 <fl_fread+0xe8>
    3e9c:	0084a583          	lw	a1,8(s1)
    3ea0:	00c4a783          	lw	a5,12(s1)
    3ea4:	10f5fa63          	bgeu	a1,a5,3fb8 <fl_fread+0x18c>
    3ea8:	00b40733          	add	a4,s0,a1
    3eac:	00040a93          	mv	s5,s0
    3eb0:	00e7f463          	bgeu	a5,a4,3eb8 <fl_fread+0x8c>
    3eb4:	40b78ab3          	sub	s5,a5,a1
    3eb8:	0095d993          	srl	s3,a1,0x9
    3ebc:	1ff5f913          	and	s2,a1,511
    3ec0:	00000413          	li	s0,0
    3ec4:	05505863          	blez	s5,3f14 <fl_fread+0xe8>
    3ec8:	06091e63          	bnez	s2,3f44 <fl_fread+0x118>
    3ecc:	408a86b3          	sub	a3,s5,s0
    3ed0:	1ff00793          	li	a5,511
    3ed4:	00000913          	li	s2,0
    3ed8:	06d7d663          	bge	a5,a3,3f44 <fl_fread+0x118>
    3edc:	4096d693          	sra	a3,a3,0x9
    3ee0:	008b0633          	add	a2,s6,s0
    3ee4:	00098593          	mv	a1,s3
    3ee8:	00048513          	mv	a0,s1
    3eec:	fffff097          	auipc	ra,0xfffff
    3ef0:	60c080e7          	jalr	1548(ra) # 34f8 <_read_sectors>
    3ef4:	02050063          	beqz	a0,3f14 <fl_fread+0xe8>
    3ef8:	00951a13          	sll	s4,a0,0x9
    3efc:	00a989b3          	add	s3,s3,a0
    3f00:	0084a783          	lw	a5,8(s1)
    3f04:	01440433          	add	s0,s0,s4
    3f08:	014787b3          	add	a5,a5,s4
    3f0c:	00f4a423          	sw	a5,8(s1)
    3f10:	fb544ee3          	blt	s0,s5,3ecc <fl_fread+0xa0>
    3f14:	02c12083          	lw	ra,44(sp)
    3f18:	00040513          	mv	a0,s0
    3f1c:	02812403          	lw	s0,40(sp)
    3f20:	02412483          	lw	s1,36(sp)
    3f24:	02012903          	lw	s2,32(sp)
    3f28:	01c12983          	lw	s3,28(sp)
    3f2c:	01812a03          	lw	s4,24(sp)
    3f30:	01412a83          	lw	s5,20(sp)
    3f34:	01012b03          	lw	s6,16(sp)
    3f38:	00c12b83          	lw	s7,12(sp)
    3f3c:	03010113          	add	sp,sp,48
    3f40:	00008067          	ret
    3f44:	4304a783          	lw	a5,1072(s1)
    3f48:	23048b93          	add	s7,s1,560
    3f4c:	03378e63          	beq	a5,s3,3f88 <fl_fread+0x15c>
    3f50:	4344a783          	lw	a5,1076(s1)
    3f54:	00078863          	beqz	a5,3f64 <fl_fread+0x138>
    3f58:	00048513          	mv	a0,s1
    3f5c:	00000097          	auipc	ra,0x0
    3f60:	d60080e7          	jalr	-672(ra) # 3cbc <fl_fflush>
    3f64:	00100693          	li	a3,1
    3f68:	000b8613          	mv	a2,s7
    3f6c:	00098593          	mv	a1,s3
    3f70:	00048513          	mv	a0,s1
    3f74:	fffff097          	auipc	ra,0xfffff
    3f78:	584080e7          	jalr	1412(ra) # 34f8 <_read_sectors>
    3f7c:	f8050ce3          	beqz	a0,3f14 <fl_fread+0xe8>
    3f80:	4334a823          	sw	s3,1072(s1)
    3f84:	4204aa23          	sw	zero,1076(s1)
    3f88:	20000793          	li	a5,512
    3f8c:	412787b3          	sub	a5,a5,s2
    3f90:	408a8a33          	sub	s4,s5,s0
    3f94:	0147d463          	bge	a5,s4,3f9c <fl_fread+0x170>
    3f98:	00078a13          	mv	s4,a5
    3f9c:	000a0613          	mv	a2,s4
    3fa0:	012b85b3          	add	a1,s7,s2
    3fa4:	008b0533          	add	a0,s6,s0
    3fa8:	ffffd097          	auipc	ra,0xffffd
    3fac:	de4080e7          	jalr	-540(ra) # d8c <memcpy>
    3fb0:	00198993          	add	s3,s3,1
    3fb4:	f4dff06f          	j	3f00 <fl_fread+0xd4>
    3fb8:	fff00413          	li	s0,-1
    3fbc:	f59ff06f          	j	3f14 <fl_fread+0xe8>

00003fc0 <fatfs_allocate_free_space>:
    3fc0:	02069a63          	bnez	a3,3ff4 <fatfs_allocate_free_space+0x34>
    3fc4:	00000513          	li	a0,0
    3fc8:	00008067          	ret
    3fcc:	00000513          	li	a0,0
    3fd0:	02c12083          	lw	ra,44(sp)
    3fd4:	02812403          	lw	s0,40(sp)
    3fd8:	02412483          	lw	s1,36(sp)
    3fdc:	02012903          	lw	s2,32(sp)
    3fe0:	01c12983          	lw	s3,28(sp)
    3fe4:	01812a03          	lw	s4,24(sp)
    3fe8:	01412a83          	lw	s5,20(sp)
    3fec:	03010113          	add	sp,sp,48
    3ff0:	00008067          	ret
    3ff4:	02452703          	lw	a4,36(a0)
    3ff8:	fd010113          	add	sp,sp,-48
    3ffc:	02812423          	sw	s0,40(sp)
    4000:	03212023          	sw	s2,32(sp)
    4004:	01312e23          	sw	s3,28(sp)
    4008:	01512a23          	sw	s5,20(sp)
    400c:	02112623          	sw	ra,44(sp)
    4010:	02912223          	sw	s1,36(sp)
    4014:	01412c23          	sw	s4,24(sp)
    4018:	fff00793          	li	a5,-1
    401c:	00050413          	mv	s0,a0
    4020:	00058a93          	mv	s5,a1
    4024:	00060993          	mv	s3,a2
    4028:	00068913          	mv	s2,a3
    402c:	00f70863          	beq	a4,a5,403c <fatfs_allocate_free_space+0x7c>
    4030:	fff00593          	li	a1,-1
    4034:	fffff097          	auipc	ra,0xfffff
    4038:	610080e7          	jalr	1552(ra) # 3644 <fatfs_set_fs_info_next_free_cluster>
    403c:	00044a03          	lbu	s4,0(s0)
    4040:	00090513          	mv	a0,s2
    4044:	009a1a13          	sll	s4,s4,0x9
    4048:	000a0593          	mv	a1,s4
    404c:	ffffd097          	auipc	ra,0xffffd
    4050:	c78080e7          	jalr	-904(ra) # cc4 <__udivsi3>
    4054:	00050493          	mv	s1,a0
    4058:	00050593          	mv	a1,a0
    405c:	000a0513          	mv	a0,s4
    4060:	ffffd097          	auipc	ra,0xffffd
    4064:	3fc080e7          	jalr	1020(ra) # 145c <__mulsi3>
    4068:	01250463          	beq	a0,s2,4070 <fatfs_allocate_free_space+0xb0>
    406c:	00148493          	add	s1,s1,1
    4070:	040a8463          	beqz	s5,40b8 <fatfs_allocate_free_space+0xf8>
    4074:	00842583          	lw	a1,8(s0)
    4078:	00c10613          	add	a2,sp,12
    407c:	00040513          	mv	a0,s0
    4080:	fffff097          	auipc	ra,0xfffff
    4084:	67c080e7          	jalr	1660(ra) # 36fc <fatfs_find_blank_cluster>
    4088:	f40502e3          	beqz	a0,3fcc <fatfs_allocate_free_space+0xc>
    408c:	00100793          	li	a5,1
    4090:	02f49863          	bne	s1,a5,40c0 <fatfs_allocate_free_space+0x100>
    4094:	00c12483          	lw	s1,12(sp)
    4098:	fff00613          	li	a2,-1
    409c:	00040513          	mv	a0,s0
    40a0:	00048593          	mv	a1,s1
    40a4:	fffff097          	auipc	ra,0xfffff
    40a8:	778080e7          	jalr	1912(ra) # 381c <fatfs_fat_set_cluster>
    40ac:	00100513          	li	a0,1
    40b0:	0099a023          	sw	s1,0(s3)
    40b4:	f1dff06f          	j	3fd0 <fatfs_allocate_free_space+0x10>
    40b8:	0009a783          	lw	a5,0(s3)
    40bc:	00f12623          	sw	a5,12(sp)
    40c0:	00048613          	mv	a2,s1
    40c4:	00c10593          	add	a1,sp,12
    40c8:	00040513          	mv	a0,s0
    40cc:	00000097          	auipc	ra,0x0
    40d0:	974080e7          	jalr	-1676(ra) # 3a40 <fatfs_add_free_space>
    40d4:	00a03533          	snez	a0,a0
    40d8:	ef9ff06f          	j	3fd0 <fatfs_allocate_free_space+0x10>

000040dc <fatfs_add_file_entry>:
    40dc:	f8010113          	add	sp,sp,-128
    40e0:	00f12a23          	sw	a5,20(sp)
    40e4:	03852783          	lw	a5,56(a0)
    40e8:	06112e23          	sw	ra,124(sp)
    40ec:	06812c23          	sw	s0,120(sp)
    40f0:	06912a23          	sw	s1,116(sp)
    40f4:	07212823          	sw	s2,112(sp)
    40f8:	07312623          	sw	s3,108(sp)
    40fc:	07412423          	sw	s4,104(sp)
    4100:	07512223          	sw	s5,100(sp)
    4104:	07612023          	sw	s6,96(sp)
    4108:	05712e23          	sw	s7,92(sp)
    410c:	05812c23          	sw	s8,88(sp)
    4110:	05912a23          	sw	s9,84(sp)
    4114:	05a12823          	sw	s10,80(sp)
    4118:	05b12623          	sw	s11,76(sp)
    411c:	00b12423          	sw	a1,8(sp)
    4120:	00c12623          	sw	a2,12(sp)
    4124:	00e12823          	sw	a4,16(sp)
    4128:	01012c23          	sw	a6,24(sp)
    412c:	2c078063          	beqz	a5,43ec <fatfs_add_file_entry+0x310>
    4130:	00050413          	mv	s0,a0
    4134:	00060513          	mv	a0,a2
    4138:	00068a93          	mv	s5,a3
    413c:	ffffe097          	auipc	ra,0xffffe
    4140:	a50080e7          	jalr	-1456(ra) # 1b8c <fatfs_lfn_entries_required>
    4144:	00150713          	add	a4,a0,1
    4148:	00100793          	li	a5,1
    414c:	00050913          	mv	s2,a0
    4150:	28e7fe63          	bgeu	a5,a4,43ec <fatfs_add_file_entry+0x310>
    4154:	00000493          	li	s1,0
    4158:	00000a13          	li	s4,0
    415c:	00000993          	li	s3,0
    4160:	00000b13          	li	s6,0
    4164:	00000d93          	li	s11,0
    4168:	0e500c93          	li	s9,229
    416c:	01000d13          	li	s10,16
    4170:	00812583          	lw	a1,8(sp)
    4174:	00000693          	li	a3,0
    4178:	00048613          	mv	a2,s1
    417c:	00040513          	mv	a0,s0
    4180:	fffff097          	auipc	ra,0xfffff
    4184:	808080e7          	jalr	-2040(ra) # 2988 <fatfs_sector_reader>
    4188:	18050063          	beqz	a0,4308 <fatfs_add_file_entry+0x22c>
    418c:	04440c13          	add	s8,s0,68
    4190:	000d8793          	mv	a5,s11
    4194:	00000b93          	li	s7,0
    4198:	000c0513          	mv	a0,s8
    419c:	00f12e23          	sw	a5,28(sp)
    41a0:	ffffe097          	auipc	ra,0xffffe
    41a4:	8fc080e7          	jalr	-1796(ra) # 1a9c <fatfs_entry_lfn_text>
    41a8:	01c12783          	lw	a5,28(sp)
    41ac:	00050d93          	mv	s11,a0
    41b0:	02050c63          	beqz	a0,41e8 <fatfs_add_file_entry+0x10c>
    41b4:	00079863          	bnez	a5,41c4 <fatfs_add_file_entry+0xe8>
    41b8:	000b8a13          	mv	s4,s7
    41bc:	00048993          	mv	s3,s1
    41c0:	00100b13          	li	s6,1
    41c4:	00178d93          	add	s11,a5,1
    41c8:	001b8713          	add	a4,s7,1
    41cc:	0ff77b93          	zext.b	s7,a4
    41d0:	020c0c13          	add	s8,s8,32
    41d4:	01ab9663          	bne	s7,s10,41e0 <fatfs_add_file_entry+0x104>
    41d8:	00148493          	add	s1,s1,1
    41dc:	f95ff06f          	j	4170 <fatfs_add_file_entry+0x94>
    41e0:	000d8793          	mv	a5,s11
    41e4:	fb5ff06f          	j	4198 <fatfs_add_file_entry+0xbc>
    41e8:	000c4603          	lbu	a2,0(s8)
    41ec:	11961863          	bne	a2,s9,42fc <fatfs_add_file_entry+0x220>
    41f0:	00079863          	bnez	a5,4200 <fatfs_add_file_entry+0x124>
    41f4:	000b8a13          	mv	s4,s7
    41f8:	00048993          	mv	s3,s1
    41fc:	00100b13          	li	s6,1
    4200:	00178d93          	add	s11,a5,1
    4204:	fd27c2e3          	blt	a5,s2,41c8 <fatfs_add_file_entry+0xec>
    4208:	00ba8713          	add	a4,s5,11
    420c:	000a8793          	mv	a5,s5
    4210:	00000493          	li	s1,0
    4214:	0007c603          	lbu	a2,0(a5)
    4218:	00749693          	sll	a3,s1,0x7
    421c:	0014d493          	srl	s1,s1,0x1
    4220:	00c484b3          	add	s1,s1,a2
    4224:	00178793          	add	a5,a5,1
    4228:	00d484b3          	add	s1,s1,a3
    422c:	0ff4f493          	zext.b	s1,s1
    4230:	fef712e3          	bne	a4,a5,4214 <fatfs_add_file_entry+0x138>
    4234:	00098b13          	mv	s6,s3
    4238:	00000d13          	li	s10,0
    423c:	01000d93          	li	s11,16
    4240:	00812583          	lw	a1,8(sp)
    4244:	00000693          	li	a3,0
    4248:	000b0613          	mv	a2,s6
    424c:	00040513          	mv	a0,s0
    4250:	ffffe097          	auipc	ra,0xffffe
    4254:	738080e7          	jalr	1848(ra) # 2988 <fatfs_sector_reader>
    4258:	18050a63          	beqz	a0,43ec <fatfs_add_file_entry+0x310>
    425c:	04440c13          	add	s8,s0,68
    4260:	00000713          	li	a4,0
    4264:	00000b93          	li	s7,0
    4268:	000c0c93          	mv	s9,s8
    426c:	000d1663          	bnez	s10,4278 <fatfs_add_file_entry+0x19c>
    4270:	153b1863          	bne	s6,s3,43c0 <fatfs_add_file_entry+0x2e4>
    4274:	154b9663          	bne	s7,s4,43c0 <fatfs_add_file_entry+0x2e4>
    4278:	12091263          	bnez	s2,439c <fatfs_add_file_entry+0x2c0>
    427c:	01812703          	lw	a4,24(sp)
    4280:	01012603          	lw	a2,16(sp)
    4284:	01412583          	lw	a1,20(sp)
    4288:	02010693          	add	a3,sp,32
    428c:	000a8513          	mv	a0,s5
    4290:	ffffe097          	auipc	ra,0xffffe
    4294:	a54080e7          	jalr	-1452(ra) # 1ce4 <fatfs_sfn_create_entry>
    4298:	02000613          	li	a2,32
    429c:	02010593          	add	a1,sp,32
    42a0:	000c0513          	mv	a0,s8
    42a4:	ffffd097          	auipc	ra,0xffffd
    42a8:	ae8080e7          	jalr	-1304(ra) # d8c <memcpy>
    42ac:	03842783          	lw	a5,56(s0)
    42b0:	24442503          	lw	a0,580(s0)
    42b4:	00100613          	li	a2,1
    42b8:	000c8593          	mv	a1,s9
    42bc:	000780e7          	jalr	a5
    42c0:	07c12083          	lw	ra,124(sp)
    42c4:	07812403          	lw	s0,120(sp)
    42c8:	07412483          	lw	s1,116(sp)
    42cc:	07012903          	lw	s2,112(sp)
    42d0:	06c12983          	lw	s3,108(sp)
    42d4:	06812a03          	lw	s4,104(sp)
    42d8:	06412a83          	lw	s5,100(sp)
    42dc:	06012b03          	lw	s6,96(sp)
    42e0:	05c12b83          	lw	s7,92(sp)
    42e4:	05812c03          	lw	s8,88(sp)
    42e8:	05412c83          	lw	s9,84(sp)
    42ec:	05012d03          	lw	s10,80(sp)
    42f0:	04c12d83          	lw	s11,76(sp)
    42f4:	08010113          	add	sp,sp,128
    42f8:	00008067          	ret
    42fc:	ee060ae3          	beqz	a2,41f0 <fatfs_add_file_entry+0x114>
    4300:	00000b13          	li	s6,0
    4304:	ec5ff06f          	j	41c8 <fatfs_add_file_entry+0xec>
    4308:	00842583          	lw	a1,8(s0)
    430c:	02010613          	add	a2,sp,32
    4310:	00040513          	mv	a0,s0
    4314:	fffff097          	auipc	ra,0xfffff
    4318:	3e8080e7          	jalr	1000(ra) # 36fc <fatfs_find_blank_cluster>
    431c:	0c050863          	beqz	a0,43ec <fatfs_add_file_entry+0x310>
    4320:	02012c83          	lw	s9,32(sp)
    4324:	00812583          	lw	a1,8(sp)
    4328:	00040513          	mv	a0,s0
    432c:	000c8613          	mv	a2,s9
    4330:	fffff097          	auipc	ra,0xfffff
    4334:	674080e7          	jalr	1652(ra) # 39a4 <fatfs_fat_add_cluster_to_chain>
    4338:	0a050a63          	beqz	a0,43ec <fatfs_add_file_entry+0x310>
    433c:	20000613          	li	a2,512
    4340:	00000593          	li	a1,0
    4344:	04440513          	add	a0,s0,68
    4348:	ffffd097          	auipc	ra,0xffffd
    434c:	a28080e7          	jalr	-1496(ra) # d70 <memset>
    4350:	00000d13          	li	s10,0
    4354:	00044783          	lbu	a5,0(s0)
    4358:	00fd6a63          	bltu	s10,a5,436c <fatfs_add_file_entry+0x290>
    435c:	ea0b16e3          	bnez	s6,4208 <fatfs_add_file_entry+0x12c>
    4360:	00048993          	mv	s3,s1
    4364:	00000a13          	li	s4,0
    4368:	ea1ff06f          	j	4208 <fatfs_add_file_entry+0x12c>
    436c:	00000693          	li	a3,0
    4370:	000d0613          	mv	a2,s10
    4374:	000c8593          	mv	a1,s9
    4378:	00040513          	mv	a0,s0
    437c:	ffffd097          	auipc	ra,0xffffd
    4380:	4e4080e7          	jalr	1252(ra) # 1860 <fatfs_write_sector>
    4384:	06050463          	beqz	a0,43ec <fatfs_add_file_entry+0x310>
    4388:	001d0d13          	add	s10,s10,1
    438c:	0ffd7d13          	zext.b	s10,s10
    4390:	fc5ff06f          	j	4354 <fatfs_add_file_entry+0x278>
    4394:	001b0b13          	add	s6,s6,1
    4398:	ea9ff06f          	j	4240 <fatfs_add_file_entry+0x164>
    439c:	00c12503          	lw	a0,12(sp)
    43a0:	fff90913          	add	s2,s2,-1
    43a4:	00048693          	mv	a3,s1
    43a8:	00090613          	mv	a2,s2
    43ac:	000c0593          	mv	a1,s8
    43b0:	ffffe097          	auipc	ra,0xffffe
    43b4:	80c080e7          	jalr	-2036(ra) # 1bbc <fatfs_filename_to_lfn>
    43b8:	00100d13          	li	s10,1
    43bc:	00100713          	li	a4,1
    43c0:	001b8793          	add	a5,s7,1
    43c4:	0ff7fb93          	zext.b	s7,a5
    43c8:	020c0c13          	add	s8,s8,32
    43cc:	ebbb90e3          	bne	s7,s11,426c <fatfs_add_file_entry+0x190>
    43d0:	fc0702e3          	beqz	a4,4394 <fatfs_add_file_entry+0x2b8>
    43d4:	03842783          	lw	a5,56(s0)
    43d8:	24442503          	lw	a0,580(s0)
    43dc:	00100613          	li	a2,1
    43e0:	000c8593          	mv	a1,s9
    43e4:	000780e7          	jalr	a5
    43e8:	fa0516e3          	bnez	a0,4394 <fatfs_add_file_entry+0x2b8>
    43ec:	00000513          	li	a0,0
    43f0:	ed1ff06f          	j	42c0 <fatfs_add_file_entry+0x1e4>

000043f4 <fl_fopen>:
    43f4:	000067b7          	lui	a5,0x6
    43f8:	3287a783          	lw	a5,808(a5) # 6328 <_filelib_init>
    43fc:	fa010113          	add	sp,sp,-96
    4400:	04812c23          	sw	s0,88(sp)
    4404:	05512223          	sw	s5,68(sp)
    4408:	04112e23          	sw	ra,92(sp)
    440c:	04912a23          	sw	s1,84(sp)
    4410:	05212823          	sw	s2,80(sp)
    4414:	05312623          	sw	s3,76(sp)
    4418:	05412423          	sw	s4,72(sp)
    441c:	05612023          	sw	s6,64(sp)
    4420:	03712e23          	sw	s7,60(sp)
    4424:	03812c23          	sw	s8,56(sp)
    4428:	03912a23          	sw	s9,52(sp)
    442c:	00050a93          	mv	s5,a0
    4430:	00058413          	mv	s0,a1
    4434:	00079663          	bnez	a5,4440 <fl_fopen+0x4c>
    4438:	ffffd097          	auipc	ra,0xffffd
    443c:	4e4080e7          	jalr	1252(ra) # 191c <fl_init>
    4440:	000067b7          	lui	a5,0x6
    4444:	3247a783          	lw	a5,804(a5) # 6324 <_filelib_valid>
    4448:	3a078463          	beqz	a5,47f0 <fl_fopen+0x3fc>
    444c:	3a0a8263          	beqz	s5,47f0 <fl_fopen+0x3fc>
    4450:	16040063          	beqz	s0,45b0 <fl_fopen+0x1bc>
    4454:	00040513          	mv	a0,s0
    4458:	ffffd097          	auipc	ra,0xffffd
    445c:	958080e7          	jalr	-1704(ra) # db0 <strlen>
    4460:	00000493          	li	s1,0
    4464:	00000713          	li	a4,0
    4468:	05700693          	li	a3,87
    446c:	07200613          	li	a2,114
    4470:	07700813          	li	a6,119
    4474:	06100893          	li	a7,97
    4478:	06200313          	li	t1,98
    447c:	04100593          	li	a1,65
    4480:	04200e13          	li	t3,66
    4484:	05200e93          	li	t4,82
    4488:	02b00f13          	li	t5,43
    448c:	06a74063          	blt	a4,a0,44ec <fl_fopen+0xf8>
    4490:	00006937          	lui	s2,0x6
    4494:	38890793          	add	a5,s2,904 # 6388 <_fs>
    4498:	0387a783          	lw	a5,56(a5)
    449c:	38890b93          	add	s7,s2,904
    44a0:	00079463          	bnez	a5,44a8 <fl_fopen+0xb4>
    44a4:	0d94f493          	and	s1,s1,217
    44a8:	03cba783          	lw	a5,60(s7)
    44ac:	00078463          	beqz	a5,44b4 <fl_fopen+0xc0>
    44b0:	000780e7          	jalr	a5
    44b4:	0014f993          	and	s3,s1,1
    44b8:	0c099263          	bnez	s3,457c <fl_fopen+0x188>
    44bc:	0204f793          	and	a5,s1,32
    44c0:	0e078063          	beqz	a5,45a0 <fl_fopen+0x1ac>
    44c4:	038ba783          	lw	a5,56(s7)
    44c8:	12079063          	bnez	a5,45e8 <fl_fopen+0x1f4>
    44cc:	0064f793          	and	a5,s1,6
    44d0:	0c078863          	beqz	a5,45a0 <fl_fopen+0x1ac>
    44d4:	000a8513          	mv	a0,s5
    44d8:	fffff097          	auipc	ra,0xfffff
    44dc:	9a4080e7          	jalr	-1628(ra) # 2e7c <_open_file>
    44e0:	00050413          	mv	s0,a0
    44e4:	30051263          	bnez	a0,47e8 <fl_fopen+0x3f4>
    44e8:	0b80006f          	j	45a0 <fl_fopen+0x1ac>
    44ec:	00e407b3          	add	a5,s0,a4
    44f0:	0007c783          	lbu	a5,0(a5)
    44f4:	04d78463          	beq	a5,a3,453c <fl_fopen+0x148>
    44f8:	02f6e463          	bltu	a3,a5,4520 <fl_fopen+0x12c>
    44fc:	04b78463          	beq	a5,a1,4544 <fl_fopen+0x150>
    4500:	00f5e863          	bltu	a1,a5,4510 <fl_fopen+0x11c>
    4504:	05e78463          	beq	a5,t5,454c <fl_fopen+0x158>
    4508:	00170713          	add	a4,a4,1
    450c:	f81ff06f          	j	448c <fl_fopen+0x98>
    4510:	03c78063          	beq	a5,t3,4530 <fl_fopen+0x13c>
    4514:	ffd79ae3          	bne	a5,t4,4508 <fl_fopen+0x114>
    4518:	0014e493          	or	s1,s1,1
    451c:	fedff06f          	j	4508 <fl_fopen+0x114>
    4520:	fec78ce3          	beq	a5,a2,4518 <fl_fopen+0x124>
    4524:	00f66a63          	bltu	a2,a5,4538 <fl_fopen+0x144>
    4528:	01178e63          	beq	a5,a7,4544 <fl_fopen+0x150>
    452c:	fc679ee3          	bne	a5,t1,4508 <fl_fopen+0x114>
    4530:	0084e493          	or	s1,s1,8
    4534:	fd5ff06f          	j	4508 <fl_fopen+0x114>
    4538:	fd0798e3          	bne	a5,a6,4508 <fl_fopen+0x114>
    453c:	0324e493          	or	s1,s1,50
    4540:	fc9ff06f          	j	4508 <fl_fopen+0x114>
    4544:	0264e493          	or	s1,s1,38
    4548:	fc1ff06f          	j	4508 <fl_fopen+0x114>
    454c:	0014f793          	and	a5,s1,1
    4550:	00078663          	beqz	a5,455c <fl_fopen+0x168>
    4554:	0024e493          	or	s1,s1,2
    4558:	fb1ff06f          	j	4508 <fl_fopen+0x114>
    455c:	0024f793          	and	a5,s1,2
    4560:	00078663          	beqz	a5,456c <fl_fopen+0x178>
    4564:	0314e493          	or	s1,s1,49
    4568:	fa1ff06f          	j	4508 <fl_fopen+0x114>
    456c:	0044f793          	and	a5,s1,4
    4570:	f8078ce3          	beqz	a5,4508 <fl_fopen+0x114>
    4574:	0274e493          	or	s1,s1,39
    4578:	f91ff06f          	j	4508 <fl_fopen+0x114>
    457c:	000a8513          	mv	a0,s5
    4580:	fffff097          	auipc	ra,0xfffff
    4584:	8fc080e7          	jalr	-1796(ra) # 2e7c <_open_file>
    4588:	00050413          	mv	s0,a0
    458c:	24051e63          	bnez	a0,47e8 <fl_fopen+0x3f4>
    4590:	0204f793          	and	a5,s1,32
    4594:	00078663          	beqz	a5,45a0 <fl_fopen+0x1ac>
    4598:	038ba783          	lw	a5,56(s7)
    459c:	0c079663          	bnez	a5,4668 <fl_fopen+0x274>
    45a0:	00000413          	li	s0,0
    45a4:	040ba783          	lw	a5,64(s7)
    45a8:	00078463          	beqz	a5,45b0 <fl_fopen+0x1bc>
    45ac:	000780e7          	jalr	a5
    45b0:	05c12083          	lw	ra,92(sp)
    45b4:	00040513          	mv	a0,s0
    45b8:	05812403          	lw	s0,88(sp)
    45bc:	05412483          	lw	s1,84(sp)
    45c0:	05012903          	lw	s2,80(sp)
    45c4:	04c12983          	lw	s3,76(sp)
    45c8:	04812a03          	lw	s4,72(sp)
    45cc:	04412a83          	lw	s5,68(sp)
    45d0:	04012b03          	lw	s6,64(sp)
    45d4:	03c12b83          	lw	s7,60(sp)
    45d8:	03812c03          	lw	s8,56(sp)
    45dc:	03412c83          	lw	s9,52(sp)
    45e0:	06010113          	add	sp,sp,96
    45e4:	00008067          	ret
    45e8:	ffffd097          	auipc	ra,0xffffd
    45ec:	13c080e7          	jalr	316(ra) # 1724 <_allocate_file>
    45f0:	00050413          	mv	s0,a0
    45f4:	ec050ce3          	beqz	a0,44cc <fl_fopen+0xd8>
    45f8:	01440c13          	add	s8,s0,20
    45fc:	10400613          	li	a2,260
    4600:	00000593          	li	a1,0
    4604:	000c0513          	mv	a0,s8
    4608:	ffffc097          	auipc	ra,0xffffc
    460c:	768080e7          	jalr	1896(ra) # d70 <memset>
    4610:	11840b13          	add	s6,s0,280
    4614:	10400613          	li	a2,260
    4618:	00000593          	li	a1,0
    461c:	000b0513          	mv	a0,s6
    4620:	ffffc097          	auipc	ra,0xffffc
    4624:	750080e7          	jalr	1872(ra) # d70 <memset>
    4628:	10400713          	li	a4,260
    462c:	000b0693          	mv	a3,s6
    4630:	10400613          	li	a2,260
    4634:	000c0593          	mv	a1,s8
    4638:	000a8513          	mv	a0,s5
    463c:	ffffe097          	auipc	ra,0xffffe
    4640:	bac080e7          	jalr	-1108(ra) # 21e8 <fatfs_split_path>
    4644:	fff00793          	li	a5,-1
    4648:	02f51a63          	bne	a0,a5,467c <fl_fopen+0x288>
    464c:	00040513          	mv	a0,s0
    4650:	ffffd097          	auipc	ra,0xffffd
    4654:	148080e7          	jalr	328(ra) # 1798 <_free_file>
    4658:	f40994e3          	bnez	s3,45a0 <fl_fopen+0x1ac>
    465c:	0204f793          	and	a5,s1,32
    4660:	f40780e3          	beqz	a5,45a0 <fl_fopen+0x1ac>
    4664:	e69ff06f          	j	44cc <fl_fopen+0xd8>
    4668:	ffffd097          	auipc	ra,0xffffd
    466c:	0bc080e7          	jalr	188(ra) # 1724 <_allocate_file>
    4670:	00050413          	mv	s0,a0
    4674:	f80512e3          	bnez	a0,45f8 <fl_fopen+0x204>
    4678:	f29ff06f          	j	45a0 <fl_fopen+0x1ac>
    467c:	00040513          	mv	a0,s0
    4680:	ffffe097          	auipc	ra,0xffffe
    4684:	dbc080e7          	jalr	-580(ra) # 243c <_check_file_open>
    4688:	00050a13          	mv	s4,a0
    468c:	fc0510e3          	bnez	a0,464c <fl_fopen+0x258>
    4690:	01444783          	lbu	a5,20(s0)
    4694:	0c079263          	bnez	a5,4758 <fl_fopen+0x364>
    4698:	008ba783          	lw	a5,8(s7)
    469c:	00f42023          	sw	a5,0(s0)
    46a0:	00042583          	lw	a1,0(s0)
    46a4:	01010693          	add	a3,sp,16
    46a8:	000b0613          	mv	a2,s6
    46ac:	38890513          	add	a0,s2,904
    46b0:	ffffe097          	auipc	ra,0xffffe
    46b4:	418080e7          	jalr	1048(ra) # 2ac8 <fatfs_get_file_entry>
    46b8:	00100793          	li	a5,1
    46bc:	f8f508e3          	beq	a0,a5,464c <fl_fopen+0x258>
    46c0:	00042223          	sw	zero,4(s0)
    46c4:	00100693          	li	a3,1
    46c8:	00440613          	add	a2,s0,4
    46cc:	00100593          	li	a1,1
    46d0:	38890513          	add	a0,s2,904
    46d4:	00000097          	auipc	ra,0x0
    46d8:	8ec080e7          	jalr	-1812(ra) # 3fc0 <fatfs_allocate_free_space>
    46dc:	f60508e3          	beqz	a0,464c <fl_fopen+0x258>
    46e0:	000b0593          	mv	a1,s6
    46e4:	00410513          	add	a0,sp,4
    46e8:	ffffd097          	auipc	ra,0xffffd
    46ec:	6a4080e7          	jalr	1700(ra) # 1d8c <fatfs_lfn_create_sfn>
    46f0:	21c40c13          	add	s8,s0,540
    46f4:	00b00613          	li	a2,11
    46f8:	00410593          	add	a1,sp,4
    46fc:	000c0513          	mv	a0,s8
    4700:	00002cb7          	lui	s9,0x2
    4704:	ffffc097          	auipc	ra,0xffffc
    4708:	688080e7          	jalr	1672(ra) # d8c <memcpy>
    470c:	70fc8c93          	add	s9,s9,1807 # 270f <fatfs_init+0x18f>
    4710:	00042583          	lw	a1,0(s0)
    4714:	000c0613          	mv	a2,s8
    4718:	38890513          	add	a0,s2,904
    471c:	fffff097          	auipc	ra,0xfffff
    4720:	8d8080e7          	jalr	-1832(ra) # 2ff4 <fatfs_sfn_exists>
    4724:	04050663          	beqz	a0,4770 <fl_fopen+0x37c>
    4728:	001a0a13          	add	s4,s4,1
    472c:	059a0263          	beq	s4,s9,4770 <fl_fopen+0x37c>
    4730:	000b0593          	mv	a1,s6
    4734:	00410513          	add	a0,sp,4
    4738:	ffffd097          	auipc	ra,0xffffd
    473c:	654080e7          	jalr	1620(ra) # 1d8c <fatfs_lfn_create_sfn>
    4740:	000a0613          	mv	a2,s4
    4744:	00410593          	add	a1,sp,4
    4748:	000c0513          	mv	a0,s8
    474c:	ffffd097          	auipc	ra,0xffffd
    4750:	7bc080e7          	jalr	1980(ra) # 1f08 <fatfs_lfn_generate_tail>
    4754:	fbdff06f          	j	4710 <fl_fopen+0x31c>
    4758:	00040593          	mv	a1,s0
    475c:	000c0513          	mv	a0,s8
    4760:	ffffe097          	auipc	ra,0xffffe
    4764:	568080e7          	jalr	1384(ra) # 2cc8 <_open_directory>
    4768:	f2051ce3          	bnez	a0,46a0 <fl_fopen+0x2ac>
    476c:	ee1ff06f          	j	464c <fl_fopen+0x258>
    4770:	00442703          	lw	a4,4(s0)
    4774:	000027b7          	lui	a5,0x2
    4778:	70f78793          	add	a5,a5,1807 # 270f <fatfs_init+0x18f>
    477c:	00070593          	mv	a1,a4
    4780:	02fa0663          	beq	s4,a5,47ac <fl_fopen+0x3b8>
    4784:	00042583          	lw	a1,0(s0)
    4788:	00000813          	li	a6,0
    478c:	00000793          	li	a5,0
    4790:	000c0693          	mv	a3,s8
    4794:	000b0613          	mv	a2,s6
    4798:	38890513          	add	a0,s2,904
    479c:	00000097          	auipc	ra,0x0
    47a0:	940080e7          	jalr	-1728(ra) # 40dc <fatfs_add_file_entry>
    47a4:	00051c63          	bnez	a0,47bc <fl_fopen+0x3c8>
    47a8:	00442583          	lw	a1,4(s0)
    47ac:	38890513          	add	a0,s2,904
    47b0:	fffff097          	auipc	ra,0xfffff
    47b4:	184080e7          	jalr	388(ra) # 3934 <fatfs_free_cluster_chain>
    47b8:	e95ff06f          	j	464c <fl_fopen+0x258>
    47bc:	fff00793          	li	a5,-1
    47c0:	00042623          	sw	zero,12(s0)
    47c4:	00042423          	sw	zero,8(s0)
    47c8:	42f42823          	sw	a5,1072(s0)
    47cc:	42042a23          	sw	zero,1076(s0)
    47d0:	00042823          	sw	zero,16(s0)
    47d4:	22f42423          	sw	a5,552(s0)
    47d8:	22f42623          	sw	a5,556(s0)
    47dc:	38890513          	add	a0,s2,904
    47e0:	ffffe097          	auipc	ra,0xffffe
    47e4:	03c080e7          	jalr	60(ra) # 281c <fatfs_fat_purge>
    47e8:	42940c23          	sb	s1,1080(s0)
    47ec:	db9ff06f          	j	45a4 <fl_fopen+0x1b0>
    47f0:	00000413          	li	s0,0
    47f4:	dbdff06f          	j	45b0 <fl_fopen+0x1bc>

000047f8 <Init_menu>:
    47f8:	000017b7          	lui	a5,0x1
    47fc:	fd010113          	add	sp,sp,-48
    4800:	00006737          	lui	a4,0x6
    4804:	07878793          	add	a5,a5,120 # 1078 <display_putchar>
    4808:	30f72823          	sw	a5,784(a4) # 6310 <f_putchar>
    480c:	02112623          	sw	ra,44(sp)
    4810:	02812423          	sw	s0,40(sp)
    4814:	02912223          	sw	s1,36(sp)
    4818:	03212023          	sw	s2,32(sp)
    481c:	01312e23          	sw	s3,28(sp)
    4820:	01412c23          	sw	s4,24(sp)
    4824:	01512a23          	sw	s5,20(sp)
    4828:	01612823          	sw	s6,16(sp)
    482c:	01712623          	sw	s7,12(sp)
    4830:	01812423          	sw	s8,8(sp)
    4834:	ffffc097          	auipc	ra,0xffffc
    4838:	76c080e7          	jalr	1900(ra) # fa0 <oled_init>
    483c:	ffffc097          	auipc	ra,0xffffc
    4840:	770080e7          	jalr	1904(ra) # fac <oled_fullscreen>
    4844:	ffffd097          	auipc	ra,0xffffd
    4848:	800080e7          	jalr	-2048(ra) # 1044 <display_framebuffer>
    484c:	00004637          	lui	a2,0x4
    4850:	00000593          	li	a1,0
    4854:	ffffc097          	auipc	ra,0xffffc
    4858:	51c080e7          	jalr	1308(ra) # d70 <memset>
    485c:	ffffd097          	auipc	ra,0xffffd
    4860:	964080e7          	jalr	-1692(ra) # 11c0 <display_refresh>
    4864:	00000593          	li	a1,0
    4868:	00000513          	li	a0,0
    486c:	ffffc097          	auipc	ra,0xffffc
    4870:	7e4080e7          	jalr	2020(ra) # 1050 <display_set_cursor>
    4874:	00000593          	li	a1,0
    4878:	0ff00513          	li	a0,255
    487c:	ffffc097          	auipc	ra,0xffffc
    4880:	7e8080e7          	jalr	2024(ra) # 1064 <display_set_front_back_color>
    4884:	00006537          	lui	a0,0x6
    4888:	05850513          	add	a0,a0,88 # 6058 <font+0x228>
    488c:	ffffd097          	auipc	ra,0xffffd
    4890:	aa0080e7          	jalr	-1376(ra) # 132c <printf>
    4894:	ffffd097          	auipc	ra,0xffffd
    4898:	92c080e7          	jalr	-1748(ra) # 11c0 <display_refresh>
    489c:	000067b7          	lui	a5,0x6
    48a0:	32c7a703          	lw	a4,812(a5) # 632c <Init_stat>
    48a4:	04071063          	bnez	a4,48e4 <Init_menu+0xec>
    48a8:	00100713          	li	a4,1
    48ac:	32e7a623          	sw	a4,812(a5)
    48b0:	000014b7          	lui	s1,0x1
    48b4:	ffffc097          	auipc	ra,0xffffc
    48b8:	1e4080e7          	jalr	484(ra) # a98 <sdcard_init>
    48bc:	00001437          	lui	s0,0x1
    48c0:	ffffd097          	auipc	ra,0xffffd
    48c4:	05c080e7          	jalr	92(ra) # 191c <fl_init>
    48c8:	ffffd097          	auipc	ra,0xffffd
    48cc:	8f8080e7          	jalr	-1800(ra) # 11c0 <display_refresh>
    48d0:	cb448593          	add	a1,s1,-844 # cb4 <sdcard_writesector>
    48d4:	c6040513          	add	a0,s0,-928 # c60 <sdcard_readsector>
    48d8:	ffffe097          	auipc	ra,0xffffe
    48dc:	ed8080e7          	jalr	-296(ra) # 27b0 <fl_attach_media>
    48e0:	fe0518e3          	bnez	a0,48d0 <Init_menu+0xd8>
    48e4:	00006537          	lui	a0,0x6
    48e8:	06450513          	add	a0,a0,100 # 6064 <font+0x234>
    48ec:	ffffd097          	auipc	ra,0xffffd
    48f0:	a40080e7          	jalr	-1472(ra) # 132c <printf>
    48f4:	ffffd097          	auipc	ra,0xffffd
    48f8:	8cc080e7          	jalr	-1844(ra) # 11c0 <display_refresh>
    48fc:	00000097          	auipc	ra,0x0
    4900:	2b4080e7          	jalr	692(ra) # 4bb0 <clear_audio>
    4904:	000067b7          	lui	a5,0x6
    4908:	e187a483          	lw	s1,-488(a5) # 5e18 <BUTTONS>
    490c:	00000413          	li	s0,0
    4910:	00000913          	li	s2,0
    4914:	00006a37          	lui	s4,0x6
    4918:	00006ab7          	lui	s5,0x6
    491c:	000069b7          	lui	s3,0x6
    4920:	00100b13          	li	s6,1
    4924:	00006bb7          	lui	s7,0x6
    4928:	00006c37          	lui	s8,0x6
    492c:	00000593          	li	a1,0
    4930:	00000513          	li	a0,0
    4934:	ffffc097          	auipc	ra,0xffffc
    4938:	71c080e7          	jalr	1820(ra) # 1050 <display_set_cursor>
    493c:	0ff97593          	zext.b	a1,s2
    4940:	07f58513          	add	a0,a1,127
    4944:	0ff57513          	zext.b	a0,a0
    4948:	ffffc097          	auipc	ra,0xffffc
    494c:	71c080e7          	jalr	1820(ra) # 1064 <display_set_front_back_color>
    4950:	06ca0513          	add	a0,s4,108 # 606c <font+0x23c>
    4954:	00790913          	add	s2,s2,7
    4958:	ffffd097          	auipc	ra,0xffffd
    495c:	9d4080e7          	jalr	-1580(ra) # 132c <printf>
    4960:	08041c63          	bnez	s0,49f8 <Init_menu+0x200>
    4964:	00000513          	li	a0,0
    4968:	0ff00593          	li	a1,255
    496c:	ffffc097          	auipc	ra,0xffffc
    4970:	6f8080e7          	jalr	1784(ra) # 1064 <display_set_front_back_color>
    4974:	088a8613          	add	a2,s5,136 # 6088 <font+0x258>
    4978:	00000593          	li	a1,0
    497c:	09098513          	add	a0,s3,144 # 6090 <font+0x260>
    4980:	ffffd097          	auipc	ra,0xffffd
    4984:	9ac080e7          	jalr	-1620(ra) # 132c <printf>
    4988:	07641e63          	bne	s0,s6,4a04 <Init_menu+0x20c>
    498c:	00000513          	li	a0,0
    4990:	0ff00593          	li	a1,255
    4994:	ffffc097          	auipc	ra,0xffffc
    4998:	6d0080e7          	jalr	1744(ra) # 1064 <display_set_front_back_color>
    499c:	098b8613          	add	a2,s7,152 # 6098 <font+0x268>
    49a0:	00100593          	li	a1,1
    49a4:	09098513          	add	a0,s3,144
    49a8:	ffffd097          	auipc	ra,0xffffd
    49ac:	984080e7          	jalr	-1660(ra) # 132c <printf>
    49b0:	0a0c0513          	add	a0,s8,160 # 60a0 <font+0x270>
    49b4:	ffffd097          	auipc	ra,0xffffd
    49b8:	978080e7          	jalr	-1672(ra) # 132c <printf>
    49bc:	ffffd097          	auipc	ra,0xffffd
    49c0:	804080e7          	jalr	-2044(ra) # 11c0 <display_refresh>
    49c4:	0004a783          	lw	a5,0(s1)
    49c8:	0107f793          	and	a5,a5,16
    49cc:	04078263          	beqz	a5,4a10 <Init_menu+0x218>
    49d0:	00140413          	add	s0,s0,1
    49d4:	0004a783          	lw	a5,0(s1)
    49d8:	0107f793          	and	a5,a5,16
    49dc:	fe079ce3          	bnez	a5,49d4 <Init_menu+0x1dc>
    49e0:	0004a783          	lw	a5,0(s1)
    49e4:	0087f793          	and	a5,a5,8
    49e8:	02079a63          	bnez	a5,4a1c <Init_menu+0x224>
    49ec:	ffe40413          	add	s0,s0,-2
    49f0:	00803433          	snez	s0,s0
    49f4:	0400006f          	j	4a34 <Init_menu+0x23c>
    49f8:	0ff00513          	li	a0,255
    49fc:	00000593          	li	a1,0
    4a00:	f6dff06f          	j	496c <Init_menu+0x174>
    4a04:	0ff00513          	li	a0,255
    4a08:	00000593          	li	a1,0
    4a0c:	f89ff06f          	j	4994 <Init_menu+0x19c>
    4a10:	0004a783          	lw	a5,0(s1)
    4a14:	0087f793          	and	a5,a5,8
    4a18:	00078e63          	beqz	a5,4a34 <Init_menu+0x23c>
    4a1c:	fff40413          	add	s0,s0,-1
    4a20:	0004a783          	lw	a5,0(s1)
    4a24:	0087f793          	and	a5,a5,8
    4a28:	fe079ce3          	bnez	a5,4a20 <Init_menu+0x228>
    4a2c:	fff00793          	li	a5,-1
    4a30:	06f40863          	beq	s0,a5,4aa0 <Init_menu+0x2a8>
    4a34:	0004a783          	lw	a5,0(s1)
    4a38:	0407f793          	and	a5,a5,64
    4a3c:	ee0788e3          	beqz	a5,492c <Init_menu+0x134>
    4a40:	ffffc097          	auipc	ra,0xffffc
    4a44:	604080e7          	jalr	1540(ra) # 1044 <display_framebuffer>
    4a48:	00004637          	lui	a2,0x4
    4a4c:	00000593          	li	a1,0
    4a50:	ffffc097          	auipc	ra,0xffffc
    4a54:	320080e7          	jalr	800(ra) # d70 <memset>
    4a58:	ffffc097          	auipc	ra,0xffffc
    4a5c:	768080e7          	jalr	1896(ra) # 11c0 <display_refresh>
    4a60:	0004a783          	lw	a5,0(s1)
    4a64:	0407f793          	and	a5,a5,64
    4a68:	fe079ce3          	bnez	a5,4a60 <Init_menu+0x268>
    4a6c:	02c12083          	lw	ra,44(sp)
    4a70:	00040513          	mv	a0,s0
    4a74:	02812403          	lw	s0,40(sp)
    4a78:	02412483          	lw	s1,36(sp)
    4a7c:	02012903          	lw	s2,32(sp)
    4a80:	01c12983          	lw	s3,28(sp)
    4a84:	01812a03          	lw	s4,24(sp)
    4a88:	01412a83          	lw	s5,20(sp)
    4a8c:	01012b03          	lw	s6,16(sp)
    4a90:	00c12b83          	lw	s7,12(sp)
    4a94:	00812c03          	lw	s8,8(sp)
    4a98:	03010113          	add	sp,sp,48
    4a9c:	00008067          	ret
    4aa0:	00100413          	li	s0,1
    4aa4:	f91ff06f          	j	4a34 <Init_menu+0x23c>

00004aa8 <list_Albums.constprop.0>:
    4aa8:	ec010113          	add	sp,sp,-320
    4aac:	00006537          	lui	a0,0x6
    4ab0:	00410593          	add	a1,sp,4
    4ab4:	0b850513          	add	a0,a0,184 # 60b8 <font+0x288>
    4ab8:	12112e23          	sw	ra,316(sp)
    4abc:	12812c23          	sw	s0,312(sp)
    4ac0:	12912a23          	sw	s1,308(sp)
    4ac4:	13212823          	sw	s2,304(sp)
    4ac8:	13312623          	sw	s3,300(sp)
    4acc:	13412423          	sw	s4,296(sp)
    4ad0:	ffffe097          	auipc	ra,0xffffe
    4ad4:	2e0080e7          	jalr	736(ra) # 2db0 <fl_opendir>
    4ad8:	02050a63          	beqz	a0,4b0c <list_Albums.constprop.0+0x64>
    4adc:	00007437          	lui	s0,0x7
    4ae0:	000074b7          	lui	s1,0x7
    4ae4:	00006a37          	lui	s4,0x6
    4ae8:	00700913          	li	s2,7
    4aec:	02e00993          	li	s3,46
    4af0:	09840413          	add	s0,s0,152 # 7098 <Albums>
    4af4:	07848493          	add	s1,s1,120 # 7078 <sizes>
    4af8:	334a2783          	lw	a5,820(s4) # 6334 <nAlbums>
    4afc:	02f95863          	bge	s2,a5,4b2c <list_Albums.constprop.0+0x84>
    4b00:	00410513          	add	a0,sp,4
    4b04:	ffffd097          	auipc	ra,0xffffd
    4b08:	e88080e7          	jalr	-376(ra) # 198c <fl_closedir>
    4b0c:	13c12083          	lw	ra,316(sp)
    4b10:	13812403          	lw	s0,312(sp)
    4b14:	13412483          	lw	s1,308(sp)
    4b18:	13012903          	lw	s2,304(sp)
    4b1c:	12c12983          	lw	s3,300(sp)
    4b20:	12812a03          	lw	s4,296(sp)
    4b24:	14010113          	add	sp,sp,320
    4b28:	00008067          	ret
    4b2c:	01010593          	add	a1,sp,16
    4b30:	00410513          	add	a0,sp,4
    4b34:	fffff097          	auipc	ra,0xfffff
    4b38:	930080e7          	jalr	-1744(ra) # 3464 <fl_readdir>
    4b3c:	fc0512e3          	bnez	a0,4b00 <list_Albums.constprop.0+0x58>
    4b40:	01014783          	lbu	a5,16(sp)
    4b44:	fb378ae3          	beq	a5,s3,4af8 <list_Albums.constprop.0+0x50>
    4b48:	11414783          	lbu	a5,276(sp)
    4b4c:	fa0786e3          	beqz	a5,4af8 <list_Albums.constprop.0+0x50>
    4b50:	334a2783          	lw	a5,820(s4)
    4b54:	01600613          	li	a2,22
    4b58:	01010593          	add	a1,sp,16
    4b5c:	00179513          	sll	a0,a5,0x1
    4b60:	00f50533          	add	a0,a0,a5
    4b64:	00351513          	sll	a0,a0,0x3
    4b68:	40f50533          	sub	a0,a0,a5
    4b6c:	00a40533          	add	a0,s0,a0
    4b70:	ffffc097          	auipc	ra,0xffffc
    4b74:	2a0080e7          	jalr	672(ra) # e10 <strncpy>
    4b78:	334a2703          	lw	a4,820(s4)
    4b7c:	11c12683          	lw	a3,284(sp)
    4b80:	00171793          	sll	a5,a4,0x1
    4b84:	00e787b3          	add	a5,a5,a4
    4b88:	00379793          	sll	a5,a5,0x3
    4b8c:	40e787b3          	sub	a5,a5,a4
    4b90:	00f407b3          	add	a5,s0,a5
    4b94:	00078b23          	sb	zero,22(a5)
    4b98:	00271793          	sll	a5,a4,0x2
    4b9c:	00f487b3          	add	a5,s1,a5
    4ba0:	00170713          	add	a4,a4,1
    4ba4:	00d7a023          	sw	a3,0(a5)
    4ba8:	32ea2a23          	sw	a4,820(s4)
    4bac:	f4dff06f          	j	4af8 <list_Albums.constprop.0+0x50>

00004bb0 <clear_audio>:
    4bb0:	ff010113          	add	sp,sp,-16
    4bb4:	000067b7          	lui	a5,0x6
    4bb8:	00812423          	sw	s0,8(sp)
    4bbc:	e0c7a403          	lw	s0,-500(a5) # 5e0c <AUDIO>
    4bc0:	00112623          	sw	ra,12(sp)
    4bc4:	00912223          	sw	s1,4(sp)
    4bc8:	00042703          	lw	a4,0(s0)
    4bcc:	00042783          	lw	a5,0(s0)
    4bd0:	fef70ee3          	beq	a4,a5,4bcc <clear_audio+0x1c>
    4bd4:	00042483          	lw	s1,0(s0)
    4bd8:	20000613          	li	a2,512
    4bdc:	00000593          	li	a1,0
    4be0:	00048513          	mv	a0,s1
    4be4:	ffffc097          	auipc	ra,0xffffc
    4be8:	18c080e7          	jalr	396(ra) # d70 <memset>
    4bec:	00042783          	lw	a5,0(s0)
    4bf0:	fef48ee3          	beq	s1,a5,4bec <clear_audio+0x3c>
    4bf4:	00042483          	lw	s1,0(s0)
    4bf8:	20000613          	li	a2,512
    4bfc:	00000593          	li	a1,0
    4c00:	00048513          	mv	a0,s1
    4c04:	ffffc097          	auipc	ra,0xffffc
    4c08:	16c080e7          	jalr	364(ra) # d70 <memset>
    4c0c:	00042783          	lw	a5,0(s0)
    4c10:	fef48ee3          	beq	s1,a5,4c0c <clear_audio+0x5c>
    4c14:	00c12083          	lw	ra,12(sp)
    4c18:	00812403          	lw	s0,8(sp)
    4c1c:	00412483          	lw	s1,4(sp)
    4c20:	01010113          	add	sp,sp,16
    4c24:	00008067          	ret

00004c28 <audio_menu>:
    4c28:	fc010113          	add	sp,sp,-64
    4c2c:	03312623          	sw	s3,44(sp)
    4c30:	03412423          	sw	s4,40(sp)
    4c34:	03512223          	sw	s5,36(sp)
    4c38:	02112e23          	sw	ra,60(sp)
    4c3c:	02812c23          	sw	s0,56(sp)
    4c40:	02912a23          	sw	s1,52(sp)
    4c44:	03212823          	sw	s2,48(sp)
    4c48:	03612023          	sw	s6,32(sp)
    4c4c:	01712e23          	sw	s7,28(sp)
    4c50:	01812c23          	sw	s8,24(sp)
    4c54:	01912a23          	sw	s9,20(sp)
    4c58:	01a12823          	sw	s10,16(sp)
    4c5c:	01b12623          	sw	s11,12(sp)
    4c60:	0005a023          	sw	zero,0(a1)
    4c64:	000067b7          	lui	a5,0x6
    4c68:	3307a703          	lw	a4,816(a5) # 6330 <init>
    4c6c:	00050993          	mv	s3,a0
    4c70:	00058a13          	mv	s4,a1
    4c74:	00006ab7          	lui	s5,0x6
    4c78:	08071a63          	bnez	a4,4d0c <audio_menu+0xe4>
    4c7c:	00100713          	li	a4,1
    4c80:	00000593          	li	a1,0
    4c84:	00000513          	li	a0,0
    4c88:	32e7a823          	sw	a4,816(a5)
    4c8c:	ffffc097          	auipc	ra,0xffffc
    4c90:	3c4080e7          	jalr	964(ra) # 1050 <display_set_cursor>
    4c94:	00000593          	li	a1,0
    4c98:	0ff00513          	li	a0,255
    4c9c:	ffffc097          	auipc	ra,0xffffc
    4ca0:	3c8080e7          	jalr	968(ra) # 1064 <display_set_front_back_color>
    4ca4:	00006537          	lui	a0,0x6
    4ca8:	0c050513          	add	a0,a0,192 # 60c0 <font+0x290>
    4cac:	ffffc097          	auipc	ra,0xffffc
    4cb0:	680080e7          	jalr	1664(ra) # 132c <printf>
    4cb4:	ffffc097          	auipc	ra,0xffffc
    4cb8:	50c080e7          	jalr	1292(ra) # 11c0 <display_refresh>
    4cbc:	320aaa23          	sw	zero,820(s5) # 6334 <nAlbums>
    4cc0:	00000097          	auipc	ra,0x0
    4cc4:	de8080e7          	jalr	-536(ra) # 4aa8 <list_Albums.constprop.0>
    4cc8:	334aa783          	lw	a5,820(s5)
    4ccc:	04079063          	bnez	a5,4d0c <audio_menu+0xe4>
    4cd0:	00000593          	li	a1,0
    4cd4:	00000513          	li	a0,0
    4cd8:	ffffc097          	auipc	ra,0xffffc
    4cdc:	378080e7          	jalr	888(ra) # 1050 <display_set_cursor>
    4ce0:	00000593          	li	a1,0
    4ce4:	0ff00513          	li	a0,255
    4ce8:	ffffc097          	auipc	ra,0xffffc
    4cec:	37c080e7          	jalr	892(ra) # 1064 <display_set_front_back_color>
    4cf0:	00006537          	lui	a0,0x6
    4cf4:	0d850513          	add	a0,a0,216 # 60d8 <font+0x2a8>
    4cf8:	ffffc097          	auipc	ra,0xffffc
    4cfc:	634080e7          	jalr	1588(ra) # 132c <printf>
    4d00:	ffffc097          	auipc	ra,0xffffc
    4d04:	4c0080e7          	jalr	1216(ra) # 11c0 <display_refresh>
    4d08:	0000006f          	j	4d08 <audio_menu+0xe0>
    4d0c:	000067b7          	lui	a5,0x6
    4d10:	e187a483          	lw	s1,-488(a5) # 5e18 <BUTTONS>
    4d14:	00007c37          	lui	s8,0x7
    4d18:	00000b93          	li	s7,0
    4d1c:	00000413          	li	s0,0
    4d20:	00006cb7          	lui	s9,0x6
    4d24:	098c0b13          	add	s6,s8,152 # 7098 <Albums>
    4d28:	00006d37          	lui	s10,0x6
    4d2c:	00000593          	li	a1,0
    4d30:	00000513          	li	a0,0
    4d34:	ffffc097          	auipc	ra,0xffffc
    4d38:	31c080e7          	jalr	796(ra) # 1050 <display_set_cursor>
    4d3c:	0ffbf593          	zext.b	a1,s7
    4d40:	07f58513          	add	a0,a1,127
    4d44:	0ff57513          	zext.b	a0,a0
    4d48:	ffffc097          	auipc	ra,0xffffc
    4d4c:	31c080e7          	jalr	796(ra) # 1064 <display_set_front_back_color>
    4d50:	0f4c8513          	add	a0,s9,244 # 60f4 <font+0x2c4>
    4d54:	001b8b93          	add	s7,s7,1
    4d58:	ffffc097          	auipc	ra,0xffffc
    4d5c:	5d4080e7          	jalr	1492(ra) # 132c <printf>
    4d60:	098c0d93          	add	s11,s8,152
    4d64:	00000913          	li	s2,0
    4d68:	334aa783          	lw	a5,820(s5)
    4d6c:	0af94663          	blt	s2,a5,4e18 <audio_menu+0x1f0>
    4d70:	ffffc097          	auipc	ra,0xffffc
    4d74:	450080e7          	jalr	1104(ra) # 11c0 <display_refresh>
    4d78:	0004a783          	lw	a5,0(s1)
    4d7c:	0107f793          	and	a5,a5,16
    4d80:	00078a63          	beqz	a5,4d94 <audio_menu+0x16c>
    4d84:	00140413          	add	s0,s0,1
    4d88:	0004a783          	lw	a5,0(s1)
    4d8c:	0107f793          	and	a5,a5,16
    4d90:	fe079ce3          	bnez	a5,4d88 <audio_menu+0x160>
    4d94:	0004a783          	lw	a5,0(s1)
    4d98:	0087f793          	and	a5,a5,8
    4d9c:	00078a63          	beqz	a5,4db0 <audio_menu+0x188>
    4da0:	fff40413          	add	s0,s0,-1
    4da4:	0004a783          	lw	a5,0(s1)
    4da8:	0087f793          	and	a5,a5,8
    4dac:	fe079ce3          	bnez	a5,4da4 <audio_menu+0x17c>
    4db0:	334aa783          	lw	a5,820(s5)
    4db4:	0a045263          	bgez	s0,4e58 <audio_menu+0x230>
    4db8:	fff78413          	add	s0,a5,-1
    4dbc:	0004a783          	lw	a5,0(s1)
    4dc0:	0207f793          	and	a5,a5,32
    4dc4:	0a078063          	beqz	a5,4e64 <audio_menu+0x23c>
    4dc8:	00100793          	li	a5,1
    4dcc:	00fa2023          	sw	a5,0(s4)
    4dd0:	0004a783          	lw	a5,0(s1)
    4dd4:	0207f793          	and	a5,a5,32
    4dd8:	fe079ce3          	bnez	a5,4dd0 <audio_menu+0x1a8>
    4ddc:	03c12083          	lw	ra,60(sp)
    4de0:	03812403          	lw	s0,56(sp)
    4de4:	03412483          	lw	s1,52(sp)
    4de8:	03012903          	lw	s2,48(sp)
    4dec:	02c12983          	lw	s3,44(sp)
    4df0:	02812a03          	lw	s4,40(sp)
    4df4:	02412a83          	lw	s5,36(sp)
    4df8:	02012b03          	lw	s6,32(sp)
    4dfc:	01c12b83          	lw	s7,28(sp)
    4e00:	01812c03          	lw	s8,24(sp)
    4e04:	01412c83          	lw	s9,20(sp)
    4e08:	01012d03          	lw	s10,16(sp)
    4e0c:	00c12d83          	lw	s11,12(sp)
    4e10:	04010113          	add	sp,sp,64
    4e14:	00008067          	ret
    4e18:	03240a63          	beq	s0,s2,4e4c <audio_menu+0x224>
    4e1c:	0ff00513          	li	a0,255
    4e20:	00000593          	li	a1,0
    4e24:	ffffc097          	auipc	ra,0xffffc
    4e28:	240080e7          	jalr	576(ra) # 1064 <display_set_front_back_color>
    4e2c:	000d8613          	mv	a2,s11
    4e30:	00090593          	mv	a1,s2
    4e34:	090d0513          	add	a0,s10,144 # 6090 <font+0x260>
    4e38:	ffffc097          	auipc	ra,0xffffc
    4e3c:	4f4080e7          	jalr	1268(ra) # 132c <printf>
    4e40:	00190913          	add	s2,s2,1
    4e44:	017d8d93          	add	s11,s11,23
    4e48:	f21ff06f          	j	4d68 <audio_menu+0x140>
    4e4c:	00000513          	li	a0,0
    4e50:	0ff00593          	li	a1,255
    4e54:	fd1ff06f          	j	4e24 <audio_menu+0x1fc>
    4e58:	f6f442e3          	blt	s0,a5,4dbc <audio_menu+0x194>
    4e5c:	00000413          	li	s0,0
    4e60:	f5dff06f          	j	4dbc <audio_menu+0x194>
    4e64:	0004a783          	lw	a5,0(s1)
    4e68:	0407f793          	and	a5,a5,64
    4e6c:	ec0780e3          	beqz	a5,4d2c <audio_menu+0x104>
    4e70:	00141593          	sll	a1,s0,0x1
    4e74:	008585b3          	add	a1,a1,s0
    4e78:	00359593          	sll	a1,a1,0x3
    4e7c:	408585b3          	sub	a1,a1,s0
    4e80:	01600613          	li	a2,22
    4e84:	00bb05b3          	add	a1,s6,a1
    4e88:	00098513          	mv	a0,s3
    4e8c:	ffffc097          	auipc	ra,0xffffc
    4e90:	f84080e7          	jalr	-124(ra) # e10 <strncpy>
    4e94:	00098b23          	sb	zero,22(s3)
    4e98:	ffffc097          	auipc	ra,0xffffc
    4e9c:	1ac080e7          	jalr	428(ra) # 1044 <display_framebuffer>
    4ea0:	00004637          	lui	a2,0x4
    4ea4:	00000593          	li	a1,0
    4ea8:	ffffc097          	auipc	ra,0xffffc
    4eac:	ec8080e7          	jalr	-312(ra) # d70 <memset>
    4eb0:	ffffc097          	auipc	ra,0xffffc
    4eb4:	310080e7          	jalr	784(ra) # 11c0 <display_refresh>
    4eb8:	0004a783          	lw	a5,0(s1)
    4ebc:	0407f793          	and	a5,a5,64
    4ec0:	fe079ce3          	bnez	a5,4eb8 <audio_menu+0x290>
    4ec4:	f19ff06f          	j	4ddc <audio_menu+0x1b4>

00004ec8 <music_play>:
    4ec8:	81010113          	add	sp,sp,-2032
    4ecc:	7e112623          	sw	ra,2028(sp)
    4ed0:	7e812423          	sw	s0,2024(sp)
    4ed4:	7e912223          	sw	s1,2020(sp)
    4ed8:	7f212023          	sw	s2,2016(sp)
    4edc:	7d312e23          	sw	s3,2012(sp)
    4ee0:	7d412c23          	sw	s4,2008(sp)
    4ee4:	7d512a23          	sw	s5,2004(sp)
    4ee8:	7d612823          	sw	s6,2000(sp)
    4eec:	7d712623          	sw	s7,1996(sp)
    4ef0:	7d812423          	sw	s8,1992(sp)
    4ef4:	7d912223          	sw	s9,1988(sp)
    4ef8:	7da12023          	sw	s10,1984(sp)
    4efc:	7bb12e23          	sw	s11,1980(sp)
    4f00:	f2010113          	add	sp,sp,-224
    4f04:	00050913          	mv	s2,a0
    4f08:	00058413          	mv	s0,a1
    4f0c:	ffffc097          	auipc	ra,0xffffc
    4f10:	138080e7          	jalr	312(ra) # 1044 <display_framebuffer>
    4f14:	00004637          	lui	a2,0x4
    4f18:	00000593          	li	a1,0
    4f1c:	ffffc097          	auipc	ra,0xffffc
    4f20:	e54080e7          	jalr	-428(ra) # d70 <memset>
    4f24:	00000593          	li	a1,0
    4f28:	00000513          	li	a0,0
    4f2c:	ffffc097          	auipc	ra,0xffffc
    4f30:	124080e7          	jalr	292(ra) # 1050 <display_set_cursor>
    4f34:	00000593          	li	a1,0
    4f38:	07f00513          	li	a0,127
    4f3c:	ffffc097          	auipc	ra,0xffffc
    4f40:	128080e7          	jalr	296(ra) # 1064 <display_set_front_back_color>
    4f44:	00006537          	lui	a0,0x6
    4f48:	11450513          	add	a0,a0,276 # 6114 <font+0x2e4>
    4f4c:	ffffc097          	auipc	ra,0xffffc
    4f50:	3e0080e7          	jalr	992(ra) # 132c <printf>
    4f54:	fffff4b7          	lui	s1,0xfffff
    4f58:	000017b7          	lui	a5,0x1
    4f5c:	78048493          	add	s1,s1,1920 # fffff780 <__stacktop+0xfffef780>
    4f60:	88078793          	add	a5,a5,-1920 # 880 <sdcard_start_sector+0x28>
    4f64:	009787b3          	add	a5,a5,s1
    4f68:	01010713          	add	a4,sp,16
    4f6c:	00e784b3          	add	s1,a5,a4
    4f70:	00040593          	mv	a1,s0
    4f74:	00048513          	mv	a0,s1
    4f78:	ffffc097          	auipc	ra,0xffffc
    4f7c:	ebc080e7          	jalr	-324(ra) # e34 <strcpy>
    4f80:	000065b7          	lui	a1,0x6
    4f84:	13458593          	add	a1,a1,308 # 6134 <font+0x304>
    4f88:	00048513          	mv	a0,s1
    4f8c:	00191413          	sll	s0,s2,0x1
    4f90:	ffffc097          	auipc	ra,0xffffc
    4f94:	ec4080e7          	jalr	-316(ra) # e54 <strcat>
    4f98:	01240433          	add	s0,s0,s2
    4f9c:	00341413          	sll	s0,s0,0x3
    4fa0:	000077b7          	lui	a5,0x7
    4fa4:	15078793          	add	a5,a5,336 # 7150 <Songs>
    4fa8:	41240433          	sub	s0,s0,s2
    4fac:	00f40433          	add	s0,s0,a5
    4fb0:	00040593          	mv	a1,s0
    4fb4:	00048513          	mv	a0,s1
    4fb8:	ffffc097          	auipc	ra,0xffffc
    4fbc:	e9c080e7          	jalr	-356(ra) # e54 <strcat>
    4fc0:	000065b7          	lui	a1,0x6
    4fc4:	13858593          	add	a1,a1,312 # 6138 <font+0x308>
    4fc8:	00048513          	mv	a0,s1
    4fcc:	fffff097          	auipc	ra,0xfffff
    4fd0:	428080e7          	jalr	1064(ra) # 43f4 <fl_fopen>
    4fd4:	04051e63          	bnez	a0,5030 <music_play+0x168>
    4fd8:	00006537          	lui	a0,0x6
    4fdc:	13c50513          	add	a0,a0,316 # 613c <font+0x30c>
    4fe0:	ffffc097          	auipc	ra,0xffffc
    4fe4:	34c080e7          	jalr	844(ra) # 132c <printf>
    4fe8:	ffffc097          	auipc	ra,0xffffc
    4fec:	1d8080e7          	jalr	472(ra) # 11c0 <display_refresh>
    4ff0:	0e010113          	add	sp,sp,224
    4ff4:	7ec12083          	lw	ra,2028(sp)
    4ff8:	7e812403          	lw	s0,2024(sp)
    4ffc:	7e412483          	lw	s1,2020(sp)
    5000:	7e012903          	lw	s2,2016(sp)
    5004:	7dc12983          	lw	s3,2012(sp)
    5008:	7d812a03          	lw	s4,2008(sp)
    500c:	7d412a83          	lw	s5,2004(sp)
    5010:	7d012b03          	lw	s6,2000(sp)
    5014:	7cc12b83          	lw	s7,1996(sp)
    5018:	7c812c03          	lw	s8,1992(sp)
    501c:	7c412c83          	lw	s9,1988(sp)
    5020:	7c012d03          	lw	s10,1984(sp)
    5024:	7bc12d83          	lw	s11,1980(sp)
    5028:	7f010113          	add	sp,sp,2032
    502c:	00008067          	ret
    5030:	0ff00593          	li	a1,255
    5034:	00050913          	mv	s2,a0
    5038:	00000513          	li	a0,0
    503c:	ffffc097          	auipc	ra,0xffffc
    5040:	028080e7          	jalr	40(ra) # 1064 <display_set_front_back_color>
    5044:	00006537          	lui	a0,0x6
    5048:	15050513          	add	a0,a0,336 # 6150 <font+0x320>
    504c:	ffffc097          	auipc	ra,0xffffc
    5050:	2e0080e7          	jalr	736(ra) # 132c <printf>
    5054:	ffffc097          	auipc	ra,0xffffc
    5058:	16c080e7          	jalr	364(ra) # 11c0 <display_refresh>
    505c:	00000593          	li	a1,0
    5060:	0ff00513          	li	a0,255
    5064:	ffffc097          	auipc	ra,0xffffc
    5068:	000080e7          	jalr	ra # 1064 <display_set_front_back_color>
    506c:	00006537          	lui	a0,0x6
    5070:	16450513          	add	a0,a0,356 # 6164 <font+0x334>
    5074:	ffffc097          	auipc	ra,0xffffc
    5078:	2b8080e7          	jalr	696(ra) # 132c <printf>
    507c:	00040513          	mv	a0,s0
    5080:	ffffc097          	auipc	ra,0xffffc
    5084:	2ac080e7          	jalr	684(ra) # 132c <printf>
    5088:	00006537          	lui	a0,0x6
    508c:	2e050513          	add	a0,a0,736 # 62e0 <font+0x4b0>
    5090:	ffffc097          	auipc	ra,0xffffc
    5094:	29c080e7          	jalr	668(ra) # 132c <printf>
    5098:	00006537          	lui	a0,0x6
    509c:	17050513          	add	a0,a0,368 # 6170 <font+0x340>
    50a0:	ffffc097          	auipc	ra,0xffffc
    50a4:	28c080e7          	jalr	652(ra) # 132c <printf>
    50a8:	ffffc097          	auipc	ra,0xffffc
    50ac:	118080e7          	jalr	280(ra) # 11c0 <display_refresh>
    50b0:	00000097          	auipc	ra,0x0
    50b4:	b00080e7          	jalr	-1280(ra) # 4bb0 <clear_audio>
    50b8:	000066b7          	lui	a3,0x6
    50bc:	e186a683          	lw	a3,-488(a3) # 5e18 <BUTTONS>
    50c0:	00892a83          	lw	s5,8(s2)
    50c4:	00000413          	li	s0,0
    50c8:	00d12423          	sw	a3,8(sp)
    50cc:	000066b7          	lui	a3,0x6
    50d0:	e286a683          	lw	a3,-472(a3) # 5e28 <LEDS>
    50d4:	00000713          	li	a4,0
    50d8:	00000793          	li	a5,0
    50dc:	00d12623          	sw	a3,12(sp)
    50e0:	000066b7          	lui	a3,0x6
    50e4:	e0c6a983          	lw	s3,-500(a3) # 5e0c <AUDIO>
    50e8:	00006b37          	lui	s6,0x6
    50ec:	00812683          	lw	a3,8(sp)
    50f0:	0006ab83          	lw	s7,0(a3)
    50f4:	020bf693          	and	a3,s7,32
    50f8:	02068263          	beqz	a3,511c <music_play+0x254>
    50fc:	02077713          	and	a4,a4,32
    5100:	00071e63          	bnez	a4,511c <music_play+0x254>
    5104:	00079e63          	bnez	a5,5120 <music_play+0x258>
    5108:	00000097          	auipc	ra,0x0
    510c:	aa8080e7          	jalr	-1368(ra) # 4bb0 <clear_audio>
    5110:	00100793          	li	a5,1
    5114:	000b8713          	mv	a4,s7
    5118:	fd5ff06f          	j	50ec <music_play+0x224>
    511c:	fe079ae3          	bnez	a5,5110 <music_play+0x248>
    5120:	008bf793          	and	a5,s7,8
    5124:	02078063          	beqz	a5,5144 <music_play+0x27c>
    5128:	00100793          	li	a5,1
    512c:	0487cc63          	blt	a5,s0,5184 <music_play+0x2bc>
    5130:	00140413          	add	s0,s0,1
    5134:	0009ac03          	lw	s8,0(s3)
    5138:	00098d93          	mv	s11,s3
    513c:	04045863          	bgez	s0,518c <music_play+0x2c4>
    5140:	0e80006f          	j	5228 <music_play+0x360>
    5144:	010bf793          	and	a5,s7,16
    5148:	00078a63          	beqz	a5,515c <music_play+0x294>
    514c:	fff00793          	li	a5,-1
    5150:	0cf44863          	blt	s0,a5,5220 <music_play+0x358>
    5154:	fff40413          	add	s0,s0,-1
    5158:	fddff06f          	j	5134 <music_play+0x26c>
    515c:	040bf793          	and	a5,s7,64
    5160:	fc078ae3          	beqz	a5,5134 <music_play+0x26c>
    5164:	00812783          	lw	a5,8(sp)
    5168:	0007a783          	lw	a5,0(a5)
    516c:	0407f793          	and	a5,a5,64
    5170:	fe079ae3          	bnez	a5,5164 <music_play+0x29c>
    5174:	00090513          	mv	a0,s2
    5178:	fffff097          	auipc	ra,0xfffff
    517c:	bd4080e7          	jalr	-1068(ra) # 3d4c <fl_fclose>
    5180:	e71ff06f          	j	4ff0 <music_play+0x128>
    5184:	0009ac03          	lw	s8,0(s3)
    5188:	00098d93          	mv	s11,s3
    518c:	20000493          	li	s1,512
    5190:	008494b3          	sll	s1,s1,s0
    5194:	00090693          	mv	a3,s2
    5198:	00048613          	mv	a2,s1
    519c:	00100593          	li	a1,1
    51a0:	09010513          	add	a0,sp,144
    51a4:	fffff097          	auipc	ra,0xfffff
    51a8:	c88080e7          	jalr	-888(ra) # 3e2c <fl_fread>
    51ac:	fc9544e3          	blt	a0,s1,5174 <music_play+0x2ac>
    51b0:	41f45713          	sra	a4,s0,0x1f
    51b4:	008747b3          	xor	a5,a4,s0
    51b8:	40e787b3          	sub	a5,a5,a4
    51bc:	00100d13          	li	s10,1
    51c0:	00fd1d33          	sll	s10,s10,a5
    51c4:	08044663          	bltz	s0,5250 <music_play+0x388>
    51c8:	09010793          	add	a5,sp,144
    51cc:	00000713          	li	a4,0
    51d0:	20000693          	li	a3,512
    51d4:	0007c583          	lbu	a1,0(a5)
    51d8:	00ec0633          	add	a2,s8,a4
    51dc:	00170713          	add	a4,a4,1
    51e0:	00b60023          	sb	a1,0(a2) # 4000 <fatfs_allocate_free_space+0x40>
    51e4:	01a787b3          	add	a5,a5,s10
    51e8:	fed716e3          	bne	a4,a3,51d4 <music_play+0x30c>
    51ec:	000da783          	lw	a5,0(s11)
    51f0:	fefc0ee3          	beq	s8,a5,51ec <music_play+0x324>
    51f4:	00240793          	add	a5,s0,2
    51f8:	00300693          	li	a3,3
    51fc:	1ff00713          	li	a4,511
    5200:	00f6e863          	bltu	a3,a5,5210 <music_play+0x348>
    5204:	e2cb0713          	add	a4,s6,-468 # 5e2c <CSWTCH.28>
    5208:	00e787b3          	add	a5,a5,a4
    520c:	00078703          	lb	a4,0(a5)
    5210:	00c12783          	lw	a5,12(sp)
    5214:	00e7a023          	sw	a4,0(a5)
    5218:	00000793          	li	a5,0
    521c:	ef9ff06f          	j	5114 <music_play+0x24c>
    5220:	0009ac03          	lw	s8,0(s3)
    5224:	00098d93          	mv	s11,s3
    5228:	408007b3          	neg	a5,s0
    522c:	20000493          	li	s1,512
    5230:	00892683          	lw	a3,8(s2)
    5234:	40f4d4b3          	sra	s1,s1,a5
    5238:	00449713          	sll	a4,s1,0x4
    523c:	000a8793          	mv	a5,s5
    5240:	00d77463          	bgeu	a4,a3,5248 <music_play+0x380>
    5244:	40e687b3          	sub	a5,a3,a4
    5248:	00f92423          	sw	a5,8(s2)
    524c:	f49ff06f          	j	5194 <music_play+0x2cc>
    5250:	00000c93          	li	s9,0
    5254:	fff48493          	add	s1,s1,-1
    5258:	20000a13          	li	s4,512
    525c:	000d0593          	mv	a1,s10
    5260:	000c8513          	mv	a0,s9
    5264:	ffffc097          	auipc	ra,0xffffc
    5268:	a58080e7          	jalr	-1448(ra) # cbc <__divsi3>
    526c:	40a48533          	sub	a0,s1,a0
    5270:	00055463          	bgez	a0,5278 <music_play+0x3b0>
    5274:	00000513          	li	a0,0
    5278:	000017b7          	lui	a5,0x1
    527c:	88078793          	add	a5,a5,-1920 # 880 <sdcard_start_sector+0x28>
    5280:	01010713          	add	a4,sp,16
    5284:	00a787b3          	add	a5,a5,a0
    5288:	00e78533          	add	a0,a5,a4
    528c:	80054683          	lbu	a3,-2048(a0)
    5290:	019c0733          	add	a4,s8,s9
    5294:	001c8c93          	add	s9,s9,1
    5298:	00d70023          	sb	a3,0(a4)
    529c:	fd4c90e3          	bne	s9,s4,525c <music_play+0x394>
    52a0:	f4dff06f          	j	51ec <music_play+0x324>

000052a4 <Select_and_play_Song>:
    52a4:	e7010113          	add	sp,sp,-400
    52a8:	18112623          	sw	ra,396(sp)
    52ac:	18912223          	sw	s1,388(sp)
    52b0:	19212023          	sw	s2,384(sp)
    52b4:	17312e23          	sw	s3,380(sp)
    52b8:	18812423          	sw	s0,392(sp)
    52bc:	17412c23          	sw	s4,376(sp)
    52c0:	17512a23          	sw	s5,372(sp)
    52c4:	17612823          	sw	s6,368(sp)
    52c8:	17712623          	sw	s7,364(sp)
    52cc:	17812423          	sw	s8,360(sp)
    52d0:	00050913          	mv	s2,a0
    52d4:	0005a023          	sw	zero,0(a1)
    52d8:	00000513          	li	a0,0
    52dc:	00058993          	mv	s3,a1
    52e0:	00000593          	li	a1,0
    52e4:	ffffc097          	auipc	ra,0xffffc
    52e8:	d6c080e7          	jalr	-660(ra) # 1050 <display_set_cursor>
    52ec:	00000593          	li	a1,0
    52f0:	0ff00513          	li	a0,255
    52f4:	ffffc097          	auipc	ra,0xffffc
    52f8:	d70080e7          	jalr	-656(ra) # 1064 <display_set_front_back_color>
    52fc:	ffffc097          	auipc	ra,0xffffc
    5300:	ec4080e7          	jalr	-316(ra) # 11c0 <display_refresh>
    5304:	00090593          	mv	a1,s2
    5308:	01010513          	add	a0,sp,16
    530c:	00010823          	sb	zero,16(sp)
    5310:	ffffc097          	auipc	ra,0xffffc
    5314:	b44080e7          	jalr	-1212(ra) # e54 <strcat>
    5318:	000065b7          	lui	a1,0x6
    531c:	1ac58593          	add	a1,a1,428 # 61ac <font+0x37c>
    5320:	01010513          	add	a0,sp,16
    5324:	ffffc097          	auipc	ra,0xffffc
    5328:	b30080e7          	jalr	-1232(ra) # e54 <strcat>
    532c:	000065b7          	lui	a1,0x6
    5330:	1b458593          	add	a1,a1,436 # 61b4 <font+0x384>
    5334:	000064b7          	lui	s1,0x6
    5338:	03010513          	add	a0,sp,48
    533c:	3204ac23          	sw	zero,824(s1) # 6338 <NSongs>
    5340:	ffffc097          	auipc	ra,0xffffc
    5344:	af4080e7          	jalr	-1292(ra) # e34 <strcpy>
    5348:	00090593          	mv	a1,s2
    534c:	03010513          	add	a0,sp,48
    5350:	ffffc097          	auipc	ra,0xffffc
    5354:	b04080e7          	jalr	-1276(ra) # e54 <strcat>
    5358:	00410593          	add	a1,sp,4
    535c:	03010513          	add	a0,sp,48
    5360:	ffffe097          	auipc	ra,0xffffe
    5364:	a50080e7          	jalr	-1456(ra) # 2db0 <fl_opendir>
    5368:	02050463          	beqz	a0,5390 <Select_and_play_Song+0xec>
    536c:	00007437          	lui	s0,0x7
    5370:	00700a13          	li	s4,7
    5374:	02e00a93          	li	s5,46
    5378:	15040413          	add	s0,s0,336 # 7150 <Songs>
    537c:	3384a783          	lw	a5,824(s1)
    5380:	12fa5463          	bge	s4,a5,54a8 <Select_and_play_Song+0x204>
    5384:	00410513          	add	a0,sp,4
    5388:	ffffc097          	auipc	ra,0xffffc
    538c:	604080e7          	jalr	1540(ra) # 198c <fl_closedir>
    5390:	3384a783          	lw	a5,824(s1)
    5394:	00000413          	li	s0,0
    5398:	18078263          	beqz	a5,551c <Select_and_play_Song+0x278>
    539c:	000067b7          	lui	a5,0x6
    53a0:	e187a903          	lw	s2,-488(a5) # 5e18 <BUTTONS>
    53a4:	00006ab7          	lui	s5,0x6
    53a8:	00007b37          	lui	s6,0x7
    53ac:	00006bb7          	lui	s7,0x6
    53b0:	00000593          	li	a1,0
    53b4:	00000513          	li	a0,0
    53b8:	ffffc097          	auipc	ra,0xffffc
    53bc:	c98080e7          	jalr	-872(ra) # 1050 <display_set_cursor>
    53c0:	00000593          	li	a1,0
    53c4:	07f00513          	li	a0,127
    53c8:	ffffc097          	auipc	ra,0xffffc
    53cc:	c9c080e7          	jalr	-868(ra) # 1064 <display_set_front_back_color>
    53d0:	1dca8513          	add	a0,s5,476 # 61dc <font+0x3ac>
    53d4:	ffffc097          	auipc	ra,0xffffc
    53d8:	f58080e7          	jalr	-168(ra) # 132c <printf>
    53dc:	150b0c13          	add	s8,s6,336 # 7150 <Songs>
    53e0:	00000a13          	li	s4,0
    53e4:	3384a783          	lw	a5,824(s1)
    53e8:	18fa4663          	blt	s4,a5,5574 <Select_and_play_Song+0x2d0>
    53ec:	ffffc097          	auipc	ra,0xffffc
    53f0:	dd4080e7          	jalr	-556(ra) # 11c0 <display_refresh>
    53f4:	00092783          	lw	a5,0(s2)
    53f8:	0107f793          	and	a5,a5,16
    53fc:	00078a63          	beqz	a5,5410 <Select_and_play_Song+0x16c>
    5400:	00140413          	add	s0,s0,1
    5404:	00092783          	lw	a5,0(s2)
    5408:	0107f793          	and	a5,a5,16
    540c:	fe079ce3          	bnez	a5,5404 <Select_and_play_Song+0x160>
    5410:	00092783          	lw	a5,0(s2)
    5414:	0087f793          	and	a5,a5,8
    5418:	00078a63          	beqz	a5,542c <Select_and_play_Song+0x188>
    541c:	fff40413          	add	s0,s0,-1
    5420:	00092783          	lw	a5,0(s2)
    5424:	0087f793          	and	a5,a5,8
    5428:	fe079ce3          	bnez	a5,5420 <Select_and_play_Song+0x17c>
    542c:	3384a783          	lw	a5,824(s1)
    5430:	18045263          	bgez	s0,55b4 <Select_and_play_Song+0x310>
    5434:	fff78413          	add	s0,a5,-1
    5438:	00092783          	lw	a5,0(s2)
    543c:	0207f793          	and	a5,a5,32
    5440:	18078063          	beqz	a5,55c0 <Select_and_play_Song+0x31c>
    5444:	ffffc097          	auipc	ra,0xffffc
    5448:	c00080e7          	jalr	-1024(ra) # 1044 <display_framebuffer>
    544c:	00004637          	lui	a2,0x4
    5450:	00000593          	li	a1,0
    5454:	ffffc097          	auipc	ra,0xffffc
    5458:	91c080e7          	jalr	-1764(ra) # d70 <memset>
    545c:	00100793          	li	a5,1
    5460:	00f9a023          	sw	a5,0(s3)
    5464:	00092783          	lw	a5,0(s2)
    5468:	0207f793          	and	a5,a5,32
    546c:	fe079ce3          	bnez	a5,5464 <Select_and_play_Song+0x1c0>
    5470:	ffffc097          	auipc	ra,0xffffc
    5474:	d50080e7          	jalr	-688(ra) # 11c0 <display_refresh>
    5478:	18c12083          	lw	ra,396(sp)
    547c:	18812403          	lw	s0,392(sp)
    5480:	18412483          	lw	s1,388(sp)
    5484:	18012903          	lw	s2,384(sp)
    5488:	17c12983          	lw	s3,380(sp)
    548c:	17812a03          	lw	s4,376(sp)
    5490:	17412a83          	lw	s5,372(sp)
    5494:	17012b03          	lw	s6,368(sp)
    5498:	16c12b83          	lw	s7,364(sp)
    549c:	16812c03          	lw	s8,360(sp)
    54a0:	19010113          	add	sp,sp,400
    54a4:	00008067          	ret
    54a8:	05010593          	add	a1,sp,80
    54ac:	00410513          	add	a0,sp,4
    54b0:	ffffe097          	auipc	ra,0xffffe
    54b4:	fb4080e7          	jalr	-76(ra) # 3464 <fl_readdir>
    54b8:	ec0516e3          	bnez	a0,5384 <Select_and_play_Song+0xe0>
    54bc:	05014783          	lbu	a5,80(sp)
    54c0:	eb578ee3          	beq	a5,s5,537c <Select_and_play_Song+0xd8>
    54c4:	15414783          	lbu	a5,340(sp)
    54c8:	ea079ae3          	bnez	a5,537c <Select_and_play_Song+0xd8>
    54cc:	3384a703          	lw	a4,824(s1)
    54d0:	01600613          	li	a2,22
    54d4:	05010593          	add	a1,sp,80
    54d8:	00171793          	sll	a5,a4,0x1
    54dc:	00e787b3          	add	a5,a5,a4
    54e0:	00379793          	sll	a5,a5,0x3
    54e4:	40e787b3          	sub	a5,a5,a4
    54e8:	00f40533          	add	a0,s0,a5
    54ec:	ffffc097          	auipc	ra,0xffffc
    54f0:	924080e7          	jalr	-1756(ra) # e10 <strncpy>
    54f4:	3384a703          	lw	a4,824(s1)
    54f8:	00171793          	sll	a5,a4,0x1
    54fc:	00e787b3          	add	a5,a5,a4
    5500:	00379793          	sll	a5,a5,0x3
    5504:	40e787b3          	sub	a5,a5,a4
    5508:	00f407b3          	add	a5,s0,a5
    550c:	00170713          	add	a4,a4,1
    5510:	00078b23          	sb	zero,22(a5)
    5514:	32e4ac23          	sw	a4,824(s1)
    5518:	e65ff06f          	j	537c <Select_and_play_Song+0xd8>
    551c:	00000593          	li	a1,0
    5520:	00000513          	li	a0,0
    5524:	ffffc097          	auipc	ra,0xffffc
    5528:	b2c080e7          	jalr	-1236(ra) # 1050 <display_set_cursor>
    552c:	00000593          	li	a1,0
    5530:	0ff00513          	li	a0,255
    5534:	ffffc097          	auipc	ra,0xffffc
    5538:	b30080e7          	jalr	-1232(ra) # 1064 <display_set_front_back_color>
    553c:	00006537          	lui	a0,0x6
    5540:	1bc50513          	add	a0,a0,444 # 61bc <font+0x38c>
    5544:	ffffc097          	auipc	ra,0xffffc
    5548:	de8080e7          	jalr	-536(ra) # 132c <printf>
    554c:	00090513          	mv	a0,s2
    5550:	ffffc097          	auipc	ra,0xffffc
    5554:	ddc080e7          	jalr	-548(ra) # 132c <printf>
    5558:	00006537          	lui	a0,0x6
    555c:	1d050513          	add	a0,a0,464 # 61d0 <font+0x3a0>
    5560:	ffffc097          	auipc	ra,0xffffc
    5564:	dcc080e7          	jalr	-564(ra) # 132c <printf>
    5568:	ffffc097          	auipc	ra,0xffffc
    556c:	c58080e7          	jalr	-936(ra) # 11c0 <display_refresh>
    5570:	0000006f          	j	5570 <Select_and_play_Song+0x2cc>
    5574:	03440a63          	beq	s0,s4,55a8 <Select_and_play_Song+0x304>
    5578:	0ff00513          	li	a0,255
    557c:	00000593          	li	a1,0
    5580:	ffffc097          	auipc	ra,0xffffc
    5584:	ae4080e7          	jalr	-1308(ra) # 1064 <display_set_front_back_color>
    5588:	000c0613          	mv	a2,s8
    558c:	000a0593          	mv	a1,s4
    5590:	090b8513          	add	a0,s7,144 # 6090 <font+0x260>
    5594:	ffffc097          	auipc	ra,0xffffc
    5598:	d98080e7          	jalr	-616(ra) # 132c <printf>
    559c:	001a0a13          	add	s4,s4,1
    55a0:	017c0c13          	add	s8,s8,23
    55a4:	e41ff06f          	j	53e4 <Select_and_play_Song+0x140>
    55a8:	00000513          	li	a0,0
    55ac:	0ff00593          	li	a1,255
    55b0:	fd1ff06f          	j	5580 <Select_and_play_Song+0x2dc>
    55b4:	e8f442e3          	blt	s0,a5,5438 <Select_and_play_Song+0x194>
    55b8:	00000413          	li	s0,0
    55bc:	e7dff06f          	j	5438 <Select_and_play_Song+0x194>
    55c0:	00092783          	lw	a5,0(s2)
    55c4:	0407f793          	and	a5,a5,64
    55c8:	de0784e3          	beqz	a5,53b0 <Select_and_play_Song+0x10c>
    55cc:	ffffc097          	auipc	ra,0xffffc
    55d0:	a78080e7          	jalr	-1416(ra) # 1044 <display_framebuffer>
    55d4:	00004637          	lui	a2,0x4
    55d8:	00000593          	li	a1,0
    55dc:	ffffb097          	auipc	ra,0xffffb
    55e0:	794080e7          	jalr	1940(ra) # d70 <memset>
    55e4:	ffffc097          	auipc	ra,0xffffc
    55e8:	bdc080e7          	jalr	-1060(ra) # 11c0 <display_refresh>
    55ec:	03010593          	add	a1,sp,48
    55f0:	00040513          	mv	a0,s0
    55f4:	00000097          	auipc	ra,0x0
    55f8:	8d4080e7          	jalr	-1836(ra) # 4ec8 <music_play>
    55fc:	ffffc097          	auipc	ra,0xffffc
    5600:	a48080e7          	jalr	-1464(ra) # 1044 <display_framebuffer>
    5604:	00004637          	lui	a2,0x4
    5608:	00000593          	li	a1,0
    560c:	ffffb097          	auipc	ra,0xffffb
    5610:	764080e7          	jalr	1892(ra) # d70 <memset>
    5614:	ffffc097          	auipc	ra,0xffffc
    5618:	bac080e7          	jalr	-1108(ra) # 11c0 <display_refresh>
    561c:	d95ff06f          	j	53b0 <Select_and_play_Song+0x10c>

00005620 <print_time_seconds>:
    5620:	000065b7          	lui	a1,0x6
    5624:	ff010113          	add	sp,sp,-16
    5628:	1a858593          	add	a1,a1,424 # 61a8 <font+0x378>
    562c:	00112623          	sw	ra,12(sp)
    5630:	00812423          	sw	s0,8(sp)
    5634:	00912223          	sw	s1,4(sp)
    5638:	00050493          	mv	s1,a0
    563c:	ffffb097          	auipc	ra,0xffffb
    5640:	688080e7          	jalr	1672(ra) # cc4 <__udivsi3>
    5644:	3e800593          	li	a1,1000
    5648:	ffffb097          	auipc	ra,0xffffb
    564c:	6c4080e7          	jalr	1732(ra) # d0c <__umodsi3>
    5650:	017d85b7          	lui	a1,0x17d8
    5654:	00050413          	mv	s0,a0
    5658:	84058593          	add	a1,a1,-1984 # 17d7840 <__stacktop+0x17c7840>
    565c:	00048513          	mv	a0,s1
    5660:	ffffb097          	auipc	ra,0xffffb
    5664:	664080e7          	jalr	1636(ra) # cc4 <__udivsi3>
    5668:	00050593          	mv	a1,a0
    566c:	00006537          	lui	a0,0x6
    5670:	1fc50513          	add	a0,a0,508 # 61fc <font+0x3cc>
    5674:	ffffc097          	auipc	ra,0xffffc
    5678:	cb8080e7          	jalr	-840(ra) # 132c <printf>
    567c:	06400593          	li	a1,100
    5680:	00040513          	mv	a0,s0
    5684:	ffffb097          	auipc	ra,0xffffb
    5688:	640080e7          	jalr	1600(ra) # cc4 <__udivsi3>
    568c:	000064b7          	lui	s1,0x6
    5690:	3104a783          	lw	a5,784(s1) # 6310 <f_putchar>
    5694:	03050513          	add	a0,a0,48
    5698:	000780e7          	jalr	a5
    569c:	00a00593          	li	a1,10
    56a0:	00040513          	mv	a0,s0
    56a4:	ffffb097          	auipc	ra,0xffffb
    56a8:	620080e7          	jalr	1568(ra) # cc4 <__udivsi3>
    56ac:	00a00593          	li	a1,10
    56b0:	ffffb097          	auipc	ra,0xffffb
    56b4:	65c080e7          	jalr	1628(ra) # d0c <__umodsi3>
    56b8:	3104a783          	lw	a5,784(s1)
    56bc:	03050513          	add	a0,a0,48
    56c0:	000780e7          	jalr	a5
    56c4:	00a00593          	li	a1,10
    56c8:	00040513          	mv	a0,s0
    56cc:	ffffb097          	auipc	ra,0xffffb
    56d0:	640080e7          	jalr	1600(ra) # d0c <__umodsi3>
    56d4:	3104a783          	lw	a5,784(s1)
    56d8:	03050513          	add	a0,a0,48
    56dc:	000780e7          	jalr	a5
    56e0:	00812403          	lw	s0,8(sp)
    56e4:	00c12083          	lw	ra,12(sp)
    56e8:	00412483          	lw	s1,4(sp)
    56ec:	00006537          	lui	a0,0x6
    56f0:	20050513          	add	a0,a0,512 # 6200 <font+0x3d0>
    56f4:	01010113          	add	sp,sp,16
    56f8:	ffffc317          	auipc	t1,0xffffc
    56fc:	c3430067          	jr	-972(t1) # 132c <printf>

00005700 <set_px>:
    5700:	00b56733          	or	a4,a0,a1
    5704:	07f00793          	li	a5,127
    5708:	04e7ea63          	bltu	a5,a4,575c <set_px+0x5c>
    570c:	ff010113          	add	sp,sp,-16
    5710:	00812423          	sw	s0,8(sp)
    5714:	00050413          	mv	s0,a0
    5718:	00912223          	sw	s1,4(sp)
    571c:	01212023          	sw	s2,0(sp)
    5720:	00112623          	sw	ra,12(sp)
    5724:	00058493          	mv	s1,a1
    5728:	00060913          	mv	s2,a2
    572c:	00741413          	sll	s0,s0,0x7
    5730:	ffffc097          	auipc	ra,0xffffc
    5734:	914080e7          	jalr	-1772(ra) # 1044 <display_framebuffer>
    5738:	009405b3          	add	a1,s0,s1
    573c:	00b50533          	add	a0,a0,a1
    5740:	01250023          	sb	s2,0(a0)
    5744:	00c12083          	lw	ra,12(sp)
    5748:	00812403          	lw	s0,8(sp)
    574c:	00412483          	lw	s1,4(sp)
    5750:	00012903          	lw	s2,0(sp)
    5754:	01010113          	add	sp,sp,16
    5758:	00008067          	ret
    575c:	00008067          	ret

00005760 <wait_for_button_release.constprop.0>:
    5760:	000067b7          	lui	a5,0x6
    5764:	e187a703          	lw	a4,-488(a5) # 5e18 <BUTTONS>
    5768:	00072783          	lw	a5,0(a4)
    576c:	0407f793          	and	a5,a5,64
    5770:	fe079ce3          	bnez	a5,5768 <wait_for_button_release.constprop.0+0x8>
    5774:	00008067          	ret

00005778 <draw_circle>:
    5778:	fb010113          	add	sp,sp,-80
    577c:	00006737          	lui	a4,0x6
    5780:	03812423          	sw	s8,40(sp)
    5784:	e1472c03          	lw	s8,-492(a4) # 5e14 <RGBSEL>
    5788:	04812423          	sw	s0,72(sp)
    578c:	03312e23          	sw	s3,60(sp)
    5790:	03412c23          	sw	s4,56(sp)
    5794:	03612823          	sw	s6,48(sp)
    5798:	04112623          	sw	ra,76(sp)
    579c:	04912223          	sw	s1,68(sp)
    57a0:	05212023          	sw	s2,64(sp)
    57a4:	03512a23          	sw	s5,52(sp)
    57a8:	03712623          	sw	s7,44(sp)
    57ac:	03912223          	sw	s9,36(sp)
    57b0:	03a12023          	sw	s10,32(sp)
    57b4:	01b12e23          	sw	s11,28(sp)
    57b8:	00050993          	mv	s3,a0
    57bc:	00058a13          	mv	s4,a1
    57c0:	00060413          	mv	s0,a2
    57c4:	00d12423          	sw	a3,8(sp)
    57c8:	000c2023          	sw	zero,0(s8)
    57cc:	00000b13          	li	s6,0
    57d0:	048b4463          	blt	s6,s0,5818 <draw_circle+0xa0>
    57d4:	04c12083          	lw	ra,76(sp)
    57d8:	04812403          	lw	s0,72(sp)
    57dc:	00100793          	li	a5,1
    57e0:	00fc2023          	sw	a5,0(s8)
    57e4:	04412483          	lw	s1,68(sp)
    57e8:	04012903          	lw	s2,64(sp)
    57ec:	03c12983          	lw	s3,60(sp)
    57f0:	03812a03          	lw	s4,56(sp)
    57f4:	03412a83          	lw	s5,52(sp)
    57f8:	03012b03          	lw	s6,48(sp)
    57fc:	02c12b83          	lw	s7,44(sp)
    5800:	02812c03          	lw	s8,40(sp)
    5804:	02412c83          	lw	s9,36(sp)
    5808:	02012d03          	lw	s10,32(sp)
    580c:	01c12d83          	lw	s11,28(sp)
    5810:	05010113          	add	sp,sp,80
    5814:	00008067          	ret
    5818:	000b0913          	mv	s2,s6
    581c:	00000a93          	li	s5,0
    5820:	00000493          	li	s1,0
    5824:	00812603          	lw	a2,8(sp)
    5828:	01448cb3          	add	s9,s1,s4
    582c:	01298bb3          	add	s7,s3,s2
    5830:	000c8593          	mv	a1,s9
    5834:	000b8513          	mv	a0,s7
    5838:	00000097          	auipc	ra,0x0
    583c:	ec8080e7          	jalr	-312(ra) # 5700 <set_px>
    5840:	00812603          	lw	a2,8(sp)
    5844:	01348d33          	add	s10,s1,s3
    5848:	012a05b3          	add	a1,s4,s2
    584c:	000d0513          	mv	a0,s10
    5850:	00b12623          	sw	a1,12(sp)
    5854:	00000097          	auipc	ra,0x0
    5858:	eac080e7          	jalr	-340(ra) # 5700 <set_px>
    585c:	00812603          	lw	a2,8(sp)
    5860:	00c12583          	lw	a1,12(sp)
    5864:	40998db3          	sub	s11,s3,s1
    5868:	000d8513          	mv	a0,s11
    586c:	00000097          	auipc	ra,0x0
    5870:	e94080e7          	jalr	-364(ra) # 5700 <set_px>
    5874:	00812603          	lw	a2,8(sp)
    5878:	41298533          	sub	a0,s3,s2
    587c:	000c8593          	mv	a1,s9
    5880:	00a12623          	sw	a0,12(sp)
    5884:	00000097          	auipc	ra,0x0
    5888:	e7c080e7          	jalr	-388(ra) # 5700 <set_px>
    588c:	00812603          	lw	a2,8(sp)
    5890:	00c12503          	lw	a0,12(sp)
    5894:	409a0cb3          	sub	s9,s4,s1
    5898:	000c8593          	mv	a1,s9
    589c:	00000097          	auipc	ra,0x0
    58a0:	e64080e7          	jalr	-412(ra) # 5700 <set_px>
    58a4:	00812603          	lw	a2,8(sp)
    58a8:	412a05b3          	sub	a1,s4,s2
    58ac:	000d8513          	mv	a0,s11
    58b0:	00b12623          	sw	a1,12(sp)
    58b4:	00000097          	auipc	ra,0x0
    58b8:	e4c080e7          	jalr	-436(ra) # 5700 <set_px>
    58bc:	00812603          	lw	a2,8(sp)
    58c0:	00c12583          	lw	a1,12(sp)
    58c4:	000d0513          	mv	a0,s10
    58c8:	00148493          	add	s1,s1,1
    58cc:	00000097          	auipc	ra,0x0
    58d0:	e34080e7          	jalr	-460(ra) # 5700 <set_px>
    58d4:	00812603          	lw	a2,8(sp)
    58d8:	000c8593          	mv	a1,s9
    58dc:	000b8513          	mv	a0,s7
    58e0:	00000097          	auipc	ra,0x0
    58e4:	e20080e7          	jalr	-480(ra) # 5700 <set_px>
    58e8:	01504e63          	bgtz	s5,5904 <draw_circle+0x18c>
    58ec:	00149713          	sll	a4,s1,0x1
    58f0:	00170713          	add	a4,a4,1
    58f4:	00ea8ab3          	add	s5,s5,a4
    58f8:	f29956e3          	bge	s2,s1,5824 <draw_circle+0xac>
    58fc:	001b0b13          	add	s6,s6,1
    5900:	ed1ff06f          	j	57d0 <draw_circle+0x58>
    5904:	fff90913          	add	s2,s2,-1
    5908:	00191713          	sll	a4,s2,0x1
    590c:	00170713          	add	a4,a4,1
    5910:	40ea8ab3          	sub	s5,s5,a4
    5914:	fe5ff06f          	j	58f8 <draw_circle+0x180>

00005918 <F1>:
    5918:	fc010113          	add	sp,sp,-64
    591c:	01712e23          	sw	s7,28(sp)
    5920:	00b00793          	li	a5,11
    5924:	00006bb7          	lui	s7,0x6
    5928:	03312623          	sw	s3,44(sp)
    592c:	34fba023          	sw	a5,832(s7) # 6340 <space>
    5930:	000069b7          	lui	s3,0x6
    5934:	01400793          	li	a5,20
    5938:	34f9a223          	sw	a5,836(s3) # 6344 <center_x>
    593c:	02112e23          	sw	ra,60(sp)
    5940:	03512223          	sw	s5,36(sp)
    5944:	02812c23          	sw	s0,56(sp)
    5948:	02912a23          	sw	s1,52(sp)
    594c:	03212823          	sw	s2,48(sp)
    5950:	03412423          	sw	s4,40(sp)
    5954:	03612023          	sw	s6,32(sp)
    5958:	01812c23          	sw	s8,24(sp)
    595c:	01912a23          	sw	s9,20(sp)
    5960:	ffffb097          	auipc	ra,0xffffb
    5964:	6e4080e7          	jalr	1764(ra) # 1044 <display_framebuffer>
    5968:	00004637          	lui	a2,0x4
    596c:	00000593          	li	a1,0
    5970:	ffffb097          	auipc	ra,0xffffb
    5974:	400080e7          	jalr	1024(ra) # d70 <memset>
    5978:	00000593          	li	a1,0
    597c:	00000513          	li	a0,0
    5980:	ffffb097          	auipc	ra,0xffffb
    5984:	6d0080e7          	jalr	1744(ra) # 1050 <display_set_cursor>
    5988:	00000593          	li	a1,0
    598c:	07f00513          	li	a0,127
    5990:	ffffb097          	auipc	ra,0xffffb
    5994:	6d4080e7          	jalr	1748(ra) # 1064 <display_set_front_back_color>
    5998:	00006537          	lui	a0,0x6
    599c:	20450513          	add	a0,a0,516 # 6204 <font+0x3d4>
    59a0:	ffffc097          	auipc	ra,0xffffc
    59a4:	98c080e7          	jalr	-1652(ra) # 132c <printf>
    59a8:	00006537          	lui	a0,0x6
    59ac:	23850513          	add	a0,a0,568 # 6238 <font+0x408>
    59b0:	ffffc097          	auipc	ra,0xffffc
    59b4:	97c080e7          	jalr	-1668(ra) # 132c <printf>
    59b8:	00006537          	lui	a0,0x6
    59bc:	25450513          	add	a0,a0,596 # 6254 <font+0x424>
    59c0:	ffffc097          	auipc	ra,0xffffc
    59c4:	96c080e7          	jalr	-1684(ra) # 132c <printf>
    59c8:	ffffb097          	auipc	ra,0xffffb
    59cc:	7f8080e7          	jalr	2040(ra) # 11c0 <display_refresh>
    59d0:	000067b7          	lui	a5,0x6
    59d4:	e187aa83          	lw	s5,-488(a5) # 5e18 <BUTTONS>
    59d8:	000aa783          	lw	a5,0(s5)
    59dc:	0407f793          	and	a5,a5,64
    59e0:	fe078ce3          	beqz	a5,59d8 <F1+0xc0>
    59e4:	00000097          	auipc	ra,0x0
    59e8:	d7c080e7          	jalr	-644(ra) # 5760 <wait_for_button_release.constprop.0>
    59ec:	c00026f3          	rdcycle	a3
    59f0:	000187b7          	lui	a5,0x18
    59f4:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    59f8:	c0002773          	rdcycle	a4
    59fc:	40d70733          	sub	a4,a4,a3
    5a00:	fee7fce3          	bgeu	a5,a4,59f8 <F1+0xe0>
    5a04:	00006437          	lui	s0,0x6
    5a08:	00010913          	mv	s2,sp
    5a0c:	02fafb37          	lui	s6,0x2faf
    5a10:	32042e23          	sw	zero,828(s0) # 633c <timer>
    5a14:	00090493          	mv	s1,s2
    5a18:	07fb0b13          	add	s6,s6,127 # 2faf07f <__stacktop+0x2f9f07f>
    5a1c:	c0002773          	rdcycle	a4
    5a20:	c00027f3          	rdcycle	a5
    5a24:	40e787b3          	sub	a5,a5,a4
    5a28:	fefb7ce3          	bgeu	s6,a5,5a20 <F1+0x108>
    5a2c:	3449ac03          	lw	s8,836(s3)
    5a30:	00000097          	auipc	ra,0x0
    5a34:	d30080e7          	jalr	-720(ra) # 5760 <wait_for_button_release.constprop.0>
    5a38:	0ff00693          	li	a3,255
    5a3c:	00900613          	li	a2,9
    5a40:	04000593          	li	a1,64
    5a44:	000c0513          	mv	a0,s8
    5a48:	00000097          	auipc	ra,0x0
    5a4c:	d30080e7          	jalr	-720(ra) # 5778 <draw_circle>
    5a50:	ffffb097          	auipc	ra,0xffffb
    5a54:	770080e7          	jalr	1904(ra) # 11c0 <display_refresh>
    5a58:	c0002cf3          	rdcycle	s9
    5a5c:	000aa783          	lw	a5,0(s5)
    5a60:	0407f793          	and	a5,a5,64
    5a64:	fe078ce3          	beqz	a5,5a5c <F1+0x144>
    5a68:	c0002a73          	rdcycle	s4
    5a6c:	00000693          	li	a3,0
    5a70:	00900613          	li	a2,9
    5a74:	04000593          	li	a1,64
    5a78:	000c0513          	mv	a0,s8
    5a7c:	00000097          	auipc	ra,0x0
    5a80:	cfc080e7          	jalr	-772(ra) # 5778 <draw_circle>
    5a84:	ffffb097          	auipc	ra,0xffffb
    5a88:	73c080e7          	jalr	1852(ra) # 11c0 <display_refresh>
    5a8c:	00000097          	auipc	ra,0x0
    5a90:	cd4080e7          	jalr	-812(ra) # 5760 <wait_for_button_release.constprop.0>
    5a94:	33c42703          	lw	a4,828(s0)
    5a98:	419a07b3          	sub	a5,s4,s9
    5a9c:	00f4a023          	sw	a5,0(s1)
    5aa0:	00f707b3          	add	a5,a4,a5
    5aa4:	32f42e23          	sw	a5,828(s0)
    5aa8:	340ba783          	lw	a5,832(s7)
    5aac:	3449a703          	lw	a4,836(s3)
    5ab0:	00448493          	add	s1,s1,4
    5ab4:	01278793          	add	a5,a5,18
    5ab8:	00e787b3          	add	a5,a5,a4
    5abc:	34f9a223          	sw	a5,836(s3)
    5ac0:	01010793          	add	a5,sp,16
    5ac4:	f4f49ce3          	bne	s1,a5,5a1c <F1+0x104>
    5ac8:	ffffb097          	auipc	ra,0xffffb
    5acc:	57c080e7          	jalr	1404(ra) # 1044 <display_framebuffer>
    5ad0:	00004637          	lui	a2,0x4
    5ad4:	00000593          	li	a1,0
    5ad8:	ffffb097          	auipc	ra,0xffffb
    5adc:	298080e7          	jalr	664(ra) # d70 <memset>
    5ae0:	00000593          	li	a1,0
    5ae4:	00000513          	li	a0,0
    5ae8:	ffffb097          	auipc	ra,0xffffb
    5aec:	568080e7          	jalr	1384(ra) # 1050 <display_set_cursor>
    5af0:	00000593          	li	a1,0
    5af4:	0ff00513          	li	a0,255
    5af8:	ffffb097          	auipc	ra,0xffffb
    5afc:	56c080e7          	jalr	1388(ra) # 1064 <display_set_front_back_color>
    5b00:	00006537          	lui	a0,0x6
    5b04:	28c50513          	add	a0,a0,652 # 628c <font+0x45c>
    5b08:	ffffc097          	auipc	ra,0xffffc
    5b0c:	824080e7          	jalr	-2012(ra) # 132c <printf>
    5b10:	00000493          	li	s1,0
    5b14:	00006b37          	lui	s6,0x6
    5b18:	000069b7          	lui	s3,0x6
    5b1c:	00400a13          	li	s4,4
    5b20:	00148493          	add	s1,s1,1
    5b24:	00048593          	mv	a1,s1
    5b28:	2a0b0513          	add	a0,s6,672 # 62a0 <font+0x470>
    5b2c:	ffffc097          	auipc	ra,0xffffc
    5b30:	800080e7          	jalr	-2048(ra) # 132c <printf>
    5b34:	00092503          	lw	a0,0(s2)
    5b38:	00490913          	add	s2,s2,4
    5b3c:	00000097          	auipc	ra,0x0
    5b40:	ae4080e7          	jalr	-1308(ra) # 5620 <print_time_seconds>
    5b44:	2e098513          	add	a0,s3,736 # 62e0 <font+0x4b0>
    5b48:	ffffb097          	auipc	ra,0xffffb
    5b4c:	7e4080e7          	jalr	2020(ra) # 132c <printf>
    5b50:	fd4498e3          	bne	s1,s4,5b20 <F1+0x208>
    5b54:	00006537          	lui	a0,0x6
    5b58:	2a850513          	add	a0,a0,680 # 62a8 <font+0x478>
    5b5c:	ffffb097          	auipc	ra,0xffffb
    5b60:	7d0080e7          	jalr	2000(ra) # 132c <printf>
    5b64:	33c42503          	lw	a0,828(s0)
    5b68:	00255513          	srl	a0,a0,0x2
    5b6c:	00000097          	auipc	ra,0x0
    5b70:	ab4080e7          	jalr	-1356(ra) # 5620 <print_time_seconds>
    5b74:	2e098513          	add	a0,s3,736
    5b78:	ffffb097          	auipc	ra,0xffffb
    5b7c:	7b4080e7          	jalr	1972(ra) # 132c <printf>
    5b80:	00006537          	lui	a0,0x6
    5b84:	2b450513          	add	a0,a0,692 # 62b4 <font+0x484>
    5b88:	ffffb097          	auipc	ra,0xffffb
    5b8c:	7a4080e7          	jalr	1956(ra) # 132c <printf>
    5b90:	ffffb097          	auipc	ra,0xffffb
    5b94:	630080e7          	jalr	1584(ra) # 11c0 <display_refresh>
    5b98:	000aa783          	lw	a5,0(s5)
    5b9c:	0407f793          	and	a5,a5,64
    5ba0:	fe078ce3          	beqz	a5,5b98 <F1+0x280>
    5ba4:	00000097          	auipc	ra,0x0
    5ba8:	bbc080e7          	jalr	-1092(ra) # 5760 <wait_for_button_release.constprop.0>
    5bac:	ffffb097          	auipc	ra,0xffffb
    5bb0:	498080e7          	jalr	1176(ra) # 1044 <display_framebuffer>
    5bb4:	03812403          	lw	s0,56(sp)
    5bb8:	03c12083          	lw	ra,60(sp)
    5bbc:	03412483          	lw	s1,52(sp)
    5bc0:	03012903          	lw	s2,48(sp)
    5bc4:	02c12983          	lw	s3,44(sp)
    5bc8:	02812a03          	lw	s4,40(sp)
    5bcc:	02412a83          	lw	s5,36(sp)
    5bd0:	02012b03          	lw	s6,32(sp)
    5bd4:	01c12b83          	lw	s7,28(sp)
    5bd8:	01812c03          	lw	s8,24(sp)
    5bdc:	01412c83          	lw	s9,20(sp)
    5be0:	00004637          	lui	a2,0x4
    5be4:	00000593          	li	a1,0
    5be8:	04010113          	add	sp,sp,64
    5bec:	ffffb317          	auipc	t1,0xffffb
    5bf0:	18430067          	jr	388(t1) # d70 <memset>

00005bf4 <Game_menu>:
    5bf4:	fd010113          	add	sp,sp,-48
    5bf8:	000067b7          	lui	a5,0x6
    5bfc:	02912223          	sw	s1,36(sp)
    5c00:	e187a483          	lw	s1,-488(a5) # 5e18 <BUTTONS>
    5c04:	02812423          	sw	s0,40(sp)
    5c08:	03212023          	sw	s2,32(sp)
    5c0c:	01312e23          	sw	s3,28(sp)
    5c10:	01412c23          	sw	s4,24(sp)
    5c14:	01512a23          	sw	s5,20(sp)
    5c18:	01612823          	sw	s6,16(sp)
    5c1c:	01712623          	sw	s7,12(sp)
    5c20:	02112623          	sw	ra,44(sp)
    5c24:	00000413          	li	s0,0
    5c28:	00000913          	li	s2,0
    5c2c:	00006a37          	lui	s4,0x6
    5c30:	00006ab7          	lui	s5,0x6
    5c34:	000069b7          	lui	s3,0x6
    5c38:	00100b13          	li	s6,1
    5c3c:	00006bb7          	lui	s7,0x6
    5c40:	00000593          	li	a1,0
    5c44:	00000513          	li	a0,0
    5c48:	ffffb097          	auipc	ra,0xffffb
    5c4c:	408080e7          	jalr	1032(ra) # 1050 <display_set_cursor>
    5c50:	0ff97593          	zext.b	a1,s2
    5c54:	07f58513          	add	a0,a1,127
    5c58:	0ff57513          	zext.b	a0,a0
    5c5c:	ffffb097          	auipc	ra,0xffffb
    5c60:	408080e7          	jalr	1032(ra) # 1064 <display_set_front_back_color>
    5c64:	2c8a0513          	add	a0,s4,712 # 62c8 <font+0x498>
    5c68:	00190913          	add	s2,s2,1
    5c6c:	ffffb097          	auipc	ra,0xffffb
    5c70:	6c0080e7          	jalr	1728(ra) # 132c <printf>
    5c74:	08041663          	bnez	s0,5d00 <Game_menu+0x10c>
    5c78:	00000513          	li	a0,0
    5c7c:	0ff00593          	li	a1,255
    5c80:	ffffb097          	auipc	ra,0xffffb
    5c84:	3e4080e7          	jalr	996(ra) # 1064 <display_set_front_back_color>
    5c88:	2e4a8613          	add	a2,s5,740 # 62e4 <font+0x4b4>
    5c8c:	00000593          	li	a1,0
    5c90:	09098513          	add	a0,s3,144 # 6090 <font+0x260>
    5c94:	ffffb097          	auipc	ra,0xffffb
    5c98:	698080e7          	jalr	1688(ra) # 132c <printf>
    5c9c:	07641863          	bne	s0,s6,5d0c <Game_menu+0x118>
    5ca0:	00000513          	li	a0,0
    5ca4:	0ff00593          	li	a1,255
    5ca8:	ffffb097          	auipc	ra,0xffffb
    5cac:	3bc080e7          	jalr	956(ra) # 1064 <display_set_front_back_color>
    5cb0:	2e8b8613          	add	a2,s7,744 # 62e8 <font+0x4b8>
    5cb4:	00100593          	li	a1,1
    5cb8:	09098513          	add	a0,s3,144
    5cbc:	ffffb097          	auipc	ra,0xffffb
    5cc0:	670080e7          	jalr	1648(ra) # 132c <printf>
    5cc4:	ffffb097          	auipc	ra,0xffffb
    5cc8:	4fc080e7          	jalr	1276(ra) # 11c0 <display_refresh>
    5ccc:	0004a783          	lw	a5,0(s1)
    5cd0:	0107f793          	and	a5,a5,16
    5cd4:	04078263          	beqz	a5,5d18 <Game_menu+0x124>
    5cd8:	00140413          	add	s0,s0,1
    5cdc:	0004a783          	lw	a5,0(s1)
    5ce0:	0107f793          	and	a5,a5,16
    5ce4:	fe079ce3          	bnez	a5,5cdc <Game_menu+0xe8>
    5ce8:	0004a783          	lw	a5,0(s1)
    5cec:	0087f793          	and	a5,a5,8
    5cf0:	02079a63          	bnez	a5,5d24 <Game_menu+0x130>
    5cf4:	ffe40413          	add	s0,s0,-2
    5cf8:	00803433          	snez	s0,s0
    5cfc:	0400006f          	j	5d3c <Game_menu+0x148>
    5d00:	0ff00513          	li	a0,255
    5d04:	00000593          	li	a1,0
    5d08:	f79ff06f          	j	5c80 <Game_menu+0x8c>
    5d0c:	0ff00513          	li	a0,255
    5d10:	00000593          	li	a1,0
    5d14:	f95ff06f          	j	5ca8 <Game_menu+0xb4>
    5d18:	0004a783          	lw	a5,0(s1)
    5d1c:	0087f793          	and	a5,a5,8
    5d20:	00078e63          	beqz	a5,5d3c <Game_menu+0x148>
    5d24:	fff40413          	add	s0,s0,-1
    5d28:	0004a783          	lw	a5,0(s1)
    5d2c:	0087f793          	and	a5,a5,8
    5d30:	fe079ce3          	bnez	a5,5d28 <Game_menu+0x134>
    5d34:	fff00793          	li	a5,-1
    5d38:	0af40063          	beq	s0,a5,5dd8 <Game_menu+0x1e4>
    5d3c:	0004a783          	lw	a5,0(s1)
    5d40:	0407f793          	and	a5,a5,64
    5d44:	02078863          	beqz	a5,5d74 <Game_menu+0x180>
    5d48:	ffffb097          	auipc	ra,0xffffb
    5d4c:	2fc080e7          	jalr	764(ra) # 1044 <display_framebuffer>
    5d50:	00004637          	lui	a2,0x4
    5d54:	00000593          	li	a1,0
    5d58:	ffffb097          	auipc	ra,0xffffb
    5d5c:	018080e7          	jalr	24(ra) # d70 <memset>
    5d60:	ffffb097          	auipc	ra,0xffffb
    5d64:	460080e7          	jalr	1120(ra) # 11c0 <display_refresh>
    5d68:	00041663          	bnez	s0,5d74 <Game_menu+0x180>
    5d6c:	00000097          	auipc	ra,0x0
    5d70:	bac080e7          	jalr	-1108(ra) # 5918 <F1>
    5d74:	0004a783          	lw	a5,0(s1)
    5d78:	0207f793          	and	a5,a5,32
    5d7c:	ec0782e3          	beqz	a5,5c40 <Game_menu+0x4c>
    5d80:	ffffb097          	auipc	ra,0xffffb
    5d84:	2c4080e7          	jalr	708(ra) # 1044 <display_framebuffer>
    5d88:	00004637          	lui	a2,0x4
    5d8c:	00000593          	li	a1,0
    5d90:	ffffb097          	auipc	ra,0xffffb
    5d94:	fe0080e7          	jalr	-32(ra) # d70 <memset>
    5d98:	ffffb097          	auipc	ra,0xffffb
    5d9c:	428080e7          	jalr	1064(ra) # 11c0 <display_refresh>
    5da0:	0004a783          	lw	a5,0(s1)
    5da4:	0207f793          	and	a5,a5,32
    5da8:	fe079ce3          	bnez	a5,5da0 <Game_menu+0x1ac>
    5dac:	02c12083          	lw	ra,44(sp)
    5db0:	02812403          	lw	s0,40(sp)
    5db4:	02412483          	lw	s1,36(sp)
    5db8:	02012903          	lw	s2,32(sp)
    5dbc:	01c12983          	lw	s3,28(sp)
    5dc0:	01812a03          	lw	s4,24(sp)
    5dc4:	01412a83          	lw	s5,20(sp)
    5dc8:	01012b03          	lw	s6,16(sp)
    5dcc:	00c12b83          	lw	s7,12(sp)
    5dd0:	03010113          	add	sp,sp,48
    5dd4:	00008067          	ret
    5dd8:	00100413          	li	s0,1
    5ddc:	f61ff06f          	j	5d3c <Game_menu+0x148>

00005de0 <back>:
    5de0:	000062f8                                .b..

00005de4 <cmd16>:
    5de4:	02000050 00001500                       P.......

00005dec <acmd41>:
    5dec:	00004069 00000100                       i@......

00005df4 <cmd55>:
    5df4:	00000077 00000100                       w.......

00005dfc <cmd8>:
    5dfc:	01000048 000087aa                       H.......

00005e04 <cmd0>:
    5e04:	00000040 00009500                       @.......

00005e0c <AUDIO>:
    5e0c:	00018000                                ....

00005e10 <DISPLAY>:
    5e10:	00014000                                .@..

00005e14 <RGBSEL>:
    5e14:	00012000                                . ..

00005e18 <BUTTONS>:
    5e18:	00010100                                ....

00005e1c <SDCARD>:
    5e1c:	00010080                                ....

00005e20 <OLED_RST>:
    5e20:	00010010                                ....

00005e24 <OLED>:
    5e24:	00010008                                ....

00005e28 <LEDS>:
    5e28:	00010004                                ....

00005e2c <CSWTCH.28>:
    5e2c:	40100401                                ...@

00005e30 <font>:
    5e30:	00000000 00002f00 00030000 14000003     ...../..........
    5e40:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5e50:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5e60:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5e70:	00080800 00200000 20000000 02040810     ...... .... ....
    5e80:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5e90:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5ea0:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5eb0:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5ec0:	00141400 0a110000 01000004 0007052d     ............-...
    5ed0:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5ee0:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5ef0:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5f00:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5f10:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5f20:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5f30:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5f40:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5f50:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5f60:	003f2102 01020000 20000201 00000020     .!?........  ...
    5f70:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5f80:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5f90:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5fa0:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5fb0:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5fc0:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5fd0:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5fe0:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5ff0:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    6000:	043f2100 02010000 00000102 00000000     .!?.............
    6010:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    6020:	00000000 00000001 00000003 00000005     ................
    6030:	00000007 00000009 0000000e 00000010     ................
    6040:	00000012 00000014 00000016 00000018     ................
    6050:	0000001c 0000001e 74696e69 2e2e2e20     ........init ...
    6060:	00000020 656e6f64 00000a2e 3d202020      ...done....   =
    6070:	754d203d 20636973 6147202f 3d20656d     = Music / Game =
    6080:	2020203d 00000a0a 6973754d 00000063     =   ....Music...
    6090:	203e6425 000a7325 656d6147 00000073     %d> %s..Games...
    60a0:	200a0a0a 6b636162 35423a20 6c657320     ... back :B5 sel
    60b0:	20746365 0036423a 6e6f732f 00000067     ect :B6./song...
    60c0:	69647561 61705f6f 69207472 2074696e     audio_part init 
    60d0:	202e2e2e 00000000 66206f4e 73656c69     ... ....No files
    60e0:	756f6620 6920646e 732f206e 2e676e6f      found in /song.
    60f0:	0000000a 3d3d2020 626c4120 20736d75     ....  == Albums 
    6100:	6c412f28 736d7562 3d3d2029 0a0a2020     (/Albums) ==  ..
    6110:	00000000 3d202020 754d203d 75716973     ....   == Musiqu
    6120:	614d2065 72747365 3d3d206f 0a202020     e Maestro ==   .
    6130:	0000000a 0000002f 00006272 656c6966     ..../...rb..file
    6140:	746f6e20 756f6620 0a2e646e 00000000      not found......
    6150:	6973756d 69662063 6620656c 646e756f     music file found
    6160:	00000a2e 79616c70 20676e69 00000000     ....playing ....
    6170:	74203542 6170206f 0a657375 20334220     B5 to pause. B3 
    6180:	73206f74 64656570 0a707520 20344220     to speed up. B4 
    6190:	73206f74 20776f6c 6e776f64 3642200a     to slow down. B6
    61a0:	206f7420 7661656c 00000065 696e6920      to leave... ini
    61b0:	002e2e74 6e6f732f 00002f67 66206f4e     t.../song/..No f
    61c0:	73656c69 756f6620 6920646e 0000206e     iles found in ..
    61d0:	6c6f6620 20726564 0000000a 3d202020      folder ....   =
    61e0:	6f53203d 2073676e 6f532f28 2973676e     = Songs (/Songs)
    61f0:	203d3d20 0a0a2020 00000000 002e6425      ==   ......%d..
    6200:	00007320 7349200a 756f7920 65722072      s... Is your re
    6210:	69746361 74206e6f 20656d69 74736166     action time fast
    6220:	74207265 206e6168 6720796d 646e6172     er than my grand
    6230:	73276170 000a0a3f 50203d3d 73736572     pa's?...== Press
    6240:	20364220 73206f74 74726174 0a3d3d20      B6 to start ==.
    6250:	00000000 656c6552 20657361 74203642     ....Release B6 t
    6260:	206e6568 73657270 74692073 2073610a     hen press it.as 
    6270:	6e6f6f73 20736120 69632061 656c6372     soon as a circle
    6280:	70706120 73726165 0000002e 706d6554      appears....Temp
    6290:	61702073 73652072 3a696173 00000a0a     s par essai:....
    62a0:	3a642523 00000020 796f4d0a 656e6e65     #%d: ....Moyenne
    62b0:	0000203a 70203642 2072756f 65766572     : ..B6 pour reve
    62c0:	2e72696e 00000000 3d202020 6553203d     nir.....   == Se
    62d0:	7463656c 6d614720 3d3d2065 0a202020     lect Game ==   .
    62e0:	0000000a 00003146 6d6d6f63 5f676e69     ....F1..comming_
    62f0:	6e6f6f73 00000000                       soon....

000062f8 <back_storage>:
    62f8:	00000000                                ....

000062fc <situation>:
    62fc:	00000000                                ....

00006300 <sdcard_while_loading_callback>:
    6300:	00000000                                ....

00006304 <back_color>:
	...

00006305 <front_color>:
    6305:	                                         ...

00006308 <cursor_y>:
    6308:	00000000                                ....

0000630c <cursor_x>:
    630c:	00000000                                ....

00006310 <f_putchar>:
    6310:	00000000                                ....

00006314 <_free_file_list>:
	...

0000631c <_open_file_list>:
	...

00006324 <_filelib_valid>:
    6324:	00000000                                ....

00006328 <_filelib_init>:
    6328:	00000000                                ....

0000632c <Init_stat>:
    632c:	00000000                                ....

00006330 <init>:
    6330:	00000000                                ....

00006334 <nAlbums>:
    6334:	00000000                                ....

00006338 <NSongs>:
    6338:	00000000                                ....

0000633c <timer>:
    633c:	00000000                                ....

00006340 <space>:
    6340:	00000000                                ....

00006344 <center_x>:
    6344:	00000000                                ....
