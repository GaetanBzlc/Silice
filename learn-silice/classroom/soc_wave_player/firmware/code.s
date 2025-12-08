
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
      1c:	fe010113          	add	sp,sp,-32 # ffe0 <Songs+0x5090>
      20:	00812c23          	sw	s0,24(sp)
      24:	00006437          	lui	s0,0x6
      28:	0f842783          	lw	a5,248(s0) # 60f8 <back>
      2c:	00912a23          	sw	s1,20(sp)
      30:	01212823          	sw	s2,16(sp)
      34:	01312623          	sw	s3,12(sp)
      38:	00112e23          	sw	ra,28(sp)
      3c:	0007a023          	sw	zero,0(a5)
      40:	00006937          	lui	s2,0x6
      44:	00100993          	li	s3,1
      48:	000064b7          	lui	s1,0x6
      4c:	00005097          	auipc	ra,0x5
      50:	848080e7          	jalr	-1976(ra) # 4894 <Init_menu>
      54:	0ea92e23          	sw	a0,252(s2) # 60fc <situation>
      58:	04051263          	bnez	a0,9c <main+0x80>
      5c:	0f842583          	lw	a1,248(s0)
      60:	14848513          	add	a0,s1,328 # 6148 <Album>
      64:	00005097          	auipc	ra,0x5
      68:	c14080e7          	jalr	-1004(ra) # 4c78 <audio_menu>
      6c:	0f842783          	lw	a5,248(s0)
      70:	0007a703          	lw	a4,0(a5)
      74:	00070663          	beqz	a4,80 <main+0x64>
      78:	0007a023          	sw	zero,0(a5)
      7c:	fd1ff06f          	j	4c <main+0x30>
      80:	14848513          	add	a0,s1,328
      84:	00005097          	auipc	ra,0x5
      88:	164080e7          	jalr	356(ra) # 51e8 <Select_and_play_Song>
      8c:	0f842783          	lw	a5,248(s0)
      90:	0007a703          	lw	a4,0(a5)
      94:	fc0704e3          	beqz	a4,5c <main+0x40>
      98:	fe1ff06f          	j	78 <main+0x5c>
      9c:	fb3518e3          	bne	a0,s3,4c <main+0x30>
      a0:	00006097          	auipc	ra,0x6
      a4:	a40080e7          	jalr	-1472(ra) # 5ae0 <Game_menu>
      a8:	fa5ff06f          	j	4c <main+0x30>

000000ac <sdcard_ponder>:
      ac:	fe010113          	add	sp,sp,-32
      b0:	00812e23          	sw	s0,28(sp)
      b4:	02010413          	add	s0,sp,32
      b8:	fe042623          	sw	zero,-20(s0)
      bc:	fe042423          	sw	zero,-24(s0)
      c0:	0380006f          	j	f8 <sdcard_ponder+0x4c>
      c4:	000067b7          	lui	a5,0x6
      c8:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     168:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     1b4:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     200:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     24c:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     298:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     2e4:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     330:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     37c:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     3c8:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     414:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     460:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     4ac:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     4f8:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     544:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     590:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     5dc:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
     5e0:	fec42703          	lw	a4,-20(s0)
     5e4:	00e6e733          	or	a4,a3,a4
     5e8:	00e7a023          	sw	a4,0(a5)
     5ec:	00100713          	li	a4,1
     5f0:	fec42783          	lw	a5,-20(s0)
     5f4:	40f707b3          	sub	a5,a4,a5
     5f8:	fef42623          	sw	a5,-20(s0)
     5fc:	000067b7          	lui	a5,0x6
     600:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
     604:	00200713          	li	a4,2
     608:	00e7a023          	sw	a4,0(a5)
     60c:	000067b7          	lui	a5,0x6
     610:	1007a783          	lw	a5,256(a5) # 6100 <sdcard_while_loading_callback>
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
     674:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
     678:	00300713          	li	a4,3
     67c:	00e7a023          	sw	a4,0(a5)
     680:	fec42783          	lw	a5,-20(s0)
     684:	00178793          	add	a5,a5,1
     688:	fef42623          	sw	a5,-20(s0)
     68c:	000067b7          	lui	a5,0x6
     690:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
     694:	00200713          	li	a4,2
     698:	00e7a023          	sw	a4,0(a5)
     69c:	000067b7          	lui	a5,0x6
     6a0:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
     6a4:	0007a783          	lw	a5,0(a5)
     6a8:	fcf42e23          	sw	a5,-36(s0)
     6ac:	fe842783          	lw	a5,-24(s0)
     6b0:	00179793          	sll	a5,a5,0x1
     6b4:	fdc42703          	lw	a4,-36(s0)
     6b8:	00f767b3          	or	a5,a4,a5
     6bc:	fef42423          	sw	a5,-24(s0)
     6c0:	000067b7          	lui	a5,0x6
     6c4:	1007a783          	lw	a5,256(a5) # 6100 <sdcard_while_loading_callback>
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
     9fc:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     a28:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     a64:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     aa0:	10e7a023          	sw	a4,256(a5) # 6100 <sdcard_while_loading_callback>
     aa4:	00000097          	auipc	ra,0x0
     aa8:	f44080e7          	jalr	-188(ra) # 9e8 <sdcard_preinit>
     aac:	000067b7          	lui	a5,0x6
     ab0:	c6478513          	add	a0,a5,-924 # 5c64 <cmd0>
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
     b04:	c5c78513          	add	a0,a5,-932 # 5c5c <cmd8>
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
     b34:	c5478513          	add	a0,a5,-940 # 5c54 <cmd55>
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
     b64:	c4c78513          	add	a0,a5,-948 # 5c4c <acmd41>
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
     bcc:	c4478513          	add	a0,a5,-956 # 5c44 <cmd16>
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
     c28:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
     c2c:	00200713          	li	a4,2
     c30:	00e7a023          	sw	a4,0(a5)
     c34:	00008067          	ret

00000c38 <sdcard_unselect>:
     c38:	000067b7          	lui	a5,0x6
     c3c:	c747a783          	lw	a5,-908(a5) # 5c74 <SDCARD>
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
     e90:	c787a703          	lw	a4,-904(a5) # 5c78 <OLED_RST>
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
     ebc:	c787a703          	lw	a4,-904(a5)
     ec0:	00100693          	li	a3,1
     ec4:	00d72023          	sw	a3,0(a4)
     ec8:	00040737          	lui	a4,0x40
     ecc:	00000013          	nop
     ed0:	fff70713          	add	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     ed4:	fe071ce3          	bnez	a4,ecc <oled_init_mode+0x40>
     ed8:	c787a783          	lw	a5,-904(a5)
     edc:	0007a023          	sw	zero,0(a5)
     ee0:	000407b7          	lui	a5,0x40
     ee4:	00000013          	nop
     ee8:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     eec:	fe079ce3          	bnez	a5,ee4 <oled_init_mode+0x58>
     ef0:	00006737          	lui	a4,0x6
     ef4:	c7c72783          	lw	a5,-900(a4) # 5c7c <OLED>
     ef8:	2af00693          	li	a3,687
     efc:	00d7a023          	sw	a3,0(a5)
     f00:	000407b7          	lui	a5,0x40
     f04:	00000013          	nop
     f08:	fff78793          	add	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     f0c:	fe079ce3          	bnez	a5,f04 <oled_init_mode+0x78>
     f10:	c7c72403          	lw	s0,-900(a4)
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
     fa4:	c7c7a403          	lw	s0,-900(a5) # 5c7c <OLED>
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

00001030 <oled_wait>:
    1030:	00000013          	nop
    1034:	00000013          	nop
    1038:	00000013          	nop
    103c:	00000013          	nop
    1040:	00000013          	nop
    1044:	00000013          	nop
    1048:	00000013          	nop
    104c:	00008067          	ret

00001050 <display_framebuffer>:
    1050:	00006537          	lui	a0,0x6
    1054:	18850513          	add	a0,a0,392 # 6188 <framebuffer>
    1058:	00008067          	ret

0000105c <display_set_cursor>:
    105c:	000067b7          	lui	a5,0x6
    1060:	10a7a623          	sw	a0,268(a5) # 610c <cursor_x>
    1064:	000067b7          	lui	a5,0x6
    1068:	10b7a423          	sw	a1,264(a5) # 6108 <cursor_y>
    106c:	00008067          	ret

00001070 <display_set_front_back_color>:
    1070:	000067b7          	lui	a5,0x6
    1074:	10a782a3          	sb	a0,261(a5) # 6105 <front_color>
    1078:	000067b7          	lui	a5,0x6
    107c:	10b78223          	sb	a1,260(a5) # 6104 <back_color>
    1080:	00008067          	ret

00001084 <display_putchar>:
    1084:	00a00793          	li	a5,10
    1088:	00006837          	lui	a6,0x6
    108c:	02f51663          	bne	a0,a5,10b8 <display_putchar+0x34>
    1090:	00006737          	lui	a4,0x6
    1094:	10872783          	lw	a5,264(a4) # 6108 <cursor_y>
    1098:	10082623          	sw	zero,268(a6) # 610c <cursor_x>
    109c:	00878793          	add	a5,a5,8
    10a0:	10f72423          	sw	a5,264(a4)
    10a4:	07f00713          	li	a4,127
    10a8:	00f75663          	bge	a4,a5,10b4 <display_putchar+0x30>
    10ac:	000067b7          	lui	a5,0x6
    10b0:	1007a423          	sw	zero,264(a5) # 6108 <cursor_y>
    10b4:	00008067          	ret
    10b8:	ff010113          	add	sp,sp,-16
    10bc:	00812623          	sw	s0,12(sp)
    10c0:	00912423          	sw	s1,8(sp)
    10c4:	01f00713          	li	a4,31
    10c8:	10c82783          	lw	a5,268(a6)
    10cc:	0ca75063          	bge	a4,a0,118c <display_putchar+0x108>
    10d0:	00006737          	lui	a4,0x6
    10d4:	10872883          	lw	a7,264(a4) # 6108 <cursor_y>
    10d8:	08000613          	li	a2,128
    10dc:	00800713          	li	a4,8
    10e0:	41160633          	sub	a2,a2,a7
    10e4:	00c75463          	bge	a4,a2,10ec <display_putchar+0x68>
    10e8:	00800613          	li	a2,8
    10ec:	08000593          	li	a1,128
    10f0:	40f585b3          	sub	a1,a1,a5
    10f4:	00500713          	li	a4,5
    10f8:	00b75463          	bge	a4,a1,1100 <display_putchar+0x7c>
    10fc:	00500593          	li	a1,5
    1100:	00006737          	lui	a4,0x6
    1104:	10474383          	lbu	t2,260(a4) # 6104 <back_color>
    1108:	00006737          	lui	a4,0x6
    110c:	10574403          	lbu	s0,261(a4) # 6105 <front_color>
    1110:	00251713          	sll	a4,a0,0x2
    1114:	00a70733          	add	a4,a4,a0
    1118:	000066b7          	lui	a3,0x6
    111c:	00006537          	lui	a0,0x6
    1120:	c8468693          	add	a3,a3,-892 # 5c84 <font>
    1124:	18850513          	add	a0,a0,392 # 6188 <framebuffer>
    1128:	00d70733          	add	a4,a4,a3
    112c:	00779f93          	sll	t6,a5,0x7
    1130:	00000693          	li	a3,0
    1134:	00100493          	li	s1,1
    1138:	01150533          	add	a0,a0,a7
    113c:	04c6d863          	bge	a3,a2,118c <display_putchar+0x108>
    1140:	00d492b3          	sll	t0,s1,a3
    1144:	00070e13          	mv	t3,a4
    1148:	000f8313          	mv	t1,t6
    114c:	00000893          	li	a7,0
    1150:	0300006f          	j	1180 <display_putchar+0xfc>
    1154:	f60e4e83          	lbu	t4,-160(t3)
    1158:	00040f13          	mv	t5,s0
    115c:	005efeb3          	and	t4,t4,t0
    1160:	000e9463          	bnez	t4,1168 <display_putchar+0xe4>
    1164:	00038f13          	mv	t5,t2
    1168:	00650eb3          	add	t4,a0,t1
    116c:	00de8eb3          	add	t4,t4,a3
    1170:	01ee8023          	sb	t5,0(t4)
    1174:	00188893          	add	a7,a7,1
    1178:	08030313          	add	t1,t1,128
    117c:	001e0e13          	add	t3,t3,1
    1180:	fcb8cae3          	blt	a7,a1,1154 <display_putchar+0xd0>
    1184:	00168693          	add	a3,a3,1
    1188:	fb5ff06f          	j	113c <display_putchar+0xb8>
    118c:	00578793          	add	a5,a5,5
    1190:	07f00713          	li	a4,127
    1194:	00f74663          	blt	a4,a5,11a0 <display_putchar+0x11c>
    1198:	10f82623          	sw	a5,268(a6)
    119c:	0240006f          	j	11c0 <display_putchar+0x13c>
    11a0:	000066b7          	lui	a3,0x6
    11a4:	1086a783          	lw	a5,264(a3) # 6108 <cursor_y>
    11a8:	10082623          	sw	zero,268(a6)
    11ac:	00878793          	add	a5,a5,8
    11b0:	10f6a423          	sw	a5,264(a3)
    11b4:	00f75663          	bge	a4,a5,11c0 <display_putchar+0x13c>
    11b8:	000067b7          	lui	a5,0x6
    11bc:	1007a423          	sw	zero,264(a5) # 6108 <cursor_y>
    11c0:	00c12403          	lw	s0,12(sp)
    11c4:	00812483          	lw	s1,8(sp)
    11c8:	01010113          	add	sp,sp,16
    11cc:	00008067          	ret

000011d0 <display_refresh>:
    11d0:	fe010113          	add	sp,sp,-32
    11d4:	000067b7          	lui	a5,0x6
    11d8:	01212823          	sw	s2,16(sp)
    11dc:	c7c7a903          	lw	s2,-900(a5) # 5c7c <OLED>
    11e0:	01312623          	sw	s3,12(sp)
    11e4:	000069b7          	lui	s3,0x6
    11e8:	00912a23          	sw	s1,20(sp)
    11ec:	01412423          	sw	s4,8(sp)
    11f0:	00112e23          	sw	ra,28(sp)
    11f4:	00812c23          	sw	s0,24(sp)
    11f8:	00000493          	li	s1,0
    11fc:	18898993          	add	s3,s3,392 # 6188 <framebuffer>
    1200:	00004a37          	lui	s4,0x4
    1204:	013487b3          	add	a5,s1,s3
    1208:	0007c403          	lbu	s0,0(a5)
    120c:	00148493          	add	s1,s1,1
    1210:	00245413          	srl	s0,s0,0x2
    1214:	40046413          	or	s0,s0,1024
    1218:	00892023          	sw	s0,0(s2)
    121c:	00000097          	auipc	ra,0x0
    1220:	e14080e7          	jalr	-492(ra) # 1030 <oled_wait>
    1224:	00892023          	sw	s0,0(s2)
    1228:	00000097          	auipc	ra,0x0
    122c:	e08080e7          	jalr	-504(ra) # 1030 <oled_wait>
    1230:	00892023          	sw	s0,0(s2)
    1234:	00000097          	auipc	ra,0x0
    1238:	dfc080e7          	jalr	-516(ra) # 1030 <oled_wait>
    123c:	fd4494e3          	bne	s1,s4,1204 <display_refresh+0x34>
    1240:	01c12083          	lw	ra,28(sp)
    1244:	01812403          	lw	s0,24(sp)
    1248:	01412483          	lw	s1,20(sp)
    124c:	01012903          	lw	s2,16(sp)
    1250:	00c12983          	lw	s3,12(sp)
    1254:	00812a03          	lw	s4,8(sp)
    1258:	02010113          	add	sp,sp,32
    125c:	00008067          	ret

00001260 <print_string>:
    1260:	ff010113          	add	sp,sp,-16
    1264:	00812423          	sw	s0,8(sp)
    1268:	00912223          	sw	s1,4(sp)
    126c:	00112623          	sw	ra,12(sp)
    1270:	00050413          	mv	s0,a0
    1274:	000064b7          	lui	s1,0x6
    1278:	00044503          	lbu	a0,0(s0)
    127c:	00051c63          	bnez	a0,1294 <print_string+0x34>
    1280:	00c12083          	lw	ra,12(sp)
    1284:	00812403          	lw	s0,8(sp)
    1288:	00412483          	lw	s1,4(sp)
    128c:	01010113          	add	sp,sp,16
    1290:	00008067          	ret
    1294:	1104a783          	lw	a5,272(s1) # 6110 <f_putchar>
    1298:	00140413          	add	s0,s0,1
    129c:	000780e7          	jalr	a5
    12a0:	fd9ff06f          	j	1278 <print_string+0x18>

000012a4 <print_dec>:
    12a4:	ef010113          	add	sp,sp,-272
    12a8:	10812423          	sw	s0,264(sp)
    12ac:	10912223          	sw	s1,260(sp)
    12b0:	10112623          	sw	ra,268(sp)
    12b4:	11212023          	sw	s2,256(sp)
    12b8:	00050413          	mv	s0,a0
    12bc:	000064b7          	lui	s1,0x6
    12c0:	08045063          	bgez	s0,1340 <print_dec+0x9c>
    12c4:	1104a783          	lw	a5,272(s1) # 6110 <f_putchar>
    12c8:	02d00513          	li	a0,45
    12cc:	40800433          	neg	s0,s0
    12d0:	000780e7          	jalr	a5
    12d4:	fedff06f          	j	12c0 <print_dec+0x1c>
    12d8:	00040513          	mv	a0,s0
    12dc:	00a00593          	li	a1,10
    12e0:	00000097          	auipc	ra,0x0
    12e4:	9c8080e7          	jalr	-1592(ra) # ca8 <__divsi3>
    12e8:	00251793          	sll	a5,a0,0x2
    12ec:	00f507b3          	add	a5,a0,a5
    12f0:	00179793          	sll	a5,a5,0x1
    12f4:	40f40433          	sub	s0,s0,a5
    12f8:	00148493          	add	s1,s1,1
    12fc:	fe848fa3          	sb	s0,-1(s1)
    1300:	00050413          	mv	s0,a0
    1304:	fc041ae3          	bnez	s0,12d8 <print_dec+0x34>
    1308:	fd2488e3          	beq	s1,s2,12d8 <print_dec+0x34>
    130c:	00006437          	lui	s0,0x6
    1310:	fff4c503          	lbu	a0,-1(s1)
    1314:	11042783          	lw	a5,272(s0) # 6110 <f_putchar>
    1318:	fff48493          	add	s1,s1,-1
    131c:	03050513          	add	a0,a0,48
    1320:	000780e7          	jalr	a5
    1324:	ff2496e3          	bne	s1,s2,1310 <print_dec+0x6c>
    1328:	10c12083          	lw	ra,268(sp)
    132c:	10812403          	lw	s0,264(sp)
    1330:	10412483          	lw	s1,260(sp)
    1334:	10012903          	lw	s2,256(sp)
    1338:	11010113          	add	sp,sp,272
    133c:	00008067          	ret
    1340:	00010493          	mv	s1,sp
    1344:	00048913          	mv	s2,s1
    1348:	fbdff06f          	j	1304 <print_dec+0x60>

0000134c <print_hex_digits>:
    134c:	fe010113          	add	sp,sp,-32
    1350:	00812c23          	sw	s0,24(sp)
    1354:	01212823          	sw	s2,16(sp)
    1358:	fff58413          	add	s0,a1,-1
    135c:	00006937          	lui	s2,0x6
    1360:	00912a23          	sw	s1,20(sp)
    1364:	01312623          	sw	s3,12(sp)
    1368:	00112e23          	sw	ra,28(sp)
    136c:	00050493          	mv	s1,a0
    1370:	00241413          	sll	s0,s0,0x2
    1374:	e6490913          	add	s2,s2,-412 # 5e64 <font+0x1e0>
    1378:	000069b7          	lui	s3,0x6
    137c:	02045063          	bgez	s0,139c <print_hex_digits+0x50>
    1380:	01c12083          	lw	ra,28(sp)
    1384:	01812403          	lw	s0,24(sp)
    1388:	01412483          	lw	s1,20(sp)
    138c:	01012903          	lw	s2,16(sp)
    1390:	00c12983          	lw	s3,12(sp)
    1394:	02010113          	add	sp,sp,32
    1398:	00008067          	ret
    139c:	0084d7b3          	srl	a5,s1,s0
    13a0:	00f7f793          	and	a5,a5,15
    13a4:	00f907b3          	add	a5,s2,a5
    13a8:	1109a703          	lw	a4,272(s3) # 6110 <f_putchar>
    13ac:	0007c503          	lbu	a0,0(a5)
    13b0:	ffc40413          	add	s0,s0,-4
    13b4:	000700e7          	jalr	a4
    13b8:	fc5ff06f          	j	137c <print_hex_digits+0x30>

000013bc <print_hex>:
    13bc:	00800593          	li	a1,8
    13c0:	00000317          	auipc	t1,0x0
    13c4:	f8c30067          	jr	-116(t1) # 134c <print_hex_digits>

000013c8 <printf>:
    13c8:	fb010113          	add	sp,sp,-80
    13cc:	04f12223          	sw	a5,68(sp)
    13d0:	03410793          	add	a5,sp,52
    13d4:	02812423          	sw	s0,40(sp)
    13d8:	02912223          	sw	s1,36(sp)
    13dc:	03212023          	sw	s2,32(sp)
    13e0:	01312e23          	sw	s3,28(sp)
    13e4:	01412c23          	sw	s4,24(sp)
    13e8:	01512a23          	sw	s5,20(sp)
    13ec:	01612823          	sw	s6,16(sp)
    13f0:	02112623          	sw	ra,44(sp)
    13f4:	00050413          	mv	s0,a0
    13f8:	02b12a23          	sw	a1,52(sp)
    13fc:	02c12c23          	sw	a2,56(sp)
    1400:	02d12e23          	sw	a3,60(sp)
    1404:	04e12023          	sw	a4,64(sp)
    1408:	05012423          	sw	a6,72(sp)
    140c:	05112623          	sw	a7,76(sp)
    1410:	00f12623          	sw	a5,12(sp)
    1414:	02500913          	li	s2,37
    1418:	000064b7          	lui	s1,0x6
    141c:	07300993          	li	s3,115
    1420:	07800a13          	li	s4,120
    1424:	06400a93          	li	s5,100
    1428:	06300b13          	li	s6,99
    142c:	00044503          	lbu	a0,0(s0)
    1430:	02051663          	bnez	a0,145c <printf+0x94>
    1434:	02c12083          	lw	ra,44(sp)
    1438:	02812403          	lw	s0,40(sp)
    143c:	02412483          	lw	s1,36(sp)
    1440:	02012903          	lw	s2,32(sp)
    1444:	01c12983          	lw	s3,28(sp)
    1448:	01812a03          	lw	s4,24(sp)
    144c:	01412a83          	lw	s5,20(sp)
    1450:	01012b03          	lw	s6,16(sp)
    1454:	05010113          	add	sp,sp,80
    1458:	00008067          	ret
    145c:	09251863          	bne	a0,s2,14ec <printf+0x124>
    1460:	00144503          	lbu	a0,1(s0)
    1464:	03351463          	bne	a0,s3,148c <printf+0xc4>
    1468:	00c12783          	lw	a5,12(sp)
    146c:	0007a503          	lw	a0,0(a5)
    1470:	00478713          	add	a4,a5,4
    1474:	00e12623          	sw	a4,12(sp)
    1478:	00000097          	auipc	ra,0x0
    147c:	de8080e7          	jalr	-536(ra) # 1260 <print_string>
    1480:	00140413          	add	s0,s0,1
    1484:	00140413          	add	s0,s0,1
    1488:	fa5ff06f          	j	142c <printf+0x64>
    148c:	03451063          	bne	a0,s4,14ac <printf+0xe4>
    1490:	00c12783          	lw	a5,12(sp)
    1494:	0007a503          	lw	a0,0(a5)
    1498:	00478713          	add	a4,a5,4
    149c:	00e12623          	sw	a4,12(sp)
    14a0:	00000097          	auipc	ra,0x0
    14a4:	f1c080e7          	jalr	-228(ra) # 13bc <print_hex>
    14a8:	fd9ff06f          	j	1480 <printf+0xb8>
    14ac:	03551063          	bne	a0,s5,14cc <printf+0x104>
    14b0:	00c12783          	lw	a5,12(sp)
    14b4:	0007a503          	lw	a0,0(a5)
    14b8:	00478713          	add	a4,a5,4
    14bc:	00e12623          	sw	a4,12(sp)
    14c0:	00000097          	auipc	ra,0x0
    14c4:	de4080e7          	jalr	-540(ra) # 12a4 <print_dec>
    14c8:	fb9ff06f          	j	1480 <printf+0xb8>
    14cc:	1104a783          	lw	a5,272(s1) # 6110 <f_putchar>
    14d0:	01651a63          	bne	a0,s6,14e4 <printf+0x11c>
    14d4:	00c12703          	lw	a4,12(sp)
    14d8:	00072503          	lw	a0,0(a4)
    14dc:	00470693          	add	a3,a4,4
    14e0:	00d12623          	sw	a3,12(sp)
    14e4:	000780e7          	jalr	a5
    14e8:	f99ff06f          	j	1480 <printf+0xb8>
    14ec:	1104a783          	lw	a5,272(s1)
    14f0:	000780e7          	jalr	a5
    14f4:	f91ff06f          	j	1484 <printf+0xbc>

000014f8 <__mulsi3>:
    14f8:	00050793          	mv	a5,a0
    14fc:	00000513          	li	a0,0
    1500:	00079463          	bnez	a5,1508 <__mulsi3+0x10>
    1504:	00008067          	ret
    1508:	0017f713          	and	a4,a5,1
    150c:	00070463          	beqz	a4,1514 <__mulsi3+0x1c>
    1510:	00b50533          	add	a0,a0,a1
    1514:	0017d793          	srl	a5,a5,0x1
    1518:	00159593          	sll	a1,a1,0x1
    151c:	fe5ff06f          	j	1500 <__mulsi3+0x8>

00001520 <fat_list_insert_last>:
    1520:	00452783          	lw	a5,4(a0)
    1524:	04079263          	bnez	a5,1568 <fat_list_insert_last+0x48>
    1528:	00052783          	lw	a5,0(a0)
    152c:	00079c63          	bnez	a5,1544 <fat_list_insert_last+0x24>
    1530:	00b52023          	sw	a1,0(a0)
    1534:	00b52223          	sw	a1,4(a0)
    1538:	0005a023          	sw	zero,0(a1)
    153c:	0005a223          	sw	zero,4(a1)
    1540:	00008067          	ret
    1544:	0007a703          	lw	a4,0(a5)
    1548:	00f5a223          	sw	a5,4(a1)
    154c:	00e5a023          	sw	a4,0(a1)
    1550:	00071863          	bnez	a4,1560 <fat_list_insert_last+0x40>
    1554:	00b52023          	sw	a1,0(a0)
    1558:	00b7a023          	sw	a1,0(a5)
    155c:	00008067          	ret
    1560:	00b72223          	sw	a1,4(a4)
    1564:	ff5ff06f          	j	1558 <fat_list_insert_last+0x38>
    1568:	0047a703          	lw	a4,4(a5)
    156c:	00f5a023          	sw	a5,0(a1)
    1570:	00e5a223          	sw	a4,4(a1)
    1574:	00071863          	bnez	a4,1584 <fat_list_insert_last+0x64>
    1578:	00b52223          	sw	a1,4(a0)
    157c:	00b7a223          	sw	a1,4(a5)
    1580:	00008067          	ret
    1584:	00b72023          	sw	a1,0(a4)
    1588:	ff5ff06f          	j	157c <fat_list_insert_last+0x5c>

0000158c <FileString_StrCmpNoCase>:
    158c:	00050893          	mv	a7,a0
    1590:	00000693          	li	a3,0
    1594:	01900313          	li	t1,25
    1598:	00c69663          	bne	a3,a2,15a4 <FileString_StrCmpNoCase+0x18>
    159c:	00000513          	li	a0,0
    15a0:	00008067          	ret
    15a4:	00d887b3          	add	a5,a7,a3
    15a8:	0007c703          	lbu	a4,0(a5)
    15ac:	00d587b3          	add	a5,a1,a3
    15b0:	0007c783          	lbu	a5,0(a5)
    15b4:	fbf70513          	add	a0,a4,-65
    15b8:	0ff57513          	zext.b	a0,a0
    15bc:	fbf78813          	add	a6,a5,-65
    15c0:	0ff87813          	zext.b	a6,a6
    15c4:	02a36863          	bltu	t1,a0,15f4 <FileString_StrCmpNoCase+0x68>
    15c8:	02070713          	add	a4,a4,32
    15cc:	0ff77713          	zext.b	a4,a4
    15d0:	01036c63          	bltu	t1,a6,15e8 <FileString_StrCmpNoCase+0x5c>
    15d4:	02078793          	add	a5,a5,32
    15d8:	0ff7f793          	zext.b	a5,a5
    15dc:	40f70533          	sub	a0,a4,a5
    15e0:	02f70e63          	beq	a4,a5,161c <FileString_StrCmpNoCase+0x90>
    15e4:	00008067          	ret
    15e8:	40f70533          	sub	a0,a4,a5
    15ec:	02f70863          	beq	a4,a5,161c <FileString_StrCmpNoCase+0x90>
    15f0:	00008067          	ret
    15f4:	01036c63          	bltu	t1,a6,160c <FileString_StrCmpNoCase+0x80>
    15f8:	02078793          	add	a5,a5,32
    15fc:	0ff7f793          	zext.b	a5,a5
    1600:	40f70533          	sub	a0,a4,a5
    1604:	00f70c63          	beq	a4,a5,161c <FileString_StrCmpNoCase+0x90>
    1608:	00008067          	ret
    160c:	40f70533          	sub	a0,a4,a5
    1610:	f8f718e3          	bne	a4,a5,15a0 <FileString_StrCmpNoCase+0x14>
    1614:	f80706e3          	beqz	a4,15a0 <FileString_StrCmpNoCase+0x14>
    1618:	f80784e3          	beqz	a5,15a0 <FileString_StrCmpNoCase+0x14>
    161c:	00168693          	add	a3,a3,1
    1620:	f79ff06f          	j	1598 <FileString_StrCmpNoCase+0xc>

00001624 <FileString_GetExtension>:
    1624:	00050713          	mv	a4,a0
    1628:	00050793          	mv	a5,a0
    162c:	02e00613          	li	a2,46
    1630:	fff00513          	li	a0,-1
    1634:	0007c683          	lbu	a3,0(a5)
    1638:	00069463          	bnez	a3,1640 <FileString_GetExtension+0x1c>
    163c:	00008067          	ret
    1640:	00c69463          	bne	a3,a2,1648 <FileString_GetExtension+0x24>
    1644:	40e78533          	sub	a0,a5,a4
    1648:	00178793          	add	a5,a5,1
    164c:	fe9ff06f          	j	1634 <FileString_GetExtension+0x10>

00001650 <fatfs_fat_writeback>:
    1650:	00059663          	bnez	a1,165c <fatfs_fat_writeback+0xc>
    1654:	00000513          	li	a0,0
    1658:	00008067          	ret
    165c:	2045a703          	lw	a4,516(a1)
    1660:	ff010113          	add	sp,sp,-16
    1664:	00812423          	sw	s0,8(sp)
    1668:	00112623          	sw	ra,12(sp)
    166c:	00058413          	mv	s0,a1
    1670:	00070a63          	beqz	a4,1684 <fatfs_fat_writeback+0x34>
    1674:	03852683          	lw	a3,56(a0)
    1678:	00050793          	mv	a5,a0
    167c:	00069863          	bnez	a3,168c <fatfs_fat_writeback+0x3c>
    1680:	20042223          	sw	zero,516(s0)
    1684:	00100513          	li	a0,1
    1688:	0380006f          	j	16c0 <fatfs_fat_writeback+0x70>
    168c:	2005a503          	lw	a0,512(a1)
    1690:	0147a703          	lw	a4,20(a5)
    1694:	0207a583          	lw	a1,32(a5)
    1698:	00100613          	li	a2,1
    169c:	40e507b3          	sub	a5,a0,a4
    16a0:	00178793          	add	a5,a5,1
    16a4:	00f5f663          	bgeu	a1,a5,16b0 <fatfs_fat_writeback+0x60>
    16a8:	00b70733          	add	a4,a4,a1
    16ac:	40a70633          	sub	a2,a4,a0
    16b0:	00040593          	mv	a1,s0
    16b4:	000680e7          	jalr	a3
    16b8:	fc0514e3          	bnez	a0,1680 <fatfs_fat_writeback+0x30>
    16bc:	00000513          	li	a0,0
    16c0:	00c12083          	lw	ra,12(sp)
    16c4:	00812403          	lw	s0,8(sp)
    16c8:	01010113          	add	sp,sp,16
    16cc:	00008067          	ret

000016d0 <fatfs_fat_read_sector>:
    16d0:	fe010113          	add	sp,sp,-32
    16d4:	01212823          	sw	s2,16(sp)
    16d8:	25452903          	lw	s2,596(a0)
    16dc:	00812c23          	sw	s0,24(sp)
    16e0:	00912a23          	sw	s1,20(sp)
    16e4:	01312623          	sw	s3,12(sp)
    16e8:	00112e23          	sw	ra,28(sp)
    16ec:	00050993          	mv	s3,a0
    16f0:	00058493          	mv	s1,a1
    16f4:	00000413          	li	s0,0
    16f8:	04091663          	bnez	s2,1744 <fatfs_fat_read_sector+0x74>
    16fc:	2549a783          	lw	a5,596(s3)
    1700:	20f42623          	sw	a5,524(s0)
    1704:	20442783          	lw	a5,516(s0)
    1708:	2489aa23          	sw	s0,596(s3)
    170c:	06078663          	beqz	a5,1778 <fatfs_fat_read_sector+0xa8>
    1710:	00040593          	mv	a1,s0
    1714:	00098513          	mv	a0,s3
    1718:	00000097          	auipc	ra,0x0
    171c:	f38080e7          	jalr	-200(ra) # 1650 <fatfs_fat_writeback>
    1720:	04051c63          	bnez	a0,1778 <fatfs_fat_read_sector+0xa8>
    1724:	01c12083          	lw	ra,28(sp)
    1728:	01812403          	lw	s0,24(sp)
    172c:	01412483          	lw	s1,20(sp)
    1730:	00c12983          	lw	s3,12(sp)
    1734:	00090513          	mv	a0,s2
    1738:	01012903          	lw	s2,16(sp)
    173c:	02010113          	add	sp,sp,32
    1740:	00008067          	ret
    1744:	20092783          	lw	a5,512(s2)
    1748:	00f4e663          	bltu	s1,a5,1754 <fatfs_fat_read_sector+0x84>
    174c:	00178713          	add	a4,a5,1
    1750:	04e4ee63          	bltu	s1,a4,17ac <fatfs_fat_read_sector+0xdc>
    1754:	20c92783          	lw	a5,524(s2)
    1758:	00079663          	bnez	a5,1764 <fatfs_fat_read_sector+0x94>
    175c:	00040a63          	beqz	s0,1770 <fatfs_fat_read_sector+0xa0>
    1760:	20042623          	sw	zero,524(s0)
    1764:	00090413          	mv	s0,s2
    1768:	20c92903          	lw	s2,524(s2)
    176c:	f8dff06f          	j	16f8 <fatfs_fat_read_sector+0x28>
    1770:	2409aa23          	sw	zero,596(s3)
    1774:	ff1ff06f          	j	1764 <fatfs_fat_read_sector+0x94>
    1778:	0349a783          	lw	a5,52(s3)
    177c:	20942023          	sw	s1,512(s0)
    1780:	00100613          	li	a2,1
    1784:	00040593          	mv	a1,s0
    1788:	00048513          	mv	a0,s1
    178c:	000780e7          	jalr	a5
    1790:	00051863          	bnez	a0,17a0 <fatfs_fat_read_sector+0xd0>
    1794:	fff00793          	li	a5,-1
    1798:	20f42023          	sw	a5,512(s0)
    179c:	f89ff06f          	j	1724 <fatfs_fat_read_sector+0x54>
    17a0:	20842423          	sw	s0,520(s0)
    17a4:	00040913          	mv	s2,s0
    17a8:	f7dff06f          	j	1724 <fatfs_fat_read_sector+0x54>
    17ac:	40f484b3          	sub	s1,s1,a5
    17b0:	00949493          	sll	s1,s1,0x9
    17b4:	009904b3          	add	s1,s2,s1
    17b8:	20992423          	sw	s1,520(s2)
    17bc:	f69ff06f          	j	1724 <fatfs_fat_read_sector+0x54>

000017c0 <_allocate_file>:
    17c0:	ff010113          	add	sp,sp,-16
    17c4:	000067b7          	lui	a5,0x6
    17c8:	00812423          	sw	s0,8(sp)
    17cc:	1147a403          	lw	s0,276(a5) # 6114 <_free_file_list>
    17d0:	00112623          	sw	ra,12(sp)
    17d4:	02040e63          	beqz	s0,1810 <_allocate_file+0x50>
    17d8:	00042703          	lw	a4,0(s0)
    17dc:	00442683          	lw	a3,4(s0)
    17e0:	11478793          	add	a5,a5,276
    17e4:	04071063          	bnez	a4,1824 <_allocate_file+0x64>
    17e8:	00d7a023          	sw	a3,0(a5)
    17ec:	00442683          	lw	a3,4(s0)
    17f0:	02069e63          	bnez	a3,182c <_allocate_file+0x6c>
    17f4:	00e7a223          	sw	a4,4(a5)
    17f8:	00006537          	lui	a0,0x6
    17fc:	00040593          	mv	a1,s0
    1800:	11c50513          	add	a0,a0,284 # 611c <_open_file_list>
    1804:	00000097          	auipc	ra,0x0
    1808:	d1c080e7          	jalr	-740(ra) # 1520 <fat_list_insert_last>
    180c:	bc440413          	add	s0,s0,-1084
    1810:	00c12083          	lw	ra,12(sp)
    1814:	00040513          	mv	a0,s0
    1818:	00812403          	lw	s0,8(sp)
    181c:	01010113          	add	sp,sp,16
    1820:	00008067          	ret
    1824:	00d72223          	sw	a3,4(a4)
    1828:	fc5ff06f          	j	17ec <_allocate_file+0x2c>
    182c:	00e6a023          	sw	a4,0(a3)
    1830:	fc9ff06f          	j	17f8 <_allocate_file+0x38>

00001834 <_free_file>:
    1834:	43c52783          	lw	a5,1084(a0)
    1838:	44052703          	lw	a4,1088(a0)
    183c:	43c50593          	add	a1,a0,1084
    1840:	02079663          	bnez	a5,186c <_free_file+0x38>
    1844:	000066b7          	lui	a3,0x6
    1848:	10e6ae23          	sw	a4,284(a3) # 611c <_open_file_list>
    184c:	44052703          	lw	a4,1088(a0)
    1850:	02071263          	bnez	a4,1874 <_free_file+0x40>
    1854:	00006737          	lui	a4,0x6
    1858:	12f72023          	sw	a5,288(a4) # 6120 <_open_file_list+0x4>
    185c:	00006537          	lui	a0,0x6
    1860:	11450513          	add	a0,a0,276 # 6114 <_free_file_list>
    1864:	00000317          	auipc	t1,0x0
    1868:	cbc30067          	jr	-836(t1) # 1520 <fat_list_insert_last>
    186c:	00e7a223          	sw	a4,4(a5)
    1870:	fddff06f          	j	184c <_free_file+0x18>
    1874:	00f72023          	sw	a5,0(a4)
    1878:	fe5ff06f          	j	185c <_free_file+0x28>

0000187c <fatfs_lba_of_cluster>:
    187c:	ff010113          	add	sp,sp,-16
    1880:	00812423          	sw	s0,8(sp)
    1884:	00112623          	sw	ra,12(sp)
    1888:	00050413          	mv	s0,a0
    188c:	00058513          	mv	a0,a1
    1890:	00044583          	lbu	a1,0(s0)
    1894:	ffe50513          	add	a0,a0,-2
    1898:	00000097          	auipc	ra,0x0
    189c:	c60080e7          	jalr	-928(ra) # 14f8 <__mulsi3>
    18a0:	00442783          	lw	a5,4(s0)
    18a4:	00f50533          	add	a0,a0,a5
    18a8:	03042783          	lw	a5,48(s0)
    18ac:	00079863          	bnez	a5,18bc <fatfs_lba_of_cluster+0x40>
    18b0:	02845783          	lhu	a5,40(s0)
    18b4:	4047d793          	sra	a5,a5,0x4
    18b8:	00f50533          	add	a0,a0,a5
    18bc:	00c12083          	lw	ra,12(sp)
    18c0:	00812403          	lw	s0,8(sp)
    18c4:	01010113          	add	sp,sp,16
    18c8:	00008067          	ret

000018cc <fatfs_sector_read>:
    18cc:	03452783          	lw	a5,52(a0)
    18d0:	00058713          	mv	a4,a1
    18d4:	00070513          	mv	a0,a4
    18d8:	00060593          	mv	a1,a2
    18dc:	00068613          	mv	a2,a3
    18e0:	00078067          	jr	a5

000018e4 <fatfs_sector_write>:
    18e4:	03852783          	lw	a5,56(a0)
    18e8:	00058713          	mv	a4,a1
    18ec:	00070513          	mv	a0,a4
    18f0:	00060593          	mv	a1,a2
    18f4:	00068613          	mv	a2,a3
    18f8:	00078067          	jr	a5

000018fc <fatfs_write_sector>:
    18fc:	03852783          	lw	a5,56(a0)
    1900:	0a078863          	beqz	a5,19b0 <fatfs_write_sector+0xb4>
    1904:	fe010113          	add	sp,sp,-32
    1908:	01212823          	sw	s2,16(sp)
    190c:	00068913          	mv	s2,a3
    1910:	03052683          	lw	a3,48(a0)
    1914:	00812c23          	sw	s0,24(sp)
    1918:	00912a23          	sw	s1,20(sp)
    191c:	00112e23          	sw	ra,28(sp)
    1920:	00d5e733          	or	a4,a1,a3
    1924:	00050413          	mv	s0,a0
    1928:	00060493          	mv	s1,a2
    192c:	04071063          	bnez	a4,196c <fatfs_write_sector+0x70>
    1930:	01052703          	lw	a4,16(a0)
    1934:	06e67063          	bgeu	a2,a4,1994 <fatfs_write_sector+0x98>
    1938:	01c52503          	lw	a0,28(a0)
    193c:	00c42703          	lw	a4,12(s0)
    1940:	00e50533          	add	a0,a0,a4
    1944:	00c50533          	add	a0,a0,a2
    1948:	02090e63          	beqz	s2,1984 <fatfs_write_sector+0x88>
    194c:	00100613          	li	a2,1
    1950:	00090593          	mv	a1,s2
    1954:	01812403          	lw	s0,24(sp)
    1958:	01c12083          	lw	ra,28(sp)
    195c:	01412483          	lw	s1,20(sp)
    1960:	01012903          	lw	s2,16(sp)
    1964:	02010113          	add	sp,sp,32
    1968:	00078067          	jr	a5
    196c:	00f12623          	sw	a5,12(sp)
    1970:	00000097          	auipc	ra,0x0
    1974:	f0c080e7          	jalr	-244(ra) # 187c <fatfs_lba_of_cluster>
    1978:	00c12783          	lw	a5,12(sp)
    197c:	00a48533          	add	a0,s1,a0
    1980:	fc9ff06f          	j	1948 <fatfs_write_sector+0x4c>
    1984:	24a42223          	sw	a0,580(s0)
    1988:	00100613          	li	a2,1
    198c:	04440593          	add	a1,s0,68
    1990:	fc5ff06f          	j	1954 <fatfs_write_sector+0x58>
    1994:	01c12083          	lw	ra,28(sp)
    1998:	01812403          	lw	s0,24(sp)
    199c:	01412483          	lw	s1,20(sp)
    19a0:	01012903          	lw	s2,16(sp)
    19a4:	00000513          	li	a0,0
    19a8:	02010113          	add	sp,sp,32
    19ac:	00008067          	ret
    19b0:	00000513          	li	a0,0
    19b4:	00008067          	ret

000019b8 <fl_init>:
    19b8:	ff010113          	add	sp,sp,-16
    19bc:	00812423          	sw	s0,8(sp)
    19c0:	00006437          	lui	s0,0x6
    19c4:	00112623          	sw	ra,12(sp)
    19c8:	11440793          	add	a5,s0,276 # 6114 <_free_file_list>
    19cc:	0007a223          	sw	zero,4(a5)
    19d0:	0007a023          	sw	zero,0(a5)
    19d4:	0000b5b7          	lui	a1,0xb
    19d8:	000067b7          	lui	a5,0x6
    19dc:	11c78793          	add	a5,a5,284 # 611c <_open_file_list>
    19e0:	11440513          	add	a0,s0,276
    19e4:	a2c58593          	add	a1,a1,-1492 # aa2c <_files+0x43c>
    19e8:	0007a223          	sw	zero,4(a5)
    19ec:	0007a023          	sw	zero,0(a5)
    19f0:	00000097          	auipc	ra,0x0
    19f4:	b30080e7          	jalr	-1232(ra) # 1520 <fat_list_insert_last>
    19f8:	0000b5b7          	lui	a1,0xb
    19fc:	11440513          	add	a0,s0,276
    1a00:	e7058593          	add	a1,a1,-400 # ae70 <_files+0x880>
    1a04:	00000097          	auipc	ra,0x0
    1a08:	b1c080e7          	jalr	-1252(ra) # 1520 <fat_list_insert_last>
    1a0c:	00c12083          	lw	ra,12(sp)
    1a10:	00812403          	lw	s0,8(sp)
    1a14:	000067b7          	lui	a5,0x6
    1a18:	00100713          	li	a4,1
    1a1c:	12e7a423          	sw	a4,296(a5) # 6128 <_filelib_init>
    1a20:	01010113          	add	sp,sp,16
    1a24:	00008067          	ret

00001a28 <fl_closedir>:
    1a28:	00000513          	li	a0,0
    1a2c:	00008067          	ret

00001a30 <fatfs_lfn_cache_entry>:
    1a30:	0005c783          	lbu	a5,0(a1)
    1a34:	01300693          	li	a3,19
    1a38:	01f7f793          	and	a5,a5,31
    1a3c:	fff78713          	add	a4,a5,-1
    1a40:	0ff77613          	zext.b	a2,a4
    1a44:	0ac6ea63          	bltu	a3,a2,1af8 <fatfs_lfn_cache_entry+0xc8>
    1a48:	10554683          	lbu	a3,261(a0)
    1a4c:	00069463          	bnez	a3,1a54 <fatfs_lfn_cache_entry+0x24>
    1a50:	10f502a3          	sb	a5,261(a0)
    1a54:	00171793          	sll	a5,a4,0x1
    1a58:	00e787b3          	add	a5,a5,a4
    1a5c:	0015c683          	lbu	a3,1(a1)
    1a60:	00279793          	sll	a5,a5,0x2
    1a64:	00e787b3          	add	a5,a5,a4
    1a68:	00f50533          	add	a0,a0,a5
    1a6c:	00d50023          	sb	a3,0(a0)
    1a70:	0035c783          	lbu	a5,3(a1)
    1a74:	0ff00713          	li	a4,255
    1a78:	02000693          	li	a3,32
    1a7c:	00f500a3          	sb	a5,1(a0)
    1a80:	0055c783          	lbu	a5,5(a1)
    1a84:	00f50123          	sb	a5,2(a0)
    1a88:	0075c783          	lbu	a5,7(a1)
    1a8c:	00f501a3          	sb	a5,3(a0)
    1a90:	0095c783          	lbu	a5,9(a1)
    1a94:	00f50223          	sb	a5,4(a0)
    1a98:	00e5c783          	lbu	a5,14(a1)
    1a9c:	00f502a3          	sb	a5,5(a0)
    1aa0:	0105c783          	lbu	a5,16(a1)
    1aa4:	00f50323          	sb	a5,6(a0)
    1aa8:	0125c783          	lbu	a5,18(a1)
    1aac:	00f503a3          	sb	a5,7(a0)
    1ab0:	0145c783          	lbu	a5,20(a1)
    1ab4:	00f50423          	sb	a5,8(a0)
    1ab8:	0165c783          	lbu	a5,22(a1)
    1abc:	00f504a3          	sb	a5,9(a0)
    1ac0:	0185c783          	lbu	a5,24(a1)
    1ac4:	00f50523          	sb	a5,10(a0)
    1ac8:	01c5c783          	lbu	a5,28(a1)
    1acc:	00f505a3          	sb	a5,11(a0)
    1ad0:	01e5c783          	lbu	a5,30(a1)
    1ad4:	00f50623          	sb	a5,12(a0)
    1ad8:	00d00793          	li	a5,13
    1adc:	00054603          	lbu	a2,0(a0)
    1ae0:	00e61463          	bne	a2,a4,1ae8 <fatfs_lfn_cache_entry+0xb8>
    1ae4:	00d50023          	sb	a3,0(a0)
    1ae8:	fff78793          	add	a5,a5,-1
    1aec:	0ff7f793          	zext.b	a5,a5
    1af0:	00150513          	add	a0,a0,1
    1af4:	fe0794e3          	bnez	a5,1adc <fatfs_lfn_cache_entry+0xac>
    1af8:	00008067          	ret

00001afc <fatfs_lfn_cache_get>:
    1afc:	10554703          	lbu	a4,261(a0)
    1b00:	01400793          	li	a5,20
    1b04:	00f71663          	bne	a4,a5,1b10 <fatfs_lfn_cache_get+0x14>
    1b08:	10050223          	sb	zero,260(a0)
    1b0c:	00008067          	ret
    1b10:	02070063          	beqz	a4,1b30 <fatfs_lfn_cache_get+0x34>
    1b14:	00171793          	sll	a5,a4,0x1
    1b18:	00e787b3          	add	a5,a5,a4
    1b1c:	00279793          	sll	a5,a5,0x2
    1b20:	00e787b3          	add	a5,a5,a4
    1b24:	00f507b3          	add	a5,a0,a5
    1b28:	00078023          	sb	zero,0(a5)
    1b2c:	00008067          	ret
    1b30:	00050023          	sb	zero,0(a0)
    1b34:	00008067          	ret

00001b38 <fatfs_entry_lfn_text>:
    1b38:	00b54503          	lbu	a0,11(a0)
    1b3c:	00f57513          	and	a0,a0,15
    1b40:	ff150513          	add	a0,a0,-15
    1b44:	00153513          	seqz	a0,a0
    1b48:	00008067          	ret

00001b4c <fatfs_entry_lfn_invalid>:
    1b4c:	00054703          	lbu	a4,0(a0)
    1b50:	00050793          	mv	a5,a0
    1b54:	02070463          	beqz	a4,1b7c <fatfs_entry_lfn_invalid+0x30>
    1b58:	0e500693          	li	a3,229
    1b5c:	00100513          	li	a0,1
    1b60:	02d70063          	beq	a4,a3,1b80 <fatfs_entry_lfn_invalid+0x34>
    1b64:	00b7c783          	lbu	a5,11(a5)
    1b68:	00800713          	li	a4,8
    1b6c:	00e78a63          	beq	a5,a4,1b80 <fatfs_entry_lfn_invalid+0x34>
    1b70:	0067f793          	and	a5,a5,6
    1b74:	00f03533          	snez	a0,a5
    1b78:	00008067          	ret
    1b7c:	00100513          	li	a0,1
    1b80:	00008067          	ret

00001b84 <fatfs_entry_lfn_exists>:
    1b84:	00b5c783          	lbu	a5,11(a1)
    1b88:	00f00693          	li	a3,15
    1b8c:	00050713          	mv	a4,a0
    1b90:	02d78a63          	beq	a5,a3,1bc4 <fatfs_entry_lfn_exists+0x40>
    1b94:	0005c683          	lbu	a3,0(a1)
    1b98:	00000513          	li	a0,0
    1b9c:	02068663          	beqz	a3,1bc8 <fatfs_entry_lfn_exists+0x44>
    1ba0:	0e500613          	li	a2,229
    1ba4:	02c68263          	beq	a3,a2,1bc8 <fatfs_entry_lfn_exists+0x44>
    1ba8:	00800693          	li	a3,8
    1bac:	00d78e63          	beq	a5,a3,1bc8 <fatfs_entry_lfn_exists+0x44>
    1bb0:	0067f793          	and	a5,a5,6
    1bb4:	00079a63          	bnez	a5,1bc8 <fatfs_entry_lfn_exists+0x44>
    1bb8:	10574503          	lbu	a0,261(a4)
    1bbc:	00a03533          	snez	a0,a0
    1bc0:	00008067          	ret
    1bc4:	00000513          	li	a0,0
    1bc8:	00008067          	ret

00001bcc <fatfs_entry_sfn_only>:
    1bcc:	00b54783          	lbu	a5,11(a0)
    1bd0:	00f00713          	li	a4,15
    1bd4:	02e78663          	beq	a5,a4,1c00 <fatfs_entry_sfn_only+0x34>
    1bd8:	00054703          	lbu	a4,0(a0)
    1bdc:	00000513          	li	a0,0
    1be0:	02070263          	beqz	a4,1c04 <fatfs_entry_sfn_only+0x38>
    1be4:	0e500693          	li	a3,229
    1be8:	00d70e63          	beq	a4,a3,1c04 <fatfs_entry_sfn_only+0x38>
    1bec:	00800713          	li	a4,8
    1bf0:	00e78a63          	beq	a5,a4,1c04 <fatfs_entry_sfn_only+0x38>
    1bf4:	0067f793          	and	a5,a5,6
    1bf8:	0017b513          	seqz	a0,a5
    1bfc:	00008067          	ret
    1c00:	00000513          	li	a0,0
    1c04:	00008067          	ret

00001c08 <fatfs_entry_is_dir>:
    1c08:	00b54503          	lbu	a0,11(a0)
    1c0c:	00455513          	srl	a0,a0,0x4
    1c10:	00157513          	and	a0,a0,1
    1c14:	00008067          	ret

00001c18 <fatfs_entry_is_file>:
    1c18:	00b54503          	lbu	a0,11(a0)
    1c1c:	00555513          	srl	a0,a0,0x5
    1c20:	00157513          	and	a0,a0,1
    1c24:	00008067          	ret

00001c28 <fatfs_lfn_entries_required>:
    1c28:	ff010113          	add	sp,sp,-16
    1c2c:	00112623          	sw	ra,12(sp)
    1c30:	fffff097          	auipc	ra,0xfffff
    1c34:	16c080e7          	jalr	364(ra) # d9c <strlen>
    1c38:	00050a63          	beqz	a0,1c4c <fatfs_lfn_entries_required+0x24>
    1c3c:	00d00593          	li	a1,13
    1c40:	00c50513          	add	a0,a0,12
    1c44:	fffff097          	auipc	ra,0xfffff
    1c48:	064080e7          	jalr	100(ra) # ca8 <__divsi3>
    1c4c:	00c12083          	lw	ra,12(sp)
    1c50:	01010113          	add	sp,sp,16
    1c54:	00008067          	ret

00001c58 <fatfs_filename_to_lfn>:
    1c58:	fa010113          	add	sp,sp,-96
    1c5c:	04912a23          	sw	s1,84(sp)
    1c60:	00058493          	mv	s1,a1
    1c64:	000065b7          	lui	a1,0x6
    1c68:	e7858593          	add	a1,a1,-392 # 5e78 <font+0x1f4>
    1c6c:	05212823          	sw	s2,80(sp)
    1c70:	05312623          	sw	s3,76(sp)
    1c74:	00060913          	mv	s2,a2
    1c78:	00050993          	mv	s3,a0
    1c7c:	03400613          	li	a2,52
    1c80:	00c10513          	add	a0,sp,12
    1c84:	04112e23          	sw	ra,92(sp)
    1c88:	04812c23          	sw	s0,88(sp)
    1c8c:	05412423          	sw	s4,72(sp)
    1c90:	05512223          	sw	s5,68(sp)
    1c94:	05612023          	sw	s6,64(sp)
    1c98:	00068b13          	mv	s6,a3
    1c9c:	fffff097          	auipc	ra,0xfffff
    1ca0:	0dc080e7          	jalr	220(ra) # d78 <memcpy>
    1ca4:	00098513          	mv	a0,s3
    1ca8:	fffff097          	auipc	ra,0xfffff
    1cac:	0f4080e7          	jalr	244(ra) # d9c <strlen>
    1cb0:	00050a93          	mv	s5,a0
    1cb4:	00098513          	mv	a0,s3
    1cb8:	00000097          	auipc	ra,0x0
    1cbc:	f70080e7          	jalr	-144(ra) # 1c28 <fatfs_lfn_entries_required>
    1cc0:	00191793          	sll	a5,s2,0x1
    1cc4:	012787b3          	add	a5,a5,s2
    1cc8:	00279793          	sll	a5,a5,0x2
    1ccc:	00050a13          	mv	s4,a0
    1cd0:	02000613          	li	a2,32
    1cd4:	00000593          	li	a1,0
    1cd8:	00048513          	mv	a0,s1
    1cdc:	01278433          	add	s0,a5,s2
    1ce0:	fffff097          	auipc	ra,0xfffff
    1ce4:	07c080e7          	jalr	124(ra) # d5c <memset>
    1ce8:	00190793          	add	a5,s2,1
    1cec:	fffa0a13          	add	s4,s4,-1 # 3fff <fl_fread+0x137>
    1cf0:	0ff7f793          	zext.b	a5,a5
    1cf4:	012a1463          	bne	s4,s2,1cfc <fatfs_filename_to_lfn+0xa4>
    1cf8:	0407e793          	or	a5,a5,64
    1cfc:	00f48023          	sb	a5,0(s1)
    1d00:	00f00793          	li	a5,15
    1d04:	00f485a3          	sb	a5,11(s1)
    1d08:	016486a3          	sb	s6,13(s1)
    1d0c:	00c10713          	add	a4,sp,12
    1d10:	00040793          	mv	a5,s0
    1d14:	00d40593          	add	a1,s0,13
    1d18:	fff00613          	li	a2,-1
    1d1c:	00072683          	lw	a3,0(a4)
    1d20:	00d486b3          	add	a3,s1,a3
    1d24:	0557d263          	bge	a5,s5,1d68 <fatfs_filename_to_lfn+0x110>
    1d28:	00f98533          	add	a0,s3,a5
    1d2c:	00054503          	lbu	a0,0(a0)
    1d30:	00a68023          	sb	a0,0(a3)
    1d34:	00178793          	add	a5,a5,1
    1d38:	00470713          	add	a4,a4,4
    1d3c:	feb790e3          	bne	a5,a1,1d1c <fatfs_filename_to_lfn+0xc4>
    1d40:	05c12083          	lw	ra,92(sp)
    1d44:	05812403          	lw	s0,88(sp)
    1d48:	05412483          	lw	s1,84(sp)
    1d4c:	05012903          	lw	s2,80(sp)
    1d50:	04c12983          	lw	s3,76(sp)
    1d54:	04812a03          	lw	s4,72(sp)
    1d58:	04412a83          	lw	s5,68(sp)
    1d5c:	04012b03          	lw	s6,64(sp)
    1d60:	06010113          	add	sp,sp,96
    1d64:	00008067          	ret
    1d68:	00fa9663          	bne	s5,a5,1d74 <fatfs_filename_to_lfn+0x11c>
    1d6c:	00068023          	sb	zero,0(a3)
    1d70:	fc5ff06f          	j	1d34 <fatfs_filename_to_lfn+0xdc>
    1d74:	00c68023          	sb	a2,0(a3)
    1d78:	00c680a3          	sb	a2,1(a3)
    1d7c:	fb9ff06f          	j	1d34 <fatfs_filename_to_lfn+0xdc>

00001d80 <fatfs_sfn_create_entry>:
    1d80:	00000793          	li	a5,0
    1d84:	00b00813          	li	a6,11
    1d88:	00f508b3          	add	a7,a0,a5
    1d8c:	0008c303          	lbu	t1,0(a7)
    1d90:	00f688b3          	add	a7,a3,a5
    1d94:	00178793          	add	a5,a5,1
    1d98:	00688023          	sb	t1,0(a7)
    1d9c:	ff0796e3          	bne	a5,a6,1d88 <fatfs_sfn_create_entry+0x8>
    1da0:	02000793          	li	a5,32
    1da4:	00f68823          	sb	a5,16(a3)
    1da8:	00f68923          	sb	a5,18(a3)
    1dac:	00f68c23          	sb	a5,24(a3)
    1db0:	000686a3          	sb	zero,13(a3)
    1db4:	00068723          	sb	zero,14(a3)
    1db8:	000687a3          	sb	zero,15(a3)
    1dbc:	000688a3          	sb	zero,17(a3)
    1dc0:	000689a3          	sb	zero,19(a3)
    1dc4:	00068b23          	sb	zero,22(a3)
    1dc8:	00068ba3          	sb	zero,23(a3)
    1dcc:	00068ca3          	sb	zero,25(a3)
    1dd0:	01000793          	li	a5,16
    1dd4:	00071463          	bnez	a4,1ddc <fatfs_sfn_create_entry+0x5c>
    1dd8:	02000793          	li	a5,32
    1ddc:	00f685a3          	sb	a5,11(a3)
    1de0:	01065793          	srl	a5,a2,0x10
    1de4:	00f68a23          	sb	a5,20(a3)
    1de8:	0087d793          	srl	a5,a5,0x8
    1dec:	00f68aa3          	sb	a5,21(a3)
    1df0:	01061793          	sll	a5,a2,0x10
    1df4:	0107d793          	srl	a5,a5,0x10
    1df8:	0087d793          	srl	a5,a5,0x8
    1dfc:	00f68da3          	sb	a5,27(a3)
    1e00:	0085d793          	srl	a5,a1,0x8
    1e04:	00b68e23          	sb	a1,28(a3)
    1e08:	00f68ea3          	sb	a5,29(a3)
    1e0c:	0105d793          	srl	a5,a1,0x10
    1e10:	0185d593          	srl	a1,a1,0x18
    1e14:	00068623          	sb	zero,12(a3)
    1e18:	00c68d23          	sb	a2,26(a3)
    1e1c:	00f68f23          	sb	a5,30(a3)
    1e20:	00b68fa3          	sb	a1,31(a3)
    1e24:	00008067          	ret

00001e28 <fatfs_lfn_create_sfn>:
    1e28:	0005c703          	lbu	a4,0(a1)
    1e2c:	02e00793          	li	a5,46
    1e30:	16f70663          	beq	a4,a5,1f9c <fatfs_lfn_create_sfn+0x174>
    1e34:	fe010113          	add	sp,sp,-32
    1e38:	00912a23          	sw	s1,20(sp)
    1e3c:	00050493          	mv	s1,a0
    1e40:	00058513          	mv	a0,a1
    1e44:	00112e23          	sw	ra,28(sp)
    1e48:	00812c23          	sw	s0,24(sp)
    1e4c:	01212823          	sw	s2,16(sp)
    1e50:	00058413          	mv	s0,a1
    1e54:	fffff097          	auipc	ra,0xfffff
    1e58:	f48080e7          	jalr	-184(ra) # d9c <strlen>
    1e5c:	00b00613          	li	a2,11
    1e60:	02000593          	li	a1,32
    1e64:	00050913          	mv	s2,a0
    1e68:	00048513          	mv	a0,s1
    1e6c:	fffff097          	auipc	ra,0xfffff
    1e70:	ef0080e7          	jalr	-272(ra) # d5c <memset>
    1e74:	00300613          	li	a2,3
    1e78:	02000593          	li	a1,32
    1e7c:	00c10513          	add	a0,sp,12
    1e80:	fffff097          	auipc	ra,0xfffff
    1e84:	edc080e7          	jalr	-292(ra) # d5c <memset>
    1e88:	fff00713          	li	a4,-1
    1e8c:	00000793          	li	a5,0
    1e90:	02e00693          	li	a3,46
    1e94:	0d27c263          	blt	a5,s2,1f58 <fatfs_lfn_create_sfn+0x130>
    1e98:	fff00793          	li	a5,-1
    1e9c:	0ef70863          	beq	a4,a5,1f8c <fatfs_lfn_create_sfn+0x164>
    1ea0:	00170793          	add	a5,a4,1
    1ea4:	00c10693          	add	a3,sp,12
    1ea8:	00470613          	add	a2,a4,4
    1eac:	0cf61263          	bne	a2,a5,1f70 <fatfs_lfn_create_sfn+0x148>
    1eb0:	00000613          	li	a2,0
    1eb4:	00000693          	li	a3,0
    1eb8:	02000513          	li	a0,32
    1ebc:	02e00813          	li	a6,46
    1ec0:	01900893          	li	a7,25
    1ec4:	00800313          	li	t1,8
    1ec8:	02e6dc63          	bge	a3,a4,1f00 <fatfs_lfn_create_sfn+0xd8>
    1ecc:	00d407b3          	add	a5,s0,a3
    1ed0:	0007c783          	lbu	a5,0(a5)
    1ed4:	0ca78063          	beq	a5,a0,1f94 <fatfs_lfn_create_sfn+0x16c>
    1ed8:	0b078e63          	beq	a5,a6,1f94 <fatfs_lfn_create_sfn+0x16c>
    1edc:	f9f78593          	add	a1,a5,-97
    1ee0:	0ff5f593          	zext.b	a1,a1
    1ee4:	00c48e33          	add	t3,s1,a2
    1ee8:	00160613          	add	a2,a2,1
    1eec:	00b8e663          	bltu	a7,a1,1ef8 <fatfs_lfn_create_sfn+0xd0>
    1ef0:	fe078793          	add	a5,a5,-32
    1ef4:	0ff7f793          	zext.b	a5,a5
    1ef8:	00fe0023          	sb	a5,0(t3)
    1efc:	08661c63          	bne	a2,t1,1f94 <fatfs_lfn_create_sfn+0x16c>
    1f00:	00c10793          	add	a5,sp,12
    1f04:	00800693          	li	a3,8
    1f08:	01900513          	li	a0,25
    1f0c:	00b00593          	li	a1,11
    1f10:	0007c703          	lbu	a4,0(a5)
    1f14:	f9f70613          	add	a2,a4,-97
    1f18:	0ff67613          	zext.b	a2,a2
    1f1c:	00c56663          	bltu	a0,a2,1f28 <fatfs_lfn_create_sfn+0x100>
    1f20:	fe070713          	add	a4,a4,-32
    1f24:	0ff77713          	zext.b	a4,a4
    1f28:	00d48633          	add	a2,s1,a3
    1f2c:	00e60023          	sb	a4,0(a2)
    1f30:	00168693          	add	a3,a3,1
    1f34:	00178793          	add	a5,a5,1
    1f38:	fcb69ce3          	bne	a3,a1,1f10 <fatfs_lfn_create_sfn+0xe8>
    1f3c:	01c12083          	lw	ra,28(sp)
    1f40:	01812403          	lw	s0,24(sp)
    1f44:	01412483          	lw	s1,20(sp)
    1f48:	01012903          	lw	s2,16(sp)
    1f4c:	00100513          	li	a0,1
    1f50:	02010113          	add	sp,sp,32
    1f54:	00008067          	ret
    1f58:	00f40633          	add	a2,s0,a5
    1f5c:	00064603          	lbu	a2,0(a2)
    1f60:	00d61463          	bne	a2,a3,1f68 <fatfs_lfn_create_sfn+0x140>
    1f64:	00078713          	mv	a4,a5
    1f68:	00178793          	add	a5,a5,1
    1f6c:	f29ff06f          	j	1e94 <fatfs_lfn_create_sfn+0x6c>
    1f70:	0127d863          	bge	a5,s2,1f80 <fatfs_lfn_create_sfn+0x158>
    1f74:	00f405b3          	add	a1,s0,a5
    1f78:	0005c583          	lbu	a1,0(a1)
    1f7c:	00b68023          	sb	a1,0(a3)
    1f80:	00178793          	add	a5,a5,1
    1f84:	00168693          	add	a3,a3,1
    1f88:	f25ff06f          	j	1eac <fatfs_lfn_create_sfn+0x84>
    1f8c:	00090713          	mv	a4,s2
    1f90:	f21ff06f          	j	1eb0 <fatfs_lfn_create_sfn+0x88>
    1f94:	00168693          	add	a3,a3,1
    1f98:	f31ff06f          	j	1ec8 <fatfs_lfn_create_sfn+0xa0>
    1f9c:	00000513          	li	a0,0
    1fa0:	00008067          	ret

00001fa4 <fatfs_lfn_generate_tail>:
    1fa4:	000187b7          	lui	a5,0x18
    1fa8:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1fac:	16c7e463          	bltu	a5,a2,2114 <fatfs_lfn_generate_tail+0x170>
    1fb0:	fa010113          	add	sp,sp,-96
    1fb4:	04812c23          	sw	s0,88(sp)
    1fb8:	04912a23          	sw	s1,84(sp)
    1fbc:	05412423          	sw	s4,72(sp)
    1fc0:	00050493          	mv	s1,a0
    1fc4:	00058a13          	mv	s4,a1
    1fc8:	00060413          	mv	s0,a2
    1fcc:	00000593          	li	a1,0
    1fd0:	00c00613          	li	a2,12
    1fd4:	00410513          	add	a0,sp,4
    1fd8:	04112e23          	sw	ra,92(sp)
    1fdc:	05312623          	sw	s3,76(sp)
    1fe0:	05512223          	sw	s5,68(sp)
    1fe4:	03712e23          	sw	s7,60(sp)
    1fe8:	05212823          	sw	s2,80(sp)
    1fec:	05612023          	sw	s6,64(sp)
    1ff0:	fffff097          	auipc	ra,0xfffff
    1ff4:	d6c080e7          	jalr	-660(ra) # d5c <memset>
    1ff8:	000065b7          	lui	a1,0x6
    1ffc:	07e00793          	li	a5,126
    2000:	01100613          	li	a2,17
    2004:	e6458593          	add	a1,a1,-412 # 5e64 <font+0x1e0>
    2008:	01c10513          	add	a0,sp,28
    200c:	01010993          	add	s3,sp,16
    2010:	00f10223          	sb	a5,4(sp)
    2014:	00098a93          	mv	s5,s3
    2018:	fffff097          	auipc	ra,0xfffff
    201c:	d60080e7          	jalr	-672(ra) # d78 <memcpy>
    2020:	00900b93          	li	s7,9
    2024:	00a00593          	li	a1,10
    2028:	00040513          	mv	a0,s0
    202c:	fffff097          	auipc	ra,0xfffff
    2030:	ccc080e7          	jalr	-820(ra) # cf8 <__umodsi3>
    2034:	03050793          	add	a5,a0,48
    2038:	00278533          	add	a0,a5,sp
    203c:	fec54783          	lbu	a5,-20(a0)
    2040:	00098913          	mv	s2,s3
    2044:	00040513          	mv	a0,s0
    2048:	00a00593          	li	a1,10
    204c:	00f98023          	sb	a5,0(s3)
    2050:	00040b13          	mv	s6,s0
    2054:	fffff097          	auipc	ra,0xfffff
    2058:	c5c080e7          	jalr	-932(ra) # cb0 <__udivsi3>
    205c:	00198993          	add	s3,s3,1
    2060:	00050413          	mv	s0,a0
    2064:	fd6be0e3          	bltu	s7,s6,2024 <fatfs_lfn_generate_tail+0x80>
    2068:	00098023          	sb	zero,0(s3)
    206c:	00410713          	add	a4,sp,4
    2070:	00090793          	mv	a5,s2
    2074:	00170713          	add	a4,a4,1
    2078:	0957f663          	bgeu	a5,s5,2104 <fatfs_lfn_generate_tail+0x160>
    207c:	00f10713          	add	a4,sp,15
    2080:	00000793          	li	a5,0
    2084:	00e96663          	bltu	s2,a4,2090 <fatfs_lfn_generate_tail+0xec>
    2088:	41590933          	sub	s2,s2,s5
    208c:	00190793          	add	a5,s2,1
    2090:	03078793          	add	a5,a5,48
    2094:	002787b3          	add	a5,a5,sp
    2098:	000a0593          	mv	a1,s4
    209c:	fc078aa3          	sb	zero,-43(a5)
    20a0:	00b00613          	li	a2,11
    20a4:	00048513          	mv	a0,s1
    20a8:	fffff097          	auipc	ra,0xfffff
    20ac:	cd0080e7          	jalr	-816(ra) # d78 <memcpy>
    20b0:	00410513          	add	a0,sp,4
    20b4:	fffff097          	auipc	ra,0xfffff
    20b8:	ce8080e7          	jalr	-792(ra) # d9c <strlen>
    20bc:	40a484b3          	sub	s1,s1,a0
    20c0:	00050613          	mv	a2,a0
    20c4:	00410593          	add	a1,sp,4
    20c8:	00848513          	add	a0,s1,8
    20cc:	fffff097          	auipc	ra,0xfffff
    20d0:	cac080e7          	jalr	-852(ra) # d78 <memcpy>
    20d4:	05c12083          	lw	ra,92(sp)
    20d8:	05812403          	lw	s0,88(sp)
    20dc:	05412483          	lw	s1,84(sp)
    20e0:	05012903          	lw	s2,80(sp)
    20e4:	04c12983          	lw	s3,76(sp)
    20e8:	04812a03          	lw	s4,72(sp)
    20ec:	04412a83          	lw	s5,68(sp)
    20f0:	04012b03          	lw	s6,64(sp)
    20f4:	03c12b83          	lw	s7,60(sp)
    20f8:	00100513          	li	a0,1
    20fc:	06010113          	add	sp,sp,96
    2100:	00008067          	ret
    2104:	0007c683          	lbu	a3,0(a5)
    2108:	fff78793          	add	a5,a5,-1
    210c:	00d70023          	sb	a3,0(a4)
    2110:	f65ff06f          	j	2074 <fatfs_lfn_generate_tail+0xd0>
    2114:	00000513          	li	a0,0
    2118:	00008067          	ret

0000211c <fatfs_total_path_levels>:
    211c:	00050793          	mv	a5,a0
    2120:	06050463          	beqz	a0,2188 <fatfs_total_path_levels+0x6c>
    2124:	00054703          	lbu	a4,0(a0)
    2128:	02f00693          	li	a3,47
    212c:	00d71863          	bne	a4,a3,213c <fatfs_total_path_levels+0x20>
    2130:	00150793          	add	a5,a0,1
    2134:	00000513          	li	a0,0
    2138:	0400006f          	j	2178 <fatfs_total_path_levels+0x5c>
    213c:	00154683          	lbu	a3,1(a0)
    2140:	03a00713          	li	a4,58
    2144:	00e68a63          	beq	a3,a4,2158 <fatfs_total_path_levels+0x3c>
    2148:	00254683          	lbu	a3,2(a0)
    214c:	05c00713          	li	a4,92
    2150:	fff00513          	li	a0,-1
    2154:	02e69c63          	bne	a3,a4,218c <fatfs_total_path_levels+0x70>
    2158:	00378793          	add	a5,a5,3
    215c:	05c00713          	li	a4,92
    2160:	fd5ff06f          	j	2134 <fatfs_total_path_levels+0x18>
    2164:	00178793          	add	a5,a5,1
    2168:	00e68663          	beq	a3,a4,2174 <fatfs_total_path_levels+0x58>
    216c:	0007c683          	lbu	a3,0(a5)
    2170:	fe069ae3          	bnez	a3,2164 <fatfs_total_path_levels+0x48>
    2174:	00150513          	add	a0,a0,1
    2178:	0007c683          	lbu	a3,0(a5)
    217c:	fe0698e3          	bnez	a3,216c <fatfs_total_path_levels+0x50>
    2180:	fff50513          	add	a0,a0,-1
    2184:	00008067          	ret
    2188:	fff00513          	li	a0,-1
    218c:	00008067          	ret

00002190 <fatfs_get_substring>:
    2190:	0e050663          	beqz	a0,227c <fatfs_get_substring+0xec>
    2194:	fe010113          	add	sp,sp,-32
    2198:	00912a23          	sw	s1,20(sp)
    219c:	00112e23          	sw	ra,28(sp)
    21a0:	00812c23          	sw	s0,24(sp)
    21a4:	01212823          	sw	s2,16(sp)
    21a8:	01312623          	sw	s3,12(sp)
    21ac:	01412423          	sw	s4,8(sp)
    21b0:	00050793          	mv	a5,a0
    21b4:	00068493          	mv	s1,a3
    21b8:	fff00513          	li	a0,-1
    21bc:	06d05a63          	blez	a3,2230 <fatfs_get_substring+0xa0>
    21c0:	0007c983          	lbu	s3,0(a5)
    21c4:	02f00713          	li	a4,47
    21c8:	00058a13          	mv	s4,a1
    21cc:	00060913          	mv	s2,a2
    21d0:	00178413          	add	s0,a5,1
    21d4:	02e98463          	beq	s3,a4,21fc <fatfs_get_substring+0x6c>
    21d8:	0017c683          	lbu	a3,1(a5)
    21dc:	03a00713          	li	a4,58
    21e0:	00e68a63          	beq	a3,a4,21f4 <fatfs_get_substring+0x64>
    21e4:	0027c683          	lbu	a3,2(a5)
    21e8:	05c00713          	li	a4,92
    21ec:	fff00513          	li	a0,-1
    21f0:	04e69063          	bne	a3,a4,2230 <fatfs_get_substring+0xa0>
    21f4:	00378413          	add	s0,a5,3
    21f8:	05c00993          	li	s3,92
    21fc:	00040513          	mv	a0,s0
    2200:	fffff097          	auipc	ra,0xfffff
    2204:	b9c080e7          	jalr	-1124(ra) # d9c <strlen>
    2208:	00000713          	li	a4,0
    220c:	00000693          	li	a3,0
    2210:	00000793          	li	a5,0
    2214:	fff48493          	add	s1,s1,-1
    2218:	00e90633          	add	a2,s2,a4
    221c:	02a7ca63          	blt	a5,a0,2250 <fatfs_get_substring+0xc0>
    2220:	00060023          	sb	zero,0(a2)
    2224:	00094503          	lbu	a0,0(s2)
    2228:	00153513          	seqz	a0,a0
    222c:	40a00533          	neg	a0,a0
    2230:	01c12083          	lw	ra,28(sp)
    2234:	01812403          	lw	s0,24(sp)
    2238:	01412483          	lw	s1,20(sp)
    223c:	01012903          	lw	s2,16(sp)
    2240:	00c12983          	lw	s3,12(sp)
    2244:	00812a03          	lw	s4,8(sp)
    2248:	02010113          	add	sp,sp,32
    224c:	00008067          	ret
    2250:	00f405b3          	add	a1,s0,a5
    2254:	0005c583          	lbu	a1,0(a1)
    2258:	01358c63          	beq	a1,s3,2270 <fatfs_get_substring+0xe0>
    225c:	01469c63          	bne	a3,s4,2274 <fatfs_get_substring+0xe4>
    2260:	00975a63          	bge	a4,s1,2274 <fatfs_get_substring+0xe4>
    2264:	00170713          	add	a4,a4,1
    2268:	00b60023          	sb	a1,0(a2)
    226c:	0080006f          	j	2274 <fatfs_get_substring+0xe4>
    2270:	00168693          	add	a3,a3,1
    2274:	00178793          	add	a5,a5,1
    2278:	fa1ff06f          	j	2218 <fatfs_get_substring+0x88>
    227c:	fff00513          	li	a0,-1
    2280:	00008067          	ret

00002284 <fatfs_split_path>:
    2284:	fd010113          	add	sp,sp,-48
    2288:	02912223          	sw	s1,36(sp)
    228c:	01312e23          	sw	s3,28(sp)
    2290:	01412c23          	sw	s4,24(sp)
    2294:	01512a23          	sw	s5,20(sp)
    2298:	02112623          	sw	ra,44(sp)
    229c:	00068a93          	mv	s5,a3
    22a0:	02812423          	sw	s0,40(sp)
    22a4:	03212023          	sw	s2,32(sp)
    22a8:	00050993          	mv	s3,a0
    22ac:	00058493          	mv	s1,a1
    22b0:	00060a13          	mv	s4,a2
    22b4:	00e12623          	sw	a4,12(sp)
    22b8:	00000097          	auipc	ra,0x0
    22bc:	e64080e7          	jalr	-412(ra) # 211c <fatfs_total_path_levels>
    22c0:	fff00793          	li	a5,-1
    22c4:	00c12683          	lw	a3,12(sp)
    22c8:	02f51863          	bne	a0,a5,22f8 <fatfs_split_path+0x74>
    22cc:	fff00913          	li	s2,-1
    22d0:	02c12083          	lw	ra,44(sp)
    22d4:	02812403          	lw	s0,40(sp)
    22d8:	02412483          	lw	s1,36(sp)
    22dc:	01c12983          	lw	s3,28(sp)
    22e0:	01812a03          	lw	s4,24(sp)
    22e4:	01412a83          	lw	s5,20(sp)
    22e8:	00090513          	mv	a0,s2
    22ec:	02012903          	lw	s2,32(sp)
    22f0:	03010113          	add	sp,sp,48
    22f4:	00008067          	ret
    22f8:	00050593          	mv	a1,a0
    22fc:	00050413          	mv	s0,a0
    2300:	000a8613          	mv	a2,s5
    2304:	00098513          	mv	a0,s3
    2308:	00000097          	auipc	ra,0x0
    230c:	e88080e7          	jalr	-376(ra) # 2190 <fatfs_get_substring>
    2310:	00050913          	mv	s2,a0
    2314:	fa051ce3          	bnez	a0,22cc <fatfs_split_path+0x48>
    2318:	00041663          	bnez	s0,2324 <fatfs_split_path+0xa0>
    231c:	00048023          	sb	zero,0(s1)
    2320:	fb1ff06f          	j	22d0 <fatfs_split_path+0x4c>
    2324:	00098513          	mv	a0,s3
    2328:	fffff097          	auipc	ra,0xfffff
    232c:	a74080e7          	jalr	-1420(ra) # d9c <strlen>
    2330:	00050413          	mv	s0,a0
    2334:	000a8513          	mv	a0,s5
    2338:	fffff097          	auipc	ra,0xfffff
    233c:	a64080e7          	jalr	-1436(ra) # d9c <strlen>
    2340:	40a40433          	sub	s0,s0,a0
    2344:	008a5463          	bge	s4,s0,234c <fatfs_split_path+0xc8>
    2348:	000a0413          	mv	s0,s4
    234c:	00048513          	mv	a0,s1
    2350:	00040613          	mv	a2,s0
    2354:	00098593          	mv	a1,s3
    2358:	008484b3          	add	s1,s1,s0
    235c:	fffff097          	auipc	ra,0xfffff
    2360:	a1c080e7          	jalr	-1508(ra) # d78 <memcpy>
    2364:	fe048fa3          	sb	zero,-1(s1)
    2368:	f69ff06f          	j	22d0 <fatfs_split_path+0x4c>

0000236c <fatfs_compare_names>:
    236c:	fd010113          	add	sp,sp,-48
    2370:	02112623          	sw	ra,44(sp)
    2374:	02812423          	sw	s0,40(sp)
    2378:	02912223          	sw	s1,36(sp)
    237c:	03212023          	sw	s2,32(sp)
    2380:	01312e23          	sw	s3,28(sp)
    2384:	00058913          	mv	s2,a1
    2388:	01412c23          	sw	s4,24(sp)
    238c:	01512a23          	sw	s5,20(sp)
    2390:	01612823          	sw	s6,16(sp)
    2394:	00050a13          	mv	s4,a0
    2398:	fffff097          	auipc	ra,0xfffff
    239c:	28c080e7          	jalr	652(ra) # 1624 <FileString_GetExtension>
    23a0:	00050493          	mv	s1,a0
    23a4:	00090513          	mv	a0,s2
    23a8:	fffff097          	auipc	ra,0xfffff
    23ac:	27c080e7          	jalr	636(ra) # 1624 <FileString_GetExtension>
    23b0:	fff00793          	li	a5,-1
    23b4:	00050413          	mv	s0,a0
    23b8:	00000993          	li	s3,0
    23bc:	08f49a63          	bne	s1,a5,2450 <fatfs_compare_names+0xe4>
    23c0:	0c951e63          	bne	a0,s1,249c <fatfs_compare_names+0x130>
    23c4:	000a0513          	mv	a0,s4
    23c8:	fffff097          	auipc	ra,0xfffff
    23cc:	9d4080e7          	jalr	-1580(ra) # d9c <strlen>
    23d0:	00050493          	mv	s1,a0
    23d4:	00090513          	mv	a0,s2
    23d8:	fffff097          	auipc	ra,0xfffff
    23dc:	9c4080e7          	jalr	-1596(ra) # d9c <strlen>
    23e0:	00050413          	mv	s0,a0
    23e4:	fff48793          	add	a5,s1,-1
    23e8:	00fa07b3          	add	a5,s4,a5
    23ec:	40978733          	sub	a4,a5,s1
    23f0:	02000613          	li	a2,32
    23f4:	00078693          	mv	a3,a5
    23f8:	00e78863          	beq	a5,a4,2408 <fatfs_compare_names+0x9c>
    23fc:	0007c583          	lbu	a1,0(a5)
    2400:	fff78793          	add	a5,a5,-1
    2404:	0cc58263          	beq	a1,a2,24c8 <fatfs_compare_names+0x15c>
    2408:	fff40793          	add	a5,s0,-1
    240c:	00f907b3          	add	a5,s2,a5
    2410:	40878733          	sub	a4,a5,s0
    2414:	02000613          	li	a2,32
    2418:	00078693          	mv	a3,a5
    241c:	00e78863          	beq	a5,a4,242c <fatfs_compare_names+0xc0>
    2420:	0007c583          	lbu	a1,0(a5)
    2424:	fff78793          	add	a5,a5,-1
    2428:	0ac58463          	beq	a1,a2,24d0 <fatfs_compare_names+0x164>
    242c:	00000993          	li	s3,0
    2430:	06941663          	bne	s0,s1,249c <fatfs_compare_names+0x130>
    2434:	00040613          	mv	a2,s0
    2438:	00090593          	mv	a1,s2
    243c:	000a0513          	mv	a0,s4
    2440:	fffff097          	auipc	ra,0xfffff
    2444:	14c080e7          	jalr	332(ra) # 158c <FileString_StrCmpNoCase>
    2448:	00153993          	seqz	s3,a0
    244c:	0500006f          	j	249c <fatfs_compare_names+0x130>
    2450:	04f50663          	beq	a0,a5,249c <fatfs_compare_names+0x130>
    2454:	00148a93          	add	s5,s1,1
    2458:	015a0ab3          	add	s5,s4,s5
    245c:	00150b13          	add	s6,a0,1
    2460:	000a8513          	mv	a0,s5
    2464:	fffff097          	auipc	ra,0xfffff
    2468:	938080e7          	jalr	-1736(ra) # d9c <strlen>
    246c:	01690b33          	add	s6,s2,s6
    2470:	00a12623          	sw	a0,12(sp)
    2474:	000b0513          	mv	a0,s6
    2478:	fffff097          	auipc	ra,0xfffff
    247c:	924080e7          	jalr	-1756(ra) # d9c <strlen>
    2480:	00c12603          	lw	a2,12(sp)
    2484:	00a61c63          	bne	a2,a0,249c <fatfs_compare_names+0x130>
    2488:	000b0593          	mv	a1,s6
    248c:	000a8513          	mv	a0,s5
    2490:	fffff097          	auipc	ra,0xfffff
    2494:	0fc080e7          	jalr	252(ra) # 158c <FileString_StrCmpNoCase>
    2498:	f40506e3          	beqz	a0,23e4 <fatfs_compare_names+0x78>
    249c:	02c12083          	lw	ra,44(sp)
    24a0:	02812403          	lw	s0,40(sp)
    24a4:	02412483          	lw	s1,36(sp)
    24a8:	02012903          	lw	s2,32(sp)
    24ac:	01812a03          	lw	s4,24(sp)
    24b0:	01412a83          	lw	s5,20(sp)
    24b4:	01012b03          	lw	s6,16(sp)
    24b8:	00098513          	mv	a0,s3
    24bc:	01c12983          	lw	s3,28(sp)
    24c0:	03010113          	add	sp,sp,48
    24c4:	00008067          	ret
    24c8:	414684b3          	sub	s1,a3,s4
    24cc:	f29ff06f          	j	23f4 <fatfs_compare_names+0x88>
    24d0:	41268433          	sub	s0,a3,s2
    24d4:	f45ff06f          	j	2418 <fatfs_compare_names+0xac>

000024d8 <_check_file_open>:
    24d8:	fe010113          	add	sp,sp,-32
    24dc:	000067b7          	lui	a5,0x6
    24e0:	00812c23          	sw	s0,24(sp)
    24e4:	11c7a403          	lw	s0,284(a5) # 611c <_open_file_list>
    24e8:	00912a23          	sw	s1,20(sp)
    24ec:	01212823          	sw	s2,16(sp)
    24f0:	01312623          	sw	s3,12(sp)
    24f4:	00112e23          	sw	ra,28(sp)
    24f8:	00050493          	mv	s1,a0
    24fc:	01450913          	add	s2,a0,20
    2500:	11850993          	add	s3,a0,280
    2504:	02041263          	bnez	s0,2528 <_check_file_open+0x50>
    2508:	00000513          	li	a0,0
    250c:	01c12083          	lw	ra,28(sp)
    2510:	01812403          	lw	s0,24(sp)
    2514:	01412483          	lw	s1,20(sp)
    2518:	01012903          	lw	s2,16(sp)
    251c:	00c12983          	lw	s3,12(sp)
    2520:	02010113          	add	sp,sp,32
    2524:	00008067          	ret
    2528:	bc440793          	add	a5,s0,-1084
    252c:	02f48663          	beq	s1,a5,2558 <_check_file_open+0x80>
    2530:	00090593          	mv	a1,s2
    2534:	bd840513          	add	a0,s0,-1064
    2538:	00000097          	auipc	ra,0x0
    253c:	e34080e7          	jalr	-460(ra) # 236c <fatfs_compare_names>
    2540:	00050c63          	beqz	a0,2558 <_check_file_open+0x80>
    2544:	00098593          	mv	a1,s3
    2548:	cdc40513          	add	a0,s0,-804
    254c:	00000097          	auipc	ra,0x0
    2550:	e20080e7          	jalr	-480(ra) # 236c <fatfs_compare_names>
    2554:	00051663          	bnez	a0,2560 <_check_file_open+0x88>
    2558:	00442403          	lw	s0,4(s0)
    255c:	fa9ff06f          	j	2504 <_check_file_open+0x2c>
    2560:	00100513          	li	a0,1
    2564:	fa9ff06f          	j	250c <_check_file_open+0x34>

00002568 <fatfs_get_sfn_display_name>:
    2568:	00000713          	li	a4,0
    256c:	00c00613          	li	a2,12
    2570:	02000813          	li	a6,32
    2574:	01900893          	li	a7,25
    2578:	0005c783          	lbu	a5,0(a1)
    257c:	00078463          	beqz	a5,2584 <fatfs_get_sfn_display_name+0x1c>
    2580:	00c71863          	bne	a4,a2,2590 <fatfs_get_sfn_display_name+0x28>
    2584:	00050023          	sb	zero,0(a0)
    2588:	00100513          	li	a0,1
    258c:	00008067          	ret
    2590:	00158593          	add	a1,a1,1
    2594:	ff0782e3          	beq	a5,a6,2578 <fatfs_get_sfn_display_name+0x10>
    2598:	fbf78693          	add	a3,a5,-65
    259c:	0ff6f693          	zext.b	a3,a3
    25a0:	00d8e663          	bltu	a7,a3,25ac <fatfs_get_sfn_display_name+0x44>
    25a4:	02078793          	add	a5,a5,32
    25a8:	0ff7f793          	zext.b	a5,a5
    25ac:	00f50023          	sb	a5,0(a0)
    25b0:	00170713          	add	a4,a4,1
    25b4:	00150513          	add	a0,a0,1
    25b8:	fc1ff06f          	j	2578 <fatfs_get_sfn_display_name+0x10>

000025bc <fatfs_fat_init>:
    25bc:	ff010113          	add	sp,sp,-16
    25c0:	00812423          	sw	s0,8(sp)
    25c4:	00912223          	sw	s1,4(sp)
    25c8:	00112623          	sw	ra,12(sp)
    25cc:	fff00793          	li	a5,-1
    25d0:	25850493          	add	s1,a0,600
    25d4:	00050413          	mv	s0,a0
    25d8:	44f52c23          	sw	a5,1112(a0)
    25dc:	24052a23          	sw	zero,596(a0)
    25e0:	44052e23          	sw	zero,1116(a0)
    25e4:	20000613          	li	a2,512
    25e8:	00048513          	mv	a0,s1
    25ec:	00000593          	li	a1,0
    25f0:	ffffe097          	auipc	ra,0xffffe
    25f4:	76c080e7          	jalr	1900(ra) # d5c <memset>
    25f8:	25442783          	lw	a5,596(s0)
    25fc:	00c12083          	lw	ra,12(sp)
    2600:	24942a23          	sw	s1,596(s0)
    2604:	46042023          	sw	zero,1120(s0)
    2608:	46f42223          	sw	a5,1124(s0)
    260c:	00812403          	lw	s0,8(sp)
    2610:	00412483          	lw	s1,4(sp)
    2614:	01010113          	add	sp,sp,16
    2618:	00008067          	ret

0000261c <fatfs_init>:
    261c:	fd010113          	add	sp,sp,-48
    2620:	02812423          	sw	s0,40(sp)
    2624:	02112623          	sw	ra,44(sp)
    2628:	02912223          	sw	s1,36(sp)
    262c:	03212023          	sw	s2,32(sp)
    2630:	01312e23          	sw	s3,28(sp)
    2634:	fff00793          	li	a5,-1
    2638:	24f52223          	sw	a5,580(a0)
    263c:	24052423          	sw	zero,584(a0)
    2640:	02052223          	sw	zero,36(a0)
    2644:	00050413          	mv	s0,a0
    2648:	00000097          	auipc	ra,0x0
    264c:	f74080e7          	jalr	-140(ra) # 25bc <fatfs_fat_init>
    2650:	03442783          	lw	a5,52(s0)
    2654:	02079263          	bnez	a5,2678 <fatfs_init+0x5c>
    2658:	fff00513          	li	a0,-1
    265c:	02c12083          	lw	ra,44(sp)
    2660:	02812403          	lw	s0,40(sp)
    2664:	02412483          	lw	s1,36(sp)
    2668:	02012903          	lw	s2,32(sp)
    266c:	01c12983          	lw	s3,28(sp)
    2670:	03010113          	add	sp,sp,48
    2674:	00008067          	ret
    2678:	04440593          	add	a1,s0,68
    267c:	00100613          	li	a2,1
    2680:	00000513          	li	a0,0
    2684:	00b12623          	sw	a1,12(sp)
    2688:	000780e7          	jalr	a5
    268c:	fc0506e3          	beqz	a0,2658 <fatfs_init+0x3c>
    2690:	24042703          	lw	a4,576(s0)
    2694:	ffff07b7          	lui	a5,0xffff0
    2698:	00c12583          	lw	a1,12(sp)
    269c:	00e7f7b3          	and	a5,a5,a4
    26a0:	aa550737          	lui	a4,0xaa550
    26a4:	00e78663          	beq	a5,a4,26b0 <fatfs_init+0x94>
    26a8:	ffd00513          	li	a0,-3
    26ac:	fb1ff06f          	j	265c <fatfs_init+0x40>
    26b0:	24245703          	lhu	a4,578(s0)
    26b4:	0000b7b7          	lui	a5,0xb
    26b8:	a5578793          	add	a5,a5,-1451 # aa55 <_files+0x465>
    26bc:	ffc00513          	li	a0,-4
    26c0:	f8f71ee3          	bne	a4,a5,265c <fatfs_init+0x40>
    26c4:	20644783          	lbu	a5,518(s0)
    26c8:	00600713          	li	a4,6
    26cc:	02f76463          	bltu	a4,a5,26f4 <fatfs_init+0xd8>
    26d0:	00400713          	li	a4,4
    26d4:	00f76663          	bltu	a4,a5,26e0 <fatfs_init+0xc4>
    26d8:	00000513          	li	a0,0
    26dc:	02078663          	beqz	a5,2708 <fatfs_init+0xec>
    26e0:	20c45503          	lhu	a0,524(s0)
    26e4:	20a45783          	lhu	a5,522(s0)
    26e8:	01051513          	sll	a0,a0,0x10
    26ec:	00f56533          	or	a0,a0,a5
    26f0:	0180006f          	j	2708 <fatfs_init+0xec>
    26f4:	00c00713          	li	a4,12
    26f8:	12f76e63          	bltu	a4,a5,2834 <fatfs_init+0x218>
    26fc:	00a00713          	li	a4,10
    2700:	00000513          	li	a0,0
    2704:	fcf76ee3          	bltu	a4,a5,26e0 <fatfs_init+0xc4>
    2708:	03442783          	lw	a5,52(s0)
    270c:	00a42e23          	sw	a0,28(s0)
    2710:	00100613          	li	a2,1
    2714:	000780e7          	jalr	a5
    2718:	f40500e3          	beqz	a0,2658 <fatfs_init+0x3c>
    271c:	05044783          	lbu	a5,80(s0)
    2720:	04f44703          	lbu	a4,79(s0)
    2724:	ffe00513          	li	a0,-2
    2728:	00879793          	sll	a5,a5,0x8
    272c:	00e7e7b3          	or	a5,a5,a4
    2730:	20000713          	li	a4,512
    2734:	f2e794e3          	bne	a5,a4,265c <fatfs_init+0x40>
    2738:	05644483          	lbu	s1,86(s0)
    273c:	05544783          	lbu	a5,85(s0)
    2740:	05144983          	lbu	s3,81(s0)
    2744:	00849493          	sll	s1,s1,0x8
    2748:	05a45583          	lhu	a1,90(s0)
    274c:	00f4e4b3          	or	s1,s1,a5
    2750:	01340023          	sb	s3,0(s0)
    2754:	02941423          	sh	s1,40(s0)
    2758:	05245903          	lhu	s2,82(s0)
    275c:	05444503          	lbu	a0,84(s0)
    2760:	00059463          	bnez	a1,2768 <fatfs_init+0x14c>
    2764:	06842583          	lw	a1,104(s0)
    2768:	07042783          	lw	a5,112(s0)
    276c:	02b42023          	sw	a1,32(s0)
    2770:	00549493          	sll	s1,s1,0x5
    2774:	00f42423          	sw	a5,8(s0)
    2778:	07445783          	lhu	a5,116(s0)
    277c:	1ff48493          	add	s1,s1,511
    2780:	4094d493          	sra	s1,s1,0x9
    2784:	00f41c23          	sh	a5,24(s0)
    2788:	fffff097          	auipc	ra,0xfffff
    278c:	d70080e7          	jalr	-656(ra) # 14f8 <__mulsi3>
    2790:	00a907b3          	add	a5,s2,a0
    2794:	00f42623          	sw	a5,12(s0)
    2798:	01c42783          	lw	a5,28(s0)
    279c:	24245703          	lhu	a4,578(s0)
    27a0:	00942823          	sw	s1,16(s0)
    27a4:	00f907b3          	add	a5,s2,a5
    27a8:	00f42a23          	sw	a5,20(s0)
    27ac:	00f507b3          	add	a5,a0,a5
    27b0:	00f42223          	sw	a5,4(s0)
    27b4:	0000b7b7          	lui	a5,0xb
    27b8:	a5578793          	add	a5,a5,-1451 # aa55 <_files+0x465>
    27bc:	eef716e3          	bne	a4,a5,26a8 <fatfs_init+0x8c>
    27c0:	05844783          	lbu	a5,88(s0)
    27c4:	05744703          	lbu	a4,87(s0)
    27c8:	00879793          	sll	a5,a5,0x8
    27cc:	00e7e7b3          	or	a5,a5,a4
    27d0:	00079463          	bnez	a5,27d8 <fatfs_init+0x1bc>
    27d4:	06442783          	lw	a5,100(s0)
    27d8:	00990933          	add	s2,s2,s1
    27dc:	00a90533          	add	a0,s2,a0
    27e0:	40a787b3          	sub	a5,a5,a0
    27e4:	ffb00513          	li	a0,-5
    27e8:	e6098ae3          	beqz	s3,265c <fatfs_init+0x40>
    27ec:	00078513          	mv	a0,a5
    27f0:	00098593          	mv	a1,s3
    27f4:	ffffe097          	auipc	ra,0xffffe
    27f8:	4bc080e7          	jalr	1212(ra) # cb0 <__udivsi3>
    27fc:	00001737          	lui	a4,0x1
    2800:	00050793          	mv	a5,a0
    2804:	ff470713          	add	a4,a4,-12 # ff4 <oled_fullscreen+0x5c>
    2808:	ffb00513          	li	a0,-5
    280c:	e4f778e3          	bgeu	a4,a5,265c <fatfs_init+0x40>
    2810:	00010737          	lui	a4,0x10
    2814:	ff470713          	add	a4,a4,-12 # fff4 <Songs+0x50a4>
    2818:	00100693          	li	a3,1
    281c:	00f76663          	bltu	a4,a5,2828 <fatfs_init+0x20c>
    2820:	00042423          	sw	zero,8(s0)
    2824:	00000693          	li	a3,0
    2828:	02d42823          	sw	a3,48(s0)
    282c:	00000513          	li	a0,0
    2830:	e2dff06f          	j	265c <fatfs_init+0x40>
    2834:	ff278793          	add	a5,a5,-14
    2838:	0ff7f793          	zext.b	a5,a5
    283c:	00100713          	li	a4,1
    2840:	00000513          	li	a0,0
    2844:	e8f77ee3          	bgeu	a4,a5,26e0 <fatfs_init+0xc4>
    2848:	ec1ff06f          	j	2708 <fatfs_init+0xec>

0000284c <fl_attach_media>:
    284c:	000067b7          	lui	a5,0x6
    2850:	1287a783          	lw	a5,296(a5) # 6128 <_filelib_init>
    2854:	ff010113          	add	sp,sp,-16
    2858:	00812423          	sw	s0,8(sp)
    285c:	00912223          	sw	s1,4(sp)
    2860:	00112623          	sw	ra,12(sp)
    2864:	00050493          	mv	s1,a0
    2868:	00058413          	mv	s0,a1
    286c:	00079663          	bnez	a5,2878 <fl_attach_media+0x2c>
    2870:	fffff097          	auipc	ra,0xfffff
    2874:	148080e7          	jalr	328(ra) # 19b8 <fl_init>
    2878:	0000a537          	lui	a0,0xa
    287c:	18850793          	add	a5,a0,392 # a188 <_fs>
    2880:	18850513          	add	a0,a0,392
    2884:	0297aa23          	sw	s1,52(a5)
    2888:	0287ac23          	sw	s0,56(a5)
    288c:	00000097          	auipc	ra,0x0
    2890:	d90080e7          	jalr	-624(ra) # 261c <fatfs_init>
    2894:	00051863          	bnez	a0,28a4 <fl_attach_media+0x58>
    2898:	000067b7          	lui	a5,0x6
    289c:	00100713          	li	a4,1
    28a0:	12e7a223          	sw	a4,292(a5) # 6124 <_filelib_valid>
    28a4:	00c12083          	lw	ra,12(sp)
    28a8:	00812403          	lw	s0,8(sp)
    28ac:	00412483          	lw	s1,4(sp)
    28b0:	01010113          	add	sp,sp,16
    28b4:	00008067          	ret

000028b8 <fatfs_fat_purge>:
    28b8:	ff010113          	add	sp,sp,-16
    28bc:	00812423          	sw	s0,8(sp)
    28c0:	25452403          	lw	s0,596(a0)
    28c4:	00912223          	sw	s1,4(sp)
    28c8:	00112623          	sw	ra,12(sp)
    28cc:	00050493          	mv	s1,a0
    28d0:	00041663          	bnez	s0,28dc <fatfs_fat_purge+0x24>
    28d4:	00100513          	li	a0,1
    28d8:	0280006f          	j	2900 <fatfs_fat_purge+0x48>
    28dc:	20442783          	lw	a5,516(s0)
    28e0:	00079663          	bnez	a5,28ec <fatfs_fat_purge+0x34>
    28e4:	20c42403          	lw	s0,524(s0)
    28e8:	fe9ff06f          	j	28d0 <fatfs_fat_purge+0x18>
    28ec:	00040593          	mv	a1,s0
    28f0:	00048513          	mv	a0,s1
    28f4:	fffff097          	auipc	ra,0xfffff
    28f8:	d5c080e7          	jalr	-676(ra) # 1650 <fatfs_fat_writeback>
    28fc:	fe0514e3          	bnez	a0,28e4 <fatfs_fat_purge+0x2c>
    2900:	00c12083          	lw	ra,12(sp)
    2904:	00812403          	lw	s0,8(sp)
    2908:	00412483          	lw	s1,4(sp)
    290c:	01010113          	add	sp,sp,16
    2910:	00008067          	ret

00002914 <fatfs_find_next_cluster>:
    2914:	ff010113          	add	sp,sp,-16
    2918:	00812423          	sw	s0,8(sp)
    291c:	01212023          	sw	s2,0(sp)
    2920:	00112623          	sw	ra,12(sp)
    2924:	00912223          	sw	s1,4(sp)
    2928:	00050913          	mv	s2,a0
    292c:	00200413          	li	s0,2
    2930:	00058463          	beqz	a1,2938 <fatfs_find_next_cluster+0x24>
    2934:	00058413          	mv	s0,a1
    2938:	03092783          	lw	a5,48(s2)
    293c:	00745493          	srl	s1,s0,0x7
    2940:	00079463          	bnez	a5,2948 <fatfs_find_next_cluster+0x34>
    2944:	00845493          	srl	s1,s0,0x8
    2948:	01492583          	lw	a1,20(s2)
    294c:	00090513          	mv	a0,s2
    2950:	00b485b3          	add	a1,s1,a1
    2954:	fffff097          	auipc	ra,0xfffff
    2958:	d7c080e7          	jalr	-644(ra) # 16d0 <fatfs_fat_read_sector>
    295c:	00050793          	mv	a5,a0
    2960:	fff00513          	li	a0,-1
    2964:	04078a63          	beqz	a5,29b8 <fatfs_find_next_cluster+0xa4>
    2968:	03092703          	lw	a4,48(s2)
    296c:	2087a783          	lw	a5,520(a5)
    2970:	06071063          	bnez	a4,29d0 <fatfs_find_next_cluster+0xbc>
    2974:	00849493          	sll	s1,s1,0x8
    2978:	40940433          	sub	s0,s0,s1
    297c:	00010737          	lui	a4,0x10
    2980:	00141413          	sll	s0,s0,0x1
    2984:	fff70713          	add	a4,a4,-1 # ffff <Songs+0x50af>
    2988:	00e47433          	and	s0,s0,a4
    298c:	008787b3          	add	a5,a5,s0
    2990:	0017c503          	lbu	a0,1(a5)
    2994:	0007c783          	lbu	a5,0(a5)
    2998:	00851513          	sll	a0,a0,0x8
    299c:	00f50533          	add	a0,a0,a5
    29a0:	ffff07b7          	lui	a5,0xffff0
    29a4:	00878793          	add	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    29a8:	00f507b3          	add	a5,a0,a5
    29ac:	00700713          	li	a4,7
    29b0:	00f76463          	bltu	a4,a5,29b8 <fatfs_find_next_cluster+0xa4>
    29b4:	fff00513          	li	a0,-1
    29b8:	00c12083          	lw	ra,12(sp)
    29bc:	00812403          	lw	s0,8(sp)
    29c0:	00412483          	lw	s1,4(sp)
    29c4:	00012903          	lw	s2,0(sp)
    29c8:	01010113          	add	sp,sp,16
    29cc:	00008067          	ret
    29d0:	00749493          	sll	s1,s1,0x7
    29d4:	40940433          	sub	s0,s0,s1
    29d8:	00010737          	lui	a4,0x10
    29dc:	fff70713          	add	a4,a4,-1 # ffff <Songs+0x50af>
    29e0:	00241413          	sll	s0,s0,0x2
    29e4:	00e47433          	and	s0,s0,a4
    29e8:	008787b3          	add	a5,a5,s0
    29ec:	0037c503          	lbu	a0,3(a5)
    29f0:	0027c703          	lbu	a4,2(a5)
    29f4:	01851513          	sll	a0,a0,0x18
    29f8:	01071713          	sll	a4,a4,0x10
    29fc:	00e50533          	add	a0,a0,a4
    2a00:	0007c703          	lbu	a4,0(a5)
    2a04:	0017c783          	lbu	a5,1(a5)
    2a08:	00e50533          	add	a0,a0,a4
    2a0c:	00879793          	sll	a5,a5,0x8
    2a10:	00f50533          	add	a0,a0,a5
    2a14:	00451513          	sll	a0,a0,0x4
    2a18:	00455513          	srl	a0,a0,0x4
    2a1c:	f00007b7          	lui	a5,0xf0000
    2a20:	f85ff06f          	j	29a4 <fatfs_find_next_cluster+0x90>

00002a24 <fatfs_sector_reader>:
    2a24:	03052783          	lw	a5,48(a0)
    2a28:	fd010113          	add	sp,sp,-48
    2a2c:	02812423          	sw	s0,40(sp)
    2a30:	03212023          	sw	s2,32(sp)
    2a34:	01312e23          	sw	s3,28(sp)
    2a38:	02112623          	sw	ra,44(sp)
    2a3c:	02912223          	sw	s1,36(sp)
    2a40:	01412c23          	sw	s4,24(sp)
    2a44:	01512a23          	sw	s5,20(sp)
    2a48:	00f5e7b3          	or	a5,a1,a5
    2a4c:	00050413          	mv	s0,a0
    2a50:	00060913          	mv	s2,a2
    2a54:	00068993          	mv	s3,a3
    2a58:	06079c63          	bnez	a5,2ad0 <fatfs_sector_reader+0xac>
    2a5c:	01052783          	lw	a5,16(a0)
    2a60:	02f66663          	bltu	a2,a5,2a8c <fatfs_sector_reader+0x68>
    2a64:	00000513          	li	a0,0
    2a68:	02c12083          	lw	ra,44(sp)
    2a6c:	02812403          	lw	s0,40(sp)
    2a70:	02412483          	lw	s1,36(sp)
    2a74:	02012903          	lw	s2,32(sp)
    2a78:	01c12983          	lw	s3,28(sp)
    2a7c:	01812a03          	lw	s4,24(sp)
    2a80:	01412a83          	lw	s5,20(sp)
    2a84:	03010113          	add	sp,sp,48
    2a88:	00008067          	ret
    2a8c:	01c52503          	lw	a0,28(a0)
    2a90:	00c42783          	lw	a5,12(s0)
    2a94:	00f50533          	add	a0,a0,a5
    2a98:	01250533          	add	a0,a0,s2
    2a9c:	0a098263          	beqz	s3,2b40 <fatfs_sector_reader+0x11c>
    2aa0:	03442783          	lw	a5,52(s0)
    2aa4:	00100613          	li	a2,1
    2aa8:	00098593          	mv	a1,s3
    2aac:	02812403          	lw	s0,40(sp)
    2ab0:	02c12083          	lw	ra,44(sp)
    2ab4:	02412483          	lw	s1,36(sp)
    2ab8:	02012903          	lw	s2,32(sp)
    2abc:	01c12983          	lw	s3,28(sp)
    2ac0:	01812a03          	lw	s4,24(sp)
    2ac4:	01412a83          	lw	s5,20(sp)
    2ac8:	03010113          	add	sp,sp,48
    2acc:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    2ad0:	00058493          	mv	s1,a1
    2ad4:	00054583          	lbu	a1,0(a0)
    2ad8:	00060513          	mv	a0,a2
    2adc:	00000a93          	li	s5,0
    2ae0:	00b12623          	sw	a1,12(sp)
    2ae4:	ffffe097          	auipc	ra,0xffffe
    2ae8:	1cc080e7          	jalr	460(ra) # cb0 <__udivsi3>
    2aec:	00c12583          	lw	a1,12(sp)
    2af0:	00050a13          	mv	s4,a0
    2af4:	00090513          	mv	a0,s2
    2af8:	ffffe097          	auipc	ra,0xffffe
    2afc:	200080e7          	jalr	512(ra) # cf8 <__umodsi3>
    2b00:	00050913          	mv	s2,a0
    2b04:	034a9063          	bne	s5,s4,2b24 <fatfs_sector_reader+0x100>
    2b08:	fff00793          	li	a5,-1
    2b0c:	f4f48ce3          	beq	s1,a5,2a64 <fatfs_sector_reader+0x40>
    2b10:	00048593          	mv	a1,s1
    2b14:	00040513          	mv	a0,s0
    2b18:	fffff097          	auipc	ra,0xfffff
    2b1c:	d64080e7          	jalr	-668(ra) # 187c <fatfs_lba_of_cluster>
    2b20:	f79ff06f          	j	2a98 <fatfs_sector_reader+0x74>
    2b24:	00048593          	mv	a1,s1
    2b28:	00040513          	mv	a0,s0
    2b2c:	00000097          	auipc	ra,0x0
    2b30:	de8080e7          	jalr	-536(ra) # 2914 <fatfs_find_next_cluster>
    2b34:	00050493          	mv	s1,a0
    2b38:	001a8a93          	add	s5,s5,1
    2b3c:	fc9ff06f          	j	2b04 <fatfs_sector_reader+0xe0>
    2b40:	24442783          	lw	a5,580(s0)
    2b44:	00a78c63          	beq	a5,a0,2b5c <fatfs_sector_reader+0x138>
    2b48:	03442783          	lw	a5,52(s0)
    2b4c:	24a42223          	sw	a0,580(s0)
    2b50:	00100613          	li	a2,1
    2b54:	04440593          	add	a1,s0,68
    2b58:	f55ff06f          	j	2aac <fatfs_sector_reader+0x88>
    2b5c:	00100513          	li	a0,1
    2b60:	f09ff06f          	j	2a68 <fatfs_sector_reader+0x44>

00002b64 <fatfs_get_file_entry>:
    2b64:	eb010113          	add	sp,sp,-336
    2b68:	14812423          	sw	s0,328(sp)
    2b6c:	01810413          	add	s0,sp,24
    2b70:	14912223          	sw	s1,324(sp)
    2b74:	15212023          	sw	s2,320(sp)
    2b78:	13312e23          	sw	s3,316(sp)
    2b7c:	13412c23          	sw	s4,312(sp)
    2b80:	13512a23          	sw	s5,308(sp)
    2b84:	13612823          	sw	s6,304(sp)
    2b88:	14112623          	sw	ra,332(sp)
    2b8c:	13712623          	sw	s7,300(sp)
    2b90:	13812423          	sw	s8,296(sp)
    2b94:	13912223          	sw	s9,292(sp)
    2b98:	13a12023          	sw	s10,288(sp)
    2b9c:	00050493          	mv	s1,a0
    2ba0:	00058a93          	mv	s5,a1
    2ba4:	00060913          	mv	s2,a2
    2ba8:	00068993          	mv	s3,a3
    2bac:	10010ea3          	sb	zero,285(sp)
    2bb0:	11c10a13          	add	s4,sp,284
    2bb4:	00040b13          	mv	s6,s0
    2bb8:	00040513          	mv	a0,s0
    2bbc:	00d00613          	li	a2,13
    2bc0:	00000593          	li	a1,0
    2bc4:	00d40413          	add	s0,s0,13
    2bc8:	ffffe097          	auipc	ra,0xffffe
    2bcc:	194080e7          	jalr	404(ra) # d5c <memset>
    2bd0:	ff4414e3          	bne	s0,s4,2bb8 <fatfs_get_file_entry+0x54>
    2bd4:	00000a13          	li	s4,0
    2bd8:	24448c13          	add	s8,s1,580
    2bdc:	00800c93          	li	s9,8
    2be0:	02000b93          	li	s7,32
    2be4:	02e00d13          	li	s10,46
    2be8:	00000693          	li	a3,0
    2bec:	000a0613          	mv	a2,s4
    2bf0:	000a8593          	mv	a1,s5
    2bf4:	00048513          	mv	a0,s1
    2bf8:	00000097          	auipc	ra,0x0
    2bfc:	e2c080e7          	jalr	-468(ra) # 2a24 <fatfs_sector_reader>
    2c00:	14050e63          	beqz	a0,2d5c <fatfs_get_file_entry+0x1f8>
    2c04:	04448413          	add	s0,s1,68
    2c08:	00040513          	mv	a0,s0
    2c0c:	fffff097          	auipc	ra,0xfffff
    2c10:	f2c080e7          	jalr	-212(ra) # 1b38 <fatfs_entry_lfn_text>
    2c14:	02050263          	beqz	a0,2c38 <fatfs_get_file_entry+0xd4>
    2c18:	00040593          	mv	a1,s0
    2c1c:	000b0513          	mv	a0,s6
    2c20:	fffff097          	auipc	ra,0xfffff
    2c24:	e10080e7          	jalr	-496(ra) # 1a30 <fatfs_lfn_cache_entry>
    2c28:	02040413          	add	s0,s0,32
    2c2c:	fc8c1ee3          	bne	s8,s0,2c08 <fatfs_get_file_entry+0xa4>
    2c30:	001a0a13          	add	s4,s4,1
    2c34:	fb5ff06f          	j	2be8 <fatfs_get_file_entry+0x84>
    2c38:	00040513          	mv	a0,s0
    2c3c:	fffff097          	auipc	ra,0xfffff
    2c40:	f10080e7          	jalr	-240(ra) # 1b4c <fatfs_entry_lfn_invalid>
    2c44:	00050663          	beqz	a0,2c50 <fatfs_get_file_entry+0xec>
    2c48:	10010ea3          	sb	zero,285(sp)
    2c4c:	fddff06f          	j	2c28 <fatfs_get_file_entry+0xc4>
    2c50:	00040593          	mv	a1,s0
    2c54:	000b0513          	mv	a0,s6
    2c58:	fffff097          	auipc	ra,0xfffff
    2c5c:	f2c080e7          	jalr	-212(ra) # 1b84 <fatfs_entry_lfn_exists>
    2c60:	06050863          	beqz	a0,2cd0 <fatfs_get_file_entry+0x16c>
    2c64:	000b0513          	mv	a0,s6
    2c68:	fffff097          	auipc	ra,0xfffff
    2c6c:	e94080e7          	jalr	-364(ra) # 1afc <fatfs_lfn_cache_get>
    2c70:	00090593          	mv	a1,s2
    2c74:	fffff097          	auipc	ra,0xfffff
    2c78:	6f8080e7          	jalr	1784(ra) # 236c <fatfs_compare_names>
    2c7c:	fc0506e3          	beqz	a0,2c48 <fatfs_get_file_entry+0xe4>
    2c80:	02000613          	li	a2,32
    2c84:	00040593          	mv	a1,s0
    2c88:	00098513          	mv	a0,s3
    2c8c:	ffffe097          	auipc	ra,0xffffe
    2c90:	0ec080e7          	jalr	236(ra) # d78 <memcpy>
    2c94:	00100513          	li	a0,1
    2c98:	14c12083          	lw	ra,332(sp)
    2c9c:	14812403          	lw	s0,328(sp)
    2ca0:	14412483          	lw	s1,324(sp)
    2ca4:	14012903          	lw	s2,320(sp)
    2ca8:	13c12983          	lw	s3,316(sp)
    2cac:	13812a03          	lw	s4,312(sp)
    2cb0:	13412a83          	lw	s5,308(sp)
    2cb4:	13012b03          	lw	s6,304(sp)
    2cb8:	12c12b83          	lw	s7,300(sp)
    2cbc:	12812c03          	lw	s8,296(sp)
    2cc0:	12412c83          	lw	s9,292(sp)
    2cc4:	12012d03          	lw	s10,288(sp)
    2cc8:	15010113          	add	sp,sp,336
    2ccc:	00008067          	ret
    2cd0:	00040513          	mv	a0,s0
    2cd4:	fffff097          	auipc	ra,0xfffff
    2cd8:	ef8080e7          	jalr	-264(ra) # 1bcc <fatfs_entry_sfn_only>
    2cdc:	f40506e3          	beqz	a0,2c28 <fatfs_get_file_entry+0xc4>
    2ce0:	00d00613          	li	a2,13
    2ce4:	00000593          	li	a1,0
    2ce8:	00810513          	add	a0,sp,8
    2cec:	ffffe097          	auipc	ra,0xffffe
    2cf0:	070080e7          	jalr	112(ra) # d5c <memset>
    2cf4:	00000793          	li	a5,0
    2cf8:	00f406b3          	add	a3,s0,a5
    2cfc:	0006c683          	lbu	a3,0(a3)
    2d00:	00810713          	add	a4,sp,8
    2d04:	00f70733          	add	a4,a4,a5
    2d08:	00d70023          	sb	a3,0(a4)
    2d0c:	00178793          	add	a5,a5,1
    2d10:	ff9794e3          	bne	a5,s9,2cf8 <fatfs_get_file_entry+0x194>
    2d14:	00844703          	lbu	a4,8(s0)
    2d18:	00944683          	lbu	a3,9(s0)
    2d1c:	00a44783          	lbu	a5,10(s0)
    2d20:	00e108a3          	sb	a4,17(sp)
    2d24:	00d10923          	sb	a3,18(sp)
    2d28:	00f109a3          	sb	a5,19(sp)
    2d2c:	03768063          	beq	a3,s7,2d4c <fatfs_get_file_entry+0x1e8>
    2d30:	00814703          	lbu	a4,8(sp)
    2d34:	02e00793          	li	a5,46
    2d38:	01a70e63          	beq	a4,s10,2d54 <fatfs_get_file_entry+0x1f0>
    2d3c:	00f10823          	sb	a5,16(sp)
    2d40:	00090593          	mv	a1,s2
    2d44:	00810513          	add	a0,sp,8
    2d48:	f2dff06f          	j	2c74 <fatfs_get_file_entry+0x110>
    2d4c:	ff7792e3          	bne	a5,s7,2d30 <fatfs_get_file_entry+0x1cc>
    2d50:	ff7710e3          	bne	a4,s7,2d30 <fatfs_get_file_entry+0x1cc>
    2d54:	02000793          	li	a5,32
    2d58:	fe5ff06f          	j	2d3c <fatfs_get_file_entry+0x1d8>
    2d5c:	00000513          	li	a0,0
    2d60:	f39ff06f          	j	2c98 <fatfs_get_file_entry+0x134>

00002d64 <_open_directory>:
    2d64:	eb010113          	add	sp,sp,-336
    2d68:	13512a23          	sw	s5,308(sp)
    2d6c:	0000aab7          	lui	s5,0xa
    2d70:	188a8793          	add	a5,s5,392 # a188 <_fs>
    2d74:	14812423          	sw	s0,328(sp)
    2d78:	14912223          	sw	s1,324(sp)
    2d7c:	15212023          	sw	s2,320(sp)
    2d80:	13312e23          	sw	s3,316(sp)
    2d84:	13412c23          	sw	s4,312(sp)
    2d88:	13612823          	sw	s6,304(sp)
    2d8c:	0087a403          	lw	s0,8(a5)
    2d90:	14112623          	sw	ra,332(sp)
    2d94:	00050a13          	mv	s4,a0
    2d98:	00058913          	mv	s2,a1
    2d9c:	fffff097          	auipc	ra,0xfffff
    2da0:	380080e7          	jalr	896(ra) # 211c <fatfs_total_path_levels>
    2da4:	00050993          	mv	s3,a0
    2da8:	00000493          	li	s1,0
    2dac:	fff00b13          	li	s6,-1
    2db0:	0099d863          	bge	s3,s1,2dc0 <_open_directory+0x5c>
    2db4:	00892023          	sw	s0,0(s2)
    2db8:	00100513          	li	a0,1
    2dbc:	0240006f          	j	2de0 <_open_directory+0x7c>
    2dc0:	10400693          	li	a3,260
    2dc4:	02c10613          	add	a2,sp,44
    2dc8:	00048593          	mv	a1,s1
    2dcc:	000a0513          	mv	a0,s4
    2dd0:	fffff097          	auipc	ra,0xfffff
    2dd4:	3c0080e7          	jalr	960(ra) # 2190 <fatfs_get_substring>
    2dd8:	03651863          	bne	a0,s6,2e08 <_open_directory+0xa4>
    2ddc:	00000513          	li	a0,0
    2de0:	14c12083          	lw	ra,332(sp)
    2de4:	14812403          	lw	s0,328(sp)
    2de8:	14412483          	lw	s1,324(sp)
    2dec:	14012903          	lw	s2,320(sp)
    2df0:	13c12983          	lw	s3,316(sp)
    2df4:	13812a03          	lw	s4,312(sp)
    2df8:	13412a83          	lw	s5,308(sp)
    2dfc:	13012b03          	lw	s6,304(sp)
    2e00:	15010113          	add	sp,sp,336
    2e04:	00008067          	ret
    2e08:	00c10693          	add	a3,sp,12
    2e0c:	02c10613          	add	a2,sp,44
    2e10:	00040593          	mv	a1,s0
    2e14:	188a8513          	add	a0,s5,392
    2e18:	00000097          	auipc	ra,0x0
    2e1c:	d4c080e7          	jalr	-692(ra) # 2b64 <fatfs_get_file_entry>
    2e20:	fa050ee3          	beqz	a0,2ddc <_open_directory+0x78>
    2e24:	00c10513          	add	a0,sp,12
    2e28:	fffff097          	auipc	ra,0xfffff
    2e2c:	de0080e7          	jalr	-544(ra) # 1c08 <fatfs_entry_is_dir>
    2e30:	fa0506e3          	beqz	a0,2ddc <_open_directory+0x78>
    2e34:	02015403          	lhu	s0,32(sp)
    2e38:	02615783          	lhu	a5,38(sp)
    2e3c:	00148493          	add	s1,s1,1
    2e40:	01041413          	sll	s0,s0,0x10
    2e44:	00f40433          	add	s0,s0,a5
    2e48:	f69ff06f          	j	2db0 <_open_directory+0x4c>

00002e4c <fl_opendir>:
    2e4c:	fe010113          	add	sp,sp,-32
    2e50:	fff00793          	li	a5,-1
    2e54:	00f12623          	sw	a5,12(sp)
    2e58:	000067b7          	lui	a5,0x6
    2e5c:	1287a783          	lw	a5,296(a5) # 6128 <_filelib_init>
    2e60:	00812c23          	sw	s0,24(sp)
    2e64:	01212823          	sw	s2,16(sp)
    2e68:	00112e23          	sw	ra,28(sp)
    2e6c:	00912a23          	sw	s1,20(sp)
    2e70:	00050913          	mv	s2,a0
    2e74:	00058413          	mv	s0,a1
    2e78:	00079663          	bnez	a5,2e84 <fl_opendir+0x38>
    2e7c:	fffff097          	auipc	ra,0xfffff
    2e80:	b3c080e7          	jalr	-1220(ra) # 19b8 <fl_init>
    2e84:	0000a4b7          	lui	s1,0xa
    2e88:	18848793          	add	a5,s1,392 # a188 <_fs>
    2e8c:	03c7a783          	lw	a5,60(a5)
    2e90:	18848493          	add	s1,s1,392
    2e94:	00078463          	beqz	a5,2e9c <fl_opendir+0x50>
    2e98:	000780e7          	jalr	a5
    2e9c:	00090513          	mv	a0,s2
    2ea0:	fffff097          	auipc	ra,0xfffff
    2ea4:	27c080e7          	jalr	636(ra) # 211c <fatfs_total_path_levels>
    2ea8:	fff00793          	li	a5,-1
    2eac:	02f51063          	bne	a0,a5,2ecc <fl_opendir+0x80>
    2eb0:	0084a783          	lw	a5,8(s1)
    2eb4:	00f12623          	sw	a5,12(sp)
    2eb8:	00c12783          	lw	a5,12(sp)
    2ebc:	00042023          	sw	zero,0(s0)
    2ec0:	00040423          	sb	zero,8(s0)
    2ec4:	00f42223          	sw	a5,4(s0)
    2ec8:	0180006f          	j	2ee0 <fl_opendir+0x94>
    2ecc:	00c10593          	add	a1,sp,12
    2ed0:	00090513          	mv	a0,s2
    2ed4:	00000097          	auipc	ra,0x0
    2ed8:	e90080e7          	jalr	-368(ra) # 2d64 <_open_directory>
    2edc:	fc051ee3          	bnez	a0,2eb8 <fl_opendir+0x6c>
    2ee0:	0404a783          	lw	a5,64(s1)
    2ee4:	00078463          	beqz	a5,2eec <fl_opendir+0xa0>
    2ee8:	000780e7          	jalr	a5
    2eec:	00c12703          	lw	a4,12(sp)
    2ef0:	fff00793          	li	a5,-1
    2ef4:	00f71463          	bne	a4,a5,2efc <fl_opendir+0xb0>
    2ef8:	00000413          	li	s0,0
    2efc:	01c12083          	lw	ra,28(sp)
    2f00:	00040513          	mv	a0,s0
    2f04:	01812403          	lw	s0,24(sp)
    2f08:	01412483          	lw	s1,20(sp)
    2f0c:	01012903          	lw	s2,16(sp)
    2f10:	02010113          	add	sp,sp,32
    2f14:	00008067          	ret

00002f18 <_open_file>:
    2f18:	fc010113          	add	sp,sp,-64
    2f1c:	03312623          	sw	s3,44(sp)
    2f20:	02112e23          	sw	ra,60(sp)
    2f24:	02812c23          	sw	s0,56(sp)
    2f28:	02912a23          	sw	s1,52(sp)
    2f2c:	03212823          	sw	s2,48(sp)
    2f30:	00050993          	mv	s3,a0
    2f34:	fffff097          	auipc	ra,0xfffff
    2f38:	88c080e7          	jalr	-1908(ra) # 17c0 <_allocate_file>
    2f3c:	06050463          	beqz	a0,2fa4 <_open_file+0x8c>
    2f40:	01450913          	add	s2,a0,20
    2f44:	00050413          	mv	s0,a0
    2f48:	10400613          	li	a2,260
    2f4c:	00000593          	li	a1,0
    2f50:	00090513          	mv	a0,s2
    2f54:	ffffe097          	auipc	ra,0xffffe
    2f58:	e08080e7          	jalr	-504(ra) # d5c <memset>
    2f5c:	11840493          	add	s1,s0,280
    2f60:	10400613          	li	a2,260
    2f64:	00000593          	li	a1,0
    2f68:	00048513          	mv	a0,s1
    2f6c:	ffffe097          	auipc	ra,0xffffe
    2f70:	df0080e7          	jalr	-528(ra) # d5c <memset>
    2f74:	10400713          	li	a4,260
    2f78:	00048693          	mv	a3,s1
    2f7c:	10400613          	li	a2,260
    2f80:	00090593          	mv	a1,s2
    2f84:	00098513          	mv	a0,s3
    2f88:	fffff097          	auipc	ra,0xfffff
    2f8c:	2fc080e7          	jalr	764(ra) # 2284 <fatfs_split_path>
    2f90:	fff00793          	li	a5,-1
    2f94:	02f51a63          	bne	a0,a5,2fc8 <_open_file+0xb0>
    2f98:	00040513          	mv	a0,s0
    2f9c:	fffff097          	auipc	ra,0xfffff
    2fa0:	898080e7          	jalr	-1896(ra) # 1834 <_free_file>
    2fa4:	00000413          	li	s0,0
    2fa8:	03c12083          	lw	ra,60(sp)
    2fac:	00040513          	mv	a0,s0
    2fb0:	03812403          	lw	s0,56(sp)
    2fb4:	03412483          	lw	s1,52(sp)
    2fb8:	03012903          	lw	s2,48(sp)
    2fbc:	02c12983          	lw	s3,44(sp)
    2fc0:	04010113          	add	sp,sp,64
    2fc4:	00008067          	ret
    2fc8:	00040513          	mv	a0,s0
    2fcc:	fffff097          	auipc	ra,0xfffff
    2fd0:	50c080e7          	jalr	1292(ra) # 24d8 <_check_file_open>
    2fd4:	fc0512e3          	bnez	a0,2f98 <_open_file+0x80>
    2fd8:	01444783          	lbu	a5,20(s0)
    2fdc:	08079e63          	bnez	a5,3078 <_open_file+0x160>
    2fe0:	0000a7b7          	lui	a5,0xa
    2fe4:	1907a783          	lw	a5,400(a5) # a190 <_fs+0x8>
    2fe8:	00f42023          	sw	a5,0(s0)
    2fec:	00042583          	lw	a1,0(s0)
    2ff0:	00048613          	mv	a2,s1
    2ff4:	0000a4b7          	lui	s1,0xa
    2ff8:	00010693          	mv	a3,sp
    2ffc:	18848513          	add	a0,s1,392 # a188 <_fs>
    3000:	00000097          	auipc	ra,0x0
    3004:	b64080e7          	jalr	-1180(ra) # 2b64 <fatfs_get_file_entry>
    3008:	f80508e3          	beqz	a0,2f98 <_open_file+0x80>
    300c:	00010513          	mv	a0,sp
    3010:	fffff097          	auipc	ra,0xfffff
    3014:	c08080e7          	jalr	-1016(ra) # 1c18 <fatfs_entry_is_file>
    3018:	f80500e3          	beqz	a0,2f98 <_open_file+0x80>
    301c:	00b00613          	li	a2,11
    3020:	00010593          	mv	a1,sp
    3024:	21c40513          	add	a0,s0,540
    3028:	ffffe097          	auipc	ra,0xffffe
    302c:	d50080e7          	jalr	-688(ra) # d78 <memcpy>
    3030:	01c12783          	lw	a5,28(sp)
    3034:	01a15703          	lhu	a4,26(sp)
    3038:	00042423          	sw	zero,8(s0)
    303c:	00f42623          	sw	a5,12(s0)
    3040:	01415783          	lhu	a5,20(sp)
    3044:	42042a23          	sw	zero,1076(s0)
    3048:	00042823          	sw	zero,16(s0)
    304c:	01079793          	sll	a5,a5,0x10
    3050:	00e787b3          	add	a5,a5,a4
    3054:	00f42223          	sw	a5,4(s0)
    3058:	fff00793          	li	a5,-1
    305c:	42f42823          	sw	a5,1072(s0)
    3060:	22f42423          	sw	a5,552(s0)
    3064:	22f42623          	sw	a5,556(s0)
    3068:	18848513          	add	a0,s1,392
    306c:	00000097          	auipc	ra,0x0
    3070:	84c080e7          	jalr	-1972(ra) # 28b8 <fatfs_fat_purge>
    3074:	f35ff06f          	j	2fa8 <_open_file+0x90>
    3078:	00040593          	mv	a1,s0
    307c:	00090513          	mv	a0,s2
    3080:	00000097          	auipc	ra,0x0
    3084:	ce4080e7          	jalr	-796(ra) # 2d64 <_open_directory>
    3088:	f60512e3          	bnez	a0,2fec <_open_file+0xd4>
    308c:	f0dff06f          	j	2f98 <_open_file+0x80>

00003090 <fatfs_sfn_exists>:
    3090:	fe010113          	add	sp,sp,-32
    3094:	00912a23          	sw	s1,20(sp)
    3098:	01212823          	sw	s2,16(sp)
    309c:	01312623          	sw	s3,12(sp)
    30a0:	01412423          	sw	s4,8(sp)
    30a4:	01512223          	sw	s5,4(sp)
    30a8:	00112e23          	sw	ra,28(sp)
    30ac:	00812c23          	sw	s0,24(sp)
    30b0:	00050493          	mv	s1,a0
    30b4:	00058993          	mv	s3,a1
    30b8:	00060a13          	mv	s4,a2
    30bc:	00000913          	li	s2,0
    30c0:	24450a93          	add	s5,a0,580
    30c4:	00000693          	li	a3,0
    30c8:	00090613          	mv	a2,s2
    30cc:	00098593          	mv	a1,s3
    30d0:	00048513          	mv	a0,s1
    30d4:	00000097          	auipc	ra,0x0
    30d8:	950080e7          	jalr	-1712(ra) # 2a24 <fatfs_sector_reader>
    30dc:	06050263          	beqz	a0,3140 <fatfs_sfn_exists+0xb0>
    30e0:	04448413          	add	s0,s1,68
    30e4:	00040513          	mv	a0,s0
    30e8:	fffff097          	auipc	ra,0xfffff
    30ec:	a50080e7          	jalr	-1456(ra) # 1b38 <fatfs_entry_lfn_text>
    30f0:	02051e63          	bnez	a0,312c <fatfs_sfn_exists+0x9c>
    30f4:	00040513          	mv	a0,s0
    30f8:	fffff097          	auipc	ra,0xfffff
    30fc:	a54080e7          	jalr	-1452(ra) # 1b4c <fatfs_entry_lfn_invalid>
    3100:	02051663          	bnez	a0,312c <fatfs_sfn_exists+0x9c>
    3104:	00040513          	mv	a0,s0
    3108:	fffff097          	auipc	ra,0xfffff
    310c:	ac4080e7          	jalr	-1340(ra) # 1bcc <fatfs_entry_sfn_only>
    3110:	00050e63          	beqz	a0,312c <fatfs_sfn_exists+0x9c>
    3114:	00b00613          	li	a2,11
    3118:	000a0593          	mv	a1,s4
    311c:	00040513          	mv	a0,s0
    3120:	ffffe097          	auipc	ra,0xffffe
    3124:	c9c080e7          	jalr	-868(ra) # dbc <strncmp>
    3128:	00050a63          	beqz	a0,313c <fatfs_sfn_exists+0xac>
    312c:	02040413          	add	s0,s0,32
    3130:	fb541ae3          	bne	s0,s5,30e4 <fatfs_sfn_exists+0x54>
    3134:	00190913          	add	s2,s2,1
    3138:	f8dff06f          	j	30c4 <fatfs_sfn_exists+0x34>
    313c:	00100513          	li	a0,1
    3140:	01c12083          	lw	ra,28(sp)
    3144:	01812403          	lw	s0,24(sp)
    3148:	01412483          	lw	s1,20(sp)
    314c:	01012903          	lw	s2,16(sp)
    3150:	00c12983          	lw	s3,12(sp)
    3154:	00812a03          	lw	s4,8(sp)
    3158:	00412a83          	lw	s5,4(sp)
    315c:	02010113          	add	sp,sp,32
    3160:	00008067          	ret

00003164 <fatfs_update_file_length>:
    3164:	03852783          	lw	a5,56(a0)
    3168:	14078e63          	beqz	a5,32c4 <fatfs_update_file_length+0x160>
    316c:	fd010113          	add	sp,sp,-48
    3170:	02912223          	sw	s1,36(sp)
    3174:	03212023          	sw	s2,32(sp)
    3178:	01312e23          	sw	s3,28(sp)
    317c:	01412c23          	sw	s4,24(sp)
    3180:	01512a23          	sw	s5,20(sp)
    3184:	01612823          	sw	s6,16(sp)
    3188:	02112623          	sw	ra,44(sp)
    318c:	02812423          	sw	s0,40(sp)
    3190:	01712623          	sw	s7,12(sp)
    3194:	00050493          	mv	s1,a0
    3198:	00058a13          	mv	s4,a1
    319c:	00060a93          	mv	s5,a2
    31a0:	00068913          	mv	s2,a3
    31a4:	00000993          	li	s3,0
    31a8:	24450b13          	add	s6,a0,580
    31ac:	00000693          	li	a3,0
    31b0:	00098613          	mv	a2,s3
    31b4:	000a0593          	mv	a1,s4
    31b8:	00048513          	mv	a0,s1
    31bc:	00000097          	auipc	ra,0x0
    31c0:	868080e7          	jalr	-1944(ra) # 2a24 <fatfs_sector_reader>
    31c4:	0c050863          	beqz	a0,3294 <fatfs_update_file_length+0x130>
    31c8:	04448413          	add	s0,s1,68
    31cc:	00040b93          	mv	s7,s0
    31d0:	00040513          	mv	a0,s0
    31d4:	fffff097          	auipc	ra,0xfffff
    31d8:	964080e7          	jalr	-1692(ra) # 1b38 <fatfs_entry_lfn_text>
    31dc:	0a051463          	bnez	a0,3284 <fatfs_update_file_length+0x120>
    31e0:	00040513          	mv	a0,s0
    31e4:	fffff097          	auipc	ra,0xfffff
    31e8:	968080e7          	jalr	-1688(ra) # 1b4c <fatfs_entry_lfn_invalid>
    31ec:	08051c63          	bnez	a0,3284 <fatfs_update_file_length+0x120>
    31f0:	00040513          	mv	a0,s0
    31f4:	fffff097          	auipc	ra,0xfffff
    31f8:	9d8080e7          	jalr	-1576(ra) # 1bcc <fatfs_entry_sfn_only>
    31fc:	08050463          	beqz	a0,3284 <fatfs_update_file_length+0x120>
    3200:	00b00613          	li	a2,11
    3204:	000a8593          	mv	a1,s5
    3208:	00040513          	mv	a0,s0
    320c:	ffffe097          	auipc	ra,0xffffe
    3210:	bb0080e7          	jalr	-1104(ra) # dbc <strncmp>
    3214:	06051863          	bnez	a0,3284 <fatfs_update_file_length+0x120>
    3218:	00895793          	srl	a5,s2,0x8
    321c:	01240e23          	sb	s2,28(s0)
    3220:	00f40ea3          	sb	a5,29(s0)
    3224:	01095793          	srl	a5,s2,0x10
    3228:	01895913          	srl	s2,s2,0x18
    322c:	00f40f23          	sb	a5,30(s0)
    3230:	01240fa3          	sb	s2,31(s0)
    3234:	00040593          	mv	a1,s0
    3238:	02000613          	li	a2,32
    323c:	00040513          	mv	a0,s0
    3240:	ffffe097          	auipc	ra,0xffffe
    3244:	b38080e7          	jalr	-1224(ra) # d78 <memcpy>
    3248:	02812403          	lw	s0,40(sp)
    324c:	0384a783          	lw	a5,56(s1)
    3250:	2444a503          	lw	a0,580(s1)
    3254:	02c12083          	lw	ra,44(sp)
    3258:	02412483          	lw	s1,36(sp)
    325c:	02012903          	lw	s2,32(sp)
    3260:	01c12983          	lw	s3,28(sp)
    3264:	01812a03          	lw	s4,24(sp)
    3268:	01412a83          	lw	s5,20(sp)
    326c:	01012b03          	lw	s6,16(sp)
    3270:	000b8593          	mv	a1,s7
    3274:	00c12b83          	lw	s7,12(sp)
    3278:	00100613          	li	a2,1
    327c:	03010113          	add	sp,sp,48
    3280:	00078067          	jr	a5
    3284:	02040413          	add	s0,s0,32
    3288:	f56414e3          	bne	s0,s6,31d0 <fatfs_update_file_length+0x6c>
    328c:	00198993          	add	s3,s3,1
    3290:	f1dff06f          	j	31ac <fatfs_update_file_length+0x48>
    3294:	02c12083          	lw	ra,44(sp)
    3298:	02812403          	lw	s0,40(sp)
    329c:	02412483          	lw	s1,36(sp)
    32a0:	02012903          	lw	s2,32(sp)
    32a4:	01c12983          	lw	s3,28(sp)
    32a8:	01812a03          	lw	s4,24(sp)
    32ac:	01412a83          	lw	s5,20(sp)
    32b0:	01012b03          	lw	s6,16(sp)
    32b4:	00c12b83          	lw	s7,12(sp)
    32b8:	00000513          	li	a0,0
    32bc:	03010113          	add	sp,sp,48
    32c0:	00008067          	ret
    32c4:	00000513          	li	a0,0
    32c8:	00008067          	ret

000032cc <fatfs_list_directory_next>:
    32cc:	ec010113          	add	sp,sp,-320
    32d0:	13212823          	sw	s2,304(sp)
    32d4:	13312623          	sw	s3,300(sp)
    32d8:	13412423          	sw	s4,296(sp)
    32dc:	13512223          	sw	s5,292(sp)
    32e0:	12112e23          	sw	ra,316(sp)
    32e4:	12812c23          	sw	s0,312(sp)
    32e8:	12912a23          	sw	s1,308(sp)
    32ec:	00050a13          	mv	s4,a0
    32f0:	00058913          	mv	s2,a1
    32f4:	00060993          	mv	s3,a2
    32f8:	10010ea3          	sb	zero,285(sp)
    32fc:	00f00a93          	li	s5,15
    3300:	00092603          	lw	a2,0(s2)
    3304:	00492583          	lw	a1,4(s2)
    3308:	00000693          	li	a3,0
    330c:	000a0513          	mv	a0,s4
    3310:	fffff097          	auipc	ra,0xfffff
    3314:	714080e7          	jalr	1812(ra) # 2a24 <fatfs_sector_reader>
    3318:	12050263          	beqz	a0,343c <fatfs_list_directory_next+0x170>
    331c:	00894483          	lbu	s1,8(s2)
    3320:	00549413          	sll	s0,s1,0x5
    3324:	04440413          	add	s0,s0,68
    3328:	008a0433          	add	s0,s4,s0
    332c:	009afc63          	bgeu	s5,s1,3344 <fatfs_list_directory_next+0x78>
    3330:	00092783          	lw	a5,0(s2)
    3334:	00090423          	sb	zero,8(s2)
    3338:	00178793          	add	a5,a5,1
    333c:	00f92023          	sw	a5,0(s2)
    3340:	fc1ff06f          	j	3300 <fatfs_list_directory_next+0x34>
    3344:	00040513          	mv	a0,s0
    3348:	ffffe097          	auipc	ra,0xffffe
    334c:	7f0080e7          	jalr	2032(ra) # 1b38 <fatfs_entry_lfn_text>
    3350:	02050263          	beqz	a0,3374 <fatfs_list_directory_next+0xa8>
    3354:	00040593          	mv	a1,s0
    3358:	01810513          	add	a0,sp,24
    335c:	ffffe097          	auipc	ra,0xffffe
    3360:	6d4080e7          	jalr	1748(ra) # 1a30 <fatfs_lfn_cache_entry>
    3364:	00148493          	add	s1,s1,1
    3368:	0ff4f493          	zext.b	s1,s1
    336c:	02040413          	add	s0,s0,32
    3370:	fbdff06f          	j	332c <fatfs_list_directory_next+0x60>
    3374:	00040513          	mv	a0,s0
    3378:	ffffe097          	auipc	ra,0xffffe
    337c:	7d4080e7          	jalr	2004(ra) # 1b4c <fatfs_entry_lfn_invalid>
    3380:	00050663          	beqz	a0,338c <fatfs_list_directory_next+0xc0>
    3384:	10010ea3          	sb	zero,285(sp)
    3388:	fddff06f          	j	3364 <fatfs_list_directory_next+0x98>
    338c:	00040593          	mv	a1,s0
    3390:	01810513          	add	a0,sp,24
    3394:	ffffe097          	auipc	ra,0xffffe
    3398:	7f0080e7          	jalr	2032(ra) # 1b84 <fatfs_entry_lfn_exists>
    339c:	0c050263          	beqz	a0,3460 <fatfs_list_directory_next+0x194>
    33a0:	01810513          	add	a0,sp,24
    33a4:	ffffe097          	auipc	ra,0xffffe
    33a8:	758080e7          	jalr	1880(ra) # 1afc <fatfs_lfn_cache_get>
    33ac:	00050593          	mv	a1,a0
    33b0:	10300613          	li	a2,259
    33b4:	00098513          	mv	a0,s3
    33b8:	ffffe097          	auipc	ra,0xffffe
    33bc:	a44080e7          	jalr	-1468(ra) # dfc <strncpy>
    33c0:	00040513          	mv	a0,s0
    33c4:	fffff097          	auipc	ra,0xfffff
    33c8:	844080e7          	jalr	-1980(ra) # 1c08 <fatfs_entry_is_dir>
    33cc:	00a03533          	snez	a0,a0
    33d0:	10a98223          	sb	a0,260(s3)
    33d4:	01d44783          	lbu	a5,29(s0)
    33d8:	01c44703          	lbu	a4,28(s0)
    33dc:	00148493          	add	s1,s1,1
    33e0:	00879793          	sll	a5,a5,0x8
    33e4:	00e7e7b3          	or	a5,a5,a4
    33e8:	01e44703          	lbu	a4,30(s0)
    33ec:	0ff4f493          	zext.b	s1,s1
    33f0:	00100513          	li	a0,1
    33f4:	01071713          	sll	a4,a4,0x10
    33f8:	00f76733          	or	a4,a4,a5
    33fc:	01f44783          	lbu	a5,31(s0)
    3400:	01879793          	sll	a5,a5,0x18
    3404:	00e7e7b3          	or	a5,a5,a4
    3408:	10f9a623          	sw	a5,268(s3)
    340c:	01544783          	lbu	a5,21(s0)
    3410:	01444703          	lbu	a4,20(s0)
    3414:	01a44683          	lbu	a3,26(s0)
    3418:	00879793          	sll	a5,a5,0x8
    341c:	00e7e7b3          	or	a5,a5,a4
    3420:	01b44703          	lbu	a4,27(s0)
    3424:	01079793          	sll	a5,a5,0x10
    3428:	00871713          	sll	a4,a4,0x8
    342c:	00d76733          	or	a4,a4,a3
    3430:	00e7e7b3          	or	a5,a5,a4
    3434:	10f9a423          	sw	a5,264(s3)
    3438:	00990423          	sb	s1,8(s2)
    343c:	13c12083          	lw	ra,316(sp)
    3440:	13812403          	lw	s0,312(sp)
    3444:	13412483          	lw	s1,308(sp)
    3448:	13012903          	lw	s2,304(sp)
    344c:	12c12983          	lw	s3,300(sp)
    3450:	12812a03          	lw	s4,296(sp)
    3454:	12412a83          	lw	s5,292(sp)
    3458:	14010113          	add	sp,sp,320
    345c:	00008067          	ret
    3460:	00040513          	mv	a0,s0
    3464:	ffffe097          	auipc	ra,0xffffe
    3468:	768080e7          	jalr	1896(ra) # 1bcc <fatfs_entry_sfn_only>
    346c:	ee050ce3          	beqz	a0,3364 <fatfs_list_directory_next+0x98>
    3470:	00d00613          	li	a2,13
    3474:	00000593          	li	a1,0
    3478:	00810513          	add	a0,sp,8
    347c:	10010ea3          	sb	zero,285(sp)
    3480:	ffffe097          	auipc	ra,0xffffe
    3484:	8dc080e7          	jalr	-1828(ra) # d5c <memset>
    3488:	00000793          	li	a5,0
    348c:	00800713          	li	a4,8
    3490:	00f40633          	add	a2,s0,a5
    3494:	00064603          	lbu	a2,0(a2)
    3498:	00810693          	add	a3,sp,8
    349c:	00f686b3          	add	a3,a3,a5
    34a0:	00c68023          	sb	a2,0(a3)
    34a4:	00178793          	add	a5,a5,1
    34a8:	fee794e3          	bne	a5,a4,3490 <fatfs_list_directory_next+0x1c4>
    34ac:	00844683          	lbu	a3,8(s0)
    34b0:	00944703          	lbu	a4,9(s0)
    34b4:	00a44783          	lbu	a5,10(s0)
    34b8:	00d108a3          	sb	a3,17(sp)
    34bc:	00e10923          	sb	a4,18(sp)
    34c0:	02000613          	li	a2,32
    34c4:	00f109a3          	sb	a5,19(sp)
    34c8:	02c70463          	beq	a4,a2,34f0 <fatfs_list_directory_next+0x224>
    34cc:	00814703          	lbu	a4,8(sp)
    34d0:	02e00793          	li	a5,46
    34d4:	02f70263          	beq	a4,a5,34f8 <fatfs_list_directory_next+0x22c>
    34d8:	00810593          	add	a1,sp,8
    34dc:	00098513          	mv	a0,s3
    34e0:	00f10823          	sb	a5,16(sp)
    34e4:	fffff097          	auipc	ra,0xfffff
    34e8:	084080e7          	jalr	132(ra) # 2568 <fatfs_get_sfn_display_name>
    34ec:	ed5ff06f          	j	33c0 <fatfs_list_directory_next+0xf4>
    34f0:	fce79ee3          	bne	a5,a4,34cc <fatfs_list_directory_next+0x200>
    34f4:	fcf69ce3          	bne	a3,a5,34cc <fatfs_list_directory_next+0x200>
    34f8:	02000793          	li	a5,32
    34fc:	fddff06f          	j	34d8 <fatfs_list_directory_next+0x20c>

00003500 <fl_readdir>:
    3500:	000067b7          	lui	a5,0x6
    3504:	1287a783          	lw	a5,296(a5) # 6128 <_filelib_init>
    3508:	fe010113          	add	sp,sp,-32
    350c:	00912a23          	sw	s1,20(sp)
    3510:	01212823          	sw	s2,16(sp)
    3514:	00112e23          	sw	ra,28(sp)
    3518:	00812c23          	sw	s0,24(sp)
    351c:	01312623          	sw	s3,12(sp)
    3520:	00050493          	mv	s1,a0
    3524:	00058913          	mv	s2,a1
    3528:	00079663          	bnez	a5,3534 <fl_readdir+0x34>
    352c:	ffffe097          	auipc	ra,0xffffe
    3530:	48c080e7          	jalr	1164(ra) # 19b8 <fl_init>
    3534:	0000a437          	lui	s0,0xa
    3538:	18840793          	add	a5,s0,392 # a188 <_fs>
    353c:	03c7a783          	lw	a5,60(a5)
    3540:	18840993          	add	s3,s0,392
    3544:	00078463          	beqz	a5,354c <fl_readdir+0x4c>
    3548:	000780e7          	jalr	a5
    354c:	18840513          	add	a0,s0,392
    3550:	00090613          	mv	a2,s2
    3554:	00048593          	mv	a1,s1
    3558:	00000097          	auipc	ra,0x0
    355c:	d74080e7          	jalr	-652(ra) # 32cc <fatfs_list_directory_next>
    3560:	0409a783          	lw	a5,64(s3)
    3564:	00050413          	mv	s0,a0
    3568:	00078463          	beqz	a5,3570 <fl_readdir+0x70>
    356c:	000780e7          	jalr	a5
    3570:	01c12083          	lw	ra,28(sp)
    3574:	00143513          	seqz	a0,s0
    3578:	01812403          	lw	s0,24(sp)
    357c:	01412483          	lw	s1,20(sp)
    3580:	01012903          	lw	s2,16(sp)
    3584:	00c12983          	lw	s3,12(sp)
    3588:	40a00533          	neg	a0,a0
    358c:	02010113          	add	sp,sp,32
    3590:	00008067          	ret

00003594 <_read_sectors>:
    3594:	fd010113          	add	sp,sp,-48
    3598:	01612823          	sw	s6,16(sp)
    359c:	0000ab37          	lui	s6,0xa
    35a0:	01512a23          	sw	s5,20(sp)
    35a4:	188b4a83          	lbu	s5,392(s6) # a188 <_fs>
    35a8:	01412c23          	sw	s4,24(sp)
    35ac:	00058a13          	mv	s4,a1
    35b0:	02912223          	sw	s1,36(sp)
    35b4:	000a8593          	mv	a1,s5
    35b8:	00050493          	mv	s1,a0
    35bc:	000a0513          	mv	a0,s4
    35c0:	02112623          	sw	ra,44(sp)
    35c4:	02812423          	sw	s0,40(sp)
    35c8:	03212023          	sw	s2,32(sp)
    35cc:	00068413          	mv	s0,a3
    35d0:	01712623          	sw	s7,12(sp)
    35d4:	01812423          	sw	s8,8(sp)
    35d8:	01312e23          	sw	s3,28(sp)
    35dc:	00060c13          	mv	s8,a2
    35e0:	ffffd097          	auipc	ra,0xffffd
    35e4:	6d0080e7          	jalr	1744(ra) # cb0 <__udivsi3>
    35e8:	00050913          	mv	s2,a0
    35ec:	000a8593          	mv	a1,s5
    35f0:	000a0513          	mv	a0,s4
    35f4:	ffffd097          	auipc	ra,0xffffd
    35f8:	704080e7          	jalr	1796(ra) # cf8 <__umodsi3>
    35fc:	00a407b3          	add	a5,s0,a0
    3600:	00050b93          	mv	s7,a0
    3604:	00fafe63          	bgeu	s5,a5,3620 <_read_sectors+0x8c>
    3608:	00090593          	mv	a1,s2
    360c:	000a8513          	mv	a0,s5
    3610:	ffffe097          	auipc	ra,0xffffe
    3614:	ee8080e7          	jalr	-280(ra) # 14f8 <__mulsi3>
    3618:	414a87b3          	sub	a5,s5,s4
    361c:	00f50433          	add	s0,a0,a5
    3620:	2284a983          	lw	s3,552(s1)
    3624:	07299863          	bne	s3,s2,3694 <_read_sectors+0x100>
    3628:	22c4a583          	lw	a1,556(s1)
    362c:	fff00793          	li	a5,-1
    3630:	02f58663          	beq	a1,a5,365c <_read_sectors+0xc8>
    3634:	188b0513          	add	a0,s6,392
    3638:	ffffe097          	auipc	ra,0xffffe
    363c:	244080e7          	jalr	580(ra) # 187c <fatfs_lba_of_cluster>
    3640:	017505b3          	add	a1,a0,s7
    3644:	00040693          	mv	a3,s0
    3648:	000c0613          	mv	a2,s8
    364c:	188b0513          	add	a0,s6,392
    3650:	ffffe097          	auipc	ra,0xffffe
    3654:	27c080e7          	jalr	636(ra) # 18cc <fatfs_sector_read>
    3658:	00051463          	bnez	a0,3660 <_read_sectors+0xcc>
    365c:	00000413          	li	s0,0
    3660:	02c12083          	lw	ra,44(sp)
    3664:	00040513          	mv	a0,s0
    3668:	02812403          	lw	s0,40(sp)
    366c:	02412483          	lw	s1,36(sp)
    3670:	02012903          	lw	s2,32(sp)
    3674:	01c12983          	lw	s3,28(sp)
    3678:	01812a03          	lw	s4,24(sp)
    367c:	01412a83          	lw	s5,20(sp)
    3680:	01012b03          	lw	s6,16(sp)
    3684:	00c12b83          	lw	s7,12(sp)
    3688:	00812c03          	lw	s8,8(sp)
    368c:	03010113          	add	sp,sp,48
    3690:	00008067          	ret
    3694:	035a6463          	bltu	s4,s5,36bc <_read_sectors+0x128>
    3698:	00198793          	add	a5,s3,1
    369c:	03279063          	bne	a5,s2,36bc <_read_sectors+0x128>
    36a0:	22c4a583          	lw	a1,556(s1)
    36a4:	0329e263          	bltu	s3,s2,36c8 <_read_sectors+0x134>
    36a8:	fff00793          	li	a5,-1
    36ac:	faf588e3          	beq	a1,a5,365c <_read_sectors+0xc8>
    36b0:	22b4a623          	sw	a1,556(s1)
    36b4:	2324a423          	sw	s2,552(s1)
    36b8:	f7dff06f          	j	3634 <_read_sectors+0xa0>
    36bc:	0044a583          	lw	a1,4(s1)
    36c0:	00000993          	li	s3,0
    36c4:	fe1ff06f          	j	36a4 <_read_sectors+0x110>
    36c8:	188b0513          	add	a0,s6,392
    36cc:	fffff097          	auipc	ra,0xfffff
    36d0:	248080e7          	jalr	584(ra) # 2914 <fatfs_find_next_cluster>
    36d4:	00050593          	mv	a1,a0
    36d8:	00198993          	add	s3,s3,1
    36dc:	fc9ff06f          	j	36a4 <_read_sectors+0x110>

000036e0 <fatfs_set_fs_info_next_free_cluster>:
    36e0:	03052783          	lw	a5,48(a0)
    36e4:	0a078863          	beqz	a5,3794 <fatfs_set_fs_info_next_free_cluster+0xb4>
    36e8:	ff010113          	add	sp,sp,-16
    36ec:	01c52783          	lw	a5,28(a0)
    36f0:	01212023          	sw	s2,0(sp)
    36f4:	00058913          	mv	s2,a1
    36f8:	01855583          	lhu	a1,24(a0)
    36fc:	00812423          	sw	s0,8(sp)
    3700:	00912223          	sw	s1,4(sp)
    3704:	00f585b3          	add	a1,a1,a5
    3708:	00112623          	sw	ra,12(sp)
    370c:	00050493          	mv	s1,a0
    3710:	ffffe097          	auipc	ra,0xffffe
    3714:	fc0080e7          	jalr	-64(ra) # 16d0 <fatfs_fat_read_sector>
    3718:	00050413          	mv	s0,a0
    371c:	06050063          	beqz	a0,377c <fatfs_set_fs_info_next_free_cluster+0x9c>
    3720:	20852783          	lw	a5,520(a0)
    3724:	00895713          	srl	a4,s2,0x8
    3728:	1f278623          	sb	s2,492(a5)
    372c:	20852783          	lw	a5,520(a0)
    3730:	1ee786a3          	sb	a4,493(a5)
    3734:	20852783          	lw	a5,520(a0)
    3738:	01095713          	srl	a4,s2,0x10
    373c:	1ee78723          	sb	a4,494(a5)
    3740:	20852783          	lw	a5,520(a0)
    3744:	01895713          	srl	a4,s2,0x18
    3748:	1ee787a3          	sb	a4,495(a5)
    374c:	00100793          	li	a5,1
    3750:	20f52223          	sw	a5,516(a0)
    3754:	0384a783          	lw	a5,56(s1)
    3758:	0324a223          	sw	s2,36(s1)
    375c:	00078a63          	beqz	a5,3770 <fatfs_set_fs_info_next_free_cluster+0x90>
    3760:	00050593          	mv	a1,a0
    3764:	20052503          	lw	a0,512(a0)
    3768:	00100613          	li	a2,1
    376c:	000780e7          	jalr	a5
    3770:	fff00793          	li	a5,-1
    3774:	20f42023          	sw	a5,512(s0)
    3778:	20042223          	sw	zero,516(s0)
    377c:	00c12083          	lw	ra,12(sp)
    3780:	00812403          	lw	s0,8(sp)
    3784:	00412483          	lw	s1,4(sp)
    3788:	00012903          	lw	s2,0(sp)
    378c:	01010113          	add	sp,sp,16
    3790:	00008067          	ret
    3794:	00008067          	ret

00003798 <fatfs_find_blank_cluster>:
    3798:	fe010113          	add	sp,sp,-32
    379c:	01312623          	sw	s3,12(sp)
    37a0:	01512223          	sw	s5,4(sp)
    37a4:	000109b7          	lui	s3,0x10
    37a8:	10000ab7          	lui	s5,0x10000
    37ac:	00912a23          	sw	s1,20(sp)
    37b0:	01212823          	sw	s2,16(sp)
    37b4:	01412423          	sw	s4,8(sp)
    37b8:	00112e23          	sw	ra,28(sp)
    37bc:	00812c23          	sw	s0,24(sp)
    37c0:	00050913          	mv	s2,a0
    37c4:	00058493          	mv	s1,a1
    37c8:	00060a13          	mv	s4,a2
    37cc:	fff98993          	add	s3,s3,-1 # ffff <Songs+0x50af>
    37d0:	fffa8a93          	add	s5,s5,-1 # fffffff <__stacktop+0xffeffff>
    37d4:	03092783          	lw	a5,48(s2)
    37d8:	0074d413          	srl	s0,s1,0x7
    37dc:	00079463          	bnez	a5,37e4 <fatfs_find_blank_cluster+0x4c>
    37e0:	0084d413          	srl	s0,s1,0x8
    37e4:	02092783          	lw	a5,32(s2)
    37e8:	0cf47463          	bgeu	s0,a5,38b0 <fatfs_find_blank_cluster+0x118>
    37ec:	01492583          	lw	a1,20(s2)
    37f0:	00090513          	mv	a0,s2
    37f4:	00b405b3          	add	a1,s0,a1
    37f8:	ffffe097          	auipc	ra,0xffffe
    37fc:	ed8080e7          	jalr	-296(ra) # 16d0 <fatfs_fat_read_sector>
    3800:	0a050863          	beqz	a0,38b0 <fatfs_find_blank_cluster+0x118>
    3804:	03092783          	lw	a5,48(s2)
    3808:	20852703          	lw	a4,520(a0)
    380c:	04079c63          	bnez	a5,3864 <fatfs_find_blank_cluster+0xcc>
    3810:	00841413          	sll	s0,s0,0x8
    3814:	40848433          	sub	s0,s1,s0
    3818:	00141413          	sll	s0,s0,0x1
    381c:	01347433          	and	s0,s0,s3
    3820:	00870733          	add	a4,a4,s0
    3824:	00174783          	lbu	a5,1(a4)
    3828:	00074703          	lbu	a4,0(a4)
    382c:	00879793          	sll	a5,a5,0x8
    3830:	00e787b3          	add	a5,a5,a4
    3834:	06079a63          	bnez	a5,38a8 <fatfs_find_blank_cluster+0x110>
    3838:	009a2023          	sw	s1,0(s4)
    383c:	00100513          	li	a0,1
    3840:	01c12083          	lw	ra,28(sp)
    3844:	01812403          	lw	s0,24(sp)
    3848:	01412483          	lw	s1,20(sp)
    384c:	01012903          	lw	s2,16(sp)
    3850:	00c12983          	lw	s3,12(sp)
    3854:	00812a03          	lw	s4,8(sp)
    3858:	00412a83          	lw	s5,4(sp)
    385c:	02010113          	add	sp,sp,32
    3860:	00008067          	ret
    3864:	00741413          	sll	s0,s0,0x7
    3868:	40848433          	sub	s0,s1,s0
    386c:	00241413          	sll	s0,s0,0x2
    3870:	01347433          	and	s0,s0,s3
    3874:	00870733          	add	a4,a4,s0
    3878:	00374783          	lbu	a5,3(a4)
    387c:	00274683          	lbu	a3,2(a4)
    3880:	01879793          	sll	a5,a5,0x18
    3884:	01069693          	sll	a3,a3,0x10
    3888:	00d787b3          	add	a5,a5,a3
    388c:	00074683          	lbu	a3,0(a4)
    3890:	00174703          	lbu	a4,1(a4)
    3894:	00d787b3          	add	a5,a5,a3
    3898:	00871713          	sll	a4,a4,0x8
    389c:	00e787b3          	add	a5,a5,a4
    38a0:	0157f7b3          	and	a5,a5,s5
    38a4:	f91ff06f          	j	3834 <fatfs_find_blank_cluster+0x9c>
    38a8:	00148493          	add	s1,s1,1
    38ac:	f29ff06f          	j	37d4 <fatfs_find_blank_cluster+0x3c>
    38b0:	00000513          	li	a0,0
    38b4:	f8dff06f          	j	3840 <fatfs_find_blank_cluster+0xa8>

000038b8 <fatfs_fat_set_cluster>:
    38b8:	03052783          	lw	a5,48(a0)
    38bc:	fe010113          	add	sp,sp,-32
    38c0:	00812c23          	sw	s0,24(sp)
    38c4:	00912a23          	sw	s1,20(sp)
    38c8:	01212823          	sw	s2,16(sp)
    38cc:	01312623          	sw	s3,12(sp)
    38d0:	00112e23          	sw	ra,28(sp)
    38d4:	00050993          	mv	s3,a0
    38d8:	00058413          	mv	s0,a1
    38dc:	00060493          	mv	s1,a2
    38e0:	0085d913          	srl	s2,a1,0x8
    38e4:	00078463          	beqz	a5,38ec <fatfs_fat_set_cluster+0x34>
    38e8:	0075d913          	srl	s2,a1,0x7
    38ec:	0149a583          	lw	a1,20(s3)
    38f0:	00098513          	mv	a0,s3
    38f4:	00b905b3          	add	a1,s2,a1
    38f8:	ffffe097          	auipc	ra,0xffffe
    38fc:	dd8080e7          	jalr	-552(ra) # 16d0 <fatfs_fat_read_sector>
    3900:	00050793          	mv	a5,a0
    3904:	00000513          	li	a0,0
    3908:	04078c63          	beqz	a5,3960 <fatfs_fat_set_cluster+0xa8>
    390c:	0309a683          	lw	a3,48(s3)
    3910:	2087a703          	lw	a4,520(a5)
    3914:	0ff4f613          	zext.b	a2,s1
    3918:	06069263          	bnez	a3,397c <fatfs_fat_set_cluster+0xc4>
    391c:	00891913          	sll	s2,s2,0x8
    3920:	41240433          	sub	s0,s0,s2
    3924:	000106b7          	lui	a3,0x10
    3928:	00141413          	sll	s0,s0,0x1
    392c:	fff68693          	add	a3,a3,-1 # ffff <Songs+0x50af>
    3930:	00d47433          	and	s0,s0,a3
    3934:	00870733          	add	a4,a4,s0
    3938:	00c70023          	sb	a2,0(a4)
    393c:	2087a703          	lw	a4,520(a5)
    3940:	01049493          	sll	s1,s1,0x10
    3944:	0104d493          	srl	s1,s1,0x10
    3948:	00870733          	add	a4,a4,s0
    394c:	0084d493          	srl	s1,s1,0x8
    3950:	009700a3          	sb	s1,1(a4)
    3954:	00100713          	li	a4,1
    3958:	20e7a223          	sw	a4,516(a5)
    395c:	00100513          	li	a0,1
    3960:	01c12083          	lw	ra,28(sp)
    3964:	01812403          	lw	s0,24(sp)
    3968:	01412483          	lw	s1,20(sp)
    396c:	01012903          	lw	s2,16(sp)
    3970:	00c12983          	lw	s3,12(sp)
    3974:	02010113          	add	sp,sp,32
    3978:	00008067          	ret
    397c:	00791913          	sll	s2,s2,0x7
    3980:	41240433          	sub	s0,s0,s2
    3984:	000106b7          	lui	a3,0x10
    3988:	fff68693          	add	a3,a3,-1 # ffff <Songs+0x50af>
    398c:	00241413          	sll	s0,s0,0x2
    3990:	00d47433          	and	s0,s0,a3
    3994:	00870733          	add	a4,a4,s0
    3998:	00c70023          	sb	a2,0(a4)
    399c:	2087a703          	lw	a4,520(a5)
    39a0:	0084d693          	srl	a3,s1,0x8
    39a4:	00870733          	add	a4,a4,s0
    39a8:	00d700a3          	sb	a3,1(a4)
    39ac:	2087a703          	lw	a4,520(a5)
    39b0:	0104d693          	srl	a3,s1,0x10
    39b4:	0184d493          	srl	s1,s1,0x18
    39b8:	00870733          	add	a4,a4,s0
    39bc:	00d70123          	sb	a3,2(a4)
    39c0:	2087a703          	lw	a4,520(a5)
    39c4:	00870733          	add	a4,a4,s0
    39c8:	009701a3          	sb	s1,3(a4)
    39cc:	f89ff06f          	j	3954 <fatfs_fat_set_cluster+0x9c>

000039d0 <fatfs_free_cluster_chain>:
    39d0:	fe010113          	add	sp,sp,-32
    39d4:	00812c23          	sw	s0,24(sp)
    39d8:	01212823          	sw	s2,16(sp)
    39dc:	00112e23          	sw	ra,28(sp)
    39e0:	00912a23          	sw	s1,20(sp)
    39e4:	00050413          	mv	s0,a0
    39e8:	ffd00913          	li	s2,-3
    39ec:	fff58793          	add	a5,a1,-1
    39f0:	02f97063          	bgeu	s2,a5,3a10 <fatfs_free_cluster_chain+0x40>
    39f4:	01c12083          	lw	ra,28(sp)
    39f8:	01812403          	lw	s0,24(sp)
    39fc:	01412483          	lw	s1,20(sp)
    3a00:	01012903          	lw	s2,16(sp)
    3a04:	00100513          	li	a0,1
    3a08:	02010113          	add	sp,sp,32
    3a0c:	00008067          	ret
    3a10:	00040513          	mv	a0,s0
    3a14:	00b12623          	sw	a1,12(sp)
    3a18:	fffff097          	auipc	ra,0xfffff
    3a1c:	efc080e7          	jalr	-260(ra) # 2914 <fatfs_find_next_cluster>
    3a20:	00c12583          	lw	a1,12(sp)
    3a24:	00050493          	mv	s1,a0
    3a28:	00000613          	li	a2,0
    3a2c:	00040513          	mv	a0,s0
    3a30:	00000097          	auipc	ra,0x0
    3a34:	e88080e7          	jalr	-376(ra) # 38b8 <fatfs_fat_set_cluster>
    3a38:	00048593          	mv	a1,s1
    3a3c:	fb1ff06f          	j	39ec <fatfs_free_cluster_chain+0x1c>

00003a40 <fatfs_fat_add_cluster_to_chain>:
    3a40:	fff00793          	li	a5,-1
    3a44:	02f59463          	bne	a1,a5,3a6c <fatfs_fat_add_cluster_to_chain+0x2c>
    3a48:	00000513          	li	a0,0
    3a4c:	00008067          	ret
    3a50:	00000513          	li	a0,0
    3a54:	01c12083          	lw	ra,28(sp)
    3a58:	01812403          	lw	s0,24(sp)
    3a5c:	01412483          	lw	s1,20(sp)
    3a60:	01012903          	lw	s2,16(sp)
    3a64:	02010113          	add	sp,sp,32
    3a68:	00008067          	ret
    3a6c:	fe010113          	add	sp,sp,-32
    3a70:	00812c23          	sw	s0,24(sp)
    3a74:	00912a23          	sw	s1,20(sp)
    3a78:	01212823          	sw	s2,16(sp)
    3a7c:	00050413          	mv	s0,a0
    3a80:	00112e23          	sw	ra,28(sp)
    3a84:	00058513          	mv	a0,a1
    3a88:	00060493          	mv	s1,a2
    3a8c:	fff00913          	li	s2,-1
    3a90:	00050593          	mv	a1,a0
    3a94:	00a12623          	sw	a0,12(sp)
    3a98:	00040513          	mv	a0,s0
    3a9c:	fffff097          	auipc	ra,0xfffff
    3aa0:	e78080e7          	jalr	-392(ra) # 2914 <fatfs_find_next_cluster>
    3aa4:	fa0506e3          	beqz	a0,3a50 <fatfs_fat_add_cluster_to_chain+0x10>
    3aa8:	00c12583          	lw	a1,12(sp)
    3aac:	ff2512e3          	bne	a0,s2,3a90 <fatfs_fat_add_cluster_to_chain+0x50>
    3ab0:	00048613          	mv	a2,s1
    3ab4:	00040513          	mv	a0,s0
    3ab8:	00000097          	auipc	ra,0x0
    3abc:	e00080e7          	jalr	-512(ra) # 38b8 <fatfs_fat_set_cluster>
    3ac0:	fff00613          	li	a2,-1
    3ac4:	00048593          	mv	a1,s1
    3ac8:	00040513          	mv	a0,s0
    3acc:	00000097          	auipc	ra,0x0
    3ad0:	dec080e7          	jalr	-532(ra) # 38b8 <fatfs_fat_set_cluster>
    3ad4:	00100513          	li	a0,1
    3ad8:	f7dff06f          	j	3a54 <fatfs_fat_add_cluster_to_chain+0x14>

00003adc <fatfs_add_free_space>:
    3adc:	02452703          	lw	a4,36(a0)
    3ae0:	fd010113          	add	sp,sp,-48
    3ae4:	02812423          	sw	s0,40(sp)
    3ae8:	03212023          	sw	s2,32(sp)
    3aec:	01412c23          	sw	s4,24(sp)
    3af0:	01512a23          	sw	s5,20(sp)
    3af4:	02112623          	sw	ra,44(sp)
    3af8:	02912223          	sw	s1,36(sp)
    3afc:	01312e23          	sw	s3,28(sp)
    3b00:	fff00793          	li	a5,-1
    3b04:	0005aa83          	lw	s5,0(a1)
    3b08:	00050413          	mv	s0,a0
    3b0c:	00058913          	mv	s2,a1
    3b10:	00060a13          	mv	s4,a2
    3b14:	00f70863          	beq	a4,a5,3b24 <fatfs_add_free_space+0x48>
    3b18:	fff00593          	li	a1,-1
    3b1c:	00000097          	auipc	ra,0x0
    3b20:	bc4080e7          	jalr	-1084(ra) # 36e0 <fatfs_set_fs_info_next_free_cluster>
    3b24:	00000493          	li	s1,0
    3b28:	03449663          	bne	s1,s4,3b54 <fatfs_add_free_space+0x78>
    3b2c:	00100513          	li	a0,1
    3b30:	02c12083          	lw	ra,44(sp)
    3b34:	02812403          	lw	s0,40(sp)
    3b38:	02412483          	lw	s1,36(sp)
    3b3c:	02012903          	lw	s2,32(sp)
    3b40:	01c12983          	lw	s3,28(sp)
    3b44:	01812a03          	lw	s4,24(sp)
    3b48:	01412a83          	lw	s5,20(sp)
    3b4c:	03010113          	add	sp,sp,48
    3b50:	00008067          	ret
    3b54:	00842583          	lw	a1,8(s0)
    3b58:	00c10613          	add	a2,sp,12
    3b5c:	00040513          	mv	a0,s0
    3b60:	00000097          	auipc	ra,0x0
    3b64:	c38080e7          	jalr	-968(ra) # 3798 <fatfs_find_blank_cluster>
    3b68:	fc0504e3          	beqz	a0,3b30 <fatfs_add_free_space+0x54>
    3b6c:	00c12983          	lw	s3,12(sp)
    3b70:	000a8593          	mv	a1,s5
    3b74:	00040513          	mv	a0,s0
    3b78:	00098613          	mv	a2,s3
    3b7c:	00000097          	auipc	ra,0x0
    3b80:	d3c080e7          	jalr	-708(ra) # 38b8 <fatfs_fat_set_cluster>
    3b84:	fff00613          	li	a2,-1
    3b88:	00098593          	mv	a1,s3
    3b8c:	00040513          	mv	a0,s0
    3b90:	00000097          	auipc	ra,0x0
    3b94:	d28080e7          	jalr	-728(ra) # 38b8 <fatfs_fat_set_cluster>
    3b98:	00049463          	bnez	s1,3ba0 <fatfs_add_free_space+0xc4>
    3b9c:	01392023          	sw	s3,0(s2)
    3ba0:	00148493          	add	s1,s1,1
    3ba4:	00098a93          	mv	s5,s3
    3ba8:	f81ff06f          	j	3b28 <fatfs_add_free_space+0x4c>

00003bac <_write_sectors>:
    3bac:	fb010113          	add	sp,sp,-80
    3bb0:	03312e23          	sw	s3,60(sp)
    3bb4:	0000a9b7          	lui	s3,0xa
    3bb8:	03612823          	sw	s6,48(sp)
    3bbc:	1889cb03          	lbu	s6,392(s3) # a188 <_fs>
    3bc0:	03512a23          	sw	s5,52(sp)
    3bc4:	00058a93          	mv	s5,a1
    3bc8:	fff00793          	li	a5,-1
    3bcc:	04812423          	sw	s0,72(sp)
    3bd0:	000b0593          	mv	a1,s6
    3bd4:	00050413          	mv	s0,a0
    3bd8:	000a8513          	mv	a0,s5
    3bdc:	00f12e23          	sw	a5,28(sp)
    3be0:	04112623          	sw	ra,76(sp)
    3be4:	04912223          	sw	s1,68(sp)
    3be8:	05212023          	sw	s2,64(sp)
    3bec:	03712623          	sw	s7,44(sp)
    3bf0:	03812423          	sw	s8,40(sp)
    3bf4:	00068b93          	mv	s7,a3
    3bf8:	03912223          	sw	s9,36(sp)
    3bfc:	03a12023          	sw	s10,32(sp)
    3c00:	00060c93          	mv	s9,a2
    3c04:	03412c23          	sw	s4,56(sp)
    3c08:	ffffd097          	auipc	ra,0xffffd
    3c0c:	0a8080e7          	jalr	168(ra) # cb0 <__udivsi3>
    3c10:	00050493          	mv	s1,a0
    3c14:	000b0593          	mv	a1,s6
    3c18:	000a8513          	mv	a0,s5
    3c1c:	ffffd097          	auipc	ra,0xffffd
    3c20:	0dc080e7          	jalr	220(ra) # cf8 <__umodsi3>
    3c24:	00ab87b3          	add	a5,s7,a0
    3c28:	00050c13          	mv	s8,a0
    3c2c:	18898d13          	add	s10,s3,392
    3c30:	000b8913          	mv	s2,s7
    3c34:	00fb7e63          	bgeu	s6,a5,3c50 <_write_sectors+0xa4>
    3c38:	00048593          	mv	a1,s1
    3c3c:	000b0513          	mv	a0,s6
    3c40:	ffffe097          	auipc	ra,0xffffe
    3c44:	8b8080e7          	jalr	-1864(ra) # 14f8 <__mulsi3>
    3c48:	415b07b3          	sub	a5,s6,s5
    3c4c:	00f50933          	add	s2,a0,a5
    3c50:	22842a03          	lw	s4,552(s0)
    3c54:	029a1a63          	bne	s4,s1,3c88 <_write_sectors+0xdc>
    3c58:	22c42583          	lw	a1,556(s0)
    3c5c:	18898513          	add	a0,s3,392
    3c60:	ffffe097          	auipc	ra,0xffffe
    3c64:	c1c080e7          	jalr	-996(ra) # 187c <fatfs_lba_of_cluster>
    3c68:	018505b3          	add	a1,a0,s8
    3c6c:	00090693          	mv	a3,s2
    3c70:	000c8613          	mv	a2,s9
    3c74:	18898513          	add	a0,s3,392
    3c78:	ffffe097          	auipc	ra,0xffffe
    3c7c:	c6c080e7          	jalr	-916(ra) # 18e4 <fatfs_sector_write>
    3c80:	04050a63          	beqz	a0,3cd4 <_write_sectors+0x128>
    3c84:	0540006f          	j	3cd8 <_write_sectors+0x12c>
    3c88:	096ae663          	bltu	s5,s6,3d14 <_write_sectors+0x168>
    3c8c:	001a0793          	add	a5,s4,1
    3c90:	08979263          	bne	a5,s1,3d14 <_write_sectors+0x168>
    3c94:	22c42583          	lw	a1,556(s0)
    3c98:	fff00a93          	li	s5,-1
    3c9c:	089a6263          	bltu	s4,s1,3d20 <_write_sectors+0x174>
    3ca0:	fff00793          	li	a5,-1
    3ca4:	0af59463          	bne	a1,a5,3d4c <_write_sectors+0x1a0>
    3ca8:	000d4583          	lbu	a1,0(s10)
    3cac:	fff58513          	add	a0,a1,-1
    3cb0:	01750533          	add	a0,a0,s7
    3cb4:	ffffd097          	auipc	ra,0xffffd
    3cb8:	ffc080e7          	jalr	-4(ra) # cb0 <__udivsi3>
    3cbc:	00050613          	mv	a2,a0
    3cc0:	01c10593          	add	a1,sp,28
    3cc4:	18898513          	add	a0,s3,392
    3cc8:	00000097          	auipc	ra,0x0
    3ccc:	e14080e7          	jalr	-492(ra) # 3adc <fatfs_add_free_space>
    3cd0:	06051c63          	bnez	a0,3d48 <_write_sectors+0x19c>
    3cd4:	00000913          	li	s2,0
    3cd8:	04c12083          	lw	ra,76(sp)
    3cdc:	04812403          	lw	s0,72(sp)
    3ce0:	04412483          	lw	s1,68(sp)
    3ce4:	03c12983          	lw	s3,60(sp)
    3ce8:	03812a03          	lw	s4,56(sp)
    3cec:	03412a83          	lw	s5,52(sp)
    3cf0:	03012b03          	lw	s6,48(sp)
    3cf4:	02c12b83          	lw	s7,44(sp)
    3cf8:	02812c03          	lw	s8,40(sp)
    3cfc:	02412c83          	lw	s9,36(sp)
    3d00:	02012d03          	lw	s10,32(sp)
    3d04:	00090513          	mv	a0,s2
    3d08:	04012903          	lw	s2,64(sp)
    3d0c:	05010113          	add	sp,sp,80
    3d10:	00008067          	ret
    3d14:	00442583          	lw	a1,4(s0)
    3d18:	00000a13          	li	s4,0
    3d1c:	f7dff06f          	j	3c98 <_write_sectors+0xec>
    3d20:	18898513          	add	a0,s3,392
    3d24:	00b12623          	sw	a1,12(sp)
    3d28:	fffff097          	auipc	ra,0xfffff
    3d2c:	bec080e7          	jalr	-1044(ra) # 2914 <fatfs_find_next_cluster>
    3d30:	00c12583          	lw	a1,12(sp)
    3d34:	00b12e23          	sw	a1,28(sp)
    3d38:	f75508e3          	beq	a0,s5,3ca8 <_write_sectors+0xfc>
    3d3c:	001a0a13          	add	s4,s4,1
    3d40:	00050593          	mv	a1,a0
    3d44:	f59ff06f          	j	3c9c <_write_sectors+0xf0>
    3d48:	01c12583          	lw	a1,28(sp)
    3d4c:	22b42623          	sw	a1,556(s0)
    3d50:	22942423          	sw	s1,552(s0)
    3d54:	f09ff06f          	j	3c5c <_write_sectors+0xb0>

00003d58 <fl_fflush>:
    3d58:	000067b7          	lui	a5,0x6
    3d5c:	1287a783          	lw	a5,296(a5) # 6128 <_filelib_init>
    3d60:	ff010113          	add	sp,sp,-16
    3d64:	00812423          	sw	s0,8(sp)
    3d68:	00112623          	sw	ra,12(sp)
    3d6c:	00912223          	sw	s1,4(sp)
    3d70:	00050413          	mv	s0,a0
    3d74:	00079663          	bnez	a5,3d80 <fl_fflush+0x28>
    3d78:	ffffe097          	auipc	ra,0xffffe
    3d7c:	c40080e7          	jalr	-960(ra) # 19b8 <fl_init>
    3d80:	04040863          	beqz	s0,3dd0 <fl_fflush+0x78>
    3d84:	0000a7b7          	lui	a5,0xa
    3d88:	18878713          	add	a4,a5,392 # a188 <_fs>
    3d8c:	03c72703          	lw	a4,60(a4)
    3d90:	18878493          	add	s1,a5,392
    3d94:	00070463          	beqz	a4,3d9c <fl_fflush+0x44>
    3d98:	000700e7          	jalr	a4
    3d9c:	43442783          	lw	a5,1076(s0)
    3da0:	02078263          	beqz	a5,3dc4 <fl_fflush+0x6c>
    3da4:	43042583          	lw	a1,1072(s0)
    3da8:	00100693          	li	a3,1
    3dac:	23040613          	add	a2,s0,560
    3db0:	00040513          	mv	a0,s0
    3db4:	00000097          	auipc	ra,0x0
    3db8:	df8080e7          	jalr	-520(ra) # 3bac <_write_sectors>
    3dbc:	00050463          	beqz	a0,3dc4 <fl_fflush+0x6c>
    3dc0:	42042a23          	sw	zero,1076(s0)
    3dc4:	0404a783          	lw	a5,64(s1)
    3dc8:	00078463          	beqz	a5,3dd0 <fl_fflush+0x78>
    3dcc:	000780e7          	jalr	a5
    3dd0:	00c12083          	lw	ra,12(sp)
    3dd4:	00812403          	lw	s0,8(sp)
    3dd8:	00412483          	lw	s1,4(sp)
    3ddc:	00000513          	li	a0,0
    3de0:	01010113          	add	sp,sp,16
    3de4:	00008067          	ret

00003de8 <fl_fclose>:
    3de8:	000067b7          	lui	a5,0x6
    3dec:	1287a783          	lw	a5,296(a5) # 6128 <_filelib_init>
    3df0:	ff010113          	add	sp,sp,-16
    3df4:	00812423          	sw	s0,8(sp)
    3df8:	00112623          	sw	ra,12(sp)
    3dfc:	00912223          	sw	s1,4(sp)
    3e00:	01212023          	sw	s2,0(sp)
    3e04:	00050413          	mv	s0,a0
    3e08:	00079663          	bnez	a5,3e14 <fl_fclose+0x2c>
    3e0c:	ffffe097          	auipc	ra,0xffffe
    3e10:	bac080e7          	jalr	-1108(ra) # 19b8 <fl_init>
    3e14:	08040e63          	beqz	s0,3eb0 <fl_fclose+0xc8>
    3e18:	0000a4b7          	lui	s1,0xa
    3e1c:	18848793          	add	a5,s1,392 # a188 <_fs>
    3e20:	03c7a783          	lw	a5,60(a5)
    3e24:	18848913          	add	s2,s1,392
    3e28:	00078463          	beqz	a5,3e30 <fl_fclose+0x48>
    3e2c:	000780e7          	jalr	a5
    3e30:	00040513          	mv	a0,s0
    3e34:	00000097          	auipc	ra,0x0
    3e38:	f24080e7          	jalr	-220(ra) # 3d58 <fl_fflush>
    3e3c:	01042783          	lw	a5,16(s0)
    3e40:	00078e63          	beqz	a5,3e5c <fl_fclose+0x74>
    3e44:	00c42683          	lw	a3,12(s0)
    3e48:	00042583          	lw	a1,0(s0)
    3e4c:	21c40613          	add	a2,s0,540
    3e50:	18848513          	add	a0,s1,392
    3e54:	fffff097          	auipc	ra,0xfffff
    3e58:	310080e7          	jalr	784(ra) # 3164 <fatfs_update_file_length>
    3e5c:	fff00793          	li	a5,-1
    3e60:	42f42823          	sw	a5,1072(s0)
    3e64:	00040513          	mv	a0,s0
    3e68:	00042423          	sw	zero,8(s0)
    3e6c:	00042623          	sw	zero,12(s0)
    3e70:	00042223          	sw	zero,4(s0)
    3e74:	42042a23          	sw	zero,1076(s0)
    3e78:	00042823          	sw	zero,16(s0)
    3e7c:	ffffe097          	auipc	ra,0xffffe
    3e80:	9b8080e7          	jalr	-1608(ra) # 1834 <_free_file>
    3e84:	18848513          	add	a0,s1,392
    3e88:	fffff097          	auipc	ra,0xfffff
    3e8c:	a30080e7          	jalr	-1488(ra) # 28b8 <fatfs_fat_purge>
    3e90:	04092783          	lw	a5,64(s2)
    3e94:	00078e63          	beqz	a5,3eb0 <fl_fclose+0xc8>
    3e98:	00812403          	lw	s0,8(sp)
    3e9c:	00c12083          	lw	ra,12(sp)
    3ea0:	00412483          	lw	s1,4(sp)
    3ea4:	00012903          	lw	s2,0(sp)
    3ea8:	01010113          	add	sp,sp,16
    3eac:	00078067          	jr	a5
    3eb0:	00c12083          	lw	ra,12(sp)
    3eb4:	00812403          	lw	s0,8(sp)
    3eb8:	00412483          	lw	s1,4(sp)
    3ebc:	00012903          	lw	s2,0(sp)
    3ec0:	01010113          	add	sp,sp,16
    3ec4:	00008067          	ret

00003ec8 <fl_fread>:
    3ec8:	fd010113          	add	sp,sp,-48
    3ecc:	01612823          	sw	s6,16(sp)
    3ed0:	00050b13          	mv	s6,a0
    3ed4:	00058513          	mv	a0,a1
    3ed8:	00060593          	mv	a1,a2
    3edc:	02812423          	sw	s0,40(sp)
    3ee0:	02912223          	sw	s1,36(sp)
    3ee4:	02112623          	sw	ra,44(sp)
    3ee8:	03212023          	sw	s2,32(sp)
    3eec:	01312e23          	sw	s3,28(sp)
    3ef0:	01412c23          	sw	s4,24(sp)
    3ef4:	01512a23          	sw	s5,20(sp)
    3ef8:	01712623          	sw	s7,12(sp)
    3efc:	00068493          	mv	s1,a3
    3f00:	ffffd097          	auipc	ra,0xffffd
    3f04:	5f8080e7          	jalr	1528(ra) # 14f8 <__mulsi3>
    3f08:	000067b7          	lui	a5,0x6
    3f0c:	1287a783          	lw	a5,296(a5) # 6128 <_filelib_init>
    3f10:	00050413          	mv	s0,a0
    3f14:	00079663          	bnez	a5,3f20 <fl_fread+0x58>
    3f18:	ffffe097          	auipc	ra,0xffffe
    3f1c:	aa0080e7          	jalr	-1376(ra) # 19b8 <fl_init>
    3f20:	120b0a63          	beqz	s6,4054 <fl_fread+0x18c>
    3f24:	12048863          	beqz	s1,4054 <fl_fread+0x18c>
    3f28:	4384c783          	lbu	a5,1080(s1)
    3f2c:	0017f793          	and	a5,a5,1
    3f30:	12078263          	beqz	a5,4054 <fl_fread+0x18c>
    3f34:	06040e63          	beqz	s0,3fb0 <fl_fread+0xe8>
    3f38:	0084a583          	lw	a1,8(s1)
    3f3c:	00c4a783          	lw	a5,12(s1)
    3f40:	10f5fa63          	bgeu	a1,a5,4054 <fl_fread+0x18c>
    3f44:	00b40733          	add	a4,s0,a1
    3f48:	00040a93          	mv	s5,s0
    3f4c:	00e7f463          	bgeu	a5,a4,3f54 <fl_fread+0x8c>
    3f50:	40b78ab3          	sub	s5,a5,a1
    3f54:	0095d993          	srl	s3,a1,0x9
    3f58:	1ff5f913          	and	s2,a1,511
    3f5c:	00000413          	li	s0,0
    3f60:	05505863          	blez	s5,3fb0 <fl_fread+0xe8>
    3f64:	06091e63          	bnez	s2,3fe0 <fl_fread+0x118>
    3f68:	408a86b3          	sub	a3,s5,s0
    3f6c:	1ff00793          	li	a5,511
    3f70:	00000913          	li	s2,0
    3f74:	06d7d663          	bge	a5,a3,3fe0 <fl_fread+0x118>
    3f78:	4096d693          	sra	a3,a3,0x9
    3f7c:	008b0633          	add	a2,s6,s0
    3f80:	00098593          	mv	a1,s3
    3f84:	00048513          	mv	a0,s1
    3f88:	fffff097          	auipc	ra,0xfffff
    3f8c:	60c080e7          	jalr	1548(ra) # 3594 <_read_sectors>
    3f90:	02050063          	beqz	a0,3fb0 <fl_fread+0xe8>
    3f94:	00951a13          	sll	s4,a0,0x9
    3f98:	00a989b3          	add	s3,s3,a0
    3f9c:	0084a783          	lw	a5,8(s1)
    3fa0:	01440433          	add	s0,s0,s4
    3fa4:	014787b3          	add	a5,a5,s4
    3fa8:	00f4a423          	sw	a5,8(s1)
    3fac:	fb544ee3          	blt	s0,s5,3f68 <fl_fread+0xa0>
    3fb0:	02c12083          	lw	ra,44(sp)
    3fb4:	00040513          	mv	a0,s0
    3fb8:	02812403          	lw	s0,40(sp)
    3fbc:	02412483          	lw	s1,36(sp)
    3fc0:	02012903          	lw	s2,32(sp)
    3fc4:	01c12983          	lw	s3,28(sp)
    3fc8:	01812a03          	lw	s4,24(sp)
    3fcc:	01412a83          	lw	s5,20(sp)
    3fd0:	01012b03          	lw	s6,16(sp)
    3fd4:	00c12b83          	lw	s7,12(sp)
    3fd8:	03010113          	add	sp,sp,48
    3fdc:	00008067          	ret
    3fe0:	4304a783          	lw	a5,1072(s1)
    3fe4:	23048b93          	add	s7,s1,560
    3fe8:	03378e63          	beq	a5,s3,4024 <fl_fread+0x15c>
    3fec:	4344a783          	lw	a5,1076(s1)
    3ff0:	00078863          	beqz	a5,4000 <fl_fread+0x138>
    3ff4:	00048513          	mv	a0,s1
    3ff8:	00000097          	auipc	ra,0x0
    3ffc:	d60080e7          	jalr	-672(ra) # 3d58 <fl_fflush>
    4000:	00100693          	li	a3,1
    4004:	000b8613          	mv	a2,s7
    4008:	00098593          	mv	a1,s3
    400c:	00048513          	mv	a0,s1
    4010:	fffff097          	auipc	ra,0xfffff
    4014:	584080e7          	jalr	1412(ra) # 3594 <_read_sectors>
    4018:	f8050ce3          	beqz	a0,3fb0 <fl_fread+0xe8>
    401c:	4334a823          	sw	s3,1072(s1)
    4020:	4204aa23          	sw	zero,1076(s1)
    4024:	20000793          	li	a5,512
    4028:	412787b3          	sub	a5,a5,s2
    402c:	408a8a33          	sub	s4,s5,s0
    4030:	0147d463          	bge	a5,s4,4038 <fl_fread+0x170>
    4034:	00078a13          	mv	s4,a5
    4038:	000a0613          	mv	a2,s4
    403c:	012b85b3          	add	a1,s7,s2
    4040:	008b0533          	add	a0,s6,s0
    4044:	ffffd097          	auipc	ra,0xffffd
    4048:	d34080e7          	jalr	-716(ra) # d78 <memcpy>
    404c:	00198993          	add	s3,s3,1
    4050:	f4dff06f          	j	3f9c <fl_fread+0xd4>
    4054:	fff00413          	li	s0,-1
    4058:	f59ff06f          	j	3fb0 <fl_fread+0xe8>

0000405c <fatfs_allocate_free_space>:
    405c:	02069a63          	bnez	a3,4090 <fatfs_allocate_free_space+0x34>
    4060:	00000513          	li	a0,0
    4064:	00008067          	ret
    4068:	00000513          	li	a0,0
    406c:	02c12083          	lw	ra,44(sp)
    4070:	02812403          	lw	s0,40(sp)
    4074:	02412483          	lw	s1,36(sp)
    4078:	02012903          	lw	s2,32(sp)
    407c:	01c12983          	lw	s3,28(sp)
    4080:	01812a03          	lw	s4,24(sp)
    4084:	01412a83          	lw	s5,20(sp)
    4088:	03010113          	add	sp,sp,48
    408c:	00008067          	ret
    4090:	02452703          	lw	a4,36(a0)
    4094:	fd010113          	add	sp,sp,-48
    4098:	02812423          	sw	s0,40(sp)
    409c:	03212023          	sw	s2,32(sp)
    40a0:	01312e23          	sw	s3,28(sp)
    40a4:	01512a23          	sw	s5,20(sp)
    40a8:	02112623          	sw	ra,44(sp)
    40ac:	02912223          	sw	s1,36(sp)
    40b0:	01412c23          	sw	s4,24(sp)
    40b4:	fff00793          	li	a5,-1
    40b8:	00050413          	mv	s0,a0
    40bc:	00058a93          	mv	s5,a1
    40c0:	00060993          	mv	s3,a2
    40c4:	00068913          	mv	s2,a3
    40c8:	00f70863          	beq	a4,a5,40d8 <fatfs_allocate_free_space+0x7c>
    40cc:	fff00593          	li	a1,-1
    40d0:	fffff097          	auipc	ra,0xfffff
    40d4:	610080e7          	jalr	1552(ra) # 36e0 <fatfs_set_fs_info_next_free_cluster>
    40d8:	00044a03          	lbu	s4,0(s0)
    40dc:	00090513          	mv	a0,s2
    40e0:	009a1a13          	sll	s4,s4,0x9
    40e4:	000a0593          	mv	a1,s4
    40e8:	ffffd097          	auipc	ra,0xffffd
    40ec:	bc8080e7          	jalr	-1080(ra) # cb0 <__udivsi3>
    40f0:	00050493          	mv	s1,a0
    40f4:	00050593          	mv	a1,a0
    40f8:	000a0513          	mv	a0,s4
    40fc:	ffffd097          	auipc	ra,0xffffd
    4100:	3fc080e7          	jalr	1020(ra) # 14f8 <__mulsi3>
    4104:	01250463          	beq	a0,s2,410c <fatfs_allocate_free_space+0xb0>
    4108:	00148493          	add	s1,s1,1
    410c:	040a8463          	beqz	s5,4154 <fatfs_allocate_free_space+0xf8>
    4110:	00842583          	lw	a1,8(s0)
    4114:	00c10613          	add	a2,sp,12
    4118:	00040513          	mv	a0,s0
    411c:	fffff097          	auipc	ra,0xfffff
    4120:	67c080e7          	jalr	1660(ra) # 3798 <fatfs_find_blank_cluster>
    4124:	f40502e3          	beqz	a0,4068 <fatfs_allocate_free_space+0xc>
    4128:	00100793          	li	a5,1
    412c:	02f49863          	bne	s1,a5,415c <fatfs_allocate_free_space+0x100>
    4130:	00c12483          	lw	s1,12(sp)
    4134:	fff00613          	li	a2,-1
    4138:	00040513          	mv	a0,s0
    413c:	00048593          	mv	a1,s1
    4140:	fffff097          	auipc	ra,0xfffff
    4144:	778080e7          	jalr	1912(ra) # 38b8 <fatfs_fat_set_cluster>
    4148:	00100513          	li	a0,1
    414c:	0099a023          	sw	s1,0(s3)
    4150:	f1dff06f          	j	406c <fatfs_allocate_free_space+0x10>
    4154:	0009a783          	lw	a5,0(s3)
    4158:	00f12623          	sw	a5,12(sp)
    415c:	00048613          	mv	a2,s1
    4160:	00c10593          	add	a1,sp,12
    4164:	00040513          	mv	a0,s0
    4168:	00000097          	auipc	ra,0x0
    416c:	974080e7          	jalr	-1676(ra) # 3adc <fatfs_add_free_space>
    4170:	00a03533          	snez	a0,a0
    4174:	ef9ff06f          	j	406c <fatfs_allocate_free_space+0x10>

00004178 <fatfs_add_file_entry>:
    4178:	f8010113          	add	sp,sp,-128
    417c:	00f12a23          	sw	a5,20(sp)
    4180:	03852783          	lw	a5,56(a0)
    4184:	06112e23          	sw	ra,124(sp)
    4188:	06812c23          	sw	s0,120(sp)
    418c:	06912a23          	sw	s1,116(sp)
    4190:	07212823          	sw	s2,112(sp)
    4194:	07312623          	sw	s3,108(sp)
    4198:	07412423          	sw	s4,104(sp)
    419c:	07512223          	sw	s5,100(sp)
    41a0:	07612023          	sw	s6,96(sp)
    41a4:	05712e23          	sw	s7,92(sp)
    41a8:	05812c23          	sw	s8,88(sp)
    41ac:	05912a23          	sw	s9,84(sp)
    41b0:	05a12823          	sw	s10,80(sp)
    41b4:	05b12623          	sw	s11,76(sp)
    41b8:	00b12423          	sw	a1,8(sp)
    41bc:	00c12623          	sw	a2,12(sp)
    41c0:	00e12823          	sw	a4,16(sp)
    41c4:	01012c23          	sw	a6,24(sp)
    41c8:	2c078063          	beqz	a5,4488 <fatfs_add_file_entry+0x310>
    41cc:	00050413          	mv	s0,a0
    41d0:	00060513          	mv	a0,a2
    41d4:	00068a93          	mv	s5,a3
    41d8:	ffffe097          	auipc	ra,0xffffe
    41dc:	a50080e7          	jalr	-1456(ra) # 1c28 <fatfs_lfn_entries_required>
    41e0:	00150713          	add	a4,a0,1
    41e4:	00100793          	li	a5,1
    41e8:	00050913          	mv	s2,a0
    41ec:	28e7fe63          	bgeu	a5,a4,4488 <fatfs_add_file_entry+0x310>
    41f0:	00000493          	li	s1,0
    41f4:	00000a13          	li	s4,0
    41f8:	00000993          	li	s3,0
    41fc:	00000b13          	li	s6,0
    4200:	00000d93          	li	s11,0
    4204:	0e500c93          	li	s9,229
    4208:	01000d13          	li	s10,16
    420c:	00812583          	lw	a1,8(sp)
    4210:	00000693          	li	a3,0
    4214:	00048613          	mv	a2,s1
    4218:	00040513          	mv	a0,s0
    421c:	fffff097          	auipc	ra,0xfffff
    4220:	808080e7          	jalr	-2040(ra) # 2a24 <fatfs_sector_reader>
    4224:	18050063          	beqz	a0,43a4 <fatfs_add_file_entry+0x22c>
    4228:	04440c13          	add	s8,s0,68
    422c:	000d8793          	mv	a5,s11
    4230:	00000b93          	li	s7,0
    4234:	000c0513          	mv	a0,s8
    4238:	00f12e23          	sw	a5,28(sp)
    423c:	ffffe097          	auipc	ra,0xffffe
    4240:	8fc080e7          	jalr	-1796(ra) # 1b38 <fatfs_entry_lfn_text>
    4244:	01c12783          	lw	a5,28(sp)
    4248:	00050d93          	mv	s11,a0
    424c:	02050c63          	beqz	a0,4284 <fatfs_add_file_entry+0x10c>
    4250:	00079863          	bnez	a5,4260 <fatfs_add_file_entry+0xe8>
    4254:	000b8a13          	mv	s4,s7
    4258:	00048993          	mv	s3,s1
    425c:	00100b13          	li	s6,1
    4260:	00178d93          	add	s11,a5,1
    4264:	001b8713          	add	a4,s7,1
    4268:	0ff77b93          	zext.b	s7,a4
    426c:	020c0c13          	add	s8,s8,32
    4270:	01ab9663          	bne	s7,s10,427c <fatfs_add_file_entry+0x104>
    4274:	00148493          	add	s1,s1,1
    4278:	f95ff06f          	j	420c <fatfs_add_file_entry+0x94>
    427c:	000d8793          	mv	a5,s11
    4280:	fb5ff06f          	j	4234 <fatfs_add_file_entry+0xbc>
    4284:	000c4603          	lbu	a2,0(s8)
    4288:	11961863          	bne	a2,s9,4398 <fatfs_add_file_entry+0x220>
    428c:	00079863          	bnez	a5,429c <fatfs_add_file_entry+0x124>
    4290:	000b8a13          	mv	s4,s7
    4294:	00048993          	mv	s3,s1
    4298:	00100b13          	li	s6,1
    429c:	00178d93          	add	s11,a5,1
    42a0:	fd27c2e3          	blt	a5,s2,4264 <fatfs_add_file_entry+0xec>
    42a4:	00ba8713          	add	a4,s5,11
    42a8:	000a8793          	mv	a5,s5
    42ac:	00000493          	li	s1,0
    42b0:	0007c603          	lbu	a2,0(a5)
    42b4:	00749693          	sll	a3,s1,0x7
    42b8:	0014d493          	srl	s1,s1,0x1
    42bc:	00c484b3          	add	s1,s1,a2
    42c0:	00178793          	add	a5,a5,1
    42c4:	00d484b3          	add	s1,s1,a3
    42c8:	0ff4f493          	zext.b	s1,s1
    42cc:	fef712e3          	bne	a4,a5,42b0 <fatfs_add_file_entry+0x138>
    42d0:	00098b13          	mv	s6,s3
    42d4:	00000d13          	li	s10,0
    42d8:	01000d93          	li	s11,16
    42dc:	00812583          	lw	a1,8(sp)
    42e0:	00000693          	li	a3,0
    42e4:	000b0613          	mv	a2,s6
    42e8:	00040513          	mv	a0,s0
    42ec:	ffffe097          	auipc	ra,0xffffe
    42f0:	738080e7          	jalr	1848(ra) # 2a24 <fatfs_sector_reader>
    42f4:	18050a63          	beqz	a0,4488 <fatfs_add_file_entry+0x310>
    42f8:	04440c13          	add	s8,s0,68
    42fc:	00000713          	li	a4,0
    4300:	00000b93          	li	s7,0
    4304:	000c0c93          	mv	s9,s8
    4308:	000d1663          	bnez	s10,4314 <fatfs_add_file_entry+0x19c>
    430c:	153b1863          	bne	s6,s3,445c <fatfs_add_file_entry+0x2e4>
    4310:	154b9663          	bne	s7,s4,445c <fatfs_add_file_entry+0x2e4>
    4314:	12091263          	bnez	s2,4438 <fatfs_add_file_entry+0x2c0>
    4318:	01812703          	lw	a4,24(sp)
    431c:	01012603          	lw	a2,16(sp)
    4320:	01412583          	lw	a1,20(sp)
    4324:	02010693          	add	a3,sp,32
    4328:	000a8513          	mv	a0,s5
    432c:	ffffe097          	auipc	ra,0xffffe
    4330:	a54080e7          	jalr	-1452(ra) # 1d80 <fatfs_sfn_create_entry>
    4334:	02000613          	li	a2,32
    4338:	02010593          	add	a1,sp,32
    433c:	000c0513          	mv	a0,s8
    4340:	ffffd097          	auipc	ra,0xffffd
    4344:	a38080e7          	jalr	-1480(ra) # d78 <memcpy>
    4348:	03842783          	lw	a5,56(s0)
    434c:	24442503          	lw	a0,580(s0)
    4350:	00100613          	li	a2,1
    4354:	000c8593          	mv	a1,s9
    4358:	000780e7          	jalr	a5
    435c:	07c12083          	lw	ra,124(sp)
    4360:	07812403          	lw	s0,120(sp)
    4364:	07412483          	lw	s1,116(sp)
    4368:	07012903          	lw	s2,112(sp)
    436c:	06c12983          	lw	s3,108(sp)
    4370:	06812a03          	lw	s4,104(sp)
    4374:	06412a83          	lw	s5,100(sp)
    4378:	06012b03          	lw	s6,96(sp)
    437c:	05c12b83          	lw	s7,92(sp)
    4380:	05812c03          	lw	s8,88(sp)
    4384:	05412c83          	lw	s9,84(sp)
    4388:	05012d03          	lw	s10,80(sp)
    438c:	04c12d83          	lw	s11,76(sp)
    4390:	08010113          	add	sp,sp,128
    4394:	00008067          	ret
    4398:	ee060ae3          	beqz	a2,428c <fatfs_add_file_entry+0x114>
    439c:	00000b13          	li	s6,0
    43a0:	ec5ff06f          	j	4264 <fatfs_add_file_entry+0xec>
    43a4:	00842583          	lw	a1,8(s0)
    43a8:	02010613          	add	a2,sp,32
    43ac:	00040513          	mv	a0,s0
    43b0:	fffff097          	auipc	ra,0xfffff
    43b4:	3e8080e7          	jalr	1000(ra) # 3798 <fatfs_find_blank_cluster>
    43b8:	0c050863          	beqz	a0,4488 <fatfs_add_file_entry+0x310>
    43bc:	02012c83          	lw	s9,32(sp)
    43c0:	00812583          	lw	a1,8(sp)
    43c4:	00040513          	mv	a0,s0
    43c8:	000c8613          	mv	a2,s9
    43cc:	fffff097          	auipc	ra,0xfffff
    43d0:	674080e7          	jalr	1652(ra) # 3a40 <fatfs_fat_add_cluster_to_chain>
    43d4:	0a050a63          	beqz	a0,4488 <fatfs_add_file_entry+0x310>
    43d8:	20000613          	li	a2,512
    43dc:	00000593          	li	a1,0
    43e0:	04440513          	add	a0,s0,68
    43e4:	ffffd097          	auipc	ra,0xffffd
    43e8:	978080e7          	jalr	-1672(ra) # d5c <memset>
    43ec:	00000d13          	li	s10,0
    43f0:	00044783          	lbu	a5,0(s0)
    43f4:	00fd6a63          	bltu	s10,a5,4408 <fatfs_add_file_entry+0x290>
    43f8:	ea0b16e3          	bnez	s6,42a4 <fatfs_add_file_entry+0x12c>
    43fc:	00048993          	mv	s3,s1
    4400:	00000a13          	li	s4,0
    4404:	ea1ff06f          	j	42a4 <fatfs_add_file_entry+0x12c>
    4408:	00000693          	li	a3,0
    440c:	000d0613          	mv	a2,s10
    4410:	000c8593          	mv	a1,s9
    4414:	00040513          	mv	a0,s0
    4418:	ffffd097          	auipc	ra,0xffffd
    441c:	4e4080e7          	jalr	1252(ra) # 18fc <fatfs_write_sector>
    4420:	06050463          	beqz	a0,4488 <fatfs_add_file_entry+0x310>
    4424:	001d0d13          	add	s10,s10,1
    4428:	0ffd7d13          	zext.b	s10,s10
    442c:	fc5ff06f          	j	43f0 <fatfs_add_file_entry+0x278>
    4430:	001b0b13          	add	s6,s6,1
    4434:	ea9ff06f          	j	42dc <fatfs_add_file_entry+0x164>
    4438:	00c12503          	lw	a0,12(sp)
    443c:	fff90913          	add	s2,s2,-1
    4440:	00048693          	mv	a3,s1
    4444:	00090613          	mv	a2,s2
    4448:	000c0593          	mv	a1,s8
    444c:	ffffe097          	auipc	ra,0xffffe
    4450:	80c080e7          	jalr	-2036(ra) # 1c58 <fatfs_filename_to_lfn>
    4454:	00100d13          	li	s10,1
    4458:	00100713          	li	a4,1
    445c:	001b8793          	add	a5,s7,1
    4460:	0ff7fb93          	zext.b	s7,a5
    4464:	020c0c13          	add	s8,s8,32
    4468:	ebbb90e3          	bne	s7,s11,4308 <fatfs_add_file_entry+0x190>
    446c:	fc0702e3          	beqz	a4,4430 <fatfs_add_file_entry+0x2b8>
    4470:	03842783          	lw	a5,56(s0)
    4474:	24442503          	lw	a0,580(s0)
    4478:	00100613          	li	a2,1
    447c:	000c8593          	mv	a1,s9
    4480:	000780e7          	jalr	a5
    4484:	fa0516e3          	bnez	a0,4430 <fatfs_add_file_entry+0x2b8>
    4488:	00000513          	li	a0,0
    448c:	ed1ff06f          	j	435c <fatfs_add_file_entry+0x1e4>

00004490 <fl_fopen>:
    4490:	000067b7          	lui	a5,0x6
    4494:	1287a783          	lw	a5,296(a5) # 6128 <_filelib_init>
    4498:	fa010113          	add	sp,sp,-96
    449c:	04812c23          	sw	s0,88(sp)
    44a0:	05512223          	sw	s5,68(sp)
    44a4:	04112e23          	sw	ra,92(sp)
    44a8:	04912a23          	sw	s1,84(sp)
    44ac:	05212823          	sw	s2,80(sp)
    44b0:	05312623          	sw	s3,76(sp)
    44b4:	05412423          	sw	s4,72(sp)
    44b8:	05612023          	sw	s6,64(sp)
    44bc:	03712e23          	sw	s7,60(sp)
    44c0:	03812c23          	sw	s8,56(sp)
    44c4:	03912a23          	sw	s9,52(sp)
    44c8:	00050a93          	mv	s5,a0
    44cc:	00058413          	mv	s0,a1
    44d0:	00079663          	bnez	a5,44dc <fl_fopen+0x4c>
    44d4:	ffffd097          	auipc	ra,0xffffd
    44d8:	4e4080e7          	jalr	1252(ra) # 19b8 <fl_init>
    44dc:	000067b7          	lui	a5,0x6
    44e0:	1247a783          	lw	a5,292(a5) # 6124 <_filelib_valid>
    44e4:	3a078463          	beqz	a5,488c <fl_fopen+0x3fc>
    44e8:	3a0a8263          	beqz	s5,488c <fl_fopen+0x3fc>
    44ec:	16040063          	beqz	s0,464c <fl_fopen+0x1bc>
    44f0:	00040513          	mv	a0,s0
    44f4:	ffffd097          	auipc	ra,0xffffd
    44f8:	8a8080e7          	jalr	-1880(ra) # d9c <strlen>
    44fc:	00000493          	li	s1,0
    4500:	00000713          	li	a4,0
    4504:	05700693          	li	a3,87
    4508:	07200613          	li	a2,114
    450c:	07700813          	li	a6,119
    4510:	06100893          	li	a7,97
    4514:	06200313          	li	t1,98
    4518:	04100593          	li	a1,65
    451c:	04200e13          	li	t3,66
    4520:	05200e93          	li	t4,82
    4524:	02b00f13          	li	t5,43
    4528:	06a74063          	blt	a4,a0,4588 <fl_fopen+0xf8>
    452c:	0000a937          	lui	s2,0xa
    4530:	18890793          	add	a5,s2,392 # a188 <_fs>
    4534:	0387a783          	lw	a5,56(a5)
    4538:	18890b93          	add	s7,s2,392
    453c:	00079463          	bnez	a5,4544 <fl_fopen+0xb4>
    4540:	0d94f493          	and	s1,s1,217
    4544:	03cba783          	lw	a5,60(s7)
    4548:	00078463          	beqz	a5,4550 <fl_fopen+0xc0>
    454c:	000780e7          	jalr	a5
    4550:	0014f993          	and	s3,s1,1
    4554:	0c099263          	bnez	s3,4618 <fl_fopen+0x188>
    4558:	0204f793          	and	a5,s1,32
    455c:	0e078063          	beqz	a5,463c <fl_fopen+0x1ac>
    4560:	038ba783          	lw	a5,56(s7)
    4564:	12079063          	bnez	a5,4684 <fl_fopen+0x1f4>
    4568:	0064f793          	and	a5,s1,6
    456c:	0c078863          	beqz	a5,463c <fl_fopen+0x1ac>
    4570:	000a8513          	mv	a0,s5
    4574:	fffff097          	auipc	ra,0xfffff
    4578:	9a4080e7          	jalr	-1628(ra) # 2f18 <_open_file>
    457c:	00050413          	mv	s0,a0
    4580:	30051263          	bnez	a0,4884 <fl_fopen+0x3f4>
    4584:	0b80006f          	j	463c <fl_fopen+0x1ac>
    4588:	00e407b3          	add	a5,s0,a4
    458c:	0007c783          	lbu	a5,0(a5)
    4590:	04d78463          	beq	a5,a3,45d8 <fl_fopen+0x148>
    4594:	02f6e463          	bltu	a3,a5,45bc <fl_fopen+0x12c>
    4598:	04b78463          	beq	a5,a1,45e0 <fl_fopen+0x150>
    459c:	00f5e863          	bltu	a1,a5,45ac <fl_fopen+0x11c>
    45a0:	05e78463          	beq	a5,t5,45e8 <fl_fopen+0x158>
    45a4:	00170713          	add	a4,a4,1
    45a8:	f81ff06f          	j	4528 <fl_fopen+0x98>
    45ac:	03c78063          	beq	a5,t3,45cc <fl_fopen+0x13c>
    45b0:	ffd79ae3          	bne	a5,t4,45a4 <fl_fopen+0x114>
    45b4:	0014e493          	or	s1,s1,1
    45b8:	fedff06f          	j	45a4 <fl_fopen+0x114>
    45bc:	fec78ce3          	beq	a5,a2,45b4 <fl_fopen+0x124>
    45c0:	00f66a63          	bltu	a2,a5,45d4 <fl_fopen+0x144>
    45c4:	01178e63          	beq	a5,a7,45e0 <fl_fopen+0x150>
    45c8:	fc679ee3          	bne	a5,t1,45a4 <fl_fopen+0x114>
    45cc:	0084e493          	or	s1,s1,8
    45d0:	fd5ff06f          	j	45a4 <fl_fopen+0x114>
    45d4:	fd0798e3          	bne	a5,a6,45a4 <fl_fopen+0x114>
    45d8:	0324e493          	or	s1,s1,50
    45dc:	fc9ff06f          	j	45a4 <fl_fopen+0x114>
    45e0:	0264e493          	or	s1,s1,38
    45e4:	fc1ff06f          	j	45a4 <fl_fopen+0x114>
    45e8:	0014f793          	and	a5,s1,1
    45ec:	00078663          	beqz	a5,45f8 <fl_fopen+0x168>
    45f0:	0024e493          	or	s1,s1,2
    45f4:	fb1ff06f          	j	45a4 <fl_fopen+0x114>
    45f8:	0024f793          	and	a5,s1,2
    45fc:	00078663          	beqz	a5,4608 <fl_fopen+0x178>
    4600:	0314e493          	or	s1,s1,49
    4604:	fa1ff06f          	j	45a4 <fl_fopen+0x114>
    4608:	0044f793          	and	a5,s1,4
    460c:	f8078ce3          	beqz	a5,45a4 <fl_fopen+0x114>
    4610:	0274e493          	or	s1,s1,39
    4614:	f91ff06f          	j	45a4 <fl_fopen+0x114>
    4618:	000a8513          	mv	a0,s5
    461c:	fffff097          	auipc	ra,0xfffff
    4620:	8fc080e7          	jalr	-1796(ra) # 2f18 <_open_file>
    4624:	00050413          	mv	s0,a0
    4628:	24051e63          	bnez	a0,4884 <fl_fopen+0x3f4>
    462c:	0204f793          	and	a5,s1,32
    4630:	00078663          	beqz	a5,463c <fl_fopen+0x1ac>
    4634:	038ba783          	lw	a5,56(s7)
    4638:	0c079663          	bnez	a5,4704 <fl_fopen+0x274>
    463c:	00000413          	li	s0,0
    4640:	040ba783          	lw	a5,64(s7)
    4644:	00078463          	beqz	a5,464c <fl_fopen+0x1bc>
    4648:	000780e7          	jalr	a5
    464c:	05c12083          	lw	ra,92(sp)
    4650:	00040513          	mv	a0,s0
    4654:	05812403          	lw	s0,88(sp)
    4658:	05412483          	lw	s1,84(sp)
    465c:	05012903          	lw	s2,80(sp)
    4660:	04c12983          	lw	s3,76(sp)
    4664:	04812a03          	lw	s4,72(sp)
    4668:	04412a83          	lw	s5,68(sp)
    466c:	04012b03          	lw	s6,64(sp)
    4670:	03c12b83          	lw	s7,60(sp)
    4674:	03812c03          	lw	s8,56(sp)
    4678:	03412c83          	lw	s9,52(sp)
    467c:	06010113          	add	sp,sp,96
    4680:	00008067          	ret
    4684:	ffffd097          	auipc	ra,0xffffd
    4688:	13c080e7          	jalr	316(ra) # 17c0 <_allocate_file>
    468c:	00050413          	mv	s0,a0
    4690:	ec050ce3          	beqz	a0,4568 <fl_fopen+0xd8>
    4694:	01440c13          	add	s8,s0,20
    4698:	10400613          	li	a2,260
    469c:	00000593          	li	a1,0
    46a0:	000c0513          	mv	a0,s8
    46a4:	ffffc097          	auipc	ra,0xffffc
    46a8:	6b8080e7          	jalr	1720(ra) # d5c <memset>
    46ac:	11840b13          	add	s6,s0,280
    46b0:	10400613          	li	a2,260
    46b4:	00000593          	li	a1,0
    46b8:	000b0513          	mv	a0,s6
    46bc:	ffffc097          	auipc	ra,0xffffc
    46c0:	6a0080e7          	jalr	1696(ra) # d5c <memset>
    46c4:	10400713          	li	a4,260
    46c8:	000b0693          	mv	a3,s6
    46cc:	10400613          	li	a2,260
    46d0:	000c0593          	mv	a1,s8
    46d4:	000a8513          	mv	a0,s5
    46d8:	ffffe097          	auipc	ra,0xffffe
    46dc:	bac080e7          	jalr	-1108(ra) # 2284 <fatfs_split_path>
    46e0:	fff00793          	li	a5,-1
    46e4:	02f51a63          	bne	a0,a5,4718 <fl_fopen+0x288>
    46e8:	00040513          	mv	a0,s0
    46ec:	ffffd097          	auipc	ra,0xffffd
    46f0:	148080e7          	jalr	328(ra) # 1834 <_free_file>
    46f4:	f40994e3          	bnez	s3,463c <fl_fopen+0x1ac>
    46f8:	0204f793          	and	a5,s1,32
    46fc:	f40780e3          	beqz	a5,463c <fl_fopen+0x1ac>
    4700:	e69ff06f          	j	4568 <fl_fopen+0xd8>
    4704:	ffffd097          	auipc	ra,0xffffd
    4708:	0bc080e7          	jalr	188(ra) # 17c0 <_allocate_file>
    470c:	00050413          	mv	s0,a0
    4710:	f80512e3          	bnez	a0,4694 <fl_fopen+0x204>
    4714:	f29ff06f          	j	463c <fl_fopen+0x1ac>
    4718:	00040513          	mv	a0,s0
    471c:	ffffe097          	auipc	ra,0xffffe
    4720:	dbc080e7          	jalr	-580(ra) # 24d8 <_check_file_open>
    4724:	00050a13          	mv	s4,a0
    4728:	fc0510e3          	bnez	a0,46e8 <fl_fopen+0x258>
    472c:	01444783          	lbu	a5,20(s0)
    4730:	0c079263          	bnez	a5,47f4 <fl_fopen+0x364>
    4734:	008ba783          	lw	a5,8(s7)
    4738:	00f42023          	sw	a5,0(s0)
    473c:	00042583          	lw	a1,0(s0)
    4740:	01010693          	add	a3,sp,16
    4744:	000b0613          	mv	a2,s6
    4748:	18890513          	add	a0,s2,392
    474c:	ffffe097          	auipc	ra,0xffffe
    4750:	418080e7          	jalr	1048(ra) # 2b64 <fatfs_get_file_entry>
    4754:	00100793          	li	a5,1
    4758:	f8f508e3          	beq	a0,a5,46e8 <fl_fopen+0x258>
    475c:	00042223          	sw	zero,4(s0)
    4760:	00100693          	li	a3,1
    4764:	00440613          	add	a2,s0,4
    4768:	00100593          	li	a1,1
    476c:	18890513          	add	a0,s2,392
    4770:	00000097          	auipc	ra,0x0
    4774:	8ec080e7          	jalr	-1812(ra) # 405c <fatfs_allocate_free_space>
    4778:	f60508e3          	beqz	a0,46e8 <fl_fopen+0x258>
    477c:	000b0593          	mv	a1,s6
    4780:	00410513          	add	a0,sp,4
    4784:	ffffd097          	auipc	ra,0xffffd
    4788:	6a4080e7          	jalr	1700(ra) # 1e28 <fatfs_lfn_create_sfn>
    478c:	21c40c13          	add	s8,s0,540
    4790:	00b00613          	li	a2,11
    4794:	00410593          	add	a1,sp,4
    4798:	000c0513          	mv	a0,s8
    479c:	00002cb7          	lui	s9,0x2
    47a0:	ffffc097          	auipc	ra,0xffffc
    47a4:	5d8080e7          	jalr	1496(ra) # d78 <memcpy>
    47a8:	70fc8c93          	add	s9,s9,1807 # 270f <fatfs_init+0xf3>
    47ac:	00042583          	lw	a1,0(s0)
    47b0:	000c0613          	mv	a2,s8
    47b4:	18890513          	add	a0,s2,392
    47b8:	fffff097          	auipc	ra,0xfffff
    47bc:	8d8080e7          	jalr	-1832(ra) # 3090 <fatfs_sfn_exists>
    47c0:	04050663          	beqz	a0,480c <fl_fopen+0x37c>
    47c4:	001a0a13          	add	s4,s4,1
    47c8:	059a0263          	beq	s4,s9,480c <fl_fopen+0x37c>
    47cc:	000b0593          	mv	a1,s6
    47d0:	00410513          	add	a0,sp,4
    47d4:	ffffd097          	auipc	ra,0xffffd
    47d8:	654080e7          	jalr	1620(ra) # 1e28 <fatfs_lfn_create_sfn>
    47dc:	000a0613          	mv	a2,s4
    47e0:	00410593          	add	a1,sp,4
    47e4:	000c0513          	mv	a0,s8
    47e8:	ffffd097          	auipc	ra,0xffffd
    47ec:	7bc080e7          	jalr	1980(ra) # 1fa4 <fatfs_lfn_generate_tail>
    47f0:	fbdff06f          	j	47ac <fl_fopen+0x31c>
    47f4:	00040593          	mv	a1,s0
    47f8:	000c0513          	mv	a0,s8
    47fc:	ffffe097          	auipc	ra,0xffffe
    4800:	568080e7          	jalr	1384(ra) # 2d64 <_open_directory>
    4804:	f2051ce3          	bnez	a0,473c <fl_fopen+0x2ac>
    4808:	ee1ff06f          	j	46e8 <fl_fopen+0x258>
    480c:	00442703          	lw	a4,4(s0)
    4810:	000027b7          	lui	a5,0x2
    4814:	70f78793          	add	a5,a5,1807 # 270f <fatfs_init+0xf3>
    4818:	00070593          	mv	a1,a4
    481c:	02fa0663          	beq	s4,a5,4848 <fl_fopen+0x3b8>
    4820:	00042583          	lw	a1,0(s0)
    4824:	00000813          	li	a6,0
    4828:	00000793          	li	a5,0
    482c:	000c0693          	mv	a3,s8
    4830:	000b0613          	mv	a2,s6
    4834:	18890513          	add	a0,s2,392
    4838:	00000097          	auipc	ra,0x0
    483c:	940080e7          	jalr	-1728(ra) # 4178 <fatfs_add_file_entry>
    4840:	00051c63          	bnez	a0,4858 <fl_fopen+0x3c8>
    4844:	00442583          	lw	a1,4(s0)
    4848:	18890513          	add	a0,s2,392
    484c:	fffff097          	auipc	ra,0xfffff
    4850:	184080e7          	jalr	388(ra) # 39d0 <fatfs_free_cluster_chain>
    4854:	e95ff06f          	j	46e8 <fl_fopen+0x258>
    4858:	fff00793          	li	a5,-1
    485c:	00042623          	sw	zero,12(s0)
    4860:	00042423          	sw	zero,8(s0)
    4864:	42f42823          	sw	a5,1072(s0)
    4868:	42042a23          	sw	zero,1076(s0)
    486c:	00042823          	sw	zero,16(s0)
    4870:	22f42423          	sw	a5,552(s0)
    4874:	22f42623          	sw	a5,556(s0)
    4878:	18890513          	add	a0,s2,392
    487c:	ffffe097          	auipc	ra,0xffffe
    4880:	03c080e7          	jalr	60(ra) # 28b8 <fatfs_fat_purge>
    4884:	42940c23          	sb	s1,1080(s0)
    4888:	db9ff06f          	j	4640 <fl_fopen+0x1b0>
    488c:	00000413          	li	s0,0
    4890:	dbdff06f          	j	464c <fl_fopen+0x1bc>

00004894 <Init_menu>:
    4894:	000017b7          	lui	a5,0x1
    4898:	fd010113          	add	sp,sp,-48
    489c:	00006737          	lui	a4,0x6
    48a0:	08478793          	add	a5,a5,132 # 1084 <display_putchar>
    48a4:	10f72823          	sw	a5,272(a4) # 6110 <f_putchar>
    48a8:	02112623          	sw	ra,44(sp)
    48ac:	02812423          	sw	s0,40(sp)
    48b0:	02912223          	sw	s1,36(sp)
    48b4:	03212023          	sw	s2,32(sp)
    48b8:	01312e23          	sw	s3,28(sp)
    48bc:	01412c23          	sw	s4,24(sp)
    48c0:	01512a23          	sw	s5,20(sp)
    48c4:	01612823          	sw	s6,16(sp)
    48c8:	01712623          	sw	s7,12(sp)
    48cc:	ffffc097          	auipc	ra,0xffffc
    48d0:	6c0080e7          	jalr	1728(ra) # f8c <oled_init>
    48d4:	ffffc097          	auipc	ra,0xffffc
    48d8:	6c4080e7          	jalr	1732(ra) # f98 <oled_fullscreen>
    48dc:	ffffc097          	auipc	ra,0xffffc
    48e0:	774080e7          	jalr	1908(ra) # 1050 <display_framebuffer>
    48e4:	00004637          	lui	a2,0x4
    48e8:	00000593          	li	a1,0
    48ec:	ffffc097          	auipc	ra,0xffffc
    48f0:	470080e7          	jalr	1136(ra) # d5c <memset>
    48f4:	ffffd097          	auipc	ra,0xffffd
    48f8:	8dc080e7          	jalr	-1828(ra) # 11d0 <display_refresh>
    48fc:	00000593          	li	a1,0
    4900:	00000513          	li	a0,0
    4904:	ffffc097          	auipc	ra,0xffffc
    4908:	758080e7          	jalr	1880(ra) # 105c <display_set_cursor>
    490c:	00000593          	li	a1,0
    4910:	0ff00513          	li	a0,255
    4914:	ffffc097          	auipc	ra,0xffffc
    4918:	75c080e7          	jalr	1884(ra) # 1070 <display_set_front_back_color>
    491c:	00006537          	lui	a0,0x6
    4920:	eac50513          	add	a0,a0,-340 # 5eac <font+0x228>
    4924:	ffffd097          	auipc	ra,0xffffd
    4928:	aa4080e7          	jalr	-1372(ra) # 13c8 <printf>
    492c:	ffffd097          	auipc	ra,0xffffd
    4930:	8a4080e7          	jalr	-1884(ra) # 11d0 <display_refresh>
    4934:	000067b7          	lui	a5,0x6
    4938:	12c7a703          	lw	a4,300(a5) # 612c <Init_stat>
    493c:	04071063          	bnez	a4,497c <Init_menu+0xe8>
    4940:	00100713          	li	a4,1
    4944:	12e7a623          	sw	a4,300(a5)
    4948:	000014b7          	lui	s1,0x1
    494c:	ffffc097          	auipc	ra,0xffffc
    4950:	138080e7          	jalr	312(ra) # a84 <sdcard_init>
    4954:	00001437          	lui	s0,0x1
    4958:	ffffd097          	auipc	ra,0xffffd
    495c:	060080e7          	jalr	96(ra) # 19b8 <fl_init>
    4960:	ffffd097          	auipc	ra,0xffffd
    4964:	870080e7          	jalr	-1936(ra) # 11d0 <display_refresh>
    4968:	ca048593          	add	a1,s1,-864 # ca0 <sdcard_writesector>
    496c:	c4c40513          	add	a0,s0,-948 # c4c <sdcard_readsector>
    4970:	ffffe097          	auipc	ra,0xffffe
    4974:	edc080e7          	jalr	-292(ra) # 284c <fl_attach_media>
    4978:	fe0518e3          	bnez	a0,4968 <Init_menu+0xd4>
    497c:	00006537          	lui	a0,0x6
    4980:	eb850513          	add	a0,a0,-328 # 5eb8 <font+0x234>
    4984:	ffffd097          	auipc	ra,0xffffd
    4988:	a44080e7          	jalr	-1468(ra) # 13c8 <printf>
    498c:	ffffd097          	auipc	ra,0xffffd
    4990:	844080e7          	jalr	-1980(ra) # 11d0 <display_refresh>
    4994:	000067b7          	lui	a5,0x6
    4998:	c707a483          	lw	s1,-912(a5) # 5c70 <BUTTONS>
    499c:	00000413          	li	s0,0
    49a0:	00000913          	li	s2,0
    49a4:	00006ab7          	lui	s5,0x6
    49a8:	00006b37          	lui	s6,0x6
    49ac:	000069b7          	lui	s3,0x6
    49b0:	00100a13          	li	s4,1
    49b4:	00006bb7          	lui	s7,0x6
    49b8:	00000097          	auipc	ra,0x0
    49bc:	248080e7          	jalr	584(ra) # 4c00 <clear_audio>
    49c0:	00000593          	li	a1,0
    49c4:	00000513          	li	a0,0
    49c8:	ffffc097          	auipc	ra,0xffffc
    49cc:	694080e7          	jalr	1684(ra) # 105c <display_set_cursor>
    49d0:	0ff97593          	zext.b	a1,s2
    49d4:	07f58513          	add	a0,a1,127
    49d8:	0ff57513          	zext.b	a0,a0
    49dc:	ffffc097          	auipc	ra,0xffffc
    49e0:	694080e7          	jalr	1684(ra) # 1070 <display_set_front_back_color>
    49e4:	ec0a8513          	add	a0,s5,-320 # 5ec0 <font+0x23c>
    49e8:	00790913          	add	s2,s2,7
    49ec:	ffffd097          	auipc	ra,0xffffd
    49f0:	9dc080e7          	jalr	-1572(ra) # 13c8 <printf>
    49f4:	0c041663          	bnez	s0,4ac0 <Init_menu+0x22c>
    49f8:	00000513          	li	a0,0
    49fc:	0ff00593          	li	a1,255
    4a00:	ffffc097          	auipc	ra,0xffffc
    4a04:	670080e7          	jalr	1648(ra) # 1070 <display_set_front_back_color>
    4a08:	edcb0613          	add	a2,s6,-292 # 5edc <font+0x258>
    4a0c:	00000593          	li	a1,0
    4a10:	ee498513          	add	a0,s3,-284 # 5ee4 <font+0x260>
    4a14:	ffffd097          	auipc	ra,0xffffd
    4a18:	9b4080e7          	jalr	-1612(ra) # 13c8 <printf>
    4a1c:	0b441863          	bne	s0,s4,4acc <Init_menu+0x238>
    4a20:	00000513          	li	a0,0
    4a24:	0ff00593          	li	a1,255
    4a28:	ffffc097          	auipc	ra,0xffffc
    4a2c:	648080e7          	jalr	1608(ra) # 1070 <display_set_front_back_color>
    4a30:	eecb8613          	add	a2,s7,-276 # 5eec <font+0x268>
    4a34:	00100593          	li	a1,1
    4a38:	ee498513          	add	a0,s3,-284
    4a3c:	ffffd097          	auipc	ra,0xffffd
    4a40:	98c080e7          	jalr	-1652(ra) # 13c8 <printf>
    4a44:	ffffc097          	auipc	ra,0xffffc
    4a48:	78c080e7          	jalr	1932(ra) # 11d0 <display_refresh>
    4a4c:	0004a783          	lw	a5,0(s1)
    4a50:	0107f793          	and	a5,a5,16
    4a54:	08079263          	bnez	a5,4ad8 <Init_menu+0x244>
    4a58:	0004a783          	lw	a5,0(s1)
    4a5c:	0087f793          	and	a5,a5,8
    4a60:	08079863          	bnez	a5,4af0 <Init_menu+0x25c>
    4a64:	0004a783          	lw	a5,0(s1)
    4a68:	0407f793          	and	a5,a5,64
    4a6c:	f40786e3          	beqz	a5,49b8 <Init_menu+0x124>
    4a70:	ffffc097          	auipc	ra,0xffffc
    4a74:	5e0080e7          	jalr	1504(ra) # 1050 <display_framebuffer>
    4a78:	00004637          	lui	a2,0x4
    4a7c:	00000593          	li	a1,0
    4a80:	ffffc097          	auipc	ra,0xffffc
    4a84:	2dc080e7          	jalr	732(ra) # d5c <memset>
    4a88:	ffffc097          	auipc	ra,0xffffc
    4a8c:	748080e7          	jalr	1864(ra) # 11d0 <display_refresh>
    4a90:	02c12083          	lw	ra,44(sp)
    4a94:	00040513          	mv	a0,s0
    4a98:	02812403          	lw	s0,40(sp)
    4a9c:	02412483          	lw	s1,36(sp)
    4aa0:	02012903          	lw	s2,32(sp)
    4aa4:	01c12983          	lw	s3,28(sp)
    4aa8:	01812a03          	lw	s4,24(sp)
    4aac:	01412a83          	lw	s5,20(sp)
    4ab0:	01012b03          	lw	s6,16(sp)
    4ab4:	00c12b83          	lw	s7,12(sp)
    4ab8:	03010113          	add	sp,sp,48
    4abc:	00008067          	ret
    4ac0:	0ff00513          	li	a0,255
    4ac4:	00000593          	li	a1,0
    4ac8:	f39ff06f          	j	4a00 <Init_menu+0x16c>
    4acc:	0ff00513          	li	a0,255
    4ad0:	00000593          	li	a1,0
    4ad4:	f55ff06f          	j	4a28 <Init_menu+0x194>
    4ad8:	0004a783          	lw	a5,0(s1)
    4adc:	0087f793          	and	a5,a5,8
    4ae0:	f80792e3          	bnez	a5,4a64 <Init_menu+0x1d0>
    4ae4:	00100793          	li	a5,1
    4ae8:	40878433          	sub	s0,a5,s0
    4aec:	f79ff06f          	j	4a64 <Init_menu+0x1d0>
    4af0:	408a0433          	sub	s0,s4,s0
    4af4:	f71ff06f          	j	4a64 <Init_menu+0x1d0>

00004af8 <list_Albums.constprop.0>:
    4af8:	ec010113          	add	sp,sp,-320
    4afc:	00006537          	lui	a0,0x6
    4b00:	00410593          	add	a1,sp,4
    4b04:	ef450513          	add	a0,a0,-268 # 5ef4 <font+0x270>
    4b08:	12112e23          	sw	ra,316(sp)
    4b0c:	12812c23          	sw	s0,312(sp)
    4b10:	12912a23          	sw	s1,308(sp)
    4b14:	13212823          	sw	s2,304(sp)
    4b18:	13312623          	sw	s3,300(sp)
    4b1c:	13412423          	sw	s4,296(sp)
    4b20:	ffffe097          	auipc	ra,0xffffe
    4b24:	32c080e7          	jalr	812(ra) # 2e4c <fl_opendir>
    4b28:	02050a63          	beqz	a0,4b5c <list_Albums.constprop.0+0x64>
    4b2c:	0000b437          	lui	s0,0xb
    4b30:	0000b4b7          	lui	s1,0xb
    4b34:	00006a37          	lui	s4,0x6
    4b38:	00700913          	li	s2,7
    4b3c:	02e00993          	li	s3,46
    4b40:	e9840413          	add	s0,s0,-360 # ae98 <Albums>
    4b44:	e7848493          	add	s1,s1,-392 # ae78 <sizes>
    4b48:	134a2783          	lw	a5,308(s4) # 6134 <nAlbums>
    4b4c:	02f95863          	bge	s2,a5,4b7c <list_Albums.constprop.0+0x84>
    4b50:	00410513          	add	a0,sp,4
    4b54:	ffffd097          	auipc	ra,0xffffd
    4b58:	ed4080e7          	jalr	-300(ra) # 1a28 <fl_closedir>
    4b5c:	13c12083          	lw	ra,316(sp)
    4b60:	13812403          	lw	s0,312(sp)
    4b64:	13412483          	lw	s1,308(sp)
    4b68:	13012903          	lw	s2,304(sp)
    4b6c:	12c12983          	lw	s3,300(sp)
    4b70:	12812a03          	lw	s4,296(sp)
    4b74:	14010113          	add	sp,sp,320
    4b78:	00008067          	ret
    4b7c:	01010593          	add	a1,sp,16
    4b80:	00410513          	add	a0,sp,4
    4b84:	fffff097          	auipc	ra,0xfffff
    4b88:	97c080e7          	jalr	-1668(ra) # 3500 <fl_readdir>
    4b8c:	fc0512e3          	bnez	a0,4b50 <list_Albums.constprop.0+0x58>
    4b90:	01014783          	lbu	a5,16(sp)
    4b94:	fb378ae3          	beq	a5,s3,4b48 <list_Albums.constprop.0+0x50>
    4b98:	11414783          	lbu	a5,276(sp)
    4b9c:	fa0786e3          	beqz	a5,4b48 <list_Albums.constprop.0+0x50>
    4ba0:	134a2783          	lw	a5,308(s4)
    4ba4:	01600613          	li	a2,22
    4ba8:	01010593          	add	a1,sp,16
    4bac:	00179513          	sll	a0,a5,0x1
    4bb0:	00f50533          	add	a0,a0,a5
    4bb4:	00351513          	sll	a0,a0,0x3
    4bb8:	40f50533          	sub	a0,a0,a5
    4bbc:	00a40533          	add	a0,s0,a0
    4bc0:	ffffc097          	auipc	ra,0xffffc
    4bc4:	23c080e7          	jalr	572(ra) # dfc <strncpy>
    4bc8:	134a2703          	lw	a4,308(s4)
    4bcc:	11c12683          	lw	a3,284(sp)
    4bd0:	00171793          	sll	a5,a4,0x1
    4bd4:	00e787b3          	add	a5,a5,a4
    4bd8:	00379793          	sll	a5,a5,0x3
    4bdc:	40e787b3          	sub	a5,a5,a4
    4be0:	00f407b3          	add	a5,s0,a5
    4be4:	00078b23          	sb	zero,22(a5)
    4be8:	00271793          	sll	a5,a4,0x2
    4bec:	00f487b3          	add	a5,s1,a5
    4bf0:	00170713          	add	a4,a4,1
    4bf4:	00d7a023          	sw	a3,0(a5)
    4bf8:	12ea2a23          	sw	a4,308(s4)
    4bfc:	f4dff06f          	j	4b48 <list_Albums.constprop.0+0x50>

00004c00 <clear_audio>:
    4c00:	ff010113          	add	sp,sp,-16
    4c04:	000067b7          	lui	a5,0x6
    4c08:	00812423          	sw	s0,8(sp)
    4c0c:	c6c7a403          	lw	s0,-916(a5) # 5c6c <AUDIO>
    4c10:	00112623          	sw	ra,12(sp)
    4c14:	00912223          	sw	s1,4(sp)
    4c18:	00042703          	lw	a4,0(s0)
    4c1c:	00042783          	lw	a5,0(s0)
    4c20:	fef70ee3          	beq	a4,a5,4c1c <clear_audio+0x1c>
    4c24:	00042483          	lw	s1,0(s0)
    4c28:	20000613          	li	a2,512
    4c2c:	00000593          	li	a1,0
    4c30:	00048513          	mv	a0,s1
    4c34:	ffffc097          	auipc	ra,0xffffc
    4c38:	128080e7          	jalr	296(ra) # d5c <memset>
    4c3c:	00042783          	lw	a5,0(s0)
    4c40:	fef48ee3          	beq	s1,a5,4c3c <clear_audio+0x3c>
    4c44:	00042483          	lw	s1,0(s0)
    4c48:	20000613          	li	a2,512
    4c4c:	00000593          	li	a1,0
    4c50:	00048513          	mv	a0,s1
    4c54:	ffffc097          	auipc	ra,0xffffc
    4c58:	108080e7          	jalr	264(ra) # d5c <memset>
    4c5c:	00042783          	lw	a5,0(s0)
    4c60:	fef48ee3          	beq	s1,a5,4c5c <clear_audio+0x5c>
    4c64:	00c12083          	lw	ra,12(sp)
    4c68:	00812403          	lw	s0,8(sp)
    4c6c:	00412483          	lw	s1,4(sp)
    4c70:	01010113          	add	sp,sp,16
    4c74:	00008067          	ret

00004c78 <audio_menu>:
    4c78:	000067b7          	lui	a5,0x6
    4c7c:	1307a703          	lw	a4,304(a5) # 6130 <init>
    4c80:	fc010113          	add	sp,sp,-64
    4c84:	03212823          	sw	s2,48(sp)
    4c88:	03412423          	sw	s4,40(sp)
    4c8c:	01712e23          	sw	s7,28(sp)
    4c90:	02112e23          	sw	ra,60(sp)
    4c94:	02812c23          	sw	s0,56(sp)
    4c98:	02912a23          	sw	s1,52(sp)
    4c9c:	03312623          	sw	s3,44(sp)
    4ca0:	03512223          	sw	s5,36(sp)
    4ca4:	03612023          	sw	s6,32(sp)
    4ca8:	01812c23          	sw	s8,24(sp)
    4cac:	01912a23          	sw	s9,20(sp)
    4cb0:	01a12823          	sw	s10,16(sp)
    4cb4:	01b12623          	sw	s11,12(sp)
    4cb8:	00050913          	mv	s2,a0
    4cbc:	00058b93          	mv	s7,a1
    4cc0:	00006a37          	lui	s4,0x6
    4cc4:	08071a63          	bnez	a4,4d58 <audio_menu+0xe0>
    4cc8:	00100713          	li	a4,1
    4ccc:	00000593          	li	a1,0
    4cd0:	00000513          	li	a0,0
    4cd4:	12e7a823          	sw	a4,304(a5)
    4cd8:	ffffc097          	auipc	ra,0xffffc
    4cdc:	384080e7          	jalr	900(ra) # 105c <display_set_cursor>
    4ce0:	00000593          	li	a1,0
    4ce4:	0ff00513          	li	a0,255
    4ce8:	ffffc097          	auipc	ra,0xffffc
    4cec:	388080e7          	jalr	904(ra) # 1070 <display_set_front_back_color>
    4cf0:	00006537          	lui	a0,0x6
    4cf4:	efc50513          	add	a0,a0,-260 # 5efc <font+0x278>
    4cf8:	ffffc097          	auipc	ra,0xffffc
    4cfc:	6d0080e7          	jalr	1744(ra) # 13c8 <printf>
    4d00:	ffffc097          	auipc	ra,0xffffc
    4d04:	4d0080e7          	jalr	1232(ra) # 11d0 <display_refresh>
    4d08:	120a2a23          	sw	zero,308(s4) # 6134 <nAlbums>
    4d0c:	00000097          	auipc	ra,0x0
    4d10:	dec080e7          	jalr	-532(ra) # 4af8 <list_Albums.constprop.0>
    4d14:	134a2783          	lw	a5,308(s4)
    4d18:	04079063          	bnez	a5,4d58 <audio_menu+0xe0>
    4d1c:	00000593          	li	a1,0
    4d20:	00000513          	li	a0,0
    4d24:	ffffc097          	auipc	ra,0xffffc
    4d28:	338080e7          	jalr	824(ra) # 105c <display_set_cursor>
    4d2c:	00000593          	li	a1,0
    4d30:	0ff00513          	li	a0,255
    4d34:	ffffc097          	auipc	ra,0xffffc
    4d38:	33c080e7          	jalr	828(ra) # 1070 <display_set_front_back_color>
    4d3c:	00006537          	lui	a0,0x6
    4d40:	f1450513          	add	a0,a0,-236 # 5f14 <font+0x290>
    4d44:	ffffc097          	auipc	ra,0xffffc
    4d48:	684080e7          	jalr	1668(ra) # 13c8 <printf>
    4d4c:	ffffc097          	auipc	ra,0xffffc
    4d50:	484080e7          	jalr	1156(ra) # 11d0 <display_refresh>
    4d54:	0000006f          	j	4d54 <audio_menu+0xdc>
    4d58:	000067b7          	lui	a5,0x6
    4d5c:	c707a983          	lw	s3,-912(a5) # 5c70 <BUTTONS>
    4d60:	0000bc37          	lui	s8,0xb
    4d64:	00000a93          	li	s5,0
    4d68:	00000413          	li	s0,0
    4d6c:	00006cb7          	lui	s9,0x6
    4d70:	e98c0b13          	add	s6,s8,-360 # ae98 <Albums>
    4d74:	00006d37          	lui	s10,0x6
    4d78:	00000593          	li	a1,0
    4d7c:	00000513          	li	a0,0
    4d80:	ffffc097          	auipc	ra,0xffffc
    4d84:	2dc080e7          	jalr	732(ra) # 105c <display_set_cursor>
    4d88:	0ffaf593          	zext.b	a1,s5
    4d8c:	07f58513          	add	a0,a1,127
    4d90:	0ff57513          	zext.b	a0,a0
    4d94:	ffffc097          	auipc	ra,0xffffc
    4d98:	2dc080e7          	jalr	732(ra) # 1070 <display_set_front_back_color>
    4d9c:	f30c8513          	add	a0,s9,-208 # 5f30 <font+0x2ac>
    4da0:	007a8a93          	add	s5,s5,7
    4da4:	ffffc097          	auipc	ra,0xffffc
    4da8:	624080e7          	jalr	1572(ra) # 13c8 <printf>
    4dac:	e98c0d93          	add	s11,s8,-360
    4db0:	00000493          	li	s1,0
    4db4:	134a2783          	lw	a5,308(s4)
    4db8:	08f4c463          	blt	s1,a5,4e40 <audio_menu+0x1c8>
    4dbc:	ffffc097          	auipc	ra,0xffffc
    4dc0:	414080e7          	jalr	1044(ra) # 11d0 <display_refresh>
    4dc4:	0009a783          	lw	a5,0(s3)
    4dc8:	0107f793          	and	a5,a5,16
    4dcc:	00078463          	beqz	a5,4dd4 <audio_menu+0x15c>
    4dd0:	00140413          	add	s0,s0,1
    4dd4:	0009a783          	lw	a5,0(s3)
    4dd8:	0087f793          	and	a5,a5,8
    4ddc:	00078463          	beqz	a5,4de4 <audio_menu+0x16c>
    4de0:	fff40413          	add	s0,s0,-1
    4de4:	134a2783          	lw	a5,308(s4)
    4de8:	08045c63          	bgez	s0,4e80 <audio_menu+0x208>
    4dec:	fff78413          	add	s0,a5,-1
    4df0:	0009a783          	lw	a5,0(s3)
    4df4:	0207f793          	and	a5,a5,32
    4df8:	08078a63          	beqz	a5,4e8c <audio_menu+0x214>
    4dfc:	03c12083          	lw	ra,60(sp)
    4e00:	03812403          	lw	s0,56(sp)
    4e04:	00100793          	li	a5,1
    4e08:	00fba023          	sw	a5,0(s7)
    4e0c:	03412483          	lw	s1,52(sp)
    4e10:	03012903          	lw	s2,48(sp)
    4e14:	02c12983          	lw	s3,44(sp)
    4e18:	02812a03          	lw	s4,40(sp)
    4e1c:	02412a83          	lw	s5,36(sp)
    4e20:	02012b03          	lw	s6,32(sp)
    4e24:	01c12b83          	lw	s7,28(sp)
    4e28:	01812c03          	lw	s8,24(sp)
    4e2c:	01412c83          	lw	s9,20(sp)
    4e30:	01012d03          	lw	s10,16(sp)
    4e34:	00c12d83          	lw	s11,12(sp)
    4e38:	04010113          	add	sp,sp,64
    4e3c:	00008067          	ret
    4e40:	02940a63          	beq	s0,s1,4e74 <audio_menu+0x1fc>
    4e44:	0ff00513          	li	a0,255
    4e48:	00000593          	li	a1,0
    4e4c:	ffffc097          	auipc	ra,0xffffc
    4e50:	224080e7          	jalr	548(ra) # 1070 <display_set_front_back_color>
    4e54:	000d8613          	mv	a2,s11
    4e58:	00048593          	mv	a1,s1
    4e5c:	ee4d0513          	add	a0,s10,-284 # 5ee4 <font+0x260>
    4e60:	ffffc097          	auipc	ra,0xffffc
    4e64:	568080e7          	jalr	1384(ra) # 13c8 <printf>
    4e68:	00148493          	add	s1,s1,1
    4e6c:	017d8d93          	add	s11,s11,23
    4e70:	f45ff06f          	j	4db4 <audio_menu+0x13c>
    4e74:	00000513          	li	a0,0
    4e78:	0ff00593          	li	a1,255
    4e7c:	fd1ff06f          	j	4e4c <audio_menu+0x1d4>
    4e80:	f6f448e3          	blt	s0,a5,4df0 <audio_menu+0x178>
    4e84:	00000413          	li	s0,0
    4e88:	f69ff06f          	j	4df0 <audio_menu+0x178>
    4e8c:	0009a783          	lw	a5,0(s3)
    4e90:	0407f793          	and	a5,a5,64
    4e94:	ee0782e3          	beqz	a5,4d78 <audio_menu+0x100>
    4e98:	00141593          	sll	a1,s0,0x1
    4e9c:	008585b3          	add	a1,a1,s0
    4ea0:	00359593          	sll	a1,a1,0x3
    4ea4:	408585b3          	sub	a1,a1,s0
    4ea8:	00bb05b3          	add	a1,s6,a1
    4eac:	01600613          	li	a2,22
    4eb0:	00090513          	mv	a0,s2
    4eb4:	ffffc097          	auipc	ra,0xffffc
    4eb8:	f48080e7          	jalr	-184(ra) # dfc <strncpy>
    4ebc:	00090b23          	sb	zero,22(s2)
    4ec0:	ffffc097          	auipc	ra,0xffffc
    4ec4:	190080e7          	jalr	400(ra) # 1050 <display_framebuffer>
    4ec8:	00004637          	lui	a2,0x4
    4ecc:	00000593          	li	a1,0
    4ed0:	ffffc097          	auipc	ra,0xffffc
    4ed4:	e8c080e7          	jalr	-372(ra) # d5c <memset>
    4ed8:	03812403          	lw	s0,56(sp)
    4edc:	03c12083          	lw	ra,60(sp)
    4ee0:	03412483          	lw	s1,52(sp)
    4ee4:	03012903          	lw	s2,48(sp)
    4ee8:	02c12983          	lw	s3,44(sp)
    4eec:	02812a03          	lw	s4,40(sp)
    4ef0:	02412a83          	lw	s5,36(sp)
    4ef4:	02012b03          	lw	s6,32(sp)
    4ef8:	01c12b83          	lw	s7,28(sp)
    4efc:	01812c03          	lw	s8,24(sp)
    4f00:	01412c83          	lw	s9,20(sp)
    4f04:	01012d03          	lw	s10,16(sp)
    4f08:	00c12d83          	lw	s11,12(sp)
    4f0c:	04010113          	add	sp,sp,64
    4f10:	ffffc317          	auipc	t1,0xffffc
    4f14:	2c030067          	jr	704(t1) # 11d0 <display_refresh>

00004f18 <music_play>:
    4f18:	81010113          	add	sp,sp,-2032
    4f1c:	7e112623          	sw	ra,2028(sp)
    4f20:	7e812423          	sw	s0,2024(sp)
    4f24:	7e912223          	sw	s1,2020(sp)
    4f28:	7f212023          	sw	s2,2016(sp)
    4f2c:	7d312e23          	sw	s3,2012(sp)
    4f30:	7d412c23          	sw	s4,2008(sp)
    4f34:	7d512a23          	sw	s5,2004(sp)
    4f38:	7d612823          	sw	s6,2000(sp)
    4f3c:	7d712623          	sw	s7,1996(sp)
    4f40:	7d812423          	sw	s8,1992(sp)
    4f44:	7d912223          	sw	s9,1988(sp)
    4f48:	7da12023          	sw	s10,1984(sp)
    4f4c:	7bb12e23          	sw	s11,1980(sp)
    4f50:	f3010113          	add	sp,sp,-208
    4f54:	00050913          	mv	s2,a0
    4f58:	00058413          	mv	s0,a1
    4f5c:	ffffc097          	auipc	ra,0xffffc
    4f60:	0f4080e7          	jalr	244(ra) # 1050 <display_framebuffer>
    4f64:	00004637          	lui	a2,0x4
    4f68:	00000593          	li	a1,0
    4f6c:	ffffc097          	auipc	ra,0xffffc
    4f70:	df0080e7          	jalr	-528(ra) # d5c <memset>
    4f74:	00000593          	li	a1,0
    4f78:	00000513          	li	a0,0
    4f7c:	ffffc097          	auipc	ra,0xffffc
    4f80:	0e0080e7          	jalr	224(ra) # 105c <display_set_cursor>
    4f84:	00000593          	li	a1,0
    4f88:	07f00513          	li	a0,127
    4f8c:	ffffc097          	auipc	ra,0xffffc
    4f90:	0e4080e7          	jalr	228(ra) # 1070 <display_set_front_back_color>
    4f94:	00006537          	lui	a0,0x6
    4f98:	f5050513          	add	a0,a0,-176 # 5f50 <font+0x2cc>
    4f9c:	ffffc097          	auipc	ra,0xffffc
    4fa0:	42c080e7          	jalr	1068(ra) # 13c8 <printf>
    4fa4:	fffff4b7          	lui	s1,0xfffff
    4fa8:	000017b7          	lui	a5,0x1
    4fac:	78048493          	add	s1,s1,1920 # fffff780 <__stacktop+0xfffef780>
    4fb0:	88078793          	add	a5,a5,-1920 # 880 <sdcard_start_sector+0x3c>
    4fb4:	009787b3          	add	a5,a5,s1
    4fb8:	002784b3          	add	s1,a5,sp
    4fbc:	00040593          	mv	a1,s0
    4fc0:	00048513          	mv	a0,s1
    4fc4:	ffffc097          	auipc	ra,0xffffc
    4fc8:	e5c080e7          	jalr	-420(ra) # e20 <strcpy>
    4fcc:	000065b7          	lui	a1,0x6
    4fd0:	f7058593          	add	a1,a1,-144 # 5f70 <font+0x2ec>
    4fd4:	00048513          	mv	a0,s1
    4fd8:	00191413          	sll	s0,s2,0x1
    4fdc:	ffffc097          	auipc	ra,0xffffc
    4fe0:	e64080e7          	jalr	-412(ra) # e40 <strcat>
    4fe4:	01240433          	add	s0,s0,s2
    4fe8:	00341413          	sll	s0,s0,0x3
    4fec:	0000b7b7          	lui	a5,0xb
    4ff0:	f5078793          	add	a5,a5,-176 # af50 <Songs>
    4ff4:	41240433          	sub	s0,s0,s2
    4ff8:	00f40433          	add	s0,s0,a5
    4ffc:	00040593          	mv	a1,s0
    5000:	00048513          	mv	a0,s1
    5004:	ffffc097          	auipc	ra,0xffffc
    5008:	e3c080e7          	jalr	-452(ra) # e40 <strcat>
    500c:	000065b7          	lui	a1,0x6
    5010:	f7458593          	add	a1,a1,-140 # 5f74 <font+0x2f0>
    5014:	00048513          	mv	a0,s1
    5018:	fffff097          	auipc	ra,0xfffff
    501c:	478080e7          	jalr	1144(ra) # 4490 <fl_fopen>
    5020:	04051e63          	bnez	a0,507c <music_play+0x164>
    5024:	00006537          	lui	a0,0x6
    5028:	f7850513          	add	a0,a0,-136 # 5f78 <font+0x2f4>
    502c:	ffffc097          	auipc	ra,0xffffc
    5030:	39c080e7          	jalr	924(ra) # 13c8 <printf>
    5034:	ffffc097          	auipc	ra,0xffffc
    5038:	19c080e7          	jalr	412(ra) # 11d0 <display_refresh>
    503c:	0d010113          	add	sp,sp,208
    5040:	7ec12083          	lw	ra,2028(sp)
    5044:	7e812403          	lw	s0,2024(sp)
    5048:	7e412483          	lw	s1,2020(sp)
    504c:	7e012903          	lw	s2,2016(sp)
    5050:	7dc12983          	lw	s3,2012(sp)
    5054:	7d812a03          	lw	s4,2008(sp)
    5058:	7d412a83          	lw	s5,2004(sp)
    505c:	7d012b03          	lw	s6,2000(sp)
    5060:	7cc12b83          	lw	s7,1996(sp)
    5064:	7c812c03          	lw	s8,1992(sp)
    5068:	7c412c83          	lw	s9,1988(sp)
    506c:	7c012d03          	lw	s10,1984(sp)
    5070:	7bc12d83          	lw	s11,1980(sp)
    5074:	7f010113          	add	sp,sp,2032
    5078:	00008067          	ret
    507c:	0ff00593          	li	a1,255
    5080:	00050993          	mv	s3,a0
    5084:	00000513          	li	a0,0
    5088:	ffffc097          	auipc	ra,0xffffc
    508c:	fe8080e7          	jalr	-24(ra) # 1070 <display_set_front_back_color>
    5090:	00006537          	lui	a0,0x6
    5094:	f8c50513          	add	a0,a0,-116 # 5f8c <font+0x308>
    5098:	ffffc097          	auipc	ra,0xffffc
    509c:	330080e7          	jalr	816(ra) # 13c8 <printf>
    50a0:	ffffc097          	auipc	ra,0xffffc
    50a4:	130080e7          	jalr	304(ra) # 11d0 <display_refresh>
    50a8:	00000593          	li	a1,0
    50ac:	0ff00513          	li	a0,255
    50b0:	ffffc097          	auipc	ra,0xffffc
    50b4:	fc0080e7          	jalr	-64(ra) # 1070 <display_set_front_back_color>
    50b8:	00006537          	lui	a0,0x6
    50bc:	fa050513          	add	a0,a0,-96 # 5fa0 <font+0x31c>
    50c0:	ffffc097          	auipc	ra,0xffffc
    50c4:	308080e7          	jalr	776(ra) # 13c8 <printf>
    50c8:	00040513          	mv	a0,s0
    50cc:	ffffc097          	auipc	ra,0xffffc
    50d0:	2fc080e7          	jalr	764(ra) # 13c8 <printf>
    50d4:	00006537          	lui	a0,0x6
    50d8:	0e050513          	add	a0,a0,224 # 60e0 <font+0x45c>
    50dc:	ffffc097          	auipc	ra,0xffffc
    50e0:	2ec080e7          	jalr	748(ra) # 13c8 <printf>
    50e4:	ffffc097          	auipc	ra,0xffffc
    50e8:	0ec080e7          	jalr	236(ra) # 11d0 <display_refresh>
    50ec:	00000097          	auipc	ra,0x0
    50f0:	b14080e7          	jalr	-1260(ra) # 4c00 <clear_audio>
    50f4:	000067b7          	lui	a5,0x6
    50f8:	c707ab03          	lw	s6,-912(a5) # 5c70 <BUTTONS>
    50fc:	000067b7          	lui	a5,0x6
    5100:	c6c7ac03          	lw	s8,-916(a5) # 5c6c <AUDIO>
    5104:	000067b7          	lui	a5,0x6
    5108:	c807a783          	lw	a5,-896(a5) # 5c80 <LEDS>
    510c:	00000413          	li	s0,0
    5110:	00000b93          	li	s7,0
    5114:	00100493          	li	s1,1
    5118:	00100a13          	li	s4,1
    511c:	20000c93          	li	s9,512
    5120:	00078d93          	mv	s11,a5
    5124:	000b2903          	lw	s2,0(s6)
    5128:	02097913          	and	s2,s2,32
    512c:	02091463          	bnez	s2,5154 <music_play+0x23c>
    5130:	000b2783          	lw	a5,0(s6)
    5134:	0087f793          	and	a5,a5,8
    5138:	02079a63          	bnez	a5,516c <music_play+0x254>
    513c:	000b2783          	lw	a5,0(s6)
    5140:	0107f793          	and	a5,a5,16
    5144:	02078863          	beqz	a5,5174 <music_play+0x25c>
    5148:	02040663          	beqz	s0,5174 <music_play+0x25c>
    514c:	fff40413          	add	s0,s0,-1
    5150:	0240006f          	j	5174 <music_play+0x25c>
    5154:	00000097          	auipc	ra,0x0
    5158:	aac080e7          	jalr	-1364(ra) # 4c00 <clear_audio>
    515c:	00098513          	mv	a0,s3
    5160:	fffff097          	auipc	ra,0xfffff
    5164:	c88080e7          	jalr	-888(ra) # 3de8 <fl_fclose>
    5168:	ed5ff06f          	j	503c <music_play+0x124>
    516c:	008a4463          	blt	s4,s0,5174 <music_play+0x25c>
    5170:	00140413          	add	s0,s0,1
    5174:	008c9ab3          	sll	s5,s9,s0
    5178:	00098693          	mv	a3,s3
    517c:	000a8613          	mv	a2,s5
    5180:	00100593          	li	a1,1
    5184:	08010513          	add	a0,sp,128
    5188:	000c2d03          	lw	s10,0(s8)
    518c:	fffff097          	auipc	ra,0xfffff
    5190:	d3c080e7          	jalr	-708(ra) # 3ec8 <fl_fread>
    5194:	fd5544e3          	blt	a0,s5,515c <music_play+0x244>
    5198:	008a1733          	sll	a4,s4,s0
    519c:	08010793          	add	a5,sp,128
    51a0:	0007c603          	lbu	a2,0(a5)
    51a4:	01a906b3          	add	a3,s2,s10
    51a8:	00190913          	add	s2,s2,1
    51ac:	00c68023          	sb	a2,0(a3)
    51b0:	00e787b3          	add	a5,a5,a4
    51b4:	ff9916e3          	bne	s2,s9,51a0 <music_play+0x288>
    51b8:	000c2783          	lw	a5,0(s8)
    51bc:	fefd0ee3          	beq	s10,a5,51b8 <music_play+0x2a0>
    51c0:	08000793          	li	a5,128
    51c4:	00f48463          	beq	s1,a5,51cc <music_play+0x2b4>
    51c8:	01449463          	bne	s1,s4,51d0 <music_play+0x2b8>
    51cc:	417a0bb3          	sub	s7,s4,s7
    51d0:	000b8863          	beqz	s7,51e0 <music_play+0x2c8>
    51d4:	00149493          	sll	s1,s1,0x1
    51d8:	009da023          	sw	s1,0(s11)
    51dc:	f49ff06f          	j	5124 <music_play+0x20c>
    51e0:	4014d493          	sra	s1,s1,0x1
    51e4:	ff5ff06f          	j	51d8 <music_play+0x2c0>

000051e8 <Select_and_play_Song>:
    51e8:	e7010113          	add	sp,sp,-400
    51ec:	19212023          	sw	s2,384(sp)
    51f0:	00000593          	li	a1,0
    51f4:	00050913          	mv	s2,a0
    51f8:	00000513          	li	a0,0
    51fc:	18112623          	sw	ra,396(sp)
    5200:	18912223          	sw	s1,388(sp)
    5204:	18812423          	sw	s0,392(sp)
    5208:	17312e23          	sw	s3,380(sp)
    520c:	17412c23          	sw	s4,376(sp)
    5210:	17512a23          	sw	s5,372(sp)
    5214:	17612823          	sw	s6,368(sp)
    5218:	17712623          	sw	s7,364(sp)
    521c:	ffffc097          	auipc	ra,0xffffc
    5220:	e40080e7          	jalr	-448(ra) # 105c <display_set_cursor>
    5224:	00000593          	li	a1,0
    5228:	0ff00513          	li	a0,255
    522c:	ffffc097          	auipc	ra,0xffffc
    5230:	e44080e7          	jalr	-444(ra) # 1070 <display_set_front_back_color>
    5234:	ffffc097          	auipc	ra,0xffffc
    5238:	f9c080e7          	jalr	-100(ra) # 11d0 <display_refresh>
    523c:	00090593          	mv	a1,s2
    5240:	01010513          	add	a0,sp,16
    5244:	00010823          	sb	zero,16(sp)
    5248:	ffffc097          	auipc	ra,0xffffc
    524c:	bf8080e7          	jalr	-1032(ra) # e40 <strcat>
    5250:	000065b7          	lui	a1,0x6
    5254:	fac58593          	add	a1,a1,-84 # 5fac <font+0x328>
    5258:	01010513          	add	a0,sp,16
    525c:	ffffc097          	auipc	ra,0xffffc
    5260:	be4080e7          	jalr	-1052(ra) # e40 <strcat>
    5264:	000065b7          	lui	a1,0x6
    5268:	fb458593          	add	a1,a1,-76 # 5fb4 <font+0x330>
    526c:	000064b7          	lui	s1,0x6
    5270:	03010513          	add	a0,sp,48
    5274:	1204ac23          	sw	zero,312(s1) # 6138 <NSongs>
    5278:	ffffc097          	auipc	ra,0xffffc
    527c:	ba8080e7          	jalr	-1112(ra) # e20 <strcpy>
    5280:	00090593          	mv	a1,s2
    5284:	03010513          	add	a0,sp,48
    5288:	ffffc097          	auipc	ra,0xffffc
    528c:	bb8080e7          	jalr	-1096(ra) # e40 <strcat>
    5290:	00410593          	add	a1,sp,4
    5294:	03010513          	add	a0,sp,48
    5298:	ffffe097          	auipc	ra,0xffffe
    529c:	bb4080e7          	jalr	-1100(ra) # 2e4c <fl_opendir>
    52a0:	02050463          	beqz	a0,52c8 <Select_and_play_Song+0xe0>
    52a4:	0000b437          	lui	s0,0xb
    52a8:	00700993          	li	s3,7
    52ac:	02e00a13          	li	s4,46
    52b0:	f5040413          	add	s0,s0,-176 # af50 <Songs>
    52b4:	1384a783          	lw	a5,312(s1)
    52b8:	0ef9dc63          	bge	s3,a5,53b0 <Select_and_play_Song+0x1c8>
    52bc:	00410513          	add	a0,sp,4
    52c0:	ffffc097          	auipc	ra,0xffffc
    52c4:	768080e7          	jalr	1896(ra) # 1a28 <fl_closedir>
    52c8:	1384a783          	lw	a5,312(s1)
    52cc:	00000413          	li	s0,0
    52d0:	14078a63          	beqz	a5,5424 <Select_and_play_Song+0x23c>
    52d4:	000067b7          	lui	a5,0x6
    52d8:	c707a983          	lw	s3,-912(a5) # 5c70 <BUTTONS>
    52dc:	00006a37          	lui	s4,0x6
    52e0:	0000bab7          	lui	s5,0xb
    52e4:	00006b37          	lui	s6,0x6
    52e8:	00000593          	li	a1,0
    52ec:	00000513          	li	a0,0
    52f0:	ffffc097          	auipc	ra,0xffffc
    52f4:	d6c080e7          	jalr	-660(ra) # 105c <display_set_cursor>
    52f8:	00000593          	li	a1,0
    52fc:	07f00513          	li	a0,127
    5300:	ffffc097          	auipc	ra,0xffffc
    5304:	d70080e7          	jalr	-656(ra) # 1070 <display_set_front_back_color>
    5308:	fdca0513          	add	a0,s4,-36 # 5fdc <font+0x358>
    530c:	ffffc097          	auipc	ra,0xffffc
    5310:	0bc080e7          	jalr	188(ra) # 13c8 <printf>
    5314:	f50a8b93          	add	s7,s5,-176 # af50 <Songs>
    5318:	00000913          	li	s2,0
    531c:	1384a783          	lw	a5,312(s1)
    5320:	14f94e63          	blt	s2,a5,547c <Select_and_play_Song+0x294>
    5324:	ffffc097          	auipc	ra,0xffffc
    5328:	eac080e7          	jalr	-340(ra) # 11d0 <display_refresh>
    532c:	0009a783          	lw	a5,0(s3)
    5330:	0107f793          	and	a5,a5,16
    5334:	00078463          	beqz	a5,533c <Select_and_play_Song+0x154>
    5338:	00140413          	add	s0,s0,1
    533c:	0009a783          	lw	a5,0(s3)
    5340:	0087f793          	and	a5,a5,8
    5344:	00078463          	beqz	a5,534c <Select_and_play_Song+0x164>
    5348:	fff40413          	add	s0,s0,-1
    534c:	1384a783          	lw	a5,312(s1)
    5350:	16045663          	bgez	s0,54bc <Select_and_play_Song+0x2d4>
    5354:	fff78413          	add	s0,a5,-1
    5358:	0009a783          	lw	a5,0(s3)
    535c:	0207f793          	and	a5,a5,32
    5360:	16078463          	beqz	a5,54c8 <Select_and_play_Song+0x2e0>
    5364:	ffffc097          	auipc	ra,0xffffc
    5368:	cec080e7          	jalr	-788(ra) # 1050 <display_framebuffer>
    536c:	00004637          	lui	a2,0x4
    5370:	00000593          	li	a1,0
    5374:	ffffc097          	auipc	ra,0xffffc
    5378:	9e8080e7          	jalr	-1560(ra) # d5c <memset>
    537c:	ffffc097          	auipc	ra,0xffffc
    5380:	e54080e7          	jalr	-428(ra) # 11d0 <display_refresh>
    5384:	18c12083          	lw	ra,396(sp)
    5388:	18812403          	lw	s0,392(sp)
    538c:	18412483          	lw	s1,388(sp)
    5390:	18012903          	lw	s2,384(sp)
    5394:	17c12983          	lw	s3,380(sp)
    5398:	17812a03          	lw	s4,376(sp)
    539c:	17412a83          	lw	s5,372(sp)
    53a0:	17012b03          	lw	s6,368(sp)
    53a4:	16c12b83          	lw	s7,364(sp)
    53a8:	19010113          	add	sp,sp,400
    53ac:	00008067          	ret
    53b0:	05010593          	add	a1,sp,80
    53b4:	00410513          	add	a0,sp,4
    53b8:	ffffe097          	auipc	ra,0xffffe
    53bc:	148080e7          	jalr	328(ra) # 3500 <fl_readdir>
    53c0:	ee051ee3          	bnez	a0,52bc <Select_and_play_Song+0xd4>
    53c4:	05014783          	lbu	a5,80(sp)
    53c8:	ef4786e3          	beq	a5,s4,52b4 <Select_and_play_Song+0xcc>
    53cc:	15414783          	lbu	a5,340(sp)
    53d0:	ee0792e3          	bnez	a5,52b4 <Select_and_play_Song+0xcc>
    53d4:	1384a703          	lw	a4,312(s1)
    53d8:	01600613          	li	a2,22
    53dc:	05010593          	add	a1,sp,80
    53e0:	00171793          	sll	a5,a4,0x1
    53e4:	00e787b3          	add	a5,a5,a4
    53e8:	00379793          	sll	a5,a5,0x3
    53ec:	40e787b3          	sub	a5,a5,a4
    53f0:	00f40533          	add	a0,s0,a5
    53f4:	ffffc097          	auipc	ra,0xffffc
    53f8:	a08080e7          	jalr	-1528(ra) # dfc <strncpy>
    53fc:	1384a703          	lw	a4,312(s1)
    5400:	00171793          	sll	a5,a4,0x1
    5404:	00e787b3          	add	a5,a5,a4
    5408:	00379793          	sll	a5,a5,0x3
    540c:	40e787b3          	sub	a5,a5,a4
    5410:	00f407b3          	add	a5,s0,a5
    5414:	00170713          	add	a4,a4,1
    5418:	00078b23          	sb	zero,22(a5)
    541c:	12e4ac23          	sw	a4,312(s1)
    5420:	e95ff06f          	j	52b4 <Select_and_play_Song+0xcc>
    5424:	00000593          	li	a1,0
    5428:	00000513          	li	a0,0
    542c:	ffffc097          	auipc	ra,0xffffc
    5430:	c30080e7          	jalr	-976(ra) # 105c <display_set_cursor>
    5434:	00000593          	li	a1,0
    5438:	0ff00513          	li	a0,255
    543c:	ffffc097          	auipc	ra,0xffffc
    5440:	c34080e7          	jalr	-972(ra) # 1070 <display_set_front_back_color>
    5444:	00006537          	lui	a0,0x6
    5448:	fbc50513          	add	a0,a0,-68 # 5fbc <font+0x338>
    544c:	ffffc097          	auipc	ra,0xffffc
    5450:	f7c080e7          	jalr	-132(ra) # 13c8 <printf>
    5454:	00090513          	mv	a0,s2
    5458:	ffffc097          	auipc	ra,0xffffc
    545c:	f70080e7          	jalr	-144(ra) # 13c8 <printf>
    5460:	00006537          	lui	a0,0x6
    5464:	fd050513          	add	a0,a0,-48 # 5fd0 <font+0x34c>
    5468:	ffffc097          	auipc	ra,0xffffc
    546c:	f60080e7          	jalr	-160(ra) # 13c8 <printf>
    5470:	ffffc097          	auipc	ra,0xffffc
    5474:	d60080e7          	jalr	-672(ra) # 11d0 <display_refresh>
    5478:	0000006f          	j	5478 <Select_and_play_Song+0x290>
    547c:	03240a63          	beq	s0,s2,54b0 <Select_and_play_Song+0x2c8>
    5480:	0ff00513          	li	a0,255
    5484:	00000593          	li	a1,0
    5488:	ffffc097          	auipc	ra,0xffffc
    548c:	be8080e7          	jalr	-1048(ra) # 1070 <display_set_front_back_color>
    5490:	000b8613          	mv	a2,s7
    5494:	00090593          	mv	a1,s2
    5498:	ee4b0513          	add	a0,s6,-284 # 5ee4 <font+0x260>
    549c:	ffffc097          	auipc	ra,0xffffc
    54a0:	f2c080e7          	jalr	-212(ra) # 13c8 <printf>
    54a4:	00190913          	add	s2,s2,1
    54a8:	017b8b93          	add	s7,s7,23
    54ac:	e71ff06f          	j	531c <Select_and_play_Song+0x134>
    54b0:	00000513          	li	a0,0
    54b4:	0ff00593          	li	a1,255
    54b8:	fd1ff06f          	j	5488 <Select_and_play_Song+0x2a0>
    54bc:	e8f44ee3          	blt	s0,a5,5358 <Select_and_play_Song+0x170>
    54c0:	00000413          	li	s0,0
    54c4:	e95ff06f          	j	5358 <Select_and_play_Song+0x170>
    54c8:	0009a783          	lw	a5,0(s3)
    54cc:	0407f793          	and	a5,a5,64
    54d0:	e0078ce3          	beqz	a5,52e8 <Select_and_play_Song+0x100>
    54d4:	ffffc097          	auipc	ra,0xffffc
    54d8:	b7c080e7          	jalr	-1156(ra) # 1050 <display_framebuffer>
    54dc:	00004637          	lui	a2,0x4
    54e0:	00000593          	li	a1,0
    54e4:	ffffc097          	auipc	ra,0xffffc
    54e8:	878080e7          	jalr	-1928(ra) # d5c <memset>
    54ec:	ffffc097          	auipc	ra,0xffffc
    54f0:	ce4080e7          	jalr	-796(ra) # 11d0 <display_refresh>
    54f4:	03010593          	add	a1,sp,48
    54f8:	00040513          	mv	a0,s0
    54fc:	00000097          	auipc	ra,0x0
    5500:	a1c080e7          	jalr	-1508(ra) # 4f18 <music_play>
    5504:	ffffc097          	auipc	ra,0xffffc
    5508:	b4c080e7          	jalr	-1204(ra) # 1050 <display_framebuffer>
    550c:	00004637          	lui	a2,0x4
    5510:	00000593          	li	a1,0
    5514:	ffffc097          	auipc	ra,0xffffc
    5518:	848080e7          	jalr	-1976(ra) # d5c <memset>
    551c:	ffffc097          	auipc	ra,0xffffc
    5520:	cb4080e7          	jalr	-844(ra) # 11d0 <display_refresh>
    5524:	dc5ff06f          	j	52e8 <Select_and_play_Song+0x100>

00005528 <print_time_seconds>:
    5528:	0000c5b7          	lui	a1,0xc
    552c:	ff010113          	add	sp,sp,-16
    5530:	35058593          	add	a1,a1,848 # c350 <Songs+0x1400>
    5534:	00112623          	sw	ra,12(sp)
    5538:	00812423          	sw	s0,8(sp)
    553c:	00912223          	sw	s1,4(sp)
    5540:	00050493          	mv	s1,a0
    5544:	ffffb097          	auipc	ra,0xffffb
    5548:	76c080e7          	jalr	1900(ra) # cb0 <__udivsi3>
    554c:	3e800593          	li	a1,1000
    5550:	ffffb097          	auipc	ra,0xffffb
    5554:	7a8080e7          	jalr	1960(ra) # cf8 <__umodsi3>
    5558:	02faf5b7          	lui	a1,0x2faf
    555c:	00050413          	mv	s0,a0
    5560:	08058593          	add	a1,a1,128 # 2faf080 <__stacktop+0x2f9f080>
    5564:	00048513          	mv	a0,s1
    5568:	ffffb097          	auipc	ra,0xffffb
    556c:	748080e7          	jalr	1864(ra) # cb0 <__udivsi3>
    5570:	00050593          	mv	a1,a0
    5574:	00006537          	lui	a0,0x6
    5578:	ffc50513          	add	a0,a0,-4 # 5ffc <font+0x378>
    557c:	ffffc097          	auipc	ra,0xffffc
    5580:	e4c080e7          	jalr	-436(ra) # 13c8 <printf>
    5584:	06400593          	li	a1,100
    5588:	00040513          	mv	a0,s0
    558c:	ffffb097          	auipc	ra,0xffffb
    5590:	724080e7          	jalr	1828(ra) # cb0 <__udivsi3>
    5594:	000064b7          	lui	s1,0x6
    5598:	1104a783          	lw	a5,272(s1) # 6110 <f_putchar>
    559c:	03050513          	add	a0,a0,48
    55a0:	000780e7          	jalr	a5
    55a4:	00a00593          	li	a1,10
    55a8:	00040513          	mv	a0,s0
    55ac:	ffffb097          	auipc	ra,0xffffb
    55b0:	704080e7          	jalr	1796(ra) # cb0 <__udivsi3>
    55b4:	00a00593          	li	a1,10
    55b8:	ffffb097          	auipc	ra,0xffffb
    55bc:	740080e7          	jalr	1856(ra) # cf8 <__umodsi3>
    55c0:	1104a783          	lw	a5,272(s1)
    55c4:	03050513          	add	a0,a0,48
    55c8:	000780e7          	jalr	a5
    55cc:	00a00593          	li	a1,10
    55d0:	00040513          	mv	a0,s0
    55d4:	ffffb097          	auipc	ra,0xffffb
    55d8:	724080e7          	jalr	1828(ra) # cf8 <__umodsi3>
    55dc:	1104a783          	lw	a5,272(s1)
    55e0:	03050513          	add	a0,a0,48
    55e4:	000780e7          	jalr	a5
    55e8:	00812403          	lw	s0,8(sp)
    55ec:	00c12083          	lw	ra,12(sp)
    55f0:	00412483          	lw	s1,4(sp)
    55f4:	00006537          	lui	a0,0x6
    55f8:	00050513          	mv	a0,a0
    55fc:	01010113          	add	sp,sp,16
    5600:	ffffc317          	auipc	t1,0xffffc
    5604:	dc830067          	jr	-568(t1) # 13c8 <printf>

00005608 <set_px>:
    5608:	00b56733          	or	a4,a0,a1
    560c:	07f00793          	li	a5,127
    5610:	04e7ea63          	bltu	a5,a4,5664 <set_px+0x5c>
    5614:	ff010113          	add	sp,sp,-16
    5618:	00812423          	sw	s0,8(sp)
    561c:	00050413          	mv	s0,a0
    5620:	00912223          	sw	s1,4(sp)
    5624:	01212023          	sw	s2,0(sp)
    5628:	00112623          	sw	ra,12(sp)
    562c:	00058493          	mv	s1,a1
    5630:	00060913          	mv	s2,a2
    5634:	00741413          	sll	s0,s0,0x7
    5638:	ffffc097          	auipc	ra,0xffffc
    563c:	a18080e7          	jalr	-1512(ra) # 1050 <display_framebuffer>
    5640:	009405b3          	add	a1,s0,s1
    5644:	00b50533          	add	a0,a0,a1
    5648:	01250023          	sb	s2,0(a0) # 6000 <font+0x37c>
    564c:	00c12083          	lw	ra,12(sp)
    5650:	00812403          	lw	s0,8(sp)
    5654:	00412483          	lw	s1,4(sp)
    5658:	00012903          	lw	s2,0(sp)
    565c:	01010113          	add	sp,sp,16
    5660:	00008067          	ret
    5664:	00008067          	ret

00005668 <wait_for_button_release.constprop.0>:
    5668:	000067b7          	lui	a5,0x6
    566c:	c707a703          	lw	a4,-912(a5) # 5c70 <BUTTONS>
    5670:	00072783          	lw	a5,0(a4)
    5674:	0407f793          	and	a5,a5,64
    5678:	fe079ce3          	bnez	a5,5670 <wait_for_button_release.constprop.0+0x8>
    567c:	00008067          	ret

00005680 <draw_circle>:
    5680:	fb010113          	add	sp,sp,-80
    5684:	04812423          	sw	s0,72(sp)
    5688:	03312e23          	sw	s3,60(sp)
    568c:	03412c23          	sw	s4,56(sp)
    5690:	03612823          	sw	s6,48(sp)
    5694:	01b12e23          	sw	s11,28(sp)
    5698:	04112623          	sw	ra,76(sp)
    569c:	04912223          	sw	s1,68(sp)
    56a0:	05212023          	sw	s2,64(sp)
    56a4:	03512a23          	sw	s5,52(sp)
    56a8:	03712623          	sw	s7,44(sp)
    56ac:	03812423          	sw	s8,40(sp)
    56b0:	03912223          	sw	s9,36(sp)
    56b4:	03a12023          	sw	s10,32(sp)
    56b8:	00050993          	mv	s3,a0
    56bc:	00058a13          	mv	s4,a1
    56c0:	00060d93          	mv	s11,a2
    56c4:	00068413          	mv	s0,a3
    56c8:	00000b13          	li	s6,0
    56cc:	05bb4063          	blt	s6,s11,570c <draw_circle+0x8c>
    56d0:	04c12083          	lw	ra,76(sp)
    56d4:	04812403          	lw	s0,72(sp)
    56d8:	04412483          	lw	s1,68(sp)
    56dc:	04012903          	lw	s2,64(sp)
    56e0:	03c12983          	lw	s3,60(sp)
    56e4:	03812a03          	lw	s4,56(sp)
    56e8:	03412a83          	lw	s5,52(sp)
    56ec:	03012b03          	lw	s6,48(sp)
    56f0:	02c12b83          	lw	s7,44(sp)
    56f4:	02812c03          	lw	s8,40(sp)
    56f8:	02412c83          	lw	s9,36(sp)
    56fc:	02012d03          	lw	s10,32(sp)
    5700:	01c12d83          	lw	s11,28(sp)
    5704:	05010113          	add	sp,sp,80
    5708:	00008067          	ret
    570c:	000b0913          	mv	s2,s6
    5710:	00000a93          	li	s5,0
    5714:	00000493          	li	s1,0
    5718:	01448c33          	add	s8,s1,s4
    571c:	01298bb3          	add	s7,s3,s2
    5720:	000c0593          	mv	a1,s8
    5724:	00040613          	mv	a2,s0
    5728:	000b8513          	mv	a0,s7
    572c:	00000097          	auipc	ra,0x0
    5730:	edc080e7          	jalr	-292(ra) # 5608 <set_px>
    5734:	01348cb3          	add	s9,s1,s3
    5738:	012a05b3          	add	a1,s4,s2
    573c:	00040613          	mv	a2,s0
    5740:	000c8513          	mv	a0,s9
    5744:	00b12623          	sw	a1,12(sp)
    5748:	00000097          	auipc	ra,0x0
    574c:	ec0080e7          	jalr	-320(ra) # 5608 <set_px>
    5750:	00c12583          	lw	a1,12(sp)
    5754:	40998d33          	sub	s10,s3,s1
    5758:	00040613          	mv	a2,s0
    575c:	000d0513          	mv	a0,s10
    5760:	00000097          	auipc	ra,0x0
    5764:	ea8080e7          	jalr	-344(ra) # 5608 <set_px>
    5768:	41298533          	sub	a0,s3,s2
    576c:	000c0593          	mv	a1,s8
    5770:	00040613          	mv	a2,s0
    5774:	00a12623          	sw	a0,12(sp)
    5778:	00000097          	auipc	ra,0x0
    577c:	e90080e7          	jalr	-368(ra) # 5608 <set_px>
    5780:	00c12503          	lw	a0,12(sp)
    5784:	409a0c33          	sub	s8,s4,s1
    5788:	00040613          	mv	a2,s0
    578c:	000c0593          	mv	a1,s8
    5790:	00000097          	auipc	ra,0x0
    5794:	e78080e7          	jalr	-392(ra) # 5608 <set_px>
    5798:	412a05b3          	sub	a1,s4,s2
    579c:	00040613          	mv	a2,s0
    57a0:	000d0513          	mv	a0,s10
    57a4:	00b12623          	sw	a1,12(sp)
    57a8:	00000097          	auipc	ra,0x0
    57ac:	e60080e7          	jalr	-416(ra) # 5608 <set_px>
    57b0:	00c12583          	lw	a1,12(sp)
    57b4:	00040613          	mv	a2,s0
    57b8:	000c8513          	mv	a0,s9
    57bc:	00000097          	auipc	ra,0x0
    57c0:	e4c080e7          	jalr	-436(ra) # 5608 <set_px>
    57c4:	00040613          	mv	a2,s0
    57c8:	000c0593          	mv	a1,s8
    57cc:	000b8513          	mv	a0,s7
    57d0:	00000097          	auipc	ra,0x0
    57d4:	e38080e7          	jalr	-456(ra) # 5608 <set_px>
    57d8:	00148493          	add	s1,s1,1
    57dc:	01504e63          	bgtz	s5,57f8 <draw_circle+0x178>
    57e0:	00149793          	sll	a5,s1,0x1
    57e4:	00178793          	add	a5,a5,1
    57e8:	00fa8ab3          	add	s5,s5,a5
    57ec:	f29956e3          	bge	s2,s1,5718 <draw_circle+0x98>
    57f0:	001b0b13          	add	s6,s6,1
    57f4:	ed9ff06f          	j	56cc <draw_circle+0x4c>
    57f8:	fff90913          	add	s2,s2,-1
    57fc:	00191793          	sll	a5,s2,0x1
    5800:	00178793          	add	a5,a5,1
    5804:	40fa8ab3          	sub	s5,s5,a5
    5808:	fe5ff06f          	j	57ec <draw_circle+0x16c>

0000580c <F1>:
    580c:	fc010113          	add	sp,sp,-64
    5810:	01712e23          	sw	s7,28(sp)
    5814:	00b00793          	li	a5,11
    5818:	00006bb7          	lui	s7,0x6
    581c:	03312623          	sw	s3,44(sp)
    5820:	14fba023          	sw	a5,320(s7) # 6140 <space>
    5824:	000069b7          	lui	s3,0x6
    5828:	01400793          	li	a5,20
    582c:	14f9a223          	sw	a5,324(s3) # 6144 <center_x>
    5830:	02112e23          	sw	ra,60(sp)
    5834:	03512223          	sw	s5,36(sp)
    5838:	02812c23          	sw	s0,56(sp)
    583c:	02912a23          	sw	s1,52(sp)
    5840:	03212823          	sw	s2,48(sp)
    5844:	03412423          	sw	s4,40(sp)
    5848:	03612023          	sw	s6,32(sp)
    584c:	01812c23          	sw	s8,24(sp)
    5850:	01912a23          	sw	s9,20(sp)
    5854:	ffffb097          	auipc	ra,0xffffb
    5858:	7fc080e7          	jalr	2044(ra) # 1050 <display_framebuffer>
    585c:	00004637          	lui	a2,0x4
    5860:	00000593          	li	a1,0
    5864:	ffffb097          	auipc	ra,0xffffb
    5868:	4f8080e7          	jalr	1272(ra) # d5c <memset>
    586c:	00000593          	li	a1,0
    5870:	00000513          	li	a0,0
    5874:	ffffb097          	auipc	ra,0xffffb
    5878:	7e8080e7          	jalr	2024(ra) # 105c <display_set_cursor>
    587c:	00000593          	li	a1,0
    5880:	07f00513          	li	a0,127
    5884:	ffffb097          	auipc	ra,0xffffb
    5888:	7ec080e7          	jalr	2028(ra) # 1070 <display_set_front_back_color>
    588c:	00006537          	lui	a0,0x6
    5890:	00450513          	add	a0,a0,4 # 6004 <font+0x380>
    5894:	ffffc097          	auipc	ra,0xffffc
    5898:	b34080e7          	jalr	-1228(ra) # 13c8 <printf>
    589c:	00006537          	lui	a0,0x6
    58a0:	03850513          	add	a0,a0,56 # 6038 <font+0x3b4>
    58a4:	ffffc097          	auipc	ra,0xffffc
    58a8:	b24080e7          	jalr	-1244(ra) # 13c8 <printf>
    58ac:	00006537          	lui	a0,0x6
    58b0:	05450513          	add	a0,a0,84 # 6054 <font+0x3d0>
    58b4:	ffffc097          	auipc	ra,0xffffc
    58b8:	b14080e7          	jalr	-1260(ra) # 13c8 <printf>
    58bc:	ffffc097          	auipc	ra,0xffffc
    58c0:	914080e7          	jalr	-1772(ra) # 11d0 <display_refresh>
    58c4:	000067b7          	lui	a5,0x6
    58c8:	c707aa83          	lw	s5,-912(a5) # 5c70 <BUTTONS>
    58cc:	000aa783          	lw	a5,0(s5)
    58d0:	0407f793          	and	a5,a5,64
    58d4:	fe078ce3          	beqz	a5,58cc <F1+0xc0>
    58d8:	00000097          	auipc	ra,0x0
    58dc:	d90080e7          	jalr	-624(ra) # 5668 <wait_for_button_release.constprop.0>
    58e0:	c00026f3          	rdcycle	a3
    58e4:	000187b7          	lui	a5,0x18
    58e8:	69f78793          	add	a5,a5,1695 # 1869f <__stacktop+0x869f>
    58ec:	c0002773          	rdcycle	a4
    58f0:	40d70733          	sub	a4,a4,a3
    58f4:	fee7fce3          	bgeu	a5,a4,58ec <F1+0xe0>
    58f8:	00006437          	lui	s0,0x6
    58fc:	00010913          	mv	s2,sp
    5900:	02fafb37          	lui	s6,0x2faf
    5904:	12042e23          	sw	zero,316(s0) # 613c <timer>
    5908:	00090493          	mv	s1,s2
    590c:	07fb0b13          	add	s6,s6,127 # 2faf07f <__stacktop+0x2f9f07f>
    5910:	c0002773          	rdcycle	a4
    5914:	c00027f3          	rdcycle	a5
    5918:	40e787b3          	sub	a5,a5,a4
    591c:	fefb7ce3          	bgeu	s6,a5,5914 <F1+0x108>
    5920:	1449ac03          	lw	s8,324(s3)
    5924:	00000097          	auipc	ra,0x0
    5928:	d44080e7          	jalr	-700(ra) # 5668 <wait_for_button_release.constprop.0>
    592c:	0ff00693          	li	a3,255
    5930:	00900613          	li	a2,9
    5934:	04000593          	li	a1,64
    5938:	000c0513          	mv	a0,s8
    593c:	00000097          	auipc	ra,0x0
    5940:	d44080e7          	jalr	-700(ra) # 5680 <draw_circle>
    5944:	ffffc097          	auipc	ra,0xffffc
    5948:	88c080e7          	jalr	-1908(ra) # 11d0 <display_refresh>
    594c:	c0002cf3          	rdcycle	s9
    5950:	000aa783          	lw	a5,0(s5)
    5954:	0407f793          	and	a5,a5,64
    5958:	fe078ce3          	beqz	a5,5950 <F1+0x144>
    595c:	c0002a73          	rdcycle	s4
    5960:	00000693          	li	a3,0
    5964:	00900613          	li	a2,9
    5968:	04000593          	li	a1,64
    596c:	000c0513          	mv	a0,s8
    5970:	00000097          	auipc	ra,0x0
    5974:	d10080e7          	jalr	-752(ra) # 5680 <draw_circle>
    5978:	ffffc097          	auipc	ra,0xffffc
    597c:	858080e7          	jalr	-1960(ra) # 11d0 <display_refresh>
    5980:	00000097          	auipc	ra,0x0
    5984:	ce8080e7          	jalr	-792(ra) # 5668 <wait_for_button_release.constprop.0>
    5988:	13c42703          	lw	a4,316(s0)
    598c:	419a07b3          	sub	a5,s4,s9
    5990:	00f4a023          	sw	a5,0(s1)
    5994:	00f707b3          	add	a5,a4,a5
    5998:	12f42e23          	sw	a5,316(s0)
    599c:	140ba783          	lw	a5,320(s7)
    59a0:	1449a703          	lw	a4,324(s3)
    59a4:	00448493          	add	s1,s1,4
    59a8:	01278793          	add	a5,a5,18
    59ac:	00e787b3          	add	a5,a5,a4
    59b0:	14f9a223          	sw	a5,324(s3)
    59b4:	01010793          	add	a5,sp,16
    59b8:	f4f49ce3          	bne	s1,a5,5910 <F1+0x104>
    59bc:	ffffb097          	auipc	ra,0xffffb
    59c0:	694080e7          	jalr	1684(ra) # 1050 <display_framebuffer>
    59c4:	00004637          	lui	a2,0x4
    59c8:	00000593          	li	a1,0
    59cc:	ffffb097          	auipc	ra,0xffffb
    59d0:	390080e7          	jalr	912(ra) # d5c <memset>
    59d4:	00000593          	li	a1,0
    59d8:	00000513          	li	a0,0
    59dc:	ffffb097          	auipc	ra,0xffffb
    59e0:	680080e7          	jalr	1664(ra) # 105c <display_set_cursor>
    59e4:	00000593          	li	a1,0
    59e8:	0ff00513          	li	a0,255
    59ec:	ffffb097          	auipc	ra,0xffffb
    59f0:	684080e7          	jalr	1668(ra) # 1070 <display_set_front_back_color>
    59f4:	00006537          	lui	a0,0x6
    59f8:	08c50513          	add	a0,a0,140 # 608c <font+0x408>
    59fc:	ffffc097          	auipc	ra,0xffffc
    5a00:	9cc080e7          	jalr	-1588(ra) # 13c8 <printf>
    5a04:	00000493          	li	s1,0
    5a08:	00006b37          	lui	s6,0x6
    5a0c:	000069b7          	lui	s3,0x6
    5a10:	00400a13          	li	s4,4
    5a14:	00148493          	add	s1,s1,1
    5a18:	00048593          	mv	a1,s1
    5a1c:	0a0b0513          	add	a0,s6,160 # 60a0 <font+0x41c>
    5a20:	ffffc097          	auipc	ra,0xffffc
    5a24:	9a8080e7          	jalr	-1624(ra) # 13c8 <printf>
    5a28:	00092503          	lw	a0,0(s2)
    5a2c:	00490913          	add	s2,s2,4
    5a30:	00000097          	auipc	ra,0x0
    5a34:	af8080e7          	jalr	-1288(ra) # 5528 <print_time_seconds>
    5a38:	0e098513          	add	a0,s3,224 # 60e0 <font+0x45c>
    5a3c:	ffffc097          	auipc	ra,0xffffc
    5a40:	98c080e7          	jalr	-1652(ra) # 13c8 <printf>
    5a44:	fd4498e3          	bne	s1,s4,5a14 <F1+0x208>
    5a48:	00006537          	lui	a0,0x6
    5a4c:	0a850513          	add	a0,a0,168 # 60a8 <font+0x424>
    5a50:	ffffc097          	auipc	ra,0xffffc
    5a54:	978080e7          	jalr	-1672(ra) # 13c8 <printf>
    5a58:	13c42503          	lw	a0,316(s0)
    5a5c:	00255513          	srl	a0,a0,0x2
    5a60:	00000097          	auipc	ra,0x0
    5a64:	ac8080e7          	jalr	-1336(ra) # 5528 <print_time_seconds>
    5a68:	0e098513          	add	a0,s3,224
    5a6c:	ffffc097          	auipc	ra,0xffffc
    5a70:	95c080e7          	jalr	-1700(ra) # 13c8 <printf>
    5a74:	00006537          	lui	a0,0x6
    5a78:	0b450513          	add	a0,a0,180 # 60b4 <font+0x430>
    5a7c:	ffffc097          	auipc	ra,0xffffc
    5a80:	94c080e7          	jalr	-1716(ra) # 13c8 <printf>
    5a84:	ffffb097          	auipc	ra,0xffffb
    5a88:	74c080e7          	jalr	1868(ra) # 11d0 <display_refresh>
    5a8c:	000aa783          	lw	a5,0(s5)
    5a90:	0407f793          	and	a5,a5,64
    5a94:	fe078ce3          	beqz	a5,5a8c <F1+0x280>
    5a98:	ffffb097          	auipc	ra,0xffffb
    5a9c:	5b8080e7          	jalr	1464(ra) # 1050 <display_framebuffer>
    5aa0:	03812403          	lw	s0,56(sp)
    5aa4:	03c12083          	lw	ra,60(sp)
    5aa8:	03412483          	lw	s1,52(sp)
    5aac:	03012903          	lw	s2,48(sp)
    5ab0:	02c12983          	lw	s3,44(sp)
    5ab4:	02812a03          	lw	s4,40(sp)
    5ab8:	02412a83          	lw	s5,36(sp)
    5abc:	02012b03          	lw	s6,32(sp)
    5ac0:	01c12b83          	lw	s7,28(sp)
    5ac4:	01812c03          	lw	s8,24(sp)
    5ac8:	01412c83          	lw	s9,20(sp)
    5acc:	00004637          	lui	a2,0x4
    5ad0:	00000593          	li	a1,0
    5ad4:	04010113          	add	sp,sp,64
    5ad8:	ffffb317          	auipc	t1,0xffffb
    5adc:	28430067          	jr	644(t1) # d5c <memset>

00005ae0 <Game_menu>:
    5ae0:	fd010113          	add	sp,sp,-48
    5ae4:	000067b7          	lui	a5,0x6
    5ae8:	02912223          	sw	s1,36(sp)
    5aec:	c707a483          	lw	s1,-912(a5) # 5c70 <BUTTONS>
    5af0:	02812423          	sw	s0,40(sp)
    5af4:	03212023          	sw	s2,32(sp)
    5af8:	01312e23          	sw	s3,28(sp)
    5afc:	01412c23          	sw	s4,24(sp)
    5b00:	01512a23          	sw	s5,20(sp)
    5b04:	01612823          	sw	s6,16(sp)
    5b08:	01712623          	sw	s7,12(sp)
    5b0c:	02112623          	sw	ra,44(sp)
    5b10:	00000413          	li	s0,0
    5b14:	00000913          	li	s2,0
    5b18:	00006ab7          	lui	s5,0x6
    5b1c:	00006b37          	lui	s6,0x6
    5b20:	000069b7          	lui	s3,0x6
    5b24:	00100a13          	li	s4,1
    5b28:	00006bb7          	lui	s7,0x6
    5b2c:	00000593          	li	a1,0
    5b30:	00000513          	li	a0,0
    5b34:	ffffb097          	auipc	ra,0xffffb
    5b38:	528080e7          	jalr	1320(ra) # 105c <display_set_cursor>
    5b3c:	0ff97593          	zext.b	a1,s2
    5b40:	07f58513          	add	a0,a1,127
    5b44:	0ff57513          	zext.b	a0,a0
    5b48:	ffffb097          	auipc	ra,0xffffb
    5b4c:	528080e7          	jalr	1320(ra) # 1070 <display_set_front_back_color>
    5b50:	0c8a8513          	add	a0,s5,200 # 60c8 <font+0x444>
    5b54:	00790913          	add	s2,s2,7
    5b58:	ffffc097          	auipc	ra,0xffffc
    5b5c:	870080e7          	jalr	-1936(ra) # 13c8 <printf>
    5b60:	0a041663          	bnez	s0,5c0c <Game_menu+0x12c>
    5b64:	00000513          	li	a0,0
    5b68:	0ff00593          	li	a1,255
    5b6c:	ffffb097          	auipc	ra,0xffffb
    5b70:	504080e7          	jalr	1284(ra) # 1070 <display_set_front_back_color>
    5b74:	0e4b0613          	add	a2,s6,228 # 60e4 <font+0x460>
    5b78:	00000593          	li	a1,0
    5b7c:	ee498513          	add	a0,s3,-284 # 5ee4 <font+0x260>
    5b80:	ffffc097          	auipc	ra,0xffffc
    5b84:	848080e7          	jalr	-1976(ra) # 13c8 <printf>
    5b88:	09441863          	bne	s0,s4,5c18 <Game_menu+0x138>
    5b8c:	00000513          	li	a0,0
    5b90:	0ff00593          	li	a1,255
    5b94:	ffffb097          	auipc	ra,0xffffb
    5b98:	4dc080e7          	jalr	1244(ra) # 1070 <display_set_front_back_color>
    5b9c:	0e8b8613          	add	a2,s7,232 # 60e8 <font+0x464>
    5ba0:	00100593          	li	a1,1
    5ba4:	ee498513          	add	a0,s3,-284
    5ba8:	ffffc097          	auipc	ra,0xffffc
    5bac:	820080e7          	jalr	-2016(ra) # 13c8 <printf>
    5bb0:	ffffb097          	auipc	ra,0xffffb
    5bb4:	620080e7          	jalr	1568(ra) # 11d0 <display_refresh>
    5bb8:	0004a783          	lw	a5,0(s1)
    5bbc:	0107f793          	and	a5,a5,16
    5bc0:	06079263          	bnez	a5,5c24 <Game_menu+0x144>
    5bc4:	0004a783          	lw	a5,0(s1)
    5bc8:	0087f793          	and	a5,a5,8
    5bcc:	06079863          	bnez	a5,5c3c <Game_menu+0x15c>
    5bd0:	0004a783          	lw	a5,0(s1)
    5bd4:	0207f793          	and	a5,a5,32
    5bd8:	f4078ae3          	beqz	a5,5b2c <Game_menu+0x4c>
    5bdc:	ffffb097          	auipc	ra,0xffffb
    5be0:	474080e7          	jalr	1140(ra) # 1050 <display_framebuffer>
    5be4:	00004637          	lui	a2,0x4
    5be8:	00000593          	li	a1,0
    5bec:	ffffb097          	auipc	ra,0xffffb
    5bf0:	170080e7          	jalr	368(ra) # d5c <memset>
    5bf4:	ffffb097          	auipc	ra,0xffffb
    5bf8:	5dc080e7          	jalr	1500(ra) # 11d0 <display_refresh>
    5bfc:	f20418e3          	bnez	s0,5b2c <Game_menu+0x4c>
    5c00:	00000097          	auipc	ra,0x0
    5c04:	c0c080e7          	jalr	-1012(ra) # 580c <F1>
    5c08:	f25ff06f          	j	5b2c <Game_menu+0x4c>
    5c0c:	0ff00513          	li	a0,255
    5c10:	00000593          	li	a1,0
    5c14:	f59ff06f          	j	5b6c <Game_menu+0x8c>
    5c18:	0ff00513          	li	a0,255
    5c1c:	00000593          	li	a1,0
    5c20:	f75ff06f          	j	5b94 <Game_menu+0xb4>
    5c24:	0004a783          	lw	a5,0(s1)
    5c28:	0087f793          	and	a5,a5,8
    5c2c:	fa0792e3          	bnez	a5,5bd0 <Game_menu+0xf0>
    5c30:	00100793          	li	a5,1
    5c34:	40878433          	sub	s0,a5,s0
    5c38:	f99ff06f          	j	5bd0 <Game_menu+0xf0>
    5c3c:	408a0433          	sub	s0,s4,s0
    5c40:	f91ff06f          	j	5bd0 <Game_menu+0xf0>

00005c44 <cmd16>:
    5c44:	02000050 00001500                       P.......

00005c4c <acmd41>:
    5c4c:	00004069 00000100                       i@......

00005c54 <cmd55>:
    5c54:	00000077 00000100                       w.......

00005c5c <cmd8>:
    5c5c:	01000048 000087aa                       H.......

00005c64 <cmd0>:
    5c64:	00000040 00009500                       @.......

00005c6c <AUDIO>:
    5c6c:	00018000                                ....

00005c70 <BUTTONS>:
    5c70:	00010100                                ....

00005c74 <SDCARD>:
    5c74:	00010080                                ....

00005c78 <OLED_RST>:
    5c78:	00010010                                ....

00005c7c <OLED>:
    5c7c:	00010008                                ....

00005c80 <LEDS>:
    5c80:	00010004                                ....

00005c84 <font>:
    5c84:	00000000 00002f00 00030000 14000003     ...../..........
    5c94:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5ca4:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5cb4:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5cc4:	00080800 00200000 20000000 02040810     ...... .... ....
    5cd4:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5ce4:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5cf4:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5d04:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5d14:	00141400 0a110000 01000004 0007052d     ............-...
    5d24:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5d34:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5d44:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5d54:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5d64:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5d74:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5d84:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5d94:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5da4:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5db4:	003f2102 01020000 20000201 00000020     .!?........  ...
    5dc4:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5dd4:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5de4:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5df4:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5e04:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5e14:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5e24:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5e34:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5e44:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5e54:	043f2100 02010000 00000102 00000000     .!?.............
    5e64:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    5e74:	00000000 00000001 00000003 00000005     ................
    5e84:	00000007 00000009 0000000e 00000010     ................
    5e94:	00000012 00000014 00000016 00000018     ................
    5ea4:	0000001c 0000001e 74696e69 2e2e2e20     ........init ...
    5eb4:	00000020 656e6f64 00000a2e 3d202020      ...done....   =
    5ec4:	754d203d 20636973 6147202f 3d20656d     = Music / Game =
    5ed4:	2020203d 00000a0a 6973754d 00000063     =   ....Music...
    5ee4:	203e6425 000a7325 656d6147 00000073     %d> %s..Games...
    5ef4:	6e6f732f 00000067 69647561 61705f6f     /song...audio_pa
    5f04:	69207472 2074696e 202e2e2e 00000000     rt init ... ....
    5f14:	66206f4e 73656c69 756f6620 6920646e     No files found i
    5f24:	732f206e 2e676e6f 0000000a 3d202020     n /song.....   =
    5f34:	6c41203d 736d7562 412f2820 6d75626c     = Albums (/Album
    5f44:	3d202973 2020203d 00000a0a 3d202020     s) ==   ....   =
    5f54:	754d203d 75716973 614d2065 72747365     = Musique Maestr
    5f64:	3d3d206f 0a202020 0000000a 0000002f     o ==   ...../...
    5f74:	00006272 656c6966 746f6e20 756f6620     rb..file not fou
    5f84:	0a2e646e 00000000 6973756d 69662063     nd......music fi
    5f94:	6620656c 646e756f 00000a2e 79616c70     le found....play
    5fa4:	20676e69 00000000 696e6920 002e2e74     ing .... init...
    5fb4:	6e6f732f 00002f67 66206f4e 73656c69     /song/..No files
    5fc4:	756f6620 6920646e 0000206e 6c6f6620      found in .. fol
    5fd4:	20726564 0000000a 3d202020 6f53203d     der ....   == So
    5fe4:	2073676e 6f532f28 2973676e 203d3d20     ngs (/Songs) == 
    5ff4:	0a0a2020 00000000 002e6425 00007320       ......%d.. s..
    6004:	7349200a 756f7920 65722072 69746361     . Is your reacti
    6014:	74206e6f 20656d69 74736166 74207265     on time faster t
    6024:	206e6168 6720796d 646e6172 73276170     han my grandpa's
    6034:	000a0a3f 50203d3d 73736572 20364220     ?...== Press B6 
    6044:	73206f74 74726174 0a3d3d20 00000000     to start ==.....
    6054:	656c6552 20657361 74203642 206e6568     Release B6 then 
    6064:	73657270 74692073 2073610a 6e6f6f73     press it.as soon
    6074:	20736120 69632061 656c6372 70706120      as a circle app
    6084:	73726165 0000002e 706d6554 61702073     ears....Temps pa
    6094:	73652072 3a696173 00000a0a 3a642523     r essai:....#%d:
    60a4:	00000020 796f4d0a 656e6e65 0000203a      ....Moyenne: ..
    60b4:	70203642 2072756f 65766572 2e72696e     B6 pour revenir.
    60c4:	00000000 3d202020 6553203d 7463656c     ....   == Select
    60d4:	6d614720 3d3d2065 0a202020 0000000a      Game ==   .....
    60e4:	00003146 6d6d6f63 5f676e69 6e6f6f73     F1..comming_soon
    60f4:	00000000                                ....

000060f8 <back>:
    60f8:	00000000                                ....

000060fc <situation>:
    60fc:	00000000                                ....

00006100 <sdcard_while_loading_callback>:
    6100:	00000000                                ....

00006104 <back_color>:
	...

00006105 <front_color>:
    6105:	                                         ...

00006108 <cursor_y>:
    6108:	00000000                                ....

0000610c <cursor_x>:
    610c:	00000000                                ....

00006110 <f_putchar>:
    6110:	00000000                                ....

00006114 <_free_file_list>:
	...

0000611c <_open_file_list>:
	...

00006124 <_filelib_valid>:
    6124:	00000000                                ....

00006128 <_filelib_init>:
    6128:	00000000                                ....

0000612c <Init_stat>:
    612c:	00000000                                ....

00006130 <init>:
    6130:	00000000                                ....

00006134 <nAlbums>:
    6134:	00000000                                ....

00006138 <NSongs>:
    6138:	00000000                                ....

0000613c <timer>:
    613c:	00000000                                ....

00006140 <space>:
    6140:	00000000                                ....

00006144 <center_x>:
    6144:	00000000                                ....
