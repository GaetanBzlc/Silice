
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
      1c:	fe010113          	add	sp,sp,-32 # ffe0 <Songs+0x909c>
      20:	00812c23          	sw	s0,24(sp)
      24:	00006437          	lui	s0,0x6
      28:	0ec42783          	lw	a5,236(s0) # 60ec <back>
      2c:	00912a23          	sw	s1,20(sp)
      30:	01212823          	sw	s2,16(sp)
      34:	01312623          	sw	s3,12(sp)
      38:	00112e23          	sw	ra,28(sp)
      3c:	0007a023          	sw	zero,0(a5)
      40:	00006937          	lui	s2,0x6
      44:	00100993          	li	s3,1
      48:	000064b7          	lui	s1,0x6
      4c:	00004097          	auipc	ra,0x4
      50:	798080e7          	jalr	1944(ra) # 47e4 <Init_menu>
      54:	0ea92823          	sw	a0,240(s2) # 60f0 <situation>
      58:	04051263          	bnez	a0,9c <main+0x80>
      5c:	0ec42583          	lw	a1,236(s0)
      60:	13c48513          	add	a0,s1,316 # 613c <Album>
      64:	00005097          	auipc	ra,0x5
      68:	b64080e7          	jalr	-1180(ra) # 4bc8 <audio_menu>
      6c:	0ec42783          	lw	a5,236(s0)
      70:	0007a703          	lw	a4,0(a5)
      74:	00070663          	beqz	a4,80 <main+0x64>
      78:	0007a023          	sw	zero,0(a5)
      7c:	fd1ff06f          	j	4c <main+0x30>
      80:	13c48513          	add	a0,s1,316
      84:	00005097          	auipc	ra,0x5
      88:	150080e7          	jalr	336(ra) # 51d4 <Select_and_play_Song>
      8c:	0ec42783          	lw	a5,236(s0)
      90:	0007a703          	lw	a4,0(a5)
      94:	fc0704e3          	beqz	a4,5c <main+0x40>
      98:	fe1ff06f          	j	78 <main+0x5c>
      9c:	fb3518e3          	bne	a0,s3,4c <main+0x30>
      a0:	00006097          	auipc	ra,0x6
      a4:	a2c080e7          	jalr	-1492(ra) # 5acc <Game_menu>
      a8:	fa5ff06f          	j	4c <main+0x30>

000000ac <sdcard_ponder>:
      ac:	fe010113          	add	sp,sp,-32
      b0:	00812e23          	sw	s0,28(sp)
      b4:	02010413          	add	s0,sp,32
      b8:	fe042623          	sw	zero,-20(s0)
      bc:	fe042423          	sw	zero,-24(s0)
      c0:	0380006f          	j	f8 <sdcard_ponder+0x4c>
      c4:	000067b7          	lui	a5,0x6
      c8:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
      cc:	fec42703          	lw	a4,-20(s0)
      d0:	00676713          	or	a4,a4,6
      d4:	00e7a023          	sw	a4,0(a5)
      d8:	00100713          	li	a4,1
      dc:	fec42783          	lw	a5,-20(s0)
      e0:	40f707b3          	sub	a5,a4,a5
      e4:	fef42623          	sw	a5,-20(s0)
      e8:	00000013          	nop
      ec:	fe842783          	lw	a5,-24(s0)
      f0:	00178793          	add	a5,a5,1
      f4:	fef42423          	sw	a5,-24(s0)
      f8:	fe842703          	lw	a4,-24(s0)
      fc:	00f00793          	li	a5,15
     100:	fce7d2e3          	bge	a5,a4,c4 <sdcard_ponder+0x18>
     104:	00000013          	nop
     108:	00000013          	nop
     10c:	01c12403          	lw	s0,28(sp)
     110:	02010113          	add	sp,sp,32
     114:	00008067          	ret

00000118 <sdcard_send>:
     118:	fd010113          	add	sp,sp,-48
     11c:	02112623          	sw	ra,44(sp)
     120:	02812423          	sw	s0,40(sp)
     124:	03010413          	add	s0,sp,48
     128:	fca42e23          	sw	a0,-36(s0)
     12c:	fe042623          	sw	zero,-20(s0)
     130:	fe042423          	sw	zero,-24(s0)
     134:	fdc42783          	lw	a5,-36(s0)
     138:	fef42223          	sw	a5,-28(s0)
     13c:	fe442783          	lw	a5,-28(s0)
     140:	4077d793          	sra	a5,a5,0x7
     144:	0017f793          	and	a5,a5,1
     148:	fef42423          	sw	a5,-24(s0)
     14c:	fec42783          	lw	a5,-20(s0)
     150:	fe442703          	lw	a4,-28(s0)
     154:	00f717b3          	sll	a5,a4,a5
     158:	fef42223          	sw	a5,-28(s0)
     15c:	fe842783          	lw	a5,-24(s0)
     160:	00179693          	sll	a3,a5,0x1
     164:	000067b7          	lui	a5,0x6
     168:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     16c:	fec42703          	lw	a4,-20(s0)
     170:	00e6e733          	or	a4,a3,a4
     174:	00e7a023          	sw	a4,0(a5)
     178:	00100713          	li	a4,1
     17c:	fec42783          	lw	a5,-20(s0)
     180:	40f707b3          	sub	a5,a4,a5
     184:	fef42623          	sw	a5,-20(s0)
     188:	fe442783          	lw	a5,-28(s0)
     18c:	4077d793          	sra	a5,a5,0x7
     190:	0017f793          	and	a5,a5,1
     194:	fef42423          	sw	a5,-24(s0)
     198:	fec42783          	lw	a5,-20(s0)
     19c:	fe442703          	lw	a4,-28(s0)
     1a0:	00f717b3          	sll	a5,a4,a5
     1a4:	fef42223          	sw	a5,-28(s0)
     1a8:	fe842783          	lw	a5,-24(s0)
     1ac:	00179693          	sll	a3,a5,0x1
     1b0:	000067b7          	lui	a5,0x6
     1b4:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     1b8:	fec42703          	lw	a4,-20(s0)
     1bc:	00e6e733          	or	a4,a3,a4
     1c0:	00e7a023          	sw	a4,0(a5)
     1c4:	00100713          	li	a4,1
     1c8:	fec42783          	lw	a5,-20(s0)
     1cc:	40f707b3          	sub	a5,a4,a5
     1d0:	fef42623          	sw	a5,-20(s0)
     1d4:	fe442783          	lw	a5,-28(s0)
     1d8:	4077d793          	sra	a5,a5,0x7
     1dc:	0017f793          	and	a5,a5,1
     1e0:	fef42423          	sw	a5,-24(s0)
     1e4:	fec42783          	lw	a5,-20(s0)
     1e8:	fe442703          	lw	a4,-28(s0)
     1ec:	00f717b3          	sll	a5,a4,a5
     1f0:	fef42223          	sw	a5,-28(s0)
     1f4:	fe842783          	lw	a5,-24(s0)
     1f8:	00179693          	sll	a3,a5,0x1
     1fc:	000067b7          	lui	a5,0x6
     200:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     204:	fec42703          	lw	a4,-20(s0)
     208:	00e6e733          	or	a4,a3,a4
     20c:	00e7a023          	sw	a4,0(a5)
     210:	00100713          	li	a4,1
     214:	fec42783          	lw	a5,-20(s0)
     218:	40f707b3          	sub	a5,a4,a5
     21c:	fef42623          	sw	a5,-20(s0)
     220:	fe442783          	lw	a5,-28(s0)
     224:	4077d793          	sra	a5,a5,0x7
     228:	0017f793          	and	a5,a5,1
     22c:	fef42423          	sw	a5,-24(s0)
     230:	fec42783          	lw	a5,-20(s0)
     234:	fe442703          	lw	a4,-28(s0)
     238:	00f717b3          	sll	a5,a4,a5
     23c:	fef42223          	sw	a5,-28(s0)
     240:	fe842783          	lw	a5,-24(s0)
     244:	00179693          	sll	a3,a5,0x1
     248:	000067b7          	lui	a5,0x6
     24c:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     250:	fec42703          	lw	a4,-20(s0)
     254:	00e6e733          	or	a4,a3,a4
     258:	00e7a023          	sw	a4,0(a5)
     25c:	00100713          	li	a4,1
     260:	fec42783          	lw	a5,-20(s0)
     264:	40f707b3          	sub	a5,a4,a5
     268:	fef42623          	sw	a5,-20(s0)
     26c:	fe442783          	lw	a5,-28(s0)
     270:	4077d793          	sra	a5,a5,0x7
     274:	0017f793          	and	a5,a5,1
     278:	fef42423          	sw	a5,-24(s0)
     27c:	fec42783          	lw	a5,-20(s0)
     280:	fe442703          	lw	a4,-28(s0)
     284:	00f717b3          	sll	a5,a4,a5
     288:	fef42223          	sw	a5,-28(s0)
     28c:	fe842783          	lw	a5,-24(s0)
     290:	00179693          	sll	a3,a5,0x1
     294:	000067b7          	lui	a5,0x6
     298:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     29c:	fec42703          	lw	a4,-20(s0)
     2a0:	00e6e733          	or	a4,a3,a4
     2a4:	00e7a023          	sw	a4,0(a5)
     2a8:	00100713          	li	a4,1
     2ac:	fec42783          	lw	a5,-20(s0)
     2b0:	40f707b3          	sub	a5,a4,a5
     2b4:	fef42623          	sw	a5,-20(s0)
     2b8:	fe442783          	lw	a5,-28(s0)
     2bc:	4077d793          	sra	a5,a5,0x7
     2c0:	0017f793          	and	a5,a5,1
     2c4:	fef42423          	sw	a5,-24(s0)
     2c8:	fec42783          	lw	a5,-20(s0)
     2cc:	fe442703          	lw	a4,-28(s0)
     2d0:	00f717b3          	sll	a5,a4,a5
     2d4:	fef42223          	sw	a5,-28(s0)
     2d8:	fe842783          	lw	a5,-24(s0)
     2dc:	00179693          	sll	a3,a5,0x1
     2e0:	000067b7          	lui	a5,0x6
     2e4:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     2e8:	fec42703          	lw	a4,-20(s0)
     2ec:	00e6e733          	or	a4,a3,a4
     2f0:	00e7a023          	sw	a4,0(a5)
     2f4:	00100713          	li	a4,1
     2f8:	fec42783          	lw	a5,-20(s0)
     2fc:	40f707b3          	sub	a5,a4,a5
     300:	fef42623          	sw	a5,-20(s0)
     304:	fe442783          	lw	a5,-28(s0)
     308:	4077d793          	sra	a5,a5,0x7
     30c:	0017f793          	and	a5,a5,1
     310:	fef42423          	sw	a5,-24(s0)
     314:	fec42783          	lw	a5,-20(s0)
     318:	fe442703          	lw	a4,-28(s0)
     31c:	00f717b3          	sll	a5,a4,a5
     320:	fef42223          	sw	a5,-28(s0)
     324:	fe842783          	lw	a5,-24(s0)
     328:	00179693          	sll	a3,a5,0x1
     32c:	000067b7          	lui	a5,0x6
     330:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     334:	fec42703          	lw	a4,-20(s0)
     338:	00e6e733          	or	a4,a3,a4
     33c:	00e7a023          	sw	a4,0(a5)
     340:	00100713          	li	a4,1
     344:	fec42783          	lw	a5,-20(s0)
     348:	40f707b3          	sub	a5,a4,a5
     34c:	fef42623          	sw	a5,-20(s0)
     350:	fe442783          	lw	a5,-28(s0)
     354:	4077d793          	sra	a5,a5,0x7
     358:	0017f793          	and	a5,a5,1
     35c:	fef42423          	sw	a5,-24(s0)
     360:	fec42783          	lw	a5,-20(s0)
     364:	fe442703          	lw	a4,-28(s0)
     368:	00f717b3          	sll	a5,a4,a5
     36c:	fef42223          	sw	a5,-28(s0)
     370:	fe842783          	lw	a5,-24(s0)
     374:	00179693          	sll	a3,a5,0x1
     378:	000067b7          	lui	a5,0x6
     37c:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     380:	fec42703          	lw	a4,-20(s0)
     384:	00e6e733          	or	a4,a3,a4
     388:	00e7a023          	sw	a4,0(a5)
     38c:	00100713          	li	a4,1
     390:	fec42783          	lw	a5,-20(s0)
     394:	40f707b3          	sub	a5,a4,a5
     398:	fef42623          	sw	a5,-20(s0)
     39c:	fe442783          	lw	a5,-28(s0)
     3a0:	4077d793          	sra	a5,a5,0x7
     3a4:	0017f793          	and	a5,a5,1
     3a8:	fef42423          	sw	a5,-24(s0)
     3ac:	fec42783          	lw	a5,-20(s0)
     3b0:	fe442703          	lw	a4,-28(s0)
     3b4:	00f717b3          	sll	a5,a4,a5
     3b8:	fef42223          	sw	a5,-28(s0)
     3bc:	fe842783          	lw	a5,-24(s0)
     3c0:	00179693          	sll	a3,a5,0x1
     3c4:	000067b7          	lui	a5,0x6
     3c8:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     3cc:	fec42703          	lw	a4,-20(s0)
     3d0:	00e6e733          	or	a4,a3,a4
     3d4:	00e7a023          	sw	a4,0(a5)
     3d8:	00100713          	li	a4,1
     3dc:	fec42783          	lw	a5,-20(s0)
     3e0:	40f707b3          	sub	a5,a4,a5
     3e4:	fef42623          	sw	a5,-20(s0)
     3e8:	fe442783          	lw	a5,-28(s0)
     3ec:	4077d793          	sra	a5,a5,0x7
     3f0:	0017f793          	and	a5,a5,1
     3f4:	fef42423          	sw	a5,-24(s0)
     3f8:	fec42783          	lw	a5,-20(s0)
     3fc:	fe442703          	lw	a4,-28(s0)
     400:	00f717b3          	sll	a5,a4,a5
     404:	fef42223          	sw	a5,-28(s0)
     408:	fe842783          	lw	a5,-24(s0)
     40c:	00179693          	sll	a3,a5,0x1
     410:	000067b7          	lui	a5,0x6
     414:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     418:	fec42703          	lw	a4,-20(s0)
     41c:	00e6e733          	or	a4,a3,a4
     420:	00e7a023          	sw	a4,0(a5)
     424:	00100713          	li	a4,1
     428:	fec42783          	lw	a5,-20(s0)
     42c:	40f707b3          	sub	a5,a4,a5
     430:	fef42623          	sw	a5,-20(s0)
     434:	fe442783          	lw	a5,-28(s0)
     438:	4077d793          	sra	a5,a5,0x7
     43c:	0017f793          	and	a5,a5,1
     440:	fef42423          	sw	a5,-24(s0)
     444:	fec42783          	lw	a5,-20(s0)
     448:	fe442703          	lw	a4,-28(s0)
     44c:	00f717b3          	sll	a5,a4,a5
     450:	fef42223          	sw	a5,-28(s0)
     454:	fe842783          	lw	a5,-24(s0)
     458:	00179693          	sll	a3,a5,0x1
     45c:	000067b7          	lui	a5,0x6
     460:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     464:	fec42703          	lw	a4,-20(s0)
     468:	00e6e733          	or	a4,a3,a4
     46c:	00e7a023          	sw	a4,0(a5)
     470:	00100713          	li	a4,1
     474:	fec42783          	lw	a5,-20(s0)
     478:	40f707b3          	sub	a5,a4,a5
     47c:	fef42623          	sw	a5,-20(s0)
     480:	fe442783          	lw	a5,-28(s0)
     484:	4077d793          	sra	a5,a5,0x7
     488:	0017f793          	and	a5,a5,1
     48c:	fef42423          	sw	a5,-24(s0)
     490:	fec42783          	lw	a5,-20(s0)
     494:	fe442703          	lw	a4,-28(s0)
     498:	00f717b3          	sll	a5,a4,a5
     49c:	fef42223          	sw	a5,-28(s0)
     4a0:	fe842783          	lw	a5,-24(s0)
     4a4:	00179693          	sll	a3,a5,0x1
     4a8:	000067b7          	lui	a5,0x6
     4ac:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     4b0:	fec42703          	lw	a4,-20(s0)
     4b4:	00e6e733          	or	a4,a3,a4
     4b8:	00e7a023          	sw	a4,0(a5)
     4bc:	00100713          	li	a4,1
     4c0:	fec42783          	lw	a5,-20(s0)
     4c4:	40f707b3          	sub	a5,a4,a5
     4c8:	fef42623          	sw	a5,-20(s0)
     4cc:	fe442783          	lw	a5,-28(s0)
     4d0:	4077d793          	sra	a5,a5,0x7
     4d4:	0017f793          	and	a5,a5,1
     4d8:	fef42423          	sw	a5,-24(s0)
     4dc:	fec42783          	lw	a5,-20(s0)
     4e0:	fe442703          	lw	a4,-28(s0)
     4e4:	00f717b3          	sll	a5,a4,a5
     4e8:	fef42223          	sw	a5,-28(s0)
     4ec:	fe842783          	lw	a5,-24(s0)
     4f0:	00179693          	sll	a3,a5,0x1
     4f4:	000067b7          	lui	a5,0x6
     4f8:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     4fc:	fec42703          	lw	a4,-20(s0)
     500:	00e6e733          	or	a4,a3,a4
     504:	00e7a023          	sw	a4,0(a5)
     508:	00100713          	li	a4,1
     50c:	fec42783          	lw	a5,-20(s0)
     510:	40f707b3          	sub	a5,a4,a5
     514:	fef42623          	sw	a5,-20(s0)
     518:	fe442783          	lw	a5,-28(s0)
     51c:	4077d793          	sra	a5,a5,0x7
     520:	0017f793          	and	a5,a5,1
     524:	fef42423          	sw	a5,-24(s0)
     528:	fec42783          	lw	a5,-20(s0)
     52c:	fe442703          	lw	a4,-28(s0)
     530:	00f717b3          	sll	a5,a4,a5
     534:	fef42223          	sw	a5,-28(s0)
     538:	fe842783          	lw	a5,-24(s0)
     53c:	00179693          	sll	a3,a5,0x1
     540:	000067b7          	lui	a5,0x6
     544:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     548:	fec42703          	lw	a4,-20(s0)
     54c:	00e6e733          	or	a4,a3,a4
     550:	00e7a023          	sw	a4,0(a5)
     554:	00100713          	li	a4,1
     558:	fec42783          	lw	a5,-20(s0)
     55c:	40f707b3          	sub	a5,a4,a5
     560:	fef42623          	sw	a5,-20(s0)
     564:	fe442783          	lw	a5,-28(s0)
     568:	4077d793          	sra	a5,a5,0x7
     56c:	0017f793          	and	a5,a5,1
     570:	fef42423          	sw	a5,-24(s0)
     574:	fec42783          	lw	a5,-20(s0)
     578:	fe442703          	lw	a4,-28(s0)
     57c:	00f717b3          	sll	a5,a4,a5
     580:	fef42223          	sw	a5,-28(s0)
     584:	fe842783          	lw	a5,-24(s0)
     588:	00179693          	sll	a3,a5,0x1
     58c:	000067b7          	lui	a5,0x6
     590:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     594:	fec42703          	lw	a4,-20(s0)
     598:	00e6e733          	or	a4,a3,a4
     59c:	00e7a023          	sw	a4,0(a5)
     5a0:	00100713          	li	a4,1
     5a4:	fec42783          	lw	a5,-20(s0)
     5a8:	40f707b3          	sub	a5,a4,a5
     5ac:	fef42623          	sw	a5,-20(s0)
     5b0:	fe442783          	lw	a5,-28(s0)
     5b4:	4077d793          	sra	a5,a5,0x7
     5b8:	0017f793          	and	a5,a5,1
     5bc:	fef42423          	sw	a5,-24(s0)
     5c0:	fec42783          	lw	a5,-20(s0)
     5c4:	fe442703          	lw	a4,-28(s0)
     5c8:	00f717b3          	sll	a5,a4,a5
     5cc:	fef42223          	sw	a5,-28(s0)
     5d0:	fe842783          	lw	a5,-24(s0)
     5d4:	00179693          	sll	a3,a5,0x1
     5d8:	000067b7          	lui	a5,0x6
     5dc:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     5e0:	fec42703          	lw	a4,-20(s0)
     5e4:	00e6e733          	or	a4,a3,a4
     5e8:	00e7a023          	sw	a4,0(a5)
     5ec:	00100713          	li	a4,1
     5f0:	fec42783          	lw	a5,-20(s0)
     5f4:	40f707b3          	sub	a5,a4,a5
     5f8:	fef42623          	sw	a5,-20(s0)
     5fc:	000067b7          	lui	a5,0x6
     600:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     604:	00200713          	li	a4,2
     608:	00e7a023          	sw	a4,0(a5)
     60c:	000067b7          	lui	a5,0x6
     610:	0f47a783          	lw	a5,244(a5) # 60f4 <sdcard_while_loading_callback>
     614:	000780e7          	jalr	a5
     618:	00000013          	nop
     61c:	02c12083          	lw	ra,44(sp)
     620:	02812403          	lw	s0,40(sp)
     624:	03010113          	add	sp,sp,48
     628:	00008067          	ret

0000062c <sdcard_read>:
     62c:	fc010113          	add	sp,sp,-64
     630:	02112e23          	sw	ra,60(sp)
     634:	02812c23          	sw	s0,56(sp)
     638:	04010413          	add	s0,sp,64
     63c:	00050793          	mv	a5,a0
     640:	00058713          	mv	a4,a1
     644:	fcf407a3          	sb	a5,-49(s0)
     648:	00070793          	mv	a5,a4
     64c:	fcf40723          	sb	a5,-50(s0)
     650:	fce44783          	lbu	a5,-50(s0)
     654:	fef42223          	sw	a5,-28(s0)
     658:	fcf44783          	lbu	a5,-49(s0)
     65c:	fef42023          	sw	a5,-32(s0)
     660:	fe042623          	sw	zero,-20(s0)
     664:	0ff00793          	li	a5,255
     668:	fef42423          	sw	a5,-24(s0)
     66c:	0600006f          	j	6cc <sdcard_read+0xa0>
     670:	000067b7          	lui	a5,0x6
     674:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     678:	00300713          	li	a4,3
     67c:	00e7a023          	sw	a4,0(a5)
     680:	fec42783          	lw	a5,-20(s0)
     684:	00178793          	add	a5,a5,1
     688:	fef42623          	sw	a5,-20(s0)
     68c:	000067b7          	lui	a5,0x6
     690:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     694:	00200713          	li	a4,2
     698:	00e7a023          	sw	a4,0(a5)
     69c:	000067b7          	lui	a5,0x6
     6a0:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     6a4:	0007a783          	lw	a5,0(a5)
     6a8:	fcf42e23          	sw	a5,-36(s0)
     6ac:	fe842783          	lw	a5,-24(s0)
     6b0:	00179793          	sll	a5,a5,0x1
     6b4:	fdc42703          	lw	a4,-36(s0)
     6b8:	00f767b3          	or	a5,a4,a5
     6bc:	fef42423          	sw	a5,-24(s0)
     6c0:	000067b7          	lui	a5,0x6
     6c4:	0f47a783          	lw	a5,244(a5) # 60f4 <sdcard_while_loading_callback>
     6c8:	000780e7          	jalr	a5
     6cc:	fe442783          	lw	a5,-28(s0)
     6d0:	00078e63          	beqz	a5,6ec <sdcard_read+0xc0>
     6d4:	fe042783          	lw	a5,-32(s0)
     6d8:	fff78793          	add	a5,a5,-1
     6dc:	fe842703          	lw	a4,-24(s0)
     6e0:	40f757b3          	sra	a5,a4,a5
     6e4:	0017f793          	and	a5,a5,1
     6e8:	f80794e3          	bnez	a5,670 <sdcard_read+0x44>
     6ec:	fe442783          	lw	a5,-28(s0)
     6f0:	00079863          	bnez	a5,700 <sdcard_read+0xd4>
     6f4:	fec42703          	lw	a4,-20(s0)
     6f8:	fe042783          	lw	a5,-32(s0)
     6fc:	f6f74ae3          	blt	a4,a5,670 <sdcard_read+0x44>
     700:	fe842783          	lw	a5,-24(s0)
     704:	0ff7f793          	zext.b	a5,a5
     708:	00078513          	mv	a0,a5
     70c:	03c12083          	lw	ra,60(sp)
     710:	03812403          	lw	s0,56(sp)
     714:	04010113          	add	sp,sp,64
     718:	00008067          	ret

0000071c <sdcard_get>:
     71c:	fd010113          	add	sp,sp,-48
     720:	02112623          	sw	ra,44(sp)
     724:	02812423          	sw	s0,40(sp)
     728:	03010413          	add	s0,sp,48
     72c:	00050793          	mv	a5,a0
     730:	00058713          	mv	a4,a1
     734:	fcf40fa3          	sb	a5,-33(s0)
     738:	00070793          	mv	a5,a4
     73c:	fcf40f23          	sb	a5,-34(s0)
     740:	00000097          	auipc	ra,0x0
     744:	4e4080e7          	jalr	1252(ra) # c24 <sdcard_select>
     748:	fde44703          	lbu	a4,-34(s0)
     74c:	fdf44783          	lbu	a5,-33(s0)
     750:	00070593          	mv	a1,a4
     754:	00078513          	mv	a0,a5
     758:	00000097          	auipc	ra,0x0
     75c:	ed4080e7          	jalr	-300(ra) # 62c <sdcard_read>
     760:	00050793          	mv	a5,a0
     764:	fef407a3          	sb	a5,-17(s0)
     768:	00100793          	li	a5,1
     76c:	fef42423          	sw	a5,-24(s0)
     770:	0280006f          	j	798 <sdcard_get+0x7c>
     774:	00000593          	li	a1,0
     778:	00800513          	li	a0,8
     77c:	00000097          	auipc	ra,0x0
     780:	eb0080e7          	jalr	-336(ra) # 62c <sdcard_read>
     784:	00050793          	mv	a5,a0
     788:	fef407a3          	sb	a5,-17(s0)
     78c:	fe842783          	lw	a5,-24(s0)
     790:	00178793          	add	a5,a5,1
     794:	fef42423          	sw	a5,-24(s0)
     798:	fdf44783          	lbu	a5,-33(s0)
     79c:	0037d793          	srl	a5,a5,0x3
     7a0:	0ff7f793          	zext.b	a5,a5
     7a4:	00078713          	mv	a4,a5
     7a8:	fe842783          	lw	a5,-24(s0)
     7ac:	fce7c4e3          	blt	a5,a4,774 <sdcard_get+0x58>
     7b0:	00000097          	auipc	ra,0x0
     7b4:	488080e7          	jalr	1160(ra) # c38 <sdcard_unselect>
     7b8:	fef44783          	lbu	a5,-17(s0)
     7bc:	00078513          	mv	a0,a5
     7c0:	02c12083          	lw	ra,44(sp)
     7c4:	02812403          	lw	s0,40(sp)
     7c8:	03010113          	add	sp,sp,48
     7cc:	00008067          	ret

000007d0 <sdcard_cmd>:
     7d0:	fd010113          	add	sp,sp,-48
     7d4:	02112623          	sw	ra,44(sp)
     7d8:	02812423          	sw	s0,40(sp)
     7dc:	03010413          	add	s0,sp,48
     7e0:	fca42e23          	sw	a0,-36(s0)
     7e4:	00000097          	auipc	ra,0x0
     7e8:	440080e7          	jalr	1088(ra) # c24 <sdcard_select>
     7ec:	fe042623          	sw	zero,-20(s0)
     7f0:	02c0006f          	j	81c <sdcard_cmd+0x4c>
     7f4:	fec42783          	lw	a5,-20(s0)
     7f8:	fdc42703          	lw	a4,-36(s0)
     7fc:	00f707b3          	add	a5,a4,a5
     800:	0007c783          	lbu	a5,0(a5)
     804:	00078513          	mv	a0,a5
     808:	00000097          	auipc	ra,0x0
     80c:	910080e7          	jalr	-1776(ra) # 118 <sdcard_send>
     810:	fec42783          	lw	a5,-20(s0)
     814:	00178793          	add	a5,a5,1
     818:	fef42623          	sw	a5,-20(s0)
     81c:	fec42703          	lw	a4,-20(s0)
     820:	00500793          	li	a5,5
     824:	fce7d8e3          	bge	a5,a4,7f4 <sdcard_cmd+0x24>
     828:	00000097          	auipc	ra,0x0
     82c:	410080e7          	jalr	1040(ra) # c38 <sdcard_unselect>
     830:	00000013          	nop
     834:	02c12083          	lw	ra,44(sp)
     838:	02812403          	lw	s0,40(sp)
     83c:	03010113          	add	sp,sp,48
     840:	00008067          	ret

00000844 <sdcard_start_sector>:
     844:	fe010113          	add	sp,sp,-32
     848:	00112e23          	sw	ra,28(sp)
     84c:	00812c23          	sw	s0,24(sp)
     850:	02010413          	add	s0,sp,32
     854:	fea42623          	sw	a0,-20(s0)
     858:	00000097          	auipc	ra,0x0
     85c:	3cc080e7          	jalr	972(ra) # c24 <sdcard_select>
     860:	05100793          	li	a5,81
     864:	00078513          	mv	a0,a5
     868:	00000097          	auipc	ra,0x0
     86c:	8b0080e7          	jalr	-1872(ra) # 118 <sdcard_send>
     870:	fec42783          	lw	a5,-20(s0)
     874:	0187d793          	srl	a5,a5,0x18
     878:	00078513          	mv	a0,a5
     87c:	00000097          	auipc	ra,0x0
     880:	89c080e7          	jalr	-1892(ra) # 118 <sdcard_send>
     884:	fec42783          	lw	a5,-20(s0)
     888:	4107d793          	sra	a5,a5,0x10
     88c:	0ff7f793          	zext.b	a5,a5
     890:	00078513          	mv	a0,a5
     894:	00000097          	auipc	ra,0x0
     898:	884080e7          	jalr	-1916(ra) # 118 <sdcard_send>
     89c:	fec42783          	lw	a5,-20(s0)
     8a0:	4087d793          	sra	a5,a5,0x8
     8a4:	0ff7f793          	zext.b	a5,a5
     8a8:	00078513          	mv	a0,a5
     8ac:	00000097          	auipc	ra,0x0
     8b0:	86c080e7          	jalr	-1940(ra) # 118 <sdcard_send>
     8b4:	fec42783          	lw	a5,-20(s0)
     8b8:	0ff7f793          	zext.b	a5,a5
     8bc:	00078513          	mv	a0,a5
     8c0:	00000097          	auipc	ra,0x0
     8c4:	858080e7          	jalr	-1960(ra) # 118 <sdcard_send>
     8c8:	05500793          	li	a5,85
     8cc:	00078513          	mv	a0,a5
     8d0:	00000097          	auipc	ra,0x0
     8d4:	848080e7          	jalr	-1976(ra) # 118 <sdcard_send>
     8d8:	00000097          	auipc	ra,0x0
     8dc:	360080e7          	jalr	864(ra) # c38 <sdcard_unselect>
     8e0:	fffff097          	auipc	ra,0xfffff
     8e4:	7cc080e7          	jalr	1996(ra) # ac <sdcard_ponder>
     8e8:	00100593          	li	a1,1
     8ec:	00800513          	li	a0,8
     8f0:	00000097          	auipc	ra,0x0
     8f4:	e2c080e7          	jalr	-468(ra) # 71c <sdcard_get>
     8f8:	00050793          	mv	a5,a0
     8fc:	00078513          	mv	a0,a5
     900:	01c12083          	lw	ra,28(sp)
     904:	01812403          	lw	s0,24(sp)
     908:	02010113          	add	sp,sp,32
     90c:	00008067          	ret

00000910 <sdcard_read_sector>:
     910:	fd010113          	add	sp,sp,-48
     914:	02112623          	sw	ra,44(sp)
     918:	02812423          	sw	s0,40(sp)
     91c:	03010413          	add	s0,sp,48
     920:	fca42e23          	sw	a0,-36(s0)
     924:	fcb42c23          	sw	a1,-40(s0)
     928:	fdc42503          	lw	a0,-36(s0)
     92c:	00000097          	auipc	ra,0x0
     930:	f18080e7          	jalr	-232(ra) # 844 <sdcard_start_sector>
     934:	00050793          	mv	a5,a0
     938:	fef405a3          	sb	a5,-21(s0)
     93c:	feb44783          	lbu	a5,-21(s0)
     940:	00078663          	beqz	a5,94c <sdcard_read_sector+0x3c>
     944:	fd842783          	lw	a5,-40(s0)
     948:	08c0006f          	j	9d4 <sdcard_read_sector+0xc4>
     94c:	00100593          	li	a1,1
     950:	00100513          	li	a0,1
     954:	00000097          	auipc	ra,0x0
     958:	dc8080e7          	jalr	-568(ra) # 71c <sdcard_get>
     95c:	fe042623          	sw	zero,-20(s0)
     960:	03c0006f          	j	99c <sdcard_read_sector+0x8c>
     964:	00000593          	li	a1,0
     968:	00800513          	li	a0,8
     96c:	00000097          	auipc	ra,0x0
     970:	db0080e7          	jalr	-592(ra) # 71c <sdcard_get>
     974:	00050793          	mv	a5,a0
     978:	fef401a3          	sb	a5,-29(s0)
     97c:	fd842783          	lw	a5,-40(s0)
     980:	00178713          	add	a4,a5,1
     984:	fce42c23          	sw	a4,-40(s0)
     988:	fe344703          	lbu	a4,-29(s0)
     98c:	00e78023          	sb	a4,0(a5)
     990:	fec42783          	lw	a5,-20(s0)
     994:	00178793          	add	a5,a5,1
     998:	fef42623          	sw	a5,-20(s0)
     99c:	fec42703          	lw	a4,-20(s0)
     9a0:	1ff00793          	li	a5,511
     9a4:	fce7d0e3          	bge	a5,a4,964 <sdcard_read_sector+0x54>
     9a8:	00000593          	li	a1,0
     9ac:	01000513          	li	a0,16
     9b0:	00000097          	auipc	ra,0x0
     9b4:	d6c080e7          	jalr	-660(ra) # 71c <sdcard_get>
     9b8:	00050793          	mv	a5,a0
     9bc:	fef42223          	sw	a5,-28(s0)
     9c0:	00000097          	auipc	ra,0x0
     9c4:	278080e7          	jalr	632(ra) # c38 <sdcard_unselect>
     9c8:	fffff097          	auipc	ra,0xfffff
     9cc:	6e4080e7          	jalr	1764(ra) # ac <sdcard_ponder>
     9d0:	fd842783          	lw	a5,-40(s0)
     9d4:	00078513          	mv	a0,a5
     9d8:	02c12083          	lw	ra,44(sp)
     9dc:	02812403          	lw	s0,40(sp)
     9e0:	03010113          	add	sp,sp,48
     9e4:	00008067          	ret

000009e8 <sdcard_preinit>:
     9e8:	fe010113          	add	sp,sp,-32
     9ec:	00112e23          	sw	ra,28(sp)
     9f0:	00812c23          	sw	s0,24(sp)
     9f4:	02010413          	add	s0,sp,32
     9f8:	000067b7          	lui	a5,0x6
     9fc:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     a00:	00600713          	li	a4,6
     a04:	00e7a023          	sw	a4,0(a5)
     a08:	013137b7          	lui	a5,0x1313
     a0c:	d0078513          	add	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
     a10:	00000097          	auipc	ra,0x0
     a14:	1fc080e7          	jalr	508(ra) # c0c <pause>
     a18:	fe042623          	sw	zero,-20(s0)
     a1c:	fe042423          	sw	zero,-24(s0)
     a20:	0340006f          	j	a54 <sdcard_preinit+0x6c>
     a24:	000067b7          	lui	a5,0x6
     a28:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     a2c:	fec42703          	lw	a4,-20(s0)
     a30:	00676713          	or	a4,a4,6
     a34:	00e7a023          	sw	a4,0(a5)
     a38:	00100713          	li	a4,1
     a3c:	fec42783          	lw	a5,-20(s0)
     a40:	40f707b3          	sub	a5,a4,a5
     a44:	fef42623          	sw	a5,-20(s0)
     a48:	fe842783          	lw	a5,-24(s0)
     a4c:	00178793          	add	a5,a5,1
     a50:	fef42423          	sw	a5,-24(s0)
     a54:	fe842703          	lw	a4,-24(s0)
     a58:	09f00793          	li	a5,159
     a5c:	fce7d4e3          	bge	a5,a4,a24 <sdcard_preinit+0x3c>
     a60:	000067b7          	lui	a5,0x6
     a64:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     a68:	00600713          	li	a4,6
     a6c:	00e7a023          	sw	a4,0(a5)
     a70:	00000013          	nop
     a74:	01c12083          	lw	ra,28(sp)
     a78:	01812403          	lw	s0,24(sp)
     a7c:	02010113          	add	sp,sp,32
     a80:	00008067          	ret

00000a84 <sdcard_init>:
     a84:	fe010113          	add	sp,sp,-32
     a88:	00112e23          	sw	ra,28(sp)
     a8c:	00812c23          	sw	s0,24(sp)
     a90:	02010413          	add	s0,sp,32
     a94:	000067b7          	lui	a5,0x6
     a98:	00001737          	lui	a4,0x1
     a9c:	c2070713          	add	a4,a4,-992 # c20 <sdcard_idle>
     aa0:	0ee7aa23          	sw	a4,244(a5) # 60f4 <sdcard_while_loading_callback>
     aa4:	00000097          	auipc	ra,0x0
     aa8:	f44080e7          	jalr	-188(ra) # 9e8 <sdcard_preinit>
     aac:	000067b7          	lui	a5,0x6
     ab0:	c5078513          	add	a0,a5,-944 # 5c50 <cmd0>
     ab4:	00000097          	auipc	ra,0x0
     ab8:	d1c080e7          	jalr	-740(ra) # 7d0 <sdcard_cmd>
     abc:	00100593          	li	a1,1
     ac0:	00800513          	li	a0,8
     ac4:	00000097          	auipc	ra,0x0
     ac8:	c58080e7          	jalr	-936(ra) # 71c <sdcard_get>
     acc:	00050793          	mv	a5,a0
     ad0:	fef407a3          	sb	a5,-17(s0)
     ad4:	fffff097          	auipc	ra,0xfffff
     ad8:	5d8080e7          	jalr	1496(ra) # ac <sdcard_ponder>
     adc:	fef44703          	lbu	a4,-17(s0)
     ae0:	0ff00793          	li	a5,255
     ae4:	00f71c63          	bne	a4,a5,afc <sdcard_init+0x78>
     ae8:	013137b7          	lui	a5,0x1313
     aec:	d0078513          	add	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
     af0:	00000097          	auipc	ra,0x0
     af4:	11c080e7          	jalr	284(ra) # c0c <pause>
     af8:	fadff06f          	j	aa4 <sdcard_init+0x20>
     afc:	00000013          	nop
     b00:	000067b7          	lui	a5,0x6
     b04:	c4878513          	add	a0,a5,-952 # 5c48 <cmd8>
     b08:	00000097          	auipc	ra,0x0
     b0c:	cc8080e7          	jalr	-824(ra) # 7d0 <sdcard_cmd>
     b10:	00100593          	li	a1,1
     b14:	02800513          	li	a0,40
     b18:	00000097          	auipc	ra,0x0
     b1c:	c04080e7          	jalr	-1020(ra) # 71c <sdcard_get>
     b20:	00050793          	mv	a5,a0
     b24:	fef407a3          	sb	a5,-17(s0)
     b28:	fffff097          	auipc	ra,0xfffff
     b2c:	584080e7          	jalr	1412(ra) # ac <sdcard_ponder>
     b30:	000067b7          	lui	a5,0x6
     b34:	c4078513          	add	a0,a5,-960 # 5c40 <cmd55>
     b38:	00000097          	auipc	ra,0x0
     b3c:	c98080e7          	jalr	-872(ra) # 7d0 <sdcard_cmd>
     b40:	00100593          	li	a1,1
     b44:	00800513          	li	a0,8
     b48:	00000097          	auipc	ra,0x0
     b4c:	bd4080e7          	jalr	-1068(ra) # 71c <sdcard_get>
     b50:	00050793          	mv	a5,a0
     b54:	fef407a3          	sb	a5,-17(s0)
     b58:	fffff097          	auipc	ra,0xfffff
     b5c:	554080e7          	jalr	1364(ra) # ac <sdcard_ponder>
     b60:	000067b7          	lui	a5,0x6
     b64:	c3878513          	add	a0,a5,-968 # 5c38 <acmd41>
     b68:	00000097          	auipc	ra,0x0
     b6c:	c68080e7          	jalr	-920(ra) # 7d0 <sdcard_cmd>
     b70:	00100593          	li	a1,1
     b74:	00800513          	li	a0,8
     b78:	00000097          	auipc	ra,0x0
     b7c:	ba4080e7          	jalr	-1116(ra) # 71c <sdcard_get>
     b80:	00050793          	mv	a5,a0
     b84:	fef407a3          	sb	a5,-17(s0)
     b88:	fffff097          	auipc	ra,0xfffff
     b8c:	524080e7          	jalr	1316(ra) # ac <sdcard_ponder>
     b90:	fef44783          	lbu	a5,-17(s0)
     b94:	02078863          	beqz	a5,bc4 <sdcard_init+0x140>
     b98:	00000097          	auipc	ra,0x0
     b9c:	0a0080e7          	jalr	160(ra) # c38 <sdcard_unselect>
     ba0:	fffff097          	auipc	ra,0xfffff
     ba4:	50c080e7          	jalr	1292(ra) # ac <sdcard_ponder>
     ba8:	001e87b7          	lui	a5,0x1e8
     bac:	48078513          	add	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
     bb0:	00000097          	auipc	ra,0x0
     bb4:	05c080e7          	jalr	92(ra) # c0c <pause>
     bb8:	00000097          	auipc	ra,0x0
     bbc:	06c080e7          	jalr	108(ra) # c24 <sdcard_select>
     bc0:	f71ff06f          	j	b30 <sdcard_init+0xac>
     bc4:	00000013          	nop
     bc8:	000067b7          	lui	a5,0x6
     bcc:	c3078513          	add	a0,a5,-976 # 5c30 <cmd16>
     bd0:	00000097          	auipc	ra,0x0
     bd4:	c00080e7          	jalr	-1024(ra) # 7d0 <sdcard_cmd>
     bd8:	00100593          	li	a1,1
     bdc:	00800513          	li	a0,8
     be0:	00000097          	auipc	ra,0x0
     be4:	b3c080e7          	jalr	-1220(ra) # 71c <sdcard_get>
     be8:	00050793          	mv	a5,a0
     bec:	fef407a3          	sb	a5,-17(s0)
     bf0:	fffff097          	auipc	ra,0xfffff
     bf4:	4bc080e7          	jalr	1212(ra) # ac <sdcard_ponder>
     bf8:	00000013          	nop
     bfc:	01c12083          	lw	ra,28(sp)
     c00:	01812403          	lw	s0,24(sp)
     c04:	02010113          	add	sp,sp,32
     c08:	00008067          	ret

00000c0c <pause>:
     c0c:	c0002773          	rdcycle	a4
     c10:	c00027f3          	rdcycle	a5
     c14:	40e787b3          	sub	a5,a5,a4
     c18:	fea7ece3          	bltu	a5,a0,c10 <pause+0x4>
     c1c:	00008067          	ret

00000c20 <sdcard_idle>:
     c20:	00008067          	ret

00000c24 <sdcard_select>:
     c24:	000067b7          	lui	a5,0x6
     c28:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     c2c:	00200713          	li	a4,2
     c30:	00e7a023          	sw	a4,0(a5)
     c34:	00008067          	ret

00000c38 <sdcard_unselect>:
     c38:	000067b7          	lui	a5,0x6
     c3c:	c647a783          	lw	a5,-924(a5) # 5c64 <SDCARD>
     c40:	00600713          	li	a4,6
     c44:	00e7a023          	sw	a4,0(a5)
     c48:	00008067          	ret

00000c4c <sdcard_readsector>:
     c4c:	04060663          	beqz	a2,c98 <sdcard_readsector+0x4c>
     c50:	ff010113          	add	sp,sp,-16
     c54:	00912423          	sw	s1,8(sp)
     c58:	01212223          	sw	s2,4(sp)
     c5c:	00112623          	sw	ra,12(sp)
     c60:	00050493          	mv	s1,a0
     c64:	00a60933          	add	s2,a2,a0
     c68:	00048513          	mv	a0,s1
     c6c:	00000097          	auipc	ra,0x0
     c70:	ca4080e7          	jalr	-860(ra) # 910 <sdcard_read_sector>
     c74:	00148493          	add	s1,s1,1
     c78:	00050593          	mv	a1,a0
     c7c:	fe9916e3          	bne	s2,s1,c68 <sdcard_readsector+0x1c>
     c80:	00c12083          	lw	ra,12(sp)
     c84:	00812483          	lw	s1,8(sp)
     c88:	00412903          	lw	s2,4(sp)
     c8c:	00100513          	li	a0,1
     c90:	01010113          	add	sp,sp,16
     c94:	00008067          	ret
     c98:	00000513          	li	a0,0
     c9c:	00008067          	ret

00000ca0 <sdcard_writesector>:
     ca0:	00000513          	li	a0,0
     ca4:	00008067          	ret

00000ca8 <__divsi3>:
     ca8:	06054063          	bltz	a0,d08 <__umodsi3+0x10>
     cac:	0605c663          	bltz	a1,d18 <__umodsi3+0x20>

00000cb0 <__udivsi3>:
     cb0:	00058613          	mv	a2,a1
     cb4:	00050593          	mv	a1,a0
     cb8:	fff00513          	li	a0,-1
     cbc:	02060c63          	beqz	a2,cf4 <__udivsi3+0x44>
     cc0:	00100693          	li	a3,1
     cc4:	00b67a63          	bgeu	a2,a1,cd8 <__udivsi3+0x28>
     cc8:	00c05863          	blez	a2,cd8 <__udivsi3+0x28>
     ccc:	00161613          	sll	a2,a2,0x1
     cd0:	00169693          	sll	a3,a3,0x1
     cd4:	feb66ae3          	bltu	a2,a1,cc8 <__udivsi3+0x18>
     cd8:	00000513          	li	a0,0
     cdc:	00c5e663          	bltu	a1,a2,ce8 <__udivsi3+0x38>
     ce0:	40c585b3          	sub	a1,a1,a2
     ce4:	00d56533          	or	a0,a0,a3
     ce8:	0016d693          	srl	a3,a3,0x1
     cec:	00165613          	srl	a2,a2,0x1
     cf0:	fe0696e3          	bnez	a3,cdc <__udivsi3+0x2c>
     cf4:	00008067          	ret

00000cf8 <__umodsi3>:
     cf8:	00008293          	mv	t0,ra
     cfc:	fb5ff0ef          	jal	cb0 <__udivsi3>
     d00:	00058513          	mv	a0,a1
     d04:	00028067          	jr	t0
     d08:	40a00533          	neg	a0,a0
     d0c:	0005d863          	bgez	a1,d1c <__umodsi3+0x24>
     d10:	40b005b3          	neg	a1,a1
     d14:	f95ff06f          	j	ca8 <__divsi3>
     d18:	40b005b3          	neg	a1,a1
     d1c:	00008293          	mv	t0,ra
     d20:	f89ff0ef          	jal	ca8 <__divsi3>
     d24:	40a00533          	neg	a0,a0
     d28:	00028067          	jr	t0

00000d2c <__modsi3>:
     d2c:	00008293          	mv	t0,ra
     d30:	0005ca63          	bltz	a1,d44 <__modsi3+0x18>
     d34:	00054c63          	bltz	a0,d4c <__modsi3+0x20>
     d38:	f79ff0ef          	jal	cb0 <__udivsi3>
     d3c:	00058513          	mv	a0,a1
     d40:	00028067          	jr	t0
     d44:	40b005b3          	neg	a1,a1
     d48:	fe0558e3          	bgez	a0,d38 <__modsi3+0xc>
     d4c:	40a00533          	neg	a0,a0
     d50:	f61ff0ef          	jal	cb0 <__udivsi3>
     d54:	40b00533          	neg	a0,a1
     d58:	00028067          	jr	t0

00000d5c <memset>:
     d5c:	00c50633          	add	a2,a0,a2
     d60:	00050793          	mv	a5,a0
     d64:	00c79463          	bne	a5,a2,d6c <memset+0x10>
     d68:	00008067          	ret
     d6c:	00178793          	add	a5,a5,1
     d70:	feb78fa3          	sb	a1,-1(a5)
     d74:	ff1ff06f          	j	d64 <memset+0x8>

00000d78 <memcpy>:
     d78:	00000793          	li	a5,0
     d7c:	00c79463          	bne	a5,a2,d84 <memcpy+0xc>
     d80:	00008067          	ret
     d84:	00f58733          	add	a4,a1,a5
     d88:	00074683          	lbu	a3,0(a4)
     d8c:	00f50733          	add	a4,a0,a5
     d90:	00178793          	add	a5,a5,1
     d94:	00d70023          	sb	a3,0(a4)
     d98:	fe5ff06f          	j	d7c <memcpy+0x4>

00000d9c <strlen>:
     d9c:	00050793          	mv	a5,a0
     da0:	00000513          	li	a0,0
     da4:	00a78733          	add	a4,a5,a0
     da8:	00074703          	lbu	a4,0(a4)
     dac:	00071463          	bnez	a4,db4 <strlen+0x18>
     db0:	00008067          	ret
     db4:	00150513          	add	a0,a0,1
     db8:	fedff06f          	j	da4 <strlen+0x8>

00000dbc <strncmp>:
     dbc:	00000793          	li	a5,0
     dc0:	00c79663          	bne	a5,a2,dcc <strncmp+0x10>
     dc4:	00000513          	li	a0,0
     dc8:	00008067          	ret
     dcc:	00f50733          	add	a4,a0,a5
     dd0:	00074683          	lbu	a3,0(a4)
     dd4:	00f58733          	add	a4,a1,a5
     dd8:	00074703          	lbu	a4,0(a4)
     ddc:	00e6e863          	bltu	a3,a4,dec <strncmp+0x30>
     de0:	00d76a63          	bltu	a4,a3,df4 <strncmp+0x38>
     de4:	00178793          	add	a5,a5,1
     de8:	fd9ff06f          	j	dc0 <strncmp+0x4>
     dec:	fff00513          	li	a0,-1
     df0:	00008067          	ret
     df4:	00100513          	li	a0,1
     df8:	00008067          	ret

00000dfc <strncpy>:
     dfc:	00000793          	li	a5,0
     e00:	00f61463          	bne	a2,a5,e08 <strncpy+0xc>
     e04:	00008067          	ret
     e08:	00f58733          	add	a4,a1,a5
     e0c:	00074683          	lbu	a3,0(a4)
     e10:	00f50733          	add	a4,a0,a5
     e14:	00178793          	add	a5,a5,1
     e18:	00d70023          	sb	a3,0(a4)
     e1c:	fe5ff06f          	j	e00 <strncpy+0x4>

00000e20 <strcpy>:
     e20:	0005c783          	lbu	a5,0(a1)
     e24:	00079663          	bnez	a5,e30 <strcpy+0x10>
     e28:	00050023          	sb	zero,0(a0)
     e2c:	00008067          	ret
     e30:	00150513          	add	a0,a0,1
     e34:	00158593          	add	a1,a1,1
     e38:	fef50fa3          	sb	a5,-1(a0)
     e3c:	fe5ff06f          	j	e20 <strcpy>

00000e40 <strcat>:
     e40:	00050793          	mv	a5,a0
     e44:	0007c683          	lbu	a3,0(a5)
     e48:	00078713          	mv	a4,a5
     e4c:	00178793          	add	a5,a5,1
     e50:	fe069ae3          	bnez	a3,e44 <strcat+0x4>
     e54:	0005c783          	lbu	a5,0(a1)
     e58:	00158593          	add	a1,a1,1
     e5c:	00170713          	add	a4,a4,1
     e60:	fef70fa3          	sb	a5,-1(a4)
     e64:	fe0798e3          	bnez	a5,e54 <strcat+0x14>
     e68:	00008067          	ret

00000e6c <oled_wait>:
     e6c:	00000013          	nop
     e70:	00000013          	nop
     e74:	00000013          	nop
     e78:	00000013          	nop
     e7c:	00000013          	nop
     e80:	00000013          	nop
     e84:	00000013          	nop
     e88:	00008067          	ret

00000e8c <oled_init_mode>:
     e8c:	000067b7          	lui	a5,0x6
     e90:	c687a703          	lw	a4,-920(a5) # 5c68 <OLED_RST>
     e94:	ff010113          	add	sp,sp,-16
     e98:	00912223          	sw	s1,4(sp)
     e9c:	00112623          	sw	ra,12(sp)
     ea0:	00812423          	sw	s0,8(sp)
     ea4:	00072023          	sw	zero,0(a4)
     ea8:	00050493          	mv	s1,a0
     eac:	00040737          	lui	a4,0x40
     eb0:	00000013          	nop
     eb4:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     eb8:	fe071ce3          	bnez	a4,eb0 <oled_init_mode+0x24>
     ebc:	c687a703          	lw	a4,-920(a5)
     ec0:	00100693          	li	a3,1
     ec4:	00d72023          	sw	a3,0(a4)
     ec8:	00040737          	lui	a4,0x40
     ecc:	00000013          	nop
     ed0:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     ed4:	fe071ce3          	bnez	a4,ecc <oled_init_mode+0x40>
     ed8:	c687a783          	lw	a5,-920(a5)
     edc:	0007a023          	sw	zero,0(a5)
     ee0:	000407b7          	lui	a5,0x40
     ee4:	00000013          	nop
     ee8:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     eec:	fe079ce3          	bnez	a5,ee4 <oled_init_mode+0x58>
     ef0:	00006737          	lui	a4,0x6
     ef4:	c6c72783          	lw	a5,-916(a4) # 5c6c <OLED>
     ef8:	2af00693          	li	a3,687
     efc:	00d7a023          	sw	a3,0(a5)
     f00:	000407b7          	lui	a5,0x40
     f04:	00000013          	nop
     f08:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     f0c:	fe079ce3          	bnez	a5,f04 <oled_init_mode+0x78>
     f10:	c6c72403          	lw	s0,-916(a4)
     f14:	2a000793          	li	a5,672
     f18:	00f42023          	sw	a5,0(s0)
     f1c:	00000097          	auipc	ra,0x0
     f20:	f50080e7          	jalr	-176(ra) # e6c <oled_wait>
     f24:	4a000793          	li	a5,1184
     f28:	00048463          	beqz	s1,f30 <oled_init_mode+0xa4>
     f2c:	42000793          	li	a5,1056
     f30:	00f42023          	sw	a5,0(s0)
     f34:	00000097          	auipc	ra,0x0
     f38:	f38080e7          	jalr	-200(ra) # e6c <oled_wait>
     f3c:	2fd00793          	li	a5,765
     f40:	00f42023          	sw	a5,0(s0)
     f44:	00000097          	auipc	ra,0x0
     f48:	f28080e7          	jalr	-216(ra) # e6c <oled_wait>
     f4c:	4b100793          	li	a5,1201
     f50:	00f42023          	sw	a5,0(s0)
     f54:	00000097          	auipc	ra,0x0
     f58:	f18080e7          	jalr	-232(ra) # e6c <oled_wait>
     f5c:	2a200793          	li	a5,674
     f60:	00f42023          	sw	a5,0(s0)
     f64:	00000097          	auipc	ra,0x0
     f68:	f08080e7          	jalr	-248(ra) # e6c <oled_wait>
     f6c:	40000793          	li	a5,1024
     f70:	00f42023          	sw	a5,0(s0)
     f74:	00812403          	lw	s0,8(sp)
     f78:	00c12083          	lw	ra,12(sp)
     f7c:	00412483          	lw	s1,4(sp)
     f80:	01010113          	add	sp,sp,16
     f84:	00000317          	auipc	t1,0x0
     f88:	ee830067          	jr	-280(t1) # e6c <oled_wait>

00000f8c <oled_init>:
     f8c:	00000513          	li	a0,0
     f90:	00000317          	auipc	t1,0x0
     f94:	efc30067          	jr	-260(t1) # e8c <oled_init_mode>

00000f98 <oled_fullscreen>:
     f98:	ff010113          	add	sp,sp,-16
     f9c:	000067b7          	lui	a5,0x6
     fa0:	00812423          	sw	s0,8(sp)
     fa4:	c6c7a403          	lw	s0,-916(a5) # 5c6c <OLED>
     fa8:	00112623          	sw	ra,12(sp)
     fac:	00912223          	sw	s1,4(sp)
     fb0:	01212023          	sw	s2,0(sp)
     fb4:	21500793          	li	a5,533
     fb8:	00f42023          	sw	a5,0(s0)
     fbc:	40000913          	li	s2,1024
     fc0:	00000097          	auipc	ra,0x0
     fc4:	eac080e7          	jalr	-340(ra) # e6c <oled_wait>
     fc8:	47f00493          	li	s1,1151
     fcc:	01242023          	sw	s2,0(s0)
     fd0:	00000097          	auipc	ra,0x0
     fd4:	e9c080e7          	jalr	-356(ra) # e6c <oled_wait>
     fd8:	00942023          	sw	s1,0(s0)
     fdc:	00000097          	auipc	ra,0x0
     fe0:	e90080e7          	jalr	-368(ra) # e6c <oled_wait>
     fe4:	27500793          	li	a5,629
     fe8:	00f42023          	sw	a5,0(s0)
     fec:	00000097          	auipc	ra,0x0
     ff0:	e80080e7          	jalr	-384(ra) # e6c <oled_wait>
     ff4:	01242023          	sw	s2,0(s0)
     ff8:	00000097          	auipc	ra,0x0
     ffc:	e74080e7          	jalr	-396(ra) # e6c <oled_wait>
    1000:	00942023          	sw	s1,0(s0)
    1004:	00000097          	auipc	ra,0x0
    1008:	e68080e7          	jalr	-408(ra) # e6c <oled_wait>
    100c:	25c00793          	li	a5,604
    1010:	00f42023          	sw	a5,0(s0)
    1014:	00812403          	lw	s0,8(sp)
    1018:	00c12083          	lw	ra,12(sp)
    101c:	00412483          	lw	s1,4(sp)
    1020:	00012903          	lw	s2,0(sp)
    1024:	01010113          	add	sp,sp,16
    1028:	00000317          	auipc	t1,0x0
    102c:	e4430067          	jr	-444(t1) # e6c <oled_wait>

00001030 <display_framebuffer>:
    1030:	000067b7          	lui	a5,0x6
    1034:	c5c7a503          	lw	a0,-932(a5) # 5c5c <DISPLAY>
    1038:	00008067          	ret

0000103c <display_set_cursor>:
    103c:	000067b7          	lui	a5,0x6
    1040:	10a7a023          	sw	a0,256(a5) # 6100 <cursor_x>
    1044:	000067b7          	lui	a5,0x6
    1048:	0eb7ae23          	sw	a1,252(a5) # 60fc <cursor_y>
    104c:	00008067          	ret

00001050 <display_set_front_back_color>:
    1050:	000067b7          	lui	a5,0x6
    1054:	0ea78ca3          	sb	a0,249(a5) # 60f9 <front_color>
    1058:	000067b7          	lui	a5,0x6
    105c:	0eb78c23          	sb	a1,248(a5) # 60f8 <back_color>
    1060:	00008067          	ret

00001064 <display_putchar>:
    1064:	00a00793          	li	a5,10
    1068:	00006737          	lui	a4,0x6
    106c:	02f51663          	bne	a0,a5,1098 <display_putchar+0x34>
    1070:	10072023          	sw	zero,256(a4) # 6100 <cursor_x>
    1074:	00006737          	lui	a4,0x6
    1078:	0fc72783          	lw	a5,252(a4) # 60fc <cursor_y>
    107c:	00878793          	add	a5,a5,8
    1080:	0ef72e23          	sw	a5,252(a4)
    1084:	07f00713          	li	a4,127
    1088:	00f75663          	bge	a4,a5,1094 <display_putchar+0x30>
    108c:	000067b7          	lui	a5,0x6
    1090:	0e07ae23          	sw	zero,252(a5) # 60fc <cursor_y>
    1094:	00008067          	ret
    1098:	ff010113          	add	sp,sp,-16
    109c:	00812623          	sw	s0,12(sp)
    10a0:	01f00793          	li	a5,31
    10a4:	0ca7d263          	bge	a5,a0,1168 <display_putchar+0x104>
    10a8:	00006e37          	lui	t3,0x6
    10ac:	0fce2783          	lw	a5,252(t3) # 60fc <cursor_y>
    10b0:	08000593          	li	a1,128
    10b4:	40f585b3          	sub	a1,a1,a5
    10b8:	00800793          	li	a5,8
    10bc:	00b7d463          	bge	a5,a1,10c4 <display_putchar+0x60>
    10c0:	00800593          	li	a1,8
    10c4:	10072783          	lw	a5,256(a4)
    10c8:	08000813          	li	a6,128
    10cc:	40f80833          	sub	a6,a6,a5
    10d0:	00500793          	li	a5,5
    10d4:	0107d463          	bge	a5,a6,10dc <display_putchar+0x78>
    10d8:	00500813          	li	a6,5
    10dc:	000067b7          	lui	a5,0x6
    10e0:	c5c7a283          	lw	t0,-932(a5) # 5c5c <DISPLAY>
    10e4:	00251693          	sll	a3,a0,0x2
    10e8:	000067b7          	lui	a5,0x6
    10ec:	00a686b3          	add	a3,a3,a0
    10f0:	c7878793          	add	a5,a5,-904 # 5c78 <font>
    10f4:	00f686b3          	add	a3,a3,a5
    10f8:	00000613          	li	a2,0
    10fc:	00100f93          	li	t6,1
    1100:	000063b7          	lui	t2,0x6
    1104:	00006437          	lui	s0,0x6
    1108:	06b65063          	bge	a2,a1,1168 <display_putchar+0x104>
    110c:	00cf9f33          	sll	t5,t6,a2
    1110:	00068893          	mv	a7,a3
    1114:	00000513          	li	a0,0
    1118:	03c0006f          	j	1154 <display_putchar+0xf0>
    111c:	f608c783          	lbu	a5,-160(a7)
    1120:	01e7f7b3          	and	a5,a5,t5
    1124:	02078e63          	beqz	a5,1160 <display_putchar+0xfc>
    1128:	0f944e83          	lbu	t4,249(s0) # 60f9 <front_color>
    112c:	10072783          	lw	a5,256(a4)
    1130:	0fce2303          	lw	t1,252(t3)
    1134:	00188893          	add	a7,a7,1
    1138:	00f507b3          	add	a5,a0,a5
    113c:	00779793          	sll	a5,a5,0x7
    1140:	00660333          	add	t1,a2,t1
    1144:	006787b3          	add	a5,a5,t1
    1148:	00f287b3          	add	a5,t0,a5
    114c:	01d78023          	sb	t4,0(a5)
    1150:	00150513          	add	a0,a0,1
    1154:	fd0544e3          	blt	a0,a6,111c <display_putchar+0xb8>
    1158:	00160613          	add	a2,a2,1
    115c:	fadff06f          	j	1108 <display_putchar+0xa4>
    1160:	0f83ce83          	lbu	t4,248(t2) # 60f8 <back_color>
    1164:	fc9ff06f          	j	112c <display_putchar+0xc8>
    1168:	10072783          	lw	a5,256(a4)
    116c:	07f00693          	li	a3,127
    1170:	00578793          	add	a5,a5,5
    1174:	00f6c663          	blt	a3,a5,1180 <display_putchar+0x11c>
    1178:	10f72023          	sw	a5,256(a4)
    117c:	0240006f          	j	11a0 <display_putchar+0x13c>
    1180:	10072023          	sw	zero,256(a4)
    1184:	00006737          	lui	a4,0x6
    1188:	0fc72783          	lw	a5,252(a4) # 60fc <cursor_y>
    118c:	00878793          	add	a5,a5,8
    1190:	0ef72e23          	sw	a5,252(a4)
    1194:	00f6d663          	bge	a3,a5,11a0 <display_putchar+0x13c>
    1198:	000067b7          	lui	a5,0x6
    119c:	0e07ae23          	sw	zero,252(a5) # 60fc <cursor_y>
    11a0:	00c12403          	lw	s0,12(sp)
    11a4:	01010113          	add	sp,sp,16
    11a8:	00008067          	ret

000011ac <display_refresh>:
    11ac:	00008067          	ret

000011b0 <print_string>:
    11b0:	ff010113          	add	sp,sp,-16
    11b4:	00812423          	sw	s0,8(sp)
    11b8:	00912223          	sw	s1,4(sp)
    11bc:	00112623          	sw	ra,12(sp)
    11c0:	00050413          	mv	s0,a0
    11c4:	000064b7          	lui	s1,0x6
    11c8:	00044503          	lbu	a0,0(s0)
    11cc:	00051c63          	bnez	a0,11e4 <print_string+0x34>
    11d0:	00c12083          	lw	ra,12(sp)
    11d4:	00812403          	lw	s0,8(sp)
    11d8:	00412483          	lw	s1,4(sp)
    11dc:	01010113          	add	sp,sp,16
    11e0:	00008067          	ret
    11e4:	1044a783          	lw	a5,260(s1) # 6104 <f_putchar>
    11e8:	00140413          	add	s0,s0,1
    11ec:	000780e7          	jalr	a5
    11f0:	fd9ff06f          	j	11c8 <print_string+0x18>

000011f4 <print_dec>:
    11f4:	ef010113          	add	sp,sp,-272
    11f8:	10812423          	sw	s0,264(sp)
    11fc:	10912223          	sw	s1,260(sp)
    1200:	10112623          	sw	ra,268(sp)
    1204:	11212023          	sw	s2,256(sp)
    1208:	00050413          	mv	s0,a0
    120c:	000064b7          	lui	s1,0x6
    1210:	08045063          	bgez	s0,1290 <print_dec+0x9c>
    1214:	1044a783          	lw	a5,260(s1) # 6104 <f_putchar>
    1218:	02d00513          	li	a0,45
    121c:	40800433          	neg	s0,s0
    1220:	000780e7          	jalr	a5
    1224:	fedff06f          	j	1210 <print_dec+0x1c>
    1228:	00040513          	mv	a0,s0
    122c:	00a00593          	li	a1,10
    1230:	00000097          	auipc	ra,0x0
    1234:	a78080e7          	jalr	-1416(ra) # ca8 <__divsi3>
    1238:	00251793          	sll	a5,a0,0x2
    123c:	00f507b3          	add	a5,a0,a5
    1240:	00179793          	sll	a5,a5,0x1
    1244:	40f40433          	sub	s0,s0,a5
    1248:	00148493          	add	s1,s1,1
    124c:	fe848fa3          	sb	s0,-1(s1)
    1250:	00050413          	mv	s0,a0
    1254:	fc041ae3          	bnez	s0,1228 <print_dec+0x34>
    1258:	fd2488e3          	beq	s1,s2,1228 <print_dec+0x34>
    125c:	00006437          	lui	s0,0x6
    1260:	fff4c503          	lbu	a0,-1(s1)
    1264:	10442783          	lw	a5,260(s0) # 6104 <f_putchar>
    1268:	fff48493          	add	s1,s1,-1
    126c:	03050513          	add	a0,a0,48
    1270:	000780e7          	jalr	a5
    1274:	ff2496e3          	bne	s1,s2,1260 <print_dec+0x6c>
    1278:	10c12083          	lw	ra,268(sp)
    127c:	10812403          	lw	s0,264(sp)
    1280:	10412483          	lw	s1,260(sp)
    1284:	10012903          	lw	s2,256(sp)
    1288:	11010113          	add	sp,sp,272
    128c:	00008067          	ret
    1290:	00010493          	mv	s1,sp
    1294:	00048913          	mv	s2,s1
    1298:	fbdff06f          	j	1254 <print_dec+0x60>

0000129c <print_hex_digits>:
    129c:	fe010113          	add	sp,sp,-32
    12a0:	00812c23          	sw	s0,24(sp)
    12a4:	01212823          	sw	s2,16(sp)
    12a8:	fff58413          	add	s0,a1,-1
    12ac:	00006937          	lui	s2,0x6
    12b0:	00912a23          	sw	s1,20(sp)
    12b4:	01312623          	sw	s3,12(sp)
    12b8:	00112e23          	sw	ra,28(sp)
    12bc:	00050493          	mv	s1,a0
    12c0:	00241413          	sll	s0,s0,0x2
    12c4:	e5890913          	add	s2,s2,-424 # 5e58 <font+0x1e0>
    12c8:	000069b7          	lui	s3,0x6
    12cc:	02045063          	bgez	s0,12ec <print_hex_digits+0x50>
    12d0:	01c12083          	lw	ra,28(sp)
    12d4:	01812403          	lw	s0,24(sp)
    12d8:	01412483          	lw	s1,20(sp)
    12dc:	01012903          	lw	s2,16(sp)
    12e0:	00c12983          	lw	s3,12(sp)
    12e4:	02010113          	add	sp,sp,32
    12e8:	00008067          	ret
    12ec:	0084d7b3          	srl	a5,s1,s0
    12f0:	00f7f793          	and	a5,a5,15
    12f4:	00f907b3          	add	a5,s2,a5
    12f8:	1049a703          	lw	a4,260(s3) # 6104 <f_putchar>
    12fc:	0007c503          	lbu	a0,0(a5)
    1300:	ffc40413          	add	s0,s0,-4
    1304:	000700e7          	jalr	a4
    1308:	fc5ff06f          	j	12cc <print_hex_digits+0x30>

0000130c <print_hex>:
    130c:	00800593          	li	a1,8
    1310:	00000317          	auipc	t1,0x0
    1314:	f8c30067          	jr	-116(t1) # 129c <print_hex_digits>

00001318 <printf>:
    1318:	fb010113          	add	sp,sp,-80
    131c:	04f12223          	sw	a5,68(sp)
    1320:	03410793          	add	a5,sp,52
    1324:	02812423          	sw	s0,40(sp)
    1328:	02912223          	sw	s1,36(sp)
    132c:	03212023          	sw	s2,32(sp)
    1330:	01312e23          	sw	s3,28(sp)
    1334:	01412c23          	sw	s4,24(sp)
    1338:	01512a23          	sw	s5,20(sp)
    133c:	01612823          	sw	s6,16(sp)
    1340:	02112623          	sw	ra,44(sp)
    1344:	00050413          	mv	s0,a0
    1348:	02b12a23          	sw	a1,52(sp)
    134c:	02c12c23          	sw	a2,56(sp)
    1350:	02d12e23          	sw	a3,60(sp)
    1354:	04e12023          	sw	a4,64(sp)
    1358:	05012423          	sw	a6,72(sp)
    135c:	05112623          	sw	a7,76(sp)
    1360:	00f12623          	sw	a5,12(sp)
    1364:	02500913          	li	s2,37
    1368:	000064b7          	lui	s1,0x6
    136c:	07300993          	li	s3,115
    1370:	07800a13          	li	s4,120
    1374:	06400a93          	li	s5,100
    1378:	06300b13          	li	s6,99
    137c:	00044503          	lbu	a0,0(s0)
    1380:	02051663          	bnez	a0,13ac <printf+0x94>
    1384:	02c12083          	lw	ra,44(sp)
    1388:	02812403          	lw	s0,40(sp)
    138c:	02412483          	lw	s1,36(sp)
    1390:	02012903          	lw	s2,32(sp)
    1394:	01c12983          	lw	s3,28(sp)
    1398:	01812a03          	lw	s4,24(sp)
    139c:	01412a83          	lw	s5,20(sp)
    13a0:	01012b03          	lw	s6,16(sp)
    13a4:	05010113          	add	sp,sp,80
    13a8:	00008067          	ret
    13ac:	09251863          	bne	a0,s2,143c <printf+0x124>
    13b0:	00144503          	lbu	a0,1(s0)
    13b4:	03351463          	bne	a0,s3,13dc <printf+0xc4>
    13b8:	00c12783          	lw	a5,12(sp)
    13bc:	0007a503          	lw	a0,0(a5)
    13c0:	00478713          	add	a4,a5,4
    13c4:	00e12623          	sw	a4,12(sp)
    13c8:	00000097          	auipc	ra,0x0
    13cc:	de8080e7          	jalr	-536(ra) # 11b0 <print_string>
    13d0:	00140413          	add	s0,s0,1
    13d4:	00140413          	add	s0,s0,1
    13d8:	fa5ff06f          	j	137c <printf+0x64>
    13dc:	03451063          	bne	a0,s4,13fc <printf+0xe4>
    13e0:	00c12783          	lw	a5,12(sp)
    13e4:	0007a503          	lw	a0,0(a5)
    13e8:	00478713          	add	a4,a5,4
    13ec:	00e12623          	sw	a4,12(sp)
    13f0:	00000097          	auipc	ra,0x0
    13f4:	f1c080e7          	jalr	-228(ra) # 130c <print_hex>
    13f8:	fd9ff06f          	j	13d0 <printf+0xb8>
    13fc:	03551063          	bne	a0,s5,141c <printf+0x104>
    1400:	00c12783          	lw	a5,12(sp)
    1404:	0007a503          	lw	a0,0(a5)
    1408:	00478713          	add	a4,a5,4
    140c:	00e12623          	sw	a4,12(sp)
    1410:	00000097          	auipc	ra,0x0
    1414:	de4080e7          	jalr	-540(ra) # 11f4 <print_dec>
    1418:	fb9ff06f          	j	13d0 <printf+0xb8>
    141c:	1044a783          	lw	a5,260(s1) # 6104 <f_putchar>
    1420:	01651a63          	bne	a0,s6,1434 <printf+0x11c>
    1424:	00c12703          	lw	a4,12(sp)
    1428:	00072503          	lw	a0,0(a4)
    142c:	00470693          	add	a3,a4,4
    1430:	00d12623          	sw	a3,12(sp)
    1434:	000780e7          	jalr	a5
    1438:	f99ff06f          	j	13d0 <printf+0xb8>
    143c:	1044a783          	lw	a5,260(s1)
    1440:	000780e7          	jalr	a5
    1444:	f91ff06f          	j	13d4 <printf+0xbc>

00001448 <__mulsi3>:
    1448:	00050793          	mv	a5,a0
    144c:	00000513          	li	a0,0
    1450:	00079463          	bnez	a5,1458 <__mulsi3+0x10>
    1454:	00008067          	ret
    1458:	0017f713          	and	a4,a5,1
    145c:	00070463          	beqz	a4,1464 <__mulsi3+0x1c>
    1460:	00b50533          	add	a0,a0,a1
    1464:	0017d793          	srl	a5,a5,0x1
    1468:	00159593          	sll	a1,a1,0x1
    146c:	fe5ff06f          	j	1450 <__mulsi3+0x8>

00001470 <fat_list_insert_last>:
    1470:	00452783          	lw	a5,4(a0)
    1474:	04079263          	bnez	a5,14b8 <fat_list_insert_last+0x48>
    1478:	00052783          	lw	a5,0(a0)
    147c:	00079c63          	bnez	a5,1494 <fat_list_insert_last+0x24>
    1480:	00b52023          	sw	a1,0(a0)
    1484:	00b52223          	sw	a1,4(a0)
    1488:	0005a023          	sw	zero,0(a1)
    148c:	0005a223          	sw	zero,4(a1)
    1490:	00008067          	ret
    1494:	0007a703          	lw	a4,0(a5)
    1498:	00f5a223          	sw	a5,4(a1)
    149c:	00e5a023          	sw	a4,0(a1)
    14a0:	00071863          	bnez	a4,14b0 <fat_list_insert_last+0x40>
    14a4:	00b52023          	sw	a1,0(a0)
    14a8:	00b7a023          	sw	a1,0(a5)
    14ac:	00008067          	ret
    14b0:	00b72223          	sw	a1,4(a4)
    14b4:	ff5ff06f          	j	14a8 <fat_list_insert_last+0x38>
    14b8:	0047a703          	lw	a4,4(a5)
    14bc:	00f5a023          	sw	a5,0(a1)
    14c0:	00e5a223          	sw	a4,4(a1)
    14c4:	00071863          	bnez	a4,14d4 <fat_list_insert_last+0x64>
    14c8:	00b52223          	sw	a1,4(a0)
    14cc:	00b7a223          	sw	a1,4(a5)
    14d0:	00008067          	ret
    14d4:	00b72023          	sw	a1,0(a4)
    14d8:	ff5ff06f          	j	14cc <fat_list_insert_last+0x5c>

000014dc <FileString_StrCmpNoCase>:
    14dc:	00050893          	mv	a7,a0
    14e0:	00000693          	li	a3,0
    14e4:	01900313          	li	t1,25
    14e8:	00c69663          	bne	a3,a2,14f4 <FileString_StrCmpNoCase+0x18>
    14ec:	00000513          	li	a0,0
    14f0:	00008067          	ret
    14f4:	00d887b3          	add	a5,a7,a3
    14f8:	0007c703          	lbu	a4,0(a5)
    14fc:	00d587b3          	add	a5,a1,a3
    1500:	0007c783          	lbu	a5,0(a5)
    1504:	fbf70513          	add	a0,a4,-65
    1508:	0ff57513          	zext.b	a0,a0
    150c:	fbf78813          	add	a6,a5,-65
    1510:	0ff87813          	zext.b	a6,a6
    1514:	02a36863          	bltu	t1,a0,1544 <FileString_StrCmpNoCase+0x68>
    1518:	02070713          	add	a4,a4,32
    151c:	0ff77713          	zext.b	a4,a4
    1520:	01036c63          	bltu	t1,a6,1538 <FileString_StrCmpNoCase+0x5c>
    1524:	02078793          	add	a5,a5,32
    1528:	0ff7f793          	zext.b	a5,a5
    152c:	40f70533          	sub	a0,a4,a5
    1530:	02f70e63          	beq	a4,a5,156c <FileString_StrCmpNoCase+0x90>
    1534:	00008067          	ret
    1538:	40f70533          	sub	a0,a4,a5
    153c:	02f70863          	beq	a4,a5,156c <FileString_StrCmpNoCase+0x90>
    1540:	00008067          	ret
    1544:	01036c63          	bltu	t1,a6,155c <FileString_StrCmpNoCase+0x80>
    1548:	02078793          	add	a5,a5,32
    154c:	0ff7f793          	zext.b	a5,a5
    1550:	40f70533          	sub	a0,a4,a5
    1554:	00f70c63          	beq	a4,a5,156c <FileString_StrCmpNoCase+0x90>
    1558:	00008067          	ret
    155c:	40f70533          	sub	a0,a4,a5
    1560:	f8f718e3          	bne	a4,a5,14f0 <FileString_StrCmpNoCase+0x14>
    1564:	f80706e3          	beqz	a4,14f0 <FileString_StrCmpNoCase+0x14>
    1568:	f80784e3          	beqz	a5,14f0 <FileString_StrCmpNoCase+0x14>
    156c:	00168693          	add	a3,a3,1
    1570:	f79ff06f          	j	14e8 <FileString_StrCmpNoCase+0xc>

00001574 <FileString_GetExtension>:
    1574:	00050713          	mv	a4,a0
    1578:	00050793          	mv	a5,a0
    157c:	02e00613          	li	a2,46
    1580:	fff00513          	li	a0,-1
    1584:	0007c683          	lbu	a3,0(a5)
    1588:	00069463          	bnez	a3,1590 <FileString_GetExtension+0x1c>
    158c:	00008067          	ret
    1590:	00c69463          	bne	a3,a2,1598 <FileString_GetExtension+0x24>
    1594:	40e78533          	sub	a0,a5,a4
    1598:	00178793          	add	a5,a5,1
    159c:	fe9ff06f          	j	1584 <FileString_GetExtension+0x10>

000015a0 <fatfs_fat_writeback>:
    15a0:	00059663          	bnez	a1,15ac <fatfs_fat_writeback+0xc>
    15a4:	00000513          	li	a0,0
    15a8:	00008067          	ret
    15ac:	2045a703          	lw	a4,516(a1)
    15b0:	ff010113          	add	sp,sp,-16
    15b4:	00812423          	sw	s0,8(sp)
    15b8:	00112623          	sw	ra,12(sp)
    15bc:	00058413          	mv	s0,a1
    15c0:	00070a63          	beqz	a4,15d4 <fatfs_fat_writeback+0x34>
    15c4:	03852683          	lw	a3,56(a0)
    15c8:	00050793          	mv	a5,a0
    15cc:	00069863          	bnez	a3,15dc <fatfs_fat_writeback+0x3c>
    15d0:	20042223          	sw	zero,516(s0)
    15d4:	00100513          	li	a0,1
    15d8:	0380006f          	j	1610 <fatfs_fat_writeback+0x70>
    15dc:	2005a503          	lw	a0,512(a1)
    15e0:	0147a703          	lw	a4,20(a5)
    15e4:	0207a583          	lw	a1,32(a5)
    15e8:	00100613          	li	a2,1
    15ec:	40e507b3          	sub	a5,a0,a4
    15f0:	00178793          	add	a5,a5,1
    15f4:	00f5f663          	bgeu	a1,a5,1600 <fatfs_fat_writeback+0x60>
    15f8:	00b70733          	add	a4,a4,a1
    15fc:	40a70633          	sub	a2,a4,a0
    1600:	00040593          	mv	a1,s0
    1604:	000680e7          	jalr	a3
    1608:	fc0514e3          	bnez	a0,15d0 <fatfs_fat_writeback+0x30>
    160c:	00000513          	li	a0,0
    1610:	00c12083          	lw	ra,12(sp)
    1614:	00812403          	lw	s0,8(sp)
    1618:	01010113          	add	sp,sp,16
    161c:	00008067          	ret

00001620 <fatfs_fat_read_sector>:
    1620:	fe010113          	add	sp,sp,-32
    1624:	01212823          	sw	s2,16(sp)
    1628:	25452903          	lw	s2,596(a0)
    162c:	00812c23          	sw	s0,24(sp)
    1630:	00912a23          	sw	s1,20(sp)
    1634:	01312623          	sw	s3,12(sp)
    1638:	00112e23          	sw	ra,28(sp)
    163c:	00050993          	mv	s3,a0
    1640:	00058493          	mv	s1,a1
    1644:	00000413          	li	s0,0
    1648:	04091663          	bnez	s2,1694 <fatfs_fat_read_sector+0x74>
    164c:	2549a783          	lw	a5,596(s3)
    1650:	20f42623          	sw	a5,524(s0)
    1654:	20442783          	lw	a5,516(s0)
    1658:	2489aa23          	sw	s0,596(s3)
    165c:	06078663          	beqz	a5,16c8 <fatfs_fat_read_sector+0xa8>
    1660:	00040593          	mv	a1,s0
    1664:	00098513          	mv	a0,s3
    1668:	00000097          	auipc	ra,0x0
    166c:	f38080e7          	jalr	-200(ra) # 15a0 <fatfs_fat_writeback>
    1670:	04051c63          	bnez	a0,16c8 <fatfs_fat_read_sector+0xa8>
    1674:	01c12083          	lw	ra,28(sp)
    1678:	01812403          	lw	s0,24(sp)
    167c:	01412483          	lw	s1,20(sp)
    1680:	00c12983          	lw	s3,12(sp)
    1684:	00090513          	mv	a0,s2
    1688:	01012903          	lw	s2,16(sp)
    168c:	02010113          	add	sp,sp,32
    1690:	00008067          	ret
    1694:	20092783          	lw	a5,512(s2)
    1698:	00f4e663          	bltu	s1,a5,16a4 <fatfs_fat_read_sector+0x84>
    169c:	00178713          	add	a4,a5,1
    16a0:	04e4ee63          	bltu	s1,a4,16fc <fatfs_fat_read_sector+0xdc>
    16a4:	20c92783          	lw	a5,524(s2)
    16a8:	00079663          	bnez	a5,16b4 <fatfs_fat_read_sector+0x94>
    16ac:	00040a63          	beqz	s0,16c0 <fatfs_fat_read_sector+0xa0>
    16b0:	20042623          	sw	zero,524(s0)
    16b4:	00090413          	mv	s0,s2
    16b8:	20c92903          	lw	s2,524(s2)
    16bc:	f8dff06f          	j	1648 <fatfs_fat_read_sector+0x28>
    16c0:	2409aa23          	sw	zero,596(s3)
    16c4:	ff1ff06f          	j	16b4 <fatfs_fat_read_sector+0x94>
    16c8:	0349a783          	lw	a5,52(s3)
    16cc:	20942023          	sw	s1,512(s0)
    16d0:	00100613          	li	a2,1
    16d4:	00040593          	mv	a1,s0
    16d8:	00048513          	mv	a0,s1
    16dc:	000780e7          	jalr	a5
    16e0:	00051863          	bnez	a0,16f0 <fatfs_fat_read_sector+0xd0>
    16e4:	fff00793          	li	a5,-1
    16e8:	20f42023          	sw	a5,512(s0)
    16ec:	f89ff06f          	j	1674 <fatfs_fat_read_sector+0x54>
    16f0:	20842423          	sw	s0,520(s0)
    16f4:	00040913          	mv	s2,s0
    16f8:	f7dff06f          	j	1674 <fatfs_fat_read_sector+0x54>
    16fc:	40f484b3          	sub	s1,s1,a5
    1700:	00949493          	sll	s1,s1,0x9
    1704:	009904b3          	add	s1,s2,s1
    1708:	20992423          	sw	s1,520(s2)
    170c:	f69ff06f          	j	1674 <fatfs_fat_read_sector+0x54>

00001710 <_allocate_file>:
    1710:	ff010113          	add	sp,sp,-16
    1714:	000067b7          	lui	a5,0x6
    1718:	00812423          	sw	s0,8(sp)
    171c:	1087a403          	lw	s0,264(a5) # 6108 <_free_file_list>
    1720:	00112623          	sw	ra,12(sp)
    1724:	02040e63          	beqz	s0,1760 <_allocate_file+0x50>
    1728:	00042703          	lw	a4,0(s0)
    172c:	00442683          	lw	a3,4(s0)
    1730:	10878793          	add	a5,a5,264
    1734:	04071063          	bnez	a4,1774 <_allocate_file+0x64>
    1738:	00d7a023          	sw	a3,0(a5)
    173c:	00442683          	lw	a3,4(s0)
    1740:	02069e63          	bnez	a3,177c <_allocate_file+0x6c>
    1744:	00e7a223          	sw	a4,4(a5)
    1748:	00006537          	lui	a0,0x6
    174c:	00040593          	mv	a1,s0
    1750:	11050513          	add	a0,a0,272 # 6110 <_open_file_list>
    1754:	00000097          	auipc	ra,0x0
    1758:	d1c080e7          	jalr	-740(ra) # 1470 <fat_list_insert_last>
    175c:	bc440413          	add	s0,s0,-1084
    1760:	00c12083          	lw	ra,12(sp)
    1764:	00040513          	mv	a0,s0
    1768:	00812403          	lw	s0,8(sp)
    176c:	01010113          	add	sp,sp,16
    1770:	00008067          	ret
    1774:	00d72223          	sw	a3,4(a4)
    1778:	fc5ff06f          	j	173c <_allocate_file+0x2c>
    177c:	00e6a023          	sw	a4,0(a3)
    1780:	fc9ff06f          	j	1748 <_allocate_file+0x38>

00001784 <_free_file>:
    1784:	43c52783          	lw	a5,1084(a0)
    1788:	44052703          	lw	a4,1088(a0)
    178c:	43c50593          	add	a1,a0,1084
    1790:	02079663          	bnez	a5,17bc <_free_file+0x38>
    1794:	000066b7          	lui	a3,0x6
    1798:	10e6a823          	sw	a4,272(a3) # 6110 <_open_file_list>
    179c:	44052703          	lw	a4,1088(a0)
    17a0:	02071263          	bnez	a4,17c4 <_free_file+0x40>
    17a4:	00006737          	lui	a4,0x6
    17a8:	10f72a23          	sw	a5,276(a4) # 6114 <_open_file_list+0x4>
    17ac:	00006537          	lui	a0,0x6
    17b0:	10850513          	add	a0,a0,264 # 6108 <_free_file_list>
    17b4:	00000317          	auipc	t1,0x0
    17b8:	cbc30067          	jr	-836(t1) # 1470 <fat_list_insert_last>
    17bc:	00e7a223          	sw	a4,4(a5)
    17c0:	fddff06f          	j	179c <_free_file+0x18>
    17c4:	00f72023          	sw	a5,0(a4)
    17c8:	fe5ff06f          	j	17ac <_free_file+0x28>

000017cc <fatfs_lba_of_cluster>:
    17cc:	ff010113          	add	sp,sp,-16
    17d0:	00812423          	sw	s0,8(sp)
    17d4:	00112623          	sw	ra,12(sp)
    17d8:	00050413          	mv	s0,a0
    17dc:	00058513          	mv	a0,a1
    17e0:	00044583          	lbu	a1,0(s0)
    17e4:	ffe50513          	add	a0,a0,-2
    17e8:	00000097          	auipc	ra,0x0
    17ec:	c60080e7          	jalr	-928(ra) # 1448 <__mulsi3>
    17f0:	00442783          	lw	a5,4(s0)
    17f4:	00f50533          	add	a0,a0,a5
    17f8:	03042783          	lw	a5,48(s0)
    17fc:	00079863          	bnez	a5,180c <fatfs_lba_of_cluster+0x40>
    1800:	02845783          	lhu	a5,40(s0)
    1804:	4047d793          	sra	a5,a5,0x4
    1808:	00f50533          	add	a0,a0,a5
    180c:	00c12083          	lw	ra,12(sp)
    1810:	00812403          	lw	s0,8(sp)
    1814:	01010113          	add	sp,sp,16
    1818:	00008067          	ret

0000181c <fatfs_sector_read>:
    181c:	03452783          	lw	a5,52(a0)
    1820:	00058713          	mv	a4,a1
    1824:	00070513          	mv	a0,a4
    1828:	00060593          	mv	a1,a2
    182c:	00068613          	mv	a2,a3
    1830:	00078067          	jr	a5

00001834 <fatfs_sector_write>:
    1834:	03852783          	lw	a5,56(a0)
    1838:	00058713          	mv	a4,a1
    183c:	00070513          	mv	a0,a4
    1840:	00060593          	mv	a1,a2
    1844:	00068613          	mv	a2,a3
    1848:	00078067          	jr	a5

0000184c <fatfs_write_sector>:
    184c:	03852783          	lw	a5,56(a0)
    1850:	0a078863          	beqz	a5,1900 <fatfs_write_sector+0xb4>
    1854:	fe010113          	add	sp,sp,-32
    1858:	01212823          	sw	s2,16(sp)
    185c:	00068913          	mv	s2,a3
    1860:	03052683          	lw	a3,48(a0)
    1864:	00812c23          	sw	s0,24(sp)
    1868:	00912a23          	sw	s1,20(sp)
    186c:	00112e23          	sw	ra,28(sp)
    1870:	00d5e733          	or	a4,a1,a3
    1874:	00050413          	mv	s0,a0
    1878:	00060493          	mv	s1,a2
    187c:	04071063          	bnez	a4,18bc <fatfs_write_sector+0x70>
    1880:	01052703          	lw	a4,16(a0)
    1884:	06e67063          	bgeu	a2,a4,18e4 <fatfs_write_sector+0x98>
    1888:	01c52503          	lw	a0,28(a0)
    188c:	00c42703          	lw	a4,12(s0)
    1890:	00e50533          	add	a0,a0,a4
    1894:	00c50533          	add	a0,a0,a2
    1898:	02090e63          	beqz	s2,18d4 <fatfs_write_sector+0x88>
    189c:	00100613          	li	a2,1
    18a0:	00090593          	mv	a1,s2
    18a4:	01812403          	lw	s0,24(sp)
    18a8:	01c12083          	lw	ra,28(sp)
    18ac:	01412483          	lw	s1,20(sp)
    18b0:	01012903          	lw	s2,16(sp)
    18b4:	02010113          	add	sp,sp,32
    18b8:	00078067          	jr	a5
    18bc:	00f12623          	sw	a5,12(sp)
    18c0:	00000097          	auipc	ra,0x0
    18c4:	f0c080e7          	jalr	-244(ra) # 17cc <fatfs_lba_of_cluster>
    18c8:	00c12783          	lw	a5,12(sp)
    18cc:	00a48533          	add	a0,s1,a0
    18d0:	fc9ff06f          	j	1898 <fatfs_write_sector+0x4c>
    18d4:	24a42223          	sw	a0,580(s0)
    18d8:	00100613          	li	a2,1
    18dc:	04440593          	add	a1,s0,68
    18e0:	fc5ff06f          	j	18a4 <fatfs_write_sector+0x58>
    18e4:	01c12083          	lw	ra,28(sp)
    18e8:	01812403          	lw	s0,24(sp)
    18ec:	01412483          	lw	s1,20(sp)
    18f0:	01012903          	lw	s2,16(sp)
    18f4:	00000513          	li	a0,0
    18f8:	02010113          	add	sp,sp,32
    18fc:	00008067          	ret
    1900:	00000513          	li	a0,0
    1904:	00008067          	ret

00001908 <fl_init>:
    1908:	ff010113          	add	sp,sp,-16
    190c:	00812423          	sw	s0,8(sp)
    1910:	00006437          	lui	s0,0x6
    1914:	00112623          	sw	ra,12(sp)
    1918:	10840793          	add	a5,s0,264 # 6108 <_free_file_list>
    191c:	0007a223          	sw	zero,4(a5)
    1920:	0007a023          	sw	zero,0(a5)
    1924:	000075b7          	lui	a1,0x7
    1928:	000067b7          	lui	a5,0x6
    192c:	11078793          	add	a5,a5,272 # 6110 <_open_file_list>
    1930:	10840513          	add	a0,s0,264
    1934:	a2058593          	add	a1,a1,-1504 # 6a20 <_files+0x43c>
    1938:	0007a223          	sw	zero,4(a5)
    193c:	0007a023          	sw	zero,0(a5)
    1940:	00000097          	auipc	ra,0x0
    1944:	b30080e7          	jalr	-1232(ra) # 1470 <fat_list_insert_last>
    1948:	000075b7          	lui	a1,0x7
    194c:	10840513          	add	a0,s0,264
    1950:	e6458593          	add	a1,a1,-412 # 6e64 <_files+0x880>
    1954:	00000097          	auipc	ra,0x0
    1958:	b1c080e7          	jalr	-1252(ra) # 1470 <fat_list_insert_last>
    195c:	00c12083          	lw	ra,12(sp)
    1960:	00812403          	lw	s0,8(sp)
    1964:	000067b7          	lui	a5,0x6
    1968:	00100713          	li	a4,1
    196c:	10e7ae23          	sw	a4,284(a5) # 611c <_filelib_init>
    1970:	01010113          	add	sp,sp,16
    1974:	00008067          	ret

00001978 <fl_closedir>:
    1978:	00000513          	li	a0,0
    197c:	00008067          	ret

00001980 <fatfs_lfn_cache_entry>:
    1980:	0005c783          	lbu	a5,0(a1)
    1984:	01300693          	li	a3,19
    1988:	01f7f793          	and	a5,a5,31
    198c:	fff78713          	add	a4,a5,-1
    1990:	0ff77613          	zext.b	a2,a4
    1994:	0ac6ea63          	bltu	a3,a2,1a48 <fatfs_lfn_cache_entry+0xc8>
    1998:	10554683          	lbu	a3,261(a0)
    199c:	00069463          	bnez	a3,19a4 <fatfs_lfn_cache_entry+0x24>
    19a0:	10f502a3          	sb	a5,261(a0)
    19a4:	00171793          	sll	a5,a4,0x1
    19a8:	00e787b3          	add	a5,a5,a4
    19ac:	0015c683          	lbu	a3,1(a1)
    19b0:	00279793          	sll	a5,a5,0x2
    19b4:	00e787b3          	add	a5,a5,a4
    19b8:	00f50533          	add	a0,a0,a5
    19bc:	00d50023          	sb	a3,0(a0)
    19c0:	0035c783          	lbu	a5,3(a1)
    19c4:	0ff00713          	li	a4,255
    19c8:	02000693          	li	a3,32
    19cc:	00f500a3          	sb	a5,1(a0)
    19d0:	0055c783          	lbu	a5,5(a1)
    19d4:	00f50123          	sb	a5,2(a0)
    19d8:	0075c783          	lbu	a5,7(a1)
    19dc:	00f501a3          	sb	a5,3(a0)
    19e0:	0095c783          	lbu	a5,9(a1)
    19e4:	00f50223          	sb	a5,4(a0)
    19e8:	00e5c783          	lbu	a5,14(a1)
    19ec:	00f502a3          	sb	a5,5(a0)
    19f0:	0105c783          	lbu	a5,16(a1)
    19f4:	00f50323          	sb	a5,6(a0)
    19f8:	0125c783          	lbu	a5,18(a1)
    19fc:	00f503a3          	sb	a5,7(a0)
    1a00:	0145c783          	lbu	a5,20(a1)
    1a04:	00f50423          	sb	a5,8(a0)
    1a08:	0165c783          	lbu	a5,22(a1)
    1a0c:	00f504a3          	sb	a5,9(a0)
    1a10:	0185c783          	lbu	a5,24(a1)
    1a14:	00f50523          	sb	a5,10(a0)
    1a18:	01c5c783          	lbu	a5,28(a1)
    1a1c:	00f505a3          	sb	a5,11(a0)
    1a20:	01e5c783          	lbu	a5,30(a1)
    1a24:	00f50623          	sb	a5,12(a0)
    1a28:	00d00793          	li	a5,13
    1a2c:	00054603          	lbu	a2,0(a0)
    1a30:	00e61463          	bne	a2,a4,1a38 <fatfs_lfn_cache_entry+0xb8>
    1a34:	00d50023          	sb	a3,0(a0)
    1a38:	fff78793          	add	a5,a5,-1
    1a3c:	0ff7f793          	zext.b	a5,a5
    1a40:	00150513          	add	a0,a0,1
    1a44:	fe0794e3          	bnez	a5,1a2c <fatfs_lfn_cache_entry+0xac>
    1a48:	00008067          	ret

00001a4c <fatfs_lfn_cache_get>:
    1a4c:	10554703          	lbu	a4,261(a0)
    1a50:	01400793          	li	a5,20
    1a54:	00f71663          	bne	a4,a5,1a60 <fatfs_lfn_cache_get+0x14>
    1a58:	10050223          	sb	zero,260(a0)
    1a5c:	00008067          	ret
    1a60:	02070063          	beqz	a4,1a80 <fatfs_lfn_cache_get+0x34>
    1a64:	00171793          	sll	a5,a4,0x1
    1a68:	00e787b3          	add	a5,a5,a4
    1a6c:	00279793          	sll	a5,a5,0x2
    1a70:	00e787b3          	add	a5,a5,a4
    1a74:	00f507b3          	add	a5,a0,a5
    1a78:	00078023          	sb	zero,0(a5)
    1a7c:	00008067          	ret
    1a80:	00050023          	sb	zero,0(a0)
    1a84:	00008067          	ret

00001a88 <fatfs_entry_lfn_text>:
    1a88:	00b54503          	lbu	a0,11(a0)
    1a8c:	00f57513          	and	a0,a0,15
    1a90:	ff150513          	add	a0,a0,-15
    1a94:	00153513          	seqz	a0,a0
    1a98:	00008067          	ret

00001a9c <fatfs_entry_lfn_invalid>:
    1a9c:	00054703          	lbu	a4,0(a0)
    1aa0:	00050793          	mv	a5,a0
    1aa4:	02070463          	beqz	a4,1acc <fatfs_entry_lfn_invalid+0x30>
    1aa8:	0e500693          	li	a3,229
    1aac:	00100513          	li	a0,1
    1ab0:	02d70063          	beq	a4,a3,1ad0 <fatfs_entry_lfn_invalid+0x34>
    1ab4:	00b7c783          	lbu	a5,11(a5)
    1ab8:	00800713          	li	a4,8
    1abc:	00e78a63          	beq	a5,a4,1ad0 <fatfs_entry_lfn_invalid+0x34>
    1ac0:	0067f793          	and	a5,a5,6
    1ac4:	00f03533          	snez	a0,a5
    1ac8:	00008067          	ret
    1acc:	00100513          	li	a0,1
    1ad0:	00008067          	ret

00001ad4 <fatfs_entry_lfn_exists>:
    1ad4:	00b5c783          	lbu	a5,11(a1)
    1ad8:	00f00693          	li	a3,15
    1adc:	00050713          	mv	a4,a0
    1ae0:	02d78a63          	beq	a5,a3,1b14 <fatfs_entry_lfn_exists+0x40>
    1ae4:	0005c683          	lbu	a3,0(a1)
    1ae8:	00000513          	li	a0,0
    1aec:	02068663          	beqz	a3,1b18 <fatfs_entry_lfn_exists+0x44>
    1af0:	0e500613          	li	a2,229
    1af4:	02c68263          	beq	a3,a2,1b18 <fatfs_entry_lfn_exists+0x44>
    1af8:	00800693          	li	a3,8
    1afc:	00d78e63          	beq	a5,a3,1b18 <fatfs_entry_lfn_exists+0x44>
    1b00:	0067f793          	and	a5,a5,6
    1b04:	00079a63          	bnez	a5,1b18 <fatfs_entry_lfn_exists+0x44>
    1b08:	10574503          	lbu	a0,261(a4)
    1b0c:	00a03533          	snez	a0,a0
    1b10:	00008067          	ret
    1b14:	00000513          	li	a0,0
    1b18:	00008067          	ret

00001b1c <fatfs_entry_sfn_only>:
    1b1c:	00b54783          	lbu	a5,11(a0)
    1b20:	00f00713          	li	a4,15
    1b24:	02e78663          	beq	a5,a4,1b50 <fatfs_entry_sfn_only+0x34>
    1b28:	00054703          	lbu	a4,0(a0)
    1b2c:	00000513          	li	a0,0
    1b30:	02070263          	beqz	a4,1b54 <fatfs_entry_sfn_only+0x38>
    1b34:	0e500693          	li	a3,229
    1b38:	00d70e63          	beq	a4,a3,1b54 <fatfs_entry_sfn_only+0x38>
    1b3c:	00800713          	li	a4,8
    1b40:	00e78a63          	beq	a5,a4,1b54 <fatfs_entry_sfn_only+0x38>
    1b44:	0067f793          	and	a5,a5,6
    1b48:	0017b513          	seqz	a0,a5
    1b4c:	00008067          	ret
    1b50:	00000513          	li	a0,0
    1b54:	00008067          	ret

00001b58 <fatfs_entry_is_dir>:
    1b58:	00b54503          	lbu	a0,11(a0)
    1b5c:	00455513          	srl	a0,a0,0x4
    1b60:	00157513          	and	a0,a0,1
    1b64:	00008067          	ret

00001b68 <fatfs_entry_is_file>:
    1b68:	00b54503          	lbu	a0,11(a0)
    1b6c:	00555513          	srl	a0,a0,0x5
    1b70:	00157513          	and	a0,a0,1
    1b74:	00008067          	ret

00001b78 <fatfs_lfn_entries_required>:
    1b78:	ff010113          	add	sp,sp,-16
    1b7c:	00112623          	sw	ra,12(sp)
    1b80:	fffff097          	auipc	ra,0xfffff
    1b84:	21c080e7          	jalr	540(ra) # d9c <strlen>
    1b88:	00050a63          	beqz	a0,1b9c <fatfs_lfn_entries_required+0x24>
    1b8c:	00d00593          	li	a1,13
    1b90:	00c50513          	add	a0,a0,12
    1b94:	fffff097          	auipc	ra,0xfffff
    1b98:	114080e7          	jalr	276(ra) # ca8 <__divsi3>
    1b9c:	00c12083          	lw	ra,12(sp)
    1ba0:	01010113          	add	sp,sp,16
    1ba4:	00008067          	ret

00001ba8 <fatfs_filename_to_lfn>:
    1ba8:	fa010113          	add	sp,sp,-96
    1bac:	04912a23          	sw	s1,84(sp)
    1bb0:	00058493          	mv	s1,a1
    1bb4:	000065b7          	lui	a1,0x6
    1bb8:	e6c58593          	add	a1,a1,-404 # 5e6c <font+0x1f4>
    1bbc:	05212823          	sw	s2,80(sp)
    1bc0:	05312623          	sw	s3,76(sp)
    1bc4:	00060913          	mv	s2,a2
    1bc8:	00050993          	mv	s3,a0
    1bcc:	03400613          	li	a2,52
    1bd0:	00c10513          	add	a0,sp,12
    1bd4:	04112e23          	sw	ra,92(sp)
    1bd8:	04812c23          	sw	s0,88(sp)
    1bdc:	05412423          	sw	s4,72(sp)
    1be0:	05512223          	sw	s5,68(sp)
    1be4:	05612023          	sw	s6,64(sp)
    1be8:	00068b13          	mv	s6,a3
    1bec:	fffff097          	auipc	ra,0xfffff
    1bf0:	18c080e7          	jalr	396(ra) # d78 <memcpy>
    1bf4:	00098513          	mv	a0,s3
    1bf8:	fffff097          	auipc	ra,0xfffff
    1bfc:	1a4080e7          	jalr	420(ra) # d9c <strlen>
    1c00:	00050a93          	mv	s5,a0
    1c04:	00098513          	mv	a0,s3
    1c08:	00000097          	auipc	ra,0x0
    1c0c:	f70080e7          	jalr	-144(ra) # 1b78 <fatfs_lfn_entries_required>
    1c10:	00191793          	sll	a5,s2,0x1
    1c14:	012787b3          	add	a5,a5,s2
    1c18:	00279793          	sll	a5,a5,0x2
    1c1c:	00050a13          	mv	s4,a0
    1c20:	02000613          	li	a2,32
    1c24:	00000593          	li	a1,0
    1c28:	00048513          	mv	a0,s1
    1c2c:	01278433          	add	s0,a5,s2
    1c30:	fffff097          	auipc	ra,0xfffff
    1c34:	12c080e7          	jalr	300(ra) # d5c <memset>
    1c38:	00190793          	add	a5,s2,1
    1c3c:	fffa0a13          	add	s4,s4,-1
    1c40:	0ff7f793          	zext.b	a5,a5
    1c44:	012a1463          	bne	s4,s2,1c4c <fatfs_filename_to_lfn+0xa4>
    1c48:	0407e793          	or	a5,a5,64
    1c4c:	00f48023          	sb	a5,0(s1)
    1c50:	00f00793          	li	a5,15
    1c54:	00f485a3          	sb	a5,11(s1)
    1c58:	016486a3          	sb	s6,13(s1)
    1c5c:	00c10713          	add	a4,sp,12
    1c60:	00040793          	mv	a5,s0
    1c64:	00d40593          	add	a1,s0,13
    1c68:	fff00613          	li	a2,-1
    1c6c:	00072683          	lw	a3,0(a4)
    1c70:	00d486b3          	add	a3,s1,a3
    1c74:	0557d263          	bge	a5,s5,1cb8 <fatfs_filename_to_lfn+0x110>
    1c78:	00f98533          	add	a0,s3,a5
    1c7c:	00054503          	lbu	a0,0(a0)
    1c80:	00a68023          	sb	a0,0(a3)
    1c84:	00178793          	add	a5,a5,1
    1c88:	00470713          	add	a4,a4,4
    1c8c:	feb790e3          	bne	a5,a1,1c6c <fatfs_filename_to_lfn+0xc4>
    1c90:	05c12083          	lw	ra,92(sp)
    1c94:	05812403          	lw	s0,88(sp)
    1c98:	05412483          	lw	s1,84(sp)
    1c9c:	05012903          	lw	s2,80(sp)
    1ca0:	04c12983          	lw	s3,76(sp)
    1ca4:	04812a03          	lw	s4,72(sp)
    1ca8:	04412a83          	lw	s5,68(sp)
    1cac:	04012b03          	lw	s6,64(sp)
    1cb0:	06010113          	add	sp,sp,96
    1cb4:	00008067          	ret
    1cb8:	00fa9663          	bne	s5,a5,1cc4 <fatfs_filename_to_lfn+0x11c>
    1cbc:	00068023          	sb	zero,0(a3)
    1cc0:	fc5ff06f          	j	1c84 <fatfs_filename_to_lfn+0xdc>
    1cc4:	00c68023          	sb	a2,0(a3)
    1cc8:	00c680a3          	sb	a2,1(a3)
    1ccc:	fb9ff06f          	j	1c84 <fatfs_filename_to_lfn+0xdc>

00001cd0 <fatfs_sfn_create_entry>:
    1cd0:	00000793          	li	a5,0
    1cd4:	00b00813          	li	a6,11
    1cd8:	00f508b3          	add	a7,a0,a5
    1cdc:	0008c303          	lbu	t1,0(a7)
    1ce0:	00f688b3          	add	a7,a3,a5
    1ce4:	00178793          	add	a5,a5,1
    1ce8:	00688023          	sb	t1,0(a7)
    1cec:	ff0796e3          	bne	a5,a6,1cd8 <fatfs_sfn_create_entry+0x8>
    1cf0:	02000793          	li	a5,32
    1cf4:	00f68823          	sb	a5,16(a3)
    1cf8:	00f68923          	sb	a5,18(a3)
    1cfc:	00f68c23          	sb	a5,24(a3)
    1d00:	000686a3          	sb	zero,13(a3)
    1d04:	00068723          	sb	zero,14(a3)
    1d08:	000687a3          	sb	zero,15(a3)
    1d0c:	000688a3          	sb	zero,17(a3)
    1d10:	000689a3          	sb	zero,19(a3)
    1d14:	00068b23          	sb	zero,22(a3)
    1d18:	00068ba3          	sb	zero,23(a3)
    1d1c:	00068ca3          	sb	zero,25(a3)
    1d20:	01000793          	li	a5,16
    1d24:	00071463          	bnez	a4,1d2c <fatfs_sfn_create_entry+0x5c>
    1d28:	02000793          	li	a5,32
    1d2c:	00f685a3          	sb	a5,11(a3)
    1d30:	01065793          	srl	a5,a2,0x10
    1d34:	00f68a23          	sb	a5,20(a3)
    1d38:	0087d793          	srl	a5,a5,0x8
    1d3c:	00f68aa3          	sb	a5,21(a3)
    1d40:	01061793          	sll	a5,a2,0x10
    1d44:	0107d793          	srl	a5,a5,0x10
    1d48:	0087d793          	srl	a5,a5,0x8
    1d4c:	00f68da3          	sb	a5,27(a3)
    1d50:	0085d793          	srl	a5,a1,0x8
    1d54:	00b68e23          	sb	a1,28(a3)
    1d58:	00f68ea3          	sb	a5,29(a3)
    1d5c:	0105d793          	srl	a5,a1,0x10
    1d60:	0185d593          	srl	a1,a1,0x18
    1d64:	00068623          	sb	zero,12(a3)
    1d68:	00c68d23          	sb	a2,26(a3)
    1d6c:	00f68f23          	sb	a5,30(a3)
    1d70:	00b68fa3          	sb	a1,31(a3)
    1d74:	00008067          	ret

00001d78 <fatfs_lfn_create_sfn>:
    1d78:	0005c703          	lbu	a4,0(a1)
    1d7c:	02e00793          	li	a5,46
    1d80:	16f70663          	beq	a4,a5,1eec <fatfs_lfn_create_sfn+0x174>
    1d84:	fe010113          	add	sp,sp,-32
    1d88:	00912a23          	sw	s1,20(sp)
    1d8c:	00050493          	mv	s1,a0
    1d90:	00058513          	mv	a0,a1
    1d94:	00112e23          	sw	ra,28(sp)
    1d98:	00812c23          	sw	s0,24(sp)
    1d9c:	01212823          	sw	s2,16(sp)
    1da0:	00058413          	mv	s0,a1
    1da4:	fffff097          	auipc	ra,0xfffff
    1da8:	ff8080e7          	jalr	-8(ra) # d9c <strlen>
    1dac:	00b00613          	li	a2,11
    1db0:	02000593          	li	a1,32
    1db4:	00050913          	mv	s2,a0
    1db8:	00048513          	mv	a0,s1
    1dbc:	fffff097          	auipc	ra,0xfffff
    1dc0:	fa0080e7          	jalr	-96(ra) # d5c <memset>
    1dc4:	00300613          	li	a2,3
    1dc8:	02000593          	li	a1,32
    1dcc:	00c10513          	add	a0,sp,12
    1dd0:	fffff097          	auipc	ra,0xfffff
    1dd4:	f8c080e7          	jalr	-116(ra) # d5c <memset>
    1dd8:	fff00713          	li	a4,-1
    1ddc:	00000793          	li	a5,0
    1de0:	02e00693          	li	a3,46
    1de4:	0d27c263          	blt	a5,s2,1ea8 <fatfs_lfn_create_sfn+0x130>
    1de8:	fff00793          	li	a5,-1
    1dec:	0ef70863          	beq	a4,a5,1edc <fatfs_lfn_create_sfn+0x164>
    1df0:	00170793          	add	a5,a4,1
    1df4:	00c10693          	add	a3,sp,12
    1df8:	00470613          	add	a2,a4,4
    1dfc:	0cf61263          	bne	a2,a5,1ec0 <fatfs_lfn_create_sfn+0x148>
    1e00:	00000613          	li	a2,0
    1e04:	00000693          	li	a3,0
    1e08:	02000513          	li	a0,32
    1e0c:	02e00813          	li	a6,46
    1e10:	01900893          	li	a7,25
    1e14:	00800313          	li	t1,8
    1e18:	02e6dc63          	bge	a3,a4,1e50 <fatfs_lfn_create_sfn+0xd8>
    1e1c:	00d407b3          	add	a5,s0,a3
    1e20:	0007c783          	lbu	a5,0(a5)
    1e24:	0ca78063          	beq	a5,a0,1ee4 <fatfs_lfn_create_sfn+0x16c>
    1e28:	0b078e63          	beq	a5,a6,1ee4 <fatfs_lfn_create_sfn+0x16c>
    1e2c:	f9f78593          	add	a1,a5,-97
    1e30:	0ff5f593          	zext.b	a1,a1
    1e34:	00c48e33          	add	t3,s1,a2
    1e38:	00160613          	add	a2,a2,1
    1e3c:	00b8e663          	bltu	a7,a1,1e48 <fatfs_lfn_create_sfn+0xd0>
    1e40:	fe078793          	add	a5,a5,-32
    1e44:	0ff7f793          	zext.b	a5,a5
    1e48:	00fe0023          	sb	a5,0(t3)
    1e4c:	08661c63          	bne	a2,t1,1ee4 <fatfs_lfn_create_sfn+0x16c>
    1e50:	00c10793          	add	a5,sp,12
    1e54:	00800693          	li	a3,8
    1e58:	01900513          	li	a0,25
    1e5c:	00b00593          	li	a1,11
    1e60:	0007c703          	lbu	a4,0(a5)
    1e64:	f9f70613          	add	a2,a4,-97
    1e68:	0ff67613          	zext.b	a2,a2
    1e6c:	00c56663          	bltu	a0,a2,1e78 <fatfs_lfn_create_sfn+0x100>
    1e70:	fe070713          	add	a4,a4,-32
    1e74:	0ff77713          	zext.b	a4,a4
    1e78:	00d48633          	add	a2,s1,a3
    1e7c:	00e60023          	sb	a4,0(a2)
    1e80:	00168693          	add	a3,a3,1
    1e84:	00178793          	add	a5,a5,1
    1e88:	fcb69ce3          	bne	a3,a1,1e60 <fatfs_lfn_create_sfn+0xe8>
    1e8c:	01c12083          	lw	ra,28(sp)
    1e90:	01812403          	lw	s0,24(sp)
    1e94:	01412483          	lw	s1,20(sp)
    1e98:	01012903          	lw	s2,16(sp)
    1e9c:	00100513          	li	a0,1
    1ea0:	02010113          	add	sp,sp,32
    1ea4:	00008067          	ret
    1ea8:	00f40633          	add	a2,s0,a5
    1eac:	00064603          	lbu	a2,0(a2)
    1eb0:	00d61463          	bne	a2,a3,1eb8 <fatfs_lfn_create_sfn+0x140>
    1eb4:	00078713          	mv	a4,a5
    1eb8:	00178793          	add	a5,a5,1
    1ebc:	f29ff06f          	j	1de4 <fatfs_lfn_create_sfn+0x6c>
    1ec0:	0127d863          	bge	a5,s2,1ed0 <fatfs_lfn_create_sfn+0x158>
    1ec4:	00f405b3          	add	a1,s0,a5
    1ec8:	0005c583          	lbu	a1,0(a1)
    1ecc:	00b68023          	sb	a1,0(a3)
    1ed0:	00178793          	add	a5,a5,1
    1ed4:	00168693          	add	a3,a3,1
    1ed8:	f25ff06f          	j	1dfc <fatfs_lfn_create_sfn+0x84>
    1edc:	00090713          	mv	a4,s2
    1ee0:	f21ff06f          	j	1e00 <fatfs_lfn_create_sfn+0x88>
    1ee4:	00168693          	add	a3,a3,1
    1ee8:	f31ff06f          	j	1e18 <fatfs_lfn_create_sfn+0xa0>
    1eec:	00000513          	li	a0,0
    1ef0:	00008067          	ret

00001ef4 <fatfs_lfn_generate_tail>:
    1ef4:	000187b7          	lui	a5,0x18
    1ef8:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1efc:	16c7e463          	bltu	a5,a2,2064 <fatfs_lfn_generate_tail+0x170>
    1f00:	fa010113          	add	sp,sp,-96
    1f04:	04812c23          	sw	s0,88(sp)
    1f08:	04912a23          	sw	s1,84(sp)
    1f0c:	05412423          	sw	s4,72(sp)
    1f10:	00050493          	mv	s1,a0
    1f14:	00058a13          	mv	s4,a1
    1f18:	00060413          	mv	s0,a2
    1f1c:	00000593          	li	a1,0
    1f20:	00c00613          	li	a2,12
    1f24:	00410513          	add	a0,sp,4
    1f28:	04112e23          	sw	ra,92(sp)
    1f2c:	05312623          	sw	s3,76(sp)
    1f30:	05512223          	sw	s5,68(sp)
    1f34:	03712e23          	sw	s7,60(sp)
    1f38:	05212823          	sw	s2,80(sp)
    1f3c:	05612023          	sw	s6,64(sp)
    1f40:	fffff097          	auipc	ra,0xfffff
    1f44:	e1c080e7          	jalr	-484(ra) # d5c <memset>
    1f48:	000065b7          	lui	a1,0x6
    1f4c:	07e00793          	li	a5,126
    1f50:	01100613          	li	a2,17
    1f54:	e5858593          	add	a1,a1,-424 # 5e58 <font+0x1e0>
    1f58:	01c10513          	add	a0,sp,28
    1f5c:	01010993          	add	s3,sp,16
    1f60:	00f10223          	sb	a5,4(sp)
    1f64:	00098a93          	mv	s5,s3
    1f68:	fffff097          	auipc	ra,0xfffff
    1f6c:	e10080e7          	jalr	-496(ra) # d78 <memcpy>
    1f70:	00900b93          	li	s7,9
    1f74:	00a00593          	li	a1,10
    1f78:	00040513          	mv	a0,s0
    1f7c:	fffff097          	auipc	ra,0xfffff
    1f80:	d7c080e7          	jalr	-644(ra) # cf8 <__umodsi3>
    1f84:	03050793          	add	a5,a0,48
    1f88:	00278533          	add	a0,a5,sp
    1f8c:	fec54783          	lbu	a5,-20(a0)
    1f90:	00098913          	mv	s2,s3
    1f94:	00040513          	mv	a0,s0
    1f98:	00a00593          	li	a1,10
    1f9c:	00f98023          	sb	a5,0(s3)
    1fa0:	00040b13          	mv	s6,s0
    1fa4:	fffff097          	auipc	ra,0xfffff
    1fa8:	d0c080e7          	jalr	-756(ra) # cb0 <__udivsi3>
    1fac:	00198993          	add	s3,s3,1
    1fb0:	00050413          	mv	s0,a0
    1fb4:	fd6be0e3          	bltu	s7,s6,1f74 <fatfs_lfn_generate_tail+0x80>
    1fb8:	00098023          	sb	zero,0(s3)
    1fbc:	00410713          	add	a4,sp,4
    1fc0:	00090793          	mv	a5,s2
    1fc4:	00170713          	add	a4,a4,1
    1fc8:	0957f663          	bgeu	a5,s5,2054 <fatfs_lfn_generate_tail+0x160>
    1fcc:	00f10713          	add	a4,sp,15
    1fd0:	00000793          	li	a5,0
    1fd4:	00e96663          	bltu	s2,a4,1fe0 <fatfs_lfn_generate_tail+0xec>
    1fd8:	41590933          	sub	s2,s2,s5
    1fdc:	00190793          	add	a5,s2,1
    1fe0:	03078793          	add	a5,a5,48
    1fe4:	002787b3          	add	a5,a5,sp
    1fe8:	000a0593          	mv	a1,s4
    1fec:	fc078aa3          	sb	zero,-43(a5)
    1ff0:	00b00613          	li	a2,11
    1ff4:	00048513          	mv	a0,s1
    1ff8:	fffff097          	auipc	ra,0xfffff
    1ffc:	d80080e7          	jalr	-640(ra) # d78 <memcpy>
    2000:	00410513          	add	a0,sp,4
    2004:	fffff097          	auipc	ra,0xfffff
    2008:	d98080e7          	jalr	-616(ra) # d9c <strlen>
    200c:	40a484b3          	sub	s1,s1,a0
    2010:	00050613          	mv	a2,a0
    2014:	00410593          	add	a1,sp,4
    2018:	00848513          	add	a0,s1,8
    201c:	fffff097          	auipc	ra,0xfffff
    2020:	d5c080e7          	jalr	-676(ra) # d78 <memcpy>
    2024:	05c12083          	lw	ra,92(sp)
    2028:	05812403          	lw	s0,88(sp)
    202c:	05412483          	lw	s1,84(sp)
    2030:	05012903          	lw	s2,80(sp)
    2034:	04c12983          	lw	s3,76(sp)
    2038:	04812a03          	lw	s4,72(sp)
    203c:	04412a83          	lw	s5,68(sp)
    2040:	04012b03          	lw	s6,64(sp)
    2044:	03c12b83          	lw	s7,60(sp)
    2048:	00100513          	li	a0,1
    204c:	06010113          	add	sp,sp,96
    2050:	00008067          	ret
    2054:	0007c683          	lbu	a3,0(a5)
    2058:	fff78793          	add	a5,a5,-1
    205c:	00d70023          	sb	a3,0(a4)
    2060:	f65ff06f          	j	1fc4 <fatfs_lfn_generate_tail+0xd0>
    2064:	00000513          	li	a0,0
    2068:	00008067          	ret

0000206c <fatfs_total_path_levels>:
    206c:	00050793          	mv	a5,a0
    2070:	06050463          	beqz	a0,20d8 <fatfs_total_path_levels+0x6c>
    2074:	00054703          	lbu	a4,0(a0)
    2078:	02f00693          	li	a3,47
    207c:	00d71863          	bne	a4,a3,208c <fatfs_total_path_levels+0x20>
    2080:	00150793          	add	a5,a0,1
    2084:	00000513          	li	a0,0
    2088:	0400006f          	j	20c8 <fatfs_total_path_levels+0x5c>
    208c:	00154683          	lbu	a3,1(a0)
    2090:	03a00713          	li	a4,58
    2094:	00e68a63          	beq	a3,a4,20a8 <fatfs_total_path_levels+0x3c>
    2098:	00254683          	lbu	a3,2(a0)
    209c:	05c00713          	li	a4,92
    20a0:	fff00513          	li	a0,-1
    20a4:	02e69c63          	bne	a3,a4,20dc <fatfs_total_path_levels+0x70>
    20a8:	00378793          	add	a5,a5,3
    20ac:	05c00713          	li	a4,92
    20b0:	fd5ff06f          	j	2084 <fatfs_total_path_levels+0x18>
    20b4:	00178793          	add	a5,a5,1
    20b8:	00e68663          	beq	a3,a4,20c4 <fatfs_total_path_levels+0x58>
    20bc:	0007c683          	lbu	a3,0(a5)
    20c0:	fe069ae3          	bnez	a3,20b4 <fatfs_total_path_levels+0x48>
    20c4:	00150513          	add	a0,a0,1
    20c8:	0007c683          	lbu	a3,0(a5)
    20cc:	fe0698e3          	bnez	a3,20bc <fatfs_total_path_levels+0x50>
    20d0:	fff50513          	add	a0,a0,-1
    20d4:	00008067          	ret
    20d8:	fff00513          	li	a0,-1
    20dc:	00008067          	ret

000020e0 <fatfs_get_substring>:
    20e0:	0e050663          	beqz	a0,21cc <fatfs_get_substring+0xec>
    20e4:	fe010113          	add	sp,sp,-32
    20e8:	00912a23          	sw	s1,20(sp)
    20ec:	00112e23          	sw	ra,28(sp)
    20f0:	00812c23          	sw	s0,24(sp)
    20f4:	01212823          	sw	s2,16(sp)
    20f8:	01312623          	sw	s3,12(sp)
    20fc:	01412423          	sw	s4,8(sp)
    2100:	00050793          	mv	a5,a0
    2104:	00068493          	mv	s1,a3
    2108:	fff00513          	li	a0,-1
    210c:	06d05a63          	blez	a3,2180 <fatfs_get_substring+0xa0>
    2110:	0007c983          	lbu	s3,0(a5)
    2114:	02f00713          	li	a4,47
    2118:	00058a13          	mv	s4,a1
    211c:	00060913          	mv	s2,a2
    2120:	00178413          	add	s0,a5,1
    2124:	02e98463          	beq	s3,a4,214c <fatfs_get_substring+0x6c>
    2128:	0017c683          	lbu	a3,1(a5)
    212c:	03a00713          	li	a4,58
    2130:	00e68a63          	beq	a3,a4,2144 <fatfs_get_substring+0x64>
    2134:	0027c683          	lbu	a3,2(a5)
    2138:	05c00713          	li	a4,92
    213c:	fff00513          	li	a0,-1
    2140:	04e69063          	bne	a3,a4,2180 <fatfs_get_substring+0xa0>
    2144:	00378413          	add	s0,a5,3
    2148:	05c00993          	li	s3,92
    214c:	00040513          	mv	a0,s0
    2150:	fffff097          	auipc	ra,0xfffff
    2154:	c4c080e7          	jalr	-948(ra) # d9c <strlen>
    2158:	00000713          	li	a4,0
    215c:	00000693          	li	a3,0
    2160:	00000793          	li	a5,0
    2164:	fff48493          	add	s1,s1,-1
    2168:	00e90633          	add	a2,s2,a4
    216c:	02a7ca63          	blt	a5,a0,21a0 <fatfs_get_substring+0xc0>
    2170:	00060023          	sb	zero,0(a2)
    2174:	00094503          	lbu	a0,0(s2)
    2178:	00153513          	seqz	a0,a0
    217c:	40a00533          	neg	a0,a0
    2180:	01c12083          	lw	ra,28(sp)
    2184:	01812403          	lw	s0,24(sp)
    2188:	01412483          	lw	s1,20(sp)
    218c:	01012903          	lw	s2,16(sp)
    2190:	00c12983          	lw	s3,12(sp)
    2194:	00812a03          	lw	s4,8(sp)
    2198:	02010113          	add	sp,sp,32
    219c:	00008067          	ret
    21a0:	00f405b3          	add	a1,s0,a5
    21a4:	0005c583          	lbu	a1,0(a1)
    21a8:	01358c63          	beq	a1,s3,21c0 <fatfs_get_substring+0xe0>
    21ac:	01469c63          	bne	a3,s4,21c4 <fatfs_get_substring+0xe4>
    21b0:	00975a63          	bge	a4,s1,21c4 <fatfs_get_substring+0xe4>
    21b4:	00170713          	add	a4,a4,1
    21b8:	00b60023          	sb	a1,0(a2)
    21bc:	0080006f          	j	21c4 <fatfs_get_substring+0xe4>
    21c0:	00168693          	add	a3,a3,1
    21c4:	00178793          	add	a5,a5,1
    21c8:	fa1ff06f          	j	2168 <fatfs_get_substring+0x88>
    21cc:	fff00513          	li	a0,-1
    21d0:	00008067          	ret

000021d4 <fatfs_split_path>:
    21d4:	fd010113          	add	sp,sp,-48
    21d8:	02912223          	sw	s1,36(sp)
    21dc:	01312e23          	sw	s3,28(sp)
    21e0:	01412c23          	sw	s4,24(sp)
    21e4:	01512a23          	sw	s5,20(sp)
    21e8:	02112623          	sw	ra,44(sp)
    21ec:	00068a93          	mv	s5,a3
    21f0:	02812423          	sw	s0,40(sp)
    21f4:	03212023          	sw	s2,32(sp)
    21f8:	00050993          	mv	s3,a0
    21fc:	00058493          	mv	s1,a1
    2200:	00060a13          	mv	s4,a2
    2204:	00e12623          	sw	a4,12(sp)
    2208:	00000097          	auipc	ra,0x0
    220c:	e64080e7          	jalr	-412(ra) # 206c <fatfs_total_path_levels>
    2210:	fff00793          	li	a5,-1
    2214:	00c12683          	lw	a3,12(sp)
    2218:	02f51863          	bne	a0,a5,2248 <fatfs_split_path+0x74>
    221c:	fff00913          	li	s2,-1
    2220:	02c12083          	lw	ra,44(sp)
    2224:	02812403          	lw	s0,40(sp)
    2228:	02412483          	lw	s1,36(sp)
    222c:	01c12983          	lw	s3,28(sp)
    2230:	01812a03          	lw	s4,24(sp)
    2234:	01412a83          	lw	s5,20(sp)
    2238:	00090513          	mv	a0,s2
    223c:	02012903          	lw	s2,32(sp)
    2240:	03010113          	add	sp,sp,48
    2244:	00008067          	ret
    2248:	00050593          	mv	a1,a0
    224c:	00050413          	mv	s0,a0
    2250:	000a8613          	mv	a2,s5
    2254:	00098513          	mv	a0,s3
    2258:	00000097          	auipc	ra,0x0
    225c:	e88080e7          	jalr	-376(ra) # 20e0 <fatfs_get_substring>
    2260:	00050913          	mv	s2,a0
    2264:	fa051ce3          	bnez	a0,221c <fatfs_split_path+0x48>
    2268:	00041663          	bnez	s0,2274 <fatfs_split_path+0xa0>
    226c:	00048023          	sb	zero,0(s1)
    2270:	fb1ff06f          	j	2220 <fatfs_split_path+0x4c>
    2274:	00098513          	mv	a0,s3
    2278:	fffff097          	auipc	ra,0xfffff
    227c:	b24080e7          	jalr	-1244(ra) # d9c <strlen>
    2280:	00050413          	mv	s0,a0
    2284:	000a8513          	mv	a0,s5
    2288:	fffff097          	auipc	ra,0xfffff
    228c:	b14080e7          	jalr	-1260(ra) # d9c <strlen>
    2290:	40a40433          	sub	s0,s0,a0
    2294:	008a5463          	bge	s4,s0,229c <fatfs_split_path+0xc8>
    2298:	000a0413          	mv	s0,s4
    229c:	00048513          	mv	a0,s1
    22a0:	00040613          	mv	a2,s0
    22a4:	00098593          	mv	a1,s3
    22a8:	008484b3          	add	s1,s1,s0
    22ac:	fffff097          	auipc	ra,0xfffff
    22b0:	acc080e7          	jalr	-1332(ra) # d78 <memcpy>
    22b4:	fe048fa3          	sb	zero,-1(s1)
    22b8:	f69ff06f          	j	2220 <fatfs_split_path+0x4c>

000022bc <fatfs_compare_names>:
    22bc:	fd010113          	add	sp,sp,-48
    22c0:	02112623          	sw	ra,44(sp)
    22c4:	02812423          	sw	s0,40(sp)
    22c8:	02912223          	sw	s1,36(sp)
    22cc:	03212023          	sw	s2,32(sp)
    22d0:	01312e23          	sw	s3,28(sp)
    22d4:	00058913          	mv	s2,a1
    22d8:	01412c23          	sw	s4,24(sp)
    22dc:	01512a23          	sw	s5,20(sp)
    22e0:	01612823          	sw	s6,16(sp)
    22e4:	00050a13          	mv	s4,a0
    22e8:	fffff097          	auipc	ra,0xfffff
    22ec:	28c080e7          	jalr	652(ra) # 1574 <FileString_GetExtension>
    22f0:	00050493          	mv	s1,a0
    22f4:	00090513          	mv	a0,s2
    22f8:	fffff097          	auipc	ra,0xfffff
    22fc:	27c080e7          	jalr	636(ra) # 1574 <FileString_GetExtension>
    2300:	fff00793          	li	a5,-1
    2304:	00050413          	mv	s0,a0
    2308:	00000993          	li	s3,0
    230c:	08f49a63          	bne	s1,a5,23a0 <fatfs_compare_names+0xe4>
    2310:	0c951e63          	bne	a0,s1,23ec <fatfs_compare_names+0x130>
    2314:	000a0513          	mv	a0,s4
    2318:	fffff097          	auipc	ra,0xfffff
    231c:	a84080e7          	jalr	-1404(ra) # d9c <strlen>
    2320:	00050493          	mv	s1,a0
    2324:	00090513          	mv	a0,s2
    2328:	fffff097          	auipc	ra,0xfffff
    232c:	a74080e7          	jalr	-1420(ra) # d9c <strlen>
    2330:	00050413          	mv	s0,a0
    2334:	fff48793          	add	a5,s1,-1
    2338:	00fa07b3          	add	a5,s4,a5
    233c:	40978733          	sub	a4,a5,s1
    2340:	02000613          	li	a2,32
    2344:	00078693          	mv	a3,a5
    2348:	00e78863          	beq	a5,a4,2358 <fatfs_compare_names+0x9c>
    234c:	0007c583          	lbu	a1,0(a5)
    2350:	fff78793          	add	a5,a5,-1
    2354:	0cc58263          	beq	a1,a2,2418 <fatfs_compare_names+0x15c>
    2358:	fff40793          	add	a5,s0,-1
    235c:	00f907b3          	add	a5,s2,a5
    2360:	40878733          	sub	a4,a5,s0
    2364:	02000613          	li	a2,32
    2368:	00078693          	mv	a3,a5
    236c:	00e78863          	beq	a5,a4,237c <fatfs_compare_names+0xc0>
    2370:	0007c583          	lbu	a1,0(a5)
    2374:	fff78793          	add	a5,a5,-1
    2378:	0ac58463          	beq	a1,a2,2420 <fatfs_compare_names+0x164>
    237c:	00000993          	li	s3,0
    2380:	06941663          	bne	s0,s1,23ec <fatfs_compare_names+0x130>
    2384:	00040613          	mv	a2,s0
    2388:	00090593          	mv	a1,s2
    238c:	000a0513          	mv	a0,s4
    2390:	fffff097          	auipc	ra,0xfffff
    2394:	14c080e7          	jalr	332(ra) # 14dc <FileString_StrCmpNoCase>
    2398:	00153993          	seqz	s3,a0
    239c:	0500006f          	j	23ec <fatfs_compare_names+0x130>
    23a0:	04f50663          	beq	a0,a5,23ec <fatfs_compare_names+0x130>
    23a4:	00148a93          	add	s5,s1,1
    23a8:	015a0ab3          	add	s5,s4,s5
    23ac:	00150b13          	add	s6,a0,1
    23b0:	000a8513          	mv	a0,s5
    23b4:	fffff097          	auipc	ra,0xfffff
    23b8:	9e8080e7          	jalr	-1560(ra) # d9c <strlen>
    23bc:	01690b33          	add	s6,s2,s6
    23c0:	00a12623          	sw	a0,12(sp)
    23c4:	000b0513          	mv	a0,s6
    23c8:	fffff097          	auipc	ra,0xfffff
    23cc:	9d4080e7          	jalr	-1580(ra) # d9c <strlen>
    23d0:	00c12603          	lw	a2,12(sp)
    23d4:	00a61c63          	bne	a2,a0,23ec <fatfs_compare_names+0x130>
    23d8:	000b0593          	mv	a1,s6
    23dc:	000a8513          	mv	a0,s5
    23e0:	fffff097          	auipc	ra,0xfffff
    23e4:	0fc080e7          	jalr	252(ra) # 14dc <FileString_StrCmpNoCase>
    23e8:	f40506e3          	beqz	a0,2334 <fatfs_compare_names+0x78>
    23ec:	02c12083          	lw	ra,44(sp)
    23f0:	02812403          	lw	s0,40(sp)
    23f4:	02412483          	lw	s1,36(sp)
    23f8:	02012903          	lw	s2,32(sp)
    23fc:	01812a03          	lw	s4,24(sp)
    2400:	01412a83          	lw	s5,20(sp)
    2404:	01012b03          	lw	s6,16(sp)
    2408:	00098513          	mv	a0,s3
    240c:	01c12983          	lw	s3,28(sp)
    2410:	03010113          	add	sp,sp,48
    2414:	00008067          	ret
    2418:	414684b3          	sub	s1,a3,s4
    241c:	f29ff06f          	j	2344 <fatfs_compare_names+0x88>
    2420:	41268433          	sub	s0,a3,s2
    2424:	f45ff06f          	j	2368 <fatfs_compare_names+0xac>

00002428 <_check_file_open>:
    2428:	fe010113          	add	sp,sp,-32
    242c:	000067b7          	lui	a5,0x6
    2430:	00812c23          	sw	s0,24(sp)
    2434:	1107a403          	lw	s0,272(a5) # 6110 <_open_file_list>
    2438:	00912a23          	sw	s1,20(sp)
    243c:	01212823          	sw	s2,16(sp)
    2440:	01312623          	sw	s3,12(sp)
    2444:	00112e23          	sw	ra,28(sp)
    2448:	00050493          	mv	s1,a0
    244c:	01450913          	add	s2,a0,20
    2450:	11850993          	add	s3,a0,280
    2454:	02041263          	bnez	s0,2478 <_check_file_open+0x50>
    2458:	00000513          	li	a0,0
    245c:	01c12083          	lw	ra,28(sp)
    2460:	01812403          	lw	s0,24(sp)
    2464:	01412483          	lw	s1,20(sp)
    2468:	01012903          	lw	s2,16(sp)
    246c:	00c12983          	lw	s3,12(sp)
    2470:	02010113          	add	sp,sp,32
    2474:	00008067          	ret
    2478:	bc440793          	add	a5,s0,-1084
    247c:	02f48663          	beq	s1,a5,24a8 <_check_file_open+0x80>
    2480:	00090593          	mv	a1,s2
    2484:	bd840513          	add	a0,s0,-1064
    2488:	00000097          	auipc	ra,0x0
    248c:	e34080e7          	jalr	-460(ra) # 22bc <fatfs_compare_names>
    2490:	00050c63          	beqz	a0,24a8 <_check_file_open+0x80>
    2494:	00098593          	mv	a1,s3
    2498:	cdc40513          	add	a0,s0,-804
    249c:	00000097          	auipc	ra,0x0
    24a0:	e20080e7          	jalr	-480(ra) # 22bc <fatfs_compare_names>
    24a4:	00051663          	bnez	a0,24b0 <_check_file_open+0x88>
    24a8:	00442403          	lw	s0,4(s0)
    24ac:	fa9ff06f          	j	2454 <_check_file_open+0x2c>
    24b0:	00100513          	li	a0,1
    24b4:	fa9ff06f          	j	245c <_check_file_open+0x34>

000024b8 <fatfs_get_sfn_display_name>:
    24b8:	00000713          	li	a4,0
    24bc:	00c00613          	li	a2,12
    24c0:	02000813          	li	a6,32
    24c4:	01900893          	li	a7,25
    24c8:	0005c783          	lbu	a5,0(a1)
    24cc:	00078463          	beqz	a5,24d4 <fatfs_get_sfn_display_name+0x1c>
    24d0:	00c71863          	bne	a4,a2,24e0 <fatfs_get_sfn_display_name+0x28>
    24d4:	00050023          	sb	zero,0(a0)
    24d8:	00100513          	li	a0,1
    24dc:	00008067          	ret
    24e0:	00158593          	add	a1,a1,1
    24e4:	ff0782e3          	beq	a5,a6,24c8 <fatfs_get_sfn_display_name+0x10>
    24e8:	fbf78693          	add	a3,a5,-65
    24ec:	0ff6f693          	zext.b	a3,a3
    24f0:	00d8e663          	bltu	a7,a3,24fc <fatfs_get_sfn_display_name+0x44>
    24f4:	02078793          	add	a5,a5,32
    24f8:	0ff7f793          	zext.b	a5,a5
    24fc:	00f50023          	sb	a5,0(a0)
    2500:	00170713          	add	a4,a4,1
    2504:	00150513          	add	a0,a0,1
    2508:	fc1ff06f          	j	24c8 <fatfs_get_sfn_display_name+0x10>

0000250c <fatfs_fat_init>:
    250c:	ff010113          	add	sp,sp,-16
    2510:	00812423          	sw	s0,8(sp)
    2514:	00912223          	sw	s1,4(sp)
    2518:	00112623          	sw	ra,12(sp)
    251c:	fff00793          	li	a5,-1
    2520:	25850493          	add	s1,a0,600
    2524:	00050413          	mv	s0,a0
    2528:	44f52c23          	sw	a5,1112(a0)
    252c:	24052a23          	sw	zero,596(a0)
    2530:	44052e23          	sw	zero,1116(a0)
    2534:	20000613          	li	a2,512
    2538:	00048513          	mv	a0,s1
    253c:	00000593          	li	a1,0
    2540:	fffff097          	auipc	ra,0xfffff
    2544:	81c080e7          	jalr	-2020(ra) # d5c <memset>
    2548:	25442783          	lw	a5,596(s0)
    254c:	00c12083          	lw	ra,12(sp)
    2550:	24942a23          	sw	s1,596(s0)
    2554:	46042023          	sw	zero,1120(s0)
    2558:	46f42223          	sw	a5,1124(s0)
    255c:	00812403          	lw	s0,8(sp)
    2560:	00412483          	lw	s1,4(sp)
    2564:	01010113          	add	sp,sp,16
    2568:	00008067          	ret

0000256c <fatfs_init>:
    256c:	fd010113          	add	sp,sp,-48
    2570:	02812423          	sw	s0,40(sp)
    2574:	02112623          	sw	ra,44(sp)
    2578:	02912223          	sw	s1,36(sp)
    257c:	03212023          	sw	s2,32(sp)
    2580:	01312e23          	sw	s3,28(sp)
    2584:	fff00793          	li	a5,-1
    2588:	24f52223          	sw	a5,580(a0)
    258c:	24052423          	sw	zero,584(a0)
    2590:	02052223          	sw	zero,36(a0)
    2594:	00050413          	mv	s0,a0
    2598:	00000097          	auipc	ra,0x0
    259c:	f74080e7          	jalr	-140(ra) # 250c <fatfs_fat_init>
    25a0:	03442783          	lw	a5,52(s0)
    25a4:	02079263          	bnez	a5,25c8 <fatfs_init+0x5c>
    25a8:	fff00513          	li	a0,-1
    25ac:	02c12083          	lw	ra,44(sp)
    25b0:	02812403          	lw	s0,40(sp)
    25b4:	02412483          	lw	s1,36(sp)
    25b8:	02012903          	lw	s2,32(sp)
    25bc:	01c12983          	lw	s3,28(sp)
    25c0:	03010113          	add	sp,sp,48
    25c4:	00008067          	ret
    25c8:	04440593          	add	a1,s0,68
    25cc:	00100613          	li	a2,1
    25d0:	00000513          	li	a0,0
    25d4:	00b12623          	sw	a1,12(sp)
    25d8:	000780e7          	jalr	a5
    25dc:	fc0506e3          	beqz	a0,25a8 <fatfs_init+0x3c>
    25e0:	24042703          	lw	a4,576(s0)
    25e4:	ffff07b7          	lui	a5,0xffff0
    25e8:	00c12583          	lw	a1,12(sp)
    25ec:	00e7f7b3          	and	a5,a5,a4
    25f0:	aa550737          	lui	a4,0xaa550
    25f4:	00e78663          	beq	a5,a4,2600 <fatfs_init+0x94>
    25f8:	ffd00513          	li	a0,-3
    25fc:	fb1ff06f          	j	25ac <fatfs_init+0x40>
    2600:	24245703          	lhu	a4,578(s0)
    2604:	0000b7b7          	lui	a5,0xb
    2608:	a5578793          	add	a5,a5,-1451 # aa55 <Songs+0x3b11>
    260c:	ffc00513          	li	a0,-4
    2610:	f8f71ee3          	bne	a4,a5,25ac <fatfs_init+0x40>
    2614:	20644783          	lbu	a5,518(s0)
    2618:	00600713          	li	a4,6
    261c:	02f76463          	bltu	a4,a5,2644 <fatfs_init+0xd8>
    2620:	00400713          	li	a4,4
    2624:	00f76663          	bltu	a4,a5,2630 <fatfs_init+0xc4>
    2628:	00000513          	li	a0,0
    262c:	02078663          	beqz	a5,2658 <fatfs_init+0xec>
    2630:	20c45503          	lhu	a0,524(s0)
    2634:	20a45783          	lhu	a5,522(s0)
    2638:	01051513          	sll	a0,a0,0x10
    263c:	00f56533          	or	a0,a0,a5
    2640:	0180006f          	j	2658 <fatfs_init+0xec>
    2644:	00c00713          	li	a4,12
    2648:	12f76e63          	bltu	a4,a5,2784 <fatfs_init+0x218>
    264c:	00a00713          	li	a4,10
    2650:	00000513          	li	a0,0
    2654:	fcf76ee3          	bltu	a4,a5,2630 <fatfs_init+0xc4>
    2658:	03442783          	lw	a5,52(s0)
    265c:	00a42e23          	sw	a0,28(s0)
    2660:	00100613          	li	a2,1
    2664:	000780e7          	jalr	a5
    2668:	f40500e3          	beqz	a0,25a8 <fatfs_init+0x3c>
    266c:	05044783          	lbu	a5,80(s0)
    2670:	04f44703          	lbu	a4,79(s0)
    2674:	ffe00513          	li	a0,-2
    2678:	00879793          	sll	a5,a5,0x8
    267c:	00e7e7b3          	or	a5,a5,a4
    2680:	20000713          	li	a4,512
    2684:	f2e794e3          	bne	a5,a4,25ac <fatfs_init+0x40>
    2688:	05644483          	lbu	s1,86(s0)
    268c:	05544783          	lbu	a5,85(s0)
    2690:	05144983          	lbu	s3,81(s0)
    2694:	00849493          	sll	s1,s1,0x8
    2698:	05a45583          	lhu	a1,90(s0)
    269c:	00f4e4b3          	or	s1,s1,a5
    26a0:	01340023          	sb	s3,0(s0)
    26a4:	02941423          	sh	s1,40(s0)
    26a8:	05245903          	lhu	s2,82(s0)
    26ac:	05444503          	lbu	a0,84(s0)
    26b0:	00059463          	bnez	a1,26b8 <fatfs_init+0x14c>
    26b4:	06842583          	lw	a1,104(s0)
    26b8:	07042783          	lw	a5,112(s0)
    26bc:	02b42023          	sw	a1,32(s0)
    26c0:	00549493          	sll	s1,s1,0x5
    26c4:	00f42423          	sw	a5,8(s0)
    26c8:	07445783          	lhu	a5,116(s0)
    26cc:	1ff48493          	add	s1,s1,511
    26d0:	4094d493          	sra	s1,s1,0x9
    26d4:	00f41c23          	sh	a5,24(s0)
    26d8:	fffff097          	auipc	ra,0xfffff
    26dc:	d70080e7          	jalr	-656(ra) # 1448 <__mulsi3>
    26e0:	00a907b3          	add	a5,s2,a0
    26e4:	00f42623          	sw	a5,12(s0)
    26e8:	01c42783          	lw	a5,28(s0)
    26ec:	24245703          	lhu	a4,578(s0)
    26f0:	00942823          	sw	s1,16(s0)
    26f4:	00f907b3          	add	a5,s2,a5
    26f8:	00f42a23          	sw	a5,20(s0)
    26fc:	00f507b3          	add	a5,a0,a5
    2700:	00f42223          	sw	a5,4(s0)
    2704:	0000b7b7          	lui	a5,0xb
    2708:	a5578793          	add	a5,a5,-1451 # aa55 <Songs+0x3b11>
    270c:	eef716e3          	bne	a4,a5,25f8 <fatfs_init+0x8c>
    2710:	05844783          	lbu	a5,88(s0)
    2714:	05744703          	lbu	a4,87(s0)
    2718:	00879793          	sll	a5,a5,0x8
    271c:	00e7e7b3          	or	a5,a5,a4
    2720:	00079463          	bnez	a5,2728 <fatfs_init+0x1bc>
    2724:	06442783          	lw	a5,100(s0)
    2728:	00990933          	add	s2,s2,s1
    272c:	00a90533          	add	a0,s2,a0
    2730:	40a787b3          	sub	a5,a5,a0
    2734:	ffb00513          	li	a0,-5
    2738:	e6098ae3          	beqz	s3,25ac <fatfs_init+0x40>
    273c:	00078513          	mv	a0,a5
    2740:	00098593          	mv	a1,s3
    2744:	ffffe097          	auipc	ra,0xffffe
    2748:	56c080e7          	jalr	1388(ra) # cb0 <__udivsi3>
    274c:	00001737          	lui	a4,0x1
    2750:	00050793          	mv	a5,a0
    2754:	ff470713          	add	a4,a4,-12 # ff4 <oled_fullscreen+0x5c>
    2758:	ffb00513          	li	a0,-5
    275c:	e4f778e3          	bgeu	a4,a5,25ac <fatfs_init+0x40>
    2760:	00010737          	lui	a4,0x10
    2764:	ff470713          	add	a4,a4,-12 # fff4 <Songs+0x90b0>
    2768:	00100693          	li	a3,1
    276c:	00f76663          	bltu	a4,a5,2778 <fatfs_init+0x20c>
    2770:	00042423          	sw	zero,8(s0)
    2774:	00000693          	li	a3,0
    2778:	02d42823          	sw	a3,48(s0)
    277c:	00000513          	li	a0,0
    2780:	e2dff06f          	j	25ac <fatfs_init+0x40>
    2784:	ff278793          	add	a5,a5,-14
    2788:	0ff7f793          	zext.b	a5,a5
    278c:	00100713          	li	a4,1
    2790:	00000513          	li	a0,0
    2794:	e8f77ee3          	bgeu	a4,a5,2630 <fatfs_init+0xc4>
    2798:	ec1ff06f          	j	2658 <fatfs_init+0xec>

0000279c <fl_attach_media>:
    279c:	000067b7          	lui	a5,0x6
    27a0:	11c7a783          	lw	a5,284(a5) # 611c <_filelib_init>
    27a4:	ff010113          	add	sp,sp,-16
    27a8:	00812423          	sw	s0,8(sp)
    27ac:	00912223          	sw	s1,4(sp)
    27b0:	00112623          	sw	ra,12(sp)
    27b4:	00050493          	mv	s1,a0
    27b8:	00058413          	mv	s0,a1
    27bc:	00079663          	bnez	a5,27c8 <fl_attach_media+0x2c>
    27c0:	fffff097          	auipc	ra,0xfffff
    27c4:	148080e7          	jalr	328(ra) # 1908 <fl_init>
    27c8:	00006537          	lui	a0,0x6
    27cc:	17c50793          	add	a5,a0,380 # 617c <_fs>
    27d0:	17c50513          	add	a0,a0,380
    27d4:	0297aa23          	sw	s1,52(a5)
    27d8:	0287ac23          	sw	s0,56(a5)
    27dc:	00000097          	auipc	ra,0x0
    27e0:	d90080e7          	jalr	-624(ra) # 256c <fatfs_init>
    27e4:	00051863          	bnez	a0,27f4 <fl_attach_media+0x58>
    27e8:	000067b7          	lui	a5,0x6
    27ec:	00100713          	li	a4,1
    27f0:	10e7ac23          	sw	a4,280(a5) # 6118 <_filelib_valid>
    27f4:	00c12083          	lw	ra,12(sp)
    27f8:	00812403          	lw	s0,8(sp)
    27fc:	00412483          	lw	s1,4(sp)
    2800:	01010113          	add	sp,sp,16
    2804:	00008067          	ret

00002808 <fatfs_fat_purge>:
    2808:	ff010113          	add	sp,sp,-16
    280c:	00812423          	sw	s0,8(sp)
    2810:	25452403          	lw	s0,596(a0)
    2814:	00912223          	sw	s1,4(sp)
    2818:	00112623          	sw	ra,12(sp)
    281c:	00050493          	mv	s1,a0
    2820:	00041663          	bnez	s0,282c <fatfs_fat_purge+0x24>
    2824:	00100513          	li	a0,1
    2828:	0280006f          	j	2850 <fatfs_fat_purge+0x48>
    282c:	20442783          	lw	a5,516(s0)
    2830:	00079663          	bnez	a5,283c <fatfs_fat_purge+0x34>
    2834:	20c42403          	lw	s0,524(s0)
    2838:	fe9ff06f          	j	2820 <fatfs_fat_purge+0x18>
    283c:	00040593          	mv	a1,s0
    2840:	00048513          	mv	a0,s1
    2844:	fffff097          	auipc	ra,0xfffff
    2848:	d5c080e7          	jalr	-676(ra) # 15a0 <fatfs_fat_writeback>
    284c:	fe0514e3          	bnez	a0,2834 <fatfs_fat_purge+0x2c>
    2850:	00c12083          	lw	ra,12(sp)
    2854:	00812403          	lw	s0,8(sp)
    2858:	00412483          	lw	s1,4(sp)
    285c:	01010113          	add	sp,sp,16
    2860:	00008067          	ret

00002864 <fatfs_find_next_cluster>:
    2864:	ff010113          	add	sp,sp,-16
    2868:	00812423          	sw	s0,8(sp)
    286c:	01212023          	sw	s2,0(sp)
    2870:	00112623          	sw	ra,12(sp)
    2874:	00912223          	sw	s1,4(sp)
    2878:	00050913          	mv	s2,a0
    287c:	00200413          	li	s0,2
    2880:	00058463          	beqz	a1,2888 <fatfs_find_next_cluster+0x24>
    2884:	00058413          	mv	s0,a1
    2888:	03092783          	lw	a5,48(s2)
    288c:	00745493          	srl	s1,s0,0x7
    2890:	00079463          	bnez	a5,2898 <fatfs_find_next_cluster+0x34>
    2894:	00845493          	srl	s1,s0,0x8
    2898:	01492583          	lw	a1,20(s2)
    289c:	00090513          	mv	a0,s2
    28a0:	00b485b3          	add	a1,s1,a1
    28a4:	fffff097          	auipc	ra,0xfffff
    28a8:	d7c080e7          	jalr	-644(ra) # 1620 <fatfs_fat_read_sector>
    28ac:	00050793          	mv	a5,a0
    28b0:	fff00513          	li	a0,-1
    28b4:	04078a63          	beqz	a5,2908 <fatfs_find_next_cluster+0xa4>
    28b8:	03092703          	lw	a4,48(s2)
    28bc:	2087a783          	lw	a5,520(a5)
    28c0:	06071063          	bnez	a4,2920 <fatfs_find_next_cluster+0xbc>
    28c4:	00849493          	sll	s1,s1,0x8
    28c8:	40940433          	sub	s0,s0,s1
    28cc:	00010737          	lui	a4,0x10
    28d0:	00141413          	sll	s0,s0,0x1
    28d4:	fff70713          	add	a4,a4,-1 # ffff <Songs+0x90bb>
    28d8:	00e47433          	and	s0,s0,a4
    28dc:	008787b3          	add	a5,a5,s0
    28e0:	0017c503          	lbu	a0,1(a5)
    28e4:	0007c783          	lbu	a5,0(a5)
    28e8:	00851513          	sll	a0,a0,0x8
    28ec:	00f50533          	add	a0,a0,a5
    28f0:	ffff07b7          	lui	a5,0xffff0
    28f4:	00878793          	add	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    28f8:	00f507b3          	add	a5,a0,a5
    28fc:	00700713          	li	a4,7
    2900:	00f76463          	bltu	a4,a5,2908 <fatfs_find_next_cluster+0xa4>
    2904:	fff00513          	li	a0,-1
    2908:	00c12083          	lw	ra,12(sp)
    290c:	00812403          	lw	s0,8(sp)
    2910:	00412483          	lw	s1,4(sp)
    2914:	00012903          	lw	s2,0(sp)
    2918:	01010113          	add	sp,sp,16
    291c:	00008067          	ret
    2920:	00749493          	sll	s1,s1,0x7
    2924:	40940433          	sub	s0,s0,s1
    2928:	00010737          	lui	a4,0x10
    292c:	fff70713          	add	a4,a4,-1 # ffff <Songs+0x90bb>
    2930:	00241413          	sll	s0,s0,0x2
    2934:	00e47433          	and	s0,s0,a4
    2938:	008787b3          	add	a5,a5,s0
    293c:	0037c503          	lbu	a0,3(a5)
    2940:	0027c703          	lbu	a4,2(a5)
    2944:	01851513          	sll	a0,a0,0x18
    2948:	01071713          	sll	a4,a4,0x10
    294c:	00e50533          	add	a0,a0,a4
    2950:	0007c703          	lbu	a4,0(a5)
    2954:	0017c783          	lbu	a5,1(a5)
    2958:	00e50533          	add	a0,a0,a4
    295c:	00879793          	sll	a5,a5,0x8
    2960:	00f50533          	add	a0,a0,a5
    2964:	00451513          	sll	a0,a0,0x4
    2968:	00455513          	srl	a0,a0,0x4
    296c:	f00007b7          	lui	a5,0xf0000
    2970:	f85ff06f          	j	28f4 <fatfs_find_next_cluster+0x90>

00002974 <fatfs_sector_reader>:
    2974:	03052783          	lw	a5,48(a0)
    2978:	fd010113          	add	sp,sp,-48
    297c:	02812423          	sw	s0,40(sp)
    2980:	03212023          	sw	s2,32(sp)
    2984:	01312e23          	sw	s3,28(sp)
    2988:	02112623          	sw	ra,44(sp)
    298c:	02912223          	sw	s1,36(sp)
    2990:	01412c23          	sw	s4,24(sp)
    2994:	01512a23          	sw	s5,20(sp)
    2998:	00f5e7b3          	or	a5,a1,a5
    299c:	00050413          	mv	s0,a0
    29a0:	00060913          	mv	s2,a2
    29a4:	00068993          	mv	s3,a3
    29a8:	06079c63          	bnez	a5,2a20 <fatfs_sector_reader+0xac>
    29ac:	01052783          	lw	a5,16(a0)
    29b0:	02f66663          	bltu	a2,a5,29dc <fatfs_sector_reader+0x68>
    29b4:	00000513          	li	a0,0
    29b8:	02c12083          	lw	ra,44(sp)
    29bc:	02812403          	lw	s0,40(sp)
    29c0:	02412483          	lw	s1,36(sp)
    29c4:	02012903          	lw	s2,32(sp)
    29c8:	01c12983          	lw	s3,28(sp)
    29cc:	01812a03          	lw	s4,24(sp)
    29d0:	01412a83          	lw	s5,20(sp)
    29d4:	03010113          	add	sp,sp,48
    29d8:	00008067          	ret
    29dc:	01c52503          	lw	a0,28(a0)
    29e0:	00c42783          	lw	a5,12(s0)
    29e4:	00f50533          	add	a0,a0,a5
    29e8:	01250533          	add	a0,a0,s2
    29ec:	0a098263          	beqz	s3,2a90 <fatfs_sector_reader+0x11c>
    29f0:	03442783          	lw	a5,52(s0)
    29f4:	00100613          	li	a2,1
    29f8:	00098593          	mv	a1,s3
    29fc:	02812403          	lw	s0,40(sp)
    2a00:	02c12083          	lw	ra,44(sp)
    2a04:	02412483          	lw	s1,36(sp)
    2a08:	02012903          	lw	s2,32(sp)
    2a0c:	01c12983          	lw	s3,28(sp)
    2a10:	01812a03          	lw	s4,24(sp)
    2a14:	01412a83          	lw	s5,20(sp)
    2a18:	03010113          	add	sp,sp,48
    2a1c:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2a20:	00058493          	mv	s1,a1
    2a24:	00054583          	lbu	a1,0(a0)
    2a28:	00060513          	mv	a0,a2
    2a2c:	00000a93          	li	s5,0
    2a30:	00b12623          	sw	a1,12(sp)
    2a34:	ffffe097          	auipc	ra,0xffffe
    2a38:	27c080e7          	jalr	636(ra) # cb0 <__udivsi3>
    2a3c:	00c12583          	lw	a1,12(sp)
    2a40:	00050a13          	mv	s4,a0
    2a44:	00090513          	mv	a0,s2
    2a48:	ffffe097          	auipc	ra,0xffffe
    2a4c:	2b0080e7          	jalr	688(ra) # cf8 <__umodsi3>
    2a50:	00050913          	mv	s2,a0
    2a54:	034a9063          	bne	s5,s4,2a74 <fatfs_sector_reader+0x100>
    2a58:	fff00793          	li	a5,-1
    2a5c:	f4f48ce3          	beq	s1,a5,29b4 <fatfs_sector_reader+0x40>
    2a60:	00048593          	mv	a1,s1
    2a64:	00040513          	mv	a0,s0
    2a68:	fffff097          	auipc	ra,0xfffff
    2a6c:	d64080e7          	jalr	-668(ra) # 17cc <fatfs_lba_of_cluster>
    2a70:	f79ff06f          	j	29e8 <fatfs_sector_reader+0x74>
    2a74:	00048593          	mv	a1,s1
    2a78:	00040513          	mv	a0,s0
    2a7c:	00000097          	auipc	ra,0x0
    2a80:	de8080e7          	jalr	-536(ra) # 2864 <fatfs_find_next_cluster>
    2a84:	00050493          	mv	s1,a0
    2a88:	001a8a93          	add	s5,s5,1
    2a8c:	fc9ff06f          	j	2a54 <fatfs_sector_reader+0xe0>
    2a90:	24442783          	lw	a5,580(s0)
    2a94:	00a78c63          	beq	a5,a0,2aac <fatfs_sector_reader+0x138>
    2a98:	03442783          	lw	a5,52(s0)
    2a9c:	24a42223          	sw	a0,580(s0)
    2aa0:	00100613          	li	a2,1
    2aa4:	04440593          	add	a1,s0,68
    2aa8:	f55ff06f          	j	29fc <fatfs_sector_reader+0x88>
    2aac:	00100513          	li	a0,1
    2ab0:	f09ff06f          	j	29b8 <fatfs_sector_reader+0x44>

00002ab4 <fatfs_get_file_entry>:
    2ab4:	eb010113          	add	sp,sp,-336
    2ab8:	14812423          	sw	s0,328(sp)
    2abc:	01810413          	add	s0,sp,24
    2ac0:	14912223          	sw	s1,324(sp)
    2ac4:	15212023          	sw	s2,320(sp)
    2ac8:	13312e23          	sw	s3,316(sp)
    2acc:	13412c23          	sw	s4,312(sp)
    2ad0:	13512a23          	sw	s5,308(sp)
    2ad4:	13612823          	sw	s6,304(sp)
    2ad8:	14112623          	sw	ra,332(sp)
    2adc:	13712623          	sw	s7,300(sp)
    2ae0:	13812423          	sw	s8,296(sp)
    2ae4:	13912223          	sw	s9,292(sp)
    2ae8:	13a12023          	sw	s10,288(sp)
    2aec:	00050493          	mv	s1,a0
    2af0:	00058a93          	mv	s5,a1
    2af4:	00060913          	mv	s2,a2
    2af8:	00068993          	mv	s3,a3
    2afc:	10010ea3          	sb	zero,285(sp)
    2b00:	11c10a13          	add	s4,sp,284
    2b04:	00040b13          	mv	s6,s0
    2b08:	00040513          	mv	a0,s0
    2b0c:	00d00613          	li	a2,13
    2b10:	00000593          	li	a1,0
    2b14:	00d40413          	add	s0,s0,13
    2b18:	ffffe097          	auipc	ra,0xffffe
    2b1c:	244080e7          	jalr	580(ra) # d5c <memset>
    2b20:	ff4414e3          	bne	s0,s4,2b08 <fatfs_get_file_entry+0x54>
    2b24:	00000a13          	li	s4,0
    2b28:	24448c13          	add	s8,s1,580
    2b2c:	00800c93          	li	s9,8
    2b30:	02000b93          	li	s7,32
    2b34:	02e00d13          	li	s10,46
    2b38:	00000693          	li	a3,0
    2b3c:	000a0613          	mv	a2,s4
    2b40:	000a8593          	mv	a1,s5
    2b44:	00048513          	mv	a0,s1
    2b48:	00000097          	auipc	ra,0x0
    2b4c:	e2c080e7          	jalr	-468(ra) # 2974 <fatfs_sector_reader>
    2b50:	14050e63          	beqz	a0,2cac <fatfs_get_file_entry+0x1f8>
    2b54:	04448413          	add	s0,s1,68
    2b58:	00040513          	mv	a0,s0
    2b5c:	fffff097          	auipc	ra,0xfffff
    2b60:	f2c080e7          	jalr	-212(ra) # 1a88 <fatfs_entry_lfn_text>
    2b64:	02050263          	beqz	a0,2b88 <fatfs_get_file_entry+0xd4>
    2b68:	00040593          	mv	a1,s0
    2b6c:	000b0513          	mv	a0,s6
    2b70:	fffff097          	auipc	ra,0xfffff
    2b74:	e10080e7          	jalr	-496(ra) # 1980 <fatfs_lfn_cache_entry>
    2b78:	02040413          	add	s0,s0,32
    2b7c:	fc8c1ee3          	bne	s8,s0,2b58 <fatfs_get_file_entry+0xa4>
    2b80:	001a0a13          	add	s4,s4,1
    2b84:	fb5ff06f          	j	2b38 <fatfs_get_file_entry+0x84>
    2b88:	00040513          	mv	a0,s0
    2b8c:	fffff097          	auipc	ra,0xfffff
    2b90:	f10080e7          	jalr	-240(ra) # 1a9c <fatfs_entry_lfn_invalid>
    2b94:	00050663          	beqz	a0,2ba0 <fatfs_get_file_entry+0xec>
    2b98:	10010ea3          	sb	zero,285(sp)
    2b9c:	fddff06f          	j	2b78 <fatfs_get_file_entry+0xc4>
    2ba0:	00040593          	mv	a1,s0
    2ba4:	000b0513          	mv	a0,s6
    2ba8:	fffff097          	auipc	ra,0xfffff
    2bac:	f2c080e7          	jalr	-212(ra) # 1ad4 <fatfs_entry_lfn_exists>
    2bb0:	06050863          	beqz	a0,2c20 <fatfs_get_file_entry+0x16c>
    2bb4:	000b0513          	mv	a0,s6
    2bb8:	fffff097          	auipc	ra,0xfffff
    2bbc:	e94080e7          	jalr	-364(ra) # 1a4c <fatfs_lfn_cache_get>
    2bc0:	00090593          	mv	a1,s2
    2bc4:	fffff097          	auipc	ra,0xfffff
    2bc8:	6f8080e7          	jalr	1784(ra) # 22bc <fatfs_compare_names>
    2bcc:	fc0506e3          	beqz	a0,2b98 <fatfs_get_file_entry+0xe4>
    2bd0:	02000613          	li	a2,32
    2bd4:	00040593          	mv	a1,s0
    2bd8:	00098513          	mv	a0,s3
    2bdc:	ffffe097          	auipc	ra,0xffffe
    2be0:	19c080e7          	jalr	412(ra) # d78 <memcpy>
    2be4:	00100513          	li	a0,1
    2be8:	14c12083          	lw	ra,332(sp)
    2bec:	14812403          	lw	s0,328(sp)
    2bf0:	14412483          	lw	s1,324(sp)
    2bf4:	14012903          	lw	s2,320(sp)
    2bf8:	13c12983          	lw	s3,316(sp)
    2bfc:	13812a03          	lw	s4,312(sp)
    2c00:	13412a83          	lw	s5,308(sp)
    2c04:	13012b03          	lw	s6,304(sp)
    2c08:	12c12b83          	lw	s7,300(sp)
    2c0c:	12812c03          	lw	s8,296(sp)
    2c10:	12412c83          	lw	s9,292(sp)
    2c14:	12012d03          	lw	s10,288(sp)
    2c18:	15010113          	add	sp,sp,336
    2c1c:	00008067          	ret
    2c20:	00040513          	mv	a0,s0
    2c24:	fffff097          	auipc	ra,0xfffff
    2c28:	ef8080e7          	jalr	-264(ra) # 1b1c <fatfs_entry_sfn_only>
    2c2c:	f40506e3          	beqz	a0,2b78 <fatfs_get_file_entry+0xc4>
    2c30:	00d00613          	li	a2,13
    2c34:	00000593          	li	a1,0
    2c38:	00810513          	add	a0,sp,8
    2c3c:	ffffe097          	auipc	ra,0xffffe
    2c40:	120080e7          	jalr	288(ra) # d5c <memset>
    2c44:	00000793          	li	a5,0
    2c48:	00f406b3          	add	a3,s0,a5
    2c4c:	0006c683          	lbu	a3,0(a3)
    2c50:	00810713          	add	a4,sp,8
    2c54:	00f70733          	add	a4,a4,a5
    2c58:	00d70023          	sb	a3,0(a4)
    2c5c:	00178793          	add	a5,a5,1
    2c60:	ff9794e3          	bne	a5,s9,2c48 <fatfs_get_file_entry+0x194>
    2c64:	00844703          	lbu	a4,8(s0)
    2c68:	00944683          	lbu	a3,9(s0)
    2c6c:	00a44783          	lbu	a5,10(s0)
    2c70:	00e108a3          	sb	a4,17(sp)
    2c74:	00d10923          	sb	a3,18(sp)
    2c78:	00f109a3          	sb	a5,19(sp)
    2c7c:	03768063          	beq	a3,s7,2c9c <fatfs_get_file_entry+0x1e8>
    2c80:	00814703          	lbu	a4,8(sp)
    2c84:	02e00793          	li	a5,46
    2c88:	01a70e63          	beq	a4,s10,2ca4 <fatfs_get_file_entry+0x1f0>
    2c8c:	00f10823          	sb	a5,16(sp)
    2c90:	00090593          	mv	a1,s2
    2c94:	00810513          	add	a0,sp,8
    2c98:	f2dff06f          	j	2bc4 <fatfs_get_file_entry+0x110>
    2c9c:	ff7792e3          	bne	a5,s7,2c80 <fatfs_get_file_entry+0x1cc>
    2ca0:	ff7710e3          	bne	a4,s7,2c80 <fatfs_get_file_entry+0x1cc>
    2ca4:	02000793          	li	a5,32
    2ca8:	fe5ff06f          	j	2c8c <fatfs_get_file_entry+0x1d8>
    2cac:	00000513          	li	a0,0
    2cb0:	f39ff06f          	j	2be8 <fatfs_get_file_entry+0x134>

00002cb4 <_open_directory>:
    2cb4:	eb010113          	add	sp,sp,-336
    2cb8:	13512a23          	sw	s5,308(sp)
    2cbc:	00006ab7          	lui	s5,0x6
    2cc0:	17ca8793          	add	a5,s5,380 # 617c <_fs>
    2cc4:	14812423          	sw	s0,328(sp)
    2cc8:	14912223          	sw	s1,324(sp)
    2ccc:	15212023          	sw	s2,320(sp)
    2cd0:	13312e23          	sw	s3,316(sp)
    2cd4:	13412c23          	sw	s4,312(sp)
    2cd8:	13612823          	sw	s6,304(sp)
    2cdc:	0087a403          	lw	s0,8(a5)
    2ce0:	14112623          	sw	ra,332(sp)
    2ce4:	00050a13          	mv	s4,a0
    2ce8:	00058913          	mv	s2,a1
    2cec:	fffff097          	auipc	ra,0xfffff
    2cf0:	380080e7          	jalr	896(ra) # 206c <fatfs_total_path_levels>
    2cf4:	00050993          	mv	s3,a0
    2cf8:	00000493          	li	s1,0
    2cfc:	fff00b13          	li	s6,-1
    2d00:	0099d863          	bge	s3,s1,2d10 <_open_directory+0x5c>
    2d04:	00892023          	sw	s0,0(s2)
    2d08:	00100513          	li	a0,1
    2d0c:	0240006f          	j	2d30 <_open_directory+0x7c>
    2d10:	10400693          	li	a3,260
    2d14:	02c10613          	add	a2,sp,44
    2d18:	00048593          	mv	a1,s1
    2d1c:	000a0513          	mv	a0,s4
    2d20:	fffff097          	auipc	ra,0xfffff
    2d24:	3c0080e7          	jalr	960(ra) # 20e0 <fatfs_get_substring>
    2d28:	03651863          	bne	a0,s6,2d58 <_open_directory+0xa4>
    2d2c:	00000513          	li	a0,0
    2d30:	14c12083          	lw	ra,332(sp)
    2d34:	14812403          	lw	s0,328(sp)
    2d38:	14412483          	lw	s1,324(sp)
    2d3c:	14012903          	lw	s2,320(sp)
    2d40:	13c12983          	lw	s3,316(sp)
    2d44:	13812a03          	lw	s4,312(sp)
    2d48:	13412a83          	lw	s5,308(sp)
    2d4c:	13012b03          	lw	s6,304(sp)
    2d50:	15010113          	add	sp,sp,336
    2d54:	00008067          	ret
    2d58:	00c10693          	add	a3,sp,12
    2d5c:	02c10613          	add	a2,sp,44
    2d60:	00040593          	mv	a1,s0
    2d64:	17ca8513          	add	a0,s5,380
    2d68:	00000097          	auipc	ra,0x0
    2d6c:	d4c080e7          	jalr	-692(ra) # 2ab4 <fatfs_get_file_entry>
    2d70:	fa050ee3          	beqz	a0,2d2c <_open_directory+0x78>
    2d74:	00c10513          	add	a0,sp,12
    2d78:	fffff097          	auipc	ra,0xfffff
    2d7c:	de0080e7          	jalr	-544(ra) # 1b58 <fatfs_entry_is_dir>
    2d80:	fa0506e3          	beqz	a0,2d2c <_open_directory+0x78>
    2d84:	02015403          	lhu	s0,32(sp)
    2d88:	02615783          	lhu	a5,38(sp)
    2d8c:	00148493          	add	s1,s1,1
    2d90:	01041413          	sll	s0,s0,0x10
    2d94:	00f40433          	add	s0,s0,a5
    2d98:	f69ff06f          	j	2d00 <_open_directory+0x4c>

00002d9c <fl_opendir>:
    2d9c:	fe010113          	add	sp,sp,-32
    2da0:	fff00793          	li	a5,-1
    2da4:	00f12623          	sw	a5,12(sp)
    2da8:	000067b7          	lui	a5,0x6
    2dac:	11c7a783          	lw	a5,284(a5) # 611c <_filelib_init>
    2db0:	00812c23          	sw	s0,24(sp)
    2db4:	01212823          	sw	s2,16(sp)
    2db8:	00112e23          	sw	ra,28(sp)
    2dbc:	00912a23          	sw	s1,20(sp)
    2dc0:	00050913          	mv	s2,a0
    2dc4:	00058413          	mv	s0,a1
    2dc8:	00079663          	bnez	a5,2dd4 <fl_opendir+0x38>
    2dcc:	fffff097          	auipc	ra,0xfffff
    2dd0:	b3c080e7          	jalr	-1220(ra) # 1908 <fl_init>
    2dd4:	000064b7          	lui	s1,0x6
    2dd8:	17c48793          	add	a5,s1,380 # 617c <_fs>
    2ddc:	03c7a783          	lw	a5,60(a5)
    2de0:	17c48493          	add	s1,s1,380
    2de4:	00078463          	beqz	a5,2dec <fl_opendir+0x50>
    2de8:	000780e7          	jalr	a5
    2dec:	00090513          	mv	a0,s2
    2df0:	fffff097          	auipc	ra,0xfffff
    2df4:	27c080e7          	jalr	636(ra) # 206c <fatfs_total_path_levels>
    2df8:	fff00793          	li	a5,-1
    2dfc:	02f51063          	bne	a0,a5,2e1c <fl_opendir+0x80>
    2e00:	0084a783          	lw	a5,8(s1)
    2e04:	00f12623          	sw	a5,12(sp)
    2e08:	00c12783          	lw	a5,12(sp)
    2e0c:	00042023          	sw	zero,0(s0)
    2e10:	00040423          	sb	zero,8(s0)
    2e14:	00f42223          	sw	a5,4(s0)
    2e18:	0180006f          	j	2e30 <fl_opendir+0x94>
    2e1c:	00c10593          	add	a1,sp,12
    2e20:	00090513          	mv	a0,s2
    2e24:	00000097          	auipc	ra,0x0
    2e28:	e90080e7          	jalr	-368(ra) # 2cb4 <_open_directory>
    2e2c:	fc051ee3          	bnez	a0,2e08 <fl_opendir+0x6c>
    2e30:	0404a783          	lw	a5,64(s1)
    2e34:	00078463          	beqz	a5,2e3c <fl_opendir+0xa0>
    2e38:	000780e7          	jalr	a5
    2e3c:	00c12703          	lw	a4,12(sp)
    2e40:	fff00793          	li	a5,-1
    2e44:	00f71463          	bne	a4,a5,2e4c <fl_opendir+0xb0>
    2e48:	00000413          	li	s0,0
    2e4c:	01c12083          	lw	ra,28(sp)
    2e50:	00040513          	mv	a0,s0
    2e54:	01812403          	lw	s0,24(sp)
    2e58:	01412483          	lw	s1,20(sp)
    2e5c:	01012903          	lw	s2,16(sp)
    2e60:	02010113          	add	sp,sp,32
    2e64:	00008067          	ret

00002e68 <_open_file>:
    2e68:	fc010113          	add	sp,sp,-64
    2e6c:	03312623          	sw	s3,44(sp)
    2e70:	02112e23          	sw	ra,60(sp)
    2e74:	02812c23          	sw	s0,56(sp)
    2e78:	02912a23          	sw	s1,52(sp)
    2e7c:	03212823          	sw	s2,48(sp)
    2e80:	00050993          	mv	s3,a0
    2e84:	fffff097          	auipc	ra,0xfffff
    2e88:	88c080e7          	jalr	-1908(ra) # 1710 <_allocate_file>
    2e8c:	06050463          	beqz	a0,2ef4 <_open_file+0x8c>
    2e90:	01450913          	add	s2,a0,20
    2e94:	00050413          	mv	s0,a0
    2e98:	10400613          	li	a2,260
    2e9c:	00000593          	li	a1,0
    2ea0:	00090513          	mv	a0,s2
    2ea4:	ffffe097          	auipc	ra,0xffffe
    2ea8:	eb8080e7          	jalr	-328(ra) # d5c <memset>
    2eac:	11840493          	add	s1,s0,280
    2eb0:	10400613          	li	a2,260
    2eb4:	00000593          	li	a1,0
    2eb8:	00048513          	mv	a0,s1
    2ebc:	ffffe097          	auipc	ra,0xffffe
    2ec0:	ea0080e7          	jalr	-352(ra) # d5c <memset>
    2ec4:	10400713          	li	a4,260
    2ec8:	00048693          	mv	a3,s1
    2ecc:	10400613          	li	a2,260
    2ed0:	00090593          	mv	a1,s2
    2ed4:	00098513          	mv	a0,s3
    2ed8:	fffff097          	auipc	ra,0xfffff
    2edc:	2fc080e7          	jalr	764(ra) # 21d4 <fatfs_split_path>
    2ee0:	fff00793          	li	a5,-1
    2ee4:	02f51a63          	bne	a0,a5,2f18 <_open_file+0xb0>
    2ee8:	00040513          	mv	a0,s0
    2eec:	fffff097          	auipc	ra,0xfffff
    2ef0:	898080e7          	jalr	-1896(ra) # 1784 <_free_file>
    2ef4:	00000413          	li	s0,0
    2ef8:	03c12083          	lw	ra,60(sp)
    2efc:	00040513          	mv	a0,s0
    2f00:	03812403          	lw	s0,56(sp)
    2f04:	03412483          	lw	s1,52(sp)
    2f08:	03012903          	lw	s2,48(sp)
    2f0c:	02c12983          	lw	s3,44(sp)
    2f10:	04010113          	add	sp,sp,64
    2f14:	00008067          	ret
    2f18:	00040513          	mv	a0,s0
    2f1c:	fffff097          	auipc	ra,0xfffff
    2f20:	50c080e7          	jalr	1292(ra) # 2428 <_check_file_open>
    2f24:	fc0512e3          	bnez	a0,2ee8 <_open_file+0x80>
    2f28:	01444783          	lbu	a5,20(s0)
    2f2c:	08079e63          	bnez	a5,2fc8 <_open_file+0x160>
    2f30:	000067b7          	lui	a5,0x6
    2f34:	1847a783          	lw	a5,388(a5) # 6184 <_fs+0x8>
    2f38:	00f42023          	sw	a5,0(s0)
    2f3c:	00042583          	lw	a1,0(s0)
    2f40:	00048613          	mv	a2,s1
    2f44:	000064b7          	lui	s1,0x6
    2f48:	00010693          	mv	a3,sp
    2f4c:	17c48513          	add	a0,s1,380 # 617c <_fs>
    2f50:	00000097          	auipc	ra,0x0
    2f54:	b64080e7          	jalr	-1180(ra) # 2ab4 <fatfs_get_file_entry>
    2f58:	f80508e3          	beqz	a0,2ee8 <_open_file+0x80>
    2f5c:	00010513          	mv	a0,sp
    2f60:	fffff097          	auipc	ra,0xfffff
    2f64:	c08080e7          	jalr	-1016(ra) # 1b68 <fatfs_entry_is_file>
    2f68:	f80500e3          	beqz	a0,2ee8 <_open_file+0x80>
    2f6c:	00b00613          	li	a2,11
    2f70:	00010593          	mv	a1,sp
    2f74:	21c40513          	add	a0,s0,540
    2f78:	ffffe097          	auipc	ra,0xffffe
    2f7c:	e00080e7          	jalr	-512(ra) # d78 <memcpy>
    2f80:	01c12783          	lw	a5,28(sp)
    2f84:	01a15703          	lhu	a4,26(sp)
    2f88:	00042423          	sw	zero,8(s0)
    2f8c:	00f42623          	sw	a5,12(s0)
    2f90:	01415783          	lhu	a5,20(sp)
    2f94:	42042a23          	sw	zero,1076(s0)
    2f98:	00042823          	sw	zero,16(s0)
    2f9c:	01079793          	sll	a5,a5,0x10
    2fa0:	00e787b3          	add	a5,a5,a4
    2fa4:	00f42223          	sw	a5,4(s0)
    2fa8:	fff00793          	li	a5,-1
    2fac:	42f42823          	sw	a5,1072(s0)
    2fb0:	22f42423          	sw	a5,552(s0)
    2fb4:	22f42623          	sw	a5,556(s0)
    2fb8:	17c48513          	add	a0,s1,380
    2fbc:	00000097          	auipc	ra,0x0
    2fc0:	84c080e7          	jalr	-1972(ra) # 2808 <fatfs_fat_purge>
    2fc4:	f35ff06f          	j	2ef8 <_open_file+0x90>
    2fc8:	00040593          	mv	a1,s0
    2fcc:	00090513          	mv	a0,s2
    2fd0:	00000097          	auipc	ra,0x0
    2fd4:	ce4080e7          	jalr	-796(ra) # 2cb4 <_open_directory>
    2fd8:	f60512e3          	bnez	a0,2f3c <_open_file+0xd4>
    2fdc:	f0dff06f          	j	2ee8 <_open_file+0x80>

00002fe0 <fatfs_sfn_exists>:
    2fe0:	fe010113          	add	sp,sp,-32
    2fe4:	00912a23          	sw	s1,20(sp)
    2fe8:	01212823          	sw	s2,16(sp)
    2fec:	01312623          	sw	s3,12(sp)
    2ff0:	01412423          	sw	s4,8(sp)
    2ff4:	01512223          	sw	s5,4(sp)
    2ff8:	00112e23          	sw	ra,28(sp)
    2ffc:	00812c23          	sw	s0,24(sp)
    3000:	00050493          	mv	s1,a0
    3004:	00058993          	mv	s3,a1
    3008:	00060a13          	mv	s4,a2
    300c:	00000913          	li	s2,0
    3010:	24450a93          	add	s5,a0,580
    3014:	00000693          	li	a3,0
    3018:	00090613          	mv	a2,s2
    301c:	00098593          	mv	a1,s3
    3020:	00048513          	mv	a0,s1
    3024:	00000097          	auipc	ra,0x0
    3028:	950080e7          	jalr	-1712(ra) # 2974 <fatfs_sector_reader>
    302c:	06050263          	beqz	a0,3090 <fatfs_sfn_exists+0xb0>
    3030:	04448413          	add	s0,s1,68
    3034:	00040513          	mv	a0,s0
    3038:	fffff097          	auipc	ra,0xfffff
    303c:	a50080e7          	jalr	-1456(ra) # 1a88 <fatfs_entry_lfn_text>
    3040:	02051e63          	bnez	a0,307c <fatfs_sfn_exists+0x9c>
    3044:	00040513          	mv	a0,s0
    3048:	fffff097          	auipc	ra,0xfffff
    304c:	a54080e7          	jalr	-1452(ra) # 1a9c <fatfs_entry_lfn_invalid>
    3050:	02051663          	bnez	a0,307c <fatfs_sfn_exists+0x9c>
    3054:	00040513          	mv	a0,s0
    3058:	fffff097          	auipc	ra,0xfffff
    305c:	ac4080e7          	jalr	-1340(ra) # 1b1c <fatfs_entry_sfn_only>
    3060:	00050e63          	beqz	a0,307c <fatfs_sfn_exists+0x9c>
    3064:	00b00613          	li	a2,11
    3068:	000a0593          	mv	a1,s4
    306c:	00040513          	mv	a0,s0
    3070:	ffffe097          	auipc	ra,0xffffe
    3074:	d4c080e7          	jalr	-692(ra) # dbc <strncmp>
    3078:	00050a63          	beqz	a0,308c <fatfs_sfn_exists+0xac>
    307c:	02040413          	add	s0,s0,32
    3080:	fb541ae3          	bne	s0,s5,3034 <fatfs_sfn_exists+0x54>
    3084:	00190913          	add	s2,s2,1
    3088:	f8dff06f          	j	3014 <fatfs_sfn_exists+0x34>
    308c:	00100513          	li	a0,1
    3090:	01c12083          	lw	ra,28(sp)
    3094:	01812403          	lw	s0,24(sp)
    3098:	01412483          	lw	s1,20(sp)
    309c:	01012903          	lw	s2,16(sp)
    30a0:	00c12983          	lw	s3,12(sp)
    30a4:	00812a03          	lw	s4,8(sp)
    30a8:	00412a83          	lw	s5,4(sp)
    30ac:	02010113          	add	sp,sp,32
    30b0:	00008067          	ret

000030b4 <fatfs_update_file_length>:
    30b4:	03852783          	lw	a5,56(a0)
    30b8:	14078e63          	beqz	a5,3214 <fatfs_update_file_length+0x160>
    30bc:	fd010113          	add	sp,sp,-48
    30c0:	02912223          	sw	s1,36(sp)
    30c4:	03212023          	sw	s2,32(sp)
    30c8:	01312e23          	sw	s3,28(sp)
    30cc:	01412c23          	sw	s4,24(sp)
    30d0:	01512a23          	sw	s5,20(sp)
    30d4:	01612823          	sw	s6,16(sp)
    30d8:	02112623          	sw	ra,44(sp)
    30dc:	02812423          	sw	s0,40(sp)
    30e0:	01712623          	sw	s7,12(sp)
    30e4:	00050493          	mv	s1,a0
    30e8:	00058a13          	mv	s4,a1
    30ec:	00060a93          	mv	s5,a2
    30f0:	00068913          	mv	s2,a3
    30f4:	00000993          	li	s3,0
    30f8:	24450b13          	add	s6,a0,580
    30fc:	00000693          	li	a3,0
    3100:	00098613          	mv	a2,s3
    3104:	000a0593          	mv	a1,s4
    3108:	00048513          	mv	a0,s1
    310c:	00000097          	auipc	ra,0x0
    3110:	868080e7          	jalr	-1944(ra) # 2974 <fatfs_sector_reader>
    3114:	0c050863          	beqz	a0,31e4 <fatfs_update_file_length+0x130>
    3118:	04448413          	add	s0,s1,68
    311c:	00040b93          	mv	s7,s0
    3120:	00040513          	mv	a0,s0
    3124:	fffff097          	auipc	ra,0xfffff
    3128:	964080e7          	jalr	-1692(ra) # 1a88 <fatfs_entry_lfn_text>
    312c:	0a051463          	bnez	a0,31d4 <fatfs_update_file_length+0x120>
    3130:	00040513          	mv	a0,s0
    3134:	fffff097          	auipc	ra,0xfffff
    3138:	968080e7          	jalr	-1688(ra) # 1a9c <fatfs_entry_lfn_invalid>
    313c:	08051c63          	bnez	a0,31d4 <fatfs_update_file_length+0x120>
    3140:	00040513          	mv	a0,s0
    3144:	fffff097          	auipc	ra,0xfffff
    3148:	9d8080e7          	jalr	-1576(ra) # 1b1c <fatfs_entry_sfn_only>
    314c:	08050463          	beqz	a0,31d4 <fatfs_update_file_length+0x120>
    3150:	00b00613          	li	a2,11
    3154:	000a8593          	mv	a1,s5
    3158:	00040513          	mv	a0,s0
    315c:	ffffe097          	auipc	ra,0xffffe
    3160:	c60080e7          	jalr	-928(ra) # dbc <strncmp>
    3164:	06051863          	bnez	a0,31d4 <fatfs_update_file_length+0x120>
    3168:	00895793          	srl	a5,s2,0x8
    316c:	01240e23          	sb	s2,28(s0)
    3170:	00f40ea3          	sb	a5,29(s0)
    3174:	01095793          	srl	a5,s2,0x10
    3178:	01895913          	srl	s2,s2,0x18
    317c:	00f40f23          	sb	a5,30(s0)
    3180:	01240fa3          	sb	s2,31(s0)
    3184:	00040593          	mv	a1,s0
    3188:	02000613          	li	a2,32
    318c:	00040513          	mv	a0,s0
    3190:	ffffe097          	auipc	ra,0xffffe
    3194:	be8080e7          	jalr	-1048(ra) # d78 <memcpy>
    3198:	02812403          	lw	s0,40(sp)
    319c:	0384a783          	lw	a5,56(s1)
    31a0:	2444a503          	lw	a0,580(s1)
    31a4:	02c12083          	lw	ra,44(sp)
    31a8:	02412483          	lw	s1,36(sp)
    31ac:	02012903          	lw	s2,32(sp)
    31b0:	01c12983          	lw	s3,28(sp)
    31b4:	01812a03          	lw	s4,24(sp)
    31b8:	01412a83          	lw	s5,20(sp)
    31bc:	01012b03          	lw	s6,16(sp)
    31c0:	000b8593          	mv	a1,s7
    31c4:	00c12b83          	lw	s7,12(sp)
    31c8:	00100613          	li	a2,1
    31cc:	03010113          	add	sp,sp,48
    31d0:	00078067          	jr	a5
    31d4:	02040413          	add	s0,s0,32
    31d8:	f56414e3          	bne	s0,s6,3120 <fatfs_update_file_length+0x6c>
    31dc:	00198993          	add	s3,s3,1
    31e0:	f1dff06f          	j	30fc <fatfs_update_file_length+0x48>
    31e4:	02c12083          	lw	ra,44(sp)
    31e8:	02812403          	lw	s0,40(sp)
    31ec:	02412483          	lw	s1,36(sp)
    31f0:	02012903          	lw	s2,32(sp)
    31f4:	01c12983          	lw	s3,28(sp)
    31f8:	01812a03          	lw	s4,24(sp)
    31fc:	01412a83          	lw	s5,20(sp)
    3200:	01012b03          	lw	s6,16(sp)
    3204:	00c12b83          	lw	s7,12(sp)
    3208:	00000513          	li	a0,0
    320c:	03010113          	add	sp,sp,48
    3210:	00008067          	ret
    3214:	00000513          	li	a0,0
    3218:	00008067          	ret

0000321c <fatfs_list_directory_next>:
    321c:	ec010113          	add	sp,sp,-320
    3220:	13212823          	sw	s2,304(sp)
    3224:	13312623          	sw	s3,300(sp)
    3228:	13412423          	sw	s4,296(sp)
    322c:	13512223          	sw	s5,292(sp)
    3230:	12112e23          	sw	ra,316(sp)
    3234:	12812c23          	sw	s0,312(sp)
    3238:	12912a23          	sw	s1,308(sp)
    323c:	00050a13          	mv	s4,a0
    3240:	00058913          	mv	s2,a1
    3244:	00060993          	mv	s3,a2
    3248:	10010ea3          	sb	zero,285(sp)
    324c:	00f00a93          	li	s5,15
    3250:	00092603          	lw	a2,0(s2)
    3254:	00492583          	lw	a1,4(s2)
    3258:	00000693          	li	a3,0
    325c:	000a0513          	mv	a0,s4
    3260:	fffff097          	auipc	ra,0xfffff
    3264:	714080e7          	jalr	1812(ra) # 2974 <fatfs_sector_reader>
    3268:	12050263          	beqz	a0,338c <fatfs_list_directory_next+0x170>
    326c:	00894483          	lbu	s1,8(s2)
    3270:	00549413          	sll	s0,s1,0x5
    3274:	04440413          	add	s0,s0,68
    3278:	008a0433          	add	s0,s4,s0
    327c:	009afc63          	bgeu	s5,s1,3294 <fatfs_list_directory_next+0x78>
    3280:	00092783          	lw	a5,0(s2)
    3284:	00090423          	sb	zero,8(s2)
    3288:	00178793          	add	a5,a5,1
    328c:	00f92023          	sw	a5,0(s2)
    3290:	fc1ff06f          	j	3250 <fatfs_list_directory_next+0x34>
    3294:	00040513          	mv	a0,s0
    3298:	ffffe097          	auipc	ra,0xffffe
    329c:	7f0080e7          	jalr	2032(ra) # 1a88 <fatfs_entry_lfn_text>
    32a0:	02050263          	beqz	a0,32c4 <fatfs_list_directory_next+0xa8>
    32a4:	00040593          	mv	a1,s0
    32a8:	01810513          	add	a0,sp,24
    32ac:	ffffe097          	auipc	ra,0xffffe
    32b0:	6d4080e7          	jalr	1748(ra) # 1980 <fatfs_lfn_cache_entry>
    32b4:	00148493          	add	s1,s1,1
    32b8:	0ff4f493          	zext.b	s1,s1
    32bc:	02040413          	add	s0,s0,32
    32c0:	fbdff06f          	j	327c <fatfs_list_directory_next+0x60>
    32c4:	00040513          	mv	a0,s0
    32c8:	ffffe097          	auipc	ra,0xffffe
    32cc:	7d4080e7          	jalr	2004(ra) # 1a9c <fatfs_entry_lfn_invalid>
    32d0:	00050663          	beqz	a0,32dc <fatfs_list_directory_next+0xc0>
    32d4:	10010ea3          	sb	zero,285(sp)
    32d8:	fddff06f          	j	32b4 <fatfs_list_directory_next+0x98>
    32dc:	00040593          	mv	a1,s0
    32e0:	01810513          	add	a0,sp,24
    32e4:	ffffe097          	auipc	ra,0xffffe
    32e8:	7f0080e7          	jalr	2032(ra) # 1ad4 <fatfs_entry_lfn_exists>
    32ec:	0c050263          	beqz	a0,33b0 <fatfs_list_directory_next+0x194>
    32f0:	01810513          	add	a0,sp,24
    32f4:	ffffe097          	auipc	ra,0xffffe
    32f8:	758080e7          	jalr	1880(ra) # 1a4c <fatfs_lfn_cache_get>
    32fc:	00050593          	mv	a1,a0
    3300:	10300613          	li	a2,259
    3304:	00098513          	mv	a0,s3
    3308:	ffffe097          	auipc	ra,0xffffe
    330c:	af4080e7          	jalr	-1292(ra) # dfc <strncpy>
    3310:	00040513          	mv	a0,s0
    3314:	fffff097          	auipc	ra,0xfffff
    3318:	844080e7          	jalr	-1980(ra) # 1b58 <fatfs_entry_is_dir>
    331c:	00a03533          	snez	a0,a0
    3320:	10a98223          	sb	a0,260(s3)
    3324:	01d44783          	lbu	a5,29(s0)
    3328:	01c44703          	lbu	a4,28(s0)
    332c:	00148493          	add	s1,s1,1
    3330:	00879793          	sll	a5,a5,0x8
    3334:	00e7e7b3          	or	a5,a5,a4
    3338:	01e44703          	lbu	a4,30(s0)
    333c:	0ff4f493          	zext.b	s1,s1
    3340:	00100513          	li	a0,1
    3344:	01071713          	sll	a4,a4,0x10
    3348:	00f76733          	or	a4,a4,a5
    334c:	01f44783          	lbu	a5,31(s0)
    3350:	01879793          	sll	a5,a5,0x18
    3354:	00e7e7b3          	or	a5,a5,a4
    3358:	10f9a623          	sw	a5,268(s3)
    335c:	01544783          	lbu	a5,21(s0)
    3360:	01444703          	lbu	a4,20(s0)
    3364:	01a44683          	lbu	a3,26(s0)
    3368:	00879793          	sll	a5,a5,0x8
    336c:	00e7e7b3          	or	a5,a5,a4
    3370:	01b44703          	lbu	a4,27(s0)
    3374:	01079793          	sll	a5,a5,0x10
    3378:	00871713          	sll	a4,a4,0x8
    337c:	00d76733          	or	a4,a4,a3
    3380:	00e7e7b3          	or	a5,a5,a4
    3384:	10f9a423          	sw	a5,264(s3)
    3388:	00990423          	sb	s1,8(s2)
    338c:	13c12083          	lw	ra,316(sp)
    3390:	13812403          	lw	s0,312(sp)
    3394:	13412483          	lw	s1,308(sp)
    3398:	13012903          	lw	s2,304(sp)
    339c:	12c12983          	lw	s3,300(sp)
    33a0:	12812a03          	lw	s4,296(sp)
    33a4:	12412a83          	lw	s5,292(sp)
    33a8:	14010113          	add	sp,sp,320
    33ac:	00008067          	ret
    33b0:	00040513          	mv	a0,s0
    33b4:	ffffe097          	auipc	ra,0xffffe
    33b8:	768080e7          	jalr	1896(ra) # 1b1c <fatfs_entry_sfn_only>
    33bc:	ee050ce3          	beqz	a0,32b4 <fatfs_list_directory_next+0x98>
    33c0:	00d00613          	li	a2,13
    33c4:	00000593          	li	a1,0
    33c8:	00810513          	add	a0,sp,8
    33cc:	10010ea3          	sb	zero,285(sp)
    33d0:	ffffe097          	auipc	ra,0xffffe
    33d4:	98c080e7          	jalr	-1652(ra) # d5c <memset>
    33d8:	00000793          	li	a5,0
    33dc:	00800713          	li	a4,8
    33e0:	00f40633          	add	a2,s0,a5
    33e4:	00064603          	lbu	a2,0(a2)
    33e8:	00810693          	add	a3,sp,8
    33ec:	00f686b3          	add	a3,a3,a5
    33f0:	00c68023          	sb	a2,0(a3)
    33f4:	00178793          	add	a5,a5,1
    33f8:	fee794e3          	bne	a5,a4,33e0 <fatfs_list_directory_next+0x1c4>
    33fc:	00844683          	lbu	a3,8(s0)
    3400:	00944703          	lbu	a4,9(s0)
    3404:	00a44783          	lbu	a5,10(s0)
    3408:	00d108a3          	sb	a3,17(sp)
    340c:	00e10923          	sb	a4,18(sp)
    3410:	02000613          	li	a2,32
    3414:	00f109a3          	sb	a5,19(sp)
    3418:	02c70463          	beq	a4,a2,3440 <fatfs_list_directory_next+0x224>
    341c:	00814703          	lbu	a4,8(sp)
    3420:	02e00793          	li	a5,46
    3424:	02f70263          	beq	a4,a5,3448 <fatfs_list_directory_next+0x22c>
    3428:	00810593          	add	a1,sp,8
    342c:	00098513          	mv	a0,s3
    3430:	00f10823          	sb	a5,16(sp)
    3434:	fffff097          	auipc	ra,0xfffff
    3438:	084080e7          	jalr	132(ra) # 24b8 <fatfs_get_sfn_display_name>
    343c:	ed5ff06f          	j	3310 <fatfs_list_directory_next+0xf4>
    3440:	fce79ee3          	bne	a5,a4,341c <fatfs_list_directory_next+0x200>
    3444:	fcf69ce3          	bne	a3,a5,341c <fatfs_list_directory_next+0x200>
    3448:	02000793          	li	a5,32
    344c:	fddff06f          	j	3428 <fatfs_list_directory_next+0x20c>

00003450 <fl_readdir>:
    3450:	000067b7          	lui	a5,0x6
    3454:	11c7a783          	lw	a5,284(a5) # 611c <_filelib_init>
    3458:	fe010113          	add	sp,sp,-32
    345c:	00912a23          	sw	s1,20(sp)
    3460:	01212823          	sw	s2,16(sp)
    3464:	00112e23          	sw	ra,28(sp)
    3468:	00812c23          	sw	s0,24(sp)
    346c:	01312623          	sw	s3,12(sp)
    3470:	00050493          	mv	s1,a0
    3474:	00058913          	mv	s2,a1
    3478:	00079663          	bnez	a5,3484 <fl_readdir+0x34>
    347c:	ffffe097          	auipc	ra,0xffffe
    3480:	48c080e7          	jalr	1164(ra) # 1908 <fl_init>
    3484:	00006437          	lui	s0,0x6
    3488:	17c40793          	add	a5,s0,380 # 617c <_fs>
    348c:	03c7a783          	lw	a5,60(a5)
    3490:	17c40993          	add	s3,s0,380
    3494:	00078463          	beqz	a5,349c <fl_readdir+0x4c>
    3498:	000780e7          	jalr	a5
    349c:	17c40513          	add	a0,s0,380
    34a0:	00090613          	mv	a2,s2
    34a4:	00048593          	mv	a1,s1
    34a8:	00000097          	auipc	ra,0x0
    34ac:	d74080e7          	jalr	-652(ra) # 321c <fatfs_list_directory_next>
    34b0:	0409a783          	lw	a5,64(s3)
    34b4:	00050413          	mv	s0,a0
    34b8:	00078463          	beqz	a5,34c0 <fl_readdir+0x70>
    34bc:	000780e7          	jalr	a5
    34c0:	01c12083          	lw	ra,28(sp)
    34c4:	00143513          	seqz	a0,s0
    34c8:	01812403          	lw	s0,24(sp)
    34cc:	01412483          	lw	s1,20(sp)
    34d0:	01012903          	lw	s2,16(sp)
    34d4:	00c12983          	lw	s3,12(sp)
    34d8:	40a00533          	neg	a0,a0
    34dc:	02010113          	add	sp,sp,32
    34e0:	00008067          	ret

000034e4 <_read_sectors>:
    34e4:	fd010113          	add	sp,sp,-48
    34e8:	01612823          	sw	s6,16(sp)
    34ec:	00006b37          	lui	s6,0x6
    34f0:	01512a23          	sw	s5,20(sp)
    34f4:	17cb4a83          	lbu	s5,380(s6) # 617c <_fs>
    34f8:	01412c23          	sw	s4,24(sp)
    34fc:	00058a13          	mv	s4,a1
    3500:	02912223          	sw	s1,36(sp)
    3504:	000a8593          	mv	a1,s5
    3508:	00050493          	mv	s1,a0
    350c:	000a0513          	mv	a0,s4
    3510:	02112623          	sw	ra,44(sp)
    3514:	02812423          	sw	s0,40(sp)
    3518:	03212023          	sw	s2,32(sp)
    351c:	00068413          	mv	s0,a3
    3520:	01712623          	sw	s7,12(sp)
    3524:	01812423          	sw	s8,8(sp)
    3528:	01312e23          	sw	s3,28(sp)
    352c:	00060c13          	mv	s8,a2
    3530:	ffffd097          	auipc	ra,0xffffd
    3534:	780080e7          	jalr	1920(ra) # cb0 <__udivsi3>
    3538:	00050913          	mv	s2,a0
    353c:	000a8593          	mv	a1,s5
    3540:	000a0513          	mv	a0,s4
    3544:	ffffd097          	auipc	ra,0xffffd
    3548:	7b4080e7          	jalr	1972(ra) # cf8 <__umodsi3>
    354c:	00a407b3          	add	a5,s0,a0
    3550:	00050b93          	mv	s7,a0
    3554:	00fafe63          	bgeu	s5,a5,3570 <_read_sectors+0x8c>
    3558:	00090593          	mv	a1,s2
    355c:	000a8513          	mv	a0,s5
    3560:	ffffe097          	auipc	ra,0xffffe
    3564:	ee8080e7          	jalr	-280(ra) # 1448 <__mulsi3>
    3568:	414a87b3          	sub	a5,s5,s4
    356c:	00f50433          	add	s0,a0,a5
    3570:	2284a983          	lw	s3,552(s1)
    3574:	07299863          	bne	s3,s2,35e4 <_read_sectors+0x100>
    3578:	22c4a583          	lw	a1,556(s1)
    357c:	fff00793          	li	a5,-1
    3580:	02f58663          	beq	a1,a5,35ac <_read_sectors+0xc8>
    3584:	17cb0513          	add	a0,s6,380
    3588:	ffffe097          	auipc	ra,0xffffe
    358c:	244080e7          	jalr	580(ra) # 17cc <fatfs_lba_of_cluster>
    3590:	017505b3          	add	a1,a0,s7
    3594:	00040693          	mv	a3,s0
    3598:	000c0613          	mv	a2,s8
    359c:	17cb0513          	add	a0,s6,380
    35a0:	ffffe097          	auipc	ra,0xffffe
    35a4:	27c080e7          	jalr	636(ra) # 181c <fatfs_sector_read>
    35a8:	00051463          	bnez	a0,35b0 <_read_sectors+0xcc>
    35ac:	00000413          	li	s0,0
    35b0:	02c12083          	lw	ra,44(sp)
    35b4:	00040513          	mv	a0,s0
    35b8:	02812403          	lw	s0,40(sp)
    35bc:	02412483          	lw	s1,36(sp)
    35c0:	02012903          	lw	s2,32(sp)
    35c4:	01c12983          	lw	s3,28(sp)
    35c8:	01812a03          	lw	s4,24(sp)
    35cc:	01412a83          	lw	s5,20(sp)
    35d0:	01012b03          	lw	s6,16(sp)
    35d4:	00c12b83          	lw	s7,12(sp)
    35d8:	00812c03          	lw	s8,8(sp)
    35dc:	03010113          	add	sp,sp,48
    35e0:	00008067          	ret
    35e4:	035a6463          	bltu	s4,s5,360c <_read_sectors+0x128>
    35e8:	00198793          	add	a5,s3,1
    35ec:	03279063          	bne	a5,s2,360c <_read_sectors+0x128>
    35f0:	22c4a583          	lw	a1,556(s1)
    35f4:	0329e263          	bltu	s3,s2,3618 <_read_sectors+0x134>
    35f8:	fff00793          	li	a5,-1
    35fc:	faf588e3          	beq	a1,a5,35ac <_read_sectors+0xc8>
    3600:	22b4a623          	sw	a1,556(s1)
    3604:	2324a423          	sw	s2,552(s1)
    3608:	f7dff06f          	j	3584 <_read_sectors+0xa0>
    360c:	0044a583          	lw	a1,4(s1)
    3610:	00000993          	li	s3,0
    3614:	fe1ff06f          	j	35f4 <_read_sectors+0x110>
    3618:	17cb0513          	add	a0,s6,380
    361c:	fffff097          	auipc	ra,0xfffff
    3620:	248080e7          	jalr	584(ra) # 2864 <fatfs_find_next_cluster>
    3624:	00050593          	mv	a1,a0
    3628:	00198993          	add	s3,s3,1
    362c:	fc9ff06f          	j	35f4 <_read_sectors+0x110>

00003630 <fatfs_set_fs_info_next_free_cluster>:
    3630:	03052783          	lw	a5,48(a0)
    3634:	0a078863          	beqz	a5,36e4 <fatfs_set_fs_info_next_free_cluster+0xb4>
    3638:	ff010113          	add	sp,sp,-16
    363c:	01c52783          	lw	a5,28(a0)
    3640:	01212023          	sw	s2,0(sp)
    3644:	00058913          	mv	s2,a1
    3648:	01855583          	lhu	a1,24(a0)
    364c:	00812423          	sw	s0,8(sp)
    3650:	00912223          	sw	s1,4(sp)
    3654:	00f585b3          	add	a1,a1,a5
    3658:	00112623          	sw	ra,12(sp)
    365c:	00050493          	mv	s1,a0
    3660:	ffffe097          	auipc	ra,0xffffe
    3664:	fc0080e7          	jalr	-64(ra) # 1620 <fatfs_fat_read_sector>
    3668:	00050413          	mv	s0,a0
    366c:	06050063          	beqz	a0,36cc <fatfs_set_fs_info_next_free_cluster+0x9c>
    3670:	20852783          	lw	a5,520(a0)
    3674:	00895713          	srl	a4,s2,0x8
    3678:	1f278623          	sb	s2,492(a5)
    367c:	20852783          	lw	a5,520(a0)
    3680:	1ee786a3          	sb	a4,493(a5)
    3684:	20852783          	lw	a5,520(a0)
    3688:	01095713          	srl	a4,s2,0x10
    368c:	1ee78723          	sb	a4,494(a5)
    3690:	20852783          	lw	a5,520(a0)
    3694:	01895713          	srl	a4,s2,0x18
    3698:	1ee787a3          	sb	a4,495(a5)
    369c:	00100793          	li	a5,1
    36a0:	20f52223          	sw	a5,516(a0)
    36a4:	0384a783          	lw	a5,56(s1)
    36a8:	0324a223          	sw	s2,36(s1)
    36ac:	00078a63          	beqz	a5,36c0 <fatfs_set_fs_info_next_free_cluster+0x90>
    36b0:	00050593          	mv	a1,a0
    36b4:	20052503          	lw	a0,512(a0)
    36b8:	00100613          	li	a2,1
    36bc:	000780e7          	jalr	a5
    36c0:	fff00793          	li	a5,-1
    36c4:	20f42023          	sw	a5,512(s0)
    36c8:	20042223          	sw	zero,516(s0)
    36cc:	00c12083          	lw	ra,12(sp)
    36d0:	00812403          	lw	s0,8(sp)
    36d4:	00412483          	lw	s1,4(sp)
    36d8:	00012903          	lw	s2,0(sp)
    36dc:	01010113          	add	sp,sp,16
    36e0:	00008067          	ret
    36e4:	00008067          	ret

000036e8 <fatfs_find_blank_cluster>:
    36e8:	fe010113          	add	sp,sp,-32
    36ec:	01312623          	sw	s3,12(sp)
    36f0:	01512223          	sw	s5,4(sp)
    36f4:	000109b7          	lui	s3,0x10
    36f8:	10000ab7          	lui	s5,0x10000
    36fc:	00912a23          	sw	s1,20(sp)
    3700:	01212823          	sw	s2,16(sp)
    3704:	01412423          	sw	s4,8(sp)
    3708:	00112e23          	sw	ra,28(sp)
    370c:	00812c23          	sw	s0,24(sp)
    3710:	00050913          	mv	s2,a0
    3714:	00058493          	mv	s1,a1
    3718:	00060a13          	mv	s4,a2
    371c:	fff98993          	add	s3,s3,-1 # ffff <Songs+0x90bb>
    3720:	fffa8a93          	add	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    3724:	03092783          	lw	a5,48(s2)
    3728:	0074d413          	srl	s0,s1,0x7
    372c:	00079463          	bnez	a5,3734 <fatfs_find_blank_cluster+0x4c>
    3730:	0084d413          	srl	s0,s1,0x8
    3734:	02092783          	lw	a5,32(s2)
    3738:	0cf47463          	bgeu	s0,a5,3800 <fatfs_find_blank_cluster+0x118>
    373c:	01492583          	lw	a1,20(s2)
    3740:	00090513          	mv	a0,s2
    3744:	00b405b3          	add	a1,s0,a1
    3748:	ffffe097          	auipc	ra,0xffffe
    374c:	ed8080e7          	jalr	-296(ra) # 1620 <fatfs_fat_read_sector>
    3750:	0a050863          	beqz	a0,3800 <fatfs_find_blank_cluster+0x118>
    3754:	03092783          	lw	a5,48(s2)
    3758:	20852703          	lw	a4,520(a0)
    375c:	04079c63          	bnez	a5,37b4 <fatfs_find_blank_cluster+0xcc>
    3760:	00841413          	sll	s0,s0,0x8
    3764:	40848433          	sub	s0,s1,s0
    3768:	00141413          	sll	s0,s0,0x1
    376c:	01347433          	and	s0,s0,s3
    3770:	00870733          	add	a4,a4,s0
    3774:	00174783          	lbu	a5,1(a4)
    3778:	00074703          	lbu	a4,0(a4)
    377c:	00879793          	sll	a5,a5,0x8
    3780:	00e787b3          	add	a5,a5,a4
    3784:	06079a63          	bnez	a5,37f8 <fatfs_find_blank_cluster+0x110>
    3788:	009a2023          	sw	s1,0(s4)
    378c:	00100513          	li	a0,1
    3790:	01c12083          	lw	ra,28(sp)
    3794:	01812403          	lw	s0,24(sp)
    3798:	01412483          	lw	s1,20(sp)
    379c:	01012903          	lw	s2,16(sp)
    37a0:	00c12983          	lw	s3,12(sp)
    37a4:	00812a03          	lw	s4,8(sp)
    37a8:	00412a83          	lw	s5,4(sp)
    37ac:	02010113          	add	sp,sp,32
    37b0:	00008067          	ret
    37b4:	00741413          	sll	s0,s0,0x7
    37b8:	40848433          	sub	s0,s1,s0
    37bc:	00241413          	sll	s0,s0,0x2
    37c0:	01347433          	and	s0,s0,s3
    37c4:	00870733          	add	a4,a4,s0
    37c8:	00374783          	lbu	a5,3(a4)
    37cc:	00274683          	lbu	a3,2(a4)
    37d0:	01879793          	sll	a5,a5,0x18
    37d4:	01069693          	sll	a3,a3,0x10
    37d8:	00d787b3          	add	a5,a5,a3
    37dc:	00074683          	lbu	a3,0(a4)
    37e0:	00174703          	lbu	a4,1(a4)
    37e4:	00d787b3          	add	a5,a5,a3
    37e8:	00871713          	sll	a4,a4,0x8
    37ec:	00e787b3          	add	a5,a5,a4
    37f0:	0157f7b3          	and	a5,a5,s5
    37f4:	f91ff06f          	j	3784 <fatfs_find_blank_cluster+0x9c>
    37f8:	00148493          	add	s1,s1,1
    37fc:	f29ff06f          	j	3724 <fatfs_find_blank_cluster+0x3c>
    3800:	00000513          	li	a0,0
    3804:	f8dff06f          	j	3790 <fatfs_find_blank_cluster+0xa8>

00003808 <fatfs_fat_set_cluster>:
    3808:	03052783          	lw	a5,48(a0)
    380c:	fe010113          	add	sp,sp,-32
    3810:	00812c23          	sw	s0,24(sp)
    3814:	00912a23          	sw	s1,20(sp)
    3818:	01212823          	sw	s2,16(sp)
    381c:	01312623          	sw	s3,12(sp)
    3820:	00112e23          	sw	ra,28(sp)
    3824:	00050993          	mv	s3,a0
    3828:	00058413          	mv	s0,a1
    382c:	00060493          	mv	s1,a2
    3830:	0085d913          	srl	s2,a1,0x8
    3834:	00078463          	beqz	a5,383c <fatfs_fat_set_cluster+0x34>
    3838:	0075d913          	srl	s2,a1,0x7
    383c:	0149a583          	lw	a1,20(s3)
    3840:	00098513          	mv	a0,s3
    3844:	00b905b3          	add	a1,s2,a1
    3848:	ffffe097          	auipc	ra,0xffffe
    384c:	dd8080e7          	jalr	-552(ra) # 1620 <fatfs_fat_read_sector>
    3850:	00050793          	mv	a5,a0
    3854:	00000513          	li	a0,0
    3858:	04078c63          	beqz	a5,38b0 <fatfs_fat_set_cluster+0xa8>
    385c:	0309a683          	lw	a3,48(s3)
    3860:	2087a703          	lw	a4,520(a5)
    3864:	0ff4f613          	zext.b	a2,s1
    3868:	06069263          	bnez	a3,38cc <fatfs_fat_set_cluster+0xc4>
    386c:	00891913          	sll	s2,s2,0x8
    3870:	41240433          	sub	s0,s0,s2
    3874:	000106b7          	lui	a3,0x10
    3878:	00141413          	sll	s0,s0,0x1
    387c:	fff68693          	add	a3,a3,-1 # ffff <Songs+0x90bb>
    3880:	00d47433          	and	s0,s0,a3
    3884:	00870733          	add	a4,a4,s0
    3888:	00c70023          	sb	a2,0(a4)
    388c:	2087a703          	lw	a4,520(a5)
    3890:	01049493          	sll	s1,s1,0x10
    3894:	0104d493          	srl	s1,s1,0x10
    3898:	00870733          	add	a4,a4,s0
    389c:	0084d493          	srl	s1,s1,0x8
    38a0:	009700a3          	sb	s1,1(a4)
    38a4:	00100713          	li	a4,1
    38a8:	20e7a223          	sw	a4,516(a5)
    38ac:	00100513          	li	a0,1
    38b0:	01c12083          	lw	ra,28(sp)
    38b4:	01812403          	lw	s0,24(sp)
    38b8:	01412483          	lw	s1,20(sp)
    38bc:	01012903          	lw	s2,16(sp)
    38c0:	00c12983          	lw	s3,12(sp)
    38c4:	02010113          	add	sp,sp,32
    38c8:	00008067          	ret
    38cc:	00791913          	sll	s2,s2,0x7
    38d0:	41240433          	sub	s0,s0,s2
    38d4:	000106b7          	lui	a3,0x10
    38d8:	fff68693          	add	a3,a3,-1 # ffff <Songs+0x90bb>
    38dc:	00241413          	sll	s0,s0,0x2
    38e0:	00d47433          	and	s0,s0,a3
    38e4:	00870733          	add	a4,a4,s0
    38e8:	00c70023          	sb	a2,0(a4)
    38ec:	2087a703          	lw	a4,520(a5)
    38f0:	0084d693          	srl	a3,s1,0x8
    38f4:	00870733          	add	a4,a4,s0
    38f8:	00d700a3          	sb	a3,1(a4)
    38fc:	2087a703          	lw	a4,520(a5)
    3900:	0104d693          	srl	a3,s1,0x10
    3904:	0184d493          	srl	s1,s1,0x18
    3908:	00870733          	add	a4,a4,s0
    390c:	00d70123          	sb	a3,2(a4)
    3910:	2087a703          	lw	a4,520(a5)
    3914:	00870733          	add	a4,a4,s0
    3918:	009701a3          	sb	s1,3(a4)
    391c:	f89ff06f          	j	38a4 <fatfs_fat_set_cluster+0x9c>

00003920 <fatfs_free_cluster_chain>:
    3920:	fe010113          	add	sp,sp,-32
    3924:	00812c23          	sw	s0,24(sp)
    3928:	01212823          	sw	s2,16(sp)
    392c:	00112e23          	sw	ra,28(sp)
    3930:	00912a23          	sw	s1,20(sp)
    3934:	00050413          	mv	s0,a0
    3938:	ffd00913          	li	s2,-3
    393c:	fff58793          	add	a5,a1,-1
    3940:	02f97063          	bgeu	s2,a5,3960 <fatfs_free_cluster_chain+0x40>
    3944:	01c12083          	lw	ra,28(sp)
    3948:	01812403          	lw	s0,24(sp)
    394c:	01412483          	lw	s1,20(sp)
    3950:	01012903          	lw	s2,16(sp)
    3954:	00100513          	li	a0,1
    3958:	02010113          	add	sp,sp,32
    395c:	00008067          	ret
    3960:	00040513          	mv	a0,s0
    3964:	00b12623          	sw	a1,12(sp)
    3968:	fffff097          	auipc	ra,0xfffff
    396c:	efc080e7          	jalr	-260(ra) # 2864 <fatfs_find_next_cluster>
    3970:	00c12583          	lw	a1,12(sp)
    3974:	00050493          	mv	s1,a0
    3978:	00000613          	li	a2,0
    397c:	00040513          	mv	a0,s0
    3980:	00000097          	auipc	ra,0x0
    3984:	e88080e7          	jalr	-376(ra) # 3808 <fatfs_fat_set_cluster>
    3988:	00048593          	mv	a1,s1
    398c:	fb1ff06f          	j	393c <fatfs_free_cluster_chain+0x1c>

00003990 <fatfs_fat_add_cluster_to_chain>:
    3990:	fff00793          	li	a5,-1
    3994:	02f59463          	bne	a1,a5,39bc <fatfs_fat_add_cluster_to_chain+0x2c>
    3998:	00000513          	li	a0,0
    399c:	00008067          	ret
    39a0:	00000513          	li	a0,0
    39a4:	01c12083          	lw	ra,28(sp)
    39a8:	01812403          	lw	s0,24(sp)
    39ac:	01412483          	lw	s1,20(sp)
    39b0:	01012903          	lw	s2,16(sp)
    39b4:	02010113          	add	sp,sp,32
    39b8:	00008067          	ret
    39bc:	fe010113          	add	sp,sp,-32
    39c0:	00812c23          	sw	s0,24(sp)
    39c4:	00912a23          	sw	s1,20(sp)
    39c8:	01212823          	sw	s2,16(sp)
    39cc:	00050413          	mv	s0,a0
    39d0:	00112e23          	sw	ra,28(sp)
    39d4:	00058513          	mv	a0,a1
    39d8:	00060493          	mv	s1,a2
    39dc:	fff00913          	li	s2,-1
    39e0:	00050593          	mv	a1,a0
    39e4:	00a12623          	sw	a0,12(sp)
    39e8:	00040513          	mv	a0,s0
    39ec:	fffff097          	auipc	ra,0xfffff
    39f0:	e78080e7          	jalr	-392(ra) # 2864 <fatfs_find_next_cluster>
    39f4:	fa0506e3          	beqz	a0,39a0 <fatfs_fat_add_cluster_to_chain+0x10>
    39f8:	00c12583          	lw	a1,12(sp)
    39fc:	ff2512e3          	bne	a0,s2,39e0 <fatfs_fat_add_cluster_to_chain+0x50>
    3a00:	00048613          	mv	a2,s1
    3a04:	00040513          	mv	a0,s0
    3a08:	00000097          	auipc	ra,0x0
    3a0c:	e00080e7          	jalr	-512(ra) # 3808 <fatfs_fat_set_cluster>
    3a10:	fff00613          	li	a2,-1
    3a14:	00048593          	mv	a1,s1
    3a18:	00040513          	mv	a0,s0
    3a1c:	00000097          	auipc	ra,0x0
    3a20:	dec080e7          	jalr	-532(ra) # 3808 <fatfs_fat_set_cluster>
    3a24:	00100513          	li	a0,1
    3a28:	f7dff06f          	j	39a4 <fatfs_fat_add_cluster_to_chain+0x14>

00003a2c <fatfs_add_free_space>:
    3a2c:	02452703          	lw	a4,36(a0)
    3a30:	fd010113          	add	sp,sp,-48
    3a34:	02812423          	sw	s0,40(sp)
    3a38:	03212023          	sw	s2,32(sp)
    3a3c:	01412c23          	sw	s4,24(sp)
    3a40:	01512a23          	sw	s5,20(sp)
    3a44:	02112623          	sw	ra,44(sp)
    3a48:	02912223          	sw	s1,36(sp)
    3a4c:	01312e23          	sw	s3,28(sp)
    3a50:	fff00793          	li	a5,-1
    3a54:	0005aa83          	lw	s5,0(a1)
    3a58:	00050413          	mv	s0,a0
    3a5c:	00058913          	mv	s2,a1
    3a60:	00060a13          	mv	s4,a2
    3a64:	00f70863          	beq	a4,a5,3a74 <fatfs_add_free_space+0x48>
    3a68:	fff00593          	li	a1,-1
    3a6c:	00000097          	auipc	ra,0x0
    3a70:	bc4080e7          	jalr	-1084(ra) # 3630 <fatfs_set_fs_info_next_free_cluster>
    3a74:	00000493          	li	s1,0
    3a78:	03449663          	bne	s1,s4,3aa4 <fatfs_add_free_space+0x78>
    3a7c:	00100513          	li	a0,1
    3a80:	02c12083          	lw	ra,44(sp)
    3a84:	02812403          	lw	s0,40(sp)
    3a88:	02412483          	lw	s1,36(sp)
    3a8c:	02012903          	lw	s2,32(sp)
    3a90:	01c12983          	lw	s3,28(sp)
    3a94:	01812a03          	lw	s4,24(sp)
    3a98:	01412a83          	lw	s5,20(sp)
    3a9c:	03010113          	add	sp,sp,48
    3aa0:	00008067          	ret
    3aa4:	00842583          	lw	a1,8(s0)
    3aa8:	00c10613          	add	a2,sp,12
    3aac:	00040513          	mv	a0,s0
    3ab0:	00000097          	auipc	ra,0x0
    3ab4:	c38080e7          	jalr	-968(ra) # 36e8 <fatfs_find_blank_cluster>
    3ab8:	fc0504e3          	beqz	a0,3a80 <fatfs_add_free_space+0x54>
    3abc:	00c12983          	lw	s3,12(sp)
    3ac0:	000a8593          	mv	a1,s5
    3ac4:	00040513          	mv	a0,s0
    3ac8:	00098613          	mv	a2,s3
    3acc:	00000097          	auipc	ra,0x0
    3ad0:	d3c080e7          	jalr	-708(ra) # 3808 <fatfs_fat_set_cluster>
    3ad4:	fff00613          	li	a2,-1
    3ad8:	00098593          	mv	a1,s3
    3adc:	00040513          	mv	a0,s0
    3ae0:	00000097          	auipc	ra,0x0
    3ae4:	d28080e7          	jalr	-728(ra) # 3808 <fatfs_fat_set_cluster>
    3ae8:	00049463          	bnez	s1,3af0 <fatfs_add_free_space+0xc4>
    3aec:	01392023          	sw	s3,0(s2)
    3af0:	00148493          	add	s1,s1,1
    3af4:	00098a93          	mv	s5,s3
    3af8:	f81ff06f          	j	3a78 <fatfs_add_free_space+0x4c>

00003afc <_write_sectors>:
    3afc:	fb010113          	add	sp,sp,-80
    3b00:	03312e23          	sw	s3,60(sp)
    3b04:	000069b7          	lui	s3,0x6
    3b08:	03612823          	sw	s6,48(sp)
    3b0c:	17c9cb03          	lbu	s6,380(s3) # 617c <_fs>
    3b10:	03512a23          	sw	s5,52(sp)
    3b14:	00058a93          	mv	s5,a1
    3b18:	fff00793          	li	a5,-1
    3b1c:	04812423          	sw	s0,72(sp)
    3b20:	000b0593          	mv	a1,s6
    3b24:	00050413          	mv	s0,a0
    3b28:	000a8513          	mv	a0,s5
    3b2c:	00f12e23          	sw	a5,28(sp)
    3b30:	04112623          	sw	ra,76(sp)
    3b34:	04912223          	sw	s1,68(sp)
    3b38:	05212023          	sw	s2,64(sp)
    3b3c:	03712623          	sw	s7,44(sp)
    3b40:	03812423          	sw	s8,40(sp)
    3b44:	00068b93          	mv	s7,a3
    3b48:	03912223          	sw	s9,36(sp)
    3b4c:	03a12023          	sw	s10,32(sp)
    3b50:	00060c93          	mv	s9,a2
    3b54:	03412c23          	sw	s4,56(sp)
    3b58:	ffffd097          	auipc	ra,0xffffd
    3b5c:	158080e7          	jalr	344(ra) # cb0 <__udivsi3>
    3b60:	00050493          	mv	s1,a0
    3b64:	000b0593          	mv	a1,s6
    3b68:	000a8513          	mv	a0,s5
    3b6c:	ffffd097          	auipc	ra,0xffffd
    3b70:	18c080e7          	jalr	396(ra) # cf8 <__umodsi3>
    3b74:	00ab87b3          	add	a5,s7,a0
    3b78:	00050c13          	mv	s8,a0
    3b7c:	17c98d13          	add	s10,s3,380
    3b80:	000b8913          	mv	s2,s7
    3b84:	00fb7e63          	bgeu	s6,a5,3ba0 <_write_sectors+0xa4>
    3b88:	00048593          	mv	a1,s1
    3b8c:	000b0513          	mv	a0,s6
    3b90:	ffffe097          	auipc	ra,0xffffe
    3b94:	8b8080e7          	jalr	-1864(ra) # 1448 <__mulsi3>
    3b98:	415b07b3          	sub	a5,s6,s5
    3b9c:	00f50933          	add	s2,a0,a5
    3ba0:	22842a03          	lw	s4,552(s0)
    3ba4:	029a1a63          	bne	s4,s1,3bd8 <_write_sectors+0xdc>
    3ba8:	22c42583          	lw	a1,556(s0)
    3bac:	17c98513          	add	a0,s3,380
    3bb0:	ffffe097          	auipc	ra,0xffffe
    3bb4:	c1c080e7          	jalr	-996(ra) # 17cc <fatfs_lba_of_cluster>
    3bb8:	018505b3          	add	a1,a0,s8
    3bbc:	00090693          	mv	a3,s2
    3bc0:	000c8613          	mv	a2,s9
    3bc4:	17c98513          	add	a0,s3,380
    3bc8:	ffffe097          	auipc	ra,0xffffe
    3bcc:	c6c080e7          	jalr	-916(ra) # 1834 <fatfs_sector_write>
    3bd0:	04050a63          	beqz	a0,3c24 <_write_sectors+0x128>
    3bd4:	0540006f          	j	3c28 <_write_sectors+0x12c>
    3bd8:	096ae663          	bltu	s5,s6,3c64 <_write_sectors+0x168>
    3bdc:	001a0793          	add	a5,s4,1
    3be0:	08979263          	bne	a5,s1,3c64 <_write_sectors+0x168>
    3be4:	22c42583          	lw	a1,556(s0)
    3be8:	fff00a93          	li	s5,-1
    3bec:	089a6263          	bltu	s4,s1,3c70 <_write_sectors+0x174>
    3bf0:	fff00793          	li	a5,-1
    3bf4:	0af59463          	bne	a1,a5,3c9c <_write_sectors+0x1a0>
    3bf8:	000d4583          	lbu	a1,0(s10)
    3bfc:	fff58513          	add	a0,a1,-1
    3c00:	01750533          	add	a0,a0,s7
    3c04:	ffffd097          	auipc	ra,0xffffd
    3c08:	0ac080e7          	jalr	172(ra) # cb0 <__udivsi3>
    3c0c:	00050613          	mv	a2,a0
    3c10:	01c10593          	add	a1,sp,28
    3c14:	17c98513          	add	a0,s3,380
    3c18:	00000097          	auipc	ra,0x0
    3c1c:	e14080e7          	jalr	-492(ra) # 3a2c <fatfs_add_free_space>
    3c20:	06051c63          	bnez	a0,3c98 <_write_sectors+0x19c>
    3c24:	00000913          	li	s2,0
    3c28:	04c12083          	lw	ra,76(sp)
    3c2c:	04812403          	lw	s0,72(sp)
    3c30:	04412483          	lw	s1,68(sp)
    3c34:	03c12983          	lw	s3,60(sp)
    3c38:	03812a03          	lw	s4,56(sp)
    3c3c:	03412a83          	lw	s5,52(sp)
    3c40:	03012b03          	lw	s6,48(sp)
    3c44:	02c12b83          	lw	s7,44(sp)
    3c48:	02812c03          	lw	s8,40(sp)
    3c4c:	02412c83          	lw	s9,36(sp)
    3c50:	02012d03          	lw	s10,32(sp)
    3c54:	00090513          	mv	a0,s2
    3c58:	04012903          	lw	s2,64(sp)
    3c5c:	05010113          	add	sp,sp,80
    3c60:	00008067          	ret
    3c64:	00442583          	lw	a1,4(s0)
    3c68:	00000a13          	li	s4,0
    3c6c:	f7dff06f          	j	3be8 <_write_sectors+0xec>
    3c70:	17c98513          	add	a0,s3,380
    3c74:	00b12623          	sw	a1,12(sp)
    3c78:	fffff097          	auipc	ra,0xfffff
    3c7c:	bec080e7          	jalr	-1044(ra) # 2864 <fatfs_find_next_cluster>
    3c80:	00c12583          	lw	a1,12(sp)
    3c84:	00b12e23          	sw	a1,28(sp)
    3c88:	f75508e3          	beq	a0,s5,3bf8 <_write_sectors+0xfc>
    3c8c:	001a0a13          	add	s4,s4,1
    3c90:	00050593          	mv	a1,a0
    3c94:	f59ff06f          	j	3bec <_write_sectors+0xf0>
    3c98:	01c12583          	lw	a1,28(sp)
    3c9c:	22b42623          	sw	a1,556(s0)
    3ca0:	22942423          	sw	s1,552(s0)
    3ca4:	f09ff06f          	j	3bac <_write_sectors+0xb0>

00003ca8 <fl_fflush>:
    3ca8:	000067b7          	lui	a5,0x6
    3cac:	11c7a783          	lw	a5,284(a5) # 611c <_filelib_init>
    3cb0:	ff010113          	add	sp,sp,-16
    3cb4:	00812423          	sw	s0,8(sp)
    3cb8:	00112623          	sw	ra,12(sp)
    3cbc:	00912223          	sw	s1,4(sp)
    3cc0:	00050413          	mv	s0,a0
    3cc4:	00079663          	bnez	a5,3cd0 <fl_fflush+0x28>
    3cc8:	ffffe097          	auipc	ra,0xffffe
    3ccc:	c40080e7          	jalr	-960(ra) # 1908 <fl_init>
    3cd0:	04040863          	beqz	s0,3d20 <fl_fflush+0x78>
    3cd4:	000067b7          	lui	a5,0x6
    3cd8:	17c78713          	add	a4,a5,380 # 617c <_fs>
    3cdc:	03c72703          	lw	a4,60(a4)
    3ce0:	17c78493          	add	s1,a5,380
    3ce4:	00070463          	beqz	a4,3cec <fl_fflush+0x44>
    3ce8:	000700e7          	jalr	a4
    3cec:	43442783          	lw	a5,1076(s0)
    3cf0:	02078263          	beqz	a5,3d14 <fl_fflush+0x6c>
    3cf4:	43042583          	lw	a1,1072(s0)
    3cf8:	00100693          	li	a3,1
    3cfc:	23040613          	add	a2,s0,560
    3d00:	00040513          	mv	a0,s0
    3d04:	00000097          	auipc	ra,0x0
    3d08:	df8080e7          	jalr	-520(ra) # 3afc <_write_sectors>
    3d0c:	00050463          	beqz	a0,3d14 <fl_fflush+0x6c>
    3d10:	42042a23          	sw	zero,1076(s0)
    3d14:	0404a783          	lw	a5,64(s1)
    3d18:	00078463          	beqz	a5,3d20 <fl_fflush+0x78>
    3d1c:	000780e7          	jalr	a5
    3d20:	00c12083          	lw	ra,12(sp)
    3d24:	00812403          	lw	s0,8(sp)
    3d28:	00412483          	lw	s1,4(sp)
    3d2c:	00000513          	li	a0,0
    3d30:	01010113          	add	sp,sp,16
    3d34:	00008067          	ret

00003d38 <fl_fclose>:
    3d38:	000067b7          	lui	a5,0x6
    3d3c:	11c7a783          	lw	a5,284(a5) # 611c <_filelib_init>
    3d40:	ff010113          	add	sp,sp,-16
    3d44:	00812423          	sw	s0,8(sp)
    3d48:	00112623          	sw	ra,12(sp)
    3d4c:	00912223          	sw	s1,4(sp)
    3d50:	01212023          	sw	s2,0(sp)
    3d54:	00050413          	mv	s0,a0
    3d58:	00079663          	bnez	a5,3d64 <fl_fclose+0x2c>
    3d5c:	ffffe097          	auipc	ra,0xffffe
    3d60:	bac080e7          	jalr	-1108(ra) # 1908 <fl_init>
    3d64:	08040e63          	beqz	s0,3e00 <fl_fclose+0xc8>
    3d68:	000064b7          	lui	s1,0x6
    3d6c:	17c48793          	add	a5,s1,380 # 617c <_fs>
    3d70:	03c7a783          	lw	a5,60(a5)
    3d74:	17c48913          	add	s2,s1,380
    3d78:	00078463          	beqz	a5,3d80 <fl_fclose+0x48>
    3d7c:	000780e7          	jalr	a5
    3d80:	00040513          	mv	a0,s0
    3d84:	00000097          	auipc	ra,0x0
    3d88:	f24080e7          	jalr	-220(ra) # 3ca8 <fl_fflush>
    3d8c:	01042783          	lw	a5,16(s0)
    3d90:	00078e63          	beqz	a5,3dac <fl_fclose+0x74>
    3d94:	00c42683          	lw	a3,12(s0)
    3d98:	00042583          	lw	a1,0(s0)
    3d9c:	21c40613          	add	a2,s0,540
    3da0:	17c48513          	add	a0,s1,380
    3da4:	fffff097          	auipc	ra,0xfffff
    3da8:	310080e7          	jalr	784(ra) # 30b4 <fatfs_update_file_length>
    3dac:	fff00793          	li	a5,-1
    3db0:	42f42823          	sw	a5,1072(s0)
    3db4:	00040513          	mv	a0,s0
    3db8:	00042423          	sw	zero,8(s0)
    3dbc:	00042623          	sw	zero,12(s0)
    3dc0:	00042223          	sw	zero,4(s0)
    3dc4:	42042a23          	sw	zero,1076(s0)
    3dc8:	00042823          	sw	zero,16(s0)
    3dcc:	ffffe097          	auipc	ra,0xffffe
    3dd0:	9b8080e7          	jalr	-1608(ra) # 1784 <_free_file>
    3dd4:	17c48513          	add	a0,s1,380
    3dd8:	fffff097          	auipc	ra,0xfffff
    3ddc:	a30080e7          	jalr	-1488(ra) # 2808 <fatfs_fat_purge>
    3de0:	04092783          	lw	a5,64(s2)
    3de4:	00078e63          	beqz	a5,3e00 <fl_fclose+0xc8>
    3de8:	00812403          	lw	s0,8(sp)
    3dec:	00c12083          	lw	ra,12(sp)
    3df0:	00412483          	lw	s1,4(sp)
    3df4:	00012903          	lw	s2,0(sp)
    3df8:	01010113          	add	sp,sp,16
    3dfc:	00078067          	jr	a5
    3e00:	00c12083          	lw	ra,12(sp)
    3e04:	00812403          	lw	s0,8(sp)
    3e08:	00412483          	lw	s1,4(sp)
    3e0c:	00012903          	lw	s2,0(sp)
    3e10:	01010113          	add	sp,sp,16
    3e14:	00008067          	ret

00003e18 <fl_fread>:
    3e18:	fd010113          	add	sp,sp,-48
    3e1c:	01612823          	sw	s6,16(sp)
    3e20:	00050b13          	mv	s6,a0
    3e24:	00058513          	mv	a0,a1
    3e28:	00060593          	mv	a1,a2
    3e2c:	02812423          	sw	s0,40(sp)
    3e30:	02912223          	sw	s1,36(sp)
    3e34:	02112623          	sw	ra,44(sp)
    3e38:	03212023          	sw	s2,32(sp)
    3e3c:	01312e23          	sw	s3,28(sp)
    3e40:	01412c23          	sw	s4,24(sp)
    3e44:	01512a23          	sw	s5,20(sp)
    3e48:	01712623          	sw	s7,12(sp)
    3e4c:	00068493          	mv	s1,a3
    3e50:	ffffd097          	auipc	ra,0xffffd
    3e54:	5f8080e7          	jalr	1528(ra) # 1448 <__mulsi3>
    3e58:	000067b7          	lui	a5,0x6
    3e5c:	11c7a783          	lw	a5,284(a5) # 611c <_filelib_init>
    3e60:	00050413          	mv	s0,a0
    3e64:	00079663          	bnez	a5,3e70 <fl_fread+0x58>
    3e68:	ffffe097          	auipc	ra,0xffffe
    3e6c:	aa0080e7          	jalr	-1376(ra) # 1908 <fl_init>
    3e70:	120b0a63          	beqz	s6,3fa4 <fl_fread+0x18c>
    3e74:	12048863          	beqz	s1,3fa4 <fl_fread+0x18c>
    3e78:	4384c783          	lbu	a5,1080(s1)
    3e7c:	0017f793          	and	a5,a5,1
    3e80:	12078263          	beqz	a5,3fa4 <fl_fread+0x18c>
    3e84:	06040e63          	beqz	s0,3f00 <fl_fread+0xe8>
    3e88:	0084a583          	lw	a1,8(s1)
    3e8c:	00c4a783          	lw	a5,12(s1)
    3e90:	10f5fa63          	bgeu	a1,a5,3fa4 <fl_fread+0x18c>
    3e94:	00b40733          	add	a4,s0,a1
    3e98:	00040a93          	mv	s5,s0
    3e9c:	00e7f463          	bgeu	a5,a4,3ea4 <fl_fread+0x8c>
    3ea0:	40b78ab3          	sub	s5,a5,a1
    3ea4:	0095d993          	srl	s3,a1,0x9
    3ea8:	1ff5f913          	and	s2,a1,511
    3eac:	00000413          	li	s0,0
    3eb0:	05505863          	blez	s5,3f00 <fl_fread+0xe8>
    3eb4:	06091e63          	bnez	s2,3f30 <fl_fread+0x118>
    3eb8:	408a86b3          	sub	a3,s5,s0
    3ebc:	1ff00793          	li	a5,511
    3ec0:	00000913          	li	s2,0
    3ec4:	06d7d663          	bge	a5,a3,3f30 <fl_fread+0x118>
    3ec8:	4096d693          	sra	a3,a3,0x9
    3ecc:	008b0633          	add	a2,s6,s0
    3ed0:	00098593          	mv	a1,s3
    3ed4:	00048513          	mv	a0,s1
    3ed8:	fffff097          	auipc	ra,0xfffff
    3edc:	60c080e7          	jalr	1548(ra) # 34e4 <_read_sectors>
    3ee0:	02050063          	beqz	a0,3f00 <fl_fread+0xe8>
    3ee4:	00951a13          	sll	s4,a0,0x9
    3ee8:	00a989b3          	add	s3,s3,a0
    3eec:	0084a783          	lw	a5,8(s1)
    3ef0:	01440433          	add	s0,s0,s4
    3ef4:	014787b3          	add	a5,a5,s4
    3ef8:	00f4a423          	sw	a5,8(s1)
    3efc:	fb544ee3          	blt	s0,s5,3eb8 <fl_fread+0xa0>
    3f00:	02c12083          	lw	ra,44(sp)
    3f04:	00040513          	mv	a0,s0
    3f08:	02812403          	lw	s0,40(sp)
    3f0c:	02412483          	lw	s1,36(sp)
    3f10:	02012903          	lw	s2,32(sp)
    3f14:	01c12983          	lw	s3,28(sp)
    3f18:	01812a03          	lw	s4,24(sp)
    3f1c:	01412a83          	lw	s5,20(sp)
    3f20:	01012b03          	lw	s6,16(sp)
    3f24:	00c12b83          	lw	s7,12(sp)
    3f28:	03010113          	add	sp,sp,48
    3f2c:	00008067          	ret
    3f30:	4304a783          	lw	a5,1072(s1)
    3f34:	23048b93          	add	s7,s1,560
    3f38:	03378e63          	beq	a5,s3,3f74 <fl_fread+0x15c>
    3f3c:	4344a783          	lw	a5,1076(s1)
    3f40:	00078863          	beqz	a5,3f50 <fl_fread+0x138>
    3f44:	00048513          	mv	a0,s1
    3f48:	00000097          	auipc	ra,0x0
    3f4c:	d60080e7          	jalr	-672(ra) # 3ca8 <fl_fflush>
    3f50:	00100693          	li	a3,1
    3f54:	000b8613          	mv	a2,s7
    3f58:	00098593          	mv	a1,s3
    3f5c:	00048513          	mv	a0,s1
    3f60:	fffff097          	auipc	ra,0xfffff
    3f64:	584080e7          	jalr	1412(ra) # 34e4 <_read_sectors>
    3f68:	f8050ce3          	beqz	a0,3f00 <fl_fread+0xe8>
    3f6c:	4334a823          	sw	s3,1072(s1)
    3f70:	4204aa23          	sw	zero,1076(s1)
    3f74:	20000793          	li	a5,512
    3f78:	412787b3          	sub	a5,a5,s2
    3f7c:	408a8a33          	sub	s4,s5,s0
    3f80:	0147d463          	bge	a5,s4,3f88 <fl_fread+0x170>
    3f84:	00078a13          	mv	s4,a5
    3f88:	000a0613          	mv	a2,s4
    3f8c:	012b85b3          	add	a1,s7,s2
    3f90:	008b0533          	add	a0,s6,s0
    3f94:	ffffd097          	auipc	ra,0xffffd
    3f98:	de4080e7          	jalr	-540(ra) # d78 <memcpy>
    3f9c:	00198993          	add	s3,s3,1
    3fa0:	f4dff06f          	j	3eec <fl_fread+0xd4>
    3fa4:	fff00413          	li	s0,-1
    3fa8:	f59ff06f          	j	3f00 <fl_fread+0xe8>

00003fac <fatfs_allocate_free_space>:
    3fac:	02069a63          	bnez	a3,3fe0 <fatfs_allocate_free_space+0x34>
    3fb0:	00000513          	li	a0,0
    3fb4:	00008067          	ret
    3fb8:	00000513          	li	a0,0
    3fbc:	02c12083          	lw	ra,44(sp)
    3fc0:	02812403          	lw	s0,40(sp)
    3fc4:	02412483          	lw	s1,36(sp)
    3fc8:	02012903          	lw	s2,32(sp)
    3fcc:	01c12983          	lw	s3,28(sp)
    3fd0:	01812a03          	lw	s4,24(sp)
    3fd4:	01412a83          	lw	s5,20(sp)
    3fd8:	03010113          	add	sp,sp,48
    3fdc:	00008067          	ret
    3fe0:	02452703          	lw	a4,36(a0)
    3fe4:	fd010113          	add	sp,sp,-48
    3fe8:	02812423          	sw	s0,40(sp)
    3fec:	03212023          	sw	s2,32(sp)
    3ff0:	01312e23          	sw	s3,28(sp)
    3ff4:	01512a23          	sw	s5,20(sp)
    3ff8:	02112623          	sw	ra,44(sp)
    3ffc:	02912223          	sw	s1,36(sp)
    4000:	01412c23          	sw	s4,24(sp)
    4004:	fff00793          	li	a5,-1
    4008:	00050413          	mv	s0,a0
    400c:	00058a93          	mv	s5,a1
    4010:	00060993          	mv	s3,a2
    4014:	00068913          	mv	s2,a3
    4018:	00f70863          	beq	a4,a5,4028 <fatfs_allocate_free_space+0x7c>
    401c:	fff00593          	li	a1,-1
    4020:	fffff097          	auipc	ra,0xfffff
    4024:	610080e7          	jalr	1552(ra) # 3630 <fatfs_set_fs_info_next_free_cluster>
    4028:	00044a03          	lbu	s4,0(s0)
    402c:	00090513          	mv	a0,s2
    4030:	009a1a13          	sll	s4,s4,0x9
    4034:	000a0593          	mv	a1,s4
    4038:	ffffd097          	auipc	ra,0xffffd
    403c:	c78080e7          	jalr	-904(ra) # cb0 <__udivsi3>
    4040:	00050493          	mv	s1,a0
    4044:	00050593          	mv	a1,a0
    4048:	000a0513          	mv	a0,s4
    404c:	ffffd097          	auipc	ra,0xffffd
    4050:	3fc080e7          	jalr	1020(ra) # 1448 <__mulsi3>
    4054:	01250463          	beq	a0,s2,405c <fatfs_allocate_free_space+0xb0>
    4058:	00148493          	add	s1,s1,1
    405c:	040a8463          	beqz	s5,40a4 <fatfs_allocate_free_space+0xf8>
    4060:	00842583          	lw	a1,8(s0)
    4064:	00c10613          	add	a2,sp,12
    4068:	00040513          	mv	a0,s0
    406c:	fffff097          	auipc	ra,0xfffff
    4070:	67c080e7          	jalr	1660(ra) # 36e8 <fatfs_find_blank_cluster>
    4074:	f40502e3          	beqz	a0,3fb8 <fatfs_allocate_free_space+0xc>
    4078:	00100793          	li	a5,1
    407c:	02f49863          	bne	s1,a5,40ac <fatfs_allocate_free_space+0x100>
    4080:	00c12483          	lw	s1,12(sp)
    4084:	fff00613          	li	a2,-1
    4088:	00040513          	mv	a0,s0
    408c:	00048593          	mv	a1,s1
    4090:	fffff097          	auipc	ra,0xfffff
    4094:	778080e7          	jalr	1912(ra) # 3808 <fatfs_fat_set_cluster>
    4098:	00100513          	li	a0,1
    409c:	0099a023          	sw	s1,0(s3)
    40a0:	f1dff06f          	j	3fbc <fatfs_allocate_free_space+0x10>
    40a4:	0009a783          	lw	a5,0(s3)
    40a8:	00f12623          	sw	a5,12(sp)
    40ac:	00048613          	mv	a2,s1
    40b0:	00c10593          	add	a1,sp,12
    40b4:	00040513          	mv	a0,s0
    40b8:	00000097          	auipc	ra,0x0
    40bc:	974080e7          	jalr	-1676(ra) # 3a2c <fatfs_add_free_space>
    40c0:	00a03533          	snez	a0,a0
    40c4:	ef9ff06f          	j	3fbc <fatfs_allocate_free_space+0x10>

000040c8 <fatfs_add_file_entry>:
    40c8:	f8010113          	add	sp,sp,-128
    40cc:	00f12a23          	sw	a5,20(sp)
    40d0:	03852783          	lw	a5,56(a0)
    40d4:	06112e23          	sw	ra,124(sp)
    40d8:	06812c23          	sw	s0,120(sp)
    40dc:	06912a23          	sw	s1,116(sp)
    40e0:	07212823          	sw	s2,112(sp)
    40e4:	07312623          	sw	s3,108(sp)
    40e8:	07412423          	sw	s4,104(sp)
    40ec:	07512223          	sw	s5,100(sp)
    40f0:	07612023          	sw	s6,96(sp)
    40f4:	05712e23          	sw	s7,92(sp)
    40f8:	05812c23          	sw	s8,88(sp)
    40fc:	05912a23          	sw	s9,84(sp)
    4100:	05a12823          	sw	s10,80(sp)
    4104:	05b12623          	sw	s11,76(sp)
    4108:	00b12423          	sw	a1,8(sp)
    410c:	00c12623          	sw	a2,12(sp)
    4110:	00e12823          	sw	a4,16(sp)
    4114:	01012c23          	sw	a6,24(sp)
    4118:	2c078063          	beqz	a5,43d8 <fatfs_add_file_entry+0x310>
    411c:	00050413          	mv	s0,a0
    4120:	00060513          	mv	a0,a2
    4124:	00068a93          	mv	s5,a3
    4128:	ffffe097          	auipc	ra,0xffffe
    412c:	a50080e7          	jalr	-1456(ra) # 1b78 <fatfs_lfn_entries_required>
    4130:	00150713          	add	a4,a0,1
    4134:	00100793          	li	a5,1
    4138:	00050913          	mv	s2,a0
    413c:	28e7fe63          	bgeu	a5,a4,43d8 <fatfs_add_file_entry+0x310>
    4140:	00000493          	li	s1,0
    4144:	00000a13          	li	s4,0
    4148:	00000993          	li	s3,0
    414c:	00000b13          	li	s6,0
    4150:	00000d93          	li	s11,0
    4154:	0e500c93          	li	s9,229
    4158:	01000d13          	li	s10,16
    415c:	00812583          	lw	a1,8(sp)
    4160:	00000693          	li	a3,0
    4164:	00048613          	mv	a2,s1
    4168:	00040513          	mv	a0,s0
    416c:	fffff097          	auipc	ra,0xfffff
    4170:	808080e7          	jalr	-2040(ra) # 2974 <fatfs_sector_reader>
    4174:	18050063          	beqz	a0,42f4 <fatfs_add_file_entry+0x22c>
    4178:	04440c13          	add	s8,s0,68
    417c:	000d8793          	mv	a5,s11
    4180:	00000b93          	li	s7,0
    4184:	000c0513          	mv	a0,s8
    4188:	00f12e23          	sw	a5,28(sp)
    418c:	ffffe097          	auipc	ra,0xffffe
    4190:	8fc080e7          	jalr	-1796(ra) # 1a88 <fatfs_entry_lfn_text>
    4194:	01c12783          	lw	a5,28(sp)
    4198:	00050d93          	mv	s11,a0
    419c:	02050c63          	beqz	a0,41d4 <fatfs_add_file_entry+0x10c>
    41a0:	00079863          	bnez	a5,41b0 <fatfs_add_file_entry+0xe8>
    41a4:	000b8a13          	mv	s4,s7
    41a8:	00048993          	mv	s3,s1
    41ac:	00100b13          	li	s6,1
    41b0:	00178d93          	add	s11,a5,1
    41b4:	001b8713          	add	a4,s7,1
    41b8:	0ff77b93          	zext.b	s7,a4
    41bc:	020c0c13          	add	s8,s8,32
    41c0:	01ab9663          	bne	s7,s10,41cc <fatfs_add_file_entry+0x104>
    41c4:	00148493          	add	s1,s1,1
    41c8:	f95ff06f          	j	415c <fatfs_add_file_entry+0x94>
    41cc:	000d8793          	mv	a5,s11
    41d0:	fb5ff06f          	j	4184 <fatfs_add_file_entry+0xbc>
    41d4:	000c4603          	lbu	a2,0(s8)
    41d8:	11961863          	bne	a2,s9,42e8 <fatfs_add_file_entry+0x220>
    41dc:	00079863          	bnez	a5,41ec <fatfs_add_file_entry+0x124>
    41e0:	000b8a13          	mv	s4,s7
    41e4:	00048993          	mv	s3,s1
    41e8:	00100b13          	li	s6,1
    41ec:	00178d93          	add	s11,a5,1
    41f0:	fd27c2e3          	blt	a5,s2,41b4 <fatfs_add_file_entry+0xec>
    41f4:	00ba8713          	add	a4,s5,11
    41f8:	000a8793          	mv	a5,s5
    41fc:	00000493          	li	s1,0
    4200:	0007c603          	lbu	a2,0(a5)
    4204:	00749693          	sll	a3,s1,0x7
    4208:	0014d493          	srl	s1,s1,0x1
    420c:	00c484b3          	add	s1,s1,a2
    4210:	00178793          	add	a5,a5,1
    4214:	00d484b3          	add	s1,s1,a3
    4218:	0ff4f493          	zext.b	s1,s1
    421c:	fef712e3          	bne	a4,a5,4200 <fatfs_add_file_entry+0x138>
    4220:	00098b13          	mv	s6,s3
    4224:	00000d13          	li	s10,0
    4228:	01000d93          	li	s11,16
    422c:	00812583          	lw	a1,8(sp)
    4230:	00000693          	li	a3,0
    4234:	000b0613          	mv	a2,s6
    4238:	00040513          	mv	a0,s0
    423c:	ffffe097          	auipc	ra,0xffffe
    4240:	738080e7          	jalr	1848(ra) # 2974 <fatfs_sector_reader>
    4244:	18050a63          	beqz	a0,43d8 <fatfs_add_file_entry+0x310>
    4248:	04440c13          	add	s8,s0,68
    424c:	00000713          	li	a4,0
    4250:	00000b93          	li	s7,0
    4254:	000c0c93          	mv	s9,s8
    4258:	000d1663          	bnez	s10,4264 <fatfs_add_file_entry+0x19c>
    425c:	153b1863          	bne	s6,s3,43ac <fatfs_add_file_entry+0x2e4>
    4260:	154b9663          	bne	s7,s4,43ac <fatfs_add_file_entry+0x2e4>
    4264:	12091263          	bnez	s2,4388 <fatfs_add_file_entry+0x2c0>
    4268:	01812703          	lw	a4,24(sp)
    426c:	01012603          	lw	a2,16(sp)
    4270:	01412583          	lw	a1,20(sp)
    4274:	02010693          	add	a3,sp,32
    4278:	000a8513          	mv	a0,s5
    427c:	ffffe097          	auipc	ra,0xffffe
    4280:	a54080e7          	jalr	-1452(ra) # 1cd0 <fatfs_sfn_create_entry>
    4284:	02000613          	li	a2,32
    4288:	02010593          	add	a1,sp,32
    428c:	000c0513          	mv	a0,s8
    4290:	ffffd097          	auipc	ra,0xffffd
    4294:	ae8080e7          	jalr	-1304(ra) # d78 <memcpy>
    4298:	03842783          	lw	a5,56(s0)
    429c:	24442503          	lw	a0,580(s0)
    42a0:	00100613          	li	a2,1
    42a4:	000c8593          	mv	a1,s9
    42a8:	000780e7          	jalr	a5
    42ac:	07c12083          	lw	ra,124(sp)
    42b0:	07812403          	lw	s0,120(sp)
    42b4:	07412483          	lw	s1,116(sp)
    42b8:	07012903          	lw	s2,112(sp)
    42bc:	06c12983          	lw	s3,108(sp)
    42c0:	06812a03          	lw	s4,104(sp)
    42c4:	06412a83          	lw	s5,100(sp)
    42c8:	06012b03          	lw	s6,96(sp)
    42cc:	05c12b83          	lw	s7,92(sp)
    42d0:	05812c03          	lw	s8,88(sp)
    42d4:	05412c83          	lw	s9,84(sp)
    42d8:	05012d03          	lw	s10,80(sp)
    42dc:	04c12d83          	lw	s11,76(sp)
    42e0:	08010113          	add	sp,sp,128
    42e4:	00008067          	ret
    42e8:	ee060ae3          	beqz	a2,41dc <fatfs_add_file_entry+0x114>
    42ec:	00000b13          	li	s6,0
    42f0:	ec5ff06f          	j	41b4 <fatfs_add_file_entry+0xec>
    42f4:	00842583          	lw	a1,8(s0)
    42f8:	02010613          	add	a2,sp,32
    42fc:	00040513          	mv	a0,s0
    4300:	fffff097          	auipc	ra,0xfffff
    4304:	3e8080e7          	jalr	1000(ra) # 36e8 <fatfs_find_blank_cluster>
    4308:	0c050863          	beqz	a0,43d8 <fatfs_add_file_entry+0x310>
    430c:	02012c83          	lw	s9,32(sp)
    4310:	00812583          	lw	a1,8(sp)
    4314:	00040513          	mv	a0,s0
    4318:	000c8613          	mv	a2,s9
    431c:	fffff097          	auipc	ra,0xfffff
    4320:	674080e7          	jalr	1652(ra) # 3990 <fatfs_fat_add_cluster_to_chain>
    4324:	0a050a63          	beqz	a0,43d8 <fatfs_add_file_entry+0x310>
    4328:	20000613          	li	a2,512
    432c:	00000593          	li	a1,0
    4330:	04440513          	add	a0,s0,68
    4334:	ffffd097          	auipc	ra,0xffffd
    4338:	a28080e7          	jalr	-1496(ra) # d5c <memset>
    433c:	00000d13          	li	s10,0
    4340:	00044783          	lbu	a5,0(s0)
    4344:	00fd6a63          	bltu	s10,a5,4358 <fatfs_add_file_entry+0x290>
    4348:	ea0b16e3          	bnez	s6,41f4 <fatfs_add_file_entry+0x12c>
    434c:	00048993          	mv	s3,s1
    4350:	00000a13          	li	s4,0
    4354:	ea1ff06f          	j	41f4 <fatfs_add_file_entry+0x12c>
    4358:	00000693          	li	a3,0
    435c:	000d0613          	mv	a2,s10
    4360:	000c8593          	mv	a1,s9
    4364:	00040513          	mv	a0,s0
    4368:	ffffd097          	auipc	ra,0xffffd
    436c:	4e4080e7          	jalr	1252(ra) # 184c <fatfs_write_sector>
    4370:	06050463          	beqz	a0,43d8 <fatfs_add_file_entry+0x310>
    4374:	001d0d13          	add	s10,s10,1
    4378:	0ffd7d13          	zext.b	s10,s10
    437c:	fc5ff06f          	j	4340 <fatfs_add_file_entry+0x278>
    4380:	001b0b13          	add	s6,s6,1
    4384:	ea9ff06f          	j	422c <fatfs_add_file_entry+0x164>
    4388:	00c12503          	lw	a0,12(sp)
    438c:	fff90913          	add	s2,s2,-1
    4390:	00048693          	mv	a3,s1
    4394:	00090613          	mv	a2,s2
    4398:	000c0593          	mv	a1,s8
    439c:	ffffe097          	auipc	ra,0xffffe
    43a0:	80c080e7          	jalr	-2036(ra) # 1ba8 <fatfs_filename_to_lfn>
    43a4:	00100d13          	li	s10,1
    43a8:	00100713          	li	a4,1
    43ac:	001b8793          	add	a5,s7,1
    43b0:	0ff7fb93          	zext.b	s7,a5
    43b4:	020c0c13          	add	s8,s8,32
    43b8:	ebbb90e3          	bne	s7,s11,4258 <fatfs_add_file_entry+0x190>
    43bc:	fc0702e3          	beqz	a4,4380 <fatfs_add_file_entry+0x2b8>
    43c0:	03842783          	lw	a5,56(s0)
    43c4:	24442503          	lw	a0,580(s0)
    43c8:	00100613          	li	a2,1
    43cc:	000c8593          	mv	a1,s9
    43d0:	000780e7          	jalr	a5
    43d4:	fa0516e3          	bnez	a0,4380 <fatfs_add_file_entry+0x2b8>
    43d8:	00000513          	li	a0,0
    43dc:	ed1ff06f          	j	42ac <fatfs_add_file_entry+0x1e4>

000043e0 <fl_fopen>:
    43e0:	000067b7          	lui	a5,0x6
    43e4:	11c7a783          	lw	a5,284(a5) # 611c <_filelib_init>
    43e8:	fa010113          	add	sp,sp,-96
    43ec:	04812c23          	sw	s0,88(sp)
    43f0:	05512223          	sw	s5,68(sp)
    43f4:	04112e23          	sw	ra,92(sp)
    43f8:	04912a23          	sw	s1,84(sp)
    43fc:	05212823          	sw	s2,80(sp)
    4400:	05312623          	sw	s3,76(sp)
    4404:	05412423          	sw	s4,72(sp)
    4408:	05612023          	sw	s6,64(sp)
    440c:	03712e23          	sw	s7,60(sp)
    4410:	03812c23          	sw	s8,56(sp)
    4414:	03912a23          	sw	s9,52(sp)
    4418:	00050a93          	mv	s5,a0
    441c:	00058413          	mv	s0,a1
    4420:	00079663          	bnez	a5,442c <fl_fopen+0x4c>
    4424:	ffffd097          	auipc	ra,0xffffd
    4428:	4e4080e7          	jalr	1252(ra) # 1908 <fl_init>
    442c:	000067b7          	lui	a5,0x6
    4430:	1187a783          	lw	a5,280(a5) # 6118 <_filelib_valid>
    4434:	3a078463          	beqz	a5,47dc <fl_fopen+0x3fc>
    4438:	3a0a8263          	beqz	s5,47dc <fl_fopen+0x3fc>
    443c:	16040063          	beqz	s0,459c <fl_fopen+0x1bc>
    4440:	00040513          	mv	a0,s0
    4444:	ffffd097          	auipc	ra,0xffffd
    4448:	958080e7          	jalr	-1704(ra) # d9c <strlen>
    444c:	00000493          	li	s1,0
    4450:	00000713          	li	a4,0
    4454:	05700693          	li	a3,87
    4458:	07200613          	li	a2,114
    445c:	07700813          	li	a6,119
    4460:	06100893          	li	a7,97
    4464:	06200313          	li	t1,98
    4468:	04100593          	li	a1,65
    446c:	04200e13          	li	t3,66
    4470:	05200e93          	li	t4,82
    4474:	02b00f13          	li	t5,43
    4478:	06a74063          	blt	a4,a0,44d8 <fl_fopen+0xf8>
    447c:	00006937          	lui	s2,0x6
    4480:	17c90793          	add	a5,s2,380 # 617c <_fs>
    4484:	0387a783          	lw	a5,56(a5)
    4488:	17c90b93          	add	s7,s2,380
    448c:	00079463          	bnez	a5,4494 <fl_fopen+0xb4>
    4490:	0d94f493          	and	s1,s1,217
    4494:	03cba783          	lw	a5,60(s7)
    4498:	00078463          	beqz	a5,44a0 <fl_fopen+0xc0>
    449c:	000780e7          	jalr	a5
    44a0:	0014f993          	and	s3,s1,1
    44a4:	0c099263          	bnez	s3,4568 <fl_fopen+0x188>
    44a8:	0204f793          	and	a5,s1,32
    44ac:	0e078063          	beqz	a5,458c <fl_fopen+0x1ac>
    44b0:	038ba783          	lw	a5,56(s7)
    44b4:	12079063          	bnez	a5,45d4 <fl_fopen+0x1f4>
    44b8:	0064f793          	and	a5,s1,6
    44bc:	0c078863          	beqz	a5,458c <fl_fopen+0x1ac>
    44c0:	000a8513          	mv	a0,s5
    44c4:	fffff097          	auipc	ra,0xfffff
    44c8:	9a4080e7          	jalr	-1628(ra) # 2e68 <_open_file>
    44cc:	00050413          	mv	s0,a0
    44d0:	30051263          	bnez	a0,47d4 <fl_fopen+0x3f4>
    44d4:	0b80006f          	j	458c <fl_fopen+0x1ac>
    44d8:	00e407b3          	add	a5,s0,a4
    44dc:	0007c783          	lbu	a5,0(a5)
    44e0:	04d78463          	beq	a5,a3,4528 <fl_fopen+0x148>
    44e4:	02f6e463          	bltu	a3,a5,450c <fl_fopen+0x12c>
    44e8:	04b78463          	beq	a5,a1,4530 <fl_fopen+0x150>
    44ec:	00f5e863          	bltu	a1,a5,44fc <fl_fopen+0x11c>
    44f0:	05e78463          	beq	a5,t5,4538 <fl_fopen+0x158>
    44f4:	00170713          	add	a4,a4,1
    44f8:	f81ff06f          	j	4478 <fl_fopen+0x98>
    44fc:	03c78063          	beq	a5,t3,451c <fl_fopen+0x13c>
    4500:	ffd79ae3          	bne	a5,t4,44f4 <fl_fopen+0x114>
    4504:	0014e493          	or	s1,s1,1
    4508:	fedff06f          	j	44f4 <fl_fopen+0x114>
    450c:	fec78ce3          	beq	a5,a2,4504 <fl_fopen+0x124>
    4510:	00f66a63          	bltu	a2,a5,4524 <fl_fopen+0x144>
    4514:	01178e63          	beq	a5,a7,4530 <fl_fopen+0x150>
    4518:	fc679ee3          	bne	a5,t1,44f4 <fl_fopen+0x114>
    451c:	0084e493          	or	s1,s1,8
    4520:	fd5ff06f          	j	44f4 <fl_fopen+0x114>
    4524:	fd0798e3          	bne	a5,a6,44f4 <fl_fopen+0x114>
    4528:	0324e493          	or	s1,s1,50
    452c:	fc9ff06f          	j	44f4 <fl_fopen+0x114>
    4530:	0264e493          	or	s1,s1,38
    4534:	fc1ff06f          	j	44f4 <fl_fopen+0x114>
    4538:	0014f793          	and	a5,s1,1
    453c:	00078663          	beqz	a5,4548 <fl_fopen+0x168>
    4540:	0024e493          	or	s1,s1,2
    4544:	fb1ff06f          	j	44f4 <fl_fopen+0x114>
    4548:	0024f793          	and	a5,s1,2
    454c:	00078663          	beqz	a5,4558 <fl_fopen+0x178>
    4550:	0314e493          	or	s1,s1,49
    4554:	fa1ff06f          	j	44f4 <fl_fopen+0x114>
    4558:	0044f793          	and	a5,s1,4
    455c:	f8078ce3          	beqz	a5,44f4 <fl_fopen+0x114>
    4560:	0274e493          	or	s1,s1,39
    4564:	f91ff06f          	j	44f4 <fl_fopen+0x114>
    4568:	000a8513          	mv	a0,s5
    456c:	fffff097          	auipc	ra,0xfffff
    4570:	8fc080e7          	jalr	-1796(ra) # 2e68 <_open_file>
    4574:	00050413          	mv	s0,a0
    4578:	24051e63          	bnez	a0,47d4 <fl_fopen+0x3f4>
    457c:	0204f793          	and	a5,s1,32
    4580:	00078663          	beqz	a5,458c <fl_fopen+0x1ac>
    4584:	038ba783          	lw	a5,56(s7)
    4588:	0c079663          	bnez	a5,4654 <fl_fopen+0x274>
    458c:	00000413          	li	s0,0
    4590:	040ba783          	lw	a5,64(s7)
    4594:	00078463          	beqz	a5,459c <fl_fopen+0x1bc>
    4598:	000780e7          	jalr	a5
    459c:	05c12083          	lw	ra,92(sp)
    45a0:	00040513          	mv	a0,s0
    45a4:	05812403          	lw	s0,88(sp)
    45a8:	05412483          	lw	s1,84(sp)
    45ac:	05012903          	lw	s2,80(sp)
    45b0:	04c12983          	lw	s3,76(sp)
    45b4:	04812a03          	lw	s4,72(sp)
    45b8:	04412a83          	lw	s5,68(sp)
    45bc:	04012b03          	lw	s6,64(sp)
    45c0:	03c12b83          	lw	s7,60(sp)
    45c4:	03812c03          	lw	s8,56(sp)
    45c8:	03412c83          	lw	s9,52(sp)
    45cc:	06010113          	add	sp,sp,96
    45d0:	00008067          	ret
    45d4:	ffffd097          	auipc	ra,0xffffd
    45d8:	13c080e7          	jalr	316(ra) # 1710 <_allocate_file>
    45dc:	00050413          	mv	s0,a0
    45e0:	ec050ce3          	beqz	a0,44b8 <fl_fopen+0xd8>
    45e4:	01440c13          	add	s8,s0,20
    45e8:	10400613          	li	a2,260
    45ec:	00000593          	li	a1,0
    45f0:	000c0513          	mv	a0,s8
    45f4:	ffffc097          	auipc	ra,0xffffc
    45f8:	768080e7          	jalr	1896(ra) # d5c <memset>
    45fc:	11840b13          	add	s6,s0,280
    4600:	10400613          	li	a2,260
    4604:	00000593          	li	a1,0
    4608:	000b0513          	mv	a0,s6
    460c:	ffffc097          	auipc	ra,0xffffc
    4610:	750080e7          	jalr	1872(ra) # d5c <memset>
    4614:	10400713          	li	a4,260
    4618:	000b0693          	mv	a3,s6
    461c:	10400613          	li	a2,260
    4620:	000c0593          	mv	a1,s8
    4624:	000a8513          	mv	a0,s5
    4628:	ffffe097          	auipc	ra,0xffffe
    462c:	bac080e7          	jalr	-1108(ra) # 21d4 <fatfs_split_path>
    4630:	fff00793          	li	a5,-1
    4634:	02f51a63          	bne	a0,a5,4668 <fl_fopen+0x288>
    4638:	00040513          	mv	a0,s0
    463c:	ffffd097          	auipc	ra,0xffffd
    4640:	148080e7          	jalr	328(ra) # 1784 <_free_file>
    4644:	f40994e3          	bnez	s3,458c <fl_fopen+0x1ac>
    4648:	0204f793          	and	a5,s1,32
    464c:	f40780e3          	beqz	a5,458c <fl_fopen+0x1ac>
    4650:	e69ff06f          	j	44b8 <fl_fopen+0xd8>
    4654:	ffffd097          	auipc	ra,0xffffd
    4658:	0bc080e7          	jalr	188(ra) # 1710 <_allocate_file>
    465c:	00050413          	mv	s0,a0
    4660:	f80512e3          	bnez	a0,45e4 <fl_fopen+0x204>
    4664:	f29ff06f          	j	458c <fl_fopen+0x1ac>
    4668:	00040513          	mv	a0,s0
    466c:	ffffe097          	auipc	ra,0xffffe
    4670:	dbc080e7          	jalr	-580(ra) # 2428 <_check_file_open>
    4674:	00050a13          	mv	s4,a0
    4678:	fc0510e3          	bnez	a0,4638 <fl_fopen+0x258>
    467c:	01444783          	lbu	a5,20(s0)
    4680:	0c079263          	bnez	a5,4744 <fl_fopen+0x364>
    4684:	008ba783          	lw	a5,8(s7)
    4688:	00f42023          	sw	a5,0(s0)
    468c:	00042583          	lw	a1,0(s0)
    4690:	01010693          	add	a3,sp,16
    4694:	000b0613          	mv	a2,s6
    4698:	17c90513          	add	a0,s2,380
    469c:	ffffe097          	auipc	ra,0xffffe
    46a0:	418080e7          	jalr	1048(ra) # 2ab4 <fatfs_get_file_entry>
    46a4:	00100793          	li	a5,1
    46a8:	f8f508e3          	beq	a0,a5,4638 <fl_fopen+0x258>
    46ac:	00042223          	sw	zero,4(s0)
    46b0:	00100693          	li	a3,1
    46b4:	00440613          	add	a2,s0,4
    46b8:	00100593          	li	a1,1
    46bc:	17c90513          	add	a0,s2,380
    46c0:	00000097          	auipc	ra,0x0
    46c4:	8ec080e7          	jalr	-1812(ra) # 3fac <fatfs_allocate_free_space>
    46c8:	f60508e3          	beqz	a0,4638 <fl_fopen+0x258>
    46cc:	000b0593          	mv	a1,s6
    46d0:	00410513          	add	a0,sp,4
    46d4:	ffffd097          	auipc	ra,0xffffd
    46d8:	6a4080e7          	jalr	1700(ra) # 1d78 <fatfs_lfn_create_sfn>
    46dc:	21c40c13          	add	s8,s0,540
    46e0:	00b00613          	li	a2,11
    46e4:	00410593          	add	a1,sp,4
    46e8:	000c0513          	mv	a0,s8
    46ec:	00002cb7          	lui	s9,0x2
    46f0:	ffffc097          	auipc	ra,0xffffc
    46f4:	688080e7          	jalr	1672(ra) # d78 <memcpy>
    46f8:	70fc8c93          	add	s9,s9,1807 # 270f <fatfs_init+0x1a3>
    46fc:	00042583          	lw	a1,0(s0)
    4700:	000c0613          	mv	a2,s8
    4704:	17c90513          	add	a0,s2,380
    4708:	fffff097          	auipc	ra,0xfffff
    470c:	8d8080e7          	jalr	-1832(ra) # 2fe0 <fatfs_sfn_exists>
    4710:	04050663          	beqz	a0,475c <fl_fopen+0x37c>
    4714:	001a0a13          	add	s4,s4,1
    4718:	059a0263          	beq	s4,s9,475c <fl_fopen+0x37c>
    471c:	000b0593          	mv	a1,s6
    4720:	00410513          	add	a0,sp,4
    4724:	ffffd097          	auipc	ra,0xffffd
    4728:	654080e7          	jalr	1620(ra) # 1d78 <fatfs_lfn_create_sfn>
    472c:	000a0613          	mv	a2,s4
    4730:	00410593          	add	a1,sp,4
    4734:	000c0513          	mv	a0,s8
    4738:	ffffd097          	auipc	ra,0xffffd
    473c:	7bc080e7          	jalr	1980(ra) # 1ef4 <fatfs_lfn_generate_tail>
    4740:	fbdff06f          	j	46fc <fl_fopen+0x31c>
    4744:	00040593          	mv	a1,s0
    4748:	000c0513          	mv	a0,s8
    474c:	ffffe097          	auipc	ra,0xffffe
    4750:	568080e7          	jalr	1384(ra) # 2cb4 <_open_directory>
    4754:	f2051ce3          	bnez	a0,468c <fl_fopen+0x2ac>
    4758:	ee1ff06f          	j	4638 <fl_fopen+0x258>
    475c:	00442703          	lw	a4,4(s0)
    4760:	000027b7          	lui	a5,0x2
    4764:	70f78793          	add	a5,a5,1807 # 270f <fatfs_init+0x1a3>
    4768:	00070593          	mv	a1,a4
    476c:	02fa0663          	beq	s4,a5,4798 <fl_fopen+0x3b8>
    4770:	00042583          	lw	a1,0(s0)
    4774:	00000813          	li	a6,0
    4778:	00000793          	li	a5,0
    477c:	000c0693          	mv	a3,s8
    4780:	000b0613          	mv	a2,s6
    4784:	17c90513          	add	a0,s2,380
    4788:	00000097          	auipc	ra,0x0
    478c:	940080e7          	jalr	-1728(ra) # 40c8 <fatfs_add_file_entry>
    4790:	00051c63          	bnez	a0,47a8 <fl_fopen+0x3c8>
    4794:	00442583          	lw	a1,4(s0)
    4798:	17c90513          	add	a0,s2,380
    479c:	fffff097          	auipc	ra,0xfffff
    47a0:	184080e7          	jalr	388(ra) # 3920 <fatfs_free_cluster_chain>
    47a4:	e95ff06f          	j	4638 <fl_fopen+0x258>
    47a8:	fff00793          	li	a5,-1
    47ac:	00042623          	sw	zero,12(s0)
    47b0:	00042423          	sw	zero,8(s0)
    47b4:	42f42823          	sw	a5,1072(s0)
    47b8:	42042a23          	sw	zero,1076(s0)
    47bc:	00042823          	sw	zero,16(s0)
    47c0:	22f42423          	sw	a5,552(s0)
    47c4:	22f42623          	sw	a5,556(s0)
    47c8:	17c90513          	add	a0,s2,380
    47cc:	ffffe097          	auipc	ra,0xffffe
    47d0:	03c080e7          	jalr	60(ra) # 2808 <fatfs_fat_purge>
    47d4:	42940c23          	sb	s1,1080(s0)
    47d8:	db9ff06f          	j	4590 <fl_fopen+0x1b0>
    47dc:	00000413          	li	s0,0
    47e0:	dbdff06f          	j	459c <fl_fopen+0x1bc>

000047e4 <Init_menu>:
    47e4:	000017b7          	lui	a5,0x1
    47e8:	fd010113          	add	sp,sp,-48
    47ec:	00006737          	lui	a4,0x6
    47f0:	06478793          	add	a5,a5,100 # 1064 <display_putchar>
    47f4:	10f72223          	sw	a5,260(a4) # 6104 <f_putchar>
    47f8:	02112623          	sw	ra,44(sp)
    47fc:	02812423          	sw	s0,40(sp)
    4800:	02912223          	sw	s1,36(sp)
    4804:	03212023          	sw	s2,32(sp)
    4808:	01312e23          	sw	s3,28(sp)
    480c:	01412c23          	sw	s4,24(sp)
    4810:	01512a23          	sw	s5,20(sp)
    4814:	01612823          	sw	s6,16(sp)
    4818:	01712623          	sw	s7,12(sp)
    481c:	ffffc097          	auipc	ra,0xffffc
    4820:	770080e7          	jalr	1904(ra) # f8c <oled_init>
    4824:	ffffc097          	auipc	ra,0xffffc
    4828:	774080e7          	jalr	1908(ra) # f98 <oled_fullscreen>
    482c:	ffffd097          	auipc	ra,0xffffd
    4830:	804080e7          	jalr	-2044(ra) # 1030 <display_framebuffer>
    4834:	00004637          	lui	a2,0x4
    4838:	00000593          	li	a1,0
    483c:	ffffc097          	auipc	ra,0xffffc
    4840:	520080e7          	jalr	1312(ra) # d5c <memset>
    4844:	ffffd097          	auipc	ra,0xffffd
    4848:	968080e7          	jalr	-1688(ra) # 11ac <display_refresh>
    484c:	00000593          	li	a1,0
    4850:	00000513          	li	a0,0
    4854:	ffffc097          	auipc	ra,0xffffc
    4858:	7e8080e7          	jalr	2024(ra) # 103c <display_set_cursor>
    485c:	00000593          	li	a1,0
    4860:	0ff00513          	li	a0,255
    4864:	ffffc097          	auipc	ra,0xffffc
    4868:	7ec080e7          	jalr	2028(ra) # 1050 <display_set_front_back_color>
    486c:	00006537          	lui	a0,0x6
    4870:	ea050513          	add	a0,a0,-352 # 5ea0 <font+0x228>
    4874:	ffffd097          	auipc	ra,0xffffd
    4878:	aa4080e7          	jalr	-1372(ra) # 1318 <printf>
    487c:	ffffd097          	auipc	ra,0xffffd
    4880:	930080e7          	jalr	-1744(ra) # 11ac <display_refresh>
    4884:	000067b7          	lui	a5,0x6
    4888:	1207a703          	lw	a4,288(a5) # 6120 <Init_stat>
    488c:	04071063          	bnez	a4,48cc <Init_menu+0xe8>
    4890:	00100713          	li	a4,1
    4894:	12e7a023          	sw	a4,288(a5)
    4898:	000014b7          	lui	s1,0x1
    489c:	ffffc097          	auipc	ra,0xffffc
    48a0:	1e8080e7          	jalr	488(ra) # a84 <sdcard_init>
    48a4:	00001437          	lui	s0,0x1
    48a8:	ffffd097          	auipc	ra,0xffffd
    48ac:	060080e7          	jalr	96(ra) # 1908 <fl_init>
    48b0:	ffffd097          	auipc	ra,0xffffd
    48b4:	8fc080e7          	jalr	-1796(ra) # 11ac <display_refresh>
    48b8:	ca048593          	add	a1,s1,-864 # ca0 <sdcard_writesector>
    48bc:	c4c40513          	add	a0,s0,-948 # c4c <sdcard_readsector>
    48c0:	ffffe097          	auipc	ra,0xffffe
    48c4:	edc080e7          	jalr	-292(ra) # 279c <fl_attach_media>
    48c8:	fe0518e3          	bnez	a0,48b8 <Init_menu+0xd4>
    48cc:	00006537          	lui	a0,0x6
    48d0:	eac50513          	add	a0,a0,-340 # 5eac <font+0x234>
    48d4:	ffffd097          	auipc	ra,0xffffd
    48d8:	a44080e7          	jalr	-1468(ra) # 1318 <printf>
    48dc:	ffffd097          	auipc	ra,0xffffd
    48e0:	8d0080e7          	jalr	-1840(ra) # 11ac <display_refresh>
    48e4:	000067b7          	lui	a5,0x6
    48e8:	c607a483          	lw	s1,-928(a5) # 5c60 <BUTTONS>
    48ec:	00000413          	li	s0,0
    48f0:	00000913          	li	s2,0
    48f4:	00006ab7          	lui	s5,0x6
    48f8:	00006b37          	lui	s6,0x6
    48fc:	000069b7          	lui	s3,0x6
    4900:	00100a13          	li	s4,1
    4904:	00006bb7          	lui	s7,0x6
    4908:	00000097          	auipc	ra,0x0
    490c:	248080e7          	jalr	584(ra) # 4b50 <clear_audio>
    4910:	00000593          	li	a1,0
    4914:	00000513          	li	a0,0
    4918:	ffffc097          	auipc	ra,0xffffc
    491c:	724080e7          	jalr	1828(ra) # 103c <display_set_cursor>
    4920:	0ff97593          	zext.b	a1,s2
    4924:	07f58513          	add	a0,a1,127
    4928:	0ff57513          	zext.b	a0,a0
    492c:	ffffc097          	auipc	ra,0xffffc
    4930:	724080e7          	jalr	1828(ra) # 1050 <display_set_front_back_color>
    4934:	eb4a8513          	add	a0,s5,-332 # 5eb4 <font+0x23c>
    4938:	00790913          	add	s2,s2,7
    493c:	ffffd097          	auipc	ra,0xffffd
    4940:	9dc080e7          	jalr	-1572(ra) # 1318 <printf>
    4944:	0c041663          	bnez	s0,4a10 <Init_menu+0x22c>
    4948:	00000513          	li	a0,0
    494c:	0ff00593          	li	a1,255
    4950:	ffffc097          	auipc	ra,0xffffc
    4954:	700080e7          	jalr	1792(ra) # 1050 <display_set_front_back_color>
    4958:	ed0b0613          	add	a2,s6,-304 # 5ed0 <font+0x258>
    495c:	00000593          	li	a1,0
    4960:	ed898513          	add	a0,s3,-296 # 5ed8 <font+0x260>
    4964:	ffffd097          	auipc	ra,0xffffd
    4968:	9b4080e7          	jalr	-1612(ra) # 1318 <printf>
    496c:	0b441863          	bne	s0,s4,4a1c <Init_menu+0x238>
    4970:	00000513          	li	a0,0
    4974:	0ff00593          	li	a1,255
    4978:	ffffc097          	auipc	ra,0xffffc
    497c:	6d8080e7          	jalr	1752(ra) # 1050 <display_set_front_back_color>
    4980:	ee0b8613          	add	a2,s7,-288 # 5ee0 <font+0x268>
    4984:	00100593          	li	a1,1
    4988:	ed898513          	add	a0,s3,-296
    498c:	ffffd097          	auipc	ra,0xffffd
    4990:	98c080e7          	jalr	-1652(ra) # 1318 <printf>
    4994:	ffffd097          	auipc	ra,0xffffd
    4998:	818080e7          	jalr	-2024(ra) # 11ac <display_refresh>
    499c:	0004a783          	lw	a5,0(s1)
    49a0:	0107f793          	and	a5,a5,16
    49a4:	08079263          	bnez	a5,4a28 <Init_menu+0x244>
    49a8:	0004a783          	lw	a5,0(s1)
    49ac:	0087f793          	and	a5,a5,8
    49b0:	08079863          	bnez	a5,4a40 <Init_menu+0x25c>
    49b4:	0004a783          	lw	a5,0(s1)
    49b8:	0407f793          	and	a5,a5,64
    49bc:	f40786e3          	beqz	a5,4908 <Init_menu+0x124>
    49c0:	ffffc097          	auipc	ra,0xffffc
    49c4:	670080e7          	jalr	1648(ra) # 1030 <display_framebuffer>
    49c8:	00004637          	lui	a2,0x4
    49cc:	00000593          	li	a1,0
    49d0:	ffffc097          	auipc	ra,0xffffc
    49d4:	38c080e7          	jalr	908(ra) # d5c <memset>
    49d8:	ffffc097          	auipc	ra,0xffffc
    49dc:	7d4080e7          	jalr	2004(ra) # 11ac <display_refresh>
    49e0:	02c12083          	lw	ra,44(sp)
    49e4:	00040513          	mv	a0,s0
    49e8:	02812403          	lw	s0,40(sp)
    49ec:	02412483          	lw	s1,36(sp)
    49f0:	02012903          	lw	s2,32(sp)
    49f4:	01c12983          	lw	s3,28(sp)
    49f8:	01812a03          	lw	s4,24(sp)
    49fc:	01412a83          	lw	s5,20(sp)
    4a00:	01012b03          	lw	s6,16(sp)
    4a04:	00c12b83          	lw	s7,12(sp)
    4a08:	03010113          	add	sp,sp,48
    4a0c:	00008067          	ret
    4a10:	0ff00513          	li	a0,255
    4a14:	00000593          	li	a1,0
    4a18:	f39ff06f          	j	4950 <Init_menu+0x16c>
    4a1c:	0ff00513          	li	a0,255
    4a20:	00000593          	li	a1,0
    4a24:	f55ff06f          	j	4978 <Init_menu+0x194>
    4a28:	0004a783          	lw	a5,0(s1)
    4a2c:	0087f793          	and	a5,a5,8
    4a30:	f80792e3          	bnez	a5,49b4 <Init_menu+0x1d0>
    4a34:	00100793          	li	a5,1
    4a38:	40878433          	sub	s0,a5,s0
    4a3c:	f79ff06f          	j	49b4 <Init_menu+0x1d0>
    4a40:	408a0433          	sub	s0,s4,s0
    4a44:	f71ff06f          	j	49b4 <Init_menu+0x1d0>

00004a48 <list_Albums.constprop.0>:
    4a48:	ec010113          	add	sp,sp,-320
    4a4c:	00006537          	lui	a0,0x6
    4a50:	00410593          	add	a1,sp,4
    4a54:	ee850513          	add	a0,a0,-280 # 5ee8 <font+0x270>
    4a58:	12112e23          	sw	ra,316(sp)
    4a5c:	12812c23          	sw	s0,312(sp)
    4a60:	12912a23          	sw	s1,308(sp)
    4a64:	13212823          	sw	s2,304(sp)
    4a68:	13312623          	sw	s3,300(sp)
    4a6c:	13412423          	sw	s4,296(sp)
    4a70:	ffffe097          	auipc	ra,0xffffe
    4a74:	32c080e7          	jalr	812(ra) # 2d9c <fl_opendir>
    4a78:	02050a63          	beqz	a0,4aac <list_Albums.constprop.0+0x64>
    4a7c:	00007437          	lui	s0,0x7
    4a80:	000074b7          	lui	s1,0x7
    4a84:	00006a37          	lui	s4,0x6
    4a88:	00700913          	li	s2,7
    4a8c:	02e00993          	li	s3,46
    4a90:	e8c40413          	add	s0,s0,-372 # 6e8c <Albums>
    4a94:	e6c48493          	add	s1,s1,-404 # 6e6c <sizes>
    4a98:	128a2783          	lw	a5,296(s4) # 6128 <nAlbums>
    4a9c:	02f95863          	bge	s2,a5,4acc <list_Albums.constprop.0+0x84>
    4aa0:	00410513          	add	a0,sp,4
    4aa4:	ffffd097          	auipc	ra,0xffffd
    4aa8:	ed4080e7          	jalr	-300(ra) # 1978 <fl_closedir>
    4aac:	13c12083          	lw	ra,316(sp)
    4ab0:	13812403          	lw	s0,312(sp)
    4ab4:	13412483          	lw	s1,308(sp)
    4ab8:	13012903          	lw	s2,304(sp)
    4abc:	12c12983          	lw	s3,300(sp)
    4ac0:	12812a03          	lw	s4,296(sp)
    4ac4:	14010113          	add	sp,sp,320
    4ac8:	00008067          	ret
    4acc:	01010593          	add	a1,sp,16
    4ad0:	00410513          	add	a0,sp,4
    4ad4:	fffff097          	auipc	ra,0xfffff
    4ad8:	97c080e7          	jalr	-1668(ra) # 3450 <fl_readdir>
    4adc:	fc0512e3          	bnez	a0,4aa0 <list_Albums.constprop.0+0x58>
    4ae0:	01014783          	lbu	a5,16(sp)
    4ae4:	fb378ae3          	beq	a5,s3,4a98 <list_Albums.constprop.0+0x50>
    4ae8:	11414783          	lbu	a5,276(sp)
    4aec:	fa0786e3          	beqz	a5,4a98 <list_Albums.constprop.0+0x50>
    4af0:	128a2783          	lw	a5,296(s4)
    4af4:	01600613          	li	a2,22
    4af8:	01010593          	add	a1,sp,16
    4afc:	00179513          	sll	a0,a5,0x1
    4b00:	00f50533          	add	a0,a0,a5
    4b04:	00351513          	sll	a0,a0,0x3
    4b08:	40f50533          	sub	a0,a0,a5
    4b0c:	00a40533          	add	a0,s0,a0
    4b10:	ffffc097          	auipc	ra,0xffffc
    4b14:	2ec080e7          	jalr	748(ra) # dfc <strncpy>
    4b18:	128a2703          	lw	a4,296(s4)
    4b1c:	11c12683          	lw	a3,284(sp)
    4b20:	00171793          	sll	a5,a4,0x1
    4b24:	00e787b3          	add	a5,a5,a4
    4b28:	00379793          	sll	a5,a5,0x3
    4b2c:	40e787b3          	sub	a5,a5,a4
    4b30:	00f407b3          	add	a5,s0,a5
    4b34:	00078b23          	sb	zero,22(a5)
    4b38:	00271793          	sll	a5,a4,0x2
    4b3c:	00f487b3          	add	a5,s1,a5
    4b40:	00170713          	add	a4,a4,1
    4b44:	00d7a023          	sw	a3,0(a5)
    4b48:	12ea2423          	sw	a4,296(s4)
    4b4c:	f4dff06f          	j	4a98 <list_Albums.constprop.0+0x50>

00004b50 <clear_audio>:
    4b50:	ff010113          	add	sp,sp,-16
    4b54:	000067b7          	lui	a5,0x6
    4b58:	00812423          	sw	s0,8(sp)
    4b5c:	c587a403          	lw	s0,-936(a5) # 5c58 <AUDIO>
    4b60:	00112623          	sw	ra,12(sp)
    4b64:	00912223          	sw	s1,4(sp)
    4b68:	00042703          	lw	a4,0(s0)
    4b6c:	00042783          	lw	a5,0(s0)
    4b70:	fef70ee3          	beq	a4,a5,4b6c <clear_audio+0x1c>
    4b74:	00042483          	lw	s1,0(s0)
    4b78:	20000613          	li	a2,512
    4b7c:	00000593          	li	a1,0
    4b80:	00048513          	mv	a0,s1
    4b84:	ffffc097          	auipc	ra,0xffffc
    4b88:	1d8080e7          	jalr	472(ra) # d5c <memset>
    4b8c:	00042783          	lw	a5,0(s0)
    4b90:	fef48ee3          	beq	s1,a5,4b8c <clear_audio+0x3c>
    4b94:	00042483          	lw	s1,0(s0)
    4b98:	20000613          	li	a2,512
    4b9c:	00000593          	li	a1,0
    4ba0:	00048513          	mv	a0,s1
    4ba4:	ffffc097          	auipc	ra,0xffffc
    4ba8:	1b8080e7          	jalr	440(ra) # d5c <memset>
    4bac:	00042783          	lw	a5,0(s0)
    4bb0:	fef48ee3          	beq	s1,a5,4bac <clear_audio+0x5c>
    4bb4:	00c12083          	lw	ra,12(sp)
    4bb8:	00812403          	lw	s0,8(sp)
    4bbc:	00412483          	lw	s1,4(sp)
    4bc0:	01010113          	add	sp,sp,16
    4bc4:	00008067          	ret

00004bc8 <audio_menu>:
    4bc8:	000067b7          	lui	a5,0x6
    4bcc:	1247a703          	lw	a4,292(a5) # 6124 <init>
    4bd0:	fc010113          	add	sp,sp,-64
    4bd4:	03212823          	sw	s2,48(sp)
    4bd8:	03412423          	sw	s4,40(sp)
    4bdc:	01712e23          	sw	s7,28(sp)
    4be0:	02112e23          	sw	ra,60(sp)
    4be4:	02812c23          	sw	s0,56(sp)
    4be8:	02912a23          	sw	s1,52(sp)
    4bec:	03312623          	sw	s3,44(sp)
    4bf0:	03512223          	sw	s5,36(sp)
    4bf4:	03612023          	sw	s6,32(sp)
    4bf8:	01812c23          	sw	s8,24(sp)
    4bfc:	01912a23          	sw	s9,20(sp)
    4c00:	01a12823          	sw	s10,16(sp)
    4c04:	01b12623          	sw	s11,12(sp)
    4c08:	00050913          	mv	s2,a0
    4c0c:	00058b93          	mv	s7,a1
    4c10:	00006a37          	lui	s4,0x6
    4c14:	08071a63          	bnez	a4,4ca8 <audio_menu+0xe0>
    4c18:	00100713          	li	a4,1
    4c1c:	00000593          	li	a1,0
    4c20:	00000513          	li	a0,0
    4c24:	12e7a223          	sw	a4,292(a5)
    4c28:	ffffc097          	auipc	ra,0xffffc
    4c2c:	414080e7          	jalr	1044(ra) # 103c <display_set_cursor>
    4c30:	00000593          	li	a1,0
    4c34:	0ff00513          	li	a0,255
    4c38:	ffffc097          	auipc	ra,0xffffc
    4c3c:	418080e7          	jalr	1048(ra) # 1050 <display_set_front_back_color>
    4c40:	00006537          	lui	a0,0x6
    4c44:	ef050513          	add	a0,a0,-272 # 5ef0 <font+0x278>
    4c48:	ffffc097          	auipc	ra,0xffffc
    4c4c:	6d0080e7          	jalr	1744(ra) # 1318 <printf>
    4c50:	ffffc097          	auipc	ra,0xffffc
    4c54:	55c080e7          	jalr	1372(ra) # 11ac <display_refresh>
    4c58:	120a2423          	sw	zero,296(s4) # 6128 <nAlbums>
    4c5c:	00000097          	auipc	ra,0x0
    4c60:	dec080e7          	jalr	-532(ra) # 4a48 <list_Albums.constprop.0>
    4c64:	128a2783          	lw	a5,296(s4)
    4c68:	04079063          	bnez	a5,4ca8 <audio_menu+0xe0>
    4c6c:	00000593          	li	a1,0
    4c70:	00000513          	li	a0,0
    4c74:	ffffc097          	auipc	ra,0xffffc
    4c78:	3c8080e7          	jalr	968(ra) # 103c <display_set_cursor>
    4c7c:	00000593          	li	a1,0
    4c80:	0ff00513          	li	a0,255
    4c84:	ffffc097          	auipc	ra,0xffffc
    4c88:	3cc080e7          	jalr	972(ra) # 1050 <display_set_front_back_color>
    4c8c:	00006537          	lui	a0,0x6
    4c90:	f0850513          	add	a0,a0,-248 # 5f08 <font+0x290>
    4c94:	ffffc097          	auipc	ra,0xffffc
    4c98:	684080e7          	jalr	1668(ra) # 1318 <printf>
    4c9c:	ffffc097          	auipc	ra,0xffffc
    4ca0:	510080e7          	jalr	1296(ra) # 11ac <display_refresh>
    4ca4:	0000006f          	j	4ca4 <audio_menu+0xdc>
    4ca8:	000067b7          	lui	a5,0x6
    4cac:	c607a983          	lw	s3,-928(a5) # 5c60 <BUTTONS>
    4cb0:	00007c37          	lui	s8,0x7
    4cb4:	00000a93          	li	s5,0
    4cb8:	00000413          	li	s0,0
    4cbc:	00006cb7          	lui	s9,0x6
    4cc0:	e8cc0b13          	add	s6,s8,-372 # 6e8c <Albums>
    4cc4:	00006d37          	lui	s10,0x6
    4cc8:	00000593          	li	a1,0
    4ccc:	00000513          	li	a0,0
    4cd0:	ffffc097          	auipc	ra,0xffffc
    4cd4:	36c080e7          	jalr	876(ra) # 103c <display_set_cursor>
    4cd8:	0ffaf593          	zext.b	a1,s5
    4cdc:	07f58513          	add	a0,a1,127
    4ce0:	0ff57513          	zext.b	a0,a0
    4ce4:	ffffc097          	auipc	ra,0xffffc
    4ce8:	36c080e7          	jalr	876(ra) # 1050 <display_set_front_back_color>
    4cec:	f24c8513          	add	a0,s9,-220 # 5f24 <font+0x2ac>
    4cf0:	007a8a93          	add	s5,s5,7
    4cf4:	ffffc097          	auipc	ra,0xffffc
    4cf8:	624080e7          	jalr	1572(ra) # 1318 <printf>
    4cfc:	e8cc0d93          	add	s11,s8,-372
    4d00:	00000493          	li	s1,0
    4d04:	128a2783          	lw	a5,296(s4)
    4d08:	08f4c463          	blt	s1,a5,4d90 <audio_menu+0x1c8>
    4d0c:	ffffc097          	auipc	ra,0xffffc
    4d10:	4a0080e7          	jalr	1184(ra) # 11ac <display_refresh>
    4d14:	0009a783          	lw	a5,0(s3)
    4d18:	0107f793          	and	a5,a5,16
    4d1c:	00078463          	beqz	a5,4d24 <audio_menu+0x15c>
    4d20:	00140413          	add	s0,s0,1
    4d24:	0009a783          	lw	a5,0(s3)
    4d28:	0087f793          	and	a5,a5,8
    4d2c:	00078463          	beqz	a5,4d34 <audio_menu+0x16c>
    4d30:	fff40413          	add	s0,s0,-1
    4d34:	128a2783          	lw	a5,296(s4)
    4d38:	08045c63          	bgez	s0,4dd0 <audio_menu+0x208>
    4d3c:	fff78413          	add	s0,a5,-1
    4d40:	0009a783          	lw	a5,0(s3)
    4d44:	0207f793          	and	a5,a5,32
    4d48:	08078a63          	beqz	a5,4ddc <audio_menu+0x214>
    4d4c:	03c12083          	lw	ra,60(sp)
    4d50:	03812403          	lw	s0,56(sp)
    4d54:	00100793          	li	a5,1
    4d58:	00fba023          	sw	a5,0(s7)
    4d5c:	03412483          	lw	s1,52(sp)
    4d60:	03012903          	lw	s2,48(sp)
    4d64:	02c12983          	lw	s3,44(sp)
    4d68:	02812a03          	lw	s4,40(sp)
    4d6c:	02412a83          	lw	s5,36(sp)
    4d70:	02012b03          	lw	s6,32(sp)
    4d74:	01c12b83          	lw	s7,28(sp)
    4d78:	01812c03          	lw	s8,24(sp)
    4d7c:	01412c83          	lw	s9,20(sp)
    4d80:	01012d03          	lw	s10,16(sp)
    4d84:	00c12d83          	lw	s11,12(sp)
    4d88:	04010113          	add	sp,sp,64
    4d8c:	00008067          	ret
    4d90:	02940a63          	beq	s0,s1,4dc4 <audio_menu+0x1fc>
    4d94:	0ff00513          	li	a0,255
    4d98:	00000593          	li	a1,0
    4d9c:	ffffc097          	auipc	ra,0xffffc
    4da0:	2b4080e7          	jalr	692(ra) # 1050 <display_set_front_back_color>
    4da4:	000d8613          	mv	a2,s11
    4da8:	00048593          	mv	a1,s1
    4dac:	ed8d0513          	add	a0,s10,-296 # 5ed8 <font+0x260>
    4db0:	ffffc097          	auipc	ra,0xffffc
    4db4:	568080e7          	jalr	1384(ra) # 1318 <printf>
    4db8:	00148493          	add	s1,s1,1
    4dbc:	017d8d93          	add	s11,s11,23
    4dc0:	f45ff06f          	j	4d04 <audio_menu+0x13c>
    4dc4:	00000513          	li	a0,0
    4dc8:	0ff00593          	li	a1,255
    4dcc:	fd1ff06f          	j	4d9c <audio_menu+0x1d4>
    4dd0:	f6f448e3          	blt	s0,a5,4d40 <audio_menu+0x178>
    4dd4:	00000413          	li	s0,0
    4dd8:	f69ff06f          	j	4d40 <audio_menu+0x178>
    4ddc:	0009a783          	lw	a5,0(s3)
    4de0:	0407f793          	and	a5,a5,64
    4de4:	ee0782e3          	beqz	a5,4cc8 <audio_menu+0x100>
    4de8:	00141593          	sll	a1,s0,0x1
    4dec:	008585b3          	add	a1,a1,s0
    4df0:	00359593          	sll	a1,a1,0x3
    4df4:	408585b3          	sub	a1,a1,s0
    4df8:	00bb05b3          	add	a1,s6,a1
    4dfc:	01600613          	li	a2,22
    4e00:	00090513          	mv	a0,s2
    4e04:	ffffc097          	auipc	ra,0xffffc
    4e08:	ff8080e7          	jalr	-8(ra) # dfc <strncpy>
    4e0c:	00090b23          	sb	zero,22(s2)
    4e10:	ffffc097          	auipc	ra,0xffffc
    4e14:	220080e7          	jalr	544(ra) # 1030 <display_framebuffer>
    4e18:	00004637          	lui	a2,0x4
    4e1c:	00000593          	li	a1,0
    4e20:	ffffc097          	auipc	ra,0xffffc
    4e24:	f3c080e7          	jalr	-196(ra) # d5c <memset>
    4e28:	03812403          	lw	s0,56(sp)
    4e2c:	03c12083          	lw	ra,60(sp)
    4e30:	03412483          	lw	s1,52(sp)
    4e34:	03012903          	lw	s2,48(sp)
    4e38:	02c12983          	lw	s3,44(sp)
    4e3c:	02812a03          	lw	s4,40(sp)
    4e40:	02412a83          	lw	s5,36(sp)
    4e44:	02012b03          	lw	s6,32(sp)
    4e48:	01c12b83          	lw	s7,28(sp)
    4e4c:	01812c03          	lw	s8,24(sp)
    4e50:	01412c83          	lw	s9,20(sp)
    4e54:	01012d03          	lw	s10,16(sp)
    4e58:	00c12d83          	lw	s11,12(sp)
    4e5c:	04010113          	add	sp,sp,64
    4e60:	ffffc317          	auipc	t1,0xffffc
    4e64:	34c30067          	jr	844(t1) # 11ac <display_refresh>

00004e68 <music_play>:
    4e68:	81010113          	add	sp,sp,-2032
    4e6c:	7e112623          	sw	ra,2028(sp)
    4e70:	7e812423          	sw	s0,2024(sp)
    4e74:	7e912223          	sw	s1,2020(sp)
    4e78:	7f212023          	sw	s2,2016(sp)
    4e7c:	7d312e23          	sw	s3,2012(sp)
    4e80:	7d412c23          	sw	s4,2008(sp)
    4e84:	7d512a23          	sw	s5,2004(sp)
    4e88:	7d612823          	sw	s6,2000(sp)
    4e8c:	7d712623          	sw	s7,1996(sp)
    4e90:	7d812423          	sw	s8,1992(sp)
    4e94:	7d912223          	sw	s9,1988(sp)
    4e98:	7da12023          	sw	s10,1984(sp)
    4e9c:	7bb12e23          	sw	s11,1980(sp)
    4ea0:	f3010113          	add	sp,sp,-208
    4ea4:	00050913          	mv	s2,a0
    4ea8:	00058413          	mv	s0,a1
    4eac:	ffffc097          	auipc	ra,0xffffc
    4eb0:	184080e7          	jalr	388(ra) # 1030 <display_framebuffer>
    4eb4:	00004637          	lui	a2,0x4
    4eb8:	00000593          	li	a1,0
    4ebc:	ffffc097          	auipc	ra,0xffffc
    4ec0:	ea0080e7          	jalr	-352(ra) # d5c <memset>
    4ec4:	00000593          	li	a1,0
    4ec8:	00000513          	li	a0,0
    4ecc:	ffffc097          	auipc	ra,0xffffc
    4ed0:	170080e7          	jalr	368(ra) # 103c <display_set_cursor>
    4ed4:	00000593          	li	a1,0
    4ed8:	07f00513          	li	a0,127
    4edc:	ffffc097          	auipc	ra,0xffffc
    4ee0:	174080e7          	jalr	372(ra) # 1050 <display_set_front_back_color>
    4ee4:	00006537          	lui	a0,0x6
    4ee8:	f4450513          	add	a0,a0,-188 # 5f44 <font+0x2cc>
    4eec:	ffffc097          	auipc	ra,0xffffc
    4ef0:	42c080e7          	jalr	1068(ra) # 1318 <printf>
    4ef4:	fffff4b7          	lui	s1,0xfffff
    4ef8:	000017b7          	lui	a5,0x1
    4efc:	78048493          	add	s1,s1,1920 # fffff780 <__stacktop+0xfffef780>
    4f00:	88078793          	add	a5,a5,-1920 # 880 <sdcard_start_sector+0x3c>
    4f04:	009787b3          	add	a5,a5,s1
    4f08:	002784b3          	add	s1,a5,sp
    4f0c:	00040593          	mv	a1,s0
    4f10:	00048513          	mv	a0,s1
    4f14:	ffffc097          	auipc	ra,0xffffc
    4f18:	f0c080e7          	jalr	-244(ra) # e20 <strcpy>
    4f1c:	000065b7          	lui	a1,0x6
    4f20:	f6458593          	add	a1,a1,-156 # 5f64 <font+0x2ec>
    4f24:	00048513          	mv	a0,s1
    4f28:	00191413          	sll	s0,s2,0x1
    4f2c:	ffffc097          	auipc	ra,0xffffc
    4f30:	f14080e7          	jalr	-236(ra) # e40 <strcat>
    4f34:	01240433          	add	s0,s0,s2
    4f38:	00341413          	sll	s0,s0,0x3
    4f3c:	000077b7          	lui	a5,0x7
    4f40:	f4478793          	add	a5,a5,-188 # 6f44 <Songs>
    4f44:	41240433          	sub	s0,s0,s2
    4f48:	00f40433          	add	s0,s0,a5
    4f4c:	00040593          	mv	a1,s0
    4f50:	00048513          	mv	a0,s1
    4f54:	ffffc097          	auipc	ra,0xffffc
    4f58:	eec080e7          	jalr	-276(ra) # e40 <strcat>
    4f5c:	000065b7          	lui	a1,0x6
    4f60:	f6858593          	add	a1,a1,-152 # 5f68 <font+0x2f0>
    4f64:	00048513          	mv	a0,s1
    4f68:	fffff097          	auipc	ra,0xfffff
    4f6c:	478080e7          	jalr	1144(ra) # 43e0 <fl_fopen>
    4f70:	04051e63          	bnez	a0,4fcc <music_play+0x164>
    4f74:	00006537          	lui	a0,0x6
    4f78:	f6c50513          	add	a0,a0,-148 # 5f6c <font+0x2f4>
    4f7c:	ffffc097          	auipc	ra,0xffffc
    4f80:	39c080e7          	jalr	924(ra) # 1318 <printf>
    4f84:	ffffc097          	auipc	ra,0xffffc
    4f88:	228080e7          	jalr	552(ra) # 11ac <display_refresh>
    4f8c:	0d010113          	add	sp,sp,208
    4f90:	7ec12083          	lw	ra,2028(sp)
    4f94:	7e812403          	lw	s0,2024(sp)
    4f98:	7e412483          	lw	s1,2020(sp)
    4f9c:	7e012903          	lw	s2,2016(sp)
    4fa0:	7dc12983          	lw	s3,2012(sp)
    4fa4:	7d812a03          	lw	s4,2008(sp)
    4fa8:	7d412a83          	lw	s5,2004(sp)
    4fac:	7d012b03          	lw	s6,2000(sp)
    4fb0:	7cc12b83          	lw	s7,1996(sp)
    4fb4:	7c812c03          	lw	s8,1992(sp)
    4fb8:	7c412c83          	lw	s9,1988(sp)
    4fbc:	7c012d03          	lw	s10,1984(sp)
    4fc0:	7bc12d83          	lw	s11,1980(sp)
    4fc4:	7f010113          	add	sp,sp,2032
    4fc8:	00008067          	ret
    4fcc:	0ff00593          	li	a1,255
    4fd0:	00050993          	mv	s3,a0
    4fd4:	00000513          	li	a0,0
    4fd8:	ffffc097          	auipc	ra,0xffffc
    4fdc:	078080e7          	jalr	120(ra) # 1050 <display_set_front_back_color>
    4fe0:	00006537          	lui	a0,0x6
    4fe4:	f8050513          	add	a0,a0,-128 # 5f80 <font+0x308>
    4fe8:	ffffc097          	auipc	ra,0xffffc
    4fec:	330080e7          	jalr	816(ra) # 1318 <printf>
    4ff0:	ffffc097          	auipc	ra,0xffffc
    4ff4:	1bc080e7          	jalr	444(ra) # 11ac <display_refresh>
    4ff8:	00000593          	li	a1,0
    4ffc:	0ff00513          	li	a0,255
    5000:	ffffc097          	auipc	ra,0xffffc
    5004:	050080e7          	jalr	80(ra) # 1050 <display_set_front_back_color>
    5008:	00006537          	lui	a0,0x6
    500c:	f9450513          	add	a0,a0,-108 # 5f94 <font+0x31c>
    5010:	ffffc097          	auipc	ra,0xffffc
    5014:	308080e7          	jalr	776(ra) # 1318 <printf>
    5018:	00040513          	mv	a0,s0
    501c:	ffffc097          	auipc	ra,0xffffc
    5020:	2fc080e7          	jalr	764(ra) # 1318 <printf>
    5024:	00006537          	lui	a0,0x6
    5028:	0d450513          	add	a0,a0,212 # 60d4 <font+0x45c>
    502c:	ffffc097          	auipc	ra,0xffffc
    5030:	2ec080e7          	jalr	748(ra) # 1318 <printf>
    5034:	ffffc097          	auipc	ra,0xffffc
    5038:	178080e7          	jalr	376(ra) # 11ac <display_refresh>
    503c:	00000097          	auipc	ra,0x0
    5040:	b14080e7          	jalr	-1260(ra) # 4b50 <clear_audio>
    5044:	000067b7          	lui	a5,0x6
    5048:	c607aa83          	lw	s5,-928(a5) # 5c60 <BUTTONS>
    504c:	000067b7          	lui	a5,0x6
    5050:	c587aa03          	lw	s4,-936(a5) # 5c58 <AUDIO>
    5054:	000067b7          	lui	a5,0x6
    5058:	c707a783          	lw	a5,-912(a5) # 5c70 <LEDS>
    505c:	0089ab83          	lw	s7,8(s3)
    5060:	00006b37          	lui	s6,0x6
    5064:	00000413          	li	s0,0
    5068:	c74b0b13          	add	s6,s6,-908 # 5c74 <CSWTCH.26>
    506c:	00078d93          	mv	s11,a5
    5070:	000aa483          	lw	s1,0(s5)
    5074:	0204f493          	and	s1,s1,32
    5078:	04049863          	bnez	s1,50c8 <music_play+0x260>
    507c:	000aa783          	lw	a5,0(s5)
    5080:	0087f793          	and	a5,a5,8
    5084:	04079e63          	bnez	a5,50e0 <music_play+0x278>
    5088:	000aa783          	lw	a5,0(s5)
    508c:	0107f793          	and	a5,a5,16
    5090:	0e078463          	beqz	a5,5178 <music_play+0x310>
    5094:	fff00793          	li	a5,-1
    5098:	0ef45663          	bge	s0,a5,5184 <music_play+0x31c>
    509c:	000a2c03          	lw	s8,0(s4)
    50a0:	408007b3          	neg	a5,s0
    50a4:	20000913          	li	s2,512
    50a8:	0089a683          	lw	a3,8(s3)
    50ac:	40f95933          	sra	s2,s2,a5
    50b0:	00491713          	sll	a4,s2,0x4
    50b4:	000b8793          	mv	a5,s7
    50b8:	00d77463          	bgeu	a4,a3,50c0 <music_play+0x258>
    50bc:	40e687b3          	sub	a5,a3,a4
    50c0:	00f9a423          	sw	a5,8(s3)
    50c4:	0300006f          	j	50f4 <music_play+0x28c>
    50c8:	00000097          	auipc	ra,0x0
    50cc:	a88080e7          	jalr	-1400(ra) # 4b50 <clear_audio>
    50d0:	00098513          	mv	a0,s3
    50d4:	fffff097          	auipc	ra,0xfffff
    50d8:	c64080e7          	jalr	-924(ra) # 3d38 <fl_fclose>
    50dc:	eb1ff06f          	j	4f8c <music_play+0x124>
    50e0:	00100793          	li	a5,1
    50e4:	0887d863          	bge	a5,s0,5174 <music_play+0x30c>
    50e8:	000a2c03          	lw	s8,0(s4)
    50ec:	20000913          	li	s2,512
    50f0:	00891933          	sll	s2,s2,s0
    50f4:	00098693          	mv	a3,s3
    50f8:	00090613          	mv	a2,s2
    50fc:	00100593          	li	a1,1
    5100:	08010513          	add	a0,sp,128
    5104:	fffff097          	auipc	ra,0xfffff
    5108:	d14080e7          	jalr	-748(ra) # 3e18 <fl_fread>
    510c:	fd2542e3          	blt	a0,s2,50d0 <music_play+0x268>
    5110:	41f45713          	sra	a4,s0,0x1f
    5114:	008747b3          	xor	a5,a4,s0
    5118:	40e787b3          	sub	a5,a5,a4
    511c:	00100c93          	li	s9,1
    5120:	00fc9cb3          	sll	s9,s9,a5
    5124:	06045463          	bgez	s0,518c <music_play+0x324>
    5128:	fff90913          	add	s2,s2,-1
    512c:	20000d13          	li	s10,512
    5130:	000c8593          	mv	a1,s9
    5134:	00048513          	mv	a0,s1
    5138:	ffffc097          	auipc	ra,0xffffc
    513c:	b70080e7          	jalr	-1168(ra) # ca8 <__divsi3>
    5140:	40a90533          	sub	a0,s2,a0
    5144:	00055463          	bgez	a0,514c <music_play+0x2e4>
    5148:	00000513          	li	a0,0
    514c:	000017b7          	lui	a5,0x1
    5150:	88078793          	add	a5,a5,-1920 # 880 <sdcard_start_sector+0x3c>
    5154:	00a787b3          	add	a5,a5,a0
    5158:	00278533          	add	a0,a5,sp
    515c:	80054703          	lbu	a4,-2048(a0)
    5160:	009c07b3          	add	a5,s8,s1
    5164:	00148493          	add	s1,s1,1
    5168:	00e78023          	sb	a4,0(a5)
    516c:	fda492e3          	bne	s1,s10,5130 <music_play+0x2c8>
    5170:	03c0006f          	j	51ac <music_play+0x344>
    5174:	00140413          	add	s0,s0,1
    5178:	000a2c03          	lw	s8,0(s4)
    517c:	f20442e3          	bltz	s0,50a0 <music_play+0x238>
    5180:	f6dff06f          	j	50ec <music_play+0x284>
    5184:	fff40413          	add	s0,s0,-1
    5188:	ff1ff06f          	j	5178 <music_play+0x310>
    518c:	08010793          	add	a5,sp,128
    5190:	20000713          	li	a4,512
    5194:	0007c603          	lbu	a2,0(a5)
    5198:	009c06b3          	add	a3,s8,s1
    519c:	00148493          	add	s1,s1,1
    51a0:	00c68023          	sb	a2,0(a3)
    51a4:	019787b3          	add	a5,a5,s9
    51a8:	fee496e3          	bne	s1,a4,5194 <music_play+0x32c>
    51ac:	000a2783          	lw	a5,0(s4)
    51b0:	fefc0ee3          	beq	s8,a5,51ac <music_play+0x344>
    51b4:	00240793          	add	a5,s0,2
    51b8:	00300693          	li	a3,3
    51bc:	1ff00713          	li	a4,511
    51c0:	00f6e663          	bltu	a3,a5,51cc <music_play+0x364>
    51c4:	016787b3          	add	a5,a5,s6
    51c8:	00078703          	lb	a4,0(a5)
    51cc:	00eda023          	sw	a4,0(s11)
    51d0:	ea1ff06f          	j	5070 <music_play+0x208>

000051d4 <Select_and_play_Song>:
    51d4:	e7010113          	add	sp,sp,-400
    51d8:	19212023          	sw	s2,384(sp)
    51dc:	00000593          	li	a1,0
    51e0:	00050913          	mv	s2,a0
    51e4:	00000513          	li	a0,0
    51e8:	18112623          	sw	ra,396(sp)
    51ec:	18912223          	sw	s1,388(sp)
    51f0:	18812423          	sw	s0,392(sp)
    51f4:	17312e23          	sw	s3,380(sp)
    51f8:	17412c23          	sw	s4,376(sp)
    51fc:	17512a23          	sw	s5,372(sp)
    5200:	17612823          	sw	s6,368(sp)
    5204:	17712623          	sw	s7,364(sp)
    5208:	ffffc097          	auipc	ra,0xffffc
    520c:	e34080e7          	jalr	-460(ra) # 103c <display_set_cursor>
    5210:	00000593          	li	a1,0
    5214:	0ff00513          	li	a0,255
    5218:	ffffc097          	auipc	ra,0xffffc
    521c:	e38080e7          	jalr	-456(ra) # 1050 <display_set_front_back_color>
    5220:	ffffc097          	auipc	ra,0xffffc
    5224:	f8c080e7          	jalr	-116(ra) # 11ac <display_refresh>
    5228:	00090593          	mv	a1,s2
    522c:	01010513          	add	a0,sp,16
    5230:	00010823          	sb	zero,16(sp)
    5234:	ffffc097          	auipc	ra,0xffffc
    5238:	c0c080e7          	jalr	-1012(ra) # e40 <strcat>
    523c:	000065b7          	lui	a1,0x6
    5240:	fa058593          	add	a1,a1,-96 # 5fa0 <font+0x328>
    5244:	01010513          	add	a0,sp,16
    5248:	ffffc097          	auipc	ra,0xffffc
    524c:	bf8080e7          	jalr	-1032(ra) # e40 <strcat>
    5250:	000065b7          	lui	a1,0x6
    5254:	fa858593          	add	a1,a1,-88 # 5fa8 <font+0x330>
    5258:	000064b7          	lui	s1,0x6
    525c:	03010513          	add	a0,sp,48
    5260:	1204a623          	sw	zero,300(s1) # 612c <NSongs>
    5264:	ffffc097          	auipc	ra,0xffffc
    5268:	bbc080e7          	jalr	-1092(ra) # e20 <strcpy>
    526c:	00090593          	mv	a1,s2
    5270:	03010513          	add	a0,sp,48
    5274:	ffffc097          	auipc	ra,0xffffc
    5278:	bcc080e7          	jalr	-1076(ra) # e40 <strcat>
    527c:	00410593          	add	a1,sp,4
    5280:	03010513          	add	a0,sp,48
    5284:	ffffe097          	auipc	ra,0xffffe
    5288:	b18080e7          	jalr	-1256(ra) # 2d9c <fl_opendir>
    528c:	02050463          	beqz	a0,52b4 <Select_and_play_Song+0xe0>
    5290:	00007437          	lui	s0,0x7
    5294:	00700993          	li	s3,7
    5298:	02e00a13          	li	s4,46
    529c:	f4440413          	add	s0,s0,-188 # 6f44 <Songs>
    52a0:	12c4a783          	lw	a5,300(s1)
    52a4:	0ef9dc63          	bge	s3,a5,539c <Select_and_play_Song+0x1c8>
    52a8:	00410513          	add	a0,sp,4
    52ac:	ffffc097          	auipc	ra,0xffffc
    52b0:	6cc080e7          	jalr	1740(ra) # 1978 <fl_closedir>
    52b4:	12c4a783          	lw	a5,300(s1)
    52b8:	00000413          	li	s0,0
    52bc:	14078a63          	beqz	a5,5410 <Select_and_play_Song+0x23c>
    52c0:	000067b7          	lui	a5,0x6
    52c4:	c607a983          	lw	s3,-928(a5) # 5c60 <BUTTONS>
    52c8:	00006a37          	lui	s4,0x6
    52cc:	00007ab7          	lui	s5,0x7
    52d0:	00006b37          	lui	s6,0x6
    52d4:	00000593          	li	a1,0
    52d8:	00000513          	li	a0,0
    52dc:	ffffc097          	auipc	ra,0xffffc
    52e0:	d60080e7          	jalr	-672(ra) # 103c <display_set_cursor>
    52e4:	00000593          	li	a1,0
    52e8:	07f00513          	li	a0,127
    52ec:	ffffc097          	auipc	ra,0xffffc
    52f0:	d64080e7          	jalr	-668(ra) # 1050 <display_set_front_back_color>
    52f4:	fd0a0513          	add	a0,s4,-48 # 5fd0 <font+0x358>
    52f8:	ffffc097          	auipc	ra,0xffffc
    52fc:	020080e7          	jalr	32(ra) # 1318 <printf>
    5300:	f44a8b93          	add	s7,s5,-188 # 6f44 <Songs>
    5304:	00000913          	li	s2,0
    5308:	12c4a783          	lw	a5,300(s1)
    530c:	14f94e63          	blt	s2,a5,5468 <Select_and_play_Song+0x294>
    5310:	ffffc097          	auipc	ra,0xffffc
    5314:	e9c080e7          	jalr	-356(ra) # 11ac <display_refresh>
    5318:	0009a783          	lw	a5,0(s3)
    531c:	0107f793          	and	a5,a5,16
    5320:	00078463          	beqz	a5,5328 <Select_and_play_Song+0x154>
    5324:	00140413          	add	s0,s0,1
    5328:	0009a783          	lw	a5,0(s3)
    532c:	0087f793          	and	a5,a5,8
    5330:	00078463          	beqz	a5,5338 <Select_and_play_Song+0x164>
    5334:	fff40413          	add	s0,s0,-1
    5338:	12c4a783          	lw	a5,300(s1)
    533c:	16045663          	bgez	s0,54a8 <Select_and_play_Song+0x2d4>
    5340:	fff78413          	add	s0,a5,-1
    5344:	0009a783          	lw	a5,0(s3)
    5348:	0207f793          	and	a5,a5,32
    534c:	16078463          	beqz	a5,54b4 <Select_and_play_Song+0x2e0>
    5350:	ffffc097          	auipc	ra,0xffffc
    5354:	ce0080e7          	jalr	-800(ra) # 1030 <display_framebuffer>
    5358:	00004637          	lui	a2,0x4
    535c:	00000593          	li	a1,0
    5360:	ffffc097          	auipc	ra,0xffffc
    5364:	9fc080e7          	jalr	-1540(ra) # d5c <memset>
    5368:	ffffc097          	auipc	ra,0xffffc
    536c:	e44080e7          	jalr	-444(ra) # 11ac <display_refresh>
    5370:	18c12083          	lw	ra,396(sp)
    5374:	18812403          	lw	s0,392(sp)
    5378:	18412483          	lw	s1,388(sp)
    537c:	18012903          	lw	s2,384(sp)
    5380:	17c12983          	lw	s3,380(sp)
    5384:	17812a03          	lw	s4,376(sp)
    5388:	17412a83          	lw	s5,372(sp)
    538c:	17012b03          	lw	s6,368(sp)
    5390:	16c12b83          	lw	s7,364(sp)
    5394:	19010113          	add	sp,sp,400
    5398:	00008067          	ret
    539c:	05010593          	add	a1,sp,80
    53a0:	00410513          	add	a0,sp,4
    53a4:	ffffe097          	auipc	ra,0xffffe
    53a8:	0ac080e7          	jalr	172(ra) # 3450 <fl_readdir>
    53ac:	ee051ee3          	bnez	a0,52a8 <Select_and_play_Song+0xd4>
    53b0:	05014783          	lbu	a5,80(sp)
    53b4:	ef4786e3          	beq	a5,s4,52a0 <Select_and_play_Song+0xcc>
    53b8:	15414783          	lbu	a5,340(sp)
    53bc:	ee0792e3          	bnez	a5,52a0 <Select_and_play_Song+0xcc>
    53c0:	12c4a703          	lw	a4,300(s1)
    53c4:	01600613          	li	a2,22
    53c8:	05010593          	add	a1,sp,80
    53cc:	00171793          	sll	a5,a4,0x1
    53d0:	00e787b3          	add	a5,a5,a4
    53d4:	00379793          	sll	a5,a5,0x3
    53d8:	40e787b3          	sub	a5,a5,a4
    53dc:	00f40533          	add	a0,s0,a5
    53e0:	ffffc097          	auipc	ra,0xffffc
    53e4:	a1c080e7          	jalr	-1508(ra) # dfc <strncpy>
    53e8:	12c4a703          	lw	a4,300(s1)
    53ec:	00171793          	sll	a5,a4,0x1
    53f0:	00e787b3          	add	a5,a5,a4
    53f4:	00379793          	sll	a5,a5,0x3
    53f8:	40e787b3          	sub	a5,a5,a4
    53fc:	00f407b3          	add	a5,s0,a5
    5400:	00170713          	add	a4,a4,1
    5404:	00078b23          	sb	zero,22(a5)
    5408:	12e4a623          	sw	a4,300(s1)
    540c:	e95ff06f          	j	52a0 <Select_and_play_Song+0xcc>
    5410:	00000593          	li	a1,0
    5414:	00000513          	li	a0,0
    5418:	ffffc097          	auipc	ra,0xffffc
    541c:	c24080e7          	jalr	-988(ra) # 103c <display_set_cursor>
    5420:	00000593          	li	a1,0
    5424:	0ff00513          	li	a0,255
    5428:	ffffc097          	auipc	ra,0xffffc
    542c:	c28080e7          	jalr	-984(ra) # 1050 <display_set_front_back_color>
    5430:	00006537          	lui	a0,0x6
    5434:	fb050513          	add	a0,a0,-80 # 5fb0 <font+0x338>
    5438:	ffffc097          	auipc	ra,0xffffc
    543c:	ee0080e7          	jalr	-288(ra) # 1318 <printf>
    5440:	00090513          	mv	a0,s2
    5444:	ffffc097          	auipc	ra,0xffffc
    5448:	ed4080e7          	jalr	-300(ra) # 1318 <printf>
    544c:	00006537          	lui	a0,0x6
    5450:	fc450513          	add	a0,a0,-60 # 5fc4 <font+0x34c>
    5454:	ffffc097          	auipc	ra,0xffffc
    5458:	ec4080e7          	jalr	-316(ra) # 1318 <printf>
    545c:	ffffc097          	auipc	ra,0xffffc
    5460:	d50080e7          	jalr	-688(ra) # 11ac <display_refresh>
    5464:	0000006f          	j	5464 <Select_and_play_Song+0x290>
    5468:	03240a63          	beq	s0,s2,549c <Select_and_play_Song+0x2c8>
    546c:	0ff00513          	li	a0,255
    5470:	00000593          	li	a1,0
    5474:	ffffc097          	auipc	ra,0xffffc
    5478:	bdc080e7          	jalr	-1060(ra) # 1050 <display_set_front_back_color>
    547c:	000b8613          	mv	a2,s7
    5480:	00090593          	mv	a1,s2
    5484:	ed8b0513          	add	a0,s6,-296 # 5ed8 <font+0x260>
    5488:	ffffc097          	auipc	ra,0xffffc
    548c:	e90080e7          	jalr	-368(ra) # 1318 <printf>
    5490:	00190913          	add	s2,s2,1
    5494:	017b8b93          	add	s7,s7,23
    5498:	e71ff06f          	j	5308 <Select_and_play_Song+0x134>
    549c:	00000513          	li	a0,0
    54a0:	0ff00593          	li	a1,255
    54a4:	fd1ff06f          	j	5474 <Select_and_play_Song+0x2a0>
    54a8:	e8f44ee3          	blt	s0,a5,5344 <Select_and_play_Song+0x170>
    54ac:	00000413          	li	s0,0
    54b0:	e95ff06f          	j	5344 <Select_and_play_Song+0x170>
    54b4:	0009a783          	lw	a5,0(s3)
    54b8:	0407f793          	and	a5,a5,64
    54bc:	e0078ce3          	beqz	a5,52d4 <Select_and_play_Song+0x100>
    54c0:	ffffc097          	auipc	ra,0xffffc
    54c4:	b70080e7          	jalr	-1168(ra) # 1030 <display_framebuffer>
    54c8:	00004637          	lui	a2,0x4
    54cc:	00000593          	li	a1,0
    54d0:	ffffc097          	auipc	ra,0xffffc
    54d4:	88c080e7          	jalr	-1908(ra) # d5c <memset>
    54d8:	ffffc097          	auipc	ra,0xffffc
    54dc:	cd4080e7          	jalr	-812(ra) # 11ac <display_refresh>
    54e0:	03010593          	add	a1,sp,48
    54e4:	00040513          	mv	a0,s0
    54e8:	00000097          	auipc	ra,0x0
    54ec:	980080e7          	jalr	-1664(ra) # 4e68 <music_play>
    54f0:	ffffc097          	auipc	ra,0xffffc
    54f4:	b40080e7          	jalr	-1216(ra) # 1030 <display_framebuffer>
    54f8:	00004637          	lui	a2,0x4
    54fc:	00000593          	li	a1,0
    5500:	ffffc097          	auipc	ra,0xffffc
    5504:	85c080e7          	jalr	-1956(ra) # d5c <memset>
    5508:	ffffc097          	auipc	ra,0xffffc
    550c:	ca4080e7          	jalr	-860(ra) # 11ac <display_refresh>
    5510:	dc5ff06f          	j	52d4 <Select_and_play_Song+0x100>

00005514 <print_time_seconds>:
    5514:	0000c5b7          	lui	a1,0xc
    5518:	ff010113          	add	sp,sp,-16
    551c:	35058593          	add	a1,a1,848 # c350 <Songs+0x540c>
    5520:	00112623          	sw	ra,12(sp)
    5524:	00812423          	sw	s0,8(sp)
    5528:	00912223          	sw	s1,4(sp)
    552c:	00050493          	mv	s1,a0
    5530:	ffffb097          	auipc	ra,0xffffb
    5534:	780080e7          	jalr	1920(ra) # cb0 <__udivsi3>
    5538:	3e800593          	li	a1,1000
    553c:	ffffb097          	auipc	ra,0xffffb
    5540:	7bc080e7          	jalr	1980(ra) # cf8 <__umodsi3>
    5544:	02faf5b7          	lui	a1,0x2faf
    5548:	00050413          	mv	s0,a0
    554c:	08058593          	add	a1,a1,128 # 2faf080 <__stacktop+0x2f9f080>
    5550:	00048513          	mv	a0,s1
    5554:	ffffb097          	auipc	ra,0xffffb
    5558:	75c080e7          	jalr	1884(ra) # cb0 <__udivsi3>
    555c:	00050593          	mv	a1,a0
    5560:	00006537          	lui	a0,0x6
    5564:	ff050513          	add	a0,a0,-16 # 5ff0 <font+0x378>
    5568:	ffffc097          	auipc	ra,0xffffc
    556c:	db0080e7          	jalr	-592(ra) # 1318 <printf>
    5570:	06400593          	li	a1,100
    5574:	00040513          	mv	a0,s0
    5578:	ffffb097          	auipc	ra,0xffffb
    557c:	738080e7          	jalr	1848(ra) # cb0 <__udivsi3>
    5580:	000064b7          	lui	s1,0x6
    5584:	1044a783          	lw	a5,260(s1) # 6104 <f_putchar>
    5588:	03050513          	add	a0,a0,48
    558c:	000780e7          	jalr	a5
    5590:	00a00593          	li	a1,10
    5594:	00040513          	mv	a0,s0
    5598:	ffffb097          	auipc	ra,0xffffb
    559c:	718080e7          	jalr	1816(ra) # cb0 <__udivsi3>
    55a0:	00a00593          	li	a1,10
    55a4:	ffffb097          	auipc	ra,0xffffb
    55a8:	754080e7          	jalr	1876(ra) # cf8 <__umodsi3>
    55ac:	1044a783          	lw	a5,260(s1)
    55b0:	03050513          	add	a0,a0,48
    55b4:	000780e7          	jalr	a5
    55b8:	00a00593          	li	a1,10
    55bc:	00040513          	mv	a0,s0
    55c0:	ffffb097          	auipc	ra,0xffffb
    55c4:	738080e7          	jalr	1848(ra) # cf8 <__umodsi3>
    55c8:	1044a783          	lw	a5,260(s1)
    55cc:	03050513          	add	a0,a0,48
    55d0:	000780e7          	jalr	a5
    55d4:	00812403          	lw	s0,8(sp)
    55d8:	00c12083          	lw	ra,12(sp)
    55dc:	00412483          	lw	s1,4(sp)
    55e0:	00006537          	lui	a0,0x6
    55e4:	ff450513          	add	a0,a0,-12 # 5ff4 <font+0x37c>
    55e8:	01010113          	add	sp,sp,16
    55ec:	ffffc317          	auipc	t1,0xffffc
    55f0:	d2c30067          	jr	-724(t1) # 1318 <printf>

000055f4 <set_px>:
    55f4:	00b56733          	or	a4,a0,a1
    55f8:	07f00793          	li	a5,127
    55fc:	04e7ea63          	bltu	a5,a4,5650 <set_px+0x5c>
    5600:	ff010113          	add	sp,sp,-16
    5604:	00812423          	sw	s0,8(sp)
    5608:	00050413          	mv	s0,a0
    560c:	00912223          	sw	s1,4(sp)
    5610:	01212023          	sw	s2,0(sp)
    5614:	00112623          	sw	ra,12(sp)
    5618:	00058493          	mv	s1,a1
    561c:	00060913          	mv	s2,a2
    5620:	00741413          	sll	s0,s0,0x7
    5624:	ffffc097          	auipc	ra,0xffffc
    5628:	a0c080e7          	jalr	-1524(ra) # 1030 <display_framebuffer>
    562c:	009405b3          	add	a1,s0,s1
    5630:	00b50533          	add	a0,a0,a1
    5634:	01250023          	sb	s2,0(a0)
    5638:	00c12083          	lw	ra,12(sp)
    563c:	00812403          	lw	s0,8(sp)
    5640:	00412483          	lw	s1,4(sp)
    5644:	00012903          	lw	s2,0(sp)
    5648:	01010113          	add	sp,sp,16
    564c:	00008067          	ret
    5650:	00008067          	ret

00005654 <wait_for_button_release.constprop.0>:
    5654:	000067b7          	lui	a5,0x6
    5658:	c607a703          	lw	a4,-928(a5) # 5c60 <BUTTONS>
    565c:	00072783          	lw	a5,0(a4)
    5660:	0407f793          	and	a5,a5,64
    5664:	fe079ce3          	bnez	a5,565c <wait_for_button_release.constprop.0+0x8>
    5668:	00008067          	ret

0000566c <draw_circle>:
    566c:	fb010113          	add	sp,sp,-80
    5670:	04812423          	sw	s0,72(sp)
    5674:	03312e23          	sw	s3,60(sp)
    5678:	03412c23          	sw	s4,56(sp)
    567c:	03612823          	sw	s6,48(sp)
    5680:	01b12e23          	sw	s11,28(sp)
    5684:	04112623          	sw	ra,76(sp)
    5688:	04912223          	sw	s1,68(sp)
    568c:	05212023          	sw	s2,64(sp)
    5690:	03512a23          	sw	s5,52(sp)
    5694:	03712623          	sw	s7,44(sp)
    5698:	03812423          	sw	s8,40(sp)
    569c:	03912223          	sw	s9,36(sp)
    56a0:	03a12023          	sw	s10,32(sp)
    56a4:	00050993          	mv	s3,a0
    56a8:	00058a13          	mv	s4,a1
    56ac:	00060d93          	mv	s11,a2
    56b0:	00068413          	mv	s0,a3
    56b4:	00000b13          	li	s6,0
    56b8:	05bb4063          	blt	s6,s11,56f8 <draw_circle+0x8c>
    56bc:	04c12083          	lw	ra,76(sp)
    56c0:	04812403          	lw	s0,72(sp)
    56c4:	04412483          	lw	s1,68(sp)
    56c8:	04012903          	lw	s2,64(sp)
    56cc:	03c12983          	lw	s3,60(sp)
    56d0:	03812a03          	lw	s4,56(sp)
    56d4:	03412a83          	lw	s5,52(sp)
    56d8:	03012b03          	lw	s6,48(sp)
    56dc:	02c12b83          	lw	s7,44(sp)
    56e0:	02812c03          	lw	s8,40(sp)
    56e4:	02412c83          	lw	s9,36(sp)
    56e8:	02012d03          	lw	s10,32(sp)
    56ec:	01c12d83          	lw	s11,28(sp)
    56f0:	05010113          	add	sp,sp,80
    56f4:	00008067          	ret
    56f8:	000b0913          	mv	s2,s6
    56fc:	00000a93          	li	s5,0
    5700:	00000493          	li	s1,0
    5704:	01448c33          	add	s8,s1,s4
    5708:	01298bb3          	add	s7,s3,s2
    570c:	000c0593          	mv	a1,s8
    5710:	00040613          	mv	a2,s0
    5714:	000b8513          	mv	a0,s7
    5718:	00000097          	auipc	ra,0x0
    571c:	edc080e7          	jalr	-292(ra) # 55f4 <set_px>
    5720:	01348cb3          	add	s9,s1,s3
    5724:	012a05b3          	add	a1,s4,s2
    5728:	00040613          	mv	a2,s0
    572c:	000c8513          	mv	a0,s9
    5730:	00b12623          	sw	a1,12(sp)
    5734:	00000097          	auipc	ra,0x0
    5738:	ec0080e7          	jalr	-320(ra) # 55f4 <set_px>
    573c:	00c12583          	lw	a1,12(sp)
    5740:	40998d33          	sub	s10,s3,s1
    5744:	00040613          	mv	a2,s0
    5748:	000d0513          	mv	a0,s10
    574c:	00000097          	auipc	ra,0x0
    5750:	ea8080e7          	jalr	-344(ra) # 55f4 <set_px>
    5754:	41298533          	sub	a0,s3,s2
    5758:	000c0593          	mv	a1,s8
    575c:	00040613          	mv	a2,s0
    5760:	00a12623          	sw	a0,12(sp)
    5764:	00000097          	auipc	ra,0x0
    5768:	e90080e7          	jalr	-368(ra) # 55f4 <set_px>
    576c:	00c12503          	lw	a0,12(sp)
    5770:	409a0c33          	sub	s8,s4,s1
    5774:	00040613          	mv	a2,s0
    5778:	000c0593          	mv	a1,s8
    577c:	00000097          	auipc	ra,0x0
    5780:	e78080e7          	jalr	-392(ra) # 55f4 <set_px>
    5784:	412a05b3          	sub	a1,s4,s2
    5788:	00040613          	mv	a2,s0
    578c:	000d0513          	mv	a0,s10
    5790:	00b12623          	sw	a1,12(sp)
    5794:	00000097          	auipc	ra,0x0
    5798:	e60080e7          	jalr	-416(ra) # 55f4 <set_px>
    579c:	00c12583          	lw	a1,12(sp)
    57a0:	00040613          	mv	a2,s0
    57a4:	000c8513          	mv	a0,s9
    57a8:	00000097          	auipc	ra,0x0
    57ac:	e4c080e7          	jalr	-436(ra) # 55f4 <set_px>
    57b0:	00040613          	mv	a2,s0
    57b4:	000c0593          	mv	a1,s8
    57b8:	000b8513          	mv	a0,s7
    57bc:	00000097          	auipc	ra,0x0
    57c0:	e38080e7          	jalr	-456(ra) # 55f4 <set_px>
    57c4:	00148493          	add	s1,s1,1
    57c8:	01504e63          	bgtz	s5,57e4 <draw_circle+0x178>
    57cc:	00149793          	sll	a5,s1,0x1
    57d0:	00178793          	add	a5,a5,1
    57d4:	00fa8ab3          	add	s5,s5,a5
    57d8:	f29956e3          	bge	s2,s1,5704 <draw_circle+0x98>
    57dc:	001b0b13          	add	s6,s6,1
    57e0:	ed9ff06f          	j	56b8 <draw_circle+0x4c>
    57e4:	fff90913          	add	s2,s2,-1
    57e8:	00191793          	sll	a5,s2,0x1
    57ec:	00178793          	add	a5,a5,1
    57f0:	40fa8ab3          	sub	s5,s5,a5
    57f4:	fe5ff06f          	j	57d8 <draw_circle+0x16c>

000057f8 <F1>:
    57f8:	fc010113          	add	sp,sp,-64
    57fc:	01712e23          	sw	s7,28(sp)
    5800:	00b00793          	li	a5,11
    5804:	00006bb7          	lui	s7,0x6
    5808:	03312623          	sw	s3,44(sp)
    580c:	12fbaa23          	sw	a5,308(s7) # 6134 <space>
    5810:	000069b7          	lui	s3,0x6
    5814:	01400793          	li	a5,20
    5818:	12f9ac23          	sw	a5,312(s3) # 6138 <center_x>
    581c:	02112e23          	sw	ra,60(sp)
    5820:	03512223          	sw	s5,36(sp)
    5824:	02812c23          	sw	s0,56(sp)
    5828:	02912a23          	sw	s1,52(sp)
    582c:	03212823          	sw	s2,48(sp)
    5830:	03412423          	sw	s4,40(sp)
    5834:	03612023          	sw	s6,32(sp)
    5838:	01812c23          	sw	s8,24(sp)
    583c:	01912a23          	sw	s9,20(sp)
    5840:	ffffb097          	auipc	ra,0xffffb
    5844:	7f0080e7          	jalr	2032(ra) # 1030 <display_framebuffer>
    5848:	00004637          	lui	a2,0x4
    584c:	00000593          	li	a1,0
    5850:	ffffb097          	auipc	ra,0xffffb
    5854:	50c080e7          	jalr	1292(ra) # d5c <memset>
    5858:	00000593          	li	a1,0
    585c:	00000513          	li	a0,0
    5860:	ffffb097          	auipc	ra,0xffffb
    5864:	7dc080e7          	jalr	2012(ra) # 103c <display_set_cursor>
    5868:	00000593          	li	a1,0
    586c:	07f00513          	li	a0,127
    5870:	ffffb097          	auipc	ra,0xffffb
    5874:	7e0080e7          	jalr	2016(ra) # 1050 <display_set_front_back_color>
    5878:	00006537          	lui	a0,0x6
    587c:	ff850513          	add	a0,a0,-8 # 5ff8 <font+0x380>
    5880:	ffffc097          	auipc	ra,0xffffc
    5884:	a98080e7          	jalr	-1384(ra) # 1318 <printf>
    5888:	00006537          	lui	a0,0x6
    588c:	02c50513          	add	a0,a0,44 # 602c <font+0x3b4>
    5890:	ffffc097          	auipc	ra,0xffffc
    5894:	a88080e7          	jalr	-1400(ra) # 1318 <printf>
    5898:	00006537          	lui	a0,0x6
    589c:	04850513          	add	a0,a0,72 # 6048 <font+0x3d0>
    58a0:	ffffc097          	auipc	ra,0xffffc
    58a4:	a78080e7          	jalr	-1416(ra) # 1318 <printf>
    58a8:	ffffc097          	auipc	ra,0xffffc
    58ac:	904080e7          	jalr	-1788(ra) # 11ac <display_refresh>
    58b0:	000067b7          	lui	a5,0x6
    58b4:	c607aa83          	lw	s5,-928(a5) # 5c60 <BUTTONS>
    58b8:	000aa783          	lw	a5,0(s5)
    58bc:	0407f793          	and	a5,a5,64
    58c0:	fe078ce3          	beqz	a5,58b8 <F1+0xc0>
    58c4:	00000097          	auipc	ra,0x0
    58c8:	d90080e7          	jalr	-624(ra) # 5654 <wait_for_button_release.constprop.0>
    58cc:	c00026f3          	rdcycle	a3
    58d0:	000187b7          	lui	a5,0x18
    58d4:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    58d8:	c0002773          	rdcycle	a4
    58dc:	40d70733          	sub	a4,a4,a3
    58e0:	fee7fce3          	bgeu	a5,a4,58d8 <F1+0xe0>
    58e4:	00006437          	lui	s0,0x6
    58e8:	00010913          	mv	s2,sp
    58ec:	02fafb37          	lui	s6,0x2faf
    58f0:	12042823          	sw	zero,304(s0) # 6130 <timer>
    58f4:	00090493          	mv	s1,s2
    58f8:	07fb0b13          	add	s6,s6,127 # 2faf07f <__stacktop+0x2f9f07f>
    58fc:	c0002773          	rdcycle	a4
    5900:	c00027f3          	rdcycle	a5
    5904:	40e787b3          	sub	a5,a5,a4
    5908:	fefb7ce3          	bgeu	s6,a5,5900 <F1+0x108>
    590c:	1389ac03          	lw	s8,312(s3)
    5910:	00000097          	auipc	ra,0x0
    5914:	d44080e7          	jalr	-700(ra) # 5654 <wait_for_button_release.constprop.0>
    5918:	0ff00693          	li	a3,255
    591c:	00900613          	li	a2,9
    5920:	04000593          	li	a1,64
    5924:	000c0513          	mv	a0,s8
    5928:	00000097          	auipc	ra,0x0
    592c:	d44080e7          	jalr	-700(ra) # 566c <draw_circle>
    5930:	ffffc097          	auipc	ra,0xffffc
    5934:	87c080e7          	jalr	-1924(ra) # 11ac <display_refresh>
    5938:	c0002cf3          	rdcycle	s9
    593c:	000aa783          	lw	a5,0(s5)
    5940:	0407f793          	and	a5,a5,64
    5944:	fe078ce3          	beqz	a5,593c <F1+0x144>
    5948:	c0002a73          	rdcycle	s4
    594c:	00000693          	li	a3,0
    5950:	00900613          	li	a2,9
    5954:	04000593          	li	a1,64
    5958:	000c0513          	mv	a0,s8
    595c:	00000097          	auipc	ra,0x0
    5960:	d10080e7          	jalr	-752(ra) # 566c <draw_circle>
    5964:	ffffc097          	auipc	ra,0xffffc
    5968:	848080e7          	jalr	-1976(ra) # 11ac <display_refresh>
    596c:	00000097          	auipc	ra,0x0
    5970:	ce8080e7          	jalr	-792(ra) # 5654 <wait_for_button_release.constprop.0>
    5974:	13042703          	lw	a4,304(s0)
    5978:	419a07b3          	sub	a5,s4,s9
    597c:	00f4a023          	sw	a5,0(s1)
    5980:	00f707b3          	add	a5,a4,a5
    5984:	12f42823          	sw	a5,304(s0)
    5988:	134ba783          	lw	a5,308(s7)
    598c:	1389a703          	lw	a4,312(s3)
    5990:	00448493          	add	s1,s1,4
    5994:	01278793          	add	a5,a5,18
    5998:	00e787b3          	add	a5,a5,a4
    599c:	12f9ac23          	sw	a5,312(s3)
    59a0:	01010793          	add	a5,sp,16
    59a4:	f4f49ce3          	bne	s1,a5,58fc <F1+0x104>
    59a8:	ffffb097          	auipc	ra,0xffffb
    59ac:	688080e7          	jalr	1672(ra) # 1030 <display_framebuffer>
    59b0:	00004637          	lui	a2,0x4
    59b4:	00000593          	li	a1,0
    59b8:	ffffb097          	auipc	ra,0xffffb
    59bc:	3a4080e7          	jalr	932(ra) # d5c <memset>
    59c0:	00000593          	li	a1,0
    59c4:	00000513          	li	a0,0
    59c8:	ffffb097          	auipc	ra,0xffffb
    59cc:	674080e7          	jalr	1652(ra) # 103c <display_set_cursor>
    59d0:	00000593          	li	a1,0
    59d4:	0ff00513          	li	a0,255
    59d8:	ffffb097          	auipc	ra,0xffffb
    59dc:	678080e7          	jalr	1656(ra) # 1050 <display_set_front_back_color>
    59e0:	00006537          	lui	a0,0x6
    59e4:	08050513          	add	a0,a0,128 # 6080 <font+0x408>
    59e8:	ffffc097          	auipc	ra,0xffffc
    59ec:	930080e7          	jalr	-1744(ra) # 1318 <printf>
    59f0:	00000493          	li	s1,0
    59f4:	00006b37          	lui	s6,0x6
    59f8:	000069b7          	lui	s3,0x6
    59fc:	00400a13          	li	s4,4
    5a00:	00148493          	add	s1,s1,1
    5a04:	00048593          	mv	a1,s1
    5a08:	094b0513          	add	a0,s6,148 # 6094 <font+0x41c>
    5a0c:	ffffc097          	auipc	ra,0xffffc
    5a10:	90c080e7          	jalr	-1780(ra) # 1318 <printf>
    5a14:	00092503          	lw	a0,0(s2)
    5a18:	00490913          	add	s2,s2,4
    5a1c:	00000097          	auipc	ra,0x0
    5a20:	af8080e7          	jalr	-1288(ra) # 5514 <print_time_seconds>
    5a24:	0d498513          	add	a0,s3,212 # 60d4 <font+0x45c>
    5a28:	ffffc097          	auipc	ra,0xffffc
    5a2c:	8f0080e7          	jalr	-1808(ra) # 1318 <printf>
    5a30:	fd4498e3          	bne	s1,s4,5a00 <F1+0x208>
    5a34:	00006537          	lui	a0,0x6
    5a38:	09c50513          	add	a0,a0,156 # 609c <font+0x424>
    5a3c:	ffffc097          	auipc	ra,0xffffc
    5a40:	8dc080e7          	jalr	-1828(ra) # 1318 <printf>
    5a44:	13042503          	lw	a0,304(s0)
    5a48:	00255513          	srl	a0,a0,0x2
    5a4c:	00000097          	auipc	ra,0x0
    5a50:	ac8080e7          	jalr	-1336(ra) # 5514 <print_time_seconds>
    5a54:	0d498513          	add	a0,s3,212
    5a58:	ffffc097          	auipc	ra,0xffffc
    5a5c:	8c0080e7          	jalr	-1856(ra) # 1318 <printf>
    5a60:	00006537          	lui	a0,0x6
    5a64:	0a850513          	add	a0,a0,168 # 60a8 <font+0x430>
    5a68:	ffffc097          	auipc	ra,0xffffc
    5a6c:	8b0080e7          	jalr	-1872(ra) # 1318 <printf>
    5a70:	ffffb097          	auipc	ra,0xffffb
    5a74:	73c080e7          	jalr	1852(ra) # 11ac <display_refresh>
    5a78:	000aa783          	lw	a5,0(s5)
    5a7c:	0407f793          	and	a5,a5,64
    5a80:	fe078ce3          	beqz	a5,5a78 <F1+0x280>
    5a84:	ffffb097          	auipc	ra,0xffffb
    5a88:	5ac080e7          	jalr	1452(ra) # 1030 <display_framebuffer>
    5a8c:	03812403          	lw	s0,56(sp)
    5a90:	03c12083          	lw	ra,60(sp)
    5a94:	03412483          	lw	s1,52(sp)
    5a98:	03012903          	lw	s2,48(sp)
    5a9c:	02c12983          	lw	s3,44(sp)
    5aa0:	02812a03          	lw	s4,40(sp)
    5aa4:	02412a83          	lw	s5,36(sp)
    5aa8:	02012b03          	lw	s6,32(sp)
    5aac:	01c12b83          	lw	s7,28(sp)
    5ab0:	01812c03          	lw	s8,24(sp)
    5ab4:	01412c83          	lw	s9,20(sp)
    5ab8:	00004637          	lui	a2,0x4
    5abc:	00000593          	li	a1,0
    5ac0:	04010113          	add	sp,sp,64
    5ac4:	ffffb317          	auipc	t1,0xffffb
    5ac8:	29830067          	jr	664(t1) # d5c <memset>

00005acc <Game_menu>:
    5acc:	fd010113          	add	sp,sp,-48
    5ad0:	000067b7          	lui	a5,0x6
    5ad4:	02912223          	sw	s1,36(sp)
    5ad8:	c607a483          	lw	s1,-928(a5) # 5c60 <BUTTONS>
    5adc:	02812423          	sw	s0,40(sp)
    5ae0:	03212023          	sw	s2,32(sp)
    5ae4:	01312e23          	sw	s3,28(sp)
    5ae8:	01412c23          	sw	s4,24(sp)
    5aec:	01512a23          	sw	s5,20(sp)
    5af0:	01612823          	sw	s6,16(sp)
    5af4:	01712623          	sw	s7,12(sp)
    5af8:	02112623          	sw	ra,44(sp)
    5afc:	00000413          	li	s0,0
    5b00:	00000913          	li	s2,0
    5b04:	00006ab7          	lui	s5,0x6
    5b08:	00006b37          	lui	s6,0x6
    5b0c:	000069b7          	lui	s3,0x6
    5b10:	00100a13          	li	s4,1
    5b14:	00006bb7          	lui	s7,0x6
    5b18:	00000593          	li	a1,0
    5b1c:	00000513          	li	a0,0
    5b20:	ffffb097          	auipc	ra,0xffffb
    5b24:	51c080e7          	jalr	1308(ra) # 103c <display_set_cursor>
    5b28:	0ff97593          	zext.b	a1,s2
    5b2c:	07f58513          	add	a0,a1,127
    5b30:	0ff57513          	zext.b	a0,a0
    5b34:	ffffb097          	auipc	ra,0xffffb
    5b38:	51c080e7          	jalr	1308(ra) # 1050 <display_set_front_back_color>
    5b3c:	0bca8513          	add	a0,s5,188 # 60bc <font+0x444>
    5b40:	00790913          	add	s2,s2,7
    5b44:	ffffb097          	auipc	ra,0xffffb
    5b48:	7d4080e7          	jalr	2004(ra) # 1318 <printf>
    5b4c:	0a041663          	bnez	s0,5bf8 <Game_menu+0x12c>
    5b50:	00000513          	li	a0,0
    5b54:	0ff00593          	li	a1,255
    5b58:	ffffb097          	auipc	ra,0xffffb
    5b5c:	4f8080e7          	jalr	1272(ra) # 1050 <display_set_front_back_color>
    5b60:	0d8b0613          	add	a2,s6,216 # 60d8 <font+0x460>
    5b64:	00000593          	li	a1,0
    5b68:	ed898513          	add	a0,s3,-296 # 5ed8 <font+0x260>
    5b6c:	ffffb097          	auipc	ra,0xffffb
    5b70:	7ac080e7          	jalr	1964(ra) # 1318 <printf>
    5b74:	09441863          	bne	s0,s4,5c04 <Game_menu+0x138>
    5b78:	00000513          	li	a0,0
    5b7c:	0ff00593          	li	a1,255
    5b80:	ffffb097          	auipc	ra,0xffffb
    5b84:	4d0080e7          	jalr	1232(ra) # 1050 <display_set_front_back_color>
    5b88:	0dcb8613          	add	a2,s7,220 # 60dc <font+0x464>
    5b8c:	00100593          	li	a1,1
    5b90:	ed898513          	add	a0,s3,-296
    5b94:	ffffb097          	auipc	ra,0xffffb
    5b98:	784080e7          	jalr	1924(ra) # 1318 <printf>
    5b9c:	ffffb097          	auipc	ra,0xffffb
    5ba0:	610080e7          	jalr	1552(ra) # 11ac <display_refresh>
    5ba4:	0004a783          	lw	a5,0(s1)
    5ba8:	0107f793          	and	a5,a5,16
    5bac:	06079263          	bnez	a5,5c10 <Game_menu+0x144>
    5bb0:	0004a783          	lw	a5,0(s1)
    5bb4:	0087f793          	and	a5,a5,8
    5bb8:	06079863          	bnez	a5,5c28 <Game_menu+0x15c>
    5bbc:	0004a783          	lw	a5,0(s1)
    5bc0:	0207f793          	and	a5,a5,32
    5bc4:	f4078ae3          	beqz	a5,5b18 <Game_menu+0x4c>
    5bc8:	ffffb097          	auipc	ra,0xffffb
    5bcc:	468080e7          	jalr	1128(ra) # 1030 <display_framebuffer>
    5bd0:	00004637          	lui	a2,0x4
    5bd4:	00000593          	li	a1,0
    5bd8:	ffffb097          	auipc	ra,0xffffb
    5bdc:	184080e7          	jalr	388(ra) # d5c <memset>
    5be0:	ffffb097          	auipc	ra,0xffffb
    5be4:	5cc080e7          	jalr	1484(ra) # 11ac <display_refresh>
    5be8:	f20418e3          	bnez	s0,5b18 <Game_menu+0x4c>
    5bec:	00000097          	auipc	ra,0x0
    5bf0:	c0c080e7          	jalr	-1012(ra) # 57f8 <F1>
    5bf4:	f25ff06f          	j	5b18 <Game_menu+0x4c>
    5bf8:	0ff00513          	li	a0,255
    5bfc:	00000593          	li	a1,0
    5c00:	f59ff06f          	j	5b58 <Game_menu+0x8c>
    5c04:	0ff00513          	li	a0,255
    5c08:	00000593          	li	a1,0
    5c0c:	f75ff06f          	j	5b80 <Game_menu+0xb4>
    5c10:	0004a783          	lw	a5,0(s1)
    5c14:	0087f793          	and	a5,a5,8
    5c18:	fa0792e3          	bnez	a5,5bbc <Game_menu+0xf0>
    5c1c:	00100793          	li	a5,1
    5c20:	40878433          	sub	s0,a5,s0
    5c24:	f99ff06f          	j	5bbc <Game_menu+0xf0>
    5c28:	408a0433          	sub	s0,s4,s0
    5c2c:	f91ff06f          	j	5bbc <Game_menu+0xf0>

00005c30 <cmd16>:
    5c30:	02000050 00001500                       P.......

00005c38 <acmd41>:
    5c38:	00004069 00000100                       i@......

00005c40 <cmd55>:
    5c40:	00000077 00000100                       w.......

00005c48 <cmd8>:
    5c48:	01000048 000087aa                       H.......

00005c50 <cmd0>:
    5c50:	00000040 00009500                       @.......

00005c58 <AUDIO>:
    5c58:	00018000                                ....

00005c5c <DISPLAY>:
    5c5c:	00014000                                .@..

00005c60 <BUTTONS>:
    5c60:	00010100                                ....

00005c64 <SDCARD>:
    5c64:	00010080                                ....

00005c68 <OLED_RST>:
    5c68:	00010010                                ....

00005c6c <OLED>:
    5c6c:	00010008                                ....

00005c70 <LEDS>:
    5c70:	00010004                                ....

00005c74 <CSWTCH.26>:
    5c74:	40100401                                ...@

00005c78 <font>:
    5c78:	00000000 00002f00 00030000 14000003     ...../..........
    5c88:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5c98:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5ca8:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5cb8:	00080800 00200000 20000000 02040810     ...... .... ....
    5cc8:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5cd8:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5ce8:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5cf8:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5d08:	00141400 0a110000 01000004 0007052d     ............-...
    5d18:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5d28:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5d38:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5d48:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5d58:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5d68:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5d78:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5d88:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5d98:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5da8:	003f2102 01020000 20000201 00000020     .!?........  ...
    5db8:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5dc8:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5dd8:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5de8:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5df8:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5e08:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5e18:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5e28:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5e38:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5e48:	043f2100 02010000 00000102 00000000     .!?.............
    5e58:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    5e68:	00000000 00000001 00000003 00000005     ................
    5e78:	00000007 00000009 0000000e 00000010     ................
    5e88:	00000012 00000014 00000016 00000018     ................
    5e98:	0000001c 0000001e 74696e69 2e2e2e20     ........init ...
    5ea8:	00000020 656e6f64 00000a2e 3d202020      ...done....   =
    5eb8:	754d203d 20636973 6147202f 3d20656d     = Music / Game =
    5ec8:	2020203d 00000a0a 6973754d 00000063     =   ....Music...
    5ed8:	203e6425 000a7325 656d6147 00000073     %d> %s..Games...
    5ee8:	6e6f732f 00000067 69647561 61705f6f     /song...audio_pa
    5ef8:	69207472 2074696e 202e2e2e 00000000     rt init ... ....
    5f08:	66206f4e 73656c69 756f6620 6920646e     No files found i
    5f18:	732f206e 2e676e6f 0000000a 3d202020     n /song.....   =
    5f28:	6c41203d 736d7562 412f2820 6d75626c     = Albums (/Album
    5f38:	3d202973 2020203d 00000a0a 3d202020     s) ==   ....   =
    5f48:	754d203d 75716973 614d2065 72747365     = Musique Maestr
    5f58:	3d3d206f 0a202020 0000000a 0000002f     o ==   ...../...
    5f68:	00006272 656c6966 746f6e20 756f6620     rb..file not fou
    5f78:	0a2e646e 00000000 6973756d 69662063     nd......music fi
    5f88:	6620656c 646e756f 00000a2e 79616c70     le found....play
    5f98:	20676e69 00000000 696e6920 002e2e74     ing .... init...
    5fa8:	6e6f732f 00002f67 66206f4e 73656c69     /song/..No files
    5fb8:	756f6620 6920646e 0000206e 6c6f6620      found in .. fol
    5fc8:	20726564 0000000a 3d202020 6f53203d     der ....   == So
    5fd8:	2073676e 6f532f28 2973676e 203d3d20     ngs (/Songs) == 
    5fe8:	0a0a2020 00000000 002e6425 00007320       ......%d.. s..
    5ff8:	7349200a 756f7920 65722072 69746361     . Is your reacti
    6008:	74206e6f 20656d69 74736166 74207265     on time faster t
    6018:	206e6168 6720796d 646e6172 73276170     han my grandpa's
    6028:	000a0a3f 50203d3d 73736572 20364220     ?...== Press B6 
    6038:	73206f74 74726174 0a3d3d20 00000000     to start ==.....
    6048:	656c6552 20657361 74203642 206e6568     Release B6 then 
    6058:	73657270 74692073 2073610a 6e6f6f73     press it.as soon
    6068:	20736120 69632061 656c6372 70706120      as a circle app
    6078:	73726165 0000002e 706d6554 61702073     ears....Temps pa
    6088:	73652072 3a696173 00000a0a 3a642523     r essai:....#%d:
    6098:	00000020 796f4d0a 656e6e65 0000203a      ....Moyenne: ..
    60a8:	70203642 2072756f 65766572 2e72696e     B6 pour revenir.
    60b8:	00000000 3d202020 6553203d 7463656c     ....   == Select
    60c8:	6d614720 3d3d2065 0a202020 0000000a      Game ==   .....
    60d8:	00003146 6d6d6f63 5f676e69 6e6f6f73     F1..comming_soon
    60e8:	00000000                                ....

000060ec <back>:
    60ec:	00000000                                ....

000060f0 <situation>:
    60f0:	00000000                                ....

000060f4 <sdcard_while_loading_callback>:
    60f4:	00000000                                ....

000060f8 <back_color>:
	...

000060f9 <front_color>:
    60f9:	                                         ...

000060fc <cursor_y>:
    60fc:	00000000                                ....

00006100 <cursor_x>:
    6100:	00000000                                ....

00006104 <f_putchar>:
    6104:	00000000                                ....

00006108 <_free_file_list>:
	...

00006110 <_open_file_list>:
	...

00006118 <_filelib_valid>:
    6118:	00000000                                ....

0000611c <_filelib_init>:
    611c:	00000000                                ....

00006120 <Init_stat>:
    6120:	00000000                                ....

00006124 <init>:
    6124:	00000000                                ....

00006128 <nAlbums>:
    6128:	00000000                                ....

0000612c <NSongs>:
    612c:	00000000                                ....

00006130 <timer>:
    6130:	00000000                                ....

00006134 <space>:
    6134:	00000000                                ....

00006138 <center_x>:
    6138:	00000000                                ....
