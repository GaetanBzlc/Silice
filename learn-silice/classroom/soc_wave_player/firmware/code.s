
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
      1c:	fe010113          	add	sp,sp,-32 # ffe0 <Songs+0x5250>
      20:	00812c23          	sw	s0,24(sp)
      24:	00006437          	lui	s0,0x6
      28:	f4042783          	lw	a5,-192(s0) # 5f40 <back>
      2c:	00912a23          	sw	s1,20(sp)
      30:	01212823          	sw	s2,16(sp)
      34:	01312623          	sw	s3,12(sp)
      38:	00112e23          	sw	ra,28(sp)
      3c:	0007a023          	sw	zero,0(a5)
      40:	00006937          	lui	s2,0x6
      44:	00100993          	li	s3,1
      48:	000064b7          	lui	s1,0x6
      4c:	00005097          	auipc	ra,0x5
      50:	84c080e7          	jalr	-1972(ra) # 4898 <Init_menu>
      54:	f4a92223          	sw	a0,-188(s2) # 5f44 <situation>
      58:	04051463          	bnez	a0,a0 <main+0x84>
      5c:	f4042583          	lw	a1,-192(s0)
      60:	f8848513          	add	a0,s1,-120 # 5f88 <Album>
      64:	00005097          	auipc	ra,0x5
      68:	bf4080e7          	jalr	-1036(ra) # 4c58 <audio_menu>
      6c:	f4042583          	lw	a1,-192(s0)
      70:	0005a783          	lw	a5,0(a1)
      74:	00078663          	beqz	a5,80 <main+0x64>
      78:	0005a023          	sw	zero,0(a1)
      7c:	fd1ff06f          	j	4c <main+0x30>
      80:	f8848513          	add	a0,s1,-120
      84:	00005097          	auipc	ra,0x5
      88:	e0c080e7          	jalr	-500(ra) # 4e90 <Select_and_play_Song>
      8c:	f4042783          	lw	a5,-192(s0)
      90:	0007a703          	lw	a4,0(a5)
      94:	fc0704e3          	beqz	a4,5c <main+0x40>
      98:	0007a023          	sw	zero,0(a5)
      9c:	fb1ff06f          	j	4c <main+0x30>
      a0:	fb3516e3          	bne	a0,s3,4c <main+0x30>
      a4:	00006097          	auipc	ra,0x6
      a8:	880080e7          	jalr	-1920(ra) # 5924 <Game_menu>
      ac:	fa1ff06f          	j	4c <main+0x30>

000000b0 <sdcard_ponder>:
      b0:	fe010113          	add	sp,sp,-32
      b4:	00812e23          	sw	s0,28(sp)
      b8:	02010413          	add	s0,sp,32
      bc:	fe042623          	sw	zero,-20(s0)
      c0:	fe042423          	sw	zero,-24(s0)
      c4:	0380006f          	j	fc <sdcard_ponder+0x4c>
      c8:	000067b7          	lui	a5,0x6
      cc:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
      d0:	fec42703          	lw	a4,-20(s0)
      d4:	00676713          	or	a4,a4,6
      d8:	00e7a023          	sw	a4,0(a5)
      dc:	00100713          	li	a4,1
      e0:	fec42783          	lw	a5,-20(s0)
      e4:	40f707b3          	sub	a5,a4,a5
      e8:	fef42623          	sw	a5,-20(s0)
      ec:	00000013          	nop
      f0:	fe842783          	lw	a5,-24(s0)
      f4:	00178793          	add	a5,a5,1
      f8:	fef42423          	sw	a5,-24(s0)
      fc:	fe842703          	lw	a4,-24(s0)
     100:	00f00793          	li	a5,15
     104:	fce7d2e3          	bge	a5,a4,c8 <sdcard_ponder+0x18>
     108:	00000013          	nop
     10c:	00000013          	nop
     110:	01c12403          	lw	s0,28(sp)
     114:	02010113          	add	sp,sp,32
     118:	00008067          	ret

0000011c <sdcard_send>:
     11c:	fd010113          	add	sp,sp,-48
     120:	02112623          	sw	ra,44(sp)
     124:	02812423          	sw	s0,40(sp)
     128:	03010413          	add	s0,sp,48
     12c:	fca42e23          	sw	a0,-36(s0)
     130:	fe042623          	sw	zero,-20(s0)
     134:	fe042423          	sw	zero,-24(s0)
     138:	fdc42783          	lw	a5,-36(s0)
     13c:	fef42223          	sw	a5,-28(s0)
     140:	fe442783          	lw	a5,-28(s0)
     144:	4077d793          	sra	a5,a5,0x7
     148:	0017f793          	and	a5,a5,1
     14c:	fef42423          	sw	a5,-24(s0)
     150:	fec42783          	lw	a5,-20(s0)
     154:	fe442703          	lw	a4,-28(s0)
     158:	00f717b3          	sll	a5,a4,a5
     15c:	fef42223          	sw	a5,-28(s0)
     160:	fe842783          	lw	a5,-24(s0)
     164:	00179693          	sll	a3,a5,0x1
     168:	000067b7          	lui	a5,0x6
     16c:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     170:	fec42703          	lw	a4,-20(s0)
     174:	00e6e733          	or	a4,a3,a4
     178:	00e7a023          	sw	a4,0(a5)
     17c:	00100713          	li	a4,1
     180:	fec42783          	lw	a5,-20(s0)
     184:	40f707b3          	sub	a5,a4,a5
     188:	fef42623          	sw	a5,-20(s0)
     18c:	fe442783          	lw	a5,-28(s0)
     190:	4077d793          	sra	a5,a5,0x7
     194:	0017f793          	and	a5,a5,1
     198:	fef42423          	sw	a5,-24(s0)
     19c:	fec42783          	lw	a5,-20(s0)
     1a0:	fe442703          	lw	a4,-28(s0)
     1a4:	00f717b3          	sll	a5,a4,a5
     1a8:	fef42223          	sw	a5,-28(s0)
     1ac:	fe842783          	lw	a5,-24(s0)
     1b0:	00179693          	sll	a3,a5,0x1
     1b4:	000067b7          	lui	a5,0x6
     1b8:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     1bc:	fec42703          	lw	a4,-20(s0)
     1c0:	00e6e733          	or	a4,a3,a4
     1c4:	00e7a023          	sw	a4,0(a5)
     1c8:	00100713          	li	a4,1
     1cc:	fec42783          	lw	a5,-20(s0)
     1d0:	40f707b3          	sub	a5,a4,a5
     1d4:	fef42623          	sw	a5,-20(s0)
     1d8:	fe442783          	lw	a5,-28(s0)
     1dc:	4077d793          	sra	a5,a5,0x7
     1e0:	0017f793          	and	a5,a5,1
     1e4:	fef42423          	sw	a5,-24(s0)
     1e8:	fec42783          	lw	a5,-20(s0)
     1ec:	fe442703          	lw	a4,-28(s0)
     1f0:	00f717b3          	sll	a5,a4,a5
     1f4:	fef42223          	sw	a5,-28(s0)
     1f8:	fe842783          	lw	a5,-24(s0)
     1fc:	00179693          	sll	a3,a5,0x1
     200:	000067b7          	lui	a5,0x6
     204:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     208:	fec42703          	lw	a4,-20(s0)
     20c:	00e6e733          	or	a4,a3,a4
     210:	00e7a023          	sw	a4,0(a5)
     214:	00100713          	li	a4,1
     218:	fec42783          	lw	a5,-20(s0)
     21c:	40f707b3          	sub	a5,a4,a5
     220:	fef42623          	sw	a5,-20(s0)
     224:	fe442783          	lw	a5,-28(s0)
     228:	4077d793          	sra	a5,a5,0x7
     22c:	0017f793          	and	a5,a5,1
     230:	fef42423          	sw	a5,-24(s0)
     234:	fec42783          	lw	a5,-20(s0)
     238:	fe442703          	lw	a4,-28(s0)
     23c:	00f717b3          	sll	a5,a4,a5
     240:	fef42223          	sw	a5,-28(s0)
     244:	fe842783          	lw	a5,-24(s0)
     248:	00179693          	sll	a3,a5,0x1
     24c:	000067b7          	lui	a5,0x6
     250:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     254:	fec42703          	lw	a4,-20(s0)
     258:	00e6e733          	or	a4,a3,a4
     25c:	00e7a023          	sw	a4,0(a5)
     260:	00100713          	li	a4,1
     264:	fec42783          	lw	a5,-20(s0)
     268:	40f707b3          	sub	a5,a4,a5
     26c:	fef42623          	sw	a5,-20(s0)
     270:	fe442783          	lw	a5,-28(s0)
     274:	4077d793          	sra	a5,a5,0x7
     278:	0017f793          	and	a5,a5,1
     27c:	fef42423          	sw	a5,-24(s0)
     280:	fec42783          	lw	a5,-20(s0)
     284:	fe442703          	lw	a4,-28(s0)
     288:	00f717b3          	sll	a5,a4,a5
     28c:	fef42223          	sw	a5,-28(s0)
     290:	fe842783          	lw	a5,-24(s0)
     294:	00179693          	sll	a3,a5,0x1
     298:	000067b7          	lui	a5,0x6
     29c:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     2a0:	fec42703          	lw	a4,-20(s0)
     2a4:	00e6e733          	or	a4,a3,a4
     2a8:	00e7a023          	sw	a4,0(a5)
     2ac:	00100713          	li	a4,1
     2b0:	fec42783          	lw	a5,-20(s0)
     2b4:	40f707b3          	sub	a5,a4,a5
     2b8:	fef42623          	sw	a5,-20(s0)
     2bc:	fe442783          	lw	a5,-28(s0)
     2c0:	4077d793          	sra	a5,a5,0x7
     2c4:	0017f793          	and	a5,a5,1
     2c8:	fef42423          	sw	a5,-24(s0)
     2cc:	fec42783          	lw	a5,-20(s0)
     2d0:	fe442703          	lw	a4,-28(s0)
     2d4:	00f717b3          	sll	a5,a4,a5
     2d8:	fef42223          	sw	a5,-28(s0)
     2dc:	fe842783          	lw	a5,-24(s0)
     2e0:	00179693          	sll	a3,a5,0x1
     2e4:	000067b7          	lui	a5,0x6
     2e8:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     2ec:	fec42703          	lw	a4,-20(s0)
     2f0:	00e6e733          	or	a4,a3,a4
     2f4:	00e7a023          	sw	a4,0(a5)
     2f8:	00100713          	li	a4,1
     2fc:	fec42783          	lw	a5,-20(s0)
     300:	40f707b3          	sub	a5,a4,a5
     304:	fef42623          	sw	a5,-20(s0)
     308:	fe442783          	lw	a5,-28(s0)
     30c:	4077d793          	sra	a5,a5,0x7
     310:	0017f793          	and	a5,a5,1
     314:	fef42423          	sw	a5,-24(s0)
     318:	fec42783          	lw	a5,-20(s0)
     31c:	fe442703          	lw	a4,-28(s0)
     320:	00f717b3          	sll	a5,a4,a5
     324:	fef42223          	sw	a5,-28(s0)
     328:	fe842783          	lw	a5,-24(s0)
     32c:	00179693          	sll	a3,a5,0x1
     330:	000067b7          	lui	a5,0x6
     334:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     338:	fec42703          	lw	a4,-20(s0)
     33c:	00e6e733          	or	a4,a3,a4
     340:	00e7a023          	sw	a4,0(a5)
     344:	00100713          	li	a4,1
     348:	fec42783          	lw	a5,-20(s0)
     34c:	40f707b3          	sub	a5,a4,a5
     350:	fef42623          	sw	a5,-20(s0)
     354:	fe442783          	lw	a5,-28(s0)
     358:	4077d793          	sra	a5,a5,0x7
     35c:	0017f793          	and	a5,a5,1
     360:	fef42423          	sw	a5,-24(s0)
     364:	fec42783          	lw	a5,-20(s0)
     368:	fe442703          	lw	a4,-28(s0)
     36c:	00f717b3          	sll	a5,a4,a5
     370:	fef42223          	sw	a5,-28(s0)
     374:	fe842783          	lw	a5,-24(s0)
     378:	00179693          	sll	a3,a5,0x1
     37c:	000067b7          	lui	a5,0x6
     380:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     384:	fec42703          	lw	a4,-20(s0)
     388:	00e6e733          	or	a4,a3,a4
     38c:	00e7a023          	sw	a4,0(a5)
     390:	00100713          	li	a4,1
     394:	fec42783          	lw	a5,-20(s0)
     398:	40f707b3          	sub	a5,a4,a5
     39c:	fef42623          	sw	a5,-20(s0)
     3a0:	fe442783          	lw	a5,-28(s0)
     3a4:	4077d793          	sra	a5,a5,0x7
     3a8:	0017f793          	and	a5,a5,1
     3ac:	fef42423          	sw	a5,-24(s0)
     3b0:	fec42783          	lw	a5,-20(s0)
     3b4:	fe442703          	lw	a4,-28(s0)
     3b8:	00f717b3          	sll	a5,a4,a5
     3bc:	fef42223          	sw	a5,-28(s0)
     3c0:	fe842783          	lw	a5,-24(s0)
     3c4:	00179693          	sll	a3,a5,0x1
     3c8:	000067b7          	lui	a5,0x6
     3cc:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     3d0:	fec42703          	lw	a4,-20(s0)
     3d4:	00e6e733          	or	a4,a3,a4
     3d8:	00e7a023          	sw	a4,0(a5)
     3dc:	00100713          	li	a4,1
     3e0:	fec42783          	lw	a5,-20(s0)
     3e4:	40f707b3          	sub	a5,a4,a5
     3e8:	fef42623          	sw	a5,-20(s0)
     3ec:	fe442783          	lw	a5,-28(s0)
     3f0:	4077d793          	sra	a5,a5,0x7
     3f4:	0017f793          	and	a5,a5,1
     3f8:	fef42423          	sw	a5,-24(s0)
     3fc:	fec42783          	lw	a5,-20(s0)
     400:	fe442703          	lw	a4,-28(s0)
     404:	00f717b3          	sll	a5,a4,a5
     408:	fef42223          	sw	a5,-28(s0)
     40c:	fe842783          	lw	a5,-24(s0)
     410:	00179693          	sll	a3,a5,0x1
     414:	000067b7          	lui	a5,0x6
     418:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     41c:	fec42703          	lw	a4,-20(s0)
     420:	00e6e733          	or	a4,a3,a4
     424:	00e7a023          	sw	a4,0(a5)
     428:	00100713          	li	a4,1
     42c:	fec42783          	lw	a5,-20(s0)
     430:	40f707b3          	sub	a5,a4,a5
     434:	fef42623          	sw	a5,-20(s0)
     438:	fe442783          	lw	a5,-28(s0)
     43c:	4077d793          	sra	a5,a5,0x7
     440:	0017f793          	and	a5,a5,1
     444:	fef42423          	sw	a5,-24(s0)
     448:	fec42783          	lw	a5,-20(s0)
     44c:	fe442703          	lw	a4,-28(s0)
     450:	00f717b3          	sll	a5,a4,a5
     454:	fef42223          	sw	a5,-28(s0)
     458:	fe842783          	lw	a5,-24(s0)
     45c:	00179693          	sll	a3,a5,0x1
     460:	000067b7          	lui	a5,0x6
     464:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     468:	fec42703          	lw	a4,-20(s0)
     46c:	00e6e733          	or	a4,a3,a4
     470:	00e7a023          	sw	a4,0(a5)
     474:	00100713          	li	a4,1
     478:	fec42783          	lw	a5,-20(s0)
     47c:	40f707b3          	sub	a5,a4,a5
     480:	fef42623          	sw	a5,-20(s0)
     484:	fe442783          	lw	a5,-28(s0)
     488:	4077d793          	sra	a5,a5,0x7
     48c:	0017f793          	and	a5,a5,1
     490:	fef42423          	sw	a5,-24(s0)
     494:	fec42783          	lw	a5,-20(s0)
     498:	fe442703          	lw	a4,-28(s0)
     49c:	00f717b3          	sll	a5,a4,a5
     4a0:	fef42223          	sw	a5,-28(s0)
     4a4:	fe842783          	lw	a5,-24(s0)
     4a8:	00179693          	sll	a3,a5,0x1
     4ac:	000067b7          	lui	a5,0x6
     4b0:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     4b4:	fec42703          	lw	a4,-20(s0)
     4b8:	00e6e733          	or	a4,a3,a4
     4bc:	00e7a023          	sw	a4,0(a5)
     4c0:	00100713          	li	a4,1
     4c4:	fec42783          	lw	a5,-20(s0)
     4c8:	40f707b3          	sub	a5,a4,a5
     4cc:	fef42623          	sw	a5,-20(s0)
     4d0:	fe442783          	lw	a5,-28(s0)
     4d4:	4077d793          	sra	a5,a5,0x7
     4d8:	0017f793          	and	a5,a5,1
     4dc:	fef42423          	sw	a5,-24(s0)
     4e0:	fec42783          	lw	a5,-20(s0)
     4e4:	fe442703          	lw	a4,-28(s0)
     4e8:	00f717b3          	sll	a5,a4,a5
     4ec:	fef42223          	sw	a5,-28(s0)
     4f0:	fe842783          	lw	a5,-24(s0)
     4f4:	00179693          	sll	a3,a5,0x1
     4f8:	000067b7          	lui	a5,0x6
     4fc:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     500:	fec42703          	lw	a4,-20(s0)
     504:	00e6e733          	or	a4,a3,a4
     508:	00e7a023          	sw	a4,0(a5)
     50c:	00100713          	li	a4,1
     510:	fec42783          	lw	a5,-20(s0)
     514:	40f707b3          	sub	a5,a4,a5
     518:	fef42623          	sw	a5,-20(s0)
     51c:	fe442783          	lw	a5,-28(s0)
     520:	4077d793          	sra	a5,a5,0x7
     524:	0017f793          	and	a5,a5,1
     528:	fef42423          	sw	a5,-24(s0)
     52c:	fec42783          	lw	a5,-20(s0)
     530:	fe442703          	lw	a4,-28(s0)
     534:	00f717b3          	sll	a5,a4,a5
     538:	fef42223          	sw	a5,-28(s0)
     53c:	fe842783          	lw	a5,-24(s0)
     540:	00179693          	sll	a3,a5,0x1
     544:	000067b7          	lui	a5,0x6
     548:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     54c:	fec42703          	lw	a4,-20(s0)
     550:	00e6e733          	or	a4,a3,a4
     554:	00e7a023          	sw	a4,0(a5)
     558:	00100713          	li	a4,1
     55c:	fec42783          	lw	a5,-20(s0)
     560:	40f707b3          	sub	a5,a4,a5
     564:	fef42623          	sw	a5,-20(s0)
     568:	fe442783          	lw	a5,-28(s0)
     56c:	4077d793          	sra	a5,a5,0x7
     570:	0017f793          	and	a5,a5,1
     574:	fef42423          	sw	a5,-24(s0)
     578:	fec42783          	lw	a5,-20(s0)
     57c:	fe442703          	lw	a4,-28(s0)
     580:	00f717b3          	sll	a5,a4,a5
     584:	fef42223          	sw	a5,-28(s0)
     588:	fe842783          	lw	a5,-24(s0)
     58c:	00179693          	sll	a3,a5,0x1
     590:	000067b7          	lui	a5,0x6
     594:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     598:	fec42703          	lw	a4,-20(s0)
     59c:	00e6e733          	or	a4,a3,a4
     5a0:	00e7a023          	sw	a4,0(a5)
     5a4:	00100713          	li	a4,1
     5a8:	fec42783          	lw	a5,-20(s0)
     5ac:	40f707b3          	sub	a5,a4,a5
     5b0:	fef42623          	sw	a5,-20(s0)
     5b4:	fe442783          	lw	a5,-28(s0)
     5b8:	4077d793          	sra	a5,a5,0x7
     5bc:	0017f793          	and	a5,a5,1
     5c0:	fef42423          	sw	a5,-24(s0)
     5c4:	fec42783          	lw	a5,-20(s0)
     5c8:	fe442703          	lw	a4,-28(s0)
     5cc:	00f717b3          	sll	a5,a4,a5
     5d0:	fef42223          	sw	a5,-28(s0)
     5d4:	fe842783          	lw	a5,-24(s0)
     5d8:	00179693          	sll	a3,a5,0x1
     5dc:	000067b7          	lui	a5,0x6
     5e0:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     5e4:	fec42703          	lw	a4,-20(s0)
     5e8:	00e6e733          	or	a4,a3,a4
     5ec:	00e7a023          	sw	a4,0(a5)
     5f0:	00100713          	li	a4,1
     5f4:	fec42783          	lw	a5,-20(s0)
     5f8:	40f707b3          	sub	a5,a4,a5
     5fc:	fef42623          	sw	a5,-20(s0)
     600:	000067b7          	lui	a5,0x6
     604:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     608:	00200713          	li	a4,2
     60c:	00e7a023          	sw	a4,0(a5)
     610:	000067b7          	lui	a5,0x6
     614:	f487a783          	lw	a5,-184(a5) # 5f48 <sdcard_while_loading_callback>
     618:	000780e7          	jalr	a5
     61c:	00000013          	nop
     620:	02c12083          	lw	ra,44(sp)
     624:	02812403          	lw	s0,40(sp)
     628:	03010113          	add	sp,sp,48
     62c:	00008067          	ret

00000630 <sdcard_read>:
     630:	fc010113          	add	sp,sp,-64
     634:	02112e23          	sw	ra,60(sp)
     638:	02812c23          	sw	s0,56(sp)
     63c:	04010413          	add	s0,sp,64
     640:	00050793          	mv	a5,a0
     644:	00058713          	mv	a4,a1
     648:	fcf407a3          	sb	a5,-49(s0)
     64c:	00070793          	mv	a5,a4
     650:	fcf40723          	sb	a5,-50(s0)
     654:	fce44783          	lbu	a5,-50(s0)
     658:	fef42223          	sw	a5,-28(s0)
     65c:	fcf44783          	lbu	a5,-49(s0)
     660:	fef42023          	sw	a5,-32(s0)
     664:	fe042623          	sw	zero,-20(s0)
     668:	0ff00793          	li	a5,255
     66c:	fef42423          	sw	a5,-24(s0)
     670:	0600006f          	j	6d0 <sdcard_read+0xa0>
     674:	000067b7          	lui	a5,0x6
     678:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     67c:	00300713          	li	a4,3
     680:	00e7a023          	sw	a4,0(a5)
     684:	fec42783          	lw	a5,-20(s0)
     688:	00178793          	add	a5,a5,1
     68c:	fef42623          	sw	a5,-20(s0)
     690:	000067b7          	lui	a5,0x6
     694:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     698:	00200713          	li	a4,2
     69c:	00e7a023          	sw	a4,0(a5)
     6a0:	000067b7          	lui	a5,0x6
     6a4:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     6a8:	0007a783          	lw	a5,0(a5)
     6ac:	fcf42e23          	sw	a5,-36(s0)
     6b0:	fe842783          	lw	a5,-24(s0)
     6b4:	00179793          	sll	a5,a5,0x1
     6b8:	fdc42703          	lw	a4,-36(s0)
     6bc:	00f767b3          	or	a5,a4,a5
     6c0:	fef42423          	sw	a5,-24(s0)
     6c4:	000067b7          	lui	a5,0x6
     6c8:	f487a783          	lw	a5,-184(a5) # 5f48 <sdcard_while_loading_callback>
     6cc:	000780e7          	jalr	a5
     6d0:	fe442783          	lw	a5,-28(s0)
     6d4:	00078e63          	beqz	a5,6f0 <sdcard_read+0xc0>
     6d8:	fe042783          	lw	a5,-32(s0)
     6dc:	fff78793          	add	a5,a5,-1
     6e0:	fe842703          	lw	a4,-24(s0)
     6e4:	40f757b3          	sra	a5,a4,a5
     6e8:	0017f793          	and	a5,a5,1
     6ec:	f80794e3          	bnez	a5,674 <sdcard_read+0x44>
     6f0:	fe442783          	lw	a5,-28(s0)
     6f4:	00079863          	bnez	a5,704 <sdcard_read+0xd4>
     6f8:	fec42703          	lw	a4,-20(s0)
     6fc:	fe042783          	lw	a5,-32(s0)
     700:	f6f74ae3          	blt	a4,a5,674 <sdcard_read+0x44>
     704:	fe842783          	lw	a5,-24(s0)
     708:	0ff7f793          	zext.b	a5,a5
     70c:	00078513          	mv	a0,a5
     710:	03c12083          	lw	ra,60(sp)
     714:	03812403          	lw	s0,56(sp)
     718:	04010113          	add	sp,sp,64
     71c:	00008067          	ret

00000720 <sdcard_get>:
     720:	fd010113          	add	sp,sp,-48
     724:	02112623          	sw	ra,44(sp)
     728:	02812423          	sw	s0,40(sp)
     72c:	03010413          	add	s0,sp,48
     730:	00050793          	mv	a5,a0
     734:	00058713          	mv	a4,a1
     738:	fcf40fa3          	sb	a5,-33(s0)
     73c:	00070793          	mv	a5,a4
     740:	fcf40f23          	sb	a5,-34(s0)
     744:	00000097          	auipc	ra,0x0
     748:	4e4080e7          	jalr	1252(ra) # c28 <sdcard_select>
     74c:	fde44703          	lbu	a4,-34(s0)
     750:	fdf44783          	lbu	a5,-33(s0)
     754:	00070593          	mv	a1,a4
     758:	00078513          	mv	a0,a5
     75c:	00000097          	auipc	ra,0x0
     760:	ed4080e7          	jalr	-300(ra) # 630 <sdcard_read>
     764:	00050793          	mv	a5,a0
     768:	fef407a3          	sb	a5,-17(s0)
     76c:	00100793          	li	a5,1
     770:	fef42423          	sw	a5,-24(s0)
     774:	0280006f          	j	79c <sdcard_get+0x7c>
     778:	00000593          	li	a1,0
     77c:	00800513          	li	a0,8
     780:	00000097          	auipc	ra,0x0
     784:	eb0080e7          	jalr	-336(ra) # 630 <sdcard_read>
     788:	00050793          	mv	a5,a0
     78c:	fef407a3          	sb	a5,-17(s0)
     790:	fe842783          	lw	a5,-24(s0)
     794:	00178793          	add	a5,a5,1
     798:	fef42423          	sw	a5,-24(s0)
     79c:	fdf44783          	lbu	a5,-33(s0)
     7a0:	0037d793          	srl	a5,a5,0x3
     7a4:	0ff7f793          	zext.b	a5,a5
     7a8:	00078713          	mv	a4,a5
     7ac:	fe842783          	lw	a5,-24(s0)
     7b0:	fce7c4e3          	blt	a5,a4,778 <sdcard_get+0x58>
     7b4:	00000097          	auipc	ra,0x0
     7b8:	488080e7          	jalr	1160(ra) # c3c <sdcard_unselect>
     7bc:	fef44783          	lbu	a5,-17(s0)
     7c0:	00078513          	mv	a0,a5
     7c4:	02c12083          	lw	ra,44(sp)
     7c8:	02812403          	lw	s0,40(sp)
     7cc:	03010113          	add	sp,sp,48
     7d0:	00008067          	ret

000007d4 <sdcard_cmd>:
     7d4:	fd010113          	add	sp,sp,-48
     7d8:	02112623          	sw	ra,44(sp)
     7dc:	02812423          	sw	s0,40(sp)
     7e0:	03010413          	add	s0,sp,48
     7e4:	fca42e23          	sw	a0,-36(s0)
     7e8:	00000097          	auipc	ra,0x0
     7ec:	440080e7          	jalr	1088(ra) # c28 <sdcard_select>
     7f0:	fe042623          	sw	zero,-20(s0)
     7f4:	02c0006f          	j	820 <sdcard_cmd+0x4c>
     7f8:	fec42783          	lw	a5,-20(s0)
     7fc:	fdc42703          	lw	a4,-36(s0)
     800:	00f707b3          	add	a5,a4,a5
     804:	0007c783          	lbu	a5,0(a5)
     808:	00078513          	mv	a0,a5
     80c:	00000097          	auipc	ra,0x0
     810:	910080e7          	jalr	-1776(ra) # 11c <sdcard_send>
     814:	fec42783          	lw	a5,-20(s0)
     818:	00178793          	add	a5,a5,1
     81c:	fef42623          	sw	a5,-20(s0)
     820:	fec42703          	lw	a4,-20(s0)
     824:	00500793          	li	a5,5
     828:	fce7d8e3          	bge	a5,a4,7f8 <sdcard_cmd+0x24>
     82c:	00000097          	auipc	ra,0x0
     830:	410080e7          	jalr	1040(ra) # c3c <sdcard_unselect>
     834:	00000013          	nop
     838:	02c12083          	lw	ra,44(sp)
     83c:	02812403          	lw	s0,40(sp)
     840:	03010113          	add	sp,sp,48
     844:	00008067          	ret

00000848 <sdcard_start_sector>:
     848:	fe010113          	add	sp,sp,-32
     84c:	00112e23          	sw	ra,28(sp)
     850:	00812c23          	sw	s0,24(sp)
     854:	02010413          	add	s0,sp,32
     858:	fea42623          	sw	a0,-20(s0)
     85c:	00000097          	auipc	ra,0x0
     860:	3cc080e7          	jalr	972(ra) # c28 <sdcard_select>
     864:	05100793          	li	a5,81
     868:	00078513          	mv	a0,a5
     86c:	00000097          	auipc	ra,0x0
     870:	8b0080e7          	jalr	-1872(ra) # 11c <sdcard_send>
     874:	fec42783          	lw	a5,-20(s0)
     878:	0187d793          	srl	a5,a5,0x18
     87c:	00078513          	mv	a0,a5
     880:	00000097          	auipc	ra,0x0
     884:	89c080e7          	jalr	-1892(ra) # 11c <sdcard_send>
     888:	fec42783          	lw	a5,-20(s0)
     88c:	4107d793          	sra	a5,a5,0x10
     890:	0ff7f793          	zext.b	a5,a5
     894:	00078513          	mv	a0,a5
     898:	00000097          	auipc	ra,0x0
     89c:	884080e7          	jalr	-1916(ra) # 11c <sdcard_send>
     8a0:	fec42783          	lw	a5,-20(s0)
     8a4:	4087d793          	sra	a5,a5,0x8
     8a8:	0ff7f793          	zext.b	a5,a5
     8ac:	00078513          	mv	a0,a5
     8b0:	00000097          	auipc	ra,0x0
     8b4:	86c080e7          	jalr	-1940(ra) # 11c <sdcard_send>
     8b8:	fec42783          	lw	a5,-20(s0)
     8bc:	0ff7f793          	zext.b	a5,a5
     8c0:	00078513          	mv	a0,a5
     8c4:	00000097          	auipc	ra,0x0
     8c8:	858080e7          	jalr	-1960(ra) # 11c <sdcard_send>
     8cc:	05500793          	li	a5,85
     8d0:	00078513          	mv	a0,a5
     8d4:	00000097          	auipc	ra,0x0
     8d8:	848080e7          	jalr	-1976(ra) # 11c <sdcard_send>
     8dc:	00000097          	auipc	ra,0x0
     8e0:	360080e7          	jalr	864(ra) # c3c <sdcard_unselect>
     8e4:	fffff097          	auipc	ra,0xfffff
     8e8:	7cc080e7          	jalr	1996(ra) # b0 <sdcard_ponder>
     8ec:	00100593          	li	a1,1
     8f0:	00800513          	li	a0,8
     8f4:	00000097          	auipc	ra,0x0
     8f8:	e2c080e7          	jalr	-468(ra) # 720 <sdcard_get>
     8fc:	00050793          	mv	a5,a0
     900:	00078513          	mv	a0,a5
     904:	01c12083          	lw	ra,28(sp)
     908:	01812403          	lw	s0,24(sp)
     90c:	02010113          	add	sp,sp,32
     910:	00008067          	ret

00000914 <sdcard_read_sector>:
     914:	fd010113          	add	sp,sp,-48
     918:	02112623          	sw	ra,44(sp)
     91c:	02812423          	sw	s0,40(sp)
     920:	03010413          	add	s0,sp,48
     924:	fca42e23          	sw	a0,-36(s0)
     928:	fcb42c23          	sw	a1,-40(s0)
     92c:	fdc42503          	lw	a0,-36(s0)
     930:	00000097          	auipc	ra,0x0
     934:	f18080e7          	jalr	-232(ra) # 848 <sdcard_start_sector>
     938:	00050793          	mv	a5,a0
     93c:	fef405a3          	sb	a5,-21(s0)
     940:	feb44783          	lbu	a5,-21(s0)
     944:	00078663          	beqz	a5,950 <sdcard_read_sector+0x3c>
     948:	fd842783          	lw	a5,-40(s0)
     94c:	08c0006f          	j	9d8 <sdcard_read_sector+0xc4>
     950:	00100593          	li	a1,1
     954:	00100513          	li	a0,1
     958:	00000097          	auipc	ra,0x0
     95c:	dc8080e7          	jalr	-568(ra) # 720 <sdcard_get>
     960:	fe042623          	sw	zero,-20(s0)
     964:	03c0006f          	j	9a0 <sdcard_read_sector+0x8c>
     968:	00000593          	li	a1,0
     96c:	00800513          	li	a0,8
     970:	00000097          	auipc	ra,0x0
     974:	db0080e7          	jalr	-592(ra) # 720 <sdcard_get>
     978:	00050793          	mv	a5,a0
     97c:	fef401a3          	sb	a5,-29(s0)
     980:	fd842783          	lw	a5,-40(s0)
     984:	00178713          	add	a4,a5,1
     988:	fce42c23          	sw	a4,-40(s0)
     98c:	fe344703          	lbu	a4,-29(s0)
     990:	00e78023          	sb	a4,0(a5)
     994:	fec42783          	lw	a5,-20(s0)
     998:	00178793          	add	a5,a5,1
     99c:	fef42623          	sw	a5,-20(s0)
     9a0:	fec42703          	lw	a4,-20(s0)
     9a4:	1ff00793          	li	a5,511
     9a8:	fce7d0e3          	bge	a5,a4,968 <sdcard_read_sector+0x54>
     9ac:	00000593          	li	a1,0
     9b0:	01000513          	li	a0,16
     9b4:	00000097          	auipc	ra,0x0
     9b8:	d6c080e7          	jalr	-660(ra) # 720 <sdcard_get>
     9bc:	00050793          	mv	a5,a0
     9c0:	fef42223          	sw	a5,-28(s0)
     9c4:	00000097          	auipc	ra,0x0
     9c8:	278080e7          	jalr	632(ra) # c3c <sdcard_unselect>
     9cc:	fffff097          	auipc	ra,0xfffff
     9d0:	6e4080e7          	jalr	1764(ra) # b0 <sdcard_ponder>
     9d4:	fd842783          	lw	a5,-40(s0)
     9d8:	00078513          	mv	a0,a5
     9dc:	02c12083          	lw	ra,44(sp)
     9e0:	02812403          	lw	s0,40(sp)
     9e4:	03010113          	add	sp,sp,48
     9e8:	00008067          	ret

000009ec <sdcard_preinit>:
     9ec:	fe010113          	add	sp,sp,-32
     9f0:	00112e23          	sw	ra,28(sp)
     9f4:	00812c23          	sw	s0,24(sp)
     9f8:	02010413          	add	s0,sp,32
     9fc:	000067b7          	lui	a5,0x6
     a00:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     a04:	00600713          	li	a4,6
     a08:	00e7a023          	sw	a4,0(a5)
     a0c:	013137b7          	lui	a5,0x1313
     a10:	d0078513          	add	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
     a14:	00000097          	auipc	ra,0x0
     a18:	1fc080e7          	jalr	508(ra) # c10 <pause>
     a1c:	fe042623          	sw	zero,-20(s0)
     a20:	fe042423          	sw	zero,-24(s0)
     a24:	0340006f          	j	a58 <sdcard_preinit+0x6c>
     a28:	000067b7          	lui	a5,0x6
     a2c:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     a30:	fec42703          	lw	a4,-20(s0)
     a34:	00676713          	or	a4,a4,6
     a38:	00e7a023          	sw	a4,0(a5)
     a3c:	00100713          	li	a4,1
     a40:	fec42783          	lw	a5,-20(s0)
     a44:	40f707b3          	sub	a5,a4,a5
     a48:	fef42623          	sw	a5,-20(s0)
     a4c:	fe842783          	lw	a5,-24(s0)
     a50:	00178793          	add	a5,a5,1
     a54:	fef42423          	sw	a5,-24(s0)
     a58:	fe842703          	lw	a4,-24(s0)
     a5c:	09f00793          	li	a5,159
     a60:	fce7d4e3          	bge	a5,a4,a28 <sdcard_preinit+0x3c>
     a64:	000067b7          	lui	a5,0x6
     a68:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     a6c:	00600713          	li	a4,6
     a70:	00e7a023          	sw	a4,0(a5)
     a74:	00000013          	nop
     a78:	01c12083          	lw	ra,28(sp)
     a7c:	01812403          	lw	s0,24(sp)
     a80:	02010113          	add	sp,sp,32
     a84:	00008067          	ret

00000a88 <sdcard_init>:
     a88:	fe010113          	add	sp,sp,-32
     a8c:	00112e23          	sw	ra,28(sp)
     a90:	00812c23          	sw	s0,24(sp)
     a94:	02010413          	add	s0,sp,32
     a98:	000067b7          	lui	a5,0x6
     a9c:	00001737          	lui	a4,0x1
     aa0:	c2470713          	add	a4,a4,-988 # c24 <sdcard_idle>
     aa4:	f4e7a423          	sw	a4,-184(a5) # 5f48 <sdcard_while_loading_callback>
     aa8:	00000097          	auipc	ra,0x0
     aac:	f44080e7          	jalr	-188(ra) # 9ec <sdcard_preinit>
     ab0:	000067b7          	lui	a5,0x6
     ab4:	aa878513          	add	a0,a5,-1368 # 5aa8 <cmd0>
     ab8:	00000097          	auipc	ra,0x0
     abc:	d1c080e7          	jalr	-740(ra) # 7d4 <sdcard_cmd>
     ac0:	00100593          	li	a1,1
     ac4:	00800513          	li	a0,8
     ac8:	00000097          	auipc	ra,0x0
     acc:	c58080e7          	jalr	-936(ra) # 720 <sdcard_get>
     ad0:	00050793          	mv	a5,a0
     ad4:	fef407a3          	sb	a5,-17(s0)
     ad8:	fffff097          	auipc	ra,0xfffff
     adc:	5d8080e7          	jalr	1496(ra) # b0 <sdcard_ponder>
     ae0:	fef44703          	lbu	a4,-17(s0)
     ae4:	0ff00793          	li	a5,255
     ae8:	00f71c63          	bne	a4,a5,b00 <sdcard_init+0x78>
     aec:	013137b7          	lui	a5,0x1313
     af0:	d0078513          	add	a0,a5,-768 # 1312d00 <__stacktop+0x1302d00>
     af4:	00000097          	auipc	ra,0x0
     af8:	11c080e7          	jalr	284(ra) # c10 <pause>
     afc:	fadff06f          	j	aa8 <sdcard_init+0x20>
     b00:	00000013          	nop
     b04:	000067b7          	lui	a5,0x6
     b08:	aa078513          	add	a0,a5,-1376 # 5aa0 <cmd8>
     b0c:	00000097          	auipc	ra,0x0
     b10:	cc8080e7          	jalr	-824(ra) # 7d4 <sdcard_cmd>
     b14:	00100593          	li	a1,1
     b18:	02800513          	li	a0,40
     b1c:	00000097          	auipc	ra,0x0
     b20:	c04080e7          	jalr	-1020(ra) # 720 <sdcard_get>
     b24:	00050793          	mv	a5,a0
     b28:	fef407a3          	sb	a5,-17(s0)
     b2c:	fffff097          	auipc	ra,0xfffff
     b30:	584080e7          	jalr	1412(ra) # b0 <sdcard_ponder>
     b34:	000067b7          	lui	a5,0x6
     b38:	a9878513          	add	a0,a5,-1384 # 5a98 <cmd55>
     b3c:	00000097          	auipc	ra,0x0
     b40:	c98080e7          	jalr	-872(ra) # 7d4 <sdcard_cmd>
     b44:	00100593          	li	a1,1
     b48:	00800513          	li	a0,8
     b4c:	00000097          	auipc	ra,0x0
     b50:	bd4080e7          	jalr	-1068(ra) # 720 <sdcard_get>
     b54:	00050793          	mv	a5,a0
     b58:	fef407a3          	sb	a5,-17(s0)
     b5c:	fffff097          	auipc	ra,0xfffff
     b60:	554080e7          	jalr	1364(ra) # b0 <sdcard_ponder>
     b64:	000067b7          	lui	a5,0x6
     b68:	a9078513          	add	a0,a5,-1392 # 5a90 <acmd41>
     b6c:	00000097          	auipc	ra,0x0
     b70:	c68080e7          	jalr	-920(ra) # 7d4 <sdcard_cmd>
     b74:	00100593          	li	a1,1
     b78:	00800513          	li	a0,8
     b7c:	00000097          	auipc	ra,0x0
     b80:	ba4080e7          	jalr	-1116(ra) # 720 <sdcard_get>
     b84:	00050793          	mv	a5,a0
     b88:	fef407a3          	sb	a5,-17(s0)
     b8c:	fffff097          	auipc	ra,0xfffff
     b90:	524080e7          	jalr	1316(ra) # b0 <sdcard_ponder>
     b94:	fef44783          	lbu	a5,-17(s0)
     b98:	02078863          	beqz	a5,bc8 <sdcard_init+0x140>
     b9c:	00000097          	auipc	ra,0x0
     ba0:	0a0080e7          	jalr	160(ra) # c3c <sdcard_unselect>
     ba4:	fffff097          	auipc	ra,0xfffff
     ba8:	50c080e7          	jalr	1292(ra) # b0 <sdcard_ponder>
     bac:	001e87b7          	lui	a5,0x1e8
     bb0:	48078513          	add	a0,a5,1152 # 1e8480 <__stacktop+0x1d8480>
     bb4:	00000097          	auipc	ra,0x0
     bb8:	05c080e7          	jalr	92(ra) # c10 <pause>
     bbc:	00000097          	auipc	ra,0x0
     bc0:	06c080e7          	jalr	108(ra) # c28 <sdcard_select>
     bc4:	f71ff06f          	j	b34 <sdcard_init+0xac>
     bc8:	00000013          	nop
     bcc:	000067b7          	lui	a5,0x6
     bd0:	a8878513          	add	a0,a5,-1400 # 5a88 <cmd16>
     bd4:	00000097          	auipc	ra,0x0
     bd8:	c00080e7          	jalr	-1024(ra) # 7d4 <sdcard_cmd>
     bdc:	00100593          	li	a1,1
     be0:	00800513          	li	a0,8
     be4:	00000097          	auipc	ra,0x0
     be8:	b3c080e7          	jalr	-1220(ra) # 720 <sdcard_get>
     bec:	00050793          	mv	a5,a0
     bf0:	fef407a3          	sb	a5,-17(s0)
     bf4:	fffff097          	auipc	ra,0xfffff
     bf8:	4bc080e7          	jalr	1212(ra) # b0 <sdcard_ponder>
     bfc:	00000013          	nop
     c00:	01c12083          	lw	ra,28(sp)
     c04:	01812403          	lw	s0,24(sp)
     c08:	02010113          	add	sp,sp,32
     c0c:	00008067          	ret

00000c10 <pause>:
     c10:	c0002773          	rdcycle	a4
     c14:	c00027f3          	rdcycle	a5
     c18:	40e787b3          	sub	a5,a5,a4
     c1c:	fea7ece3          	bltu	a5,a0,c14 <pause+0x4>
     c20:	00008067          	ret

00000c24 <sdcard_idle>:
     c24:	00008067          	ret

00000c28 <sdcard_select>:
     c28:	000067b7          	lui	a5,0x6
     c2c:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     c30:	00200713          	li	a4,2
     c34:	00e7a023          	sw	a4,0(a5)
     c38:	00008067          	ret

00000c3c <sdcard_unselect>:
     c3c:	000067b7          	lui	a5,0x6
     c40:	ab87a783          	lw	a5,-1352(a5) # 5ab8 <SDCARD>
     c44:	00600713          	li	a4,6
     c48:	00e7a023          	sw	a4,0(a5)
     c4c:	00008067          	ret

00000c50 <sdcard_readsector>:
     c50:	04060663          	beqz	a2,c9c <sdcard_readsector+0x4c>
     c54:	ff010113          	add	sp,sp,-16
     c58:	00912423          	sw	s1,8(sp)
     c5c:	01212223          	sw	s2,4(sp)
     c60:	00112623          	sw	ra,12(sp)
     c64:	00050493          	mv	s1,a0
     c68:	00a60933          	add	s2,a2,a0
     c6c:	00048513          	mv	a0,s1
     c70:	00000097          	auipc	ra,0x0
     c74:	ca4080e7          	jalr	-860(ra) # 914 <sdcard_read_sector>
     c78:	00148493          	add	s1,s1,1
     c7c:	00050593          	mv	a1,a0
     c80:	fe9916e3          	bne	s2,s1,c6c <sdcard_readsector+0x1c>
     c84:	00c12083          	lw	ra,12(sp)
     c88:	00812483          	lw	s1,8(sp)
     c8c:	00412903          	lw	s2,4(sp)
     c90:	00100513          	li	a0,1
     c94:	01010113          	add	sp,sp,16
     c98:	00008067          	ret
     c9c:	00000513          	li	a0,0
     ca0:	00008067          	ret

00000ca4 <sdcard_writesector>:
     ca4:	00000513          	li	a0,0
     ca8:	00008067          	ret

00000cac <__divsi3>:
     cac:	06054063          	bltz	a0,d0c <__umodsi3+0x10>
     cb0:	0605c663          	bltz	a1,d1c <__umodsi3+0x20>

00000cb4 <__udivsi3>:
     cb4:	00058613          	mv	a2,a1
     cb8:	00050593          	mv	a1,a0
     cbc:	fff00513          	li	a0,-1
     cc0:	02060c63          	beqz	a2,cf8 <__udivsi3+0x44>
     cc4:	00100693          	li	a3,1
     cc8:	00b67a63          	bgeu	a2,a1,cdc <__udivsi3+0x28>
     ccc:	00c05863          	blez	a2,cdc <__udivsi3+0x28>
     cd0:	00161613          	sll	a2,a2,0x1
     cd4:	00169693          	sll	a3,a3,0x1
     cd8:	feb66ae3          	bltu	a2,a1,ccc <__udivsi3+0x18>
     cdc:	00000513          	li	a0,0
     ce0:	00c5e663          	bltu	a1,a2,cec <__udivsi3+0x38>
     ce4:	40c585b3          	sub	a1,a1,a2
     ce8:	00d56533          	or	a0,a0,a3
     cec:	0016d693          	srl	a3,a3,0x1
     cf0:	00165613          	srl	a2,a2,0x1
     cf4:	fe0696e3          	bnez	a3,ce0 <__udivsi3+0x2c>
     cf8:	00008067          	ret

00000cfc <__umodsi3>:
     cfc:	00008293          	mv	t0,ra
     d00:	fb5ff0ef          	jal	cb4 <__udivsi3>
     d04:	00058513          	mv	a0,a1
     d08:	00028067          	jr	t0
     d0c:	40a00533          	neg	a0,a0
     d10:	0005d863          	bgez	a1,d20 <__umodsi3+0x24>
     d14:	40b005b3          	neg	a1,a1
     d18:	f95ff06f          	j	cac <__divsi3>
     d1c:	40b005b3          	neg	a1,a1
     d20:	00008293          	mv	t0,ra
     d24:	f89ff0ef          	jal	cac <__divsi3>
     d28:	40a00533          	neg	a0,a0
     d2c:	00028067          	jr	t0

00000d30 <__modsi3>:
     d30:	00008293          	mv	t0,ra
     d34:	0005ca63          	bltz	a1,d48 <__modsi3+0x18>
     d38:	00054c63          	bltz	a0,d50 <__modsi3+0x20>
     d3c:	f79ff0ef          	jal	cb4 <__udivsi3>
     d40:	00058513          	mv	a0,a1
     d44:	00028067          	jr	t0
     d48:	40b005b3          	neg	a1,a1
     d4c:	fe0558e3          	bgez	a0,d3c <__modsi3+0xc>
     d50:	40a00533          	neg	a0,a0
     d54:	f61ff0ef          	jal	cb4 <__udivsi3>
     d58:	40b00533          	neg	a0,a1
     d5c:	00028067          	jr	t0

00000d60 <memset>:
     d60:	00c50633          	add	a2,a0,a2
     d64:	00050793          	mv	a5,a0
     d68:	00c79463          	bne	a5,a2,d70 <memset+0x10>
     d6c:	00008067          	ret
     d70:	00178793          	add	a5,a5,1
     d74:	feb78fa3          	sb	a1,-1(a5)
     d78:	ff1ff06f          	j	d68 <memset+0x8>

00000d7c <memcpy>:
     d7c:	00000793          	li	a5,0
     d80:	00c79463          	bne	a5,a2,d88 <memcpy+0xc>
     d84:	00008067          	ret
     d88:	00f58733          	add	a4,a1,a5
     d8c:	00074683          	lbu	a3,0(a4)
     d90:	00f50733          	add	a4,a0,a5
     d94:	00178793          	add	a5,a5,1
     d98:	00d70023          	sb	a3,0(a4)
     d9c:	fe5ff06f          	j	d80 <memcpy+0x4>

00000da0 <strlen>:
     da0:	00050793          	mv	a5,a0
     da4:	00000513          	li	a0,0
     da8:	00a78733          	add	a4,a5,a0
     dac:	00074703          	lbu	a4,0(a4)
     db0:	00071463          	bnez	a4,db8 <strlen+0x18>
     db4:	00008067          	ret
     db8:	00150513          	add	a0,a0,1
     dbc:	fedff06f          	j	da8 <strlen+0x8>

00000dc0 <strncmp>:
     dc0:	00000793          	li	a5,0
     dc4:	00c79663          	bne	a5,a2,dd0 <strncmp+0x10>
     dc8:	00000513          	li	a0,0
     dcc:	00008067          	ret
     dd0:	00f50733          	add	a4,a0,a5
     dd4:	00074683          	lbu	a3,0(a4)
     dd8:	00f58733          	add	a4,a1,a5
     ddc:	00074703          	lbu	a4,0(a4)
     de0:	00e6e863          	bltu	a3,a4,df0 <strncmp+0x30>
     de4:	00d76a63          	bltu	a4,a3,df8 <strncmp+0x38>
     de8:	00178793          	add	a5,a5,1
     dec:	fd9ff06f          	j	dc4 <strncmp+0x4>
     df0:	fff00513          	li	a0,-1
     df4:	00008067          	ret
     df8:	00100513          	li	a0,1
     dfc:	00008067          	ret

00000e00 <strncpy>:
     e00:	00000793          	li	a5,0
     e04:	00f61463          	bne	a2,a5,e0c <strncpy+0xc>
     e08:	00008067          	ret
     e0c:	00f58733          	add	a4,a1,a5
     e10:	00074683          	lbu	a3,0(a4)
     e14:	00f50733          	add	a4,a0,a5
     e18:	00178793          	add	a5,a5,1
     e1c:	00d70023          	sb	a3,0(a4)
     e20:	fe5ff06f          	j	e04 <strncpy+0x4>

00000e24 <strcpy>:
     e24:	0005c783          	lbu	a5,0(a1)
     e28:	00079663          	bnez	a5,e34 <strcpy+0x10>
     e2c:	00050023          	sb	zero,0(a0)
     e30:	00008067          	ret
     e34:	00150513          	add	a0,a0,1
     e38:	00158593          	add	a1,a1,1
     e3c:	fef50fa3          	sb	a5,-1(a0)
     e40:	fe5ff06f          	j	e24 <strcpy>

00000e44 <strcat>:
     e44:	00050793          	mv	a5,a0
     e48:	0007c683          	lbu	a3,0(a5)
     e4c:	00078713          	mv	a4,a5
     e50:	00178793          	add	a5,a5,1
     e54:	fe069ae3          	bnez	a3,e48 <strcat+0x4>
     e58:	0005c783          	lbu	a5,0(a1)
     e5c:	00158593          	add	a1,a1,1
     e60:	00170713          	add	a4,a4,1
     e64:	fef70fa3          	sb	a5,-1(a4)
     e68:	fe0798e3          	bnez	a5,e58 <strcat+0x14>
     e6c:	00008067          	ret

00000e70 <oled_wait>:
     e70:	00000013          	nop
     e74:	00000013          	nop
     e78:	00000013          	nop
     e7c:	00000013          	nop
     e80:	00000013          	nop
     e84:	00000013          	nop
     e88:	00000013          	nop
     e8c:	00008067          	ret

00000e90 <oled_init_mode>:
     e90:	000067b7          	lui	a5,0x6
     e94:	abc7a703          	lw	a4,-1348(a5) # 5abc <OLED_RST>
     e98:	ff010113          	add	sp,sp,-16
     e9c:	00912223          	sw	s1,4(sp)
     ea0:	00112623          	sw	ra,12(sp)
     ea4:	00812423          	sw	s0,8(sp)
     ea8:	00072023          	sw	zero,0(a4)
     eac:	00050493          	mv	s1,a0
     eb0:	00040737          	lui	a4,0x40
     eb4:	00000013          	nop
     eb8:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     ebc:	fe071ce3          	bnez	a4,eb4 <oled_init_mode+0x24>
     ec0:	abc7a703          	lw	a4,-1348(a5)
     ec4:	00100693          	li	a3,1
     ec8:	00d72023          	sw	a3,0(a4)
     ecc:	00040737          	lui	a4,0x40
     ed0:	00000013          	nop
     ed4:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     ed8:	fe071ce3          	bnez	a4,ed0 <oled_init_mode+0x40>
     edc:	abc7a783          	lw	a5,-1348(a5)
     ee0:	0007a023          	sw	zero,0(a5)
     ee4:	000407b7          	lui	a5,0x40
     ee8:	00000013          	nop
     eec:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     ef0:	fe079ce3          	bnez	a5,ee8 <oled_init_mode+0x58>
     ef4:	00006737          	lui	a4,0x6
     ef8:	ac072783          	lw	a5,-1344(a4) # 5ac0 <OLED>
     efc:	2af00693          	li	a3,687
     f00:	00d7a023          	sw	a3,0(a5)
     f04:	000407b7          	lui	a5,0x40
     f08:	00000013          	nop
     f0c:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     f10:	fe079ce3          	bnez	a5,f08 <oled_init_mode+0x78>
     f14:	ac072403          	lw	s0,-1344(a4)
     f18:	2a000793          	li	a5,672
     f1c:	00f42023          	sw	a5,0(s0)
     f20:	00000097          	auipc	ra,0x0
     f24:	f50080e7          	jalr	-176(ra) # e70 <oled_wait>
     f28:	4a000793          	li	a5,1184
     f2c:	00048463          	beqz	s1,f34 <oled_init_mode+0xa4>
     f30:	42000793          	li	a5,1056
     f34:	00f42023          	sw	a5,0(s0)
     f38:	00000097          	auipc	ra,0x0
     f3c:	f38080e7          	jalr	-200(ra) # e70 <oled_wait>
     f40:	2fd00793          	li	a5,765
     f44:	00f42023          	sw	a5,0(s0)
     f48:	00000097          	auipc	ra,0x0
     f4c:	f28080e7          	jalr	-216(ra) # e70 <oled_wait>
     f50:	4b100793          	li	a5,1201
     f54:	00f42023          	sw	a5,0(s0)
     f58:	00000097          	auipc	ra,0x0
     f5c:	f18080e7          	jalr	-232(ra) # e70 <oled_wait>
     f60:	2a200793          	li	a5,674
     f64:	00f42023          	sw	a5,0(s0)
     f68:	00000097          	auipc	ra,0x0
     f6c:	f08080e7          	jalr	-248(ra) # e70 <oled_wait>
     f70:	40000793          	li	a5,1024
     f74:	00f42023          	sw	a5,0(s0)
     f78:	00812403          	lw	s0,8(sp)
     f7c:	00c12083          	lw	ra,12(sp)
     f80:	00412483          	lw	s1,4(sp)
     f84:	01010113          	add	sp,sp,16
     f88:	00000317          	auipc	t1,0x0
     f8c:	ee830067          	jr	-280(t1) # e70 <oled_wait>

00000f90 <oled_init>:
     f90:	00000513          	li	a0,0
     f94:	00000317          	auipc	t1,0x0
     f98:	efc30067          	jr	-260(t1) # e90 <oled_init_mode>

00000f9c <oled_fullscreen>:
     f9c:	ff010113          	add	sp,sp,-16
     fa0:	000067b7          	lui	a5,0x6
     fa4:	00812423          	sw	s0,8(sp)
     fa8:	ac07a403          	lw	s0,-1344(a5) # 5ac0 <OLED>
     fac:	00112623          	sw	ra,12(sp)
     fb0:	00912223          	sw	s1,4(sp)
     fb4:	01212023          	sw	s2,0(sp)
     fb8:	21500793          	li	a5,533
     fbc:	00f42023          	sw	a5,0(s0)
     fc0:	40000913          	li	s2,1024
     fc4:	00000097          	auipc	ra,0x0
     fc8:	eac080e7          	jalr	-340(ra) # e70 <oled_wait>
     fcc:	47f00493          	li	s1,1151
     fd0:	01242023          	sw	s2,0(s0)
     fd4:	00000097          	auipc	ra,0x0
     fd8:	e9c080e7          	jalr	-356(ra) # e70 <oled_wait>
     fdc:	00942023          	sw	s1,0(s0)
     fe0:	00000097          	auipc	ra,0x0
     fe4:	e90080e7          	jalr	-368(ra) # e70 <oled_wait>
     fe8:	27500793          	li	a5,629
     fec:	00f42023          	sw	a5,0(s0)
     ff0:	00000097          	auipc	ra,0x0
     ff4:	e80080e7          	jalr	-384(ra) # e70 <oled_wait>
     ff8:	01242023          	sw	s2,0(s0)
     ffc:	00000097          	auipc	ra,0x0
    1000:	e74080e7          	jalr	-396(ra) # e70 <oled_wait>
    1004:	00942023          	sw	s1,0(s0)
    1008:	00000097          	auipc	ra,0x0
    100c:	e68080e7          	jalr	-408(ra) # e70 <oled_wait>
    1010:	25c00793          	li	a5,604
    1014:	00f42023          	sw	a5,0(s0)
    1018:	00812403          	lw	s0,8(sp)
    101c:	00c12083          	lw	ra,12(sp)
    1020:	00412483          	lw	s1,4(sp)
    1024:	00012903          	lw	s2,0(sp)
    1028:	01010113          	add	sp,sp,16
    102c:	00000317          	auipc	t1,0x0
    1030:	e4430067          	jr	-444(t1) # e70 <oled_wait>

00001034 <oled_wait>:
    1034:	00000013          	nop
    1038:	00000013          	nop
    103c:	00000013          	nop
    1040:	00000013          	nop
    1044:	00000013          	nop
    1048:	00000013          	nop
    104c:	00000013          	nop
    1050:	00008067          	ret

00001054 <display_framebuffer>:
    1054:	00006537          	lui	a0,0x6
    1058:	fc850513          	add	a0,a0,-56 # 5fc8 <framebuffer>
    105c:	00008067          	ret

00001060 <display_set_cursor>:
    1060:	000067b7          	lui	a5,0x6
    1064:	f4a7aa23          	sw	a0,-172(a5) # 5f54 <cursor_x>
    1068:	000067b7          	lui	a5,0x6
    106c:	f4b7a823          	sw	a1,-176(a5) # 5f50 <cursor_y>
    1070:	00008067          	ret

00001074 <display_set_front_back_color>:
    1074:	000067b7          	lui	a5,0x6
    1078:	f4a786a3          	sb	a0,-179(a5) # 5f4d <front_color>
    107c:	000067b7          	lui	a5,0x6
    1080:	f4b78623          	sb	a1,-180(a5) # 5f4c <back_color>
    1084:	00008067          	ret

00001088 <display_putchar>:
    1088:	00a00793          	li	a5,10
    108c:	00006837          	lui	a6,0x6
    1090:	02f51663          	bne	a0,a5,10bc <display_putchar+0x34>
    1094:	00006737          	lui	a4,0x6
    1098:	f5072783          	lw	a5,-176(a4) # 5f50 <cursor_y>
    109c:	f4082a23          	sw	zero,-172(a6) # 5f54 <cursor_x>
    10a0:	00878793          	add	a5,a5,8
    10a4:	f4f72823          	sw	a5,-176(a4)
    10a8:	07f00713          	li	a4,127
    10ac:	00f75663          	bge	a4,a5,10b8 <display_putchar+0x30>
    10b0:	000067b7          	lui	a5,0x6
    10b4:	f407a823          	sw	zero,-176(a5) # 5f50 <cursor_y>
    10b8:	00008067          	ret
    10bc:	ff010113          	add	sp,sp,-16
    10c0:	00812623          	sw	s0,12(sp)
    10c4:	00912423          	sw	s1,8(sp)
    10c8:	01f00713          	li	a4,31
    10cc:	f5482783          	lw	a5,-172(a6)
    10d0:	0ca75063          	bge	a4,a0,1190 <display_putchar+0x108>
    10d4:	00006737          	lui	a4,0x6
    10d8:	f5072883          	lw	a7,-176(a4) # 5f50 <cursor_y>
    10dc:	08000613          	li	a2,128
    10e0:	00800713          	li	a4,8
    10e4:	41160633          	sub	a2,a2,a7
    10e8:	00c75463          	bge	a4,a2,10f0 <display_putchar+0x68>
    10ec:	00800613          	li	a2,8
    10f0:	08000593          	li	a1,128
    10f4:	40f585b3          	sub	a1,a1,a5
    10f8:	00500713          	li	a4,5
    10fc:	00b75463          	bge	a4,a1,1104 <display_putchar+0x7c>
    1100:	00500593          	li	a1,5
    1104:	00006737          	lui	a4,0x6
    1108:	f4c74383          	lbu	t2,-180(a4) # 5f4c <back_color>
    110c:	00006737          	lui	a4,0x6
    1110:	f4d74403          	lbu	s0,-179(a4) # 5f4d <front_color>
    1114:	00251713          	sll	a4,a0,0x2
    1118:	00a70733          	add	a4,a4,a0
    111c:	000066b7          	lui	a3,0x6
    1120:	00006537          	lui	a0,0x6
    1124:	ac868693          	add	a3,a3,-1336 # 5ac8 <font>
    1128:	fc850513          	add	a0,a0,-56 # 5fc8 <framebuffer>
    112c:	00d70733          	add	a4,a4,a3
    1130:	00779f93          	sll	t6,a5,0x7
    1134:	00000693          	li	a3,0
    1138:	00100493          	li	s1,1
    113c:	01150533          	add	a0,a0,a7
    1140:	04c6d863          	bge	a3,a2,1190 <display_putchar+0x108>
    1144:	00d492b3          	sll	t0,s1,a3
    1148:	00070e13          	mv	t3,a4
    114c:	000f8313          	mv	t1,t6
    1150:	00000893          	li	a7,0
    1154:	0300006f          	j	1184 <display_putchar+0xfc>
    1158:	f60e4e83          	lbu	t4,-160(t3)
    115c:	00040f13          	mv	t5,s0
    1160:	005efeb3          	and	t4,t4,t0
    1164:	000e9463          	bnez	t4,116c <display_putchar+0xe4>
    1168:	00038f13          	mv	t5,t2
    116c:	00650eb3          	add	t4,a0,t1
    1170:	00de8eb3          	add	t4,t4,a3
    1174:	01ee8023          	sb	t5,0(t4)
    1178:	00188893          	add	a7,a7,1
    117c:	08030313          	add	t1,t1,128
    1180:	001e0e13          	add	t3,t3,1
    1184:	fcb8cae3          	blt	a7,a1,1158 <display_putchar+0xd0>
    1188:	00168693          	add	a3,a3,1
    118c:	fb5ff06f          	j	1140 <display_putchar+0xb8>
    1190:	00578793          	add	a5,a5,5
    1194:	07f00713          	li	a4,127
    1198:	00f74663          	blt	a4,a5,11a4 <display_putchar+0x11c>
    119c:	f4f82a23          	sw	a5,-172(a6)
    11a0:	0240006f          	j	11c4 <display_putchar+0x13c>
    11a4:	000066b7          	lui	a3,0x6
    11a8:	f506a783          	lw	a5,-176(a3) # 5f50 <cursor_y>
    11ac:	f4082a23          	sw	zero,-172(a6)
    11b0:	00878793          	add	a5,a5,8
    11b4:	f4f6a823          	sw	a5,-176(a3)
    11b8:	00f75663          	bge	a4,a5,11c4 <display_putchar+0x13c>
    11bc:	000067b7          	lui	a5,0x6
    11c0:	f407a823          	sw	zero,-176(a5) # 5f50 <cursor_y>
    11c4:	00c12403          	lw	s0,12(sp)
    11c8:	00812483          	lw	s1,8(sp)
    11cc:	01010113          	add	sp,sp,16
    11d0:	00008067          	ret

000011d4 <display_refresh>:
    11d4:	fe010113          	add	sp,sp,-32
    11d8:	000067b7          	lui	a5,0x6
    11dc:	01212823          	sw	s2,16(sp)
    11e0:	ac07a903          	lw	s2,-1344(a5) # 5ac0 <OLED>
    11e4:	01312623          	sw	s3,12(sp)
    11e8:	000069b7          	lui	s3,0x6
    11ec:	00912a23          	sw	s1,20(sp)
    11f0:	01412423          	sw	s4,8(sp)
    11f4:	00112e23          	sw	ra,28(sp)
    11f8:	00812c23          	sw	s0,24(sp)
    11fc:	00000493          	li	s1,0
    1200:	fc898993          	add	s3,s3,-56 # 5fc8 <framebuffer>
    1204:	00004a37          	lui	s4,0x4
    1208:	013487b3          	add	a5,s1,s3
    120c:	0007c403          	lbu	s0,0(a5)
    1210:	00148493          	add	s1,s1,1
    1214:	00245413          	srl	s0,s0,0x2
    1218:	40046413          	or	s0,s0,1024
    121c:	00892023          	sw	s0,0(s2)
    1220:	00000097          	auipc	ra,0x0
    1224:	e14080e7          	jalr	-492(ra) # 1034 <oled_wait>
    1228:	00892023          	sw	s0,0(s2)
    122c:	00000097          	auipc	ra,0x0
    1230:	e08080e7          	jalr	-504(ra) # 1034 <oled_wait>
    1234:	00892023          	sw	s0,0(s2)
    1238:	00000097          	auipc	ra,0x0
    123c:	dfc080e7          	jalr	-516(ra) # 1034 <oled_wait>
    1240:	fd4494e3          	bne	s1,s4,1208 <display_refresh+0x34>
    1244:	01c12083          	lw	ra,28(sp)
    1248:	01812403          	lw	s0,24(sp)
    124c:	01412483          	lw	s1,20(sp)
    1250:	01012903          	lw	s2,16(sp)
    1254:	00c12983          	lw	s3,12(sp)
    1258:	00812a03          	lw	s4,8(sp)
    125c:	02010113          	add	sp,sp,32
    1260:	00008067          	ret

00001264 <print_string>:
    1264:	ff010113          	add	sp,sp,-16
    1268:	00812423          	sw	s0,8(sp)
    126c:	00912223          	sw	s1,4(sp)
    1270:	00112623          	sw	ra,12(sp)
    1274:	00050413          	mv	s0,a0
    1278:	000064b7          	lui	s1,0x6
    127c:	00044503          	lbu	a0,0(s0)
    1280:	00051c63          	bnez	a0,1298 <print_string+0x34>
    1284:	00c12083          	lw	ra,12(sp)
    1288:	00812403          	lw	s0,8(sp)
    128c:	00412483          	lw	s1,4(sp)
    1290:	01010113          	add	sp,sp,16
    1294:	00008067          	ret
    1298:	f584a783          	lw	a5,-168(s1) # 5f58 <f_putchar>
    129c:	00140413          	add	s0,s0,1
    12a0:	000780e7          	jalr	a5
    12a4:	fd9ff06f          	j	127c <print_string+0x18>

000012a8 <print_dec>:
    12a8:	ef010113          	add	sp,sp,-272
    12ac:	10812423          	sw	s0,264(sp)
    12b0:	10912223          	sw	s1,260(sp)
    12b4:	10112623          	sw	ra,268(sp)
    12b8:	11212023          	sw	s2,256(sp)
    12bc:	00050413          	mv	s0,a0
    12c0:	000064b7          	lui	s1,0x6
    12c4:	08045063          	bgez	s0,1344 <print_dec+0x9c>
    12c8:	f584a783          	lw	a5,-168(s1) # 5f58 <f_putchar>
    12cc:	02d00513          	li	a0,45
    12d0:	40800433          	neg	s0,s0
    12d4:	000780e7          	jalr	a5
    12d8:	fedff06f          	j	12c4 <print_dec+0x1c>
    12dc:	00040513          	mv	a0,s0
    12e0:	00a00593          	li	a1,10
    12e4:	00000097          	auipc	ra,0x0
    12e8:	9c8080e7          	jalr	-1592(ra) # cac <__divsi3>
    12ec:	00251793          	sll	a5,a0,0x2
    12f0:	00f507b3          	add	a5,a0,a5
    12f4:	00179793          	sll	a5,a5,0x1
    12f8:	40f40433          	sub	s0,s0,a5
    12fc:	00148493          	add	s1,s1,1
    1300:	fe848fa3          	sb	s0,-1(s1)
    1304:	00050413          	mv	s0,a0
    1308:	fc041ae3          	bnez	s0,12dc <print_dec+0x34>
    130c:	fd2488e3          	beq	s1,s2,12dc <print_dec+0x34>
    1310:	00006437          	lui	s0,0x6
    1314:	fff4c503          	lbu	a0,-1(s1)
    1318:	f5842783          	lw	a5,-168(s0) # 5f58 <f_putchar>
    131c:	fff48493          	add	s1,s1,-1
    1320:	03050513          	add	a0,a0,48
    1324:	000780e7          	jalr	a5
    1328:	ff2496e3          	bne	s1,s2,1314 <print_dec+0x6c>
    132c:	10c12083          	lw	ra,268(sp)
    1330:	10812403          	lw	s0,264(sp)
    1334:	10412483          	lw	s1,260(sp)
    1338:	10012903          	lw	s2,256(sp)
    133c:	11010113          	add	sp,sp,272
    1340:	00008067          	ret
    1344:	00010493          	mv	s1,sp
    1348:	00048913          	mv	s2,s1
    134c:	fbdff06f          	j	1308 <print_dec+0x60>

00001350 <print_hex_digits>:
    1350:	fe010113          	add	sp,sp,-32
    1354:	00812c23          	sw	s0,24(sp)
    1358:	01212823          	sw	s2,16(sp)
    135c:	fff58413          	add	s0,a1,-1
    1360:	00006937          	lui	s2,0x6
    1364:	00912a23          	sw	s1,20(sp)
    1368:	01312623          	sw	s3,12(sp)
    136c:	00112e23          	sw	ra,28(sp)
    1370:	00050493          	mv	s1,a0
    1374:	00241413          	sll	s0,s0,0x2
    1378:	ca890913          	add	s2,s2,-856 # 5ca8 <font+0x1e0>
    137c:	000069b7          	lui	s3,0x6
    1380:	02045063          	bgez	s0,13a0 <print_hex_digits+0x50>
    1384:	01c12083          	lw	ra,28(sp)
    1388:	01812403          	lw	s0,24(sp)
    138c:	01412483          	lw	s1,20(sp)
    1390:	01012903          	lw	s2,16(sp)
    1394:	00c12983          	lw	s3,12(sp)
    1398:	02010113          	add	sp,sp,32
    139c:	00008067          	ret
    13a0:	0084d7b3          	srl	a5,s1,s0
    13a4:	00f7f793          	and	a5,a5,15
    13a8:	00f907b3          	add	a5,s2,a5
    13ac:	f589a703          	lw	a4,-168(s3) # 5f58 <f_putchar>
    13b0:	0007c503          	lbu	a0,0(a5)
    13b4:	ffc40413          	add	s0,s0,-4
    13b8:	000700e7          	jalr	a4
    13bc:	fc5ff06f          	j	1380 <print_hex_digits+0x30>

000013c0 <print_hex>:
    13c0:	00800593          	li	a1,8
    13c4:	00000317          	auipc	t1,0x0
    13c8:	f8c30067          	jr	-116(t1) # 1350 <print_hex_digits>

000013cc <printf>:
    13cc:	fb010113          	add	sp,sp,-80
    13d0:	04f12223          	sw	a5,68(sp)
    13d4:	03410793          	add	a5,sp,52
    13d8:	02812423          	sw	s0,40(sp)
    13dc:	02912223          	sw	s1,36(sp)
    13e0:	03212023          	sw	s2,32(sp)
    13e4:	01312e23          	sw	s3,28(sp)
    13e8:	01412c23          	sw	s4,24(sp)
    13ec:	01512a23          	sw	s5,20(sp)
    13f0:	01612823          	sw	s6,16(sp)
    13f4:	02112623          	sw	ra,44(sp)
    13f8:	00050413          	mv	s0,a0
    13fc:	02b12a23          	sw	a1,52(sp)
    1400:	02c12c23          	sw	a2,56(sp)
    1404:	02d12e23          	sw	a3,60(sp)
    1408:	04e12023          	sw	a4,64(sp)
    140c:	05012423          	sw	a6,72(sp)
    1410:	05112623          	sw	a7,76(sp)
    1414:	00f12623          	sw	a5,12(sp)
    1418:	02500913          	li	s2,37
    141c:	000064b7          	lui	s1,0x6
    1420:	07300993          	li	s3,115
    1424:	07800a13          	li	s4,120
    1428:	06400a93          	li	s5,100
    142c:	06300b13          	li	s6,99
    1430:	00044503          	lbu	a0,0(s0)
    1434:	02051663          	bnez	a0,1460 <printf+0x94>
    1438:	02c12083          	lw	ra,44(sp)
    143c:	02812403          	lw	s0,40(sp)
    1440:	02412483          	lw	s1,36(sp)
    1444:	02012903          	lw	s2,32(sp)
    1448:	01c12983          	lw	s3,28(sp)
    144c:	01812a03          	lw	s4,24(sp)
    1450:	01412a83          	lw	s5,20(sp)
    1454:	01012b03          	lw	s6,16(sp)
    1458:	05010113          	add	sp,sp,80
    145c:	00008067          	ret
    1460:	09251863          	bne	a0,s2,14f0 <printf+0x124>
    1464:	00144503          	lbu	a0,1(s0)
    1468:	03351463          	bne	a0,s3,1490 <printf+0xc4>
    146c:	00c12783          	lw	a5,12(sp)
    1470:	0007a503          	lw	a0,0(a5)
    1474:	00478713          	add	a4,a5,4
    1478:	00e12623          	sw	a4,12(sp)
    147c:	00000097          	auipc	ra,0x0
    1480:	de8080e7          	jalr	-536(ra) # 1264 <print_string>
    1484:	00140413          	add	s0,s0,1
    1488:	00140413          	add	s0,s0,1
    148c:	fa5ff06f          	j	1430 <printf+0x64>
    1490:	03451063          	bne	a0,s4,14b0 <printf+0xe4>
    1494:	00c12783          	lw	a5,12(sp)
    1498:	0007a503          	lw	a0,0(a5)
    149c:	00478713          	add	a4,a5,4
    14a0:	00e12623          	sw	a4,12(sp)
    14a4:	00000097          	auipc	ra,0x0
    14a8:	f1c080e7          	jalr	-228(ra) # 13c0 <print_hex>
    14ac:	fd9ff06f          	j	1484 <printf+0xb8>
    14b0:	03551063          	bne	a0,s5,14d0 <printf+0x104>
    14b4:	00c12783          	lw	a5,12(sp)
    14b8:	0007a503          	lw	a0,0(a5)
    14bc:	00478713          	add	a4,a5,4
    14c0:	00e12623          	sw	a4,12(sp)
    14c4:	00000097          	auipc	ra,0x0
    14c8:	de4080e7          	jalr	-540(ra) # 12a8 <print_dec>
    14cc:	fb9ff06f          	j	1484 <printf+0xb8>
    14d0:	f584a783          	lw	a5,-168(s1) # 5f58 <f_putchar>
    14d4:	01651a63          	bne	a0,s6,14e8 <printf+0x11c>
    14d8:	00c12703          	lw	a4,12(sp)
    14dc:	00072503          	lw	a0,0(a4)
    14e0:	00470693          	add	a3,a4,4
    14e4:	00d12623          	sw	a3,12(sp)
    14e8:	000780e7          	jalr	a5
    14ec:	f99ff06f          	j	1484 <printf+0xb8>
    14f0:	f584a783          	lw	a5,-168(s1)
    14f4:	000780e7          	jalr	a5
    14f8:	f91ff06f          	j	1488 <printf+0xbc>

000014fc <__mulsi3>:
    14fc:	00050793          	mv	a5,a0
    1500:	00000513          	li	a0,0
    1504:	00079463          	bnez	a5,150c <__mulsi3+0x10>
    1508:	00008067          	ret
    150c:	0017f713          	and	a4,a5,1
    1510:	00070463          	beqz	a4,1518 <__mulsi3+0x1c>
    1514:	00b50533          	add	a0,a0,a1
    1518:	0017d793          	srl	a5,a5,0x1
    151c:	00159593          	sll	a1,a1,0x1
    1520:	fe5ff06f          	j	1504 <__mulsi3+0x8>

00001524 <fat_list_insert_last>:
    1524:	00452783          	lw	a5,4(a0)
    1528:	04079263          	bnez	a5,156c <fat_list_insert_last+0x48>
    152c:	00052783          	lw	a5,0(a0)
    1530:	00079c63          	bnez	a5,1548 <fat_list_insert_last+0x24>
    1534:	00b52023          	sw	a1,0(a0)
    1538:	00b52223          	sw	a1,4(a0)
    153c:	0005a023          	sw	zero,0(a1)
    1540:	0005a223          	sw	zero,4(a1)
    1544:	00008067          	ret
    1548:	0007a703          	lw	a4,0(a5)
    154c:	00f5a223          	sw	a5,4(a1)
    1550:	00e5a023          	sw	a4,0(a1)
    1554:	00071863          	bnez	a4,1564 <fat_list_insert_last+0x40>
    1558:	00b52023          	sw	a1,0(a0)
    155c:	00b7a023          	sw	a1,0(a5)
    1560:	00008067          	ret
    1564:	00b72223          	sw	a1,4(a4)
    1568:	ff5ff06f          	j	155c <fat_list_insert_last+0x38>
    156c:	0047a703          	lw	a4,4(a5)
    1570:	00f5a023          	sw	a5,0(a1)
    1574:	00e5a223          	sw	a4,4(a1)
    1578:	00071863          	bnez	a4,1588 <fat_list_insert_last+0x64>
    157c:	00b52223          	sw	a1,4(a0)
    1580:	00b7a223          	sw	a1,4(a5)
    1584:	00008067          	ret
    1588:	00b72023          	sw	a1,0(a4)
    158c:	ff5ff06f          	j	1580 <fat_list_insert_last+0x5c>

00001590 <FileString_StrCmpNoCase>:
    1590:	00050893          	mv	a7,a0
    1594:	00000693          	li	a3,0
    1598:	01900313          	li	t1,25
    159c:	00c69663          	bne	a3,a2,15a8 <FileString_StrCmpNoCase+0x18>
    15a0:	00000513          	li	a0,0
    15a4:	00008067          	ret
    15a8:	00d887b3          	add	a5,a7,a3
    15ac:	0007c703          	lbu	a4,0(a5)
    15b0:	00d587b3          	add	a5,a1,a3
    15b4:	0007c783          	lbu	a5,0(a5)
    15b8:	fbf70513          	add	a0,a4,-65
    15bc:	0ff57513          	zext.b	a0,a0
    15c0:	fbf78813          	add	a6,a5,-65
    15c4:	0ff87813          	zext.b	a6,a6
    15c8:	02a36863          	bltu	t1,a0,15f8 <FileString_StrCmpNoCase+0x68>
    15cc:	02070713          	add	a4,a4,32
    15d0:	0ff77713          	zext.b	a4,a4
    15d4:	01036c63          	bltu	t1,a6,15ec <FileString_StrCmpNoCase+0x5c>
    15d8:	02078793          	add	a5,a5,32
    15dc:	0ff7f793          	zext.b	a5,a5
    15e0:	40f70533          	sub	a0,a4,a5
    15e4:	02f70e63          	beq	a4,a5,1620 <FileString_StrCmpNoCase+0x90>
    15e8:	00008067          	ret
    15ec:	40f70533          	sub	a0,a4,a5
    15f0:	02f70863          	beq	a4,a5,1620 <FileString_StrCmpNoCase+0x90>
    15f4:	00008067          	ret
    15f8:	01036c63          	bltu	t1,a6,1610 <FileString_StrCmpNoCase+0x80>
    15fc:	02078793          	add	a5,a5,32
    1600:	0ff7f793          	zext.b	a5,a5
    1604:	40f70533          	sub	a0,a4,a5
    1608:	00f70c63          	beq	a4,a5,1620 <FileString_StrCmpNoCase+0x90>
    160c:	00008067          	ret
    1610:	40f70533          	sub	a0,a4,a5
    1614:	f8f718e3          	bne	a4,a5,15a4 <FileString_StrCmpNoCase+0x14>
    1618:	f80706e3          	beqz	a4,15a4 <FileString_StrCmpNoCase+0x14>
    161c:	f80784e3          	beqz	a5,15a4 <FileString_StrCmpNoCase+0x14>
    1620:	00168693          	add	a3,a3,1
    1624:	f79ff06f          	j	159c <FileString_StrCmpNoCase+0xc>

00001628 <FileString_GetExtension>:
    1628:	00050713          	mv	a4,a0
    162c:	00050793          	mv	a5,a0
    1630:	02e00613          	li	a2,46
    1634:	fff00513          	li	a0,-1
    1638:	0007c683          	lbu	a3,0(a5)
    163c:	00069463          	bnez	a3,1644 <FileString_GetExtension+0x1c>
    1640:	00008067          	ret
    1644:	00c69463          	bne	a3,a2,164c <FileString_GetExtension+0x24>
    1648:	40e78533          	sub	a0,a5,a4
    164c:	00178793          	add	a5,a5,1
    1650:	fe9ff06f          	j	1638 <FileString_GetExtension+0x10>

00001654 <fatfs_fat_writeback>:
    1654:	00059663          	bnez	a1,1660 <fatfs_fat_writeback+0xc>
    1658:	00000513          	li	a0,0
    165c:	00008067          	ret
    1660:	2045a703          	lw	a4,516(a1)
    1664:	ff010113          	add	sp,sp,-16
    1668:	00812423          	sw	s0,8(sp)
    166c:	00112623          	sw	ra,12(sp)
    1670:	00058413          	mv	s0,a1
    1674:	00070a63          	beqz	a4,1688 <fatfs_fat_writeback+0x34>
    1678:	03852683          	lw	a3,56(a0)
    167c:	00050793          	mv	a5,a0
    1680:	00069863          	bnez	a3,1690 <fatfs_fat_writeback+0x3c>
    1684:	20042223          	sw	zero,516(s0)
    1688:	00100513          	li	a0,1
    168c:	0380006f          	j	16c4 <fatfs_fat_writeback+0x70>
    1690:	2005a503          	lw	a0,512(a1)
    1694:	0147a703          	lw	a4,20(a5)
    1698:	0207a583          	lw	a1,32(a5)
    169c:	00100613          	li	a2,1
    16a0:	40e507b3          	sub	a5,a0,a4
    16a4:	00178793          	add	a5,a5,1
    16a8:	00f5f663          	bgeu	a1,a5,16b4 <fatfs_fat_writeback+0x60>
    16ac:	00b70733          	add	a4,a4,a1
    16b0:	40a70633          	sub	a2,a4,a0
    16b4:	00040593          	mv	a1,s0
    16b8:	000680e7          	jalr	a3
    16bc:	fc0514e3          	bnez	a0,1684 <fatfs_fat_writeback+0x30>
    16c0:	00000513          	li	a0,0
    16c4:	00c12083          	lw	ra,12(sp)
    16c8:	00812403          	lw	s0,8(sp)
    16cc:	01010113          	add	sp,sp,16
    16d0:	00008067          	ret

000016d4 <fatfs_fat_read_sector>:
    16d4:	fe010113          	add	sp,sp,-32
    16d8:	01212823          	sw	s2,16(sp)
    16dc:	25452903          	lw	s2,596(a0)
    16e0:	00812c23          	sw	s0,24(sp)
    16e4:	00912a23          	sw	s1,20(sp)
    16e8:	01312623          	sw	s3,12(sp)
    16ec:	00112e23          	sw	ra,28(sp)
    16f0:	00050993          	mv	s3,a0
    16f4:	00058493          	mv	s1,a1
    16f8:	00000413          	li	s0,0
    16fc:	04091663          	bnez	s2,1748 <fatfs_fat_read_sector+0x74>
    1700:	2549a783          	lw	a5,596(s3)
    1704:	20f42623          	sw	a5,524(s0)
    1708:	20442783          	lw	a5,516(s0)
    170c:	2489aa23          	sw	s0,596(s3)
    1710:	06078663          	beqz	a5,177c <fatfs_fat_read_sector+0xa8>
    1714:	00040593          	mv	a1,s0
    1718:	00098513          	mv	a0,s3
    171c:	00000097          	auipc	ra,0x0
    1720:	f38080e7          	jalr	-200(ra) # 1654 <fatfs_fat_writeback>
    1724:	04051c63          	bnez	a0,177c <fatfs_fat_read_sector+0xa8>
    1728:	01c12083          	lw	ra,28(sp)
    172c:	01812403          	lw	s0,24(sp)
    1730:	01412483          	lw	s1,20(sp)
    1734:	00c12983          	lw	s3,12(sp)
    1738:	00090513          	mv	a0,s2
    173c:	01012903          	lw	s2,16(sp)
    1740:	02010113          	add	sp,sp,32
    1744:	00008067          	ret
    1748:	20092783          	lw	a5,512(s2)
    174c:	00f4e663          	bltu	s1,a5,1758 <fatfs_fat_read_sector+0x84>
    1750:	00178713          	add	a4,a5,1
    1754:	04e4ee63          	bltu	s1,a4,17b0 <fatfs_fat_read_sector+0xdc>
    1758:	20c92783          	lw	a5,524(s2)
    175c:	00079663          	bnez	a5,1768 <fatfs_fat_read_sector+0x94>
    1760:	00040a63          	beqz	s0,1774 <fatfs_fat_read_sector+0xa0>
    1764:	20042623          	sw	zero,524(s0)
    1768:	00090413          	mv	s0,s2
    176c:	20c92903          	lw	s2,524(s2)
    1770:	f8dff06f          	j	16fc <fatfs_fat_read_sector+0x28>
    1774:	2409aa23          	sw	zero,596(s3)
    1778:	ff1ff06f          	j	1768 <fatfs_fat_read_sector+0x94>
    177c:	0349a783          	lw	a5,52(s3)
    1780:	20942023          	sw	s1,512(s0)
    1784:	00100613          	li	a2,1
    1788:	00040593          	mv	a1,s0
    178c:	00048513          	mv	a0,s1
    1790:	000780e7          	jalr	a5
    1794:	00051863          	bnez	a0,17a4 <fatfs_fat_read_sector+0xd0>
    1798:	fff00793          	li	a5,-1
    179c:	20f42023          	sw	a5,512(s0)
    17a0:	f89ff06f          	j	1728 <fatfs_fat_read_sector+0x54>
    17a4:	20842423          	sw	s0,520(s0)
    17a8:	00040913          	mv	s2,s0
    17ac:	f7dff06f          	j	1728 <fatfs_fat_read_sector+0x54>
    17b0:	40f484b3          	sub	s1,s1,a5
    17b4:	00949493          	sll	s1,s1,0x9
    17b8:	009904b3          	add	s1,s2,s1
    17bc:	20992423          	sw	s1,520(s2)
    17c0:	f69ff06f          	j	1728 <fatfs_fat_read_sector+0x54>

000017c4 <_allocate_file>:
    17c4:	ff010113          	add	sp,sp,-16
    17c8:	000067b7          	lui	a5,0x6
    17cc:	00812423          	sw	s0,8(sp)
    17d0:	f5c7a403          	lw	s0,-164(a5) # 5f5c <_free_file_list>
    17d4:	00112623          	sw	ra,12(sp)
    17d8:	02040e63          	beqz	s0,1814 <_allocate_file+0x50>
    17dc:	00042703          	lw	a4,0(s0)
    17e0:	00442683          	lw	a3,4(s0)
    17e4:	f5c78793          	add	a5,a5,-164
    17e8:	04071063          	bnez	a4,1828 <_allocate_file+0x64>
    17ec:	00d7a023          	sw	a3,0(a5)
    17f0:	00442683          	lw	a3,4(s0)
    17f4:	02069e63          	bnez	a3,1830 <_allocate_file+0x6c>
    17f8:	00e7a223          	sw	a4,4(a5)
    17fc:	00006537          	lui	a0,0x6
    1800:	00040593          	mv	a1,s0
    1804:	f6450513          	add	a0,a0,-156 # 5f64 <_open_file_list>
    1808:	00000097          	auipc	ra,0x0
    180c:	d1c080e7          	jalr	-740(ra) # 1524 <fat_list_insert_last>
    1810:	bc440413          	add	s0,s0,-1084
    1814:	00c12083          	lw	ra,12(sp)
    1818:	00040513          	mv	a0,s0
    181c:	00812403          	lw	s0,8(sp)
    1820:	01010113          	add	sp,sp,16
    1824:	00008067          	ret
    1828:	00d72223          	sw	a3,4(a4)
    182c:	fc5ff06f          	j	17f0 <_allocate_file+0x2c>
    1830:	00e6a023          	sw	a4,0(a3)
    1834:	fc9ff06f          	j	17fc <_allocate_file+0x38>

00001838 <_free_file>:
    1838:	43c52783          	lw	a5,1084(a0)
    183c:	44052703          	lw	a4,1088(a0)
    1840:	43c50593          	add	a1,a0,1084
    1844:	02079663          	bnez	a5,1870 <_free_file+0x38>
    1848:	000066b7          	lui	a3,0x6
    184c:	f6e6a223          	sw	a4,-156(a3) # 5f64 <_open_file_list>
    1850:	44052703          	lw	a4,1088(a0)
    1854:	02071263          	bnez	a4,1878 <_free_file+0x40>
    1858:	00006737          	lui	a4,0x6
    185c:	f6f72423          	sw	a5,-152(a4) # 5f68 <_open_file_list+0x4>
    1860:	00006537          	lui	a0,0x6
    1864:	f5c50513          	add	a0,a0,-164 # 5f5c <_free_file_list>
    1868:	00000317          	auipc	t1,0x0
    186c:	cbc30067          	jr	-836(t1) # 1524 <fat_list_insert_last>
    1870:	00e7a223          	sw	a4,4(a5)
    1874:	fddff06f          	j	1850 <_free_file+0x18>
    1878:	00f72023          	sw	a5,0(a4)
    187c:	fe5ff06f          	j	1860 <_free_file+0x28>

00001880 <fatfs_lba_of_cluster>:
    1880:	ff010113          	add	sp,sp,-16
    1884:	00812423          	sw	s0,8(sp)
    1888:	00112623          	sw	ra,12(sp)
    188c:	00050413          	mv	s0,a0
    1890:	00058513          	mv	a0,a1
    1894:	00044583          	lbu	a1,0(s0)
    1898:	ffe50513          	add	a0,a0,-2
    189c:	00000097          	auipc	ra,0x0
    18a0:	c60080e7          	jalr	-928(ra) # 14fc <__mulsi3>
    18a4:	00442783          	lw	a5,4(s0)
    18a8:	00f50533          	add	a0,a0,a5
    18ac:	03042783          	lw	a5,48(s0)
    18b0:	00079863          	bnez	a5,18c0 <fatfs_lba_of_cluster+0x40>
    18b4:	02845783          	lhu	a5,40(s0)
    18b8:	4047d793          	sra	a5,a5,0x4
    18bc:	00f50533          	add	a0,a0,a5
    18c0:	00c12083          	lw	ra,12(sp)
    18c4:	00812403          	lw	s0,8(sp)
    18c8:	01010113          	add	sp,sp,16
    18cc:	00008067          	ret

000018d0 <fatfs_sector_read>:
    18d0:	03452783          	lw	a5,52(a0)
    18d4:	00058713          	mv	a4,a1
    18d8:	00070513          	mv	a0,a4
    18dc:	00060593          	mv	a1,a2
    18e0:	00068613          	mv	a2,a3
    18e4:	00078067          	jr	a5

000018e8 <fatfs_sector_write>:
    18e8:	03852783          	lw	a5,56(a0)
    18ec:	00058713          	mv	a4,a1
    18f0:	00070513          	mv	a0,a4
    18f4:	00060593          	mv	a1,a2
    18f8:	00068613          	mv	a2,a3
    18fc:	00078067          	jr	a5

00001900 <fatfs_write_sector>:
    1900:	03852783          	lw	a5,56(a0)
    1904:	0a078863          	beqz	a5,19b4 <fatfs_write_sector+0xb4>
    1908:	fe010113          	add	sp,sp,-32
    190c:	01212823          	sw	s2,16(sp)
    1910:	00068913          	mv	s2,a3
    1914:	03052683          	lw	a3,48(a0)
    1918:	00812c23          	sw	s0,24(sp)
    191c:	00912a23          	sw	s1,20(sp)
    1920:	00112e23          	sw	ra,28(sp)
    1924:	00d5e733          	or	a4,a1,a3
    1928:	00050413          	mv	s0,a0
    192c:	00060493          	mv	s1,a2
    1930:	04071063          	bnez	a4,1970 <fatfs_write_sector+0x70>
    1934:	01052703          	lw	a4,16(a0)
    1938:	06e67063          	bgeu	a2,a4,1998 <fatfs_write_sector+0x98>
    193c:	01c52503          	lw	a0,28(a0)
    1940:	00c42703          	lw	a4,12(s0)
    1944:	00e50533          	add	a0,a0,a4
    1948:	00c50533          	add	a0,a0,a2
    194c:	02090e63          	beqz	s2,1988 <fatfs_write_sector+0x88>
    1950:	00100613          	li	a2,1
    1954:	00090593          	mv	a1,s2
    1958:	01812403          	lw	s0,24(sp)
    195c:	01c12083          	lw	ra,28(sp)
    1960:	01412483          	lw	s1,20(sp)
    1964:	01012903          	lw	s2,16(sp)
    1968:	02010113          	add	sp,sp,32
    196c:	00078067          	jr	a5
    1970:	00f12623          	sw	a5,12(sp)
    1974:	00000097          	auipc	ra,0x0
    1978:	f0c080e7          	jalr	-244(ra) # 1880 <fatfs_lba_of_cluster>
    197c:	00c12783          	lw	a5,12(sp)
    1980:	00a48533          	add	a0,s1,a0
    1984:	fc9ff06f          	j	194c <fatfs_write_sector+0x4c>
    1988:	24a42223          	sw	a0,580(s0)
    198c:	00100613          	li	a2,1
    1990:	04440593          	add	a1,s0,68
    1994:	fc5ff06f          	j	1958 <fatfs_write_sector+0x58>
    1998:	01c12083          	lw	ra,28(sp)
    199c:	01812403          	lw	s0,24(sp)
    19a0:	01412483          	lw	s1,20(sp)
    19a4:	01012903          	lw	s2,16(sp)
    19a8:	00000513          	li	a0,0
    19ac:	02010113          	add	sp,sp,32
    19b0:	00008067          	ret
    19b4:	00000513          	li	a0,0
    19b8:	00008067          	ret

000019bc <fl_init>:
    19bc:	ff010113          	add	sp,sp,-16
    19c0:	00812423          	sw	s0,8(sp)
    19c4:	00006437          	lui	s0,0x6
    19c8:	00112623          	sw	ra,12(sp)
    19cc:	f5c40793          	add	a5,s0,-164 # 5f5c <_free_file_list>
    19d0:	0007a223          	sw	zero,4(a5)
    19d4:	0007a023          	sw	zero,0(a5)
    19d8:	0000b5b7          	lui	a1,0xb
    19dc:	000067b7          	lui	a5,0x6
    19e0:	f6478793          	add	a5,a5,-156 # 5f64 <_open_file_list>
    19e4:	f5c40513          	add	a0,s0,-164
    19e8:	86c58593          	add	a1,a1,-1940 # a86c <_files+0x43c>
    19ec:	0007a223          	sw	zero,4(a5)
    19f0:	0007a023          	sw	zero,0(a5)
    19f4:	00000097          	auipc	ra,0x0
    19f8:	b30080e7          	jalr	-1232(ra) # 1524 <fat_list_insert_last>
    19fc:	0000b5b7          	lui	a1,0xb
    1a00:	f5c40513          	add	a0,s0,-164
    1a04:	cb058593          	add	a1,a1,-848 # acb0 <_files+0x880>
    1a08:	00000097          	auipc	ra,0x0
    1a0c:	b1c080e7          	jalr	-1252(ra) # 1524 <fat_list_insert_last>
    1a10:	00c12083          	lw	ra,12(sp)
    1a14:	00812403          	lw	s0,8(sp)
    1a18:	000067b7          	lui	a5,0x6
    1a1c:	00100713          	li	a4,1
    1a20:	f6e7a823          	sw	a4,-144(a5) # 5f70 <_filelib_init>
    1a24:	01010113          	add	sp,sp,16
    1a28:	00008067          	ret

00001a2c <fl_closedir>:
    1a2c:	00000513          	li	a0,0
    1a30:	00008067          	ret

00001a34 <fatfs_lfn_cache_entry>:
    1a34:	0005c783          	lbu	a5,0(a1)
    1a38:	01300693          	li	a3,19
    1a3c:	01f7f793          	and	a5,a5,31
    1a40:	fff78713          	add	a4,a5,-1
    1a44:	0ff77613          	zext.b	a2,a4
    1a48:	0ac6ea63          	bltu	a3,a2,1afc <fatfs_lfn_cache_entry+0xc8>
    1a4c:	10554683          	lbu	a3,261(a0)
    1a50:	00069463          	bnez	a3,1a58 <fatfs_lfn_cache_entry+0x24>
    1a54:	10f502a3          	sb	a5,261(a0)
    1a58:	00171793          	sll	a5,a4,0x1
    1a5c:	00e787b3          	add	a5,a5,a4
    1a60:	0015c683          	lbu	a3,1(a1)
    1a64:	00279793          	sll	a5,a5,0x2
    1a68:	00e787b3          	add	a5,a5,a4
    1a6c:	00f50533          	add	a0,a0,a5
    1a70:	00d50023          	sb	a3,0(a0)
    1a74:	0035c783          	lbu	a5,3(a1)
    1a78:	0ff00713          	li	a4,255
    1a7c:	02000693          	li	a3,32
    1a80:	00f500a3          	sb	a5,1(a0)
    1a84:	0055c783          	lbu	a5,5(a1)
    1a88:	00f50123          	sb	a5,2(a0)
    1a8c:	0075c783          	lbu	a5,7(a1)
    1a90:	00f501a3          	sb	a5,3(a0)
    1a94:	0095c783          	lbu	a5,9(a1)
    1a98:	00f50223          	sb	a5,4(a0)
    1a9c:	00e5c783          	lbu	a5,14(a1)
    1aa0:	00f502a3          	sb	a5,5(a0)
    1aa4:	0105c783          	lbu	a5,16(a1)
    1aa8:	00f50323          	sb	a5,6(a0)
    1aac:	0125c783          	lbu	a5,18(a1)
    1ab0:	00f503a3          	sb	a5,7(a0)
    1ab4:	0145c783          	lbu	a5,20(a1)
    1ab8:	00f50423          	sb	a5,8(a0)
    1abc:	0165c783          	lbu	a5,22(a1)
    1ac0:	00f504a3          	sb	a5,9(a0)
    1ac4:	0185c783          	lbu	a5,24(a1)
    1ac8:	00f50523          	sb	a5,10(a0)
    1acc:	01c5c783          	lbu	a5,28(a1)
    1ad0:	00f505a3          	sb	a5,11(a0)
    1ad4:	01e5c783          	lbu	a5,30(a1)
    1ad8:	00f50623          	sb	a5,12(a0)
    1adc:	00d00793          	li	a5,13
    1ae0:	00054603          	lbu	a2,0(a0)
    1ae4:	00e61463          	bne	a2,a4,1aec <fatfs_lfn_cache_entry+0xb8>
    1ae8:	00d50023          	sb	a3,0(a0)
    1aec:	fff78793          	add	a5,a5,-1
    1af0:	0ff7f793          	zext.b	a5,a5
    1af4:	00150513          	add	a0,a0,1
    1af8:	fe0794e3          	bnez	a5,1ae0 <fatfs_lfn_cache_entry+0xac>
    1afc:	00008067          	ret

00001b00 <fatfs_lfn_cache_get>:
    1b00:	10554703          	lbu	a4,261(a0)
    1b04:	01400793          	li	a5,20
    1b08:	00f71663          	bne	a4,a5,1b14 <fatfs_lfn_cache_get+0x14>
    1b0c:	10050223          	sb	zero,260(a0)
    1b10:	00008067          	ret
    1b14:	02070063          	beqz	a4,1b34 <fatfs_lfn_cache_get+0x34>
    1b18:	00171793          	sll	a5,a4,0x1
    1b1c:	00e787b3          	add	a5,a5,a4
    1b20:	00279793          	sll	a5,a5,0x2
    1b24:	00e787b3          	add	a5,a5,a4
    1b28:	00f507b3          	add	a5,a0,a5
    1b2c:	00078023          	sb	zero,0(a5)
    1b30:	00008067          	ret
    1b34:	00050023          	sb	zero,0(a0)
    1b38:	00008067          	ret

00001b3c <fatfs_entry_lfn_text>:
    1b3c:	00b54503          	lbu	a0,11(a0)
    1b40:	00f57513          	and	a0,a0,15
    1b44:	ff150513          	add	a0,a0,-15
    1b48:	00153513          	seqz	a0,a0
    1b4c:	00008067          	ret

00001b50 <fatfs_entry_lfn_invalid>:
    1b50:	00054703          	lbu	a4,0(a0)
    1b54:	00050793          	mv	a5,a0
    1b58:	02070463          	beqz	a4,1b80 <fatfs_entry_lfn_invalid+0x30>
    1b5c:	0e500693          	li	a3,229
    1b60:	00100513          	li	a0,1
    1b64:	02d70063          	beq	a4,a3,1b84 <fatfs_entry_lfn_invalid+0x34>
    1b68:	00b7c783          	lbu	a5,11(a5)
    1b6c:	00800713          	li	a4,8
    1b70:	00e78a63          	beq	a5,a4,1b84 <fatfs_entry_lfn_invalid+0x34>
    1b74:	0067f793          	and	a5,a5,6
    1b78:	00f03533          	snez	a0,a5
    1b7c:	00008067          	ret
    1b80:	00100513          	li	a0,1
    1b84:	00008067          	ret

00001b88 <fatfs_entry_lfn_exists>:
    1b88:	00b5c783          	lbu	a5,11(a1)
    1b8c:	00f00693          	li	a3,15
    1b90:	00050713          	mv	a4,a0
    1b94:	02d78a63          	beq	a5,a3,1bc8 <fatfs_entry_lfn_exists+0x40>
    1b98:	0005c683          	lbu	a3,0(a1)
    1b9c:	00000513          	li	a0,0
    1ba0:	02068663          	beqz	a3,1bcc <fatfs_entry_lfn_exists+0x44>
    1ba4:	0e500613          	li	a2,229
    1ba8:	02c68263          	beq	a3,a2,1bcc <fatfs_entry_lfn_exists+0x44>
    1bac:	00800693          	li	a3,8
    1bb0:	00d78e63          	beq	a5,a3,1bcc <fatfs_entry_lfn_exists+0x44>
    1bb4:	0067f793          	and	a5,a5,6
    1bb8:	00079a63          	bnez	a5,1bcc <fatfs_entry_lfn_exists+0x44>
    1bbc:	10574503          	lbu	a0,261(a4)
    1bc0:	00a03533          	snez	a0,a0
    1bc4:	00008067          	ret
    1bc8:	00000513          	li	a0,0
    1bcc:	00008067          	ret

00001bd0 <fatfs_entry_sfn_only>:
    1bd0:	00b54783          	lbu	a5,11(a0)
    1bd4:	00f00713          	li	a4,15
    1bd8:	02e78663          	beq	a5,a4,1c04 <fatfs_entry_sfn_only+0x34>
    1bdc:	00054703          	lbu	a4,0(a0)
    1be0:	00000513          	li	a0,0
    1be4:	02070263          	beqz	a4,1c08 <fatfs_entry_sfn_only+0x38>
    1be8:	0e500693          	li	a3,229
    1bec:	00d70e63          	beq	a4,a3,1c08 <fatfs_entry_sfn_only+0x38>
    1bf0:	00800713          	li	a4,8
    1bf4:	00e78a63          	beq	a5,a4,1c08 <fatfs_entry_sfn_only+0x38>
    1bf8:	0067f793          	and	a5,a5,6
    1bfc:	0017b513          	seqz	a0,a5
    1c00:	00008067          	ret
    1c04:	00000513          	li	a0,0
    1c08:	00008067          	ret

00001c0c <fatfs_entry_is_dir>:
    1c0c:	00b54503          	lbu	a0,11(a0)
    1c10:	00455513          	srl	a0,a0,0x4
    1c14:	00157513          	and	a0,a0,1
    1c18:	00008067          	ret

00001c1c <fatfs_entry_is_file>:
    1c1c:	00b54503          	lbu	a0,11(a0)
    1c20:	00555513          	srl	a0,a0,0x5
    1c24:	00157513          	and	a0,a0,1
    1c28:	00008067          	ret

00001c2c <fatfs_lfn_entries_required>:
    1c2c:	ff010113          	add	sp,sp,-16
    1c30:	00112623          	sw	ra,12(sp)
    1c34:	fffff097          	auipc	ra,0xfffff
    1c38:	16c080e7          	jalr	364(ra) # da0 <strlen>
    1c3c:	00050a63          	beqz	a0,1c50 <fatfs_lfn_entries_required+0x24>
    1c40:	00d00593          	li	a1,13
    1c44:	00c50513          	add	a0,a0,12
    1c48:	fffff097          	auipc	ra,0xfffff
    1c4c:	064080e7          	jalr	100(ra) # cac <__divsi3>
    1c50:	00c12083          	lw	ra,12(sp)
    1c54:	01010113          	add	sp,sp,16
    1c58:	00008067          	ret

00001c5c <fatfs_filename_to_lfn>:
    1c5c:	fa010113          	add	sp,sp,-96
    1c60:	04912a23          	sw	s1,84(sp)
    1c64:	00058493          	mv	s1,a1
    1c68:	000065b7          	lui	a1,0x6
    1c6c:	cbc58593          	add	a1,a1,-836 # 5cbc <font+0x1f4>
    1c70:	05212823          	sw	s2,80(sp)
    1c74:	05312623          	sw	s3,76(sp)
    1c78:	00060913          	mv	s2,a2
    1c7c:	00050993          	mv	s3,a0
    1c80:	03400613          	li	a2,52
    1c84:	00c10513          	add	a0,sp,12
    1c88:	04112e23          	sw	ra,92(sp)
    1c8c:	04812c23          	sw	s0,88(sp)
    1c90:	05412423          	sw	s4,72(sp)
    1c94:	05512223          	sw	s5,68(sp)
    1c98:	05612023          	sw	s6,64(sp)
    1c9c:	00068b13          	mv	s6,a3
    1ca0:	fffff097          	auipc	ra,0xfffff
    1ca4:	0dc080e7          	jalr	220(ra) # d7c <memcpy>
    1ca8:	00098513          	mv	a0,s3
    1cac:	fffff097          	auipc	ra,0xfffff
    1cb0:	0f4080e7          	jalr	244(ra) # da0 <strlen>
    1cb4:	00050a93          	mv	s5,a0
    1cb8:	00098513          	mv	a0,s3
    1cbc:	00000097          	auipc	ra,0x0
    1cc0:	f70080e7          	jalr	-144(ra) # 1c2c <fatfs_lfn_entries_required>
    1cc4:	00191793          	sll	a5,s2,0x1
    1cc8:	012787b3          	add	a5,a5,s2
    1ccc:	00279793          	sll	a5,a5,0x2
    1cd0:	00050a13          	mv	s4,a0
    1cd4:	02000613          	li	a2,32
    1cd8:	00000593          	li	a1,0
    1cdc:	00048513          	mv	a0,s1
    1ce0:	01278433          	add	s0,a5,s2
    1ce4:	fffff097          	auipc	ra,0xfffff
    1ce8:	07c080e7          	jalr	124(ra) # d60 <memset>
    1cec:	00190793          	add	a5,s2,1
    1cf0:	fffa0a13          	add	s4,s4,-1 # 3fff <fl_fread+0x133>
    1cf4:	0ff7f793          	zext.b	a5,a5
    1cf8:	012a1463          	bne	s4,s2,1d00 <fatfs_filename_to_lfn+0xa4>
    1cfc:	0407e793          	or	a5,a5,64
    1d00:	00f48023          	sb	a5,0(s1)
    1d04:	00f00793          	li	a5,15
    1d08:	00f485a3          	sb	a5,11(s1)
    1d0c:	016486a3          	sb	s6,13(s1)
    1d10:	00c10713          	add	a4,sp,12
    1d14:	00040793          	mv	a5,s0
    1d18:	00d40593          	add	a1,s0,13
    1d1c:	fff00613          	li	a2,-1
    1d20:	00072683          	lw	a3,0(a4)
    1d24:	00d486b3          	add	a3,s1,a3
    1d28:	0557d263          	bge	a5,s5,1d6c <fatfs_filename_to_lfn+0x110>
    1d2c:	00f98533          	add	a0,s3,a5
    1d30:	00054503          	lbu	a0,0(a0)
    1d34:	00a68023          	sb	a0,0(a3)
    1d38:	00178793          	add	a5,a5,1
    1d3c:	00470713          	add	a4,a4,4
    1d40:	feb790e3          	bne	a5,a1,1d20 <fatfs_filename_to_lfn+0xc4>
    1d44:	05c12083          	lw	ra,92(sp)
    1d48:	05812403          	lw	s0,88(sp)
    1d4c:	05412483          	lw	s1,84(sp)
    1d50:	05012903          	lw	s2,80(sp)
    1d54:	04c12983          	lw	s3,76(sp)
    1d58:	04812a03          	lw	s4,72(sp)
    1d5c:	04412a83          	lw	s5,68(sp)
    1d60:	04012b03          	lw	s6,64(sp)
    1d64:	06010113          	add	sp,sp,96
    1d68:	00008067          	ret
    1d6c:	00fa9663          	bne	s5,a5,1d78 <fatfs_filename_to_lfn+0x11c>
    1d70:	00068023          	sb	zero,0(a3)
    1d74:	fc5ff06f          	j	1d38 <fatfs_filename_to_lfn+0xdc>
    1d78:	00c68023          	sb	a2,0(a3)
    1d7c:	00c680a3          	sb	a2,1(a3)
    1d80:	fb9ff06f          	j	1d38 <fatfs_filename_to_lfn+0xdc>

00001d84 <fatfs_sfn_create_entry>:
    1d84:	00000793          	li	a5,0
    1d88:	00b00813          	li	a6,11
    1d8c:	00f508b3          	add	a7,a0,a5
    1d90:	0008c303          	lbu	t1,0(a7)
    1d94:	00f688b3          	add	a7,a3,a5
    1d98:	00178793          	add	a5,a5,1
    1d9c:	00688023          	sb	t1,0(a7)
    1da0:	ff0796e3          	bne	a5,a6,1d8c <fatfs_sfn_create_entry+0x8>
    1da4:	02000793          	li	a5,32
    1da8:	00f68823          	sb	a5,16(a3)
    1dac:	00f68923          	sb	a5,18(a3)
    1db0:	00f68c23          	sb	a5,24(a3)
    1db4:	000686a3          	sb	zero,13(a3)
    1db8:	00068723          	sb	zero,14(a3)
    1dbc:	000687a3          	sb	zero,15(a3)
    1dc0:	000688a3          	sb	zero,17(a3)
    1dc4:	000689a3          	sb	zero,19(a3)
    1dc8:	00068b23          	sb	zero,22(a3)
    1dcc:	00068ba3          	sb	zero,23(a3)
    1dd0:	00068ca3          	sb	zero,25(a3)
    1dd4:	01000793          	li	a5,16
    1dd8:	00071463          	bnez	a4,1de0 <fatfs_sfn_create_entry+0x5c>
    1ddc:	02000793          	li	a5,32
    1de0:	00f685a3          	sb	a5,11(a3)
    1de4:	01065793          	srl	a5,a2,0x10
    1de8:	00f68a23          	sb	a5,20(a3)
    1dec:	0087d793          	srl	a5,a5,0x8
    1df0:	00f68aa3          	sb	a5,21(a3)
    1df4:	01061793          	sll	a5,a2,0x10
    1df8:	0107d793          	srl	a5,a5,0x10
    1dfc:	0087d793          	srl	a5,a5,0x8
    1e00:	00f68da3          	sb	a5,27(a3)
    1e04:	0085d793          	srl	a5,a1,0x8
    1e08:	00b68e23          	sb	a1,28(a3)
    1e0c:	00f68ea3          	sb	a5,29(a3)
    1e10:	0105d793          	srl	a5,a1,0x10
    1e14:	0185d593          	srl	a1,a1,0x18
    1e18:	00068623          	sb	zero,12(a3)
    1e1c:	00c68d23          	sb	a2,26(a3)
    1e20:	00f68f23          	sb	a5,30(a3)
    1e24:	00b68fa3          	sb	a1,31(a3)
    1e28:	00008067          	ret

00001e2c <fatfs_lfn_create_sfn>:
    1e2c:	0005c703          	lbu	a4,0(a1)
    1e30:	02e00793          	li	a5,46
    1e34:	16f70663          	beq	a4,a5,1fa0 <fatfs_lfn_create_sfn+0x174>
    1e38:	fe010113          	add	sp,sp,-32
    1e3c:	00912a23          	sw	s1,20(sp)
    1e40:	00050493          	mv	s1,a0
    1e44:	00058513          	mv	a0,a1
    1e48:	00112e23          	sw	ra,28(sp)
    1e4c:	00812c23          	sw	s0,24(sp)
    1e50:	01212823          	sw	s2,16(sp)
    1e54:	00058413          	mv	s0,a1
    1e58:	fffff097          	auipc	ra,0xfffff
    1e5c:	f48080e7          	jalr	-184(ra) # da0 <strlen>
    1e60:	00b00613          	li	a2,11
    1e64:	02000593          	li	a1,32
    1e68:	00050913          	mv	s2,a0
    1e6c:	00048513          	mv	a0,s1
    1e70:	fffff097          	auipc	ra,0xfffff
    1e74:	ef0080e7          	jalr	-272(ra) # d60 <memset>
    1e78:	00300613          	li	a2,3
    1e7c:	02000593          	li	a1,32
    1e80:	00c10513          	add	a0,sp,12
    1e84:	fffff097          	auipc	ra,0xfffff
    1e88:	edc080e7          	jalr	-292(ra) # d60 <memset>
    1e8c:	fff00713          	li	a4,-1
    1e90:	00000793          	li	a5,0
    1e94:	02e00693          	li	a3,46
    1e98:	0d27c263          	blt	a5,s2,1f5c <fatfs_lfn_create_sfn+0x130>
    1e9c:	fff00793          	li	a5,-1
    1ea0:	0ef70863          	beq	a4,a5,1f90 <fatfs_lfn_create_sfn+0x164>
    1ea4:	00170793          	add	a5,a4,1
    1ea8:	00c10693          	add	a3,sp,12
    1eac:	00470613          	add	a2,a4,4
    1eb0:	0cf61263          	bne	a2,a5,1f74 <fatfs_lfn_create_sfn+0x148>
    1eb4:	00000613          	li	a2,0
    1eb8:	00000693          	li	a3,0
    1ebc:	02000513          	li	a0,32
    1ec0:	02e00813          	li	a6,46
    1ec4:	01900893          	li	a7,25
    1ec8:	00800313          	li	t1,8
    1ecc:	02e6dc63          	bge	a3,a4,1f04 <fatfs_lfn_create_sfn+0xd8>
    1ed0:	00d407b3          	add	a5,s0,a3
    1ed4:	0007c783          	lbu	a5,0(a5)
    1ed8:	0ca78063          	beq	a5,a0,1f98 <fatfs_lfn_create_sfn+0x16c>
    1edc:	0b078e63          	beq	a5,a6,1f98 <fatfs_lfn_create_sfn+0x16c>
    1ee0:	f9f78593          	add	a1,a5,-97
    1ee4:	0ff5f593          	zext.b	a1,a1
    1ee8:	00c48e33          	add	t3,s1,a2
    1eec:	00160613          	add	a2,a2,1
    1ef0:	00b8e663          	bltu	a7,a1,1efc <fatfs_lfn_create_sfn+0xd0>
    1ef4:	fe078793          	add	a5,a5,-32
    1ef8:	0ff7f793          	zext.b	a5,a5
    1efc:	00fe0023          	sb	a5,0(t3)
    1f00:	08661c63          	bne	a2,t1,1f98 <fatfs_lfn_create_sfn+0x16c>
    1f04:	00c10793          	add	a5,sp,12
    1f08:	00800693          	li	a3,8
    1f0c:	01900513          	li	a0,25
    1f10:	00b00593          	li	a1,11
    1f14:	0007c703          	lbu	a4,0(a5)
    1f18:	f9f70613          	add	a2,a4,-97
    1f1c:	0ff67613          	zext.b	a2,a2
    1f20:	00c56663          	bltu	a0,a2,1f2c <fatfs_lfn_create_sfn+0x100>
    1f24:	fe070713          	add	a4,a4,-32
    1f28:	0ff77713          	zext.b	a4,a4
    1f2c:	00d48633          	add	a2,s1,a3
    1f30:	00e60023          	sb	a4,0(a2)
    1f34:	00168693          	add	a3,a3,1
    1f38:	00178793          	add	a5,a5,1
    1f3c:	fcb69ce3          	bne	a3,a1,1f14 <fatfs_lfn_create_sfn+0xe8>
    1f40:	01c12083          	lw	ra,28(sp)
    1f44:	01812403          	lw	s0,24(sp)
    1f48:	01412483          	lw	s1,20(sp)
    1f4c:	01012903          	lw	s2,16(sp)
    1f50:	00100513          	li	a0,1
    1f54:	02010113          	add	sp,sp,32
    1f58:	00008067          	ret
    1f5c:	00f40633          	add	a2,s0,a5
    1f60:	00064603          	lbu	a2,0(a2)
    1f64:	00d61463          	bne	a2,a3,1f6c <fatfs_lfn_create_sfn+0x140>
    1f68:	00078713          	mv	a4,a5
    1f6c:	00178793          	add	a5,a5,1
    1f70:	f29ff06f          	j	1e98 <fatfs_lfn_create_sfn+0x6c>
    1f74:	0127d863          	bge	a5,s2,1f84 <fatfs_lfn_create_sfn+0x158>
    1f78:	00f405b3          	add	a1,s0,a5
    1f7c:	0005c583          	lbu	a1,0(a1)
    1f80:	00b68023          	sb	a1,0(a3)
    1f84:	00178793          	add	a5,a5,1
    1f88:	00168693          	add	a3,a3,1
    1f8c:	f25ff06f          	j	1eb0 <fatfs_lfn_create_sfn+0x84>
    1f90:	00090713          	mv	a4,s2
    1f94:	f21ff06f          	j	1eb4 <fatfs_lfn_create_sfn+0x88>
    1f98:	00168693          	add	a3,a3,1
    1f9c:	f31ff06f          	j	1ecc <fatfs_lfn_create_sfn+0xa0>
    1fa0:	00000513          	li	a0,0
    1fa4:	00008067          	ret

00001fa8 <fatfs_lfn_generate_tail>:
    1fa8:	000187b7          	lui	a5,0x18
    1fac:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1fb0:	16c7e463          	bltu	a5,a2,2118 <fatfs_lfn_generate_tail+0x170>
    1fb4:	fa010113          	add	sp,sp,-96
    1fb8:	04812c23          	sw	s0,88(sp)
    1fbc:	04912a23          	sw	s1,84(sp)
    1fc0:	05412423          	sw	s4,72(sp)
    1fc4:	00050493          	mv	s1,a0
    1fc8:	00058a13          	mv	s4,a1
    1fcc:	00060413          	mv	s0,a2
    1fd0:	00000593          	li	a1,0
    1fd4:	00c00613          	li	a2,12
    1fd8:	00410513          	add	a0,sp,4
    1fdc:	04112e23          	sw	ra,92(sp)
    1fe0:	05312623          	sw	s3,76(sp)
    1fe4:	05512223          	sw	s5,68(sp)
    1fe8:	03712e23          	sw	s7,60(sp)
    1fec:	05212823          	sw	s2,80(sp)
    1ff0:	05612023          	sw	s6,64(sp)
    1ff4:	fffff097          	auipc	ra,0xfffff
    1ff8:	d6c080e7          	jalr	-660(ra) # d60 <memset>
    1ffc:	000065b7          	lui	a1,0x6
    2000:	07e00793          	li	a5,126
    2004:	01100613          	li	a2,17
    2008:	ca858593          	add	a1,a1,-856 # 5ca8 <font+0x1e0>
    200c:	01c10513          	add	a0,sp,28
    2010:	01010993          	add	s3,sp,16
    2014:	00f10223          	sb	a5,4(sp)
    2018:	00098a93          	mv	s5,s3
    201c:	fffff097          	auipc	ra,0xfffff
    2020:	d60080e7          	jalr	-672(ra) # d7c <memcpy>
    2024:	00900b93          	li	s7,9
    2028:	00a00593          	li	a1,10
    202c:	00040513          	mv	a0,s0
    2030:	fffff097          	auipc	ra,0xfffff
    2034:	ccc080e7          	jalr	-820(ra) # cfc <__umodsi3>
    2038:	03050793          	add	a5,a0,48
    203c:	00278533          	add	a0,a5,sp
    2040:	fec54783          	lbu	a5,-20(a0)
    2044:	00098913          	mv	s2,s3
    2048:	00040513          	mv	a0,s0
    204c:	00a00593          	li	a1,10
    2050:	00f98023          	sb	a5,0(s3)
    2054:	00040b13          	mv	s6,s0
    2058:	fffff097          	auipc	ra,0xfffff
    205c:	c5c080e7          	jalr	-932(ra) # cb4 <__udivsi3>
    2060:	00198993          	add	s3,s3,1
    2064:	00050413          	mv	s0,a0
    2068:	fd6be0e3          	bltu	s7,s6,2028 <fatfs_lfn_generate_tail+0x80>
    206c:	00098023          	sb	zero,0(s3)
    2070:	00410713          	add	a4,sp,4
    2074:	00090793          	mv	a5,s2
    2078:	00170713          	add	a4,a4,1
    207c:	0957f663          	bgeu	a5,s5,2108 <fatfs_lfn_generate_tail+0x160>
    2080:	00f10713          	add	a4,sp,15
    2084:	00000793          	li	a5,0
    2088:	00e96663          	bltu	s2,a4,2094 <fatfs_lfn_generate_tail+0xec>
    208c:	41590933          	sub	s2,s2,s5
    2090:	00190793          	add	a5,s2,1
    2094:	03078793          	add	a5,a5,48
    2098:	002787b3          	add	a5,a5,sp
    209c:	000a0593          	mv	a1,s4
    20a0:	fc078aa3          	sb	zero,-43(a5)
    20a4:	00b00613          	li	a2,11
    20a8:	00048513          	mv	a0,s1
    20ac:	fffff097          	auipc	ra,0xfffff
    20b0:	cd0080e7          	jalr	-816(ra) # d7c <memcpy>
    20b4:	00410513          	add	a0,sp,4
    20b8:	fffff097          	auipc	ra,0xfffff
    20bc:	ce8080e7          	jalr	-792(ra) # da0 <strlen>
    20c0:	40a484b3          	sub	s1,s1,a0
    20c4:	00050613          	mv	a2,a0
    20c8:	00410593          	add	a1,sp,4
    20cc:	00848513          	add	a0,s1,8
    20d0:	fffff097          	auipc	ra,0xfffff
    20d4:	cac080e7          	jalr	-852(ra) # d7c <memcpy>
    20d8:	05c12083          	lw	ra,92(sp)
    20dc:	05812403          	lw	s0,88(sp)
    20e0:	05412483          	lw	s1,84(sp)
    20e4:	05012903          	lw	s2,80(sp)
    20e8:	04c12983          	lw	s3,76(sp)
    20ec:	04812a03          	lw	s4,72(sp)
    20f0:	04412a83          	lw	s5,68(sp)
    20f4:	04012b03          	lw	s6,64(sp)
    20f8:	03c12b83          	lw	s7,60(sp)
    20fc:	00100513          	li	a0,1
    2100:	06010113          	add	sp,sp,96
    2104:	00008067          	ret
    2108:	0007c683          	lbu	a3,0(a5)
    210c:	fff78793          	add	a5,a5,-1
    2110:	00d70023          	sb	a3,0(a4)
    2114:	f65ff06f          	j	2078 <fatfs_lfn_generate_tail+0xd0>
    2118:	00000513          	li	a0,0
    211c:	00008067          	ret

00002120 <fatfs_total_path_levels>:
    2120:	00050793          	mv	a5,a0
    2124:	06050463          	beqz	a0,218c <fatfs_total_path_levels+0x6c>
    2128:	00054703          	lbu	a4,0(a0)
    212c:	02f00693          	li	a3,47
    2130:	00d71863          	bne	a4,a3,2140 <fatfs_total_path_levels+0x20>
    2134:	00150793          	add	a5,a0,1
    2138:	00000513          	li	a0,0
    213c:	0400006f          	j	217c <fatfs_total_path_levels+0x5c>
    2140:	00154683          	lbu	a3,1(a0)
    2144:	03a00713          	li	a4,58
    2148:	00e68a63          	beq	a3,a4,215c <fatfs_total_path_levels+0x3c>
    214c:	00254683          	lbu	a3,2(a0)
    2150:	05c00713          	li	a4,92
    2154:	fff00513          	li	a0,-1
    2158:	02e69c63          	bne	a3,a4,2190 <fatfs_total_path_levels+0x70>
    215c:	00378793          	add	a5,a5,3
    2160:	05c00713          	li	a4,92
    2164:	fd5ff06f          	j	2138 <fatfs_total_path_levels+0x18>
    2168:	00178793          	add	a5,a5,1
    216c:	00e68663          	beq	a3,a4,2178 <fatfs_total_path_levels+0x58>
    2170:	0007c683          	lbu	a3,0(a5)
    2174:	fe069ae3          	bnez	a3,2168 <fatfs_total_path_levels+0x48>
    2178:	00150513          	add	a0,a0,1
    217c:	0007c683          	lbu	a3,0(a5)
    2180:	fe0698e3          	bnez	a3,2170 <fatfs_total_path_levels+0x50>
    2184:	fff50513          	add	a0,a0,-1
    2188:	00008067          	ret
    218c:	fff00513          	li	a0,-1
    2190:	00008067          	ret

00002194 <fatfs_get_substring>:
    2194:	0e050663          	beqz	a0,2280 <fatfs_get_substring+0xec>
    2198:	fe010113          	add	sp,sp,-32
    219c:	00912a23          	sw	s1,20(sp)
    21a0:	00112e23          	sw	ra,28(sp)
    21a4:	00812c23          	sw	s0,24(sp)
    21a8:	01212823          	sw	s2,16(sp)
    21ac:	01312623          	sw	s3,12(sp)
    21b0:	01412423          	sw	s4,8(sp)
    21b4:	00050793          	mv	a5,a0
    21b8:	00068493          	mv	s1,a3
    21bc:	fff00513          	li	a0,-1
    21c0:	06d05a63          	blez	a3,2234 <fatfs_get_substring+0xa0>
    21c4:	0007c983          	lbu	s3,0(a5)
    21c8:	02f00713          	li	a4,47
    21cc:	00058a13          	mv	s4,a1
    21d0:	00060913          	mv	s2,a2
    21d4:	00178413          	add	s0,a5,1
    21d8:	02e98463          	beq	s3,a4,2200 <fatfs_get_substring+0x6c>
    21dc:	0017c683          	lbu	a3,1(a5)
    21e0:	03a00713          	li	a4,58
    21e4:	00e68a63          	beq	a3,a4,21f8 <fatfs_get_substring+0x64>
    21e8:	0027c683          	lbu	a3,2(a5)
    21ec:	05c00713          	li	a4,92
    21f0:	fff00513          	li	a0,-1
    21f4:	04e69063          	bne	a3,a4,2234 <fatfs_get_substring+0xa0>
    21f8:	00378413          	add	s0,a5,3
    21fc:	05c00993          	li	s3,92
    2200:	00040513          	mv	a0,s0
    2204:	fffff097          	auipc	ra,0xfffff
    2208:	b9c080e7          	jalr	-1124(ra) # da0 <strlen>
    220c:	00000713          	li	a4,0
    2210:	00000693          	li	a3,0
    2214:	00000793          	li	a5,0
    2218:	fff48493          	add	s1,s1,-1
    221c:	00e90633          	add	a2,s2,a4
    2220:	02a7ca63          	blt	a5,a0,2254 <fatfs_get_substring+0xc0>
    2224:	00060023          	sb	zero,0(a2)
    2228:	00094503          	lbu	a0,0(s2)
    222c:	00153513          	seqz	a0,a0
    2230:	40a00533          	neg	a0,a0
    2234:	01c12083          	lw	ra,28(sp)
    2238:	01812403          	lw	s0,24(sp)
    223c:	01412483          	lw	s1,20(sp)
    2240:	01012903          	lw	s2,16(sp)
    2244:	00c12983          	lw	s3,12(sp)
    2248:	00812a03          	lw	s4,8(sp)
    224c:	02010113          	add	sp,sp,32
    2250:	00008067          	ret
    2254:	00f405b3          	add	a1,s0,a5
    2258:	0005c583          	lbu	a1,0(a1)
    225c:	01358c63          	beq	a1,s3,2274 <fatfs_get_substring+0xe0>
    2260:	01469c63          	bne	a3,s4,2278 <fatfs_get_substring+0xe4>
    2264:	00975a63          	bge	a4,s1,2278 <fatfs_get_substring+0xe4>
    2268:	00170713          	add	a4,a4,1
    226c:	00b60023          	sb	a1,0(a2)
    2270:	0080006f          	j	2278 <fatfs_get_substring+0xe4>
    2274:	00168693          	add	a3,a3,1
    2278:	00178793          	add	a5,a5,1
    227c:	fa1ff06f          	j	221c <fatfs_get_substring+0x88>
    2280:	fff00513          	li	a0,-1
    2284:	00008067          	ret

00002288 <fatfs_split_path>:
    2288:	fd010113          	add	sp,sp,-48
    228c:	02912223          	sw	s1,36(sp)
    2290:	01312e23          	sw	s3,28(sp)
    2294:	01412c23          	sw	s4,24(sp)
    2298:	01512a23          	sw	s5,20(sp)
    229c:	02112623          	sw	ra,44(sp)
    22a0:	00068a93          	mv	s5,a3
    22a4:	02812423          	sw	s0,40(sp)
    22a8:	03212023          	sw	s2,32(sp)
    22ac:	00050993          	mv	s3,a0
    22b0:	00058493          	mv	s1,a1
    22b4:	00060a13          	mv	s4,a2
    22b8:	00e12623          	sw	a4,12(sp)
    22bc:	00000097          	auipc	ra,0x0
    22c0:	e64080e7          	jalr	-412(ra) # 2120 <fatfs_total_path_levels>
    22c4:	fff00793          	li	a5,-1
    22c8:	00c12683          	lw	a3,12(sp)
    22cc:	02f51863          	bne	a0,a5,22fc <fatfs_split_path+0x74>
    22d0:	fff00913          	li	s2,-1
    22d4:	02c12083          	lw	ra,44(sp)
    22d8:	02812403          	lw	s0,40(sp)
    22dc:	02412483          	lw	s1,36(sp)
    22e0:	01c12983          	lw	s3,28(sp)
    22e4:	01812a03          	lw	s4,24(sp)
    22e8:	01412a83          	lw	s5,20(sp)
    22ec:	00090513          	mv	a0,s2
    22f0:	02012903          	lw	s2,32(sp)
    22f4:	03010113          	add	sp,sp,48
    22f8:	00008067          	ret
    22fc:	00050593          	mv	a1,a0
    2300:	00050413          	mv	s0,a0
    2304:	000a8613          	mv	a2,s5
    2308:	00098513          	mv	a0,s3
    230c:	00000097          	auipc	ra,0x0
    2310:	e88080e7          	jalr	-376(ra) # 2194 <fatfs_get_substring>
    2314:	00050913          	mv	s2,a0
    2318:	fa051ce3          	bnez	a0,22d0 <fatfs_split_path+0x48>
    231c:	00041663          	bnez	s0,2328 <fatfs_split_path+0xa0>
    2320:	00048023          	sb	zero,0(s1)
    2324:	fb1ff06f          	j	22d4 <fatfs_split_path+0x4c>
    2328:	00098513          	mv	a0,s3
    232c:	fffff097          	auipc	ra,0xfffff
    2330:	a74080e7          	jalr	-1420(ra) # da0 <strlen>
    2334:	00050413          	mv	s0,a0
    2338:	000a8513          	mv	a0,s5
    233c:	fffff097          	auipc	ra,0xfffff
    2340:	a64080e7          	jalr	-1436(ra) # da0 <strlen>
    2344:	40a40433          	sub	s0,s0,a0
    2348:	008a5463          	bge	s4,s0,2350 <fatfs_split_path+0xc8>
    234c:	000a0413          	mv	s0,s4
    2350:	00048513          	mv	a0,s1
    2354:	00040613          	mv	a2,s0
    2358:	00098593          	mv	a1,s3
    235c:	008484b3          	add	s1,s1,s0
    2360:	fffff097          	auipc	ra,0xfffff
    2364:	a1c080e7          	jalr	-1508(ra) # d7c <memcpy>
    2368:	fe048fa3          	sb	zero,-1(s1)
    236c:	f69ff06f          	j	22d4 <fatfs_split_path+0x4c>

00002370 <fatfs_compare_names>:
    2370:	fd010113          	add	sp,sp,-48
    2374:	02112623          	sw	ra,44(sp)
    2378:	02812423          	sw	s0,40(sp)
    237c:	02912223          	sw	s1,36(sp)
    2380:	03212023          	sw	s2,32(sp)
    2384:	01312e23          	sw	s3,28(sp)
    2388:	00058913          	mv	s2,a1
    238c:	01412c23          	sw	s4,24(sp)
    2390:	01512a23          	sw	s5,20(sp)
    2394:	01612823          	sw	s6,16(sp)
    2398:	00050a13          	mv	s4,a0
    239c:	fffff097          	auipc	ra,0xfffff
    23a0:	28c080e7          	jalr	652(ra) # 1628 <FileString_GetExtension>
    23a4:	00050493          	mv	s1,a0
    23a8:	00090513          	mv	a0,s2
    23ac:	fffff097          	auipc	ra,0xfffff
    23b0:	27c080e7          	jalr	636(ra) # 1628 <FileString_GetExtension>
    23b4:	fff00793          	li	a5,-1
    23b8:	00050413          	mv	s0,a0
    23bc:	00000993          	li	s3,0
    23c0:	08f49a63          	bne	s1,a5,2454 <fatfs_compare_names+0xe4>
    23c4:	0c951e63          	bne	a0,s1,24a0 <fatfs_compare_names+0x130>
    23c8:	000a0513          	mv	a0,s4
    23cc:	fffff097          	auipc	ra,0xfffff
    23d0:	9d4080e7          	jalr	-1580(ra) # da0 <strlen>
    23d4:	00050493          	mv	s1,a0
    23d8:	00090513          	mv	a0,s2
    23dc:	fffff097          	auipc	ra,0xfffff
    23e0:	9c4080e7          	jalr	-1596(ra) # da0 <strlen>
    23e4:	00050413          	mv	s0,a0
    23e8:	fff48793          	add	a5,s1,-1
    23ec:	00fa07b3          	add	a5,s4,a5
    23f0:	40978733          	sub	a4,a5,s1
    23f4:	02000613          	li	a2,32
    23f8:	00078693          	mv	a3,a5
    23fc:	00e78863          	beq	a5,a4,240c <fatfs_compare_names+0x9c>
    2400:	0007c583          	lbu	a1,0(a5)
    2404:	fff78793          	add	a5,a5,-1
    2408:	0cc58263          	beq	a1,a2,24cc <fatfs_compare_names+0x15c>
    240c:	fff40793          	add	a5,s0,-1
    2410:	00f907b3          	add	a5,s2,a5
    2414:	40878733          	sub	a4,a5,s0
    2418:	02000613          	li	a2,32
    241c:	00078693          	mv	a3,a5
    2420:	00e78863          	beq	a5,a4,2430 <fatfs_compare_names+0xc0>
    2424:	0007c583          	lbu	a1,0(a5)
    2428:	fff78793          	add	a5,a5,-1
    242c:	0ac58463          	beq	a1,a2,24d4 <fatfs_compare_names+0x164>
    2430:	00000993          	li	s3,0
    2434:	06941663          	bne	s0,s1,24a0 <fatfs_compare_names+0x130>
    2438:	00040613          	mv	a2,s0
    243c:	00090593          	mv	a1,s2
    2440:	000a0513          	mv	a0,s4
    2444:	fffff097          	auipc	ra,0xfffff
    2448:	14c080e7          	jalr	332(ra) # 1590 <FileString_StrCmpNoCase>
    244c:	00153993          	seqz	s3,a0
    2450:	0500006f          	j	24a0 <fatfs_compare_names+0x130>
    2454:	04f50663          	beq	a0,a5,24a0 <fatfs_compare_names+0x130>
    2458:	00148a93          	add	s5,s1,1
    245c:	015a0ab3          	add	s5,s4,s5
    2460:	00150b13          	add	s6,a0,1
    2464:	000a8513          	mv	a0,s5
    2468:	fffff097          	auipc	ra,0xfffff
    246c:	938080e7          	jalr	-1736(ra) # da0 <strlen>
    2470:	01690b33          	add	s6,s2,s6
    2474:	00a12623          	sw	a0,12(sp)
    2478:	000b0513          	mv	a0,s6
    247c:	fffff097          	auipc	ra,0xfffff
    2480:	924080e7          	jalr	-1756(ra) # da0 <strlen>
    2484:	00c12603          	lw	a2,12(sp)
    2488:	00a61c63          	bne	a2,a0,24a0 <fatfs_compare_names+0x130>
    248c:	000b0593          	mv	a1,s6
    2490:	000a8513          	mv	a0,s5
    2494:	fffff097          	auipc	ra,0xfffff
    2498:	0fc080e7          	jalr	252(ra) # 1590 <FileString_StrCmpNoCase>
    249c:	f40506e3          	beqz	a0,23e8 <fatfs_compare_names+0x78>
    24a0:	02c12083          	lw	ra,44(sp)
    24a4:	02812403          	lw	s0,40(sp)
    24a8:	02412483          	lw	s1,36(sp)
    24ac:	02012903          	lw	s2,32(sp)
    24b0:	01812a03          	lw	s4,24(sp)
    24b4:	01412a83          	lw	s5,20(sp)
    24b8:	01012b03          	lw	s6,16(sp)
    24bc:	00098513          	mv	a0,s3
    24c0:	01c12983          	lw	s3,28(sp)
    24c4:	03010113          	add	sp,sp,48
    24c8:	00008067          	ret
    24cc:	414684b3          	sub	s1,a3,s4
    24d0:	f29ff06f          	j	23f8 <fatfs_compare_names+0x88>
    24d4:	41268433          	sub	s0,a3,s2
    24d8:	f45ff06f          	j	241c <fatfs_compare_names+0xac>

000024dc <_check_file_open>:
    24dc:	fe010113          	add	sp,sp,-32
    24e0:	000067b7          	lui	a5,0x6
    24e4:	00812c23          	sw	s0,24(sp)
    24e8:	f647a403          	lw	s0,-156(a5) # 5f64 <_open_file_list>
    24ec:	00912a23          	sw	s1,20(sp)
    24f0:	01212823          	sw	s2,16(sp)
    24f4:	01312623          	sw	s3,12(sp)
    24f8:	00112e23          	sw	ra,28(sp)
    24fc:	00050493          	mv	s1,a0
    2500:	01450913          	add	s2,a0,20
    2504:	11850993          	add	s3,a0,280
    2508:	02041263          	bnez	s0,252c <_check_file_open+0x50>
    250c:	00000513          	li	a0,0
    2510:	01c12083          	lw	ra,28(sp)
    2514:	01812403          	lw	s0,24(sp)
    2518:	01412483          	lw	s1,20(sp)
    251c:	01012903          	lw	s2,16(sp)
    2520:	00c12983          	lw	s3,12(sp)
    2524:	02010113          	add	sp,sp,32
    2528:	00008067          	ret
    252c:	bc440793          	add	a5,s0,-1084
    2530:	02f48663          	beq	s1,a5,255c <_check_file_open+0x80>
    2534:	00090593          	mv	a1,s2
    2538:	bd840513          	add	a0,s0,-1064
    253c:	00000097          	auipc	ra,0x0
    2540:	e34080e7          	jalr	-460(ra) # 2370 <fatfs_compare_names>
    2544:	00050c63          	beqz	a0,255c <_check_file_open+0x80>
    2548:	00098593          	mv	a1,s3
    254c:	cdc40513          	add	a0,s0,-804
    2550:	00000097          	auipc	ra,0x0
    2554:	e20080e7          	jalr	-480(ra) # 2370 <fatfs_compare_names>
    2558:	00051663          	bnez	a0,2564 <_check_file_open+0x88>
    255c:	00442403          	lw	s0,4(s0)
    2560:	fa9ff06f          	j	2508 <_check_file_open+0x2c>
    2564:	00100513          	li	a0,1
    2568:	fa9ff06f          	j	2510 <_check_file_open+0x34>

0000256c <fatfs_get_sfn_display_name>:
    256c:	00000713          	li	a4,0
    2570:	00c00613          	li	a2,12
    2574:	02000813          	li	a6,32
    2578:	01900893          	li	a7,25
    257c:	0005c783          	lbu	a5,0(a1)
    2580:	00078463          	beqz	a5,2588 <fatfs_get_sfn_display_name+0x1c>
    2584:	00c71863          	bne	a4,a2,2594 <fatfs_get_sfn_display_name+0x28>
    2588:	00050023          	sb	zero,0(a0)
    258c:	00100513          	li	a0,1
    2590:	00008067          	ret
    2594:	00158593          	add	a1,a1,1
    2598:	ff0782e3          	beq	a5,a6,257c <fatfs_get_sfn_display_name+0x10>
    259c:	fbf78693          	add	a3,a5,-65
    25a0:	0ff6f693          	zext.b	a3,a3
    25a4:	00d8e663          	bltu	a7,a3,25b0 <fatfs_get_sfn_display_name+0x44>
    25a8:	02078793          	add	a5,a5,32
    25ac:	0ff7f793          	zext.b	a5,a5
    25b0:	00f50023          	sb	a5,0(a0)
    25b4:	00170713          	add	a4,a4,1
    25b8:	00150513          	add	a0,a0,1
    25bc:	fc1ff06f          	j	257c <fatfs_get_sfn_display_name+0x10>

000025c0 <fatfs_fat_init>:
    25c0:	ff010113          	add	sp,sp,-16
    25c4:	00812423          	sw	s0,8(sp)
    25c8:	00912223          	sw	s1,4(sp)
    25cc:	00112623          	sw	ra,12(sp)
    25d0:	fff00793          	li	a5,-1
    25d4:	25850493          	add	s1,a0,600
    25d8:	00050413          	mv	s0,a0
    25dc:	44f52c23          	sw	a5,1112(a0)
    25e0:	24052a23          	sw	zero,596(a0)
    25e4:	44052e23          	sw	zero,1116(a0)
    25e8:	20000613          	li	a2,512
    25ec:	00048513          	mv	a0,s1
    25f0:	00000593          	li	a1,0
    25f4:	ffffe097          	auipc	ra,0xffffe
    25f8:	76c080e7          	jalr	1900(ra) # d60 <memset>
    25fc:	25442783          	lw	a5,596(s0)
    2600:	00c12083          	lw	ra,12(sp)
    2604:	24942a23          	sw	s1,596(s0)
    2608:	46042023          	sw	zero,1120(s0)
    260c:	46f42223          	sw	a5,1124(s0)
    2610:	00812403          	lw	s0,8(sp)
    2614:	00412483          	lw	s1,4(sp)
    2618:	01010113          	add	sp,sp,16
    261c:	00008067          	ret

00002620 <fatfs_init>:
    2620:	fd010113          	add	sp,sp,-48
    2624:	02812423          	sw	s0,40(sp)
    2628:	02112623          	sw	ra,44(sp)
    262c:	02912223          	sw	s1,36(sp)
    2630:	03212023          	sw	s2,32(sp)
    2634:	01312e23          	sw	s3,28(sp)
    2638:	fff00793          	li	a5,-1
    263c:	24f52223          	sw	a5,580(a0)
    2640:	24052423          	sw	zero,584(a0)
    2644:	02052223          	sw	zero,36(a0)
    2648:	00050413          	mv	s0,a0
    264c:	00000097          	auipc	ra,0x0
    2650:	f74080e7          	jalr	-140(ra) # 25c0 <fatfs_fat_init>
    2654:	03442783          	lw	a5,52(s0)
    2658:	02079263          	bnez	a5,267c <fatfs_init+0x5c>
    265c:	fff00513          	li	a0,-1
    2660:	02c12083          	lw	ra,44(sp)
    2664:	02812403          	lw	s0,40(sp)
    2668:	02412483          	lw	s1,36(sp)
    266c:	02012903          	lw	s2,32(sp)
    2670:	01c12983          	lw	s3,28(sp)
    2674:	03010113          	add	sp,sp,48
    2678:	00008067          	ret
    267c:	04440593          	add	a1,s0,68
    2680:	00100613          	li	a2,1
    2684:	00000513          	li	a0,0
    2688:	00b12623          	sw	a1,12(sp)
    268c:	000780e7          	jalr	a5
    2690:	fc0506e3          	beqz	a0,265c <fatfs_init+0x3c>
    2694:	24042703          	lw	a4,576(s0)
    2698:	ffff07b7          	lui	a5,0xffff0
    269c:	00c12583          	lw	a1,12(sp)
    26a0:	00e7f7b3          	and	a5,a5,a4
    26a4:	aa550737          	lui	a4,0xaa550
    26a8:	00e78663          	beq	a5,a4,26b4 <fatfs_init+0x94>
    26ac:	ffd00513          	li	a0,-3
    26b0:	fb1ff06f          	j	2660 <fatfs_init+0x40>
    26b4:	24245703          	lhu	a4,578(s0)
    26b8:	0000b7b7          	lui	a5,0xb
    26bc:	a5578793          	add	a5,a5,-1451 # aa55 <_files+0x625>
    26c0:	ffc00513          	li	a0,-4
    26c4:	f8f71ee3          	bne	a4,a5,2660 <fatfs_init+0x40>
    26c8:	20644783          	lbu	a5,518(s0)
    26cc:	00600713          	li	a4,6
    26d0:	02f76463          	bltu	a4,a5,26f8 <fatfs_init+0xd8>
    26d4:	00400713          	li	a4,4
    26d8:	00f76663          	bltu	a4,a5,26e4 <fatfs_init+0xc4>
    26dc:	00000513          	li	a0,0
    26e0:	02078663          	beqz	a5,270c <fatfs_init+0xec>
    26e4:	20c45503          	lhu	a0,524(s0)
    26e8:	20a45783          	lhu	a5,522(s0)
    26ec:	01051513          	sll	a0,a0,0x10
    26f0:	00f56533          	or	a0,a0,a5
    26f4:	0180006f          	j	270c <fatfs_init+0xec>
    26f8:	00c00713          	li	a4,12
    26fc:	12f76e63          	bltu	a4,a5,2838 <fatfs_init+0x218>
    2700:	00a00713          	li	a4,10
    2704:	00000513          	li	a0,0
    2708:	fcf76ee3          	bltu	a4,a5,26e4 <fatfs_init+0xc4>
    270c:	03442783          	lw	a5,52(s0)
    2710:	00a42e23          	sw	a0,28(s0)
    2714:	00100613          	li	a2,1
    2718:	000780e7          	jalr	a5
    271c:	f40500e3          	beqz	a0,265c <fatfs_init+0x3c>
    2720:	05044783          	lbu	a5,80(s0)
    2724:	04f44703          	lbu	a4,79(s0)
    2728:	ffe00513          	li	a0,-2
    272c:	00879793          	sll	a5,a5,0x8
    2730:	00e7e7b3          	or	a5,a5,a4
    2734:	20000713          	li	a4,512
    2738:	f2e794e3          	bne	a5,a4,2660 <fatfs_init+0x40>
    273c:	05644483          	lbu	s1,86(s0)
    2740:	05544783          	lbu	a5,85(s0)
    2744:	05144983          	lbu	s3,81(s0)
    2748:	00849493          	sll	s1,s1,0x8
    274c:	05a45583          	lhu	a1,90(s0)
    2750:	00f4e4b3          	or	s1,s1,a5
    2754:	01340023          	sb	s3,0(s0)
    2758:	02941423          	sh	s1,40(s0)
    275c:	05245903          	lhu	s2,82(s0)
    2760:	05444503          	lbu	a0,84(s0)
    2764:	00059463          	bnez	a1,276c <fatfs_init+0x14c>
    2768:	06842583          	lw	a1,104(s0)
    276c:	07042783          	lw	a5,112(s0)
    2770:	02b42023          	sw	a1,32(s0)
    2774:	00549493          	sll	s1,s1,0x5
    2778:	00f42423          	sw	a5,8(s0)
    277c:	07445783          	lhu	a5,116(s0)
    2780:	1ff48493          	add	s1,s1,511
    2784:	4094d493          	sra	s1,s1,0x9
    2788:	00f41c23          	sh	a5,24(s0)
    278c:	fffff097          	auipc	ra,0xfffff
    2790:	d70080e7          	jalr	-656(ra) # 14fc <__mulsi3>
    2794:	00a907b3          	add	a5,s2,a0
    2798:	00f42623          	sw	a5,12(s0)
    279c:	01c42783          	lw	a5,28(s0)
    27a0:	24245703          	lhu	a4,578(s0)
    27a4:	00942823          	sw	s1,16(s0)
    27a8:	00f907b3          	add	a5,s2,a5
    27ac:	00f42a23          	sw	a5,20(s0)
    27b0:	00f507b3          	add	a5,a0,a5
    27b4:	00f42223          	sw	a5,4(s0)
    27b8:	0000b7b7          	lui	a5,0xb
    27bc:	a5578793          	add	a5,a5,-1451 # aa55 <_files+0x625>
    27c0:	eef716e3          	bne	a4,a5,26ac <fatfs_init+0x8c>
    27c4:	05844783          	lbu	a5,88(s0)
    27c8:	05744703          	lbu	a4,87(s0)
    27cc:	00879793          	sll	a5,a5,0x8
    27d0:	00e7e7b3          	or	a5,a5,a4
    27d4:	00079463          	bnez	a5,27dc <fatfs_init+0x1bc>
    27d8:	06442783          	lw	a5,100(s0)
    27dc:	00990933          	add	s2,s2,s1
    27e0:	00a90533          	add	a0,s2,a0
    27e4:	40a787b3          	sub	a5,a5,a0
    27e8:	ffb00513          	li	a0,-5
    27ec:	e6098ae3          	beqz	s3,2660 <fatfs_init+0x40>
    27f0:	00078513          	mv	a0,a5
    27f4:	00098593          	mv	a1,s3
    27f8:	ffffe097          	auipc	ra,0xffffe
    27fc:	4bc080e7          	jalr	1212(ra) # cb4 <__udivsi3>
    2800:	00001737          	lui	a4,0x1
    2804:	00050793          	mv	a5,a0
    2808:	ff470713          	add	a4,a4,-12 # ff4 <oled_fullscreen+0x58>
    280c:	ffb00513          	li	a0,-5
    2810:	e4f778e3          	bgeu	a4,a5,2660 <fatfs_init+0x40>
    2814:	00010737          	lui	a4,0x10
    2818:	ff470713          	add	a4,a4,-12 # fff4 <Songs+0x5264>
    281c:	00100693          	li	a3,1
    2820:	00f76663          	bltu	a4,a5,282c <fatfs_init+0x20c>
    2824:	00042423          	sw	zero,8(s0)
    2828:	00000693          	li	a3,0
    282c:	02d42823          	sw	a3,48(s0)
    2830:	00000513          	li	a0,0
    2834:	e2dff06f          	j	2660 <fatfs_init+0x40>
    2838:	ff278793          	add	a5,a5,-14
    283c:	0ff7f793          	zext.b	a5,a5
    2840:	00100713          	li	a4,1
    2844:	00000513          	li	a0,0
    2848:	e8f77ee3          	bgeu	a4,a5,26e4 <fatfs_init+0xc4>
    284c:	ec1ff06f          	j	270c <fatfs_init+0xec>

00002850 <fl_attach_media>:
    2850:	000067b7          	lui	a5,0x6
    2854:	f707a783          	lw	a5,-144(a5) # 5f70 <_filelib_init>
    2858:	ff010113          	add	sp,sp,-16
    285c:	00812423          	sw	s0,8(sp)
    2860:	00912223          	sw	s1,4(sp)
    2864:	00112623          	sw	ra,12(sp)
    2868:	00050493          	mv	s1,a0
    286c:	00058413          	mv	s0,a1
    2870:	00079663          	bnez	a5,287c <fl_attach_media+0x2c>
    2874:	fffff097          	auipc	ra,0xfffff
    2878:	148080e7          	jalr	328(ra) # 19bc <fl_init>
    287c:	0000a537          	lui	a0,0xa
    2880:	fc850793          	add	a5,a0,-56 # 9fc8 <_fs>
    2884:	fc850513          	add	a0,a0,-56
    2888:	0297aa23          	sw	s1,52(a5)
    288c:	0287ac23          	sw	s0,56(a5)
    2890:	00000097          	auipc	ra,0x0
    2894:	d90080e7          	jalr	-624(ra) # 2620 <fatfs_init>
    2898:	00051863          	bnez	a0,28a8 <fl_attach_media+0x58>
    289c:	000067b7          	lui	a5,0x6
    28a0:	00100713          	li	a4,1
    28a4:	f6e7a623          	sw	a4,-148(a5) # 5f6c <_filelib_valid>
    28a8:	00c12083          	lw	ra,12(sp)
    28ac:	00812403          	lw	s0,8(sp)
    28b0:	00412483          	lw	s1,4(sp)
    28b4:	01010113          	add	sp,sp,16
    28b8:	00008067          	ret

000028bc <fatfs_fat_purge>:
    28bc:	ff010113          	add	sp,sp,-16
    28c0:	00812423          	sw	s0,8(sp)
    28c4:	25452403          	lw	s0,596(a0)
    28c8:	00912223          	sw	s1,4(sp)
    28cc:	00112623          	sw	ra,12(sp)
    28d0:	00050493          	mv	s1,a0
    28d4:	00041663          	bnez	s0,28e0 <fatfs_fat_purge+0x24>
    28d8:	00100513          	li	a0,1
    28dc:	0280006f          	j	2904 <fatfs_fat_purge+0x48>
    28e0:	20442783          	lw	a5,516(s0)
    28e4:	00079663          	bnez	a5,28f0 <fatfs_fat_purge+0x34>
    28e8:	20c42403          	lw	s0,524(s0)
    28ec:	fe9ff06f          	j	28d4 <fatfs_fat_purge+0x18>
    28f0:	00040593          	mv	a1,s0
    28f4:	00048513          	mv	a0,s1
    28f8:	fffff097          	auipc	ra,0xfffff
    28fc:	d5c080e7          	jalr	-676(ra) # 1654 <fatfs_fat_writeback>
    2900:	fe0514e3          	bnez	a0,28e8 <fatfs_fat_purge+0x2c>
    2904:	00c12083          	lw	ra,12(sp)
    2908:	00812403          	lw	s0,8(sp)
    290c:	00412483          	lw	s1,4(sp)
    2910:	01010113          	add	sp,sp,16
    2914:	00008067          	ret

00002918 <fatfs_find_next_cluster>:
    2918:	ff010113          	add	sp,sp,-16
    291c:	00812423          	sw	s0,8(sp)
    2920:	01212023          	sw	s2,0(sp)
    2924:	00112623          	sw	ra,12(sp)
    2928:	00912223          	sw	s1,4(sp)
    292c:	00050913          	mv	s2,a0
    2930:	00200413          	li	s0,2
    2934:	00058463          	beqz	a1,293c <fatfs_find_next_cluster+0x24>
    2938:	00058413          	mv	s0,a1
    293c:	03092783          	lw	a5,48(s2)
    2940:	00745493          	srl	s1,s0,0x7
    2944:	00079463          	bnez	a5,294c <fatfs_find_next_cluster+0x34>
    2948:	00845493          	srl	s1,s0,0x8
    294c:	01492583          	lw	a1,20(s2)
    2950:	00090513          	mv	a0,s2
    2954:	00b485b3          	add	a1,s1,a1
    2958:	fffff097          	auipc	ra,0xfffff
    295c:	d7c080e7          	jalr	-644(ra) # 16d4 <fatfs_fat_read_sector>
    2960:	00050793          	mv	a5,a0
    2964:	fff00513          	li	a0,-1
    2968:	04078a63          	beqz	a5,29bc <fatfs_find_next_cluster+0xa4>
    296c:	03092703          	lw	a4,48(s2)
    2970:	2087a783          	lw	a5,520(a5)
    2974:	06071063          	bnez	a4,29d4 <fatfs_find_next_cluster+0xbc>
    2978:	00849493          	sll	s1,s1,0x8
    297c:	40940433          	sub	s0,s0,s1
    2980:	00010737          	lui	a4,0x10
    2984:	00141413          	sll	s0,s0,0x1
    2988:	fff70713          	add	a4,a4,-1 # ffff <Songs+0x526f>
    298c:	00e47433          	and	s0,s0,a4
    2990:	008787b3          	add	a5,a5,s0
    2994:	0017c503          	lbu	a0,1(a5)
    2998:	0007c783          	lbu	a5,0(a5)
    299c:	00851513          	sll	a0,a0,0x8
    29a0:	00f50533          	add	a0,a0,a5
    29a4:	ffff07b7          	lui	a5,0xffff0
    29a8:	00878793          	add	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    29ac:	00f507b3          	add	a5,a0,a5
    29b0:	00700713          	li	a4,7
    29b4:	00f76463          	bltu	a4,a5,29bc <fatfs_find_next_cluster+0xa4>
    29b8:	fff00513          	li	a0,-1
    29bc:	00c12083          	lw	ra,12(sp)
    29c0:	00812403          	lw	s0,8(sp)
    29c4:	00412483          	lw	s1,4(sp)
    29c8:	00012903          	lw	s2,0(sp)
    29cc:	01010113          	add	sp,sp,16
    29d0:	00008067          	ret
    29d4:	00749493          	sll	s1,s1,0x7
    29d8:	40940433          	sub	s0,s0,s1
    29dc:	00010737          	lui	a4,0x10
    29e0:	fff70713          	add	a4,a4,-1 # ffff <Songs+0x526f>
    29e4:	00241413          	sll	s0,s0,0x2
    29e8:	00e47433          	and	s0,s0,a4
    29ec:	008787b3          	add	a5,a5,s0
    29f0:	0037c503          	lbu	a0,3(a5)
    29f4:	0027c703          	lbu	a4,2(a5)
    29f8:	01851513          	sll	a0,a0,0x18
    29fc:	01071713          	sll	a4,a4,0x10
    2a00:	00e50533          	add	a0,a0,a4
    2a04:	0007c703          	lbu	a4,0(a5)
    2a08:	0017c783          	lbu	a5,1(a5)
    2a0c:	00e50533          	add	a0,a0,a4
    2a10:	00879793          	sll	a5,a5,0x8
    2a14:	00f50533          	add	a0,a0,a5
    2a18:	00451513          	sll	a0,a0,0x4
    2a1c:	00455513          	srl	a0,a0,0x4
    2a20:	f00007b7          	lui	a5,0xf0000
    2a24:	f85ff06f          	j	29a8 <fatfs_find_next_cluster+0x90>

00002a28 <fatfs_sector_reader>:
    2a28:	03052783          	lw	a5,48(a0)
    2a2c:	fd010113          	add	sp,sp,-48
    2a30:	02812423          	sw	s0,40(sp)
    2a34:	03212023          	sw	s2,32(sp)
    2a38:	01312e23          	sw	s3,28(sp)
    2a3c:	02112623          	sw	ra,44(sp)
    2a40:	02912223          	sw	s1,36(sp)
    2a44:	01412c23          	sw	s4,24(sp)
    2a48:	01512a23          	sw	s5,20(sp)
    2a4c:	00f5e7b3          	or	a5,a1,a5
    2a50:	00050413          	mv	s0,a0
    2a54:	00060913          	mv	s2,a2
    2a58:	00068993          	mv	s3,a3
    2a5c:	06079c63          	bnez	a5,2ad4 <fatfs_sector_reader+0xac>
    2a60:	01052783          	lw	a5,16(a0)
    2a64:	02f66663          	bltu	a2,a5,2a90 <fatfs_sector_reader+0x68>
    2a68:	00000513          	li	a0,0
    2a6c:	02c12083          	lw	ra,44(sp)
    2a70:	02812403          	lw	s0,40(sp)
    2a74:	02412483          	lw	s1,36(sp)
    2a78:	02012903          	lw	s2,32(sp)
    2a7c:	01c12983          	lw	s3,28(sp)
    2a80:	01812a03          	lw	s4,24(sp)
    2a84:	01412a83          	lw	s5,20(sp)
    2a88:	03010113          	add	sp,sp,48
    2a8c:	00008067          	ret
    2a90:	01c52503          	lw	a0,28(a0)
    2a94:	00c42783          	lw	a5,12(s0)
    2a98:	00f50533          	add	a0,a0,a5
    2a9c:	01250533          	add	a0,a0,s2
    2aa0:	0a098263          	beqz	s3,2b44 <fatfs_sector_reader+0x11c>
    2aa4:	03442783          	lw	a5,52(s0)
    2aa8:	00100613          	li	a2,1
    2aac:	00098593          	mv	a1,s3
    2ab0:	02812403          	lw	s0,40(sp)
    2ab4:	02c12083          	lw	ra,44(sp)
    2ab8:	02412483          	lw	s1,36(sp)
    2abc:	02012903          	lw	s2,32(sp)
    2ac0:	01c12983          	lw	s3,28(sp)
    2ac4:	01812a03          	lw	s4,24(sp)
    2ac8:	01412a83          	lw	s5,20(sp)
    2acc:	03010113          	add	sp,sp,48
    2ad0:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2ad4:	00058493          	mv	s1,a1
    2ad8:	00054583          	lbu	a1,0(a0)
    2adc:	00060513          	mv	a0,a2
    2ae0:	00000a93          	li	s5,0
    2ae4:	00b12623          	sw	a1,12(sp)
    2ae8:	ffffe097          	auipc	ra,0xffffe
    2aec:	1cc080e7          	jalr	460(ra) # cb4 <__udivsi3>
    2af0:	00c12583          	lw	a1,12(sp)
    2af4:	00050a13          	mv	s4,a0
    2af8:	00090513          	mv	a0,s2
    2afc:	ffffe097          	auipc	ra,0xffffe
    2b00:	200080e7          	jalr	512(ra) # cfc <__umodsi3>
    2b04:	00050913          	mv	s2,a0
    2b08:	034a9063          	bne	s5,s4,2b28 <fatfs_sector_reader+0x100>
    2b0c:	fff00793          	li	a5,-1
    2b10:	f4f48ce3          	beq	s1,a5,2a68 <fatfs_sector_reader+0x40>
    2b14:	00048593          	mv	a1,s1
    2b18:	00040513          	mv	a0,s0
    2b1c:	fffff097          	auipc	ra,0xfffff
    2b20:	d64080e7          	jalr	-668(ra) # 1880 <fatfs_lba_of_cluster>
    2b24:	f79ff06f          	j	2a9c <fatfs_sector_reader+0x74>
    2b28:	00048593          	mv	a1,s1
    2b2c:	00040513          	mv	a0,s0
    2b30:	00000097          	auipc	ra,0x0
    2b34:	de8080e7          	jalr	-536(ra) # 2918 <fatfs_find_next_cluster>
    2b38:	00050493          	mv	s1,a0
    2b3c:	001a8a93          	add	s5,s5,1
    2b40:	fc9ff06f          	j	2b08 <fatfs_sector_reader+0xe0>
    2b44:	24442783          	lw	a5,580(s0)
    2b48:	00a78c63          	beq	a5,a0,2b60 <fatfs_sector_reader+0x138>
    2b4c:	03442783          	lw	a5,52(s0)
    2b50:	24a42223          	sw	a0,580(s0)
    2b54:	00100613          	li	a2,1
    2b58:	04440593          	add	a1,s0,68
    2b5c:	f55ff06f          	j	2ab0 <fatfs_sector_reader+0x88>
    2b60:	00100513          	li	a0,1
    2b64:	f09ff06f          	j	2a6c <fatfs_sector_reader+0x44>

00002b68 <fatfs_get_file_entry>:
    2b68:	eb010113          	add	sp,sp,-336
    2b6c:	14812423          	sw	s0,328(sp)
    2b70:	01810413          	add	s0,sp,24
    2b74:	14912223          	sw	s1,324(sp)
    2b78:	15212023          	sw	s2,320(sp)
    2b7c:	13312e23          	sw	s3,316(sp)
    2b80:	13412c23          	sw	s4,312(sp)
    2b84:	13512a23          	sw	s5,308(sp)
    2b88:	13612823          	sw	s6,304(sp)
    2b8c:	14112623          	sw	ra,332(sp)
    2b90:	13712623          	sw	s7,300(sp)
    2b94:	13812423          	sw	s8,296(sp)
    2b98:	13912223          	sw	s9,292(sp)
    2b9c:	13a12023          	sw	s10,288(sp)
    2ba0:	00050493          	mv	s1,a0
    2ba4:	00058a93          	mv	s5,a1
    2ba8:	00060913          	mv	s2,a2
    2bac:	00068993          	mv	s3,a3
    2bb0:	10010ea3          	sb	zero,285(sp)
    2bb4:	11c10a13          	add	s4,sp,284
    2bb8:	00040b13          	mv	s6,s0
    2bbc:	00040513          	mv	a0,s0
    2bc0:	00d00613          	li	a2,13
    2bc4:	00000593          	li	a1,0
    2bc8:	00d40413          	add	s0,s0,13
    2bcc:	ffffe097          	auipc	ra,0xffffe
    2bd0:	194080e7          	jalr	404(ra) # d60 <memset>
    2bd4:	ff4414e3          	bne	s0,s4,2bbc <fatfs_get_file_entry+0x54>
    2bd8:	00000a13          	li	s4,0
    2bdc:	24448c13          	add	s8,s1,580
    2be0:	00800c93          	li	s9,8
    2be4:	02000b93          	li	s7,32
    2be8:	02e00d13          	li	s10,46
    2bec:	00000693          	li	a3,0
    2bf0:	000a0613          	mv	a2,s4
    2bf4:	000a8593          	mv	a1,s5
    2bf8:	00048513          	mv	a0,s1
    2bfc:	00000097          	auipc	ra,0x0
    2c00:	e2c080e7          	jalr	-468(ra) # 2a28 <fatfs_sector_reader>
    2c04:	14050e63          	beqz	a0,2d60 <fatfs_get_file_entry+0x1f8>
    2c08:	04448413          	add	s0,s1,68
    2c0c:	00040513          	mv	a0,s0
    2c10:	fffff097          	auipc	ra,0xfffff
    2c14:	f2c080e7          	jalr	-212(ra) # 1b3c <fatfs_entry_lfn_text>
    2c18:	02050263          	beqz	a0,2c3c <fatfs_get_file_entry+0xd4>
    2c1c:	00040593          	mv	a1,s0
    2c20:	000b0513          	mv	a0,s6
    2c24:	fffff097          	auipc	ra,0xfffff
    2c28:	e10080e7          	jalr	-496(ra) # 1a34 <fatfs_lfn_cache_entry>
    2c2c:	02040413          	add	s0,s0,32
    2c30:	fc8c1ee3          	bne	s8,s0,2c0c <fatfs_get_file_entry+0xa4>
    2c34:	001a0a13          	add	s4,s4,1
    2c38:	fb5ff06f          	j	2bec <fatfs_get_file_entry+0x84>
    2c3c:	00040513          	mv	a0,s0
    2c40:	fffff097          	auipc	ra,0xfffff
    2c44:	f10080e7          	jalr	-240(ra) # 1b50 <fatfs_entry_lfn_invalid>
    2c48:	00050663          	beqz	a0,2c54 <fatfs_get_file_entry+0xec>
    2c4c:	10010ea3          	sb	zero,285(sp)
    2c50:	fddff06f          	j	2c2c <fatfs_get_file_entry+0xc4>
    2c54:	00040593          	mv	a1,s0
    2c58:	000b0513          	mv	a0,s6
    2c5c:	fffff097          	auipc	ra,0xfffff
    2c60:	f2c080e7          	jalr	-212(ra) # 1b88 <fatfs_entry_lfn_exists>
    2c64:	06050863          	beqz	a0,2cd4 <fatfs_get_file_entry+0x16c>
    2c68:	000b0513          	mv	a0,s6
    2c6c:	fffff097          	auipc	ra,0xfffff
    2c70:	e94080e7          	jalr	-364(ra) # 1b00 <fatfs_lfn_cache_get>
    2c74:	00090593          	mv	a1,s2
    2c78:	fffff097          	auipc	ra,0xfffff
    2c7c:	6f8080e7          	jalr	1784(ra) # 2370 <fatfs_compare_names>
    2c80:	fc0506e3          	beqz	a0,2c4c <fatfs_get_file_entry+0xe4>
    2c84:	02000613          	li	a2,32
    2c88:	00040593          	mv	a1,s0
    2c8c:	00098513          	mv	a0,s3
    2c90:	ffffe097          	auipc	ra,0xffffe
    2c94:	0ec080e7          	jalr	236(ra) # d7c <memcpy>
    2c98:	00100513          	li	a0,1
    2c9c:	14c12083          	lw	ra,332(sp)
    2ca0:	14812403          	lw	s0,328(sp)
    2ca4:	14412483          	lw	s1,324(sp)
    2ca8:	14012903          	lw	s2,320(sp)
    2cac:	13c12983          	lw	s3,316(sp)
    2cb0:	13812a03          	lw	s4,312(sp)
    2cb4:	13412a83          	lw	s5,308(sp)
    2cb8:	13012b03          	lw	s6,304(sp)
    2cbc:	12c12b83          	lw	s7,300(sp)
    2cc0:	12812c03          	lw	s8,296(sp)
    2cc4:	12412c83          	lw	s9,292(sp)
    2cc8:	12012d03          	lw	s10,288(sp)
    2ccc:	15010113          	add	sp,sp,336
    2cd0:	00008067          	ret
    2cd4:	00040513          	mv	a0,s0
    2cd8:	fffff097          	auipc	ra,0xfffff
    2cdc:	ef8080e7          	jalr	-264(ra) # 1bd0 <fatfs_entry_sfn_only>
    2ce0:	f40506e3          	beqz	a0,2c2c <fatfs_get_file_entry+0xc4>
    2ce4:	00d00613          	li	a2,13
    2ce8:	00000593          	li	a1,0
    2cec:	00810513          	add	a0,sp,8
    2cf0:	ffffe097          	auipc	ra,0xffffe
    2cf4:	070080e7          	jalr	112(ra) # d60 <memset>
    2cf8:	00000793          	li	a5,0
    2cfc:	00f406b3          	add	a3,s0,a5
    2d00:	0006c683          	lbu	a3,0(a3)
    2d04:	00810713          	add	a4,sp,8
    2d08:	00f70733          	add	a4,a4,a5
    2d0c:	00d70023          	sb	a3,0(a4)
    2d10:	00178793          	add	a5,a5,1
    2d14:	ff9794e3          	bne	a5,s9,2cfc <fatfs_get_file_entry+0x194>
    2d18:	00844703          	lbu	a4,8(s0)
    2d1c:	00944683          	lbu	a3,9(s0)
    2d20:	00a44783          	lbu	a5,10(s0)
    2d24:	00e108a3          	sb	a4,17(sp)
    2d28:	00d10923          	sb	a3,18(sp)
    2d2c:	00f109a3          	sb	a5,19(sp)
    2d30:	03768063          	beq	a3,s7,2d50 <fatfs_get_file_entry+0x1e8>
    2d34:	00814703          	lbu	a4,8(sp)
    2d38:	02e00793          	li	a5,46
    2d3c:	01a70e63          	beq	a4,s10,2d58 <fatfs_get_file_entry+0x1f0>
    2d40:	00f10823          	sb	a5,16(sp)
    2d44:	00090593          	mv	a1,s2
    2d48:	00810513          	add	a0,sp,8
    2d4c:	f2dff06f          	j	2c78 <fatfs_get_file_entry+0x110>
    2d50:	ff7792e3          	bne	a5,s7,2d34 <fatfs_get_file_entry+0x1cc>
    2d54:	ff7710e3          	bne	a4,s7,2d34 <fatfs_get_file_entry+0x1cc>
    2d58:	02000793          	li	a5,32
    2d5c:	fe5ff06f          	j	2d40 <fatfs_get_file_entry+0x1d8>
    2d60:	00000513          	li	a0,0
    2d64:	f39ff06f          	j	2c9c <fatfs_get_file_entry+0x134>

00002d68 <_open_directory>:
    2d68:	eb010113          	add	sp,sp,-336
    2d6c:	13512a23          	sw	s5,308(sp)
    2d70:	0000aab7          	lui	s5,0xa
    2d74:	fc8a8793          	add	a5,s5,-56 # 9fc8 <_fs>
    2d78:	14812423          	sw	s0,328(sp)
    2d7c:	14912223          	sw	s1,324(sp)
    2d80:	15212023          	sw	s2,320(sp)
    2d84:	13312e23          	sw	s3,316(sp)
    2d88:	13412c23          	sw	s4,312(sp)
    2d8c:	13612823          	sw	s6,304(sp)
    2d90:	0087a403          	lw	s0,8(a5)
    2d94:	14112623          	sw	ra,332(sp)
    2d98:	00050a13          	mv	s4,a0
    2d9c:	00058913          	mv	s2,a1
    2da0:	fffff097          	auipc	ra,0xfffff
    2da4:	380080e7          	jalr	896(ra) # 2120 <fatfs_total_path_levels>
    2da8:	00050993          	mv	s3,a0
    2dac:	00000493          	li	s1,0
    2db0:	fff00b13          	li	s6,-1
    2db4:	0099d863          	bge	s3,s1,2dc4 <_open_directory+0x5c>
    2db8:	00892023          	sw	s0,0(s2)
    2dbc:	00100513          	li	a0,1
    2dc0:	0240006f          	j	2de4 <_open_directory+0x7c>
    2dc4:	10400693          	li	a3,260
    2dc8:	02c10613          	add	a2,sp,44
    2dcc:	00048593          	mv	a1,s1
    2dd0:	000a0513          	mv	a0,s4
    2dd4:	fffff097          	auipc	ra,0xfffff
    2dd8:	3c0080e7          	jalr	960(ra) # 2194 <fatfs_get_substring>
    2ddc:	03651863          	bne	a0,s6,2e0c <_open_directory+0xa4>
    2de0:	00000513          	li	a0,0
    2de4:	14c12083          	lw	ra,332(sp)
    2de8:	14812403          	lw	s0,328(sp)
    2dec:	14412483          	lw	s1,324(sp)
    2df0:	14012903          	lw	s2,320(sp)
    2df4:	13c12983          	lw	s3,316(sp)
    2df8:	13812a03          	lw	s4,312(sp)
    2dfc:	13412a83          	lw	s5,308(sp)
    2e00:	13012b03          	lw	s6,304(sp)
    2e04:	15010113          	add	sp,sp,336
    2e08:	00008067          	ret
    2e0c:	00c10693          	add	a3,sp,12
    2e10:	02c10613          	add	a2,sp,44
    2e14:	00040593          	mv	a1,s0
    2e18:	fc8a8513          	add	a0,s5,-56
    2e1c:	00000097          	auipc	ra,0x0
    2e20:	d4c080e7          	jalr	-692(ra) # 2b68 <fatfs_get_file_entry>
    2e24:	fa050ee3          	beqz	a0,2de0 <_open_directory+0x78>
    2e28:	00c10513          	add	a0,sp,12
    2e2c:	fffff097          	auipc	ra,0xfffff
    2e30:	de0080e7          	jalr	-544(ra) # 1c0c <fatfs_entry_is_dir>
    2e34:	fa0506e3          	beqz	a0,2de0 <_open_directory+0x78>
    2e38:	02015403          	lhu	s0,32(sp)
    2e3c:	02615783          	lhu	a5,38(sp)
    2e40:	00148493          	add	s1,s1,1
    2e44:	01041413          	sll	s0,s0,0x10
    2e48:	00f40433          	add	s0,s0,a5
    2e4c:	f69ff06f          	j	2db4 <_open_directory+0x4c>

00002e50 <fl_opendir>:
    2e50:	fe010113          	add	sp,sp,-32
    2e54:	fff00793          	li	a5,-1
    2e58:	00f12623          	sw	a5,12(sp)
    2e5c:	000067b7          	lui	a5,0x6
    2e60:	f707a783          	lw	a5,-144(a5) # 5f70 <_filelib_init>
    2e64:	00812c23          	sw	s0,24(sp)
    2e68:	01212823          	sw	s2,16(sp)
    2e6c:	00112e23          	sw	ra,28(sp)
    2e70:	00912a23          	sw	s1,20(sp)
    2e74:	00050913          	mv	s2,a0
    2e78:	00058413          	mv	s0,a1
    2e7c:	00079663          	bnez	a5,2e88 <fl_opendir+0x38>
    2e80:	fffff097          	auipc	ra,0xfffff
    2e84:	b3c080e7          	jalr	-1220(ra) # 19bc <fl_init>
    2e88:	0000a4b7          	lui	s1,0xa
    2e8c:	fc848793          	add	a5,s1,-56 # 9fc8 <_fs>
    2e90:	03c7a783          	lw	a5,60(a5)
    2e94:	fc848493          	add	s1,s1,-56
    2e98:	00078463          	beqz	a5,2ea0 <fl_opendir+0x50>
    2e9c:	000780e7          	jalr	a5
    2ea0:	00090513          	mv	a0,s2
    2ea4:	fffff097          	auipc	ra,0xfffff
    2ea8:	27c080e7          	jalr	636(ra) # 2120 <fatfs_total_path_levels>
    2eac:	fff00793          	li	a5,-1
    2eb0:	02f51063          	bne	a0,a5,2ed0 <fl_opendir+0x80>
    2eb4:	0084a783          	lw	a5,8(s1)
    2eb8:	00f12623          	sw	a5,12(sp)
    2ebc:	00c12783          	lw	a5,12(sp)
    2ec0:	00042023          	sw	zero,0(s0)
    2ec4:	00040423          	sb	zero,8(s0)
    2ec8:	00f42223          	sw	a5,4(s0)
    2ecc:	0180006f          	j	2ee4 <fl_opendir+0x94>
    2ed0:	00c10593          	add	a1,sp,12
    2ed4:	00090513          	mv	a0,s2
    2ed8:	00000097          	auipc	ra,0x0
    2edc:	e90080e7          	jalr	-368(ra) # 2d68 <_open_directory>
    2ee0:	fc051ee3          	bnez	a0,2ebc <fl_opendir+0x6c>
    2ee4:	0404a783          	lw	a5,64(s1)
    2ee8:	00078463          	beqz	a5,2ef0 <fl_opendir+0xa0>
    2eec:	000780e7          	jalr	a5
    2ef0:	00c12703          	lw	a4,12(sp)
    2ef4:	fff00793          	li	a5,-1
    2ef8:	00f71463          	bne	a4,a5,2f00 <fl_opendir+0xb0>
    2efc:	00000413          	li	s0,0
    2f00:	01c12083          	lw	ra,28(sp)
    2f04:	00040513          	mv	a0,s0
    2f08:	01812403          	lw	s0,24(sp)
    2f0c:	01412483          	lw	s1,20(sp)
    2f10:	01012903          	lw	s2,16(sp)
    2f14:	02010113          	add	sp,sp,32
    2f18:	00008067          	ret

00002f1c <_open_file>:
    2f1c:	fc010113          	add	sp,sp,-64
    2f20:	03312623          	sw	s3,44(sp)
    2f24:	02112e23          	sw	ra,60(sp)
    2f28:	02812c23          	sw	s0,56(sp)
    2f2c:	02912a23          	sw	s1,52(sp)
    2f30:	03212823          	sw	s2,48(sp)
    2f34:	00050993          	mv	s3,a0
    2f38:	fffff097          	auipc	ra,0xfffff
    2f3c:	88c080e7          	jalr	-1908(ra) # 17c4 <_allocate_file>
    2f40:	06050463          	beqz	a0,2fa8 <_open_file+0x8c>
    2f44:	01450913          	add	s2,a0,20
    2f48:	00050413          	mv	s0,a0
    2f4c:	10400613          	li	a2,260
    2f50:	00000593          	li	a1,0
    2f54:	00090513          	mv	a0,s2
    2f58:	ffffe097          	auipc	ra,0xffffe
    2f5c:	e08080e7          	jalr	-504(ra) # d60 <memset>
    2f60:	11840493          	add	s1,s0,280
    2f64:	10400613          	li	a2,260
    2f68:	00000593          	li	a1,0
    2f6c:	00048513          	mv	a0,s1
    2f70:	ffffe097          	auipc	ra,0xffffe
    2f74:	df0080e7          	jalr	-528(ra) # d60 <memset>
    2f78:	10400713          	li	a4,260
    2f7c:	00048693          	mv	a3,s1
    2f80:	10400613          	li	a2,260
    2f84:	00090593          	mv	a1,s2
    2f88:	00098513          	mv	a0,s3
    2f8c:	fffff097          	auipc	ra,0xfffff
    2f90:	2fc080e7          	jalr	764(ra) # 2288 <fatfs_split_path>
    2f94:	fff00793          	li	a5,-1
    2f98:	02f51a63          	bne	a0,a5,2fcc <_open_file+0xb0>
    2f9c:	00040513          	mv	a0,s0
    2fa0:	fffff097          	auipc	ra,0xfffff
    2fa4:	898080e7          	jalr	-1896(ra) # 1838 <_free_file>
    2fa8:	00000413          	li	s0,0
    2fac:	03c12083          	lw	ra,60(sp)
    2fb0:	00040513          	mv	a0,s0
    2fb4:	03812403          	lw	s0,56(sp)
    2fb8:	03412483          	lw	s1,52(sp)
    2fbc:	03012903          	lw	s2,48(sp)
    2fc0:	02c12983          	lw	s3,44(sp)
    2fc4:	04010113          	add	sp,sp,64
    2fc8:	00008067          	ret
    2fcc:	00040513          	mv	a0,s0
    2fd0:	fffff097          	auipc	ra,0xfffff
    2fd4:	50c080e7          	jalr	1292(ra) # 24dc <_check_file_open>
    2fd8:	fc0512e3          	bnez	a0,2f9c <_open_file+0x80>
    2fdc:	01444783          	lbu	a5,20(s0)
    2fe0:	08079e63          	bnez	a5,307c <_open_file+0x160>
    2fe4:	0000a7b7          	lui	a5,0xa
    2fe8:	fd07a783          	lw	a5,-48(a5) # 9fd0 <_fs+0x8>
    2fec:	00f42023          	sw	a5,0(s0)
    2ff0:	00042583          	lw	a1,0(s0)
    2ff4:	00048613          	mv	a2,s1
    2ff8:	0000a4b7          	lui	s1,0xa
    2ffc:	00010693          	mv	a3,sp
    3000:	fc848513          	add	a0,s1,-56 # 9fc8 <_fs>
    3004:	00000097          	auipc	ra,0x0
    3008:	b64080e7          	jalr	-1180(ra) # 2b68 <fatfs_get_file_entry>
    300c:	f80508e3          	beqz	a0,2f9c <_open_file+0x80>
    3010:	00010513          	mv	a0,sp
    3014:	fffff097          	auipc	ra,0xfffff
    3018:	c08080e7          	jalr	-1016(ra) # 1c1c <fatfs_entry_is_file>
    301c:	f80500e3          	beqz	a0,2f9c <_open_file+0x80>
    3020:	00b00613          	li	a2,11
    3024:	00010593          	mv	a1,sp
    3028:	21c40513          	add	a0,s0,540
    302c:	ffffe097          	auipc	ra,0xffffe
    3030:	d50080e7          	jalr	-688(ra) # d7c <memcpy>
    3034:	01c12783          	lw	a5,28(sp)
    3038:	01a15703          	lhu	a4,26(sp)
    303c:	00042423          	sw	zero,8(s0)
    3040:	00f42623          	sw	a5,12(s0)
    3044:	01415783          	lhu	a5,20(sp)
    3048:	42042a23          	sw	zero,1076(s0)
    304c:	00042823          	sw	zero,16(s0)
    3050:	01079793          	sll	a5,a5,0x10
    3054:	00e787b3          	add	a5,a5,a4
    3058:	00f42223          	sw	a5,4(s0)
    305c:	fff00793          	li	a5,-1
    3060:	42f42823          	sw	a5,1072(s0)
    3064:	22f42423          	sw	a5,552(s0)
    3068:	22f42623          	sw	a5,556(s0)
    306c:	fc848513          	add	a0,s1,-56
    3070:	00000097          	auipc	ra,0x0
    3074:	84c080e7          	jalr	-1972(ra) # 28bc <fatfs_fat_purge>
    3078:	f35ff06f          	j	2fac <_open_file+0x90>
    307c:	00040593          	mv	a1,s0
    3080:	00090513          	mv	a0,s2
    3084:	00000097          	auipc	ra,0x0
    3088:	ce4080e7          	jalr	-796(ra) # 2d68 <_open_directory>
    308c:	f60512e3          	bnez	a0,2ff0 <_open_file+0xd4>
    3090:	f0dff06f          	j	2f9c <_open_file+0x80>

00003094 <fatfs_sfn_exists>:
    3094:	fe010113          	add	sp,sp,-32
    3098:	00912a23          	sw	s1,20(sp)
    309c:	01212823          	sw	s2,16(sp)
    30a0:	01312623          	sw	s3,12(sp)
    30a4:	01412423          	sw	s4,8(sp)
    30a8:	01512223          	sw	s5,4(sp)
    30ac:	00112e23          	sw	ra,28(sp)
    30b0:	00812c23          	sw	s0,24(sp)
    30b4:	00050493          	mv	s1,a0
    30b8:	00058993          	mv	s3,a1
    30bc:	00060a13          	mv	s4,a2
    30c0:	00000913          	li	s2,0
    30c4:	24450a93          	add	s5,a0,580
    30c8:	00000693          	li	a3,0
    30cc:	00090613          	mv	a2,s2
    30d0:	00098593          	mv	a1,s3
    30d4:	00048513          	mv	a0,s1
    30d8:	00000097          	auipc	ra,0x0
    30dc:	950080e7          	jalr	-1712(ra) # 2a28 <fatfs_sector_reader>
    30e0:	06050263          	beqz	a0,3144 <fatfs_sfn_exists+0xb0>
    30e4:	04448413          	add	s0,s1,68
    30e8:	00040513          	mv	a0,s0
    30ec:	fffff097          	auipc	ra,0xfffff
    30f0:	a50080e7          	jalr	-1456(ra) # 1b3c <fatfs_entry_lfn_text>
    30f4:	02051e63          	bnez	a0,3130 <fatfs_sfn_exists+0x9c>
    30f8:	00040513          	mv	a0,s0
    30fc:	fffff097          	auipc	ra,0xfffff
    3100:	a54080e7          	jalr	-1452(ra) # 1b50 <fatfs_entry_lfn_invalid>
    3104:	02051663          	bnez	a0,3130 <fatfs_sfn_exists+0x9c>
    3108:	00040513          	mv	a0,s0
    310c:	fffff097          	auipc	ra,0xfffff
    3110:	ac4080e7          	jalr	-1340(ra) # 1bd0 <fatfs_entry_sfn_only>
    3114:	00050e63          	beqz	a0,3130 <fatfs_sfn_exists+0x9c>
    3118:	00b00613          	li	a2,11
    311c:	000a0593          	mv	a1,s4
    3120:	00040513          	mv	a0,s0
    3124:	ffffe097          	auipc	ra,0xffffe
    3128:	c9c080e7          	jalr	-868(ra) # dc0 <strncmp>
    312c:	00050a63          	beqz	a0,3140 <fatfs_sfn_exists+0xac>
    3130:	02040413          	add	s0,s0,32
    3134:	fb541ae3          	bne	s0,s5,30e8 <fatfs_sfn_exists+0x54>
    3138:	00190913          	add	s2,s2,1
    313c:	f8dff06f          	j	30c8 <fatfs_sfn_exists+0x34>
    3140:	00100513          	li	a0,1
    3144:	01c12083          	lw	ra,28(sp)
    3148:	01812403          	lw	s0,24(sp)
    314c:	01412483          	lw	s1,20(sp)
    3150:	01012903          	lw	s2,16(sp)
    3154:	00c12983          	lw	s3,12(sp)
    3158:	00812a03          	lw	s4,8(sp)
    315c:	00412a83          	lw	s5,4(sp)
    3160:	02010113          	add	sp,sp,32
    3164:	00008067          	ret

00003168 <fatfs_update_file_length>:
    3168:	03852783          	lw	a5,56(a0)
    316c:	14078e63          	beqz	a5,32c8 <fatfs_update_file_length+0x160>
    3170:	fd010113          	add	sp,sp,-48
    3174:	02912223          	sw	s1,36(sp)
    3178:	03212023          	sw	s2,32(sp)
    317c:	01312e23          	sw	s3,28(sp)
    3180:	01412c23          	sw	s4,24(sp)
    3184:	01512a23          	sw	s5,20(sp)
    3188:	01612823          	sw	s6,16(sp)
    318c:	02112623          	sw	ra,44(sp)
    3190:	02812423          	sw	s0,40(sp)
    3194:	01712623          	sw	s7,12(sp)
    3198:	00050493          	mv	s1,a0
    319c:	00058a13          	mv	s4,a1
    31a0:	00060a93          	mv	s5,a2
    31a4:	00068913          	mv	s2,a3
    31a8:	00000993          	li	s3,0
    31ac:	24450b13          	add	s6,a0,580
    31b0:	00000693          	li	a3,0
    31b4:	00098613          	mv	a2,s3
    31b8:	000a0593          	mv	a1,s4
    31bc:	00048513          	mv	a0,s1
    31c0:	00000097          	auipc	ra,0x0
    31c4:	868080e7          	jalr	-1944(ra) # 2a28 <fatfs_sector_reader>
    31c8:	0c050863          	beqz	a0,3298 <fatfs_update_file_length+0x130>
    31cc:	04448413          	add	s0,s1,68
    31d0:	00040b93          	mv	s7,s0
    31d4:	00040513          	mv	a0,s0
    31d8:	fffff097          	auipc	ra,0xfffff
    31dc:	964080e7          	jalr	-1692(ra) # 1b3c <fatfs_entry_lfn_text>
    31e0:	0a051463          	bnez	a0,3288 <fatfs_update_file_length+0x120>
    31e4:	00040513          	mv	a0,s0
    31e8:	fffff097          	auipc	ra,0xfffff
    31ec:	968080e7          	jalr	-1688(ra) # 1b50 <fatfs_entry_lfn_invalid>
    31f0:	08051c63          	bnez	a0,3288 <fatfs_update_file_length+0x120>
    31f4:	00040513          	mv	a0,s0
    31f8:	fffff097          	auipc	ra,0xfffff
    31fc:	9d8080e7          	jalr	-1576(ra) # 1bd0 <fatfs_entry_sfn_only>
    3200:	08050463          	beqz	a0,3288 <fatfs_update_file_length+0x120>
    3204:	00b00613          	li	a2,11
    3208:	000a8593          	mv	a1,s5
    320c:	00040513          	mv	a0,s0
    3210:	ffffe097          	auipc	ra,0xffffe
    3214:	bb0080e7          	jalr	-1104(ra) # dc0 <strncmp>
    3218:	06051863          	bnez	a0,3288 <fatfs_update_file_length+0x120>
    321c:	00895793          	srl	a5,s2,0x8
    3220:	01240e23          	sb	s2,28(s0)
    3224:	00f40ea3          	sb	a5,29(s0)
    3228:	01095793          	srl	a5,s2,0x10
    322c:	01895913          	srl	s2,s2,0x18
    3230:	00f40f23          	sb	a5,30(s0)
    3234:	01240fa3          	sb	s2,31(s0)
    3238:	00040593          	mv	a1,s0
    323c:	02000613          	li	a2,32
    3240:	00040513          	mv	a0,s0
    3244:	ffffe097          	auipc	ra,0xffffe
    3248:	b38080e7          	jalr	-1224(ra) # d7c <memcpy>
    324c:	02812403          	lw	s0,40(sp)
    3250:	0384a783          	lw	a5,56(s1)
    3254:	2444a503          	lw	a0,580(s1)
    3258:	02c12083          	lw	ra,44(sp)
    325c:	02412483          	lw	s1,36(sp)
    3260:	02012903          	lw	s2,32(sp)
    3264:	01c12983          	lw	s3,28(sp)
    3268:	01812a03          	lw	s4,24(sp)
    326c:	01412a83          	lw	s5,20(sp)
    3270:	01012b03          	lw	s6,16(sp)
    3274:	000b8593          	mv	a1,s7
    3278:	00c12b83          	lw	s7,12(sp)
    327c:	00100613          	li	a2,1
    3280:	03010113          	add	sp,sp,48
    3284:	00078067          	jr	a5
    3288:	02040413          	add	s0,s0,32
    328c:	f56414e3          	bne	s0,s6,31d4 <fatfs_update_file_length+0x6c>
    3290:	00198993          	add	s3,s3,1
    3294:	f1dff06f          	j	31b0 <fatfs_update_file_length+0x48>
    3298:	02c12083          	lw	ra,44(sp)
    329c:	02812403          	lw	s0,40(sp)
    32a0:	02412483          	lw	s1,36(sp)
    32a4:	02012903          	lw	s2,32(sp)
    32a8:	01c12983          	lw	s3,28(sp)
    32ac:	01812a03          	lw	s4,24(sp)
    32b0:	01412a83          	lw	s5,20(sp)
    32b4:	01012b03          	lw	s6,16(sp)
    32b8:	00c12b83          	lw	s7,12(sp)
    32bc:	00000513          	li	a0,0
    32c0:	03010113          	add	sp,sp,48
    32c4:	00008067          	ret
    32c8:	00000513          	li	a0,0
    32cc:	00008067          	ret

000032d0 <fatfs_list_directory_next>:
    32d0:	ec010113          	add	sp,sp,-320
    32d4:	13212823          	sw	s2,304(sp)
    32d8:	13312623          	sw	s3,300(sp)
    32dc:	13412423          	sw	s4,296(sp)
    32e0:	13512223          	sw	s5,292(sp)
    32e4:	12112e23          	sw	ra,316(sp)
    32e8:	12812c23          	sw	s0,312(sp)
    32ec:	12912a23          	sw	s1,308(sp)
    32f0:	00050a13          	mv	s4,a0
    32f4:	00058913          	mv	s2,a1
    32f8:	00060993          	mv	s3,a2
    32fc:	10010ea3          	sb	zero,285(sp)
    3300:	00f00a93          	li	s5,15
    3304:	00092603          	lw	a2,0(s2)
    3308:	00492583          	lw	a1,4(s2)
    330c:	00000693          	li	a3,0
    3310:	000a0513          	mv	a0,s4
    3314:	fffff097          	auipc	ra,0xfffff
    3318:	714080e7          	jalr	1812(ra) # 2a28 <fatfs_sector_reader>
    331c:	12050263          	beqz	a0,3440 <fatfs_list_directory_next+0x170>
    3320:	00894483          	lbu	s1,8(s2)
    3324:	00549413          	sll	s0,s1,0x5
    3328:	04440413          	add	s0,s0,68
    332c:	008a0433          	add	s0,s4,s0
    3330:	009afc63          	bgeu	s5,s1,3348 <fatfs_list_directory_next+0x78>
    3334:	00092783          	lw	a5,0(s2)
    3338:	00090423          	sb	zero,8(s2)
    333c:	00178793          	add	a5,a5,1
    3340:	00f92023          	sw	a5,0(s2)
    3344:	fc1ff06f          	j	3304 <fatfs_list_directory_next+0x34>
    3348:	00040513          	mv	a0,s0
    334c:	ffffe097          	auipc	ra,0xffffe
    3350:	7f0080e7          	jalr	2032(ra) # 1b3c <fatfs_entry_lfn_text>
    3354:	02050263          	beqz	a0,3378 <fatfs_list_directory_next+0xa8>
    3358:	00040593          	mv	a1,s0
    335c:	01810513          	add	a0,sp,24
    3360:	ffffe097          	auipc	ra,0xffffe
    3364:	6d4080e7          	jalr	1748(ra) # 1a34 <fatfs_lfn_cache_entry>
    3368:	00148493          	add	s1,s1,1
    336c:	0ff4f493          	zext.b	s1,s1
    3370:	02040413          	add	s0,s0,32
    3374:	fbdff06f          	j	3330 <fatfs_list_directory_next+0x60>
    3378:	00040513          	mv	a0,s0
    337c:	ffffe097          	auipc	ra,0xffffe
    3380:	7d4080e7          	jalr	2004(ra) # 1b50 <fatfs_entry_lfn_invalid>
    3384:	00050663          	beqz	a0,3390 <fatfs_list_directory_next+0xc0>
    3388:	10010ea3          	sb	zero,285(sp)
    338c:	fddff06f          	j	3368 <fatfs_list_directory_next+0x98>
    3390:	00040593          	mv	a1,s0
    3394:	01810513          	add	a0,sp,24
    3398:	ffffe097          	auipc	ra,0xffffe
    339c:	7f0080e7          	jalr	2032(ra) # 1b88 <fatfs_entry_lfn_exists>
    33a0:	0c050263          	beqz	a0,3464 <fatfs_list_directory_next+0x194>
    33a4:	01810513          	add	a0,sp,24
    33a8:	ffffe097          	auipc	ra,0xffffe
    33ac:	758080e7          	jalr	1880(ra) # 1b00 <fatfs_lfn_cache_get>
    33b0:	00050593          	mv	a1,a0
    33b4:	10300613          	li	a2,259
    33b8:	00098513          	mv	a0,s3
    33bc:	ffffe097          	auipc	ra,0xffffe
    33c0:	a44080e7          	jalr	-1468(ra) # e00 <strncpy>
    33c4:	00040513          	mv	a0,s0
    33c8:	fffff097          	auipc	ra,0xfffff
    33cc:	844080e7          	jalr	-1980(ra) # 1c0c <fatfs_entry_is_dir>
    33d0:	00a03533          	snez	a0,a0
    33d4:	10a98223          	sb	a0,260(s3)
    33d8:	01d44783          	lbu	a5,29(s0)
    33dc:	01c44703          	lbu	a4,28(s0)
    33e0:	00148493          	add	s1,s1,1
    33e4:	00879793          	sll	a5,a5,0x8
    33e8:	00e7e7b3          	or	a5,a5,a4
    33ec:	01e44703          	lbu	a4,30(s0)
    33f0:	0ff4f493          	zext.b	s1,s1
    33f4:	00100513          	li	a0,1
    33f8:	01071713          	sll	a4,a4,0x10
    33fc:	00f76733          	or	a4,a4,a5
    3400:	01f44783          	lbu	a5,31(s0)
    3404:	01879793          	sll	a5,a5,0x18
    3408:	00e7e7b3          	or	a5,a5,a4
    340c:	10f9a623          	sw	a5,268(s3)
    3410:	01544783          	lbu	a5,21(s0)
    3414:	01444703          	lbu	a4,20(s0)
    3418:	01a44683          	lbu	a3,26(s0)
    341c:	00879793          	sll	a5,a5,0x8
    3420:	00e7e7b3          	or	a5,a5,a4
    3424:	01b44703          	lbu	a4,27(s0)
    3428:	01079793          	sll	a5,a5,0x10
    342c:	00871713          	sll	a4,a4,0x8
    3430:	00d76733          	or	a4,a4,a3
    3434:	00e7e7b3          	or	a5,a5,a4
    3438:	10f9a423          	sw	a5,264(s3)
    343c:	00990423          	sb	s1,8(s2)
    3440:	13c12083          	lw	ra,316(sp)
    3444:	13812403          	lw	s0,312(sp)
    3448:	13412483          	lw	s1,308(sp)
    344c:	13012903          	lw	s2,304(sp)
    3450:	12c12983          	lw	s3,300(sp)
    3454:	12812a03          	lw	s4,296(sp)
    3458:	12412a83          	lw	s5,292(sp)
    345c:	14010113          	add	sp,sp,320
    3460:	00008067          	ret
    3464:	00040513          	mv	a0,s0
    3468:	ffffe097          	auipc	ra,0xffffe
    346c:	768080e7          	jalr	1896(ra) # 1bd0 <fatfs_entry_sfn_only>
    3470:	ee050ce3          	beqz	a0,3368 <fatfs_list_directory_next+0x98>
    3474:	00d00613          	li	a2,13
    3478:	00000593          	li	a1,0
    347c:	00810513          	add	a0,sp,8
    3480:	10010ea3          	sb	zero,285(sp)
    3484:	ffffe097          	auipc	ra,0xffffe
    3488:	8dc080e7          	jalr	-1828(ra) # d60 <memset>
    348c:	00000793          	li	a5,0
    3490:	00800713          	li	a4,8
    3494:	00f40633          	add	a2,s0,a5
    3498:	00064603          	lbu	a2,0(a2)
    349c:	00810693          	add	a3,sp,8
    34a0:	00f686b3          	add	a3,a3,a5
    34a4:	00c68023          	sb	a2,0(a3)
    34a8:	00178793          	add	a5,a5,1
    34ac:	fee794e3          	bne	a5,a4,3494 <fatfs_list_directory_next+0x1c4>
    34b0:	00844683          	lbu	a3,8(s0)
    34b4:	00944703          	lbu	a4,9(s0)
    34b8:	00a44783          	lbu	a5,10(s0)
    34bc:	00d108a3          	sb	a3,17(sp)
    34c0:	00e10923          	sb	a4,18(sp)
    34c4:	02000613          	li	a2,32
    34c8:	00f109a3          	sb	a5,19(sp)
    34cc:	02c70463          	beq	a4,a2,34f4 <fatfs_list_directory_next+0x224>
    34d0:	00814703          	lbu	a4,8(sp)
    34d4:	02e00793          	li	a5,46
    34d8:	02f70263          	beq	a4,a5,34fc <fatfs_list_directory_next+0x22c>
    34dc:	00810593          	add	a1,sp,8
    34e0:	00098513          	mv	a0,s3
    34e4:	00f10823          	sb	a5,16(sp)
    34e8:	fffff097          	auipc	ra,0xfffff
    34ec:	084080e7          	jalr	132(ra) # 256c <fatfs_get_sfn_display_name>
    34f0:	ed5ff06f          	j	33c4 <fatfs_list_directory_next+0xf4>
    34f4:	fce79ee3          	bne	a5,a4,34d0 <fatfs_list_directory_next+0x200>
    34f8:	fcf69ce3          	bne	a3,a5,34d0 <fatfs_list_directory_next+0x200>
    34fc:	02000793          	li	a5,32
    3500:	fddff06f          	j	34dc <fatfs_list_directory_next+0x20c>

00003504 <fl_readdir>:
    3504:	000067b7          	lui	a5,0x6
    3508:	f707a783          	lw	a5,-144(a5) # 5f70 <_filelib_init>
    350c:	fe010113          	add	sp,sp,-32
    3510:	00912a23          	sw	s1,20(sp)
    3514:	01212823          	sw	s2,16(sp)
    3518:	00112e23          	sw	ra,28(sp)
    351c:	00812c23          	sw	s0,24(sp)
    3520:	01312623          	sw	s3,12(sp)
    3524:	00050493          	mv	s1,a0
    3528:	00058913          	mv	s2,a1
    352c:	00079663          	bnez	a5,3538 <fl_readdir+0x34>
    3530:	ffffe097          	auipc	ra,0xffffe
    3534:	48c080e7          	jalr	1164(ra) # 19bc <fl_init>
    3538:	0000a437          	lui	s0,0xa
    353c:	fc840793          	add	a5,s0,-56 # 9fc8 <_fs>
    3540:	03c7a783          	lw	a5,60(a5)
    3544:	fc840993          	add	s3,s0,-56
    3548:	00078463          	beqz	a5,3550 <fl_readdir+0x4c>
    354c:	000780e7          	jalr	a5
    3550:	fc840513          	add	a0,s0,-56
    3554:	00090613          	mv	a2,s2
    3558:	00048593          	mv	a1,s1
    355c:	00000097          	auipc	ra,0x0
    3560:	d74080e7          	jalr	-652(ra) # 32d0 <fatfs_list_directory_next>
    3564:	0409a783          	lw	a5,64(s3)
    3568:	00050413          	mv	s0,a0
    356c:	00078463          	beqz	a5,3574 <fl_readdir+0x70>
    3570:	000780e7          	jalr	a5
    3574:	01c12083          	lw	ra,28(sp)
    3578:	00143513          	seqz	a0,s0
    357c:	01812403          	lw	s0,24(sp)
    3580:	01412483          	lw	s1,20(sp)
    3584:	01012903          	lw	s2,16(sp)
    3588:	00c12983          	lw	s3,12(sp)
    358c:	40a00533          	neg	a0,a0
    3590:	02010113          	add	sp,sp,32
    3594:	00008067          	ret

00003598 <_read_sectors>:
    3598:	fd010113          	add	sp,sp,-48
    359c:	01612823          	sw	s6,16(sp)
    35a0:	0000ab37          	lui	s6,0xa
    35a4:	01512a23          	sw	s5,20(sp)
    35a8:	fc8b4a83          	lbu	s5,-56(s6) # 9fc8 <_fs>
    35ac:	01412c23          	sw	s4,24(sp)
    35b0:	00058a13          	mv	s4,a1
    35b4:	02912223          	sw	s1,36(sp)
    35b8:	000a8593          	mv	a1,s5
    35bc:	00050493          	mv	s1,a0
    35c0:	000a0513          	mv	a0,s4
    35c4:	02112623          	sw	ra,44(sp)
    35c8:	02812423          	sw	s0,40(sp)
    35cc:	03212023          	sw	s2,32(sp)
    35d0:	00068413          	mv	s0,a3
    35d4:	01712623          	sw	s7,12(sp)
    35d8:	01812423          	sw	s8,8(sp)
    35dc:	01312e23          	sw	s3,28(sp)
    35e0:	00060c13          	mv	s8,a2
    35e4:	ffffd097          	auipc	ra,0xffffd
    35e8:	6d0080e7          	jalr	1744(ra) # cb4 <__udivsi3>
    35ec:	00050913          	mv	s2,a0
    35f0:	000a8593          	mv	a1,s5
    35f4:	000a0513          	mv	a0,s4
    35f8:	ffffd097          	auipc	ra,0xffffd
    35fc:	704080e7          	jalr	1796(ra) # cfc <__umodsi3>
    3600:	00a407b3          	add	a5,s0,a0
    3604:	00050b93          	mv	s7,a0
    3608:	00fafe63          	bgeu	s5,a5,3624 <_read_sectors+0x8c>
    360c:	00090593          	mv	a1,s2
    3610:	000a8513          	mv	a0,s5
    3614:	ffffe097          	auipc	ra,0xffffe
    3618:	ee8080e7          	jalr	-280(ra) # 14fc <__mulsi3>
    361c:	414a87b3          	sub	a5,s5,s4
    3620:	00f50433          	add	s0,a0,a5
    3624:	2284a983          	lw	s3,552(s1)
    3628:	07299863          	bne	s3,s2,3698 <_read_sectors+0x100>
    362c:	22c4a583          	lw	a1,556(s1)
    3630:	fff00793          	li	a5,-1
    3634:	02f58663          	beq	a1,a5,3660 <_read_sectors+0xc8>
    3638:	fc8b0513          	add	a0,s6,-56
    363c:	ffffe097          	auipc	ra,0xffffe
    3640:	244080e7          	jalr	580(ra) # 1880 <fatfs_lba_of_cluster>
    3644:	017505b3          	add	a1,a0,s7
    3648:	00040693          	mv	a3,s0
    364c:	000c0613          	mv	a2,s8
    3650:	fc8b0513          	add	a0,s6,-56
    3654:	ffffe097          	auipc	ra,0xffffe
    3658:	27c080e7          	jalr	636(ra) # 18d0 <fatfs_sector_read>
    365c:	00051463          	bnez	a0,3664 <_read_sectors+0xcc>
    3660:	00000413          	li	s0,0
    3664:	02c12083          	lw	ra,44(sp)
    3668:	00040513          	mv	a0,s0
    366c:	02812403          	lw	s0,40(sp)
    3670:	02412483          	lw	s1,36(sp)
    3674:	02012903          	lw	s2,32(sp)
    3678:	01c12983          	lw	s3,28(sp)
    367c:	01812a03          	lw	s4,24(sp)
    3680:	01412a83          	lw	s5,20(sp)
    3684:	01012b03          	lw	s6,16(sp)
    3688:	00c12b83          	lw	s7,12(sp)
    368c:	00812c03          	lw	s8,8(sp)
    3690:	03010113          	add	sp,sp,48
    3694:	00008067          	ret
    3698:	035a6463          	bltu	s4,s5,36c0 <_read_sectors+0x128>
    369c:	00198793          	add	a5,s3,1
    36a0:	03279063          	bne	a5,s2,36c0 <_read_sectors+0x128>
    36a4:	22c4a583          	lw	a1,556(s1)
    36a8:	0329e263          	bltu	s3,s2,36cc <_read_sectors+0x134>
    36ac:	fff00793          	li	a5,-1
    36b0:	faf588e3          	beq	a1,a5,3660 <_read_sectors+0xc8>
    36b4:	22b4a623          	sw	a1,556(s1)
    36b8:	2324a423          	sw	s2,552(s1)
    36bc:	f7dff06f          	j	3638 <_read_sectors+0xa0>
    36c0:	0044a583          	lw	a1,4(s1)
    36c4:	00000993          	li	s3,0
    36c8:	fe1ff06f          	j	36a8 <_read_sectors+0x110>
    36cc:	fc8b0513          	add	a0,s6,-56
    36d0:	fffff097          	auipc	ra,0xfffff
    36d4:	248080e7          	jalr	584(ra) # 2918 <fatfs_find_next_cluster>
    36d8:	00050593          	mv	a1,a0
    36dc:	00198993          	add	s3,s3,1
    36e0:	fc9ff06f          	j	36a8 <_read_sectors+0x110>

000036e4 <fatfs_set_fs_info_next_free_cluster>:
    36e4:	03052783          	lw	a5,48(a0)
    36e8:	0a078863          	beqz	a5,3798 <fatfs_set_fs_info_next_free_cluster+0xb4>
    36ec:	ff010113          	add	sp,sp,-16
    36f0:	01c52783          	lw	a5,28(a0)
    36f4:	01212023          	sw	s2,0(sp)
    36f8:	00058913          	mv	s2,a1
    36fc:	01855583          	lhu	a1,24(a0)
    3700:	00812423          	sw	s0,8(sp)
    3704:	00912223          	sw	s1,4(sp)
    3708:	00f585b3          	add	a1,a1,a5
    370c:	00112623          	sw	ra,12(sp)
    3710:	00050493          	mv	s1,a0
    3714:	ffffe097          	auipc	ra,0xffffe
    3718:	fc0080e7          	jalr	-64(ra) # 16d4 <fatfs_fat_read_sector>
    371c:	00050413          	mv	s0,a0
    3720:	06050063          	beqz	a0,3780 <fatfs_set_fs_info_next_free_cluster+0x9c>
    3724:	20852783          	lw	a5,520(a0)
    3728:	00895713          	srl	a4,s2,0x8
    372c:	1f278623          	sb	s2,492(a5)
    3730:	20852783          	lw	a5,520(a0)
    3734:	1ee786a3          	sb	a4,493(a5)
    3738:	20852783          	lw	a5,520(a0)
    373c:	01095713          	srl	a4,s2,0x10
    3740:	1ee78723          	sb	a4,494(a5)
    3744:	20852783          	lw	a5,520(a0)
    3748:	01895713          	srl	a4,s2,0x18
    374c:	1ee787a3          	sb	a4,495(a5)
    3750:	00100793          	li	a5,1
    3754:	20f52223          	sw	a5,516(a0)
    3758:	0384a783          	lw	a5,56(s1)
    375c:	0324a223          	sw	s2,36(s1)
    3760:	00078a63          	beqz	a5,3774 <fatfs_set_fs_info_next_free_cluster+0x90>
    3764:	00050593          	mv	a1,a0
    3768:	20052503          	lw	a0,512(a0)
    376c:	00100613          	li	a2,1
    3770:	000780e7          	jalr	a5
    3774:	fff00793          	li	a5,-1
    3778:	20f42023          	sw	a5,512(s0)
    377c:	20042223          	sw	zero,516(s0)
    3780:	00c12083          	lw	ra,12(sp)
    3784:	00812403          	lw	s0,8(sp)
    3788:	00412483          	lw	s1,4(sp)
    378c:	00012903          	lw	s2,0(sp)
    3790:	01010113          	add	sp,sp,16
    3794:	00008067          	ret
    3798:	00008067          	ret

0000379c <fatfs_find_blank_cluster>:
    379c:	fe010113          	add	sp,sp,-32
    37a0:	01312623          	sw	s3,12(sp)
    37a4:	01512223          	sw	s5,4(sp)
    37a8:	000109b7          	lui	s3,0x10
    37ac:	10000ab7          	lui	s5,0x10000
    37b0:	00912a23          	sw	s1,20(sp)
    37b4:	01212823          	sw	s2,16(sp)
    37b8:	01412423          	sw	s4,8(sp)
    37bc:	00112e23          	sw	ra,28(sp)
    37c0:	00812c23          	sw	s0,24(sp)
    37c4:	00050913          	mv	s2,a0
    37c8:	00058493          	mv	s1,a1
    37cc:	00060a13          	mv	s4,a2
    37d0:	fff98993          	add	s3,s3,-1 # ffff <Songs+0x526f>
    37d4:	fffa8a93          	add	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    37d8:	03092783          	lw	a5,48(s2)
    37dc:	0074d413          	srl	s0,s1,0x7
    37e0:	00079463          	bnez	a5,37e8 <fatfs_find_blank_cluster+0x4c>
    37e4:	0084d413          	srl	s0,s1,0x8
    37e8:	02092783          	lw	a5,32(s2)
    37ec:	0cf47463          	bgeu	s0,a5,38b4 <fatfs_find_blank_cluster+0x118>
    37f0:	01492583          	lw	a1,20(s2)
    37f4:	00090513          	mv	a0,s2
    37f8:	00b405b3          	add	a1,s0,a1
    37fc:	ffffe097          	auipc	ra,0xffffe
    3800:	ed8080e7          	jalr	-296(ra) # 16d4 <fatfs_fat_read_sector>
    3804:	0a050863          	beqz	a0,38b4 <fatfs_find_blank_cluster+0x118>
    3808:	03092783          	lw	a5,48(s2)
    380c:	20852703          	lw	a4,520(a0)
    3810:	04079c63          	bnez	a5,3868 <fatfs_find_blank_cluster+0xcc>
    3814:	00841413          	sll	s0,s0,0x8
    3818:	40848433          	sub	s0,s1,s0
    381c:	00141413          	sll	s0,s0,0x1
    3820:	01347433          	and	s0,s0,s3
    3824:	00870733          	add	a4,a4,s0
    3828:	00174783          	lbu	a5,1(a4)
    382c:	00074703          	lbu	a4,0(a4)
    3830:	00879793          	sll	a5,a5,0x8
    3834:	00e787b3          	add	a5,a5,a4
    3838:	06079a63          	bnez	a5,38ac <fatfs_find_blank_cluster+0x110>
    383c:	009a2023          	sw	s1,0(s4)
    3840:	00100513          	li	a0,1
    3844:	01c12083          	lw	ra,28(sp)
    3848:	01812403          	lw	s0,24(sp)
    384c:	01412483          	lw	s1,20(sp)
    3850:	01012903          	lw	s2,16(sp)
    3854:	00c12983          	lw	s3,12(sp)
    3858:	00812a03          	lw	s4,8(sp)
    385c:	00412a83          	lw	s5,4(sp)
    3860:	02010113          	add	sp,sp,32
    3864:	00008067          	ret
    3868:	00741413          	sll	s0,s0,0x7
    386c:	40848433          	sub	s0,s1,s0
    3870:	00241413          	sll	s0,s0,0x2
    3874:	01347433          	and	s0,s0,s3
    3878:	00870733          	add	a4,a4,s0
    387c:	00374783          	lbu	a5,3(a4)
    3880:	00274683          	lbu	a3,2(a4)
    3884:	01879793          	sll	a5,a5,0x18
    3888:	01069693          	sll	a3,a3,0x10
    388c:	00d787b3          	add	a5,a5,a3
    3890:	00074683          	lbu	a3,0(a4)
    3894:	00174703          	lbu	a4,1(a4)
    3898:	00d787b3          	add	a5,a5,a3
    389c:	00871713          	sll	a4,a4,0x8
    38a0:	00e787b3          	add	a5,a5,a4
    38a4:	0157f7b3          	and	a5,a5,s5
    38a8:	f91ff06f          	j	3838 <fatfs_find_blank_cluster+0x9c>
    38ac:	00148493          	add	s1,s1,1
    38b0:	f29ff06f          	j	37d8 <fatfs_find_blank_cluster+0x3c>
    38b4:	00000513          	li	a0,0
    38b8:	f8dff06f          	j	3844 <fatfs_find_blank_cluster+0xa8>

000038bc <fatfs_fat_set_cluster>:
    38bc:	03052783          	lw	a5,48(a0)
    38c0:	fe010113          	add	sp,sp,-32
    38c4:	00812c23          	sw	s0,24(sp)
    38c8:	00912a23          	sw	s1,20(sp)
    38cc:	01212823          	sw	s2,16(sp)
    38d0:	01312623          	sw	s3,12(sp)
    38d4:	00112e23          	sw	ra,28(sp)
    38d8:	00050993          	mv	s3,a0
    38dc:	00058413          	mv	s0,a1
    38e0:	00060493          	mv	s1,a2
    38e4:	0085d913          	srl	s2,a1,0x8
    38e8:	00078463          	beqz	a5,38f0 <fatfs_fat_set_cluster+0x34>
    38ec:	0075d913          	srl	s2,a1,0x7
    38f0:	0149a583          	lw	a1,20(s3)
    38f4:	00098513          	mv	a0,s3
    38f8:	00b905b3          	add	a1,s2,a1
    38fc:	ffffe097          	auipc	ra,0xffffe
    3900:	dd8080e7          	jalr	-552(ra) # 16d4 <fatfs_fat_read_sector>
    3904:	00050793          	mv	a5,a0
    3908:	00000513          	li	a0,0
    390c:	04078c63          	beqz	a5,3964 <fatfs_fat_set_cluster+0xa8>
    3910:	0309a683          	lw	a3,48(s3)
    3914:	2087a703          	lw	a4,520(a5)
    3918:	0ff4f613          	zext.b	a2,s1
    391c:	06069263          	bnez	a3,3980 <fatfs_fat_set_cluster+0xc4>
    3920:	00891913          	sll	s2,s2,0x8
    3924:	41240433          	sub	s0,s0,s2
    3928:	000106b7          	lui	a3,0x10
    392c:	00141413          	sll	s0,s0,0x1
    3930:	fff68693          	add	a3,a3,-1 # ffff <Songs+0x526f>
    3934:	00d47433          	and	s0,s0,a3
    3938:	00870733          	add	a4,a4,s0
    393c:	00c70023          	sb	a2,0(a4)
    3940:	2087a703          	lw	a4,520(a5)
    3944:	01049493          	sll	s1,s1,0x10
    3948:	0104d493          	srl	s1,s1,0x10
    394c:	00870733          	add	a4,a4,s0
    3950:	0084d493          	srl	s1,s1,0x8
    3954:	009700a3          	sb	s1,1(a4)
    3958:	00100713          	li	a4,1
    395c:	20e7a223          	sw	a4,516(a5)
    3960:	00100513          	li	a0,1
    3964:	01c12083          	lw	ra,28(sp)
    3968:	01812403          	lw	s0,24(sp)
    396c:	01412483          	lw	s1,20(sp)
    3970:	01012903          	lw	s2,16(sp)
    3974:	00c12983          	lw	s3,12(sp)
    3978:	02010113          	add	sp,sp,32
    397c:	00008067          	ret
    3980:	00791913          	sll	s2,s2,0x7
    3984:	41240433          	sub	s0,s0,s2
    3988:	000106b7          	lui	a3,0x10
    398c:	fff68693          	add	a3,a3,-1 # ffff <Songs+0x526f>
    3990:	00241413          	sll	s0,s0,0x2
    3994:	00d47433          	and	s0,s0,a3
    3998:	00870733          	add	a4,a4,s0
    399c:	00c70023          	sb	a2,0(a4)
    39a0:	2087a703          	lw	a4,520(a5)
    39a4:	0084d693          	srl	a3,s1,0x8
    39a8:	00870733          	add	a4,a4,s0
    39ac:	00d700a3          	sb	a3,1(a4)
    39b0:	2087a703          	lw	a4,520(a5)
    39b4:	0104d693          	srl	a3,s1,0x10
    39b8:	0184d493          	srl	s1,s1,0x18
    39bc:	00870733          	add	a4,a4,s0
    39c0:	00d70123          	sb	a3,2(a4)
    39c4:	2087a703          	lw	a4,520(a5)
    39c8:	00870733          	add	a4,a4,s0
    39cc:	009701a3          	sb	s1,3(a4)
    39d0:	f89ff06f          	j	3958 <fatfs_fat_set_cluster+0x9c>

000039d4 <fatfs_free_cluster_chain>:
    39d4:	fe010113          	add	sp,sp,-32
    39d8:	00812c23          	sw	s0,24(sp)
    39dc:	01212823          	sw	s2,16(sp)
    39e0:	00112e23          	sw	ra,28(sp)
    39e4:	00912a23          	sw	s1,20(sp)
    39e8:	00050413          	mv	s0,a0
    39ec:	ffd00913          	li	s2,-3
    39f0:	fff58793          	add	a5,a1,-1
    39f4:	02f97063          	bgeu	s2,a5,3a14 <fatfs_free_cluster_chain+0x40>
    39f8:	01c12083          	lw	ra,28(sp)
    39fc:	01812403          	lw	s0,24(sp)
    3a00:	01412483          	lw	s1,20(sp)
    3a04:	01012903          	lw	s2,16(sp)
    3a08:	00100513          	li	a0,1
    3a0c:	02010113          	add	sp,sp,32
    3a10:	00008067          	ret
    3a14:	00040513          	mv	a0,s0
    3a18:	00b12623          	sw	a1,12(sp)
    3a1c:	fffff097          	auipc	ra,0xfffff
    3a20:	efc080e7          	jalr	-260(ra) # 2918 <fatfs_find_next_cluster>
    3a24:	00c12583          	lw	a1,12(sp)
    3a28:	00050493          	mv	s1,a0
    3a2c:	00000613          	li	a2,0
    3a30:	00040513          	mv	a0,s0
    3a34:	00000097          	auipc	ra,0x0
    3a38:	e88080e7          	jalr	-376(ra) # 38bc <fatfs_fat_set_cluster>
    3a3c:	00048593          	mv	a1,s1
    3a40:	fb1ff06f          	j	39f0 <fatfs_free_cluster_chain+0x1c>

00003a44 <fatfs_fat_add_cluster_to_chain>:
    3a44:	fff00793          	li	a5,-1
    3a48:	02f59463          	bne	a1,a5,3a70 <fatfs_fat_add_cluster_to_chain+0x2c>
    3a4c:	00000513          	li	a0,0
    3a50:	00008067          	ret
    3a54:	00000513          	li	a0,0
    3a58:	01c12083          	lw	ra,28(sp)
    3a5c:	01812403          	lw	s0,24(sp)
    3a60:	01412483          	lw	s1,20(sp)
    3a64:	01012903          	lw	s2,16(sp)
    3a68:	02010113          	add	sp,sp,32
    3a6c:	00008067          	ret
    3a70:	fe010113          	add	sp,sp,-32
    3a74:	00812c23          	sw	s0,24(sp)
    3a78:	00912a23          	sw	s1,20(sp)
    3a7c:	01212823          	sw	s2,16(sp)
    3a80:	00050413          	mv	s0,a0
    3a84:	00112e23          	sw	ra,28(sp)
    3a88:	00058513          	mv	a0,a1
    3a8c:	00060493          	mv	s1,a2
    3a90:	fff00913          	li	s2,-1
    3a94:	00050593          	mv	a1,a0
    3a98:	00a12623          	sw	a0,12(sp)
    3a9c:	00040513          	mv	a0,s0
    3aa0:	fffff097          	auipc	ra,0xfffff
    3aa4:	e78080e7          	jalr	-392(ra) # 2918 <fatfs_find_next_cluster>
    3aa8:	fa0506e3          	beqz	a0,3a54 <fatfs_fat_add_cluster_to_chain+0x10>
    3aac:	00c12583          	lw	a1,12(sp)
    3ab0:	ff2512e3          	bne	a0,s2,3a94 <fatfs_fat_add_cluster_to_chain+0x50>
    3ab4:	00048613          	mv	a2,s1
    3ab8:	00040513          	mv	a0,s0
    3abc:	00000097          	auipc	ra,0x0
    3ac0:	e00080e7          	jalr	-512(ra) # 38bc <fatfs_fat_set_cluster>
    3ac4:	fff00613          	li	a2,-1
    3ac8:	00048593          	mv	a1,s1
    3acc:	00040513          	mv	a0,s0
    3ad0:	00000097          	auipc	ra,0x0
    3ad4:	dec080e7          	jalr	-532(ra) # 38bc <fatfs_fat_set_cluster>
    3ad8:	00100513          	li	a0,1
    3adc:	f7dff06f          	j	3a58 <fatfs_fat_add_cluster_to_chain+0x14>

00003ae0 <fatfs_add_free_space>:
    3ae0:	02452703          	lw	a4,36(a0)
    3ae4:	fd010113          	add	sp,sp,-48
    3ae8:	02812423          	sw	s0,40(sp)
    3aec:	03212023          	sw	s2,32(sp)
    3af0:	01412c23          	sw	s4,24(sp)
    3af4:	01512a23          	sw	s5,20(sp)
    3af8:	02112623          	sw	ra,44(sp)
    3afc:	02912223          	sw	s1,36(sp)
    3b00:	01312e23          	sw	s3,28(sp)
    3b04:	fff00793          	li	a5,-1
    3b08:	0005aa83          	lw	s5,0(a1)
    3b0c:	00050413          	mv	s0,a0
    3b10:	00058913          	mv	s2,a1
    3b14:	00060a13          	mv	s4,a2
    3b18:	00f70863          	beq	a4,a5,3b28 <fatfs_add_free_space+0x48>
    3b1c:	fff00593          	li	a1,-1
    3b20:	00000097          	auipc	ra,0x0
    3b24:	bc4080e7          	jalr	-1084(ra) # 36e4 <fatfs_set_fs_info_next_free_cluster>
    3b28:	00000493          	li	s1,0
    3b2c:	03449663          	bne	s1,s4,3b58 <fatfs_add_free_space+0x78>
    3b30:	00100513          	li	a0,1
    3b34:	02c12083          	lw	ra,44(sp)
    3b38:	02812403          	lw	s0,40(sp)
    3b3c:	02412483          	lw	s1,36(sp)
    3b40:	02012903          	lw	s2,32(sp)
    3b44:	01c12983          	lw	s3,28(sp)
    3b48:	01812a03          	lw	s4,24(sp)
    3b4c:	01412a83          	lw	s5,20(sp)
    3b50:	03010113          	add	sp,sp,48
    3b54:	00008067          	ret
    3b58:	00842583          	lw	a1,8(s0)
    3b5c:	00c10613          	add	a2,sp,12
    3b60:	00040513          	mv	a0,s0
    3b64:	00000097          	auipc	ra,0x0
    3b68:	c38080e7          	jalr	-968(ra) # 379c <fatfs_find_blank_cluster>
    3b6c:	fc0504e3          	beqz	a0,3b34 <fatfs_add_free_space+0x54>
    3b70:	00c12983          	lw	s3,12(sp)
    3b74:	000a8593          	mv	a1,s5
    3b78:	00040513          	mv	a0,s0
    3b7c:	00098613          	mv	a2,s3
    3b80:	00000097          	auipc	ra,0x0
    3b84:	d3c080e7          	jalr	-708(ra) # 38bc <fatfs_fat_set_cluster>
    3b88:	fff00613          	li	a2,-1
    3b8c:	00098593          	mv	a1,s3
    3b90:	00040513          	mv	a0,s0
    3b94:	00000097          	auipc	ra,0x0
    3b98:	d28080e7          	jalr	-728(ra) # 38bc <fatfs_fat_set_cluster>
    3b9c:	00049463          	bnez	s1,3ba4 <fatfs_add_free_space+0xc4>
    3ba0:	01392023          	sw	s3,0(s2)
    3ba4:	00148493          	add	s1,s1,1
    3ba8:	00098a93          	mv	s5,s3
    3bac:	f81ff06f          	j	3b2c <fatfs_add_free_space+0x4c>

00003bb0 <_write_sectors>:
    3bb0:	fb010113          	add	sp,sp,-80
    3bb4:	03312e23          	sw	s3,60(sp)
    3bb8:	0000a9b7          	lui	s3,0xa
    3bbc:	03612823          	sw	s6,48(sp)
    3bc0:	fc89cb03          	lbu	s6,-56(s3) # 9fc8 <_fs>
    3bc4:	03512a23          	sw	s5,52(sp)
    3bc8:	00058a93          	mv	s5,a1
    3bcc:	fff00793          	li	a5,-1
    3bd0:	04812423          	sw	s0,72(sp)
    3bd4:	000b0593          	mv	a1,s6
    3bd8:	00050413          	mv	s0,a0
    3bdc:	000a8513          	mv	a0,s5
    3be0:	00f12e23          	sw	a5,28(sp)
    3be4:	04112623          	sw	ra,76(sp)
    3be8:	04912223          	sw	s1,68(sp)
    3bec:	05212023          	sw	s2,64(sp)
    3bf0:	03712623          	sw	s7,44(sp)
    3bf4:	03812423          	sw	s8,40(sp)
    3bf8:	00068b93          	mv	s7,a3
    3bfc:	03912223          	sw	s9,36(sp)
    3c00:	03a12023          	sw	s10,32(sp)
    3c04:	00060c93          	mv	s9,a2
    3c08:	03412c23          	sw	s4,56(sp)
    3c0c:	ffffd097          	auipc	ra,0xffffd
    3c10:	0a8080e7          	jalr	168(ra) # cb4 <__udivsi3>
    3c14:	00050493          	mv	s1,a0
    3c18:	000b0593          	mv	a1,s6
    3c1c:	000a8513          	mv	a0,s5
    3c20:	ffffd097          	auipc	ra,0xffffd
    3c24:	0dc080e7          	jalr	220(ra) # cfc <__umodsi3>
    3c28:	00ab87b3          	add	a5,s7,a0
    3c2c:	00050c13          	mv	s8,a0
    3c30:	fc898d13          	add	s10,s3,-56
    3c34:	000b8913          	mv	s2,s7
    3c38:	00fb7e63          	bgeu	s6,a5,3c54 <_write_sectors+0xa4>
    3c3c:	00048593          	mv	a1,s1
    3c40:	000b0513          	mv	a0,s6
    3c44:	ffffe097          	auipc	ra,0xffffe
    3c48:	8b8080e7          	jalr	-1864(ra) # 14fc <__mulsi3>
    3c4c:	415b07b3          	sub	a5,s6,s5
    3c50:	00f50933          	add	s2,a0,a5
    3c54:	22842a03          	lw	s4,552(s0)
    3c58:	029a1a63          	bne	s4,s1,3c8c <_write_sectors+0xdc>
    3c5c:	22c42583          	lw	a1,556(s0)
    3c60:	fc898513          	add	a0,s3,-56
    3c64:	ffffe097          	auipc	ra,0xffffe
    3c68:	c1c080e7          	jalr	-996(ra) # 1880 <fatfs_lba_of_cluster>
    3c6c:	018505b3          	add	a1,a0,s8
    3c70:	00090693          	mv	a3,s2
    3c74:	000c8613          	mv	a2,s9
    3c78:	fc898513          	add	a0,s3,-56
    3c7c:	ffffe097          	auipc	ra,0xffffe
    3c80:	c6c080e7          	jalr	-916(ra) # 18e8 <fatfs_sector_write>
    3c84:	04050a63          	beqz	a0,3cd8 <_write_sectors+0x128>
    3c88:	0540006f          	j	3cdc <_write_sectors+0x12c>
    3c8c:	096ae663          	bltu	s5,s6,3d18 <_write_sectors+0x168>
    3c90:	001a0793          	add	a5,s4,1
    3c94:	08979263          	bne	a5,s1,3d18 <_write_sectors+0x168>
    3c98:	22c42583          	lw	a1,556(s0)
    3c9c:	fff00a93          	li	s5,-1
    3ca0:	089a6263          	bltu	s4,s1,3d24 <_write_sectors+0x174>
    3ca4:	fff00793          	li	a5,-1
    3ca8:	0af59463          	bne	a1,a5,3d50 <_write_sectors+0x1a0>
    3cac:	000d4583          	lbu	a1,0(s10)
    3cb0:	fff58513          	add	a0,a1,-1
    3cb4:	01750533          	add	a0,a0,s7
    3cb8:	ffffd097          	auipc	ra,0xffffd
    3cbc:	ffc080e7          	jalr	-4(ra) # cb4 <__udivsi3>
    3cc0:	00050613          	mv	a2,a0
    3cc4:	01c10593          	add	a1,sp,28
    3cc8:	fc898513          	add	a0,s3,-56
    3ccc:	00000097          	auipc	ra,0x0
    3cd0:	e14080e7          	jalr	-492(ra) # 3ae0 <fatfs_add_free_space>
    3cd4:	06051c63          	bnez	a0,3d4c <_write_sectors+0x19c>
    3cd8:	00000913          	li	s2,0
    3cdc:	04c12083          	lw	ra,76(sp)
    3ce0:	04812403          	lw	s0,72(sp)
    3ce4:	04412483          	lw	s1,68(sp)
    3ce8:	03c12983          	lw	s3,60(sp)
    3cec:	03812a03          	lw	s4,56(sp)
    3cf0:	03412a83          	lw	s5,52(sp)
    3cf4:	03012b03          	lw	s6,48(sp)
    3cf8:	02c12b83          	lw	s7,44(sp)
    3cfc:	02812c03          	lw	s8,40(sp)
    3d00:	02412c83          	lw	s9,36(sp)
    3d04:	02012d03          	lw	s10,32(sp)
    3d08:	00090513          	mv	a0,s2
    3d0c:	04012903          	lw	s2,64(sp)
    3d10:	05010113          	add	sp,sp,80
    3d14:	00008067          	ret
    3d18:	00442583          	lw	a1,4(s0)
    3d1c:	00000a13          	li	s4,0
    3d20:	f7dff06f          	j	3c9c <_write_sectors+0xec>
    3d24:	fc898513          	add	a0,s3,-56
    3d28:	00b12623          	sw	a1,12(sp)
    3d2c:	fffff097          	auipc	ra,0xfffff
    3d30:	bec080e7          	jalr	-1044(ra) # 2918 <fatfs_find_next_cluster>
    3d34:	00c12583          	lw	a1,12(sp)
    3d38:	00b12e23          	sw	a1,28(sp)
    3d3c:	f75508e3          	beq	a0,s5,3cac <_write_sectors+0xfc>
    3d40:	001a0a13          	add	s4,s4,1
    3d44:	00050593          	mv	a1,a0
    3d48:	f59ff06f          	j	3ca0 <_write_sectors+0xf0>
    3d4c:	01c12583          	lw	a1,28(sp)
    3d50:	22b42623          	sw	a1,556(s0)
    3d54:	22942423          	sw	s1,552(s0)
    3d58:	f09ff06f          	j	3c60 <_write_sectors+0xb0>

00003d5c <fl_fflush>:
    3d5c:	000067b7          	lui	a5,0x6
    3d60:	f707a783          	lw	a5,-144(a5) # 5f70 <_filelib_init>
    3d64:	ff010113          	add	sp,sp,-16
    3d68:	00812423          	sw	s0,8(sp)
    3d6c:	00112623          	sw	ra,12(sp)
    3d70:	00912223          	sw	s1,4(sp)
    3d74:	00050413          	mv	s0,a0
    3d78:	00079663          	bnez	a5,3d84 <fl_fflush+0x28>
    3d7c:	ffffe097          	auipc	ra,0xffffe
    3d80:	c40080e7          	jalr	-960(ra) # 19bc <fl_init>
    3d84:	04040863          	beqz	s0,3dd4 <fl_fflush+0x78>
    3d88:	0000a7b7          	lui	a5,0xa
    3d8c:	fc878713          	add	a4,a5,-56 # 9fc8 <_fs>
    3d90:	03c72703          	lw	a4,60(a4)
    3d94:	fc878493          	add	s1,a5,-56
    3d98:	00070463          	beqz	a4,3da0 <fl_fflush+0x44>
    3d9c:	000700e7          	jalr	a4
    3da0:	43442783          	lw	a5,1076(s0)
    3da4:	02078263          	beqz	a5,3dc8 <fl_fflush+0x6c>
    3da8:	43042583          	lw	a1,1072(s0)
    3dac:	00100693          	li	a3,1
    3db0:	23040613          	add	a2,s0,560
    3db4:	00040513          	mv	a0,s0
    3db8:	00000097          	auipc	ra,0x0
    3dbc:	df8080e7          	jalr	-520(ra) # 3bb0 <_write_sectors>
    3dc0:	00050463          	beqz	a0,3dc8 <fl_fflush+0x6c>
    3dc4:	42042a23          	sw	zero,1076(s0)
    3dc8:	0404a783          	lw	a5,64(s1)
    3dcc:	00078463          	beqz	a5,3dd4 <fl_fflush+0x78>
    3dd0:	000780e7          	jalr	a5
    3dd4:	00c12083          	lw	ra,12(sp)
    3dd8:	00812403          	lw	s0,8(sp)
    3ddc:	00412483          	lw	s1,4(sp)
    3de0:	00000513          	li	a0,0
    3de4:	01010113          	add	sp,sp,16
    3de8:	00008067          	ret

00003dec <fl_fclose>:
    3dec:	000067b7          	lui	a5,0x6
    3df0:	f707a783          	lw	a5,-144(a5) # 5f70 <_filelib_init>
    3df4:	ff010113          	add	sp,sp,-16
    3df8:	00812423          	sw	s0,8(sp)
    3dfc:	00112623          	sw	ra,12(sp)
    3e00:	00912223          	sw	s1,4(sp)
    3e04:	01212023          	sw	s2,0(sp)
    3e08:	00050413          	mv	s0,a0
    3e0c:	00079663          	bnez	a5,3e18 <fl_fclose+0x2c>
    3e10:	ffffe097          	auipc	ra,0xffffe
    3e14:	bac080e7          	jalr	-1108(ra) # 19bc <fl_init>
    3e18:	08040e63          	beqz	s0,3eb4 <fl_fclose+0xc8>
    3e1c:	0000a4b7          	lui	s1,0xa
    3e20:	fc848793          	add	a5,s1,-56 # 9fc8 <_fs>
    3e24:	03c7a783          	lw	a5,60(a5)
    3e28:	fc848913          	add	s2,s1,-56
    3e2c:	00078463          	beqz	a5,3e34 <fl_fclose+0x48>
    3e30:	000780e7          	jalr	a5
    3e34:	00040513          	mv	a0,s0
    3e38:	00000097          	auipc	ra,0x0
    3e3c:	f24080e7          	jalr	-220(ra) # 3d5c <fl_fflush>
    3e40:	01042783          	lw	a5,16(s0)
    3e44:	00078e63          	beqz	a5,3e60 <fl_fclose+0x74>
    3e48:	00c42683          	lw	a3,12(s0)
    3e4c:	00042583          	lw	a1,0(s0)
    3e50:	21c40613          	add	a2,s0,540
    3e54:	fc848513          	add	a0,s1,-56
    3e58:	fffff097          	auipc	ra,0xfffff
    3e5c:	310080e7          	jalr	784(ra) # 3168 <fatfs_update_file_length>
    3e60:	fff00793          	li	a5,-1
    3e64:	42f42823          	sw	a5,1072(s0)
    3e68:	00040513          	mv	a0,s0
    3e6c:	00042423          	sw	zero,8(s0)
    3e70:	00042623          	sw	zero,12(s0)
    3e74:	00042223          	sw	zero,4(s0)
    3e78:	42042a23          	sw	zero,1076(s0)
    3e7c:	00042823          	sw	zero,16(s0)
    3e80:	ffffe097          	auipc	ra,0xffffe
    3e84:	9b8080e7          	jalr	-1608(ra) # 1838 <_free_file>
    3e88:	fc848513          	add	a0,s1,-56
    3e8c:	fffff097          	auipc	ra,0xfffff
    3e90:	a30080e7          	jalr	-1488(ra) # 28bc <fatfs_fat_purge>
    3e94:	04092783          	lw	a5,64(s2)
    3e98:	00078e63          	beqz	a5,3eb4 <fl_fclose+0xc8>
    3e9c:	00812403          	lw	s0,8(sp)
    3ea0:	00c12083          	lw	ra,12(sp)
    3ea4:	00412483          	lw	s1,4(sp)
    3ea8:	00012903          	lw	s2,0(sp)
    3eac:	01010113          	add	sp,sp,16
    3eb0:	00078067          	jr	a5
    3eb4:	00c12083          	lw	ra,12(sp)
    3eb8:	00812403          	lw	s0,8(sp)
    3ebc:	00412483          	lw	s1,4(sp)
    3ec0:	00012903          	lw	s2,0(sp)
    3ec4:	01010113          	add	sp,sp,16
    3ec8:	00008067          	ret

00003ecc <fl_fread>:
    3ecc:	fd010113          	add	sp,sp,-48
    3ed0:	01612823          	sw	s6,16(sp)
    3ed4:	00050b13          	mv	s6,a0
    3ed8:	00058513          	mv	a0,a1
    3edc:	00060593          	mv	a1,a2
    3ee0:	02812423          	sw	s0,40(sp)
    3ee4:	02912223          	sw	s1,36(sp)
    3ee8:	02112623          	sw	ra,44(sp)
    3eec:	03212023          	sw	s2,32(sp)
    3ef0:	01312e23          	sw	s3,28(sp)
    3ef4:	01412c23          	sw	s4,24(sp)
    3ef8:	01512a23          	sw	s5,20(sp)
    3efc:	01712623          	sw	s7,12(sp)
    3f00:	00068493          	mv	s1,a3
    3f04:	ffffd097          	auipc	ra,0xffffd
    3f08:	5f8080e7          	jalr	1528(ra) # 14fc <__mulsi3>
    3f0c:	000067b7          	lui	a5,0x6
    3f10:	f707a783          	lw	a5,-144(a5) # 5f70 <_filelib_init>
    3f14:	00050413          	mv	s0,a0
    3f18:	00079663          	bnez	a5,3f24 <fl_fread+0x58>
    3f1c:	ffffe097          	auipc	ra,0xffffe
    3f20:	aa0080e7          	jalr	-1376(ra) # 19bc <fl_init>
    3f24:	120b0a63          	beqz	s6,4058 <fl_fread+0x18c>
    3f28:	12048863          	beqz	s1,4058 <fl_fread+0x18c>
    3f2c:	4384c783          	lbu	a5,1080(s1)
    3f30:	0017f793          	and	a5,a5,1
    3f34:	12078263          	beqz	a5,4058 <fl_fread+0x18c>
    3f38:	06040e63          	beqz	s0,3fb4 <fl_fread+0xe8>
    3f3c:	0084a583          	lw	a1,8(s1)
    3f40:	00c4a783          	lw	a5,12(s1)
    3f44:	10f5fa63          	bgeu	a1,a5,4058 <fl_fread+0x18c>
    3f48:	00b40733          	add	a4,s0,a1
    3f4c:	00040a93          	mv	s5,s0
    3f50:	00e7f463          	bgeu	a5,a4,3f58 <fl_fread+0x8c>
    3f54:	40b78ab3          	sub	s5,a5,a1
    3f58:	0095d993          	srl	s3,a1,0x9
    3f5c:	1ff5f913          	and	s2,a1,511
    3f60:	00000413          	li	s0,0
    3f64:	05505863          	blez	s5,3fb4 <fl_fread+0xe8>
    3f68:	06091e63          	bnez	s2,3fe4 <fl_fread+0x118>
    3f6c:	408a86b3          	sub	a3,s5,s0
    3f70:	1ff00793          	li	a5,511
    3f74:	00000913          	li	s2,0
    3f78:	06d7d663          	bge	a5,a3,3fe4 <fl_fread+0x118>
    3f7c:	4096d693          	sra	a3,a3,0x9
    3f80:	008b0633          	add	a2,s6,s0
    3f84:	00098593          	mv	a1,s3
    3f88:	00048513          	mv	a0,s1
    3f8c:	fffff097          	auipc	ra,0xfffff
    3f90:	60c080e7          	jalr	1548(ra) # 3598 <_read_sectors>
    3f94:	02050063          	beqz	a0,3fb4 <fl_fread+0xe8>
    3f98:	00951a13          	sll	s4,a0,0x9
    3f9c:	00a989b3          	add	s3,s3,a0
    3fa0:	0084a783          	lw	a5,8(s1)
    3fa4:	01440433          	add	s0,s0,s4
    3fa8:	014787b3          	add	a5,a5,s4
    3fac:	00f4a423          	sw	a5,8(s1)
    3fb0:	fb544ee3          	blt	s0,s5,3f6c <fl_fread+0xa0>
    3fb4:	02c12083          	lw	ra,44(sp)
    3fb8:	00040513          	mv	a0,s0
    3fbc:	02812403          	lw	s0,40(sp)
    3fc0:	02412483          	lw	s1,36(sp)
    3fc4:	02012903          	lw	s2,32(sp)
    3fc8:	01c12983          	lw	s3,28(sp)
    3fcc:	01812a03          	lw	s4,24(sp)
    3fd0:	01412a83          	lw	s5,20(sp)
    3fd4:	01012b03          	lw	s6,16(sp)
    3fd8:	00c12b83          	lw	s7,12(sp)
    3fdc:	03010113          	add	sp,sp,48
    3fe0:	00008067          	ret
    3fe4:	4304a783          	lw	a5,1072(s1)
    3fe8:	23048b93          	add	s7,s1,560
    3fec:	03378e63          	beq	a5,s3,4028 <fl_fread+0x15c>
    3ff0:	4344a783          	lw	a5,1076(s1)
    3ff4:	00078863          	beqz	a5,4004 <fl_fread+0x138>
    3ff8:	00048513          	mv	a0,s1
    3ffc:	00000097          	auipc	ra,0x0
    4000:	d60080e7          	jalr	-672(ra) # 3d5c <fl_fflush>
    4004:	00100693          	li	a3,1
    4008:	000b8613          	mv	a2,s7
    400c:	00098593          	mv	a1,s3
    4010:	00048513          	mv	a0,s1
    4014:	fffff097          	auipc	ra,0xfffff
    4018:	584080e7          	jalr	1412(ra) # 3598 <_read_sectors>
    401c:	f8050ce3          	beqz	a0,3fb4 <fl_fread+0xe8>
    4020:	4334a823          	sw	s3,1072(s1)
    4024:	4204aa23          	sw	zero,1076(s1)
    4028:	20000793          	li	a5,512
    402c:	412787b3          	sub	a5,a5,s2
    4030:	408a8a33          	sub	s4,s5,s0
    4034:	0147d463          	bge	a5,s4,403c <fl_fread+0x170>
    4038:	00078a13          	mv	s4,a5
    403c:	000a0613          	mv	a2,s4
    4040:	012b85b3          	add	a1,s7,s2
    4044:	008b0533          	add	a0,s6,s0
    4048:	ffffd097          	auipc	ra,0xffffd
    404c:	d34080e7          	jalr	-716(ra) # d7c <memcpy>
    4050:	00198993          	add	s3,s3,1
    4054:	f4dff06f          	j	3fa0 <fl_fread+0xd4>
    4058:	fff00413          	li	s0,-1
    405c:	f59ff06f          	j	3fb4 <fl_fread+0xe8>

00004060 <fatfs_allocate_free_space>:
    4060:	02069a63          	bnez	a3,4094 <fatfs_allocate_free_space+0x34>
    4064:	00000513          	li	a0,0
    4068:	00008067          	ret
    406c:	00000513          	li	a0,0
    4070:	02c12083          	lw	ra,44(sp)
    4074:	02812403          	lw	s0,40(sp)
    4078:	02412483          	lw	s1,36(sp)
    407c:	02012903          	lw	s2,32(sp)
    4080:	01c12983          	lw	s3,28(sp)
    4084:	01812a03          	lw	s4,24(sp)
    4088:	01412a83          	lw	s5,20(sp)
    408c:	03010113          	add	sp,sp,48
    4090:	00008067          	ret
    4094:	02452703          	lw	a4,36(a0)
    4098:	fd010113          	add	sp,sp,-48
    409c:	02812423          	sw	s0,40(sp)
    40a0:	03212023          	sw	s2,32(sp)
    40a4:	01312e23          	sw	s3,28(sp)
    40a8:	01512a23          	sw	s5,20(sp)
    40ac:	02112623          	sw	ra,44(sp)
    40b0:	02912223          	sw	s1,36(sp)
    40b4:	01412c23          	sw	s4,24(sp)
    40b8:	fff00793          	li	a5,-1
    40bc:	00050413          	mv	s0,a0
    40c0:	00058a93          	mv	s5,a1
    40c4:	00060993          	mv	s3,a2
    40c8:	00068913          	mv	s2,a3
    40cc:	00f70863          	beq	a4,a5,40dc <fatfs_allocate_free_space+0x7c>
    40d0:	fff00593          	li	a1,-1
    40d4:	fffff097          	auipc	ra,0xfffff
    40d8:	610080e7          	jalr	1552(ra) # 36e4 <fatfs_set_fs_info_next_free_cluster>
    40dc:	00044a03          	lbu	s4,0(s0)
    40e0:	00090513          	mv	a0,s2
    40e4:	009a1a13          	sll	s4,s4,0x9
    40e8:	000a0593          	mv	a1,s4
    40ec:	ffffd097          	auipc	ra,0xffffd
    40f0:	bc8080e7          	jalr	-1080(ra) # cb4 <__udivsi3>
    40f4:	00050493          	mv	s1,a0
    40f8:	00050593          	mv	a1,a0
    40fc:	000a0513          	mv	a0,s4
    4100:	ffffd097          	auipc	ra,0xffffd
    4104:	3fc080e7          	jalr	1020(ra) # 14fc <__mulsi3>
    4108:	01250463          	beq	a0,s2,4110 <fatfs_allocate_free_space+0xb0>
    410c:	00148493          	add	s1,s1,1
    4110:	040a8463          	beqz	s5,4158 <fatfs_allocate_free_space+0xf8>
    4114:	00842583          	lw	a1,8(s0)
    4118:	00c10613          	add	a2,sp,12
    411c:	00040513          	mv	a0,s0
    4120:	fffff097          	auipc	ra,0xfffff
    4124:	67c080e7          	jalr	1660(ra) # 379c <fatfs_find_blank_cluster>
    4128:	f40502e3          	beqz	a0,406c <fatfs_allocate_free_space+0xc>
    412c:	00100793          	li	a5,1
    4130:	02f49863          	bne	s1,a5,4160 <fatfs_allocate_free_space+0x100>
    4134:	00c12483          	lw	s1,12(sp)
    4138:	fff00613          	li	a2,-1
    413c:	00040513          	mv	a0,s0
    4140:	00048593          	mv	a1,s1
    4144:	fffff097          	auipc	ra,0xfffff
    4148:	778080e7          	jalr	1912(ra) # 38bc <fatfs_fat_set_cluster>
    414c:	00100513          	li	a0,1
    4150:	0099a023          	sw	s1,0(s3)
    4154:	f1dff06f          	j	4070 <fatfs_allocate_free_space+0x10>
    4158:	0009a783          	lw	a5,0(s3)
    415c:	00f12623          	sw	a5,12(sp)
    4160:	00048613          	mv	a2,s1
    4164:	00c10593          	add	a1,sp,12
    4168:	00040513          	mv	a0,s0
    416c:	00000097          	auipc	ra,0x0
    4170:	974080e7          	jalr	-1676(ra) # 3ae0 <fatfs_add_free_space>
    4174:	00a03533          	snez	a0,a0
    4178:	ef9ff06f          	j	4070 <fatfs_allocate_free_space+0x10>

0000417c <fatfs_add_file_entry>:
    417c:	f8010113          	add	sp,sp,-128
    4180:	00f12a23          	sw	a5,20(sp)
    4184:	03852783          	lw	a5,56(a0)
    4188:	06112e23          	sw	ra,124(sp)
    418c:	06812c23          	sw	s0,120(sp)
    4190:	06912a23          	sw	s1,116(sp)
    4194:	07212823          	sw	s2,112(sp)
    4198:	07312623          	sw	s3,108(sp)
    419c:	07412423          	sw	s4,104(sp)
    41a0:	07512223          	sw	s5,100(sp)
    41a4:	07612023          	sw	s6,96(sp)
    41a8:	05712e23          	sw	s7,92(sp)
    41ac:	05812c23          	sw	s8,88(sp)
    41b0:	05912a23          	sw	s9,84(sp)
    41b4:	05a12823          	sw	s10,80(sp)
    41b8:	05b12623          	sw	s11,76(sp)
    41bc:	00b12423          	sw	a1,8(sp)
    41c0:	00c12623          	sw	a2,12(sp)
    41c4:	00e12823          	sw	a4,16(sp)
    41c8:	01012c23          	sw	a6,24(sp)
    41cc:	2c078063          	beqz	a5,448c <fatfs_add_file_entry+0x310>
    41d0:	00050413          	mv	s0,a0
    41d4:	00060513          	mv	a0,a2
    41d8:	00068a93          	mv	s5,a3
    41dc:	ffffe097          	auipc	ra,0xffffe
    41e0:	a50080e7          	jalr	-1456(ra) # 1c2c <fatfs_lfn_entries_required>
    41e4:	00150713          	add	a4,a0,1
    41e8:	00100793          	li	a5,1
    41ec:	00050913          	mv	s2,a0
    41f0:	28e7fe63          	bgeu	a5,a4,448c <fatfs_add_file_entry+0x310>
    41f4:	00000493          	li	s1,0
    41f8:	00000a13          	li	s4,0
    41fc:	00000993          	li	s3,0
    4200:	00000b13          	li	s6,0
    4204:	00000d93          	li	s11,0
    4208:	0e500c93          	li	s9,229
    420c:	01000d13          	li	s10,16
    4210:	00812583          	lw	a1,8(sp)
    4214:	00000693          	li	a3,0
    4218:	00048613          	mv	a2,s1
    421c:	00040513          	mv	a0,s0
    4220:	fffff097          	auipc	ra,0xfffff
    4224:	808080e7          	jalr	-2040(ra) # 2a28 <fatfs_sector_reader>
    4228:	18050063          	beqz	a0,43a8 <fatfs_add_file_entry+0x22c>
    422c:	04440c13          	add	s8,s0,68
    4230:	000d8793          	mv	a5,s11
    4234:	00000b93          	li	s7,0
    4238:	000c0513          	mv	a0,s8
    423c:	00f12e23          	sw	a5,28(sp)
    4240:	ffffe097          	auipc	ra,0xffffe
    4244:	8fc080e7          	jalr	-1796(ra) # 1b3c <fatfs_entry_lfn_text>
    4248:	01c12783          	lw	a5,28(sp)
    424c:	00050d93          	mv	s11,a0
    4250:	02050c63          	beqz	a0,4288 <fatfs_add_file_entry+0x10c>
    4254:	00079863          	bnez	a5,4264 <fatfs_add_file_entry+0xe8>
    4258:	000b8a13          	mv	s4,s7
    425c:	00048993          	mv	s3,s1
    4260:	00100b13          	li	s6,1
    4264:	00178d93          	add	s11,a5,1
    4268:	001b8713          	add	a4,s7,1
    426c:	0ff77b93          	zext.b	s7,a4
    4270:	020c0c13          	add	s8,s8,32
    4274:	01ab9663          	bne	s7,s10,4280 <fatfs_add_file_entry+0x104>
    4278:	00148493          	add	s1,s1,1
    427c:	f95ff06f          	j	4210 <fatfs_add_file_entry+0x94>
    4280:	000d8793          	mv	a5,s11
    4284:	fb5ff06f          	j	4238 <fatfs_add_file_entry+0xbc>
    4288:	000c4603          	lbu	a2,0(s8)
    428c:	11961863          	bne	a2,s9,439c <fatfs_add_file_entry+0x220>
    4290:	00079863          	bnez	a5,42a0 <fatfs_add_file_entry+0x124>
    4294:	000b8a13          	mv	s4,s7
    4298:	00048993          	mv	s3,s1
    429c:	00100b13          	li	s6,1
    42a0:	00178d93          	add	s11,a5,1
    42a4:	fd27c2e3          	blt	a5,s2,4268 <fatfs_add_file_entry+0xec>
    42a8:	00ba8713          	add	a4,s5,11
    42ac:	000a8793          	mv	a5,s5
    42b0:	00000493          	li	s1,0
    42b4:	0007c603          	lbu	a2,0(a5)
    42b8:	00749693          	sll	a3,s1,0x7
    42bc:	0014d493          	srl	s1,s1,0x1
    42c0:	00c484b3          	add	s1,s1,a2
    42c4:	00178793          	add	a5,a5,1
    42c8:	00d484b3          	add	s1,s1,a3
    42cc:	0ff4f493          	zext.b	s1,s1
    42d0:	fef712e3          	bne	a4,a5,42b4 <fatfs_add_file_entry+0x138>
    42d4:	00098b13          	mv	s6,s3
    42d8:	00000d13          	li	s10,0
    42dc:	01000d93          	li	s11,16
    42e0:	00812583          	lw	a1,8(sp)
    42e4:	00000693          	li	a3,0
    42e8:	000b0613          	mv	a2,s6
    42ec:	00040513          	mv	a0,s0
    42f0:	ffffe097          	auipc	ra,0xffffe
    42f4:	738080e7          	jalr	1848(ra) # 2a28 <fatfs_sector_reader>
    42f8:	18050a63          	beqz	a0,448c <fatfs_add_file_entry+0x310>
    42fc:	04440c13          	add	s8,s0,68
    4300:	00000713          	li	a4,0
    4304:	00000b93          	li	s7,0
    4308:	000c0c93          	mv	s9,s8
    430c:	000d1663          	bnez	s10,4318 <fatfs_add_file_entry+0x19c>
    4310:	153b1863          	bne	s6,s3,4460 <fatfs_add_file_entry+0x2e4>
    4314:	154b9663          	bne	s7,s4,4460 <fatfs_add_file_entry+0x2e4>
    4318:	12091263          	bnez	s2,443c <fatfs_add_file_entry+0x2c0>
    431c:	01812703          	lw	a4,24(sp)
    4320:	01012603          	lw	a2,16(sp)
    4324:	01412583          	lw	a1,20(sp)
    4328:	02010693          	add	a3,sp,32
    432c:	000a8513          	mv	a0,s5
    4330:	ffffe097          	auipc	ra,0xffffe
    4334:	a54080e7          	jalr	-1452(ra) # 1d84 <fatfs_sfn_create_entry>
    4338:	02000613          	li	a2,32
    433c:	02010593          	add	a1,sp,32
    4340:	000c0513          	mv	a0,s8
    4344:	ffffd097          	auipc	ra,0xffffd
    4348:	a38080e7          	jalr	-1480(ra) # d7c <memcpy>
    434c:	03842783          	lw	a5,56(s0)
    4350:	24442503          	lw	a0,580(s0)
    4354:	00100613          	li	a2,1
    4358:	000c8593          	mv	a1,s9
    435c:	000780e7          	jalr	a5
    4360:	07c12083          	lw	ra,124(sp)
    4364:	07812403          	lw	s0,120(sp)
    4368:	07412483          	lw	s1,116(sp)
    436c:	07012903          	lw	s2,112(sp)
    4370:	06c12983          	lw	s3,108(sp)
    4374:	06812a03          	lw	s4,104(sp)
    4378:	06412a83          	lw	s5,100(sp)
    437c:	06012b03          	lw	s6,96(sp)
    4380:	05c12b83          	lw	s7,92(sp)
    4384:	05812c03          	lw	s8,88(sp)
    4388:	05412c83          	lw	s9,84(sp)
    438c:	05012d03          	lw	s10,80(sp)
    4390:	04c12d83          	lw	s11,76(sp)
    4394:	08010113          	add	sp,sp,128
    4398:	00008067          	ret
    439c:	ee060ae3          	beqz	a2,4290 <fatfs_add_file_entry+0x114>
    43a0:	00000b13          	li	s6,0
    43a4:	ec5ff06f          	j	4268 <fatfs_add_file_entry+0xec>
    43a8:	00842583          	lw	a1,8(s0)
    43ac:	02010613          	add	a2,sp,32
    43b0:	00040513          	mv	a0,s0
    43b4:	fffff097          	auipc	ra,0xfffff
    43b8:	3e8080e7          	jalr	1000(ra) # 379c <fatfs_find_blank_cluster>
    43bc:	0c050863          	beqz	a0,448c <fatfs_add_file_entry+0x310>
    43c0:	02012c83          	lw	s9,32(sp)
    43c4:	00812583          	lw	a1,8(sp)
    43c8:	00040513          	mv	a0,s0
    43cc:	000c8613          	mv	a2,s9
    43d0:	fffff097          	auipc	ra,0xfffff
    43d4:	674080e7          	jalr	1652(ra) # 3a44 <fatfs_fat_add_cluster_to_chain>
    43d8:	0a050a63          	beqz	a0,448c <fatfs_add_file_entry+0x310>
    43dc:	20000613          	li	a2,512
    43e0:	00000593          	li	a1,0
    43e4:	04440513          	add	a0,s0,68
    43e8:	ffffd097          	auipc	ra,0xffffd
    43ec:	978080e7          	jalr	-1672(ra) # d60 <memset>
    43f0:	00000d13          	li	s10,0
    43f4:	00044783          	lbu	a5,0(s0)
    43f8:	00fd6a63          	bltu	s10,a5,440c <fatfs_add_file_entry+0x290>
    43fc:	ea0b16e3          	bnez	s6,42a8 <fatfs_add_file_entry+0x12c>
    4400:	00048993          	mv	s3,s1
    4404:	00000a13          	li	s4,0
    4408:	ea1ff06f          	j	42a8 <fatfs_add_file_entry+0x12c>
    440c:	00000693          	li	a3,0
    4410:	000d0613          	mv	a2,s10
    4414:	000c8593          	mv	a1,s9
    4418:	00040513          	mv	a0,s0
    441c:	ffffd097          	auipc	ra,0xffffd
    4420:	4e4080e7          	jalr	1252(ra) # 1900 <fatfs_write_sector>
    4424:	06050463          	beqz	a0,448c <fatfs_add_file_entry+0x310>
    4428:	001d0d13          	add	s10,s10,1
    442c:	0ffd7d13          	zext.b	s10,s10
    4430:	fc5ff06f          	j	43f4 <fatfs_add_file_entry+0x278>
    4434:	001b0b13          	add	s6,s6,1
    4438:	ea9ff06f          	j	42e0 <fatfs_add_file_entry+0x164>
    443c:	00c12503          	lw	a0,12(sp)
    4440:	fff90913          	add	s2,s2,-1
    4444:	00048693          	mv	a3,s1
    4448:	00090613          	mv	a2,s2
    444c:	000c0593          	mv	a1,s8
    4450:	ffffe097          	auipc	ra,0xffffe
    4454:	80c080e7          	jalr	-2036(ra) # 1c5c <fatfs_filename_to_lfn>
    4458:	00100d13          	li	s10,1
    445c:	00100713          	li	a4,1
    4460:	001b8793          	add	a5,s7,1
    4464:	0ff7fb93          	zext.b	s7,a5
    4468:	020c0c13          	add	s8,s8,32
    446c:	ebbb90e3          	bne	s7,s11,430c <fatfs_add_file_entry+0x190>
    4470:	fc0702e3          	beqz	a4,4434 <fatfs_add_file_entry+0x2b8>
    4474:	03842783          	lw	a5,56(s0)
    4478:	24442503          	lw	a0,580(s0)
    447c:	00100613          	li	a2,1
    4480:	000c8593          	mv	a1,s9
    4484:	000780e7          	jalr	a5
    4488:	fa0516e3          	bnez	a0,4434 <fatfs_add_file_entry+0x2b8>
    448c:	00000513          	li	a0,0
    4490:	ed1ff06f          	j	4360 <fatfs_add_file_entry+0x1e4>

00004494 <fl_fopen>:
    4494:	000067b7          	lui	a5,0x6
    4498:	f707a783          	lw	a5,-144(a5) # 5f70 <_filelib_init>
    449c:	fa010113          	add	sp,sp,-96
    44a0:	04812c23          	sw	s0,88(sp)
    44a4:	05512223          	sw	s5,68(sp)
    44a8:	04112e23          	sw	ra,92(sp)
    44ac:	04912a23          	sw	s1,84(sp)
    44b0:	05212823          	sw	s2,80(sp)
    44b4:	05312623          	sw	s3,76(sp)
    44b8:	05412423          	sw	s4,72(sp)
    44bc:	05612023          	sw	s6,64(sp)
    44c0:	03712e23          	sw	s7,60(sp)
    44c4:	03812c23          	sw	s8,56(sp)
    44c8:	03912a23          	sw	s9,52(sp)
    44cc:	00050a93          	mv	s5,a0
    44d0:	00058413          	mv	s0,a1
    44d4:	00079663          	bnez	a5,44e0 <fl_fopen+0x4c>
    44d8:	ffffd097          	auipc	ra,0xffffd
    44dc:	4e4080e7          	jalr	1252(ra) # 19bc <fl_init>
    44e0:	000067b7          	lui	a5,0x6
    44e4:	f6c7a783          	lw	a5,-148(a5) # 5f6c <_filelib_valid>
    44e8:	3a078463          	beqz	a5,4890 <fl_fopen+0x3fc>
    44ec:	3a0a8263          	beqz	s5,4890 <fl_fopen+0x3fc>
    44f0:	16040063          	beqz	s0,4650 <fl_fopen+0x1bc>
    44f4:	00040513          	mv	a0,s0
    44f8:	ffffd097          	auipc	ra,0xffffd
    44fc:	8a8080e7          	jalr	-1880(ra) # da0 <strlen>
    4500:	00000493          	li	s1,0
    4504:	00000713          	li	a4,0
    4508:	05700693          	li	a3,87
    450c:	07200613          	li	a2,114
    4510:	07700813          	li	a6,119
    4514:	06100893          	li	a7,97
    4518:	06200313          	li	t1,98
    451c:	04100593          	li	a1,65
    4520:	04200e13          	li	t3,66
    4524:	05200e93          	li	t4,82
    4528:	02b00f13          	li	t5,43
    452c:	06a74063          	blt	a4,a0,458c <fl_fopen+0xf8>
    4530:	0000a937          	lui	s2,0xa
    4534:	fc890793          	add	a5,s2,-56 # 9fc8 <_fs>
    4538:	0387a783          	lw	a5,56(a5)
    453c:	fc890b93          	add	s7,s2,-56
    4540:	00079463          	bnez	a5,4548 <fl_fopen+0xb4>
    4544:	0d94f493          	and	s1,s1,217
    4548:	03cba783          	lw	a5,60(s7)
    454c:	00078463          	beqz	a5,4554 <fl_fopen+0xc0>
    4550:	000780e7          	jalr	a5
    4554:	0014f993          	and	s3,s1,1
    4558:	0c099263          	bnez	s3,461c <fl_fopen+0x188>
    455c:	0204f793          	and	a5,s1,32
    4560:	0e078063          	beqz	a5,4640 <fl_fopen+0x1ac>
    4564:	038ba783          	lw	a5,56(s7)
    4568:	12079063          	bnez	a5,4688 <fl_fopen+0x1f4>
    456c:	0064f793          	and	a5,s1,6
    4570:	0c078863          	beqz	a5,4640 <fl_fopen+0x1ac>
    4574:	000a8513          	mv	a0,s5
    4578:	fffff097          	auipc	ra,0xfffff
    457c:	9a4080e7          	jalr	-1628(ra) # 2f1c <_open_file>
    4580:	00050413          	mv	s0,a0
    4584:	30051263          	bnez	a0,4888 <fl_fopen+0x3f4>
    4588:	0b80006f          	j	4640 <fl_fopen+0x1ac>
    458c:	00e407b3          	add	a5,s0,a4
    4590:	0007c783          	lbu	a5,0(a5)
    4594:	04d78463          	beq	a5,a3,45dc <fl_fopen+0x148>
    4598:	02f6e463          	bltu	a3,a5,45c0 <fl_fopen+0x12c>
    459c:	04b78463          	beq	a5,a1,45e4 <fl_fopen+0x150>
    45a0:	00f5e863          	bltu	a1,a5,45b0 <fl_fopen+0x11c>
    45a4:	05e78463          	beq	a5,t5,45ec <fl_fopen+0x158>
    45a8:	00170713          	add	a4,a4,1
    45ac:	f81ff06f          	j	452c <fl_fopen+0x98>
    45b0:	03c78063          	beq	a5,t3,45d0 <fl_fopen+0x13c>
    45b4:	ffd79ae3          	bne	a5,t4,45a8 <fl_fopen+0x114>
    45b8:	0014e493          	or	s1,s1,1
    45bc:	fedff06f          	j	45a8 <fl_fopen+0x114>
    45c0:	fec78ce3          	beq	a5,a2,45b8 <fl_fopen+0x124>
    45c4:	00f66a63          	bltu	a2,a5,45d8 <fl_fopen+0x144>
    45c8:	01178e63          	beq	a5,a7,45e4 <fl_fopen+0x150>
    45cc:	fc679ee3          	bne	a5,t1,45a8 <fl_fopen+0x114>
    45d0:	0084e493          	or	s1,s1,8
    45d4:	fd5ff06f          	j	45a8 <fl_fopen+0x114>
    45d8:	fd0798e3          	bne	a5,a6,45a8 <fl_fopen+0x114>
    45dc:	0324e493          	or	s1,s1,50
    45e0:	fc9ff06f          	j	45a8 <fl_fopen+0x114>
    45e4:	0264e493          	or	s1,s1,38
    45e8:	fc1ff06f          	j	45a8 <fl_fopen+0x114>
    45ec:	0014f793          	and	a5,s1,1
    45f0:	00078663          	beqz	a5,45fc <fl_fopen+0x168>
    45f4:	0024e493          	or	s1,s1,2
    45f8:	fb1ff06f          	j	45a8 <fl_fopen+0x114>
    45fc:	0024f793          	and	a5,s1,2
    4600:	00078663          	beqz	a5,460c <fl_fopen+0x178>
    4604:	0314e493          	or	s1,s1,49
    4608:	fa1ff06f          	j	45a8 <fl_fopen+0x114>
    460c:	0044f793          	and	a5,s1,4
    4610:	f8078ce3          	beqz	a5,45a8 <fl_fopen+0x114>
    4614:	0274e493          	or	s1,s1,39
    4618:	f91ff06f          	j	45a8 <fl_fopen+0x114>
    461c:	000a8513          	mv	a0,s5
    4620:	fffff097          	auipc	ra,0xfffff
    4624:	8fc080e7          	jalr	-1796(ra) # 2f1c <_open_file>
    4628:	00050413          	mv	s0,a0
    462c:	24051e63          	bnez	a0,4888 <fl_fopen+0x3f4>
    4630:	0204f793          	and	a5,s1,32
    4634:	00078663          	beqz	a5,4640 <fl_fopen+0x1ac>
    4638:	038ba783          	lw	a5,56(s7)
    463c:	0c079663          	bnez	a5,4708 <fl_fopen+0x274>
    4640:	00000413          	li	s0,0
    4644:	040ba783          	lw	a5,64(s7)
    4648:	00078463          	beqz	a5,4650 <fl_fopen+0x1bc>
    464c:	000780e7          	jalr	a5
    4650:	05c12083          	lw	ra,92(sp)
    4654:	00040513          	mv	a0,s0
    4658:	05812403          	lw	s0,88(sp)
    465c:	05412483          	lw	s1,84(sp)
    4660:	05012903          	lw	s2,80(sp)
    4664:	04c12983          	lw	s3,76(sp)
    4668:	04812a03          	lw	s4,72(sp)
    466c:	04412a83          	lw	s5,68(sp)
    4670:	04012b03          	lw	s6,64(sp)
    4674:	03c12b83          	lw	s7,60(sp)
    4678:	03812c03          	lw	s8,56(sp)
    467c:	03412c83          	lw	s9,52(sp)
    4680:	06010113          	add	sp,sp,96
    4684:	00008067          	ret
    4688:	ffffd097          	auipc	ra,0xffffd
    468c:	13c080e7          	jalr	316(ra) # 17c4 <_allocate_file>
    4690:	00050413          	mv	s0,a0
    4694:	ec050ce3          	beqz	a0,456c <fl_fopen+0xd8>
    4698:	01440c13          	add	s8,s0,20
    469c:	10400613          	li	a2,260
    46a0:	00000593          	li	a1,0
    46a4:	000c0513          	mv	a0,s8
    46a8:	ffffc097          	auipc	ra,0xffffc
    46ac:	6b8080e7          	jalr	1720(ra) # d60 <memset>
    46b0:	11840b13          	add	s6,s0,280
    46b4:	10400613          	li	a2,260
    46b8:	00000593          	li	a1,0
    46bc:	000b0513          	mv	a0,s6
    46c0:	ffffc097          	auipc	ra,0xffffc
    46c4:	6a0080e7          	jalr	1696(ra) # d60 <memset>
    46c8:	10400713          	li	a4,260
    46cc:	000b0693          	mv	a3,s6
    46d0:	10400613          	li	a2,260
    46d4:	000c0593          	mv	a1,s8
    46d8:	000a8513          	mv	a0,s5
    46dc:	ffffe097          	auipc	ra,0xffffe
    46e0:	bac080e7          	jalr	-1108(ra) # 2288 <fatfs_split_path>
    46e4:	fff00793          	li	a5,-1
    46e8:	02f51a63          	bne	a0,a5,471c <fl_fopen+0x288>
    46ec:	00040513          	mv	a0,s0
    46f0:	ffffd097          	auipc	ra,0xffffd
    46f4:	148080e7          	jalr	328(ra) # 1838 <_free_file>
    46f8:	f40994e3          	bnez	s3,4640 <fl_fopen+0x1ac>
    46fc:	0204f793          	and	a5,s1,32
    4700:	f40780e3          	beqz	a5,4640 <fl_fopen+0x1ac>
    4704:	e69ff06f          	j	456c <fl_fopen+0xd8>
    4708:	ffffd097          	auipc	ra,0xffffd
    470c:	0bc080e7          	jalr	188(ra) # 17c4 <_allocate_file>
    4710:	00050413          	mv	s0,a0
    4714:	f80512e3          	bnez	a0,4698 <fl_fopen+0x204>
    4718:	f29ff06f          	j	4640 <fl_fopen+0x1ac>
    471c:	00040513          	mv	a0,s0
    4720:	ffffe097          	auipc	ra,0xffffe
    4724:	dbc080e7          	jalr	-580(ra) # 24dc <_check_file_open>
    4728:	00050a13          	mv	s4,a0
    472c:	fc0510e3          	bnez	a0,46ec <fl_fopen+0x258>
    4730:	01444783          	lbu	a5,20(s0)
    4734:	0c079263          	bnez	a5,47f8 <fl_fopen+0x364>
    4738:	008ba783          	lw	a5,8(s7)
    473c:	00f42023          	sw	a5,0(s0)
    4740:	00042583          	lw	a1,0(s0)
    4744:	01010693          	add	a3,sp,16
    4748:	000b0613          	mv	a2,s6
    474c:	fc890513          	add	a0,s2,-56
    4750:	ffffe097          	auipc	ra,0xffffe
    4754:	418080e7          	jalr	1048(ra) # 2b68 <fatfs_get_file_entry>
    4758:	00100793          	li	a5,1
    475c:	f8f508e3          	beq	a0,a5,46ec <fl_fopen+0x258>
    4760:	00042223          	sw	zero,4(s0)
    4764:	00100693          	li	a3,1
    4768:	00440613          	add	a2,s0,4
    476c:	00100593          	li	a1,1
    4770:	fc890513          	add	a0,s2,-56
    4774:	00000097          	auipc	ra,0x0
    4778:	8ec080e7          	jalr	-1812(ra) # 4060 <fatfs_allocate_free_space>
    477c:	f60508e3          	beqz	a0,46ec <fl_fopen+0x258>
    4780:	000b0593          	mv	a1,s6
    4784:	00410513          	add	a0,sp,4
    4788:	ffffd097          	auipc	ra,0xffffd
    478c:	6a4080e7          	jalr	1700(ra) # 1e2c <fatfs_lfn_create_sfn>
    4790:	21c40c13          	add	s8,s0,540
    4794:	00b00613          	li	a2,11
    4798:	00410593          	add	a1,sp,4
    479c:	000c0513          	mv	a0,s8
    47a0:	00002cb7          	lui	s9,0x2
    47a4:	ffffc097          	auipc	ra,0xffffc
    47a8:	5d8080e7          	jalr	1496(ra) # d7c <memcpy>
    47ac:	70fc8c93          	add	s9,s9,1807 # 270f <fatfs_init+0xef>
    47b0:	00042583          	lw	a1,0(s0)
    47b4:	000c0613          	mv	a2,s8
    47b8:	fc890513          	add	a0,s2,-56
    47bc:	fffff097          	auipc	ra,0xfffff
    47c0:	8d8080e7          	jalr	-1832(ra) # 3094 <fatfs_sfn_exists>
    47c4:	04050663          	beqz	a0,4810 <fl_fopen+0x37c>
    47c8:	001a0a13          	add	s4,s4,1
    47cc:	059a0263          	beq	s4,s9,4810 <fl_fopen+0x37c>
    47d0:	000b0593          	mv	a1,s6
    47d4:	00410513          	add	a0,sp,4
    47d8:	ffffd097          	auipc	ra,0xffffd
    47dc:	654080e7          	jalr	1620(ra) # 1e2c <fatfs_lfn_create_sfn>
    47e0:	000a0613          	mv	a2,s4
    47e4:	00410593          	add	a1,sp,4
    47e8:	000c0513          	mv	a0,s8
    47ec:	ffffd097          	auipc	ra,0xffffd
    47f0:	7bc080e7          	jalr	1980(ra) # 1fa8 <fatfs_lfn_generate_tail>
    47f4:	fbdff06f          	j	47b0 <fl_fopen+0x31c>
    47f8:	00040593          	mv	a1,s0
    47fc:	000c0513          	mv	a0,s8
    4800:	ffffe097          	auipc	ra,0xffffe
    4804:	568080e7          	jalr	1384(ra) # 2d68 <_open_directory>
    4808:	f2051ce3          	bnez	a0,4740 <fl_fopen+0x2ac>
    480c:	ee1ff06f          	j	46ec <fl_fopen+0x258>
    4810:	00442703          	lw	a4,4(s0)
    4814:	000027b7          	lui	a5,0x2
    4818:	70f78793          	add	a5,a5,1807 # 270f <fatfs_init+0xef>
    481c:	00070593          	mv	a1,a4
    4820:	02fa0663          	beq	s4,a5,484c <fl_fopen+0x3b8>
    4824:	00042583          	lw	a1,0(s0)
    4828:	00000813          	li	a6,0
    482c:	00000793          	li	a5,0
    4830:	000c0693          	mv	a3,s8
    4834:	000b0613          	mv	a2,s6
    4838:	fc890513          	add	a0,s2,-56
    483c:	00000097          	auipc	ra,0x0
    4840:	940080e7          	jalr	-1728(ra) # 417c <fatfs_add_file_entry>
    4844:	00051c63          	bnez	a0,485c <fl_fopen+0x3c8>
    4848:	00442583          	lw	a1,4(s0)
    484c:	fc890513          	add	a0,s2,-56
    4850:	fffff097          	auipc	ra,0xfffff
    4854:	184080e7          	jalr	388(ra) # 39d4 <fatfs_free_cluster_chain>
    4858:	e95ff06f          	j	46ec <fl_fopen+0x258>
    485c:	fff00793          	li	a5,-1
    4860:	00042623          	sw	zero,12(s0)
    4864:	00042423          	sw	zero,8(s0)
    4868:	42f42823          	sw	a5,1072(s0)
    486c:	42042a23          	sw	zero,1076(s0)
    4870:	00042823          	sw	zero,16(s0)
    4874:	22f42423          	sw	a5,552(s0)
    4878:	22f42623          	sw	a5,556(s0)
    487c:	fc890513          	add	a0,s2,-56
    4880:	ffffe097          	auipc	ra,0xffffe
    4884:	03c080e7          	jalr	60(ra) # 28bc <fatfs_fat_purge>
    4888:	42940c23          	sb	s1,1080(s0)
    488c:	db9ff06f          	j	4644 <fl_fopen+0x1b0>
    4890:	00000413          	li	s0,0
    4894:	dbdff06f          	j	4650 <fl_fopen+0x1bc>

00004898 <Init_menu>:
    4898:	000017b7          	lui	a5,0x1
    489c:	fd010113          	add	sp,sp,-48
    48a0:	00006737          	lui	a4,0x6
    48a4:	08878793          	add	a5,a5,136 # 1088 <display_putchar>
    48a8:	02112623          	sw	ra,44(sp)
    48ac:	f4f72c23          	sw	a5,-168(a4) # 5f58 <f_putchar>
    48b0:	02812423          	sw	s0,40(sp)
    48b4:	03212023          	sw	s2,32(sp)
    48b8:	02912223          	sw	s1,36(sp)
    48bc:	01312e23          	sw	s3,28(sp)
    48c0:	01412c23          	sw	s4,24(sp)
    48c4:	01512a23          	sw	s5,20(sp)
    48c8:	01612823          	sw	s6,16(sp)
    48cc:	01712623          	sw	s7,12(sp)
    48d0:	ffffc097          	auipc	ra,0xffffc
    48d4:	6c0080e7          	jalr	1728(ra) # f90 <oled_init>
    48d8:	ffffc097          	auipc	ra,0xffffc
    48dc:	6c4080e7          	jalr	1732(ra) # f9c <oled_fullscreen>
    48e0:	ffffc097          	auipc	ra,0xffffc
    48e4:	774080e7          	jalr	1908(ra) # 1054 <display_framebuffer>
    48e8:	00004637          	lui	a2,0x4
    48ec:	00000593          	li	a1,0
    48f0:	ffffc097          	auipc	ra,0xffffc
    48f4:	470080e7          	jalr	1136(ra) # d60 <memset>
    48f8:	ffffd097          	auipc	ra,0xffffd
    48fc:	8dc080e7          	jalr	-1828(ra) # 11d4 <display_refresh>
    4900:	00000593          	li	a1,0
    4904:	00000513          	li	a0,0
    4908:	ffffc097          	auipc	ra,0xffffc
    490c:	758080e7          	jalr	1880(ra) # 1060 <display_set_cursor>
    4910:	00000593          	li	a1,0
    4914:	0ff00513          	li	a0,255
    4918:	ffffc097          	auipc	ra,0xffffc
    491c:	75c080e7          	jalr	1884(ra) # 1074 <display_set_front_back_color>
    4920:	00006537          	lui	a0,0x6
    4924:	cf050513          	add	a0,a0,-784 # 5cf0 <font+0x228>
    4928:	ffffd097          	auipc	ra,0xffffd
    492c:	aa4080e7          	jalr	-1372(ra) # 13cc <printf>
    4930:	ffffd097          	auipc	ra,0xffffd
    4934:	8a4080e7          	jalr	-1884(ra) # 11d4 <display_refresh>
    4938:	00001937          	lui	s2,0x1
    493c:	ffffc097          	auipc	ra,0xffffc
    4940:	14c080e7          	jalr	332(ra) # a88 <sdcard_init>
    4944:	00001437          	lui	s0,0x1
    4948:	ffffd097          	auipc	ra,0xffffd
    494c:	074080e7          	jalr	116(ra) # 19bc <fl_init>
    4950:	ca490593          	add	a1,s2,-860 # ca4 <sdcard_writesector>
    4954:	c5040513          	add	a0,s0,-944 # c50 <sdcard_readsector>
    4958:	ffffe097          	auipc	ra,0xffffe
    495c:	ef8080e7          	jalr	-264(ra) # 2850 <fl_attach_media>
    4960:	00050493          	mv	s1,a0
    4964:	fe0516e3          	bnez	a0,4950 <Init_menu+0xb8>
    4968:	00006537          	lui	a0,0x6
    496c:	cfc50513          	add	a0,a0,-772 # 5cfc <font+0x234>
    4970:	ffffd097          	auipc	ra,0xffffd
    4974:	a5c080e7          	jalr	-1444(ra) # 13cc <printf>
    4978:	ffffd097          	auipc	ra,0xffffd
    497c:	85c080e7          	jalr	-1956(ra) # 11d4 <display_refresh>
    4980:	000067b7          	lui	a5,0x6
    4984:	ab47a903          	lw	s2,-1356(a5) # 5ab4 <BUTTONS>
    4988:	00000413          	li	s0,0
    498c:	00006ab7          	lui	s5,0x6
    4990:	00006b37          	lui	s6,0x6
    4994:	000069b7          	lui	s3,0x6
    4998:	00100a13          	li	s4,1
    499c:	00006bb7          	lui	s7,0x6
    49a0:	00000593          	li	a1,0
    49a4:	00000513          	li	a0,0
    49a8:	ffffc097          	auipc	ra,0xffffc
    49ac:	6b8080e7          	jalr	1720(ra) # 1060 <display_set_cursor>
    49b0:	0ff4f593          	zext.b	a1,s1
    49b4:	07f58513          	add	a0,a1,127
    49b8:	0ff57513          	zext.b	a0,a0
    49bc:	ffffc097          	auipc	ra,0xffffc
    49c0:	6b8080e7          	jalr	1720(ra) # 1074 <display_set_front_back_color>
    49c4:	d04a8513          	add	a0,s5,-764 # 5d04 <font+0x23c>
    49c8:	00748493          	add	s1,s1,7
    49cc:	ffffd097          	auipc	ra,0xffffd
    49d0:	a00080e7          	jalr	-1536(ra) # 13cc <printf>
    49d4:	0c041663          	bnez	s0,4aa0 <Init_menu+0x208>
    49d8:	00000513          	li	a0,0
    49dc:	0ff00593          	li	a1,255
    49e0:	ffffc097          	auipc	ra,0xffffc
    49e4:	694080e7          	jalr	1684(ra) # 1074 <display_set_front_back_color>
    49e8:	d20b0613          	add	a2,s6,-736 # 5d20 <font+0x258>
    49ec:	00000593          	li	a1,0
    49f0:	d2898513          	add	a0,s3,-728 # 5d28 <font+0x260>
    49f4:	ffffd097          	auipc	ra,0xffffd
    49f8:	9d8080e7          	jalr	-1576(ra) # 13cc <printf>
    49fc:	0b441863          	bne	s0,s4,4aac <Init_menu+0x214>
    4a00:	00000513          	li	a0,0
    4a04:	0ff00593          	li	a1,255
    4a08:	ffffc097          	auipc	ra,0xffffc
    4a0c:	66c080e7          	jalr	1644(ra) # 1074 <display_set_front_back_color>
    4a10:	d30b8613          	add	a2,s7,-720 # 5d30 <font+0x268>
    4a14:	00100593          	li	a1,1
    4a18:	d2898513          	add	a0,s3,-728
    4a1c:	ffffd097          	auipc	ra,0xffffd
    4a20:	9b0080e7          	jalr	-1616(ra) # 13cc <printf>
    4a24:	ffffc097          	auipc	ra,0xffffc
    4a28:	7b0080e7          	jalr	1968(ra) # 11d4 <display_refresh>
    4a2c:	00092783          	lw	a5,0(s2)
    4a30:	0107f793          	and	a5,a5,16
    4a34:	08079263          	bnez	a5,4ab8 <Init_menu+0x220>
    4a38:	00092783          	lw	a5,0(s2)
    4a3c:	0087f793          	and	a5,a5,8
    4a40:	08079863          	bnez	a5,4ad0 <Init_menu+0x238>
    4a44:	00092783          	lw	a5,0(s2)
    4a48:	0407f793          	and	a5,a5,64
    4a4c:	f4078ae3          	beqz	a5,49a0 <Init_menu+0x108>
    4a50:	ffffc097          	auipc	ra,0xffffc
    4a54:	604080e7          	jalr	1540(ra) # 1054 <display_framebuffer>
    4a58:	00004637          	lui	a2,0x4
    4a5c:	00000593          	li	a1,0
    4a60:	ffffc097          	auipc	ra,0xffffc
    4a64:	300080e7          	jalr	768(ra) # d60 <memset>
    4a68:	ffffc097          	auipc	ra,0xffffc
    4a6c:	76c080e7          	jalr	1900(ra) # 11d4 <display_refresh>
    4a70:	02c12083          	lw	ra,44(sp)
    4a74:	00040513          	mv	a0,s0
    4a78:	02812403          	lw	s0,40(sp)
    4a7c:	02412483          	lw	s1,36(sp)
    4a80:	02012903          	lw	s2,32(sp)
    4a84:	01c12983          	lw	s3,28(sp)
    4a88:	01812a03          	lw	s4,24(sp)
    4a8c:	01412a83          	lw	s5,20(sp)
    4a90:	01012b03          	lw	s6,16(sp)
    4a94:	00c12b83          	lw	s7,12(sp)
    4a98:	03010113          	add	sp,sp,48
    4a9c:	00008067          	ret
    4aa0:	0ff00513          	li	a0,255
    4aa4:	00000593          	li	a1,0
    4aa8:	f39ff06f          	j	49e0 <Init_menu+0x148>
    4aac:	0ff00513          	li	a0,255
    4ab0:	00000593          	li	a1,0
    4ab4:	f55ff06f          	j	4a08 <Init_menu+0x170>
    4ab8:	00092783          	lw	a5,0(s2)
    4abc:	0087f793          	and	a5,a5,8
    4ac0:	f80792e3          	bnez	a5,4a44 <Init_menu+0x1ac>
    4ac4:	00100793          	li	a5,1
    4ac8:	40878433          	sub	s0,a5,s0
    4acc:	f79ff06f          	j	4a44 <Init_menu+0x1ac>
    4ad0:	408a0433          	sub	s0,s4,s0
    4ad4:	f71ff06f          	j	4a44 <Init_menu+0x1ac>

00004ad8 <list_Albums.constprop.0>:
    4ad8:	ec010113          	add	sp,sp,-320
    4adc:	00006537          	lui	a0,0x6
    4ae0:	00410593          	add	a1,sp,4
    4ae4:	d3850513          	add	a0,a0,-712 # 5d38 <font+0x270>
    4ae8:	12112e23          	sw	ra,316(sp)
    4aec:	12812c23          	sw	s0,312(sp)
    4af0:	12912a23          	sw	s1,308(sp)
    4af4:	13212823          	sw	s2,304(sp)
    4af8:	13312623          	sw	s3,300(sp)
    4afc:	13412423          	sw	s4,296(sp)
    4b00:	ffffe097          	auipc	ra,0xffffe
    4b04:	350080e7          	jalr	848(ra) # 2e50 <fl_opendir>
    4b08:	02050a63          	beqz	a0,4b3c <list_Albums.constprop.0+0x64>
    4b0c:	0000b437          	lui	s0,0xb
    4b10:	0000b4b7          	lui	s1,0xb
    4b14:	00006a37          	lui	s4,0x6
    4b18:	00700913          	li	s2,7
    4b1c:	02e00993          	li	s3,46
    4b20:	cd840413          	add	s0,s0,-808 # acd8 <Albums>
    4b24:	cb848493          	add	s1,s1,-840 # acb8 <sizes>
    4b28:	f74a2783          	lw	a5,-140(s4) # 5f74 <nAlbums>
    4b2c:	02f95863          	bge	s2,a5,4b5c <list_Albums.constprop.0+0x84>
    4b30:	00410513          	add	a0,sp,4
    4b34:	ffffd097          	auipc	ra,0xffffd
    4b38:	ef8080e7          	jalr	-264(ra) # 1a2c <fl_closedir>
    4b3c:	13c12083          	lw	ra,316(sp)
    4b40:	13812403          	lw	s0,312(sp)
    4b44:	13412483          	lw	s1,308(sp)
    4b48:	13012903          	lw	s2,304(sp)
    4b4c:	12c12983          	lw	s3,300(sp)
    4b50:	12812a03          	lw	s4,296(sp)
    4b54:	14010113          	add	sp,sp,320
    4b58:	00008067          	ret
    4b5c:	01010593          	add	a1,sp,16
    4b60:	00410513          	add	a0,sp,4
    4b64:	fffff097          	auipc	ra,0xfffff
    4b68:	9a0080e7          	jalr	-1632(ra) # 3504 <fl_readdir>
    4b6c:	fc0512e3          	bnez	a0,4b30 <list_Albums.constprop.0+0x58>
    4b70:	01014783          	lbu	a5,16(sp)
    4b74:	fb378ae3          	beq	a5,s3,4b28 <list_Albums.constprop.0+0x50>
    4b78:	11414783          	lbu	a5,276(sp)
    4b7c:	fa0786e3          	beqz	a5,4b28 <list_Albums.constprop.0+0x50>
    4b80:	f74a2783          	lw	a5,-140(s4)
    4b84:	01600613          	li	a2,22
    4b88:	01010593          	add	a1,sp,16
    4b8c:	00179513          	sll	a0,a5,0x1
    4b90:	00f50533          	add	a0,a0,a5
    4b94:	00351513          	sll	a0,a0,0x3
    4b98:	40f50533          	sub	a0,a0,a5
    4b9c:	00a40533          	add	a0,s0,a0
    4ba0:	ffffc097          	auipc	ra,0xffffc
    4ba4:	260080e7          	jalr	608(ra) # e00 <strncpy>
    4ba8:	f74a2703          	lw	a4,-140(s4)
    4bac:	11c12683          	lw	a3,284(sp)
    4bb0:	00171793          	sll	a5,a4,0x1
    4bb4:	00e787b3          	add	a5,a5,a4
    4bb8:	00379793          	sll	a5,a5,0x3
    4bbc:	40e787b3          	sub	a5,a5,a4
    4bc0:	00f407b3          	add	a5,s0,a5
    4bc4:	00078b23          	sb	zero,22(a5)
    4bc8:	00271793          	sll	a5,a4,0x2
    4bcc:	00f487b3          	add	a5,s1,a5
    4bd0:	00170713          	add	a4,a4,1
    4bd4:	00d7a023          	sw	a3,0(a5)
    4bd8:	f6ea2a23          	sw	a4,-140(s4)
    4bdc:	f4dff06f          	j	4b28 <list_Albums.constprop.0+0x50>

00004be0 <clear_audio>:
    4be0:	ff010113          	add	sp,sp,-16
    4be4:	000067b7          	lui	a5,0x6
    4be8:	00812423          	sw	s0,8(sp)
    4bec:	ab07a403          	lw	s0,-1360(a5) # 5ab0 <AUDIO>
    4bf0:	00112623          	sw	ra,12(sp)
    4bf4:	00912223          	sw	s1,4(sp)
    4bf8:	00042703          	lw	a4,0(s0)
    4bfc:	00042783          	lw	a5,0(s0)
    4c00:	fef70ee3          	beq	a4,a5,4bfc <clear_audio+0x1c>
    4c04:	00042483          	lw	s1,0(s0)
    4c08:	20000613          	li	a2,512
    4c0c:	00000593          	li	a1,0
    4c10:	00048513          	mv	a0,s1
    4c14:	ffffc097          	auipc	ra,0xffffc
    4c18:	14c080e7          	jalr	332(ra) # d60 <memset>
    4c1c:	00042783          	lw	a5,0(s0)
    4c20:	fef48ee3          	beq	s1,a5,4c1c <clear_audio+0x3c>
    4c24:	00042483          	lw	s1,0(s0)
    4c28:	20000613          	li	a2,512
    4c2c:	00000593          	li	a1,0
    4c30:	00048513          	mv	a0,s1
    4c34:	ffffc097          	auipc	ra,0xffffc
    4c38:	12c080e7          	jalr	300(ra) # d60 <memset>
    4c3c:	00042783          	lw	a5,0(s0)
    4c40:	fef48ee3          	beq	s1,a5,4c3c <clear_audio+0x5c>
    4c44:	00c12083          	lw	ra,12(sp)
    4c48:	00812403          	lw	s0,8(sp)
    4c4c:	00412483          	lw	s1,4(sp)
    4c50:	01010113          	add	sp,sp,16
    4c54:	00008067          	ret

00004c58 <audio_menu>:
    4c58:	fc010113          	add	sp,sp,-64
    4c5c:	03212823          	sw	s2,48(sp)
    4c60:	01712e23          	sw	s7,28(sp)
    4c64:	00050913          	mv	s2,a0
    4c68:	00058b93          	mv	s7,a1
    4c6c:	00000513          	li	a0,0
    4c70:	00000593          	li	a1,0
    4c74:	02112e23          	sw	ra,60(sp)
    4c78:	03412423          	sw	s4,40(sp)
    4c7c:	02812c23          	sw	s0,56(sp)
    4c80:	02912a23          	sw	s1,52(sp)
    4c84:	03312623          	sw	s3,44(sp)
    4c88:	03512223          	sw	s5,36(sp)
    4c8c:	03612023          	sw	s6,32(sp)
    4c90:	01812c23          	sw	s8,24(sp)
    4c94:	01912a23          	sw	s9,20(sp)
    4c98:	01a12823          	sw	s10,16(sp)
    4c9c:	01b12623          	sw	s11,12(sp)
    4ca0:	ffffc097          	auipc	ra,0xffffc
    4ca4:	3c0080e7          	jalr	960(ra) # 1060 <display_set_cursor>
    4ca8:	00000593          	li	a1,0
    4cac:	0ff00513          	li	a0,255
    4cb0:	ffffc097          	auipc	ra,0xffffc
    4cb4:	3c4080e7          	jalr	964(ra) # 1074 <display_set_front_back_color>
    4cb8:	00006537          	lui	a0,0x6
    4cbc:	d4050513          	add	a0,a0,-704 # 5d40 <font+0x278>
    4cc0:	ffffc097          	auipc	ra,0xffffc
    4cc4:	70c080e7          	jalr	1804(ra) # 13cc <printf>
    4cc8:	00006a37          	lui	s4,0x6
    4ccc:	ffffc097          	auipc	ra,0xffffc
    4cd0:	508080e7          	jalr	1288(ra) # 11d4 <display_refresh>
    4cd4:	f60a2a23          	sw	zero,-140(s4) # 5f74 <nAlbums>
    4cd8:	00000097          	auipc	ra,0x0
    4cdc:	e00080e7          	jalr	-512(ra) # 4ad8 <list_Albums.constprop.0>
    4ce0:	f74a2783          	lw	a5,-140(s4)
    4ce4:	04079063          	bnez	a5,4d24 <audio_menu+0xcc>
    4ce8:	00000593          	li	a1,0
    4cec:	00000513          	li	a0,0
    4cf0:	ffffc097          	auipc	ra,0xffffc
    4cf4:	370080e7          	jalr	880(ra) # 1060 <display_set_cursor>
    4cf8:	00000593          	li	a1,0
    4cfc:	0ff00513          	li	a0,255
    4d00:	ffffc097          	auipc	ra,0xffffc
    4d04:	374080e7          	jalr	884(ra) # 1074 <display_set_front_back_color>
    4d08:	00006537          	lui	a0,0x6
    4d0c:	d5850513          	add	a0,a0,-680 # 5d58 <font+0x290>
    4d10:	ffffc097          	auipc	ra,0xffffc
    4d14:	6bc080e7          	jalr	1724(ra) # 13cc <printf>
    4d18:	ffffc097          	auipc	ra,0xffffc
    4d1c:	4bc080e7          	jalr	1212(ra) # 11d4 <display_refresh>
    4d20:	0000006f          	j	4d20 <audio_menu+0xc8>
    4d24:	000067b7          	lui	a5,0x6
    4d28:	ab47a983          	lw	s3,-1356(a5) # 5ab4 <BUTTONS>
    4d2c:	0000bc37          	lui	s8,0xb
    4d30:	00000a93          	li	s5,0
    4d34:	00000413          	li	s0,0
    4d38:	00006cb7          	lui	s9,0x6
    4d3c:	cd8c0b13          	add	s6,s8,-808 # acd8 <Albums>
    4d40:	00006d37          	lui	s10,0x6
    4d44:	00000593          	li	a1,0
    4d48:	00000513          	li	a0,0
    4d4c:	ffffc097          	auipc	ra,0xffffc
    4d50:	314080e7          	jalr	788(ra) # 1060 <display_set_cursor>
    4d54:	0ffaf593          	zext.b	a1,s5
    4d58:	07f58513          	add	a0,a1,127
    4d5c:	0ff57513          	zext.b	a0,a0
    4d60:	ffffc097          	auipc	ra,0xffffc
    4d64:	314080e7          	jalr	788(ra) # 1074 <display_set_front_back_color>
    4d68:	d74c8513          	add	a0,s9,-652 # 5d74 <font+0x2ac>
    4d6c:	007a8a93          	add	s5,s5,7
    4d70:	ffffc097          	auipc	ra,0xffffc
    4d74:	65c080e7          	jalr	1628(ra) # 13cc <printf>
    4d78:	cd8c0d93          	add	s11,s8,-808
    4d7c:	00000493          	li	s1,0
    4d80:	f74a2783          	lw	a5,-140(s4)
    4d84:	08f4c463          	blt	s1,a5,4e0c <audio_menu+0x1b4>
    4d88:	ffffc097          	auipc	ra,0xffffc
    4d8c:	44c080e7          	jalr	1100(ra) # 11d4 <display_refresh>
    4d90:	0009a783          	lw	a5,0(s3)
    4d94:	0107f793          	and	a5,a5,16
    4d98:	00078463          	beqz	a5,4da0 <audio_menu+0x148>
    4d9c:	00140413          	add	s0,s0,1
    4da0:	0009a783          	lw	a5,0(s3)
    4da4:	0087f793          	and	a5,a5,8
    4da8:	00078463          	beqz	a5,4db0 <audio_menu+0x158>
    4dac:	fff40413          	add	s0,s0,-1
    4db0:	f74a2783          	lw	a5,-140(s4)
    4db4:	08045c63          	bgez	s0,4e4c <audio_menu+0x1f4>
    4db8:	fff78413          	add	s0,a5,-1
    4dbc:	0009a783          	lw	a5,0(s3)
    4dc0:	0207f793          	and	a5,a5,32
    4dc4:	08078a63          	beqz	a5,4e58 <audio_menu+0x200>
    4dc8:	00100793          	li	a5,1
    4dcc:	00fba023          	sw	a5,0(s7)
    4dd0:	03c12083          	lw	ra,60(sp)
    4dd4:	03812403          	lw	s0,56(sp)
    4dd8:	03412483          	lw	s1,52(sp)
    4ddc:	03012903          	lw	s2,48(sp)
    4de0:	02c12983          	lw	s3,44(sp)
    4de4:	02812a03          	lw	s4,40(sp)
    4de8:	02412a83          	lw	s5,36(sp)
    4dec:	02012b03          	lw	s6,32(sp)
    4df0:	01c12b83          	lw	s7,28(sp)
    4df4:	01812c03          	lw	s8,24(sp)
    4df8:	01412c83          	lw	s9,20(sp)
    4dfc:	01012d03          	lw	s10,16(sp)
    4e00:	00c12d83          	lw	s11,12(sp)
    4e04:	04010113          	add	sp,sp,64
    4e08:	00008067          	ret
    4e0c:	02940a63          	beq	s0,s1,4e40 <audio_menu+0x1e8>
    4e10:	0ff00513          	li	a0,255
    4e14:	00000593          	li	a1,0
    4e18:	ffffc097          	auipc	ra,0xffffc
    4e1c:	25c080e7          	jalr	604(ra) # 1074 <display_set_front_back_color>
    4e20:	000d8613          	mv	a2,s11
    4e24:	00048593          	mv	a1,s1
    4e28:	d28d0513          	add	a0,s10,-728 # 5d28 <font+0x260>
    4e2c:	ffffc097          	auipc	ra,0xffffc
    4e30:	5a0080e7          	jalr	1440(ra) # 13cc <printf>
    4e34:	00148493          	add	s1,s1,1
    4e38:	017d8d93          	add	s11,s11,23
    4e3c:	f45ff06f          	j	4d80 <audio_menu+0x128>
    4e40:	00000513          	li	a0,0
    4e44:	0ff00593          	li	a1,255
    4e48:	fd1ff06f          	j	4e18 <audio_menu+0x1c0>
    4e4c:	f6f448e3          	blt	s0,a5,4dbc <audio_menu+0x164>
    4e50:	00000413          	li	s0,0
    4e54:	f69ff06f          	j	4dbc <audio_menu+0x164>
    4e58:	0009a783          	lw	a5,0(s3)
    4e5c:	0407f793          	and	a5,a5,64
    4e60:	ee0782e3          	beqz	a5,4d44 <audio_menu+0xec>
    4e64:	00141593          	sll	a1,s0,0x1
    4e68:	008585b3          	add	a1,a1,s0
    4e6c:	00359593          	sll	a1,a1,0x3
    4e70:	408585b3          	sub	a1,a1,s0
    4e74:	01600613          	li	a2,22
    4e78:	00bb05b3          	add	a1,s6,a1
    4e7c:	00090513          	mv	a0,s2
    4e80:	ffffc097          	auipc	ra,0xffffc
    4e84:	f80080e7          	jalr	-128(ra) # e00 <strncpy>
    4e88:	00090b23          	sb	zero,22(s2)
    4e8c:	f45ff06f          	j	4dd0 <audio_menu+0x178>

00004e90 <Select_and_play_Song>:
    4e90:	e7010113          	add	sp,sp,-400
    4e94:	19212023          	sw	s2,384(sp)
    4e98:	17312e23          	sw	s3,380(sp)
    4e9c:	00050913          	mv	s2,a0
    4ea0:	00058993          	mv	s3,a1
    4ea4:	00000513          	li	a0,0
    4ea8:	00000593          	li	a1,0
    4eac:	18112623          	sw	ra,396(sp)
    4eb0:	18912223          	sw	s1,388(sp)
    4eb4:	18812423          	sw	s0,392(sp)
    4eb8:	17412c23          	sw	s4,376(sp)
    4ebc:	17512a23          	sw	s5,372(sp)
    4ec0:	17612823          	sw	s6,368(sp)
    4ec4:	17712623          	sw	s7,364(sp)
    4ec8:	17812423          	sw	s8,360(sp)
    4ecc:	17912223          	sw	s9,356(sp)
    4ed0:	ffffc097          	auipc	ra,0xffffc
    4ed4:	190080e7          	jalr	400(ra) # 1060 <display_set_cursor>
    4ed8:	00000593          	li	a1,0
    4edc:	0ff00513          	li	a0,255
    4ee0:	ffffc097          	auipc	ra,0xffffc
    4ee4:	194080e7          	jalr	404(ra) # 1074 <display_set_front_back_color>
    4ee8:	ffffc097          	auipc	ra,0xffffc
    4eec:	2ec080e7          	jalr	748(ra) # 11d4 <display_refresh>
    4ef0:	00090593          	mv	a1,s2
    4ef4:	01010513          	add	a0,sp,16
    4ef8:	00010823          	sb	zero,16(sp)
    4efc:	ffffc097          	auipc	ra,0xffffc
    4f00:	f48080e7          	jalr	-184(ra) # e44 <strcat>
    4f04:	000065b7          	lui	a1,0x6
    4f08:	d9458593          	add	a1,a1,-620 # 5d94 <font+0x2cc>
    4f0c:	01010513          	add	a0,sp,16
    4f10:	ffffc097          	auipc	ra,0xffffc
    4f14:	f34080e7          	jalr	-204(ra) # e44 <strcat>
    4f18:	000065b7          	lui	a1,0x6
    4f1c:	d9c58593          	add	a1,a1,-612 # 5d9c <font+0x2d4>
    4f20:	000064b7          	lui	s1,0x6
    4f24:	03010513          	add	a0,sp,48
    4f28:	f604ac23          	sw	zero,-136(s1) # 5f78 <NSongs>
    4f2c:	ffffc097          	auipc	ra,0xffffc
    4f30:	ef8080e7          	jalr	-264(ra) # e24 <strcpy>
    4f34:	00090593          	mv	a1,s2
    4f38:	03010513          	add	a0,sp,48
    4f3c:	ffffc097          	auipc	ra,0xffffc
    4f40:	f08080e7          	jalr	-248(ra) # e44 <strcat>
    4f44:	00410593          	add	a1,sp,4
    4f48:	03010513          	add	a0,sp,48
    4f4c:	ffffe097          	auipc	ra,0xffffe
    4f50:	f04080e7          	jalr	-252(ra) # 2e50 <fl_opendir>
    4f54:	02050463          	beqz	a0,4f7c <Select_and_play_Song+0xec>
    4f58:	0000b437          	lui	s0,0xb
    4f5c:	00700a13          	li	s4,7
    4f60:	02e00a93          	li	s5,46
    4f64:	d9040413          	add	s0,s0,-624 # ad90 <Songs>
    4f68:	f784a783          	lw	a5,-136(s1)
    4f6c:	0efa5663          	bge	s4,a5,5058 <Select_and_play_Song+0x1c8>
    4f70:	00410513          	add	a0,sp,4
    4f74:	ffffd097          	auipc	ra,0xffffd
    4f78:	ab8080e7          	jalr	-1352(ra) # 1a2c <fl_closedir>
    4f7c:	f784a783          	lw	a5,-136(s1)
    4f80:	00000413          	li	s0,0
    4f84:	14078463          	beqz	a5,50cc <Select_and_play_Song+0x23c>
    4f88:	000067b7          	lui	a5,0x6
    4f8c:	ab47a903          	lw	s2,-1356(a5) # 5ab4 <BUTTONS>
    4f90:	0000bb37          	lui	s6,0xb
    4f94:	00006bb7          	lui	s7,0x6
    4f98:	d90b0a93          	add	s5,s6,-624 # ad90 <Songs>
    4f9c:	00006c37          	lui	s8,0x6
    4fa0:	00000593          	li	a1,0
    4fa4:	00000513          	li	a0,0
    4fa8:	ffffc097          	auipc	ra,0xffffc
    4fac:	0b8080e7          	jalr	184(ra) # 1060 <display_set_cursor>
    4fb0:	00000593          	li	a1,0
    4fb4:	07f00513          	li	a0,127
    4fb8:	ffffc097          	auipc	ra,0xffffc
    4fbc:	0bc080e7          	jalr	188(ra) # 1074 <display_set_front_back_color>
    4fc0:	dc4b8513          	add	a0,s7,-572 # 5dc4 <font+0x2fc>
    4fc4:	ffffc097          	auipc	ra,0xffffc
    4fc8:	408080e7          	jalr	1032(ra) # 13cc <printf>
    4fcc:	d90b0c93          	add	s9,s6,-624
    4fd0:	00000a13          	li	s4,0
    4fd4:	f784a783          	lw	a5,-136(s1)
    4fd8:	14fa4663          	blt	s4,a5,5124 <Select_and_play_Song+0x294>
    4fdc:	ffffc097          	auipc	ra,0xffffc
    4fe0:	1f8080e7          	jalr	504(ra) # 11d4 <display_refresh>
    4fe4:	00092783          	lw	a5,0(s2)
    4fe8:	0107f793          	and	a5,a5,16
    4fec:	00078463          	beqz	a5,4ff4 <Select_and_play_Song+0x164>
    4ff0:	00140413          	add	s0,s0,1
    4ff4:	00092783          	lw	a5,0(s2)
    4ff8:	0087f793          	and	a5,a5,8
    4ffc:	00078463          	beqz	a5,5004 <Select_and_play_Song+0x174>
    5000:	fff40413          	add	s0,s0,-1
    5004:	f784a783          	lw	a5,-136(s1)
    5008:	14045e63          	bgez	s0,5164 <Select_and_play_Song+0x2d4>
    500c:	fff78413          	add	s0,a5,-1
    5010:	00092783          	lw	a5,0(s2)
    5014:	0207f793          	and	a5,a5,32
    5018:	14078c63          	beqz	a5,5170 <Select_and_play_Song+0x2e0>
    501c:	00100793          	li	a5,1
    5020:	00f9a023          	sw	a5,0(s3)
    5024:	18c12083          	lw	ra,396(sp)
    5028:	18812403          	lw	s0,392(sp)
    502c:	18412483          	lw	s1,388(sp)
    5030:	18012903          	lw	s2,384(sp)
    5034:	17c12983          	lw	s3,380(sp)
    5038:	17812a03          	lw	s4,376(sp)
    503c:	17412a83          	lw	s5,372(sp)
    5040:	17012b03          	lw	s6,368(sp)
    5044:	16c12b83          	lw	s7,364(sp)
    5048:	16812c03          	lw	s8,360(sp)
    504c:	16412c83          	lw	s9,356(sp)
    5050:	19010113          	add	sp,sp,400
    5054:	00008067          	ret
    5058:	05010593          	add	a1,sp,80
    505c:	00410513          	add	a0,sp,4
    5060:	ffffe097          	auipc	ra,0xffffe
    5064:	4a4080e7          	jalr	1188(ra) # 3504 <fl_readdir>
    5068:	f00514e3          	bnez	a0,4f70 <Select_and_play_Song+0xe0>
    506c:	05014783          	lbu	a5,80(sp)
    5070:	ef578ce3          	beq	a5,s5,4f68 <Select_and_play_Song+0xd8>
    5074:	15414783          	lbu	a5,340(sp)
    5078:	ee0798e3          	bnez	a5,4f68 <Select_and_play_Song+0xd8>
    507c:	f784a703          	lw	a4,-136(s1)
    5080:	01600613          	li	a2,22
    5084:	05010593          	add	a1,sp,80
    5088:	00171793          	sll	a5,a4,0x1
    508c:	00e787b3          	add	a5,a5,a4
    5090:	00379793          	sll	a5,a5,0x3
    5094:	40e787b3          	sub	a5,a5,a4
    5098:	00f40533          	add	a0,s0,a5
    509c:	ffffc097          	auipc	ra,0xffffc
    50a0:	d64080e7          	jalr	-668(ra) # e00 <strncpy>
    50a4:	f784a703          	lw	a4,-136(s1)
    50a8:	00171793          	sll	a5,a4,0x1
    50ac:	00e787b3          	add	a5,a5,a4
    50b0:	00379793          	sll	a5,a5,0x3
    50b4:	40e787b3          	sub	a5,a5,a4
    50b8:	00f407b3          	add	a5,s0,a5
    50bc:	00170713          	add	a4,a4,1
    50c0:	00078b23          	sb	zero,22(a5)
    50c4:	f6e4ac23          	sw	a4,-136(s1)
    50c8:	ea1ff06f          	j	4f68 <Select_and_play_Song+0xd8>
    50cc:	00000593          	li	a1,0
    50d0:	00000513          	li	a0,0
    50d4:	ffffc097          	auipc	ra,0xffffc
    50d8:	f8c080e7          	jalr	-116(ra) # 1060 <display_set_cursor>
    50dc:	00000593          	li	a1,0
    50e0:	0ff00513          	li	a0,255
    50e4:	ffffc097          	auipc	ra,0xffffc
    50e8:	f90080e7          	jalr	-112(ra) # 1074 <display_set_front_back_color>
    50ec:	00006537          	lui	a0,0x6
    50f0:	da450513          	add	a0,a0,-604 # 5da4 <font+0x2dc>
    50f4:	ffffc097          	auipc	ra,0xffffc
    50f8:	2d8080e7          	jalr	728(ra) # 13cc <printf>
    50fc:	00090513          	mv	a0,s2
    5100:	ffffc097          	auipc	ra,0xffffc
    5104:	2cc080e7          	jalr	716(ra) # 13cc <printf>
    5108:	00006537          	lui	a0,0x6
    510c:	db850513          	add	a0,a0,-584 # 5db8 <font+0x2f0>
    5110:	ffffc097          	auipc	ra,0xffffc
    5114:	2bc080e7          	jalr	700(ra) # 13cc <printf>
    5118:	ffffc097          	auipc	ra,0xffffc
    511c:	0bc080e7          	jalr	188(ra) # 11d4 <display_refresh>
    5120:	0000006f          	j	5120 <Select_and_play_Song+0x290>
    5124:	03440a63          	beq	s0,s4,5158 <Select_and_play_Song+0x2c8>
    5128:	0ff00513          	li	a0,255
    512c:	00000593          	li	a1,0
    5130:	ffffc097          	auipc	ra,0xffffc
    5134:	f44080e7          	jalr	-188(ra) # 1074 <display_set_front_back_color>
    5138:	000c8613          	mv	a2,s9
    513c:	000a0593          	mv	a1,s4
    5140:	d28c0513          	add	a0,s8,-728 # 5d28 <font+0x260>
    5144:	ffffc097          	auipc	ra,0xffffc
    5148:	288080e7          	jalr	648(ra) # 13cc <printf>
    514c:	001a0a13          	add	s4,s4,1
    5150:	017c8c93          	add	s9,s9,23
    5154:	e81ff06f          	j	4fd4 <Select_and_play_Song+0x144>
    5158:	00000513          	li	a0,0
    515c:	0ff00593          	li	a1,255
    5160:	fd1ff06f          	j	5130 <Select_and_play_Song+0x2a0>
    5164:	eaf446e3          	blt	s0,a5,5010 <Select_and_play_Song+0x180>
    5168:	00000413          	li	s0,0
    516c:	ea5ff06f          	j	5010 <Select_and_play_Song+0x180>
    5170:	00092783          	lw	a5,0(s2)
    5174:	0407f793          	and	a5,a5,64
    5178:	e20784e3          	beqz	a5,4fa0 <Select_and_play_Song+0x110>
    517c:	0009a983          	lw	s3,0(s3)
    5180:	ea0992e3          	bnez	s3,5024 <Select_and_play_Song+0x194>
    5184:	ffffc097          	auipc	ra,0xffffc
    5188:	ed0080e7          	jalr	-304(ra) # 1054 <display_framebuffer>
    518c:	00004637          	lui	a2,0x4
    5190:	00000593          	li	a1,0
    5194:	ffffc097          	auipc	ra,0xffffc
    5198:	bcc080e7          	jalr	-1076(ra) # d60 <memset>
    519c:	00000593          	li	a1,0
    51a0:	00000513          	li	a0,0
    51a4:	ffffc097          	auipc	ra,0xffffc
    51a8:	ebc080e7          	jalr	-324(ra) # 1060 <display_set_cursor>
    51ac:	00000593          	li	a1,0
    51b0:	07f00513          	li	a0,127
    51b4:	ffffc097          	auipc	ra,0xffffc
    51b8:	ec0080e7          	jalr	-320(ra) # 1074 <display_set_front_back_color>
    51bc:	00006537          	lui	a0,0x6
    51c0:	de450513          	add	a0,a0,-540 # 5de4 <font+0x31c>
    51c4:	ffffc097          	auipc	ra,0xffffc
    51c8:	208080e7          	jalr	520(ra) # 13cc <printf>
    51cc:	0ff00593          	li	a1,255
    51d0:	00000513          	li	a0,0
    51d4:	ffffc097          	auipc	ra,0xffffc
    51d8:	ea0080e7          	jalr	-352(ra) # 1074 <display_set_front_back_color>
    51dc:	00141793          	sll	a5,s0,0x1
    51e0:	008787b3          	add	a5,a5,s0
    51e4:	00379793          	sll	a5,a5,0x3
    51e8:	408787b3          	sub	a5,a5,s0
    51ec:	00fa8ab3          	add	s5,s5,a5
    51f0:	00006537          	lui	a0,0x6
    51f4:	000a8613          	mv	a2,s5
    51f8:	00040593          	mv	a1,s0
    51fc:	d2850513          	add	a0,a0,-728 # 5d28 <font+0x260>
    5200:	ffffc097          	auipc	ra,0xffffc
    5204:	1cc080e7          	jalr	460(ra) # 13cc <printf>
    5208:	ffffc097          	auipc	ra,0xffffc
    520c:	fcc080e7          	jalr	-52(ra) # 11d4 <display_refresh>
    5210:	03010593          	add	a1,sp,48
    5214:	05010513          	add	a0,sp,80
    5218:	ffffc097          	auipc	ra,0xffffc
    521c:	c0c080e7          	jalr	-1012(ra) # e24 <strcpy>
    5220:	000065b7          	lui	a1,0x6
    5224:	e0458593          	add	a1,a1,-508 # 5e04 <font+0x33c>
    5228:	05010513          	add	a0,sp,80
    522c:	ffffc097          	auipc	ra,0xffffc
    5230:	c18080e7          	jalr	-1000(ra) # e44 <strcat>
    5234:	000a8593          	mv	a1,s5
    5238:	05010513          	add	a0,sp,80
    523c:	ffffc097          	auipc	ra,0xffffc
    5240:	c08080e7          	jalr	-1016(ra) # e44 <strcat>
    5244:	000065b7          	lui	a1,0x6
    5248:	e0858593          	add	a1,a1,-504 # 5e08 <font+0x340>
    524c:	05010513          	add	a0,sp,80
    5250:	fffff097          	auipc	ra,0xfffff
    5254:	244080e7          	jalr	580(ra) # 4494 <fl_fopen>
    5258:	00050493          	mv	s1,a0
    525c:	02051063          	bnez	a0,527c <Select_and_play_Song+0x3ec>
    5260:	00006537          	lui	a0,0x6
    5264:	e0c50513          	add	a0,a0,-500 # 5e0c <font+0x344>
    5268:	ffffc097          	auipc	ra,0xffffc
    526c:	164080e7          	jalr	356(ra) # 13cc <printf>
    5270:	ffffc097          	auipc	ra,0xffffc
    5274:	f64080e7          	jalr	-156(ra) # 11d4 <display_refresh>
    5278:	dadff06f          	j	5024 <Select_and_play_Song+0x194>
    527c:	0ff00593          	li	a1,255
    5280:	00000513          	li	a0,0
    5284:	ffffc097          	auipc	ra,0xffffc
    5288:	df0080e7          	jalr	-528(ra) # 1074 <display_set_front_back_color>
    528c:	00006537          	lui	a0,0x6
    5290:	e2050513          	add	a0,a0,-480 # 5e20 <font+0x358>
    5294:	ffffc097          	auipc	ra,0xffffc
    5298:	138080e7          	jalr	312(ra) # 13cc <printf>
    529c:	ffffc097          	auipc	ra,0xffffc
    52a0:	f38080e7          	jalr	-200(ra) # 11d4 <display_refresh>
    52a4:	00000593          	li	a1,0
    52a8:	0ff00513          	li	a0,255
    52ac:	ffffc097          	auipc	ra,0xffffc
    52b0:	dc8080e7          	jalr	-568(ra) # 1074 <display_set_front_back_color>
    52b4:	00006537          	lui	a0,0x6
    52b8:	e3450513          	add	a0,a0,-460 # 5e34 <font+0x36c>
    52bc:	ffffc097          	auipc	ra,0xffffc
    52c0:	110080e7          	jalr	272(ra) # 13cc <printf>
    52c4:	ffffc097          	auipc	ra,0xffffc
    52c8:	f10080e7          	jalr	-240(ra) # 11d4 <display_refresh>
    52cc:	00000097          	auipc	ra,0x0
    52d0:	914080e7          	jalr	-1772(ra) # 4be0 <clear_audio>
    52d4:	000067b7          	lui	a5,0x6
    52d8:	ab07aa03          	lw	s4,-1360(a5) # 5ab0 <AUDIO>
    52dc:	000067b7          	lui	a5,0x6
    52e0:	ac47ab03          	lw	s6,-1340(a5) # 5ac4 <LEDS>
    52e4:	00100413          	li	s0,1
    52e8:	1ff00b93          	li	s7,511
    52ec:	08000c13          	li	s8,128
    52f0:	00092783          	lw	a5,0(s2)
    52f4:	0207f793          	and	a5,a5,32
    52f8:	00078863          	beqz	a5,5308 <Select_and_play_Song+0x478>
    52fc:	00092783          	lw	a5,0(s2)
    5300:	0207f793          	and	a5,a5,32
    5304:	fe078ce3          	beqz	a5,52fc <Select_and_play_Song+0x46c>
    5308:	000a2a83          	lw	s5,0(s4)
    530c:	00048693          	mv	a3,s1
    5310:	20000613          	li	a2,512
    5314:	00100593          	li	a1,1
    5318:	000a8513          	mv	a0,s5
    531c:	fffff097          	auipc	ra,0xfffff
    5320:	bb0080e7          	jalr	-1104(ra) # 3ecc <fl_fread>
    5324:	02abdc63          	bge	s7,a0,535c <Select_and_play_Song+0x4cc>
    5328:	000a2783          	lw	a5,0(s4)
    532c:	fefa8ee3          	beq	s5,a5,5328 <Select_and_play_Song+0x498>
    5330:	01840663          	beq	s0,s8,533c <Select_and_play_Song+0x4ac>
    5334:	00100793          	li	a5,1
    5338:	00f41663          	bne	s0,a5,5344 <Select_and_play_Song+0x4b4>
    533c:	00100793          	li	a5,1
    5340:	413789b3          	sub	s3,a5,s3
    5344:	00098863          	beqz	s3,5354 <Select_and_play_Song+0x4c4>
    5348:	00141413          	sll	s0,s0,0x1
    534c:	008b2023          	sw	s0,0(s6)
    5350:	fa1ff06f          	j	52f0 <Select_and_play_Song+0x460>
    5354:	40145413          	sra	s0,s0,0x1
    5358:	ff5ff06f          	j	534c <Select_and_play_Song+0x4bc>
    535c:	00048513          	mv	a0,s1
    5360:	fffff097          	auipc	ra,0xfffff
    5364:	a8c080e7          	jalr	-1396(ra) # 3dec <fl_fclose>
    5368:	cbdff06f          	j	5024 <Select_and_play_Song+0x194>

0000536c <print_time_seconds>:
    536c:	0000c5b7          	lui	a1,0xc
    5370:	ff010113          	add	sp,sp,-16
    5374:	35058593          	add	a1,a1,848 # c350 <Songs+0x15c0>
    5378:	00112623          	sw	ra,12(sp)
    537c:	00812423          	sw	s0,8(sp)
    5380:	00912223          	sw	s1,4(sp)
    5384:	00050493          	mv	s1,a0
    5388:	ffffc097          	auipc	ra,0xffffc
    538c:	92c080e7          	jalr	-1748(ra) # cb4 <__udivsi3>
    5390:	3e800593          	li	a1,1000
    5394:	ffffc097          	auipc	ra,0xffffc
    5398:	968080e7          	jalr	-1688(ra) # cfc <__umodsi3>
    539c:	02faf5b7          	lui	a1,0x2faf
    53a0:	00050413          	mv	s0,a0
    53a4:	08058593          	add	a1,a1,128 # 2faf080 <__stacktop+0x2f9f080>
    53a8:	00048513          	mv	a0,s1
    53ac:	ffffc097          	auipc	ra,0xffffc
    53b0:	908080e7          	jalr	-1784(ra) # cb4 <__udivsi3>
    53b4:	00050593          	mv	a1,a0
    53b8:	00006537          	lui	a0,0x6
    53bc:	e4450513          	add	a0,a0,-444 # 5e44 <font+0x37c>
    53c0:	ffffc097          	auipc	ra,0xffffc
    53c4:	00c080e7          	jalr	12(ra) # 13cc <printf>
    53c8:	06400593          	li	a1,100
    53cc:	00040513          	mv	a0,s0
    53d0:	ffffc097          	auipc	ra,0xffffc
    53d4:	8e4080e7          	jalr	-1820(ra) # cb4 <__udivsi3>
    53d8:	000064b7          	lui	s1,0x6
    53dc:	f584a783          	lw	a5,-168(s1) # 5f58 <f_putchar>
    53e0:	03050513          	add	a0,a0,48
    53e4:	000780e7          	jalr	a5
    53e8:	00a00593          	li	a1,10
    53ec:	00040513          	mv	a0,s0
    53f0:	ffffc097          	auipc	ra,0xffffc
    53f4:	8c4080e7          	jalr	-1852(ra) # cb4 <__udivsi3>
    53f8:	00a00593          	li	a1,10
    53fc:	ffffc097          	auipc	ra,0xffffc
    5400:	900080e7          	jalr	-1792(ra) # cfc <__umodsi3>
    5404:	f584a783          	lw	a5,-168(s1)
    5408:	03050513          	add	a0,a0,48
    540c:	000780e7          	jalr	a5
    5410:	00a00593          	li	a1,10
    5414:	00040513          	mv	a0,s0
    5418:	ffffc097          	auipc	ra,0xffffc
    541c:	8e4080e7          	jalr	-1820(ra) # cfc <__umodsi3>
    5420:	f584a783          	lw	a5,-168(s1)
    5424:	03050513          	add	a0,a0,48
    5428:	000780e7          	jalr	a5
    542c:	00812403          	lw	s0,8(sp)
    5430:	00c12083          	lw	ra,12(sp)
    5434:	00412483          	lw	s1,4(sp)
    5438:	00006537          	lui	a0,0x6
    543c:	e4850513          	add	a0,a0,-440 # 5e48 <font+0x380>
    5440:	01010113          	add	sp,sp,16
    5444:	ffffc317          	auipc	t1,0xffffc
    5448:	f8830067          	jr	-120(t1) # 13cc <printf>

0000544c <set_px>:
    544c:	00b56733          	or	a4,a0,a1
    5450:	07f00793          	li	a5,127
    5454:	04e7ea63          	bltu	a5,a4,54a8 <set_px+0x5c>
    5458:	ff010113          	add	sp,sp,-16
    545c:	00812423          	sw	s0,8(sp)
    5460:	00050413          	mv	s0,a0
    5464:	00912223          	sw	s1,4(sp)
    5468:	01212023          	sw	s2,0(sp)
    546c:	00112623          	sw	ra,12(sp)
    5470:	00058493          	mv	s1,a1
    5474:	00060913          	mv	s2,a2
    5478:	00741413          	sll	s0,s0,0x7
    547c:	ffffc097          	auipc	ra,0xffffc
    5480:	bd8080e7          	jalr	-1064(ra) # 1054 <display_framebuffer>
    5484:	009405b3          	add	a1,s0,s1
    5488:	00b50533          	add	a0,a0,a1
    548c:	01250023          	sb	s2,0(a0)
    5490:	00c12083          	lw	ra,12(sp)
    5494:	00812403          	lw	s0,8(sp)
    5498:	00412483          	lw	s1,4(sp)
    549c:	00012903          	lw	s2,0(sp)
    54a0:	01010113          	add	sp,sp,16
    54a4:	00008067          	ret
    54a8:	00008067          	ret

000054ac <wait_for_button_release.constprop.0>:
    54ac:	000067b7          	lui	a5,0x6
    54b0:	ab47a703          	lw	a4,-1356(a5) # 5ab4 <BUTTONS>
    54b4:	00072783          	lw	a5,0(a4)
    54b8:	0407f793          	and	a5,a5,64
    54bc:	fe079ce3          	bnez	a5,54b4 <wait_for_button_release.constprop.0+0x8>
    54c0:	00008067          	ret

000054c4 <draw_circle>:
    54c4:	fb010113          	add	sp,sp,-80
    54c8:	04812423          	sw	s0,72(sp)
    54cc:	03312e23          	sw	s3,60(sp)
    54d0:	03412c23          	sw	s4,56(sp)
    54d4:	03612823          	sw	s6,48(sp)
    54d8:	01b12e23          	sw	s11,28(sp)
    54dc:	04112623          	sw	ra,76(sp)
    54e0:	04912223          	sw	s1,68(sp)
    54e4:	05212023          	sw	s2,64(sp)
    54e8:	03512a23          	sw	s5,52(sp)
    54ec:	03712623          	sw	s7,44(sp)
    54f0:	03812423          	sw	s8,40(sp)
    54f4:	03912223          	sw	s9,36(sp)
    54f8:	03a12023          	sw	s10,32(sp)
    54fc:	00050993          	mv	s3,a0
    5500:	00058a13          	mv	s4,a1
    5504:	00060d93          	mv	s11,a2
    5508:	00068413          	mv	s0,a3
    550c:	00000b13          	li	s6,0
    5510:	05bb4063          	blt	s6,s11,5550 <draw_circle+0x8c>
    5514:	04c12083          	lw	ra,76(sp)
    5518:	04812403          	lw	s0,72(sp)
    551c:	04412483          	lw	s1,68(sp)
    5520:	04012903          	lw	s2,64(sp)
    5524:	03c12983          	lw	s3,60(sp)
    5528:	03812a03          	lw	s4,56(sp)
    552c:	03412a83          	lw	s5,52(sp)
    5530:	03012b03          	lw	s6,48(sp)
    5534:	02c12b83          	lw	s7,44(sp)
    5538:	02812c03          	lw	s8,40(sp)
    553c:	02412c83          	lw	s9,36(sp)
    5540:	02012d03          	lw	s10,32(sp)
    5544:	01c12d83          	lw	s11,28(sp)
    5548:	05010113          	add	sp,sp,80
    554c:	00008067          	ret
    5550:	000b0913          	mv	s2,s6
    5554:	00000a93          	li	s5,0
    5558:	00000493          	li	s1,0
    555c:	01448c33          	add	s8,s1,s4
    5560:	01298bb3          	add	s7,s3,s2
    5564:	000c0593          	mv	a1,s8
    5568:	00040613          	mv	a2,s0
    556c:	000b8513          	mv	a0,s7
    5570:	00000097          	auipc	ra,0x0
    5574:	edc080e7          	jalr	-292(ra) # 544c <set_px>
    5578:	01348cb3          	add	s9,s1,s3
    557c:	012a05b3          	add	a1,s4,s2
    5580:	00040613          	mv	a2,s0
    5584:	000c8513          	mv	a0,s9
    5588:	00b12623          	sw	a1,12(sp)
    558c:	00000097          	auipc	ra,0x0
    5590:	ec0080e7          	jalr	-320(ra) # 544c <set_px>
    5594:	00c12583          	lw	a1,12(sp)
    5598:	40998d33          	sub	s10,s3,s1
    559c:	00040613          	mv	a2,s0
    55a0:	000d0513          	mv	a0,s10
    55a4:	00000097          	auipc	ra,0x0
    55a8:	ea8080e7          	jalr	-344(ra) # 544c <set_px>
    55ac:	41298533          	sub	a0,s3,s2
    55b0:	000c0593          	mv	a1,s8
    55b4:	00040613          	mv	a2,s0
    55b8:	00a12623          	sw	a0,12(sp)
    55bc:	00000097          	auipc	ra,0x0
    55c0:	e90080e7          	jalr	-368(ra) # 544c <set_px>
    55c4:	00c12503          	lw	a0,12(sp)
    55c8:	409a0c33          	sub	s8,s4,s1
    55cc:	00040613          	mv	a2,s0
    55d0:	000c0593          	mv	a1,s8
    55d4:	00000097          	auipc	ra,0x0
    55d8:	e78080e7          	jalr	-392(ra) # 544c <set_px>
    55dc:	412a05b3          	sub	a1,s4,s2
    55e0:	00040613          	mv	a2,s0
    55e4:	000d0513          	mv	a0,s10
    55e8:	00b12623          	sw	a1,12(sp)
    55ec:	00000097          	auipc	ra,0x0
    55f0:	e60080e7          	jalr	-416(ra) # 544c <set_px>
    55f4:	00c12583          	lw	a1,12(sp)
    55f8:	00040613          	mv	a2,s0
    55fc:	000c8513          	mv	a0,s9
    5600:	00000097          	auipc	ra,0x0
    5604:	e4c080e7          	jalr	-436(ra) # 544c <set_px>
    5608:	00040613          	mv	a2,s0
    560c:	000c0593          	mv	a1,s8
    5610:	000b8513          	mv	a0,s7
    5614:	00000097          	auipc	ra,0x0
    5618:	e38080e7          	jalr	-456(ra) # 544c <set_px>
    561c:	00148493          	add	s1,s1,1
    5620:	01504e63          	bgtz	s5,563c <draw_circle+0x178>
    5624:	00149793          	sll	a5,s1,0x1
    5628:	00178793          	add	a5,a5,1
    562c:	00fa8ab3          	add	s5,s5,a5
    5630:	f29956e3          	bge	s2,s1,555c <draw_circle+0x98>
    5634:	001b0b13          	add	s6,s6,1
    5638:	ed9ff06f          	j	5510 <draw_circle+0x4c>
    563c:	fff90913          	add	s2,s2,-1
    5640:	00191793          	sll	a5,s2,0x1
    5644:	00178793          	add	a5,a5,1
    5648:	40fa8ab3          	sub	s5,s5,a5
    564c:	fe5ff06f          	j	5630 <draw_circle+0x16c>

00005650 <F1>:
    5650:	fc010113          	add	sp,sp,-64
    5654:	01712e23          	sw	s7,28(sp)
    5658:	00b00793          	li	a5,11
    565c:	00006bb7          	lui	s7,0x6
    5660:	03312623          	sw	s3,44(sp)
    5664:	f8fba023          	sw	a5,-128(s7) # 5f80 <space>
    5668:	000069b7          	lui	s3,0x6
    566c:	01400793          	li	a5,20
    5670:	f8f9a223          	sw	a5,-124(s3) # 5f84 <center_x>
    5674:	02112e23          	sw	ra,60(sp)
    5678:	03512223          	sw	s5,36(sp)
    567c:	02812c23          	sw	s0,56(sp)
    5680:	02912a23          	sw	s1,52(sp)
    5684:	03212823          	sw	s2,48(sp)
    5688:	03412423          	sw	s4,40(sp)
    568c:	03612023          	sw	s6,32(sp)
    5690:	01812c23          	sw	s8,24(sp)
    5694:	01912a23          	sw	s9,20(sp)
    5698:	ffffc097          	auipc	ra,0xffffc
    569c:	9bc080e7          	jalr	-1604(ra) # 1054 <display_framebuffer>
    56a0:	00004637          	lui	a2,0x4
    56a4:	00000593          	li	a1,0
    56a8:	ffffb097          	auipc	ra,0xffffb
    56ac:	6b8080e7          	jalr	1720(ra) # d60 <memset>
    56b0:	00000593          	li	a1,0
    56b4:	00000513          	li	a0,0
    56b8:	ffffc097          	auipc	ra,0xffffc
    56bc:	9a8080e7          	jalr	-1624(ra) # 1060 <display_set_cursor>
    56c0:	00000593          	li	a1,0
    56c4:	07f00513          	li	a0,127
    56c8:	ffffc097          	auipc	ra,0xffffc
    56cc:	9ac080e7          	jalr	-1620(ra) # 1074 <display_set_front_back_color>
    56d0:	00006537          	lui	a0,0x6
    56d4:	e4c50513          	add	a0,a0,-436 # 5e4c <font+0x384>
    56d8:	ffffc097          	auipc	ra,0xffffc
    56dc:	cf4080e7          	jalr	-780(ra) # 13cc <printf>
    56e0:	00006537          	lui	a0,0x6
    56e4:	e8050513          	add	a0,a0,-384 # 5e80 <font+0x3b8>
    56e8:	ffffc097          	auipc	ra,0xffffc
    56ec:	ce4080e7          	jalr	-796(ra) # 13cc <printf>
    56f0:	00006537          	lui	a0,0x6
    56f4:	e9c50513          	add	a0,a0,-356 # 5e9c <font+0x3d4>
    56f8:	ffffc097          	auipc	ra,0xffffc
    56fc:	cd4080e7          	jalr	-812(ra) # 13cc <printf>
    5700:	ffffc097          	auipc	ra,0xffffc
    5704:	ad4080e7          	jalr	-1324(ra) # 11d4 <display_refresh>
    5708:	000067b7          	lui	a5,0x6
    570c:	ab47aa83          	lw	s5,-1356(a5) # 5ab4 <BUTTONS>
    5710:	000aa783          	lw	a5,0(s5)
    5714:	0407f793          	and	a5,a5,64
    5718:	fe078ce3          	beqz	a5,5710 <F1+0xc0>
    571c:	00000097          	auipc	ra,0x0
    5720:	d90080e7          	jalr	-624(ra) # 54ac <wait_for_button_release.constprop.0>
    5724:	c00026f3          	rdcycle	a3
    5728:	000187b7          	lui	a5,0x18
    572c:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    5730:	c0002773          	rdcycle	a4
    5734:	40d70733          	sub	a4,a4,a3
    5738:	fee7fce3          	bgeu	a5,a4,5730 <F1+0xe0>
    573c:	00006437          	lui	s0,0x6
    5740:	00010913          	mv	s2,sp
    5744:	02fafb37          	lui	s6,0x2faf
    5748:	f6042e23          	sw	zero,-132(s0) # 5f7c <timer>
    574c:	00090493          	mv	s1,s2
    5750:	07fb0b13          	add	s6,s6,127 # 2faf07f <__stacktop+0x2f9f07f>
    5754:	c0002773          	rdcycle	a4
    5758:	c00027f3          	rdcycle	a5
    575c:	40e787b3          	sub	a5,a5,a4
    5760:	fefb7ce3          	bgeu	s6,a5,5758 <F1+0x108>
    5764:	f849ac03          	lw	s8,-124(s3)
    5768:	00000097          	auipc	ra,0x0
    576c:	d44080e7          	jalr	-700(ra) # 54ac <wait_for_button_release.constprop.0>
    5770:	0ff00693          	li	a3,255
    5774:	00900613          	li	a2,9
    5778:	04000593          	li	a1,64
    577c:	000c0513          	mv	a0,s8
    5780:	00000097          	auipc	ra,0x0
    5784:	d44080e7          	jalr	-700(ra) # 54c4 <draw_circle>
    5788:	ffffc097          	auipc	ra,0xffffc
    578c:	a4c080e7          	jalr	-1460(ra) # 11d4 <display_refresh>
    5790:	c0002cf3          	rdcycle	s9
    5794:	000aa783          	lw	a5,0(s5)
    5798:	0407f793          	and	a5,a5,64
    579c:	fe078ce3          	beqz	a5,5794 <F1+0x144>
    57a0:	c0002a73          	rdcycle	s4
    57a4:	00000693          	li	a3,0
    57a8:	00900613          	li	a2,9
    57ac:	04000593          	li	a1,64
    57b0:	000c0513          	mv	a0,s8
    57b4:	00000097          	auipc	ra,0x0
    57b8:	d10080e7          	jalr	-752(ra) # 54c4 <draw_circle>
    57bc:	ffffc097          	auipc	ra,0xffffc
    57c0:	a18080e7          	jalr	-1512(ra) # 11d4 <display_refresh>
    57c4:	00000097          	auipc	ra,0x0
    57c8:	ce8080e7          	jalr	-792(ra) # 54ac <wait_for_button_release.constprop.0>
    57cc:	f7c42703          	lw	a4,-132(s0)
    57d0:	419a07b3          	sub	a5,s4,s9
    57d4:	00f4a023          	sw	a5,0(s1)
    57d8:	00f707b3          	add	a5,a4,a5
    57dc:	f6f42e23          	sw	a5,-132(s0)
    57e0:	f80ba783          	lw	a5,-128(s7)
    57e4:	f849a703          	lw	a4,-124(s3)
    57e8:	00448493          	add	s1,s1,4
    57ec:	01278793          	add	a5,a5,18
    57f0:	00e787b3          	add	a5,a5,a4
    57f4:	f8f9a223          	sw	a5,-124(s3)
    57f8:	01010793          	add	a5,sp,16
    57fc:	f4f49ce3          	bne	s1,a5,5754 <F1+0x104>
    5800:	ffffc097          	auipc	ra,0xffffc
    5804:	854080e7          	jalr	-1964(ra) # 1054 <display_framebuffer>
    5808:	00004637          	lui	a2,0x4
    580c:	00000593          	li	a1,0
    5810:	ffffb097          	auipc	ra,0xffffb
    5814:	550080e7          	jalr	1360(ra) # d60 <memset>
    5818:	00000593          	li	a1,0
    581c:	00000513          	li	a0,0
    5820:	ffffc097          	auipc	ra,0xffffc
    5824:	840080e7          	jalr	-1984(ra) # 1060 <display_set_cursor>
    5828:	00000593          	li	a1,0
    582c:	0ff00513          	li	a0,255
    5830:	ffffc097          	auipc	ra,0xffffc
    5834:	844080e7          	jalr	-1980(ra) # 1074 <display_set_front_back_color>
    5838:	00006537          	lui	a0,0x6
    583c:	ed450513          	add	a0,a0,-300 # 5ed4 <font+0x40c>
    5840:	ffffc097          	auipc	ra,0xffffc
    5844:	b8c080e7          	jalr	-1140(ra) # 13cc <printf>
    5848:	00000493          	li	s1,0
    584c:	00006b37          	lui	s6,0x6
    5850:	000069b7          	lui	s3,0x6
    5854:	00400a13          	li	s4,4
    5858:	00148493          	add	s1,s1,1
    585c:	00048593          	mv	a1,s1
    5860:	ee8b0513          	add	a0,s6,-280 # 5ee8 <font+0x420>
    5864:	ffffc097          	auipc	ra,0xffffc
    5868:	b68080e7          	jalr	-1176(ra) # 13cc <printf>
    586c:	00092503          	lw	a0,0(s2)
    5870:	00490913          	add	s2,s2,4
    5874:	00000097          	auipc	ra,0x0
    5878:	af8080e7          	jalr	-1288(ra) # 536c <print_time_seconds>
    587c:	f2898513          	add	a0,s3,-216 # 5f28 <font+0x460>
    5880:	ffffc097          	auipc	ra,0xffffc
    5884:	b4c080e7          	jalr	-1204(ra) # 13cc <printf>
    5888:	fd4498e3          	bne	s1,s4,5858 <F1+0x208>
    588c:	00006537          	lui	a0,0x6
    5890:	ef050513          	add	a0,a0,-272 # 5ef0 <font+0x428>
    5894:	ffffc097          	auipc	ra,0xffffc
    5898:	b38080e7          	jalr	-1224(ra) # 13cc <printf>
    589c:	f7c42503          	lw	a0,-132(s0)
    58a0:	00255513          	srl	a0,a0,0x2
    58a4:	00000097          	auipc	ra,0x0
    58a8:	ac8080e7          	jalr	-1336(ra) # 536c <print_time_seconds>
    58ac:	f2898513          	add	a0,s3,-216
    58b0:	ffffc097          	auipc	ra,0xffffc
    58b4:	b1c080e7          	jalr	-1252(ra) # 13cc <printf>
    58b8:	00006537          	lui	a0,0x6
    58bc:	efc50513          	add	a0,a0,-260 # 5efc <font+0x434>
    58c0:	ffffc097          	auipc	ra,0xffffc
    58c4:	b0c080e7          	jalr	-1268(ra) # 13cc <printf>
    58c8:	ffffc097          	auipc	ra,0xffffc
    58cc:	90c080e7          	jalr	-1780(ra) # 11d4 <display_refresh>
    58d0:	000aa783          	lw	a5,0(s5)
    58d4:	0407f793          	and	a5,a5,64
    58d8:	fe078ce3          	beqz	a5,58d0 <F1+0x280>
    58dc:	ffffb097          	auipc	ra,0xffffb
    58e0:	778080e7          	jalr	1912(ra) # 1054 <display_framebuffer>
    58e4:	03812403          	lw	s0,56(sp)
    58e8:	03c12083          	lw	ra,60(sp)
    58ec:	03412483          	lw	s1,52(sp)
    58f0:	03012903          	lw	s2,48(sp)
    58f4:	02c12983          	lw	s3,44(sp)
    58f8:	02812a03          	lw	s4,40(sp)
    58fc:	02412a83          	lw	s5,36(sp)
    5900:	02012b03          	lw	s6,32(sp)
    5904:	01c12b83          	lw	s7,28(sp)
    5908:	01812c03          	lw	s8,24(sp)
    590c:	01412c83          	lw	s9,20(sp)
    5910:	00004637          	lui	a2,0x4
    5914:	00000593          	li	a1,0
    5918:	04010113          	add	sp,sp,64
    591c:	ffffb317          	auipc	t1,0xffffb
    5920:	44430067          	jr	1092(t1) # d60 <memset>

00005924 <Game_menu>:
    5924:	fd010113          	add	sp,sp,-48
    5928:	000067b7          	lui	a5,0x6
    592c:	02912223          	sw	s1,36(sp)
    5930:	ab47a483          	lw	s1,-1356(a5) # 5ab4 <BUTTONS>
    5934:	02812423          	sw	s0,40(sp)
    5938:	03212023          	sw	s2,32(sp)
    593c:	01312e23          	sw	s3,28(sp)
    5940:	01412c23          	sw	s4,24(sp)
    5944:	01512a23          	sw	s5,20(sp)
    5948:	01612823          	sw	s6,16(sp)
    594c:	01712623          	sw	s7,12(sp)
    5950:	02112623          	sw	ra,44(sp)
    5954:	00000413          	li	s0,0
    5958:	00000913          	li	s2,0
    595c:	00006ab7          	lui	s5,0x6
    5960:	00006b37          	lui	s6,0x6
    5964:	000069b7          	lui	s3,0x6
    5968:	00100a13          	li	s4,1
    596c:	00006bb7          	lui	s7,0x6
    5970:	00000593          	li	a1,0
    5974:	00000513          	li	a0,0
    5978:	ffffb097          	auipc	ra,0xffffb
    597c:	6e8080e7          	jalr	1768(ra) # 1060 <display_set_cursor>
    5980:	0ff97593          	zext.b	a1,s2
    5984:	07f58513          	add	a0,a1,127
    5988:	0ff57513          	zext.b	a0,a0
    598c:	ffffb097          	auipc	ra,0xffffb
    5990:	6e8080e7          	jalr	1768(ra) # 1074 <display_set_front_back_color>
    5994:	f10a8513          	add	a0,s5,-240 # 5f10 <font+0x448>
    5998:	00790913          	add	s2,s2,7
    599c:	ffffc097          	auipc	ra,0xffffc
    59a0:	a30080e7          	jalr	-1488(ra) # 13cc <printf>
    59a4:	0a041663          	bnez	s0,5a50 <Game_menu+0x12c>
    59a8:	00000513          	li	a0,0
    59ac:	0ff00593          	li	a1,255
    59b0:	ffffb097          	auipc	ra,0xffffb
    59b4:	6c4080e7          	jalr	1732(ra) # 1074 <display_set_front_back_color>
    59b8:	f2cb0613          	add	a2,s6,-212 # 5f2c <font+0x464>
    59bc:	00000593          	li	a1,0
    59c0:	d2898513          	add	a0,s3,-728 # 5d28 <font+0x260>
    59c4:	ffffc097          	auipc	ra,0xffffc
    59c8:	a08080e7          	jalr	-1528(ra) # 13cc <printf>
    59cc:	09441863          	bne	s0,s4,5a5c <Game_menu+0x138>
    59d0:	00000513          	li	a0,0
    59d4:	0ff00593          	li	a1,255
    59d8:	ffffb097          	auipc	ra,0xffffb
    59dc:	69c080e7          	jalr	1692(ra) # 1074 <display_set_front_back_color>
    59e0:	f30b8613          	add	a2,s7,-208 # 5f30 <font+0x468>
    59e4:	00100593          	li	a1,1
    59e8:	d2898513          	add	a0,s3,-728
    59ec:	ffffc097          	auipc	ra,0xffffc
    59f0:	9e0080e7          	jalr	-1568(ra) # 13cc <printf>
    59f4:	ffffb097          	auipc	ra,0xffffb
    59f8:	7e0080e7          	jalr	2016(ra) # 11d4 <display_refresh>
    59fc:	0004a783          	lw	a5,0(s1)
    5a00:	0107f793          	and	a5,a5,16
    5a04:	06079263          	bnez	a5,5a68 <Game_menu+0x144>
    5a08:	0004a783          	lw	a5,0(s1)
    5a0c:	0087f793          	and	a5,a5,8
    5a10:	06079863          	bnez	a5,5a80 <Game_menu+0x15c>
    5a14:	0004a783          	lw	a5,0(s1)
    5a18:	0207f793          	and	a5,a5,32
    5a1c:	f4078ae3          	beqz	a5,5970 <Game_menu+0x4c>
    5a20:	ffffb097          	auipc	ra,0xffffb
    5a24:	634080e7          	jalr	1588(ra) # 1054 <display_framebuffer>
    5a28:	00004637          	lui	a2,0x4
    5a2c:	00000593          	li	a1,0
    5a30:	ffffb097          	auipc	ra,0xffffb
    5a34:	330080e7          	jalr	816(ra) # d60 <memset>
    5a38:	ffffb097          	auipc	ra,0xffffb
    5a3c:	79c080e7          	jalr	1948(ra) # 11d4 <display_refresh>
    5a40:	f20418e3          	bnez	s0,5970 <Game_menu+0x4c>
    5a44:	00000097          	auipc	ra,0x0
    5a48:	c0c080e7          	jalr	-1012(ra) # 5650 <F1>
    5a4c:	f25ff06f          	j	5970 <Game_menu+0x4c>
    5a50:	0ff00513          	li	a0,255
    5a54:	00000593          	li	a1,0
    5a58:	f59ff06f          	j	59b0 <Game_menu+0x8c>
    5a5c:	0ff00513          	li	a0,255
    5a60:	00000593          	li	a1,0
    5a64:	f75ff06f          	j	59d8 <Game_menu+0xb4>
    5a68:	0004a783          	lw	a5,0(s1)
    5a6c:	0087f793          	and	a5,a5,8
    5a70:	fa0792e3          	bnez	a5,5a14 <Game_menu+0xf0>
    5a74:	00100793          	li	a5,1
    5a78:	40878433          	sub	s0,a5,s0
    5a7c:	f99ff06f          	j	5a14 <Game_menu+0xf0>
    5a80:	408a0433          	sub	s0,s4,s0
    5a84:	f91ff06f          	j	5a14 <Game_menu+0xf0>

00005a88 <cmd16>:
    5a88:	02000050 00001500                       P.......

00005a90 <acmd41>:
    5a90:	00004069 00000100                       i@......

00005a98 <cmd55>:
    5a98:	00000077 00000100                       w.......

00005aa0 <cmd8>:
    5aa0:	01000048 000087aa                       H.......

00005aa8 <cmd0>:
    5aa8:	00000040 00009500                       @.......

00005ab0 <AUDIO>:
    5ab0:	00018000                                ....

00005ab4 <BUTTONS>:
    5ab4:	00010100                                ....

00005ab8 <SDCARD>:
    5ab8:	00010080                                ....

00005abc <OLED_RST>:
    5abc:	00010010                                ....

00005ac0 <OLED>:
    5ac0:	00010008                                ....

00005ac4 <LEDS>:
    5ac4:	00010004                                ....

00005ac8 <font>:
    5ac8:	00000000 00002f00 00030000 14000003     ...../..........
    5ad8:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5ae8:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5af8:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5b08:	00080800 00200000 20000000 02040810     ...... .... ....
    5b18:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5b28:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5b38:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5b48:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5b58:	00141400 0a110000 01000004 0007052d     ............-...
    5b68:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5b78:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5b88:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5b98:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5ba8:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5bb8:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5bc8:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5bd8:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5be8:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5bf8:	003f2102 01020000 20000201 00000020     .!?........  ...
    5c08:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5c18:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5c28:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5c38:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5c48:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5c58:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5c68:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5c78:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5c88:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5c98:	043f2100 02010000 00000102 00000000     .!?.............
    5ca8:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    5cb8:	00000000 00000001 00000003 00000005     ................
    5cc8:	00000007 00000009 0000000e 00000010     ................
    5cd8:	00000012 00000014 00000016 00000018     ................
    5ce8:	0000001c 0000001e 74696e69 2e2e2e20     ........init ...
    5cf8:	00000020 656e6f64 00000a2e 3d202020      ...done....   =
    5d08:	754d203d 20636973 6147202f 3d20656d     = Music / Game =
    5d18:	2020203d 00000a0a 6973754d 00000063     =   ....Music...
    5d28:	203e6425 000a7325 656d6147 00000073     %d> %s..Games...
    5d38:	6e6f732f 00000067 69647561 61705f6f     /song...audio_pa
    5d48:	69207472 2074696e 202e2e2e 00000000     rt init ... ....
    5d58:	66206f4e 73656c69 756f6620 6920646e     No files found i
    5d68:	732f206e 2e676e6f 0000000a 3d202020     n /song.....   =
    5d78:	6c41203d 736d7562 412f2820 6d75626c     = Albums (/Album
    5d88:	3d202973 2020203d 00000a0a 696e6920     s) ==   .... ini
    5d98:	002e2e74 6e6f732f 00002f67 66206f4e     t.../song/..No f
    5da8:	73656c69 756f6620 6920646e 0000206e     iles found in ..
    5db8:	6c6f6620 20726564 0000000a 3d202020      folder ....   =
    5dc8:	6f53203d 2073676e 6f532f28 2973676e     = Songs (/Songs)
    5dd8:	203d3d20 0a0a2020 00000000 3d202020      ==   ......   =
    5de8:	754d203d 75716973 614d2065 72747365     = Musique Maestr
    5df8:	3d3d206f 0a202020 0000000a 0000002f     o ==   ...../...
    5e08:	00006272 656c6966 746f6e20 756f6620     rb..file not fou
    5e18:	0a2e646e 00000000 6973756d 69662063     nd......music fi
    5e28:	6620656c 646e756f 00000a2e 79616c70     le found....play
    5e38:	20676e69 202e2e2e 00000000 002e6425     ing ... ....%d..
    5e48:	00007320 7349200a 756f7920 65722072      s... Is your re
    5e58:	69746361 74206e6f 20656d69 74736166     action time fast
    5e68:	74207265 206e6168 6720796d 646e6172     er than my grand
    5e78:	73276170 000a0a3f 50203d3d 73736572     pa's?...== Press
    5e88:	20364220 73206f74 74726174 0a3d3d20      B6 to start ==.
    5e98:	00000000 656c6552 20657361 74203642     ....Release B6 t
    5ea8:	206e6568 73657270 74692073 2073610a     hen press it.as 
    5eb8:	6e6f6f73 20736120 69632061 656c6372     soon as a circle
    5ec8:	70706120 73726165 0000002e 706d6554      appears....Temp
    5ed8:	61702073 73652072 3a696173 00000a0a     s par essai:....
    5ee8:	3a642523 00000020 796f4d0a 656e6e65     #%d: ....Moyenne
    5ef8:	0000203a 70203642 2072756f 65766572     : ..B6 pour reve
    5f08:	2e72696e 00000000 3d202020 6553203d     nir.....   == Se
    5f18:	7463656c 6d614720 3d3d2065 0a202020     lect Game ==   .
    5f28:	0000000a 00003146 6d6d6f63 5f676e69     ....F1..comming_
    5f38:	6e6f6f73 00000000                       soon....

00005f40 <back>:
    5f40:	00000000                                ....

00005f44 <situation>:
    5f44:	00000000                                ....

00005f48 <sdcard_while_loading_callback>:
    5f48:	00000000                                ....

00005f4c <back_color>:
	...

00005f4d <front_color>:
    5f4d:	                                         ...

00005f50 <cursor_y>:
    5f50:	00000000                                ....

00005f54 <cursor_x>:
    5f54:	00000000                                ....

00005f58 <f_putchar>:
    5f58:	00000000                                ....

00005f5c <_free_file_list>:
	...

00005f64 <_open_file_list>:
	...

00005f6c <_filelib_valid>:
    5f6c:	00000000                                ....

00005f70 <_filelib_init>:
    5f70:	00000000                                ....

00005f74 <nAlbums>:
    5f74:	00000000                                ....

00005f78 <NSongs>:
    5f78:	00000000                                ....

00005f7c <timer>:
    5f7c:	00000000                                ....

00005f80 <space>:
    5f80:	00000000                                ....

00005f84 <center_x>:
    5f84:	00000000                                ....
