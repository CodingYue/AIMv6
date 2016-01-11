
kernel.elf:     file format elf32-littlearm


Disassembly of section .high:

80700000 <interrupt_table>:
80700000:	e320f000 	nop	{0}
80700004:	e320f000 	nop	{0}
80700008:	ea000004 	b	80700020 <SVC_handler>
8070000c:	ea000009 	b	80700038 <prefetch_abort_handler>
80700010:	ea00000b 	b	80700044 <data_abort_handler>
80700014:	e320f000 	nop	{0}
80700018:	ea00000c 	b	80700050 <IRQ_handler>
8070001c:	e320f000 	nop	{0}

80700020 <SVC_handler>:
80700020:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80700024:	e51e0004 	ldr	r0, [lr, #-4]
80700028:	e3c004ff 	bic	r0, r0, #-16777216	; 0xff000000
8070002c:	e1a0100d 	mov	r1, sp
80700030:	eb001211 	bl	8070487c <C_SVC_handler>
80700034:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80700038 <prefetch_abort_handler>:
80700038:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8070003c:	eb001215 	bl	80704898 <C_prefetch_abort_handler>
80700040:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80700044 <data_abort_handler>:
80700044:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80700048:	eb001219 	bl	807048b4 <C_data_abort_handler>
8070004c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80700050 <IRQ_handler>:
80700050:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80700054:	eb00121d 	bl	807048d0 <C_IRQ_handler>
80700058:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
8070005c:	0000005e 	andeq	r0, r0, lr, asr r0
80700060:	00350002 	eorseq	r0, r5, r2
80700064:	01020000 	mrseq	r0, (UNDEF: 2)
80700068:	000d0efb 	strdeq	r0, [sp], -fp
8070006c:	01010101 	tsteq	r1, r1, lsl #2
80700070:	01000000 	mrseq	r0, (UNDEF: 0)
80700074:	6b010000 	blvs	8074007c <ptable+0x3a5e8>
80700078:	2f6e7265 	svccs	0x006e7265
8070007c:	65637865 	strbvs	r7, [r3, #-2149]!	; 0xfffff79b
80700080:	6f697470 	svcvs	0x00697470
80700084:	6900006e 	stmdbvs	r0, {r1, r2, r3, r5, r6}
80700088:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
8070008c:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
80700090:	6d73615f 	ldfvse	f6, [r3, #-380]!	; 0xfffffe84
80700094:	0100532e 	tsteq	r0, lr, lsr #6
80700098:	00000000 	andeq	r0, r0, r0
8070009c:	00000205 	andeq	r0, r0, r5, lsl #4
807000a0:	2f158070 	svccs	0x00158070
807000a4:	2f2f2f2f 	svccs	0x002f2f2f
807000a8:	2f312f2f 	svccs	0x00312f2f
807000ac:	2f2f2f2f 	svccs	0x002f2f2f
807000b0:	312f2f31 	teqcc	pc, r1, lsr pc	; <UNPREDICTABLE>
807000b4:	2f312f2f 	svccs	0x00312f2f
807000b8:	0002022f 	andeq	r0, r2, pc, lsr #4
807000bc:	005a0101 	subseq	r0, sl, r1, lsl #2
807000c0:	00020000 	andeq	r0, r2, r0
807000c4:	8070011c 	rsbshi	r0, r0, ip, lsl r1
807000c8:	005c0104 	subseq	r0, ip, r4, lsl #2
807000cc:	00008070 	andeq	r8, r0, r0, ror r0
807000d0:	005c8070 	subseq	r8, ip, r0, ror r0
807000d4:	656b8070 	strbvs	r8, [fp, #-112]!	; 0xffffff90
807000d8:	652f6e72 	strvs	r6, [pc, #-3698]!	; 806ff26e <__high_exec_veneer+0x800feed6>
807000dc:	70656378 	rsbvc	r6, r5, r8, ror r3
807000e0:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
807000e4:	746e692f 	strbtvc	r6, [lr], #-2351	; 0xfffff6d1
807000e8:	75727265 	ldrbvc	r7, [r2, #-613]!	; 0xfffffd9b
807000ec:	615f7470 	cmpvs	pc, r0, ror r4	; <UNPREDICTABLE>
807000f0:	532e6d73 	teqpl	lr, #7360	; 0x1cc0
807000f4:	73552f00 	cmpvc	r5, #0, 30
807000f8:	2f737265 	svccs	0x00737265
807000fc:	2f657579 	svccs	0x00657579
80700100:	6b736544 	blvs	823d9618 <ptable+0x1cd3b84>
80700104:	2f706f74 	svccs	0x00706f74
80700108:	764d4941 	strbvc	r4, [sp], -r1, asr #18
8070010c:	4e470036 	mcrmi	0, 2, r0, cr7, cr6, {1}
80700110:	53412055 	movtpl	r2, #4181	; 0x1055
80700114:	322e3220 	eorcc	r3, lr, #32, 4
80700118:	80010035 	andhi	r0, r1, r5, lsr r0
8070011c:	10001101 	andne	r1, r0, r1, lsl #2
80700120:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
80700124:	1b080301 	blne	80900d30 <ptable+0x1fb29c>
80700128:	13082508 	movwne	r2, #34056	; 0x8508
8070012c:	00000005 	andeq	r0, r0, r5
80700130:	0000001c 	andeq	r0, r0, ip, lsl r0
80700134:	00be0002 	adcseq	r0, lr, r2
80700138:	00048070 	andeq	r8, r4, r0, ror r0
8070013c:	00000000 	andeq	r0, r0, r0
80700140:	80700000 	rsbshi	r0, r0, r0
80700144:	0000005c 	andeq	r0, r0, ip, asr r0
	...
80700150:	00001c41 	andeq	r1, r0, r1, asr #24
80700154:	61656100 	cmnvs	r5, r0, lsl #2
80700158:	01006962 	tsteq	r0, r2, ror #18
8070015c:	00000012 	andeq	r0, r0, r2, lsl r0
80700160:	412d3705 	teqmi	sp, r5, lsl #14
80700164:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80700168:	09010841 	stmdbeq	r1, {r0, r6, fp}
8070016c:	00000002 	andeq	r0, r0, r2

80700170 <axi_gp0_base>:
80700170:	40000000 	andmi	r0, r0, r0

80700174 <axi_gp1_base>:
80700174:	80000000 	andhi	r0, r0, r0

80700178 <qspi_linear_base>:
80700178:	fc000000 	stc2	0, cr0, [r0], {-0}

8070017c <ddr_end>:
8070017c:	20000000 	andcs	r0, r0, r0

80700180 <uart0_base>:
80700180:	e0000000 	and	r0, r0, r0

80700184 <uart1_base>:
80700184:	e0001000 	and	r1, r0, r0

80700188 <usb0_base>:
80700188:	e0002000 	and	r2, r0, r0

8070018c <usb1_base>:
8070018c:	e0003000 	and	r3, r0, r0

80700190 <i2c0_base>:
80700190:	e0004000 	and	r4, r0, r0

80700194 <i2c1_base>:
80700194:	e0005000 	and	r5, r0, r0

80700198 <spi0_base>:
80700198:	e0006000 	and	r6, r0, r0

8070019c <spi1_base>:
8070019c:	e0007000 	and	r7, r0, r0

807001a0 <can0_base>:
807001a0:	e0008000 	and	r8, r0, r0

807001a4 <can1_base>:
807001a4:	e0009000 	and	r9, r0, r0

807001a8 <gpio_base>:
807001a8:	e000a000 	and	sl, r0, r0

807001ac <gem0_base>:
807001ac:	e000b000 	and	fp, r0, r0

807001b0 <gem1_base>:
807001b0:	e000c000 	and	ip, r0, r0

807001b4 <qspi_base>:
807001b4:	e000d000 	and	sp, r0, r0

807001b8 <smcc_base>:
807001b8:	e000e000 	and	lr, r0, r0

807001bc <sd0_base>:
807001bc:	e0100000 	ands	r0, r0, r0

807001c0 <sd1_base>:
807001c0:	e0101000 	ands	r1, r0, r0

807001c4 <smc_nand_base>:
807001c4:	e1000000 	mrs	r0, (UNDEF: 0)

807001c8 <smc_sram0_base>:
807001c8:	e2000000 	and	r0, r0, #0

807001cc <smc_sram1_base>:
807001cc:	e4000000 	str	r0, [r0], #-0

807001d0 <slcr_base>:
807001d0:	f8000000 			; <UNDEFINED> instruction: 0xf8000000

807001d4 <ttc0_base>:
807001d4:	f8001000 			; <UNDEFINED> instruction: 0xf8001000

807001d8 <ttc1_base>:
807001d8:	f8002000 			; <UNDEFINED> instruction: 0xf8002000

807001dc <dmac0_s_base>:
807001dc:	f8003000 			; <UNDEFINED> instruction: 0xf8003000

807001e0 <dmac0_ns_base>:
807001e0:	f8004000 			; <UNDEFINED> instruction: 0xf8004000

807001e4 <swdt_base>:
807001e4:	f8005000 			; <UNDEFINED> instruction: 0xf8005000

807001e8 <ddrc_base>:
807001e8:	f8006000 			; <UNDEFINED> instruction: 0xf8006000

807001ec <devcfg_base>:
807001ec:	f8007000 			; <UNDEFINED> instruction: 0xf8007000

807001f0 <axi_hp0_base>:
807001f0:	f8008000 			; <UNDEFINED> instruction: 0xf8008000

807001f4 <axi_hp1_base>:
807001f4:	f8009000 			; <UNDEFINED> instruction: 0xf8009000

807001f8 <axi_hp2_base>:
807001f8:	f800a000 			; <UNDEFINED> instruction: 0xf800a000

807001fc <axi_hp3_base>:
807001fc:	f800b000 			; <UNDEFINED> instruction: 0xf800b000

80700200 <ocmc_base>:
80700200:	f800c000 			; <UNDEFINED> instruction: 0xf800c000

80700204 <debug_dap_rom_base>:
80700204:	f8800000 			; <UNDEFINED> instruction: 0xf8800000

80700208 <debug_etb_base>:
80700208:	f8801000 			; <UNDEFINED> instruction: 0xf8801000

8070020c <debug_cti_etb_tpiu_base>:
8070020c:	f8802000 			; <UNDEFINED> instruction: 0xf8802000

80700210 <debug_tpiu_base>:
80700210:	f8803000 			; <UNDEFINED> instruction: 0xf8803000

80700214 <debug_funnel_base>:
80700214:	f8804000 			; <UNDEFINED> instruction: 0xf8804000

80700218 <debug_itm_base>:
80700218:	f8805000 			; <UNDEFINED> instruction: 0xf8805000

8070021c <debug_cti_ftm_base>:
8070021c:	f8809000 			; <UNDEFINED> instruction: 0xf8809000

80700220 <debug_ftm_base>:
80700220:	f880b000 			; <UNDEFINED> instruction: 0xf880b000

80700224 <debug_cpu_pmu0_base>:
80700224:	f8891000 			; <UNDEFINED> instruction: 0xf8891000

80700228 <debug_cpu_pmu1_base>:
80700228:	f8893000 			; <UNDEFINED> instruction: 0xf8893000

8070022c <debug_cpu_cti0_base>:
8070022c:	f8898000 			; <UNDEFINED> instruction: 0xf8898000

80700230 <debug_cpu_cti1_base>:
80700230:	f8899000 			; <UNDEFINED> instruction: 0xf8899000

80700234 <debug_cpu_ptm0_base>:
80700234:	f889c000 			; <UNDEFINED> instruction: 0xf889c000

80700238 <debug_cpu_ptm1_base>:
80700238:	f889d000 			; <UNDEFINED> instruction: 0xf889d000

8070023c <gpv_trustzone_base>:
8070023c:	f8900000 			; <UNDEFINED> instruction: 0xf8900000

80700240 <gpv_qos301_cpu_base>:
80700240:	f8946000 			; <UNDEFINED> instruction: 0xf8946000

80700244 <gpv_qos301_dmac_base>:
80700244:	f8947000 			; <UNDEFINED> instruction: 0xf8947000

80700248 <gpv_qos301_iou_base>:
80700248:	f8948000 			; <UNDEFINED> instruction: 0xf8948000

8070024c <mpcore_base>:
8070024c:	f8f00000 			; <UNDEFINED> instruction: 0xf8f00000

80700250 <l2cache_base>:
80700250:	f8f02000 			; <UNDEFINED> instruction: 0xf8f02000

80700254 <ocm_base>:
80700254:	00000000 	andeq	r0, r0, r0

80700258 <ddr_base>:
80700258:	00000000 	andeq	r0, r0, r0
8070025c:	00000456 	andeq	r0, r0, r6, asr r4
80700260:	06b60004 	ldrteq	r0, [r6], r4
80700264:	01048070 	tsteq	r4, r0, ror r0
80700268:	807011fc 	ldrshthi	r1, [r0], #-28	; 0xffffffe4
8070026c:	7007b50c 	andvc	fp, r7, ip, lsl #10
80700270:	70128580 	andsvc	r8, r2, r0, lsl #11
80700274:	70071280 	andvc	r1, r7, r0, lsl #5
80700278:	08010280 	stmdaeq	r1, {r7, r9}
8070027c:	8070124d 	rsbshi	r1, r0, sp, asr #4
80700280:	4f060102 	svcmi	0x00060102
80700284:	02807012 	addeq	r7, r0, #18
80700288:	125b0702 	subsne	r0, fp, #524288	; 0x80000
8070028c:	02028070 	andeq	r8, r2, #112	; 0x70
80700290:	7012f905 	andsvc	pc, r2, r5, lsl #18
80700294:	07040280 	streq	r0, [r4, -r0, lsl #5]
80700298:	807012a8 	rsbshi	r1, r0, r8, lsr #5
8070029c:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
807002a0:	391f0200 	ldmdbcc	pc, {r9}	; <UNPREDICTABLE>
807002a4:	04000000 	streq	r0, [r0], #-0
807002a8:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
807002ac:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
807002b0:	7012a307 	andsvc	sl, r2, r7, lsl #6
807002b4:	07080280 	streq	r0, [r8, -r0, lsl #5]
807002b8:	8070129e 			; <UNDEFINED> instruction: 0x8070129e
807002bc:	de050802 	cdple	8, 0, cr0, cr5, cr2, {0}
807002c0:	02807012 	addeq	r7, r0, #18
807002c4:	12e30504 	rscne	r0, r3, #4, 10	; 0x1000000
807002c8:	95058070 	strls	r8, [r5, #-112]	; 0xffffff90
807002cc:	01807008 	orreq	r7, r0, r8
807002d0:	00004011 	andeq	r4, r0, r1, lsl r0
807002d4:	54030500 	strpl	r0, [r3], #-1280	; 0xfffffb00
807002d8:	05807002 	streq	r7, [r0, #2]
807002dc:	80700941 	rsbshi	r0, r0, r1, asr #18
807002e0:	00401201 	subeq	r1, r0, r1, lsl #4
807002e4:	03050000 	movweq	r0, #20480	; 0x5000
807002e8:	80700258 	rsbshi	r0, r0, r8, asr r2
807002ec:	70077505 	andvc	r7, r7, r5, lsl #10
807002f0:	40130180 	andsmi	r0, r3, r0, lsl #3
807002f4:	05000000 	streq	r0, [r0, #-0]
807002f8:	70017003 	andvc	r7, r1, r3
807002fc:	09000580 	stmdbeq	r0, {r7, r8, sl}
80700300:	14018070 	strne	r8, [r1], #-112	; 0xffffff90
80700304:	00000040 	andeq	r0, r0, r0, asr #32
80700308:	01740305 	cmneq	r4, r5, lsl #6
8070030c:	19058070 	stmdbne	r5, {r4, r5, r6, pc}
80700310:	0180700a 	orreq	r7, r0, sl
80700314:	00004015 	andeq	r4, r0, r5, lsl r0
80700318:	78030500 	stmdavc	r3, {r8, sl}
8070031c:	05807001 	streq	r7, [r0, #1]
80700320:	80700825 	rsbshi	r0, r0, r5, lsr #16
80700324:	00401701 	subeq	r1, r0, r1, lsl #14
80700328:	03050000 	movweq	r0, #20480	; 0x5000
8070032c:	8070017c 	rsbshi	r0, r0, ip, ror r1
80700330:	70093605 	andvc	r3, r9, r5, lsl #12
80700334:	40190180 	andsmi	r0, r9, r0, lsl #3
80700338:	05000000 	streq	r0, [r0, #-0]
8070033c:	70018003 	andvc	r8, r1, r3
80700340:	07a00580 	streq	r0, [r0, r0, lsl #11]!
80700344:	1a018070 	bne	8076050c <ptable+0x5aa78>
80700348:	00000040 	andeq	r0, r0, r0, asr #32
8070034c:	01840305 	orreq	r0, r4, r5, lsl #6
80700350:	b3058070 	movwlt	r8, #20592	; 0x5070
80700354:	01807009 	orreq	r7, r0, r9
80700358:	0000401b 	andeq	r4, r0, fp, lsl r0
8070035c:	88030500 	stmdahi	r3, {r8, sl}
80700360:	05807001 	streq	r7, [r0, #1]
80700364:	80700782 	rsbshi	r0, r0, r2, lsl #15
80700368:	00401c01 	subeq	r1, r0, r1, lsl #24
8070036c:	03050000 	movweq	r0, #20480	; 0x5000
80700370:	8070018c 	rsbshi	r0, r0, ip, lsl #3
80700374:	70078c05 	andvc	r8, r7, r5, lsl #24
80700378:	401d0180 	andsmi	r0, sp, r0, lsl #3
8070037c:	05000000 	streq	r0, [r0, #-0]
80700380:	70019003 	andvc	r9, r1, r3
80700384:	07960580 	ldreq	r0, [r6, r0, lsl #11]
80700388:	1e018070 	mcrne	0, 0, r8, cr1, cr0, {3}
8070038c:	00000040 	andeq	r0, r0, r0, asr #32
80700390:	01940305 	orrseq	r0, r4, r5, lsl #6
80700394:	f6058070 			; <UNDEFINED> instruction: 0xf6058070
80700398:	01807008 	orreq	r7, r0, r8
8070039c:	0000401f 	andeq	r4, r0, pc, lsl r0
807003a0:	98030500 	stmdals	r3, {r8, sl}
807003a4:	05807001 	streq	r7, [r0, #1]
807003a8:	80700879 	rsbshi	r0, r0, r9, ror r8
807003ac:	00402001 	subeq	r2, r0, r1
807003b0:	03050000 	movweq	r0, #20480	; 0x5000
807003b4:	8070019c 			; <UNDEFINED> instruction: 0x8070019c
807003b8:	700a4805 	andvc	r4, sl, r5, lsl #16
807003bc:	40210180 	eormi	r0, r1, r0, lsl #3
807003c0:	05000000 	streq	r0, [r0, #-0]
807003c4:	7001a003 	andvc	sl, r1, r3
807003c8:	08d80580 	ldmeq	r8, {r7, r8, sl}^
807003cc:	22018070 	andcs	r8, r1, #112	; 0x70
807003d0:	00000040 	andeq	r0, r0, r0, asr #32
807003d4:	01a40305 			; <UNDEFINED> instruction: 0x01a40305
807003d8:	d1058070 	tstle	r5, r0, ror r0
807003dc:	01807007 	orreq	r7, r0, r7
807003e0:	00004023 	andeq	r4, r0, r3, lsr #32
807003e4:	a8030500 	stmdage	r3, {r8, sl}
807003e8:	05807001 	streq	r7, [r0, #1]
807003ec:	80700a2a 	rsbshi	r0, r0, sl, lsr #20
807003f0:	00402401 	subeq	r2, r0, r1, lsl #8
807003f4:	03050000 	movweq	r0, #20480	; 0x5000
807003f8:	807001ac 	rsbshi	r0, r0, ip, lsr #3
807003fc:	7007ab05 	andvc	sl, r7, r5, lsl #22
80700400:	40250180 	eormi	r0, r5, r0, lsl #3
80700404:	05000000 	streq	r0, [r0, #-0]
80700408:	7001b003 	andvc	fp, r1, r3
8070040c:	09d10580 	ldmibeq	r1, {r7, r8, sl}^
80700410:	26018070 			; <UNDEFINED> instruction: 0x26018070
80700414:	00000040 	andeq	r0, r0, r0, asr #32
80700418:	01b40305 			; <UNDEFINED> instruction: 0x01b40305
8070041c:	4f058070 	svcmi	0x00058070
80700420:	01807008 	orreq	r7, r0, r8
80700424:	00004027 	andeq	r4, r0, r7, lsr #32
80700428:	b8030500 	stmdalt	r3, {r8, sl}
8070042c:	05807001 	streq	r7, [r0, #1]
80700430:	80700995 			; <UNDEFINED> instruction: 0x80700995
80700434:	00402901 	subeq	r2, r0, r1, lsl #18
80700438:	03050000 	movweq	r0, #20480	; 0x5000
8070043c:	807001bc 	ldrhthi	r0, [r0], #-28	; 0xffffffe4
80700440:	7008bc05 	andvc	fp, r8, r5, lsl #24
80700444:	402a0180 	eormi	r0, sl, r0, lsl #3
80700448:	05000000 	streq	r0, [r0, #-0]
8070044c:	7001c003 	andvc	ip, r1, r3
80700450:	07670580 	strbeq	r0, [r7, -r0, lsl #11]!
80700454:	2c018070 	stccs	0, cr8, [r1], {112}	; 0x70
80700458:	00000040 	andeq	r0, r0, r0, asr #32
8070045c:	01c40305 	biceq	r0, r4, r5, lsl #6
80700460:	db058070 	blle	80860628 <ptable+0x15ab94>
80700464:	01807007 	orreq	r7, r0, r7
80700468:	0000402d 	andeq	r4, r0, sp, lsr #32
8070046c:	c8030500 	stmdagt	r3, {r8, sl}
80700470:	05807001 	streq	r7, [r0, #1]
80700474:	80700954 	rsbshi	r0, r0, r4, asr r9
80700478:	00402e01 	subeq	r2, r0, r1, lsl #28
8070047c:	03050000 	movweq	r0, #20480	; 0x5000
80700480:	807001cc 	rsbshi	r0, r0, ip, asr #3
80700484:	70089e05 	andvc	r9, r8, r5, lsl #28
80700488:	40300180 	eorsmi	r0, r0, r0, lsl #3
8070048c:	05000000 	streq	r0, [r0, #-0]
80700490:	7001d003 	andvc	sp, r1, r3
80700494:	094a0580 	stmdbeq	sl, {r7, r8, sl}^
80700498:	31018070 	tstcc	r1, r0, ror r0
8070049c:	00000040 	andeq	r0, r0, r0, asr #32
807004a0:	01d40305 	bicseq	r0, r4, r5, lsl #6
807004a4:	2c058070 	stccs	0, cr8, [r5], {112}	; 0x70
807004a8:	01807009 	orreq	r7, r0, r9
807004ac:	00004032 	andeq	r4, r0, r2, lsr r0
807004b0:	d8030500 	stmdale	r3, {r8, sl}
807004b4:	05807001 	streq	r7, [r0, #1]
807004b8:	807007ea 	rsbshi	r0, r0, sl, ror #15
807004bc:	00403301 	subeq	r3, r0, r1, lsl #6
807004c0:	03050000 	movweq	r0, #20480	; 0x5000
807004c4:	807001dc 	ldrsbthi	r0, [r0], #-28	; 0xffffffe4
807004c8:	70082d05 	andvc	r2, r8, r5, lsl #26
807004cc:	40340180 	eorsmi	r0, r4, r0, lsl #3
807004d0:	05000000 	streq	r0, [r0, #-0]
807004d4:	7001e003 	andvc	lr, r1, r3
807004d8:	098b0580 	stmibeq	fp, {r7, r8, sl}
807004dc:	35018070 	strcc	r8, [r1, #-112]	; 0xffffff90
807004e0:	00000040 	andeq	r0, r0, r0, asr #32
807004e4:	01e40305 	mvneq	r0, r5, lsl #6
807004e8:	db058070 	blle	808606b0 <ptable+0x15ac1c>
807004ec:	01807009 	orreq	r7, r0, r9
807004f0:	00004036 	andeq	r4, r0, r6, lsr r0
807004f4:	e8030500 	stmda	r3, {r8, sl}
807004f8:	05807001 	streq	r7, [r0, #1]
807004fc:	80700920 	rsbshi	r0, r0, r0, lsr #18
80700500:	00403701 	subeq	r3, r0, r1, lsl #14
80700504:	03050000 	movweq	r0, #20480	; 0x5000
80700508:	807001ec 	rsbshi	r0, r0, ip, ror #3
8070050c:	700a8a05 	andvc	r8, sl, r5, lsl #20
80700510:	40380180 	eorsmi	r0, r8, r0, lsl #3
80700514:	05000000 	streq	r0, [r0, #-0]
80700518:	7001f003 	andvc	pc, r1, r3
8070051c:	09e50580 	stmibeq	r5!, {r7, r8, sl}^
80700520:	39018070 	stmdbcc	r1, {r4, r5, r6, pc}
80700524:	00000040 	andeq	r0, r0, r0, asr #32
80700528:	01f40305 	mvnseq	r0, r5, lsl #6
8070052c:	f7058070 			; <UNDEFINED> instruction: 0xf7058070
80700530:	01807007 	orreq	r7, r0, r7
80700534:	0000403a 	andeq	r4, r0, sl, lsr r0
80700538:	f8030500 			; <UNDEFINED> instruction: 0xf8030500
8070053c:	05807001 	streq	r7, [r0, #1]
80700540:	8070086c 	rsbshi	r0, r0, ip, ror #16
80700544:	00403b01 	subeq	r3, r0, r1, lsl #22
80700548:	03050000 	movweq	r0, #20480	; 0x5000
8070054c:	807001fc 	ldrshthi	r0, [r0], #-28	; 0xffffffe4
80700550:	70097205 	andvc	r7, r9, r5, lsl #4
80700554:	403c0180 	eorsmi	r0, ip, r0, lsl #3
80700558:	05000000 	streq	r0, [r0, #-0]
8070055c:	70020003 	andvc	r0, r2, r3
80700560:	08c50580 	stmiaeq	r5, {r7, r8, sl}^
80700564:	3e018070 	mcrcc	0, 0, r8, cr1, cr0, {3}
80700568:	00000040 	andeq	r0, r0, r0, asr #32
8070056c:	02040305 	andeq	r0, r4, #335544320	; 0x14000000
80700570:	0a058070 	beq	80860738 <ptable+0x15aca4>
80700574:	0180700a 	orreq	r7, r0, sl
80700578:	0000403f 	andeq	r4, r0, pc, lsr r0
8070057c:	08030500 	stmdaeq	r3, {r8, sl}
80700580:	05807002 	streq	r7, [r0, #2]
80700584:	807009f2 	ldrshthi	r0, [r0], #-146	; 0xffffff6e
80700588:	00404001 	subeq	r4, r0, r1
8070058c:	03050000 	movweq	r0, #20480	; 0x5000
80700590:	8070020c 	rsbshi	r0, r0, ip, lsl #4
80700594:	700a7a05 	andvc	r7, sl, r5, lsl #20
80700598:	40410180 	submi	r0, r1, r0, lsl #3
8070059c:	05000000 	streq	r0, [r0, #-0]
807005a0:	70021003 	andvc	r1, r2, r3
807005a4:	08830580 	stmeq	r3, {r7, r8, sl}
807005a8:	42018070 	andmi	r8, r1, #112	; 0x70
807005ac:	00000040 	andeq	r0, r0, r0, asr #32
807005b0:	02140305 	andseq	r0, r4, #335544320	; 0x14000000
807005b4:	7c058070 	stcvc	0, cr8, [r5], {112}	; 0x70
807005b8:	01807009 	orreq	r7, r0, r9
807005bc:	00004043 	andeq	r4, r0, r3, asr #32
807005c0:	18030500 	stmdane	r3, {r8, sl}
807005c4:	05807002 	streq	r7, [r0, #2]
807005c8:	80700859 	rsbshi	r0, r0, r9, asr r8
807005cc:	00404401 	subeq	r4, r0, r1, lsl #8
807005d0:	03050000 	movweq	r0, #20480	; 0x5000
807005d4:	8070021c 	rsbshi	r0, r0, ip, lsl r2
807005d8:	70096305 	andvc	r6, r9, r5, lsl #6
807005dc:	40450180 	submi	r0, r5, r0, lsl #3
807005e0:	05000000 	streq	r0, [r0, #-0]
807005e4:	70022003 	andvc	r2, r2, r3
807005e8:	08040580 	stmdaeq	r4, {r7, r8, sl}
807005ec:	47018070 	smlsdxmi	r1, r0, r0, r8
807005f0:	00000040 	andeq	r0, r0, r0, asr #32
807005f4:	02240305 	eoreq	r0, r4, #335544320	; 0x14000000
807005f8:	a8058070 	stmdage	r5, {r4, r5, r6, pc}
807005fc:	01807008 	orreq	r7, r0, r8
80700600:	00004048 	andeq	r4, r0, r8, asr #32
80700604:	28030500 	stmdacs	r3, {r8, sl}
80700608:	05807002 	streq	r7, [r0, #2]
8070060c:	8070083b 	rsbshi	r0, r0, fp, lsr r8
80700610:	00404901 	subeq	r4, r0, r1, lsl #18
80700614:	03050000 	movweq	r0, #20480	; 0x5000
80700618:	8070022c 	rsbshi	r0, r0, ip, lsr #4
8070061c:	7009bd05 	andvc	fp, r9, r5, lsl #26
80700620:	404a0180 	submi	r0, sl, r0, lsl #3
80700624:	05000000 	streq	r0, [r0, #-0]
80700628:	70023003 	andvc	r3, r2, r3
8070062c:	0a520580 	beq	81b81c34 <ptable+0x147c1a0>
80700630:	4b018070 	blmi	807607f8 <ptable+0x5ad64>
80700634:	00000040 	andeq	r0, r0, r0, asr #32
80700638:	02340305 	eorseq	r0, r4, #335544320	; 0x14000000
8070063c:	e2058070 	and	r8, r5, #112	; 0x70
80700640:	01807008 	orreq	r7, r0, r8
80700644:	0000404c 	andeq	r4, r0, ip, asr #32
80700648:	38030500 	stmdacc	r3, {r8, sl}
8070064c:	05807002 	streq	r7, [r0, #2]
80700650:	8070090d 	rsbshi	r0, r0, sp, lsl #18
80700654:	00404e01 	subeq	r4, r0, r1, lsl #28
80700658:	03050000 	movweq	r0, #20480	; 0x5000
8070065c:	8070023c 	rsbshi	r0, r0, ip, lsr r2
80700660:	700a3405 	andvc	r3, sl, r5, lsl #8
80700664:	404f0180 	submi	r0, pc, r0, lsl #3
80700668:	05000000 	streq	r0, [r0, #-0]
8070066c:	70024003 	andvc	r4, r2, r3
80700670:	099e0580 	ldmibeq	lr, {r7, r8, sl}
80700674:	50018070 	andpl	r8, r1, r0, ror r0
80700678:	00000040 	andeq	r0, r0, r0, asr #32
8070067c:	02440305 	subeq	r0, r4, #335544320	; 0x14000000
80700680:	66058070 			; <UNDEFINED> instruction: 0x66058070
80700684:	0180700a 	orreq	r7, r0, sl
80700688:	00004051 	andeq	r4, r0, r1, asr r0
8070068c:	48030500 	stmdami	r3, {r8, sl}
80700690:	05807002 	streq	r7, [r0, #2]
80700694:	8070123c 	rsbshi	r1, r0, ip, lsr r2
80700698:	00405301 	subeq	r5, r0, r1, lsl #6
8070069c:	03050000 	movweq	r0, #20480	; 0x5000
807006a0:	8070024c 	rsbshi	r0, r0, ip, asr #4
807006a4:	70081805 	andvc	r1, r8, r5, lsl #16
807006a8:	40540180 	subsmi	r0, r4, r0, lsl #3
807006ac:	05000000 	streq	r0, [r0, #-0]
807006b0:	70025003 	andvc	r5, r2, r3
807006b4:	11010080 	smlabbne	r1, r0, r0, r0
807006b8:	130e2501 	movwne	r2, #58625	; 0xe501
807006bc:	1b0e030b 	blne	80a812f0 <ptable+0x37b85c>
807006c0:	0017100e 	andseq	r1, r7, lr
807006c4:	00240200 	eoreq	r0, r4, r0, lsl #4
807006c8:	0b3e0b0b 	bleq	816832fc <ptable+0xf7d868>
807006cc:	00000e03 	andeq	r0, r0, r3, lsl #28
807006d0:	03001603 	movweq	r1, #1539	; 0x603
807006d4:	3b0b3a08 	blcc	809ceefc <ptable+0x2c9468>
807006d8:	0013490b 	andseq	r4, r3, fp, lsl #18
807006dc:	00240400 	eoreq	r0, r4, r0, lsl #8
807006e0:	0b3e0b0b 	bleq	81683314 <ptable+0xf7d880>
807006e4:	00000803 	andeq	r0, r0, r3, lsl #16
807006e8:	03003405 	movweq	r3, #1029	; 0x405
807006ec:	3b0b3a0e 	blcc	809cef2c <ptable+0x2c9498>
807006f0:	3f13490b 	svccc	0x0013490b
807006f4:	00180219 	andseq	r0, r8, r9, lsl r2
807006f8:	00140000 	andseq	r0, r4, r0
807006fc:	00020000 	andeq	r0, r2, r0
80700700:	8070025c 	rsbshi	r0, r0, ip, asr r2
80700704:	00000004 	andeq	r0, r0, r4
	...
80700710:	00510000 	subseq	r0, r1, r0
80700714:	00020000 	andeq	r0, r2, r0
80700718:	0000004b 	andeq	r0, r0, fp, asr #32
8070071c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
80700720:	0101000d 	tsteq	r1, sp
80700724:	00000101 	andeq	r0, r0, r1, lsl #2
80700728:	00000100 	andeq	r0, r0, r0, lsl #2
8070072c:	69726401 	ldmdbvs	r2!, {r0, sl, sp, lr}^
80700730:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
80700734:	73696d2f 	cmnvc	r9, #3008	; 0xbc0
80700738:	2f2e0063 	svccs	0x002e0063
8070073c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
80700740:	2f656475 	svccs	0x00656475
80700744:	00737973 	rsbseq	r7, r3, r3, ror r9
80700748:	62746400 	rsbsvs	r6, r4, #0, 8
8070074c:	6e797a2d 	vaddvs.f32	s15, s18, s27
80700750:	30303771 	eorscc	r3, r0, r1, ror r7
80700754:	00632e30 	rsbeq	r2, r3, r0, lsr lr
80700758:	74000001 	strvc	r0, [r0], #-1
8070075c:	73657079 	cmnvc	r5, #121	; 0x79
80700760:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
80700764:	73000000 	movwvc	r0, #0
80700768:	6e5f636d 	cdpvs	3, 5, cr6, cr15, cr13, {3}
8070076c:	5f646e61 	svcpl	0x00646e61
80700770:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
80700774:	69786100 	ldmdbvs	r8!, {r8, sp, lr}^
80700778:	3070675f 	rsbscc	r6, r0, pc, asr r7
8070077c:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700780:	73750065 	cmnvc	r5, #101	; 0x65
80700784:	625f3162 	subsvs	r3, pc, #-2147483624	; 0x80000018
80700788:	00657361 	rsbeq	r7, r5, r1, ror #6
8070078c:	30633269 	rsbcc	r3, r3, r9, ror #4
80700790:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700794:	32690065 	rsbcc	r0, r9, #101	; 0x65
80700798:	625f3163 	subsvs	r3, pc, #-1073741800	; 0xc0000018
8070079c:	00657361 	rsbeq	r7, r5, r1, ror #6
807007a0:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
807007a4:	61625f31 	cmnvs	r2, r1, lsr pc
807007a8:	67006573 	smlsdxvs	r0, r3, r5, r6
807007ac:	5f316d65 	svcpl	0x00316d65
807007b0:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
807007b4:	69726400 	ldmdbvs	r2!, {sl, sp, lr}^
807007b8:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
807007bc:	73696d2f 	cmnvc	r9, #3008	; 0xbc0
807007c0:	74642f63 	strbtvc	r2, [r4], #-3939	; 0xfffff09d
807007c4:	797a2d62 	ldmdbvc	sl!, {r1, r5, r6, r8, sl, fp, sp}^
807007c8:	3037716e 	eorscc	r7, r7, lr, ror #2
807007cc:	632e3030 	teqvs	lr, #48	; 0x30
807007d0:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
807007d4:	61625f6f 	cmnvs	r2, pc, ror #30
807007d8:	73006573 	movwvc	r6, #1395	; 0x573
807007dc:	735f636d 	cmpvc	pc, #-1275068415	; 0xb4000001
807007e0:	306d6172 	rsbcc	r6, sp, r2, ror r1
807007e4:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
807007e8:	6d640065 	stclvs	0, cr0, [r4, #-404]!	; 0xfffffe6c
807007ec:	5f306361 	svcpl	0x00306361
807007f0:	61625f73 	smcvs	9715	; 0x25f3
807007f4:	61006573 	tstvs	r0, r3, ror r5
807007f8:	685f6978 	ldmdavs	pc, {r3, r4, r5, r6, r8, fp, sp, lr}^	; <UNPREDICTABLE>
807007fc:	625f3270 	subsvs	r3, pc, #112, 4
80700800:	00657361 	rsbeq	r7, r5, r1, ror #6
80700804:	75626564 	strbvc	r6, [r2, #-1380]!	; 0xfffffa9c
80700808:	70635f67 	rsbvc	r5, r3, r7, ror #30
8070080c:	6d705f75 	ldclvs	15, cr5, [r0, #-468]!	; 0xfffffe2c
80700810:	625f3075 	subsvs	r3, pc, #117	; 0x75
80700814:	00657361 	rsbeq	r7, r5, r1, ror #6
80700818:	6163326c 	cmnvs	r3, ip, ror #4
8070081c:	5f656863 	svcpl	0x00656863
80700820:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
80700824:	72646400 	rsbvc	r6, r4, #0, 8
80700828:	646e655f 	strbtvs	r6, [lr], #-1375	; 0xfffffaa1
8070082c:	616d6400 	cmnvs	sp, r0, lsl #8
80700830:	6e5f3063 	cdpvs	0, 5, cr3, cr15, cr3, {3}
80700834:	61625f73 	smcvs	9715	; 0x25f3
80700838:	64006573 	strvs	r6, [r0], #-1395	; 0xfffffa8d
8070083c:	67756265 	ldrbvs	r6, [r5, -r5, ror #4]!
80700840:	7570635f 	ldrbvc	r6, [r0, #-863]!	; 0xfffffca1
80700844:	6974635f 	ldmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, sp, lr}^
80700848:	61625f30 	cmnvs	r2, r0, lsr pc
8070084c:	73006573 	movwvc	r6, #1395	; 0x573
80700850:	5f63636d 	svcpl	0x0063636d
80700854:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
80700858:	62656400 	rsbvs	r6, r5, #0, 8
8070085c:	635f6775 	cmpvs	pc, #30670848	; 0x1d40000
80700860:	665f6974 			; <UNDEFINED> instruction: 0x665f6974
80700864:	625f6d74 	subsvs	r6, pc, #116, 26	; 0x1d00
80700868:	00657361 	rsbeq	r7, r5, r1, ror #6
8070086c:	5f697861 	svcpl	0x00697861
80700870:	5f337068 	svcpl	0x00337068
80700874:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
80700878:	69707300 	ldmdbvs	r0!, {r8, r9, ip, sp, lr}^
8070087c:	61625f31 	cmnvs	r2, r1, lsr pc
80700880:	64006573 	strvs	r6, [r0], #-1395	; 0xfffffa8d
80700884:	67756265 	ldrbvs	r6, [r5, -r5, ror #4]!
80700888:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
8070088c:	5f6c656e 	svcpl	0x006c656e
80700890:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
80700894:	6d636f00 	stclvs	15, cr6, [r3, #-0]
80700898:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
8070089c:	6c730065 	ldclvs	0, cr0, [r3], #-404	; 0xfffffe6c
807008a0:	625f7263 	subsvs	r7, pc, #805306374	; 0x30000006
807008a4:	00657361 	rsbeq	r7, r5, r1, ror #6
807008a8:	75626564 	strbvc	r6, [r2, #-1380]!	; 0xfffffa9c
807008ac:	70635f67 	rsbvc	r5, r3, r7, ror #30
807008b0:	6d705f75 	ldclvs	15, cr5, [r0, #-468]!	; 0xfffffe2c
807008b4:	625f3175 	subsvs	r3, pc, #1073741853	; 0x4000001d
807008b8:	00657361 	rsbeq	r7, r5, r1, ror #6
807008bc:	5f316473 	svcpl	0x00316473
807008c0:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
807008c4:	62656400 	rsbvs	r6, r5, #0, 8
807008c8:	645f6775 	ldrbvs	r6, [pc], #-1909	; 807008d0 <ddr_base+0x678>
807008cc:	725f7061 	subsvc	r7, pc, #97	; 0x61
807008d0:	625f6d6f 	subsvs	r6, pc, #7104	; 0x1bc0
807008d4:	00657361 	rsbeq	r7, r5, r1, ror #6
807008d8:	316e6163 	cmncc	lr, r3, ror #2
807008dc:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
807008e0:	65640065 	strbvs	r0, [r4, #-101]!	; 0xffffff9b
807008e4:	5f677562 	svcpl	0x00677562
807008e8:	5f757063 	svcpl	0x00757063
807008ec:	316d7470 	smccc	55104	; 0xd740
807008f0:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
807008f4:	70730065 	rsbsvc	r0, r3, r5, rrx
807008f8:	625f3069 	subsvs	r3, pc, #105	; 0x69
807008fc:	00657361 	rsbeq	r7, r5, r1, ror #6
80700900:	5f697861 	svcpl	0x00697861
80700904:	5f317067 	svcpl	0x00317067
80700908:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
8070090c:	76706700 	ldrbtvc	r6, [r0], -r0, lsl #14
80700910:	7572745f 	ldrbvc	r7, [r2, #-1119]!	; 0xfffffba1
80700914:	6f7a7473 	svcvs	0x007a7473
80700918:	625f656e 	subsvs	r6, pc, #461373440	; 0x1b800000
8070091c:	00657361 	rsbeq	r7, r5, r1, ror #6
80700920:	63766564 	cmnvs	r6, #100, 10	; 0x19000000
80700924:	625f6766 	subsvs	r6, pc, #26738688	; 0x1980000
80700928:	00657361 	rsbeq	r7, r5, r1, ror #6
8070092c:	31637474 	smccc	14148	; 0x3744
80700930:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700934:	61750065 	cmnvs	r5, r5, rrx
80700938:	5f307472 	svcpl	0x00307472
8070093c:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
80700940:	72646400 	rsbvc	r6, r4, #0, 8
80700944:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700948:	74740065 	ldrbtvc	r0, [r4], #-101	; 0xffffff9b
8070094c:	625f3063 	subsvs	r3, pc, #99	; 0x63
80700950:	00657361 	rsbeq	r7, r5, r1, ror #6
80700954:	5f636d73 	svcpl	0x00636d73
80700958:	6d617273 	sfmvs	f7, 2, [r1, #-460]!	; 0xfffffe34
8070095c:	61625f31 	cmnvs	r2, r1, lsr pc
80700960:	64006573 	strvs	r6, [r0], #-1395	; 0xfffffa8d
80700964:	67756265 	ldrbvs	r6, [r5, -r5, ror #4]!
80700968:	6d74665f 	ldclvs	6, cr6, [r4, #-380]!	; 0xfffffe84
8070096c:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700970:	636f0065 	cmnvs	pc, #101	; 0x65
80700974:	625f636d 	subsvs	r6, pc, #-1275068415	; 0xb4000001
80700978:	00657361 	rsbeq	r7, r5, r1, ror #6
8070097c:	75626564 	strbvc	r6, [r2, #-1380]!	; 0xfffffa9c
80700980:	74695f67 	strbtvc	r5, [r9], #-3943	; 0xfffff099
80700984:	61625f6d 	cmnvs	r2, sp, ror #30
80700988:	73006573 	movwvc	r6, #1395	; 0x573
8070098c:	5f746477 	svcpl	0x00746477
80700990:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
80700994:	30647300 	rsbcc	r7, r4, r0, lsl #6
80700998:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
8070099c:	70670065 	rsbvc	r0, r7, r5, rrx
807009a0:	6f715f76 	svcvs	0x00715f76
807009a4:	31303373 	teqcc	r0, r3, ror r3
807009a8:	616d645f 	cmnvs	sp, pc, asr r4
807009ac:	61625f63 	cmnvs	r2, r3, ror #30
807009b0:	75006573 	strvc	r6, [r0, #-1395]	; 0xfffffa8d
807009b4:	5f306273 	svcpl	0x00306273
807009b8:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
807009bc:	62656400 	rsbvs	r6, r5, #0, 8
807009c0:	635f6775 	cmpvs	pc, #30670848	; 0x1d40000
807009c4:	635f7570 	cmpvs	pc, #112, 10	; 0x1c000000
807009c8:	5f316974 	svcpl	0x00316974
807009cc:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
807009d0:	70737100 	rsbsvc	r7, r3, r0, lsl #2
807009d4:	61625f69 	cmnvs	r2, r9, ror #30
807009d8:	64006573 	strvs	r6, [r0], #-1395	; 0xfffffa8d
807009dc:	5f637264 	svcpl	0x00637264
807009e0:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
807009e4:	69786100 	ldmdbvs	r8!, {r8, sp, lr}^
807009e8:	3170685f 	cmncc	r0, pc, asr r8
807009ec:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
807009f0:	65640065 	strbvs	r0, [r4, #-101]!	; 0xffffff9b
807009f4:	5f677562 	svcpl	0x00677562
807009f8:	5f697463 	svcpl	0x00697463
807009fc:	5f627465 	svcpl	0x00627465
80700a00:	75697074 	strbvc	r7, [r9, #-116]!	; 0xffffff8c
80700a04:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700a08:	65640065 	strbvs	r0, [r4, #-101]!	; 0xffffff9b
80700a0c:	5f677562 	svcpl	0x00677562
80700a10:	5f627465 	svcpl	0x00627465
80700a14:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
80700a18:	70737100 	rsbsvc	r7, r3, r0, lsl #2
80700a1c:	696c5f69 	stmdbvs	ip!, {r0, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
80700a20:	7261656e 	rsbvc	r6, r1, #461373440	; 0x1b800000
80700a24:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700a28:	65670065 	strbvs	r0, [r7, #-101]!	; 0xffffff9b
80700a2c:	625f306d 	subsvs	r3, pc, #109	; 0x6d
80700a30:	00657361 	rsbeq	r7, r5, r1, ror #6
80700a34:	5f767067 	svcpl	0x00767067
80700a38:	33736f71 	cmncc	r3, #452	; 0x1c4
80700a3c:	635f3130 	cmpvs	pc, #48, 2
80700a40:	625f7570 	subsvs	r7, pc, #112, 10	; 0x1c000000
80700a44:	00657361 	rsbeq	r7, r5, r1, ror #6
80700a48:	306e6163 	rsbcc	r6, lr, r3, ror #2
80700a4c:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700a50:	65640065 	strbvs	r0, [r4, #-101]!	; 0xffffff9b
80700a54:	5f677562 	svcpl	0x00677562
80700a58:	5f757063 	svcpl	0x00757063
80700a5c:	306d7470 	rsbcc	r7, sp, r0, ror r4
80700a60:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700a64:	70670065 	rsbvc	r0, r7, r5, rrx
80700a68:	6f715f76 	svcvs	0x00715f76
80700a6c:	31303373 	teqcc	r0, r3, ror r3
80700a70:	756f695f 	strbvc	r6, [pc, #-2399]!	; 80700119 <IRQ_handler+0xc9>
80700a74:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700a78:	65640065 	strbvs	r0, [r4, #-101]!	; 0xffffff9b
80700a7c:	5f677562 	svcpl	0x00677562
80700a80:	75697074 	strbvc	r7, [r9, #-116]!	; 0xffffff8c
80700a84:	7361625f 	cmnvc	r1, #-268435451	; 0xf0000005
80700a88:	78610065 	stmdavc	r1!, {r0, r2, r5, r6}^
80700a8c:	70685f69 	rsbvc	r5, r8, r9, ror #30
80700a90:	61625f30 	cmnvs	r2, r0, lsr pc
80700a94:	41006573 	tstmi	r0, r3, ror r5
80700a98:	0000002e 	andeq	r0, r0, lr, lsr #32
80700a9c:	62616561 	rsbvs	r6, r1, #406847488	; 0x18400000
80700aa0:	24010069 	strcs	r0, [r1], #-105	; 0xffffff97
80700aa4:	05000000 	streq	r0, [r0, #-0]
80700aa8:	00412d37 	subeq	r2, r1, r7, lsr sp
80700aac:	41070a06 	tstmi	r7, r6, lsl #20
80700ab0:	02090108 	andeq	r0, r9, #8, 2
80700ab4:	01140412 	tsteq	r4, r2, lsl r4
80700ab8:	03170115 	tsteq	r7, #1073741829	; 0x40000005
80700abc:	01190118 	tsteq	r9, r8, lsl r1
80700ac0:	061e011a 			; <UNDEFINED> instruction: 0x061e011a
80700ac4:	00000122 	andeq	r0, r0, r2, lsr #2

80700ac8 <puthex>:
80700ac8:	e92d4800 	push	{fp, lr}
80700acc:	e28db004 	add	fp, sp, #4
80700ad0:	e24dd030 	sub	sp, sp, #48	; 0x30
80700ad4:	e50b0030 	str	r0, [fp, #-48]	; 0xffffffd0
80700ad8:	e3003d98 	movw	r3, #3480	; 0xd98
80700adc:	e3483070 	movt	r3, #32880	; 0x8070
80700ae0:	e24bc01c 	sub	ip, fp, #28
80700ae4:	e1a0e003 	mov	lr, r3
80700ae8:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
80700aec:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
80700af0:	e59e3000 	ldr	r3, [lr]
80700af4:	e5cc3000 	strb	r3, [ip]
80700af8:	e3002dac 	movw	r2, #3500	; 0xdac
80700afc:	e3482070 	movt	r2, #32880	; 0x8070
80700b00:	e24b3028 	sub	r3, fp, #40	; 0x28
80700b04:	e8920007 	ldm	r2, {r0, r1, r2}
80700b08:	e8a30003 	stmia	r3!, {r0, r1}
80700b0c:	e5c32000 	strb	r2, [r3]
80700b10:	e3a03000 	mov	r3, #0
80700b14:	e54b301f 	strb	r3, [fp, #-31]	; 0xffffffe1
80700b18:	e3a0301c 	mov	r3, #28
80700b1c:	e50b3008 	str	r3, [fp, #-8]
80700b20:	ea00000f 	b	80700b64 <puthex+0x9c>
80700b24:	e51b3008 	ldr	r3, [fp, #-8]
80700b28:	e263301c 	rsb	r3, r3, #28
80700b2c:	e1a03143 	asr	r3, r3, #2
80700b30:	e51b1030 	ldr	r1, [fp, #-48]	; 0xffffffd0
80700b34:	e51b2008 	ldr	r2, [fp, #-8]
80700b38:	e1a02231 	lsr	r2, r1, r2
80700b3c:	e202200f 	and	r2, r2, #15
80700b40:	e24b1004 	sub	r1, fp, #4
80700b44:	e0812002 	add	r2, r1, r2
80700b48:	e5522018 	ldrb	r2, [r2, #-24]	; 0xffffffe8
80700b4c:	e24b1004 	sub	r1, fp, #4
80700b50:	e0813003 	add	r3, r1, r3
80700b54:	e5432024 	strb	r2, [r3, #-36]	; 0xffffffdc
80700b58:	e51b3008 	ldr	r3, [fp, #-8]
80700b5c:	e2433004 	sub	r3, r3, #4
80700b60:	e50b3008 	str	r3, [fp, #-8]
80700b64:	e51b3008 	ldr	r3, [fp, #-8]
80700b68:	e3530000 	cmp	r3, #0
80700b6c:	aaffffec 	bge	80700b24 <puthex+0x5c>
80700b70:	e24b3028 	sub	r3, fp, #40	; 0x28
80700b74:	e1a00003 	mov	r0, r3
80700b78:	eb000640 	bl	80702480 <uart_spin_puts>
80700b7c:	e1a00000 	nop			; (mov r0, r0)
80700b80:	e24bd004 	sub	sp, fp, #4
80700b84:	e8bd8800 	pop	{fp, pc}

80700b88 <put_str_hex>:
80700b88:	e92d4800 	push	{fp, lr}
80700b8c:	e28db004 	add	fp, sp, #4
80700b90:	e24dd008 	sub	sp, sp, #8
80700b94:	e50b0008 	str	r0, [fp, #-8]
80700b98:	e50b100c 	str	r1, [fp, #-12]
80700b9c:	e51b0008 	ldr	r0, [fp, #-8]
80700ba0:	eb000636 	bl	80702480 <uart_spin_puts>
80700ba4:	e51b000c 	ldr	r0, [fp, #-12]
80700ba8:	ebffffc6 	bl	80700ac8 <puthex>
80700bac:	e3000db8 	movw	r0, #3512	; 0xdb8
80700bb0:	e3480070 	movt	r0, #32880	; 0x8070
80700bb4:	eb000631 	bl	80702480 <uart_spin_puts>
80700bb8:	e1a00000 	nop			; (mov r0, r0)
80700bbc:	e24bd004 	sub	sp, fp, #4
80700bc0:	e8bd8800 	pop	{fp, pc}

80700bc4 <high_exec>:
80700bc4:	e92d4800 	push	{fp, lr}
80700bc8:	e28db004 	add	fp, sp, #4
80700bcc:	e24dd008 	sub	sp, sp, #8
80700bd0:	eb0002bb 	bl	807016c4 <memory_init>
80700bd4:	e3000dbc 	movw	r0, #3516	; 0xdbc
80700bd8:	e3480070 	movt	r0, #32880	; 0x8070
80700bdc:	eb000627 	bl	80702480 <uart_spin_puts>
80700be0:	e30133c4 	movw	r3, #5060	; 0x13c4
80700be4:	e3483070 	movt	r3, #32880	; 0x8070
80700be8:	e5933000 	ldr	r3, [r3]
80700bec:	e5933004 	ldr	r3, [r3, #4]
80700bf0:	e1a01003 	mov	r1, r3
80700bf4:	e3000dcc 	movw	r0, #3532	; 0xdcc
80700bf8:	e3480070 	movt	r0, #32880	; 0x8070
80700bfc:	ebffffe1 	bl	80700b88 <put_str_hex>
80700c00:	e3a0000c 	mov	r0, #12
80700c04:	eb0002f1 	bl	807017d0 <alloc_pages>
80700c08:	e50b0008 	str	r0, [fp, #-8]
80700c0c:	e51b3008 	ldr	r3, [fp, #-8]
80700c10:	e5933008 	ldr	r3, [r3, #8]
80700c14:	e1a01003 	mov	r1, r3
80700c18:	e3000de0 	movw	r0, #3552	; 0xde0
80700c1c:	e3480070 	movt	r0, #32880	; 0x8070
80700c20:	ebffffd8 	bl	80700b88 <put_str_hex>
80700c24:	e30133c4 	movw	r3, #5060	; 0x13c4
80700c28:	e3483070 	movt	r3, #32880	; 0x8070
80700c2c:	e5933000 	ldr	r3, [r3]
80700c30:	e5933008 	ldr	r3, [r3, #8]
80700c34:	e1a01003 	mov	r1, r3
80700c38:	e3000dec 	movw	r0, #3564	; 0xdec
80700c3c:	e3480070 	movt	r0, #32880	; 0x8070
80700c40:	ebffffd0 	bl	80700b88 <put_str_hex>
80700c44:	e3a0000c 	mov	r0, #12
80700c48:	eb0002e0 	bl	807017d0 <alloc_pages>
80700c4c:	e50b000c 	str	r0, [fp, #-12]
80700c50:	e51b300c 	ldr	r3, [fp, #-12]
80700c54:	e5933008 	ldr	r3, [r3, #8]
80700c58:	e1a01003 	mov	r1, r3
80700c5c:	e3000e00 	movw	r0, #3584	; 0xe00
80700c60:	e3480070 	movt	r0, #32880	; 0x8070
80700c64:	ebffffc7 	bl	80700b88 <put_str_hex>
80700c68:	e30133c4 	movw	r3, #5060	; 0x13c4
80700c6c:	e3483070 	movt	r3, #32880	; 0x8070
80700c70:	e5933000 	ldr	r3, [r3]
80700c74:	e5933008 	ldr	r3, [r3, #8]
80700c78:	e1a01003 	mov	r1, r3
80700c7c:	e3000dec 	movw	r0, #3564	; 0xdec
80700c80:	e3480070 	movt	r0, #32880	; 0x8070
80700c84:	ebffffbf 	bl	80700b88 <put_str_hex>
80700c88:	e51b3008 	ldr	r3, [fp, #-8]
80700c8c:	e5933008 	ldr	r3, [r3, #8]
80700c90:	e3a01010 	mov	r1, #16
80700c94:	e1a00003 	mov	r0, r3
80700c98:	eb00035b 	bl	80701a0c <free_pages>
80700c9c:	e30133c4 	movw	r3, #5060	; 0x13c4
80700ca0:	e3483070 	movt	r3, #32880	; 0x8070
80700ca4:	e5933000 	ldr	r3, [r3]
80700ca8:	e5933008 	ldr	r3, [r3, #8]
80700cac:	e1a01003 	mov	r1, r3
80700cb0:	e3000e0c 	movw	r0, #3596	; 0xe0c
80700cb4:	e3480070 	movt	r0, #32880	; 0x8070
80700cb8:	ebffffb2 	bl	80700b88 <put_str_hex>
80700cbc:	e30133c4 	movw	r3, #5060	; 0x13c4
80700cc0:	e3483070 	movt	r3, #32880	; 0x8070
80700cc4:	e5933000 	ldr	r3, [r3]
80700cc8:	e5933004 	ldr	r3, [r3, #4]
80700ccc:	e1a01003 	mov	r1, r3
80700cd0:	e3000e1c 	movw	r0, #3612	; 0xe1c
80700cd4:	e3480070 	movt	r0, #32880	; 0x8070
80700cd8:	ebffffaa 	bl	80700b88 <put_str_hex>
80700cdc:	e51b3008 	ldr	r3, [fp, #-8]
80700ce0:	e5933008 	ldr	r3, [r3, #8]
80700ce4:	e2833801 	add	r3, r3, #65536	; 0x10000
80700ce8:	e3a01008 	mov	r1, #8
80700cec:	e1a00003 	mov	r0, r3
80700cf0:	eb000345 	bl	80701a0c <free_pages>
80700cf4:	e30133c4 	movw	r3, #5060	; 0x13c4
80700cf8:	e3483070 	movt	r3, #32880	; 0x8070
80700cfc:	e5933000 	ldr	r3, [r3]
80700d00:	e5933008 	ldr	r3, [r3, #8]
80700d04:	e1a01003 	mov	r1, r3
80700d08:	e3000e0c 	movw	r0, #3596	; 0xe0c
80700d0c:	e3480070 	movt	r0, #32880	; 0x8070
80700d10:	ebffff9c 	bl	80700b88 <put_str_hex>
80700d14:	e30133c4 	movw	r3, #5060	; 0x13c4
80700d18:	e3483070 	movt	r3, #32880	; 0x8070
80700d1c:	e5933000 	ldr	r3, [r3]
80700d20:	e5933004 	ldr	r3, [r3, #4]
80700d24:	e1a01003 	mov	r1, r3
80700d28:	e3000e1c 	movw	r0, #3612	; 0xe1c
80700d2c:	e3480070 	movt	r0, #32880	; 0x8070
80700d30:	ebffff94 	bl	80700b88 <put_str_hex>
80700d34:	e3a00002 	mov	r0, #2
80700d38:	eb0002a4 	bl	807017d0 <alloc_pages>
80700d3c:	e30133c4 	movw	r3, #5060	; 0x13c4
80700d40:	e3483070 	movt	r3, #32880	; 0x8070
80700d44:	e5933000 	ldr	r3, [r3]
80700d48:	e5933008 	ldr	r3, [r3, #8]
80700d4c:	e1a01003 	mov	r1, r3
80700d50:	e3000e0c 	movw	r0, #3596	; 0xe0c
80700d54:	e3480070 	movt	r0, #32880	; 0x8070
80700d58:	ebffff8a 	bl	80700b88 <put_str_hex>
80700d5c:	e30133c4 	movw	r3, #5060	; 0x13c4
80700d60:	e3483070 	movt	r3, #32880	; 0x8070
80700d64:	e5933000 	ldr	r3, [r3]
80700d68:	e5933004 	ldr	r3, [r3, #4]
80700d6c:	e1a01003 	mov	r1, r3
80700d70:	e3000e1c 	movw	r0, #3612	; 0xe1c
80700d74:	e3480070 	movt	r0, #32880	; 0x8070
80700d78:	ebffff82 	bl	80700b88 <put_str_hex>
80700d7c:	eb000e7c 	bl	80704774 <interrupt_init>
80700d80:	eb000ed9 	bl	807048ec <SWI>
80700d84:	eb00111d 	bl	80705200 <create_first_process>
80700d88:	e3000e30 	movw	r0, #3632	; 0xe30
80700d8c:	e3480070 	movt	r0, #32880	; 0x8070
80700d90:	eb0005ba 	bl	80702480 <uart_spin_puts>
80700d94:	eafffffe 	b	80700d94 <high_exec+0x1d0>

80700d98 <.LC0>:
80700d98:	33323130 	teqcc	r2, #48, 2
80700d9c:	37363534 			; <UNDEFINED> instruction: 0x37363534
80700da0:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
80700da4:	46454443 	strbmi	r4, [r5], -r3, asr #8
80700da8:	00000000 	andeq	r0, r0, r0

80700dac <.LC1>:
80700dac:	30303030 	eorscc	r3, r0, r0, lsr r0
80700db0:	30303030 	eorscc	r3, r0, r0, lsr r0
80700db4:	00000000 	andeq	r0, r0, r0

80700db8 <.LC2>:
80700db8:	00000a0d 	andeq	r0, r0, sp, lsl #20

80700dbc <.LC3>:
80700dbc:	54534554 	ldrbpl	r4, [r3], #-1364	; 0xfffffaac
80700dc0:	47454220 	strbmi	r4, [r5, -r0, lsr #4]
80700dc4:	0a0d4e49 	beq	80a546f0 <ptable+0x34ec5c>
80700dc8:	00000000 	andeq	r0, r0, r0

80700dcc <.LC4>:
80700dcc:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
80700dd0:	73696c5f 	cmnvc	r9, #24320	; 0x5f00
80700dd4:	733e2d74 	teqvc	lr, #116, 26	; 0x1d00
80700dd8:	20657a69 	rsbcs	r7, r5, r9, ror #20
80700ddc:	0000203a 	andeq	r2, r0, sl, lsr r0

80700de0 <.LC5>:
80700de0:	703e2d61 	eorsvc	r2, lr, r1, ror #26
80700de4:	203a2061 	eorscs	r2, sl, r1, rrx
80700de8:	00000000 	andeq	r0, r0, r0

80700dec <.LC6>:
80700dec:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
80700df0:	73696c5f 	cmnvc	r9, #24320	; 0x5f00
80700df4:	703e2d74 	eorsvc	r2, lr, r4, ror sp
80700df8:	203a2061 	eorscs	r2, sl, r1, rrx
80700dfc:	00000000 	andeq	r0, r0, r0

80700e00 <.LC7>:
80700e00:	703e2d62 	eorsvc	r2, lr, r2, ror #26
80700e04:	203a2061 	eorscs	r2, sl, r1, rrx
80700e08:	00000000 	andeq	r0, r0, r0

80700e0c <.LC8>:
80700e0c:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
80700e10:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
80700e14:	61703e2d 	cmnvs	r0, sp, lsr #28
80700e18:	00203a20 	eoreq	r3, r0, r0, lsr #20

80700e1c <.LC9>:
80700e1c:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
80700e20:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
80700e24:	69733e2d 	ldmdbvs	r3!, {r0, r2, r3, r5, r9, sl, fp, ip, sp}^
80700e28:	3a20657a 	bcc	80f1a418 <ptable+0x814984>
80700e2c:	00000020 	andeq	r0, r0, r0, lsr #32

80700e30 <.LC10>:
80700e30:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
80700e34:	44454853 	strbmi	r4, [r5], #-2131	; 0xfffff7ad
80700e38:	000a0d21 	andeq	r0, sl, r1, lsr #26
80700e3c:	000001bb 			; <UNDEFINED> instruction: 0x000001bb
80700e40:	0ffb0004 	svceq	0x00fb0004
80700e44:	01048070 	tsteq	r4, r0, ror r0
80700e48:	807011fc 	ldrshthi	r1, [r0], #-28	; 0xffffffe4
80700e4c:	7012b50c 	andsvc	fp, r2, ip, lsl #10
80700e50:	70128580 	andsvc	r8, r2, r0, lsl #11
80700e54:	700ac880 	andvc	ip, sl, r0, lsl #17
80700e58:	0002d080 	andeq	sp, r2, r0, lsl #1
80700e5c:	70112f00 	andsvc	r2, r1, r0, lsl #30
80700e60:	08010280 	stmdaeq	r1, {r7, r9}
80700e64:	8070124d 	rsbshi	r1, r0, sp, asr #4
80700e68:	4f060102 	svcmi	0x00060102
80700e6c:	02807012 	addeq	r7, r0, #18
80700e70:	125b0702 	subsne	r0, fp, #524288	; 0x80000
80700e74:	02028070 	andeq	r8, r2, #112	; 0x70
80700e78:	7012f905 	andsvc	pc, r2, r5, lsl #18
80700e7c:	07040280 	streq	r0, [r4, -r0, lsl #5]
80700e80:	807012a8 	rsbshi	r1, r0, r8, lsr #5
80700e84:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
80700e88:	411f0400 	tstmi	pc, r0, lsl #8
80700e8c:	04000000 	streq	r0, [r0], #-0
80700e90:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
80700e94:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
80700e98:	7012a307 	andsvc	sl, r2, r7, lsl #6
80700e9c:	07080280 	streq	r0, [r8, -r0, lsl #5]
80700ea0:	8070129e 			; <UNDEFINED> instruction: 0x8070129e
80700ea4:	de050802 	cdple	8, 0, cr0, cr5, cr2, {0}
80700ea8:	02807012 	addeq	r7, r0, #18
80700eac:	12e30504 	rscne	r0, r3, #4, 10	; 0x1000000
80700eb0:	04028070 	streq	r8, [r2], #-112	; 0xffffff90
80700eb4:	7012d507 	andsvc	sp, r2, r7, lsl #10
80700eb8:	127a0580 	rsbsne	r0, sl, #128, 10	; 0x20000000
80700ebc:	020c8070 	andeq	r8, ip, #112	; 0x70
80700ec0:	0000ad08 	andeq	sl, r0, r8, lsl #26
80700ec4:	12480600 	subne	r0, r8, #0, 12
80700ec8:	09028070 	stmdbeq	r2, {r4, r5, r6, pc}
80700ecc:	000000ad 	andeq	r0, r0, sp, lsr #1
80700ed0:	22ca0600 	sbccs	r0, sl, #0, 12
80700ed4:	0a028070 	beq	807a109c <ptable+0x9b608>
80700ed8:	00000048 	andeq	r0, r0, r8, asr #32
80700edc:	61700704 	cmnvs	r0, r4, lsl #14
80700ee0:	480b0200 	stmdami	fp, {r9}
80700ee4:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
80700ee8:	7d040800 	stcvc	8, cr0, [r4, #-0]
80700eec:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
80700ef0:	807012ec 	rsbshi	r1, r0, ip, ror #5
80700ef4:	007d0c02 	rsbseq	r0, sp, r2, lsl #24
80700ef8:	0d0a0000 	stceq	0, cr0, [sl, #-0]
80700efc:	01807013 	orreq	r7, r0, r3, lsl r0
80700f00:	700ac80e 	andvc	ip, sl, lr, lsl #16
80700f04:	0000c080 	andeq	ip, r0, r0, lsl #1
80700f08:	0a9c0100 	beq	7ee01310 <__high_exec_veneer+0x7e800f78>
80700f0c:	0b000001 	bleq	80700f18 <.LC10+0xe8>
80700f10:	006d756e 	rsbeq	r7, sp, lr, ror #10
80700f14:	00480e01 	subeq	r0, r8, r1, lsl #28
80700f18:	91020000 	mrsls	r0, (UNDEF: 2)
80700f1c:	00690c4c 	rsbeq	r0, r9, ip, asr #24
80700f20:	00531001 	subseq	r1, r3, r1
80700f24:	91020000 	mrsls	r0, (UNDEF: 2)
80700f28:	593d0d74 	ldmdbpl	sp!, {r2, r4, r5, r6, r8, sl, fp}
80700f2c:	11018070 	tstne	r1, r0, ror r0
80700f30:	00000121 	andeq	r0, r0, r1, lsr #2
80700f34:	0c609102 	stfeqp	f1, [r0], #-8
80700f38:	00667562 	rsbeq	r7, r6, r2, ror #10
80700f3c:	01261201 	teqeq	r6, r1, lsl #4
80700f40:	91020000 	mrsls	r0, (UNDEF: 2)
80700f44:	1a0e0054 	bne	80a8109c <ptable+0x37b608>
80700f48:	1a000001 	bne	80700f54 <.LC10+0x124>
80700f4c:	0f000001 	svceq	0x00000001
80700f50:	00000076 	andeq	r0, r0, r6, ror r0
80700f54:	01020010 	tsteq	r2, r0, lsl r0
80700f58:	70125608 	andsvc	r5, r2, r8, lsl #12
80700f5c:	010a1080 	smlabbeq	sl, r0, r0, r1
80700f60:	1a0e0000 	bne	80a80f68 <ptable+0x37b4d4>
80700f64:	36000001 	strcc	r0, [r0], -r1
80700f68:	0f000001 	svceq	0x00000001
80700f6c:	00000076 	andeq	r0, r0, r6, ror r0
80700f70:	6e0a0009 	cdpvs	0, 0, cr0, cr10, cr9, {0}
80700f74:	01807012 	orreq	r7, r0, r2, lsl r0
80700f78:	700b8819 	andvc	r8, fp, r9, lsl r8
80700f7c:	00003c80 	andeq	r3, r0, r0, lsl #25
80700f80:	689c0100 	ldmvs	ip, {r8}
80700f84:	0b000001 	bleq	80700f90 <.LC10+0x160>
80700f88:	00727473 	rsbseq	r7, r2, r3, ror r4
80700f8c:	01681901 	cmneq	r8, r1, lsl #18
80700f90:	91020000 	mrsls	r0, (UNDEF: 2)
80700f94:	65680b74 	strbvs	r0, [r8, #-2932]!	; 0xfffff48c
80700f98:	19010078 	stmdbne	r1, {r3, r4, r5, r6}
80700f9c:	00000048 	andeq	r0, r0, r8, asr #32
80700fa0:	00709102 	rsbseq	r9, r0, r2, lsl #2
80700fa4:	011a0408 	tsteq	sl, r8, lsl #8
80700fa8:	03110000 	tsteq	r1, #0
80700fac:	01807013 	orreq	r7, r0, r3, lsl r0
80700fb0:	700bc420 	andvc	ip, fp, r0, lsr #8
80700fb4:	0001d480 	andeq	sp, r1, r0, lsl #9
80700fb8:	9c9c0100 	ldflss	f0, [ip], {0}
80700fbc:	0c000001 	stceq	0, cr0, [r0], {1}
80700fc0:	27010061 	strcs	r0, [r1, -r1, rrx]
80700fc4:	0000019c 	muleq	r0, ip, r1
80700fc8:	0c749102 	ldfeqp	f1, [r4], #-8
80700fcc:	2b010062 	blcs	8074115c <ptable+0x3b6c8>
80700fd0:	0000019c 	muleq	r0, ip, r1
80700fd4:	00709102 	rsbseq	r9, r0, r2, lsl #2
80700fd8:	00b30408 	adcseq	r0, r3, r8, lsl #8
80700fdc:	3c120000 	ldccc	0, cr0, [r2], {-0}
80700fe0:	03807012 	orreq	r7, r0, #18
80700fe4:	000048a0 	andeq	r4, r0, r0, lsr #17
80700fe8:	12cb1300 	sbcne	r1, fp, #0, 6
80700fec:	0d028070 	stceq	0, cr8, [r2, #-448]	; 0xfffffe40
80700ff0:	0000019c 	muleq	r0, ip, r1
80700ff4:	13c40305 	bicne	r0, r4, #335544320	; 0x14000000
80700ff8:	01008070 	tsteq	r0, r0, ror r0
80700ffc:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
80701000:	0e030b13 	vmoveq.32	d3[0], r0
80701004:	01110e1b 	tsteq	r1, fp, lsl lr
80701008:	17100612 			; <UNDEFINED> instruction: 0x17100612
8070100c:	24020000 	strcs	r0, [r2], #-0
80701010:	3e0b0b00 	vmlacc.f64	d0, d11, d0
80701014:	000e030b 	andeq	r0, lr, fp, lsl #6
80701018:	00160300 	andseq	r0, r6, r0, lsl #6
8070101c:	0b3a0803 	bleq	81583030 <ptable+0xe7d59c>
80701020:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80701024:	24040000 	strcs	r0, [r4], #-0
80701028:	3e0b0b00 	vmlacc.f64	d0, d11, d0
8070102c:	0008030b 	andeq	r0, r8, fp, lsl #6
80701030:	01130500 	tsteq	r3, r0, lsl #10
80701034:	0b0b0e03 	bleq	809c4848 <ptable+0x2bedb4>
80701038:	0b3b0b3a 	bleq	815c3d28 <ptable+0xebe294>
8070103c:	00001301 	andeq	r1, r0, r1, lsl #6
80701040:	03000d06 	movweq	r0, #3334	; 0xd06
80701044:	3b0b3a0e 	blcc	809cf884 <ptable+0x2c9df0>
80701048:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
8070104c:	0700000b 	streq	r0, [r0, -fp]
80701050:	0803000d 	stmdaeq	r3, {r0, r2, r3}
80701054:	0b3b0b3a 	bleq	815c3d44 <ptable+0xebe2b0>
80701058:	0b381349 	bleq	81505d84 <ptable+0xe002f0>
8070105c:	0f080000 	svceq	0x00080000
80701060:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
80701064:	09000013 	stmdbeq	r0, {r0, r1, r4}
80701068:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
8070106c:	0b3b0b3a 	bleq	815c3d5c <ptable+0xebe2c8>
80701070:	00001349 	andeq	r1, r0, r9, asr #6
80701074:	3f012e0a 	svccc	0x00012e0a
80701078:	3a0e0319 	bcc	80a81ce4 <ptable+0x37c250>
8070107c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
80701080:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
80701084:	96184006 	ldrls	r4, [r8], -r6
80701088:	13011942 	movwne	r1, #6466	; 0x1942
8070108c:	050b0000 	streq	r0, [fp, #-0]
80701090:	3a080300 	bcc	80901c98 <ptable+0x1fc204>
80701094:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80701098:	00180213 	andseq	r0, r8, r3, lsl r2
8070109c:	00340c00 	eorseq	r0, r4, r0, lsl #24
807010a0:	0b3a0803 	bleq	815830b4 <ptable+0xe7d620>
807010a4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
807010a8:	00001802 	andeq	r1, r0, r2, lsl #16
807010ac:	0300340d 	movweq	r3, #1037	; 0x40d
807010b0:	3b0b3a0e 	blcc	809cf8f0 <ptable+0x2c9e5c>
807010b4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
807010b8:	0e000018 	mcreq	0, 0, r0, cr0, cr8, {0}
807010bc:	13490101 	movtne	r0, #37121	; 0x9101
807010c0:	00001301 	andeq	r1, r0, r1, lsl #6
807010c4:	4900210f 	stmdbmi	r0, {r0, r1, r2, r3, r8, sp}
807010c8:	000b2f13 	andeq	r2, fp, r3, lsl pc
807010cc:	00261000 	eoreq	r1, r6, r0
807010d0:	00001349 	andeq	r1, r0, r9, asr #6
807010d4:	3f012e11 	svccc	0x00012e11
807010d8:	3a0e0319 	bcc	80a81d44 <ptable+0x37c2b0>
807010dc:	110b3b0b 	tstne	fp, fp, lsl #22
807010e0:	40061201 	andmi	r1, r6, r1, lsl #4
807010e4:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
807010e8:	00001301 	andeq	r1, r0, r1, lsl #6
807010ec:	03003412 	movweq	r3, #1042	; 0x412
807010f0:	3b0b3a0e 	blcc	809cf930 <ptable+0x2c9e9c>
807010f4:	3f13490b 	svccc	0x0013490b
807010f8:	00193c19 	andseq	r3, r9, r9, lsl ip
807010fc:	00341300 	eorseq	r1, r4, r0, lsl #6
80701100:	0b3a0e03 	bleq	81584914 <ptable+0xe7ee80>
80701104:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80701108:	1802193f 	stmdane	r2, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
8070110c:	1c000000 	stcne	0, cr0, [r0], {-0}
80701110:	02000000 	andeq	r0, r0, #0
80701114:	700e3c00 	andvc	r3, lr, r0, lsl #24
80701118:	00000480 	andeq	r0, r0, r0, lsl #9
8070111c:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
80701120:	d080700a 	addle	r7, r0, sl
80701124:	00000002 	andeq	r0, r0, r2
80701128:	00000000 	andeq	r0, r0, r0
8070112c:	c9000000 	stmdbgt	r0, {}	; <UNPREDICTABLE>
80701130:	02000000 	andeq	r0, r0, #0
80701134:	00007c00 	andeq	r7, r0, r0, lsl #24
80701138:	fb010200 	blx	80741942 <ptable+0x3beae>
8070113c:	01000d0e 	tsteq	r0, lr, lsl #26
80701140:	00010101 	andeq	r0, r1, r1, lsl #2
80701144:	00010000 	andeq	r0, r1, r0
80701148:	656b0100 	strbvs	r0, [fp, #-256]!	; 0xffffff00
8070114c:	692f6e72 	stmdbvs	pc!, {r1, r4, r5, r6, r9, sl, fp, sp, lr}	; <UNPREDICTABLE>
80701150:	0074696e 	rsbseq	r6, r4, lr, ror #18
80701154:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
80701158:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
8070115c:	2f2e0065 	svccs	0x002e0065
80701160:	76697264 	strbtvc	r7, [r9], -r4, ror #4
80701164:	2f737265 	svccs	0x00737265
80701168:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
8070116c:	692f2e00 	stmdbvs	pc!, {r9, sl, fp, sp}	; <UNPREDICTABLE>
80701170:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
80701174:	732f6564 	teqvc	pc, #100, 10	; 0x19000000
80701178:	00007379 	andeq	r7, r0, r9, ror r3
8070117c:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
80701180:	6578655f 	ldrbvs	r6, [r8, #-1375]!	; 0xfffffaa1
80701184:	00632e63 	rsbeq	r2, r3, r3, ror #28
80701188:	6d000001 	stcvs	0, cr0, [r0, #-4]
8070118c:	726f6d65 	rsbvc	r6, pc, #6464	; 0x1940
80701190:	00682e79 	rsbeq	r2, r8, r9, ror lr
80701194:	64000002 	strvs	r0, [r0], #-2
80701198:	7a2d6274 	bvc	81259b70 <ptable+0xb540dc>
8070119c:	37716e79 			; <UNDEFINED> instruction: 0x37716e79
807011a0:	2e303030 	mrccs	0, 1, r3, cr0, cr0, {1}
807011a4:	00030068 	andeq	r0, r3, r8, rrx
807011a8:	70797400 	rsbsvc	r7, r9, r0, lsl #8
807011ac:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
807011b0:	00000400 	andeq	r0, r0, r0, lsl #8
807011b4:	02050000 	andeq	r0, r5, #0
807011b8:	80700ac8 	rsbshi	r0, r0, r8, asr #21
807011bc:	84010e03 	strhi	r0, [r1], #-3587	; 0xfffff1fd
807011c0:	0200f3f3 	andeq	pc, r0, #-872415229	; 0xcc000003
807011c4:	00670304 	rsbeq	r0, r7, r4, lsl #6
807011c8:	08030402 	stmdaeq	r3, {r1, sl}
807011cc:	0402008f 	streq	r0, [r2], #-143	; 0xffffff71
807011d0:	06660601 	strbteq	r0, [r6], -r1, lsl #12
807011d4:	9f696769 	svcls	0x00696769
807011d8:	69674b4b 	stmdbvs	r7!, {r0, r1, r3, r6, r8, r9, fp, lr}^
807011dc:	f4673067 	vld4.16	{d19-d22}, [r7 :128], r7
807011e0:	67f4bb67 	ldrbvs	fp, [r4, r7, ror #22]!
807011e4:	f39ff4bb 	vsri.64	d15, d27, #33
807011e8:	f4f3bbf4 			; <UNDEFINED> instruction: 0xf4f3bbf4
807011ec:	2ff4f34d 	svccs	0x00f4f34d
807011f0:	02003030 	andeq	r3, r0, #48	; 0x30
807011f4:	02680104 	rsbeq	r0, r8, #4, 2
807011f8:	01010002 	tsteq	r1, r2
807011fc:	20554e47 	subscs	r4, r5, r7, asr #28
80701200:	20313143 	eorscs	r3, r1, r3, asr #2
80701204:	2e322e35 	mrccs	14, 1, r2, cr2, cr5, {1}
80701208:	6d2d2030 	stcvs	0, cr2, [sp, #-192]!	; 0xffffff40
8070120c:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
80701210:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
80701214:	612d3776 	teqvs	sp, r6, ror r7
80701218:	6c6d2d20 	stclvs	13, cr2, [sp], #-128	; 0xffffff80
8070121c:	6c747469 	cfldrdvs	mvd7, [r4], #-420	; 0xfffffe5c
80701220:	6e652d65 	cdpvs	13, 6, cr2, cr5, cr5, {3}
80701224:	6e616964 	cdpvs	9, 6, cr6, cr1, cr4, {3}
80701228:	67672d20 	strbvs	r2, [r7, -r0, lsr #26]!
8070122c:	2d206264 	sfmcs	f6, 4, [r0, #-400]!	; 0xfffffe70
80701230:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 807010a0 <.LC10+0x270>
80701234:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
80701238:	006e6974 	rsbeq	r6, lr, r4, ror r9
8070123c:	6f63706d 	svcvs	0x0063706d
80701240:	625f6572 	subsvs	r6, pc, #478150656	; 0x1c800000
80701244:	00657361 	rsbeq	r7, r5, r1, ror #6
80701248:	7478656e 	ldrbtvc	r6, [r8], #-1390	; 0xfffffa92
8070124c:	736e7500 	cmnvc	lr, #0, 10
80701250:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
80701254:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
80701258:	73007261 	movwvc	r7, #609	; 0x261
8070125c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
80701260:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
80701264:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
80701268:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
8070126c:	75700074 	ldrbvc	r0, [r0, #-116]!	; 0xffffff8c
80701270:	74735f74 	ldrbtvc	r5, [r3], #-3956	; 0xfffff08c
80701274:	65685f72 	strbvs	r5, [r8, #-3954]!	; 0xfffff08e
80701278:	61700078 	cmnvs	r0, r8, ror r0
8070127c:	625f6567 	subsvs	r6, pc, #432013312	; 0x19c00000
80701280:	6b636f6c 	blvs	81fdd038 <ptable+0x18d75a4>
80701284:	73552f00 	cmpvc	r5, #0, 30
80701288:	2f737265 	svccs	0x00737265
8070128c:	2f657579 	svccs	0x00657579
80701290:	6b736544 	blvs	823da7a8 <ptable+0x1cd4d14>
80701294:	2f706f74 	svccs	0x00706f74
80701298:	764d4941 	strbvc	r4, [sp], -r1, asr #18
8070129c:	6f6c0036 	svcvs	0x006c0036
807012a0:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
807012a4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
807012a8:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
807012ac:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
807012b0:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
807012b4:	72656b00 	rsbvc	r6, r5, #0, 22
807012b8:	6e692f6e 	cdpvs	15, 6, cr2, cr9, cr14, {3}
807012bc:	682f7469 	stmdavs	pc!, {r0, r3, r5, r6, sl, ip, sp, lr}	; <UNPREDICTABLE>
807012c0:	5f686769 	svcpl	0x00686769
807012c4:	63657865 	cmnvs	r5, #6619136	; 0x650000
807012c8:	6600632e 	strvs	r6, [r0], -lr, lsr #6
807012cc:	5f656572 	svcpl	0x00656572
807012d0:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
807012d4:	7a697300 	bvc	8215dedc <ptable+0x1a58448>
807012d8:	70797465 	rsbsvc	r7, r9, r5, ror #8
807012dc:	6f6c0065 	svcvs	0x006c0065
807012e0:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
807012e4:	20676e6f 	rsbcs	r6, r7, pc, ror #28
807012e8:	00746e69 	rsbseq	r6, r4, r9, ror #28
807012ec:	65676170 	strbvs	r6, [r7, #-368]!	; 0xfffffe90
807012f0:	6f6c625f 	svcvs	0x006c625f
807012f4:	745f6b63 	ldrbvc	r6, [pc], #-2915	; 807012fc <.LC10+0x4cc>
807012f8:	6f687300 	svcvs	0x00687300
807012fc:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
80701300:	6800746e 	stmdavs	r0, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
80701304:	5f686769 	svcpl	0x00686769
80701308:	63657865 	cmnvs	r5, #6619136	; 0x650000
8070130c:	74757000 	ldrbtvc	r7, [r5], #-0
80701310:	00786568 	rsbseq	r6, r8, r8, ror #10
80701314:	3a434347 	bcc	817d2038 <ptable+0x10cc5a4>
80701318:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
8070131c:	35202955 	strcc	r2, [r0, #-2389]!	; 0xfffff6ab
80701320:	302e322e 	eorcc	r3, lr, lr, lsr #4
80701324:	00000000 	andeq	r0, r0, r0
80701328:	0000000c 	andeq	r0, r0, ip
8070132c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80701330:	7c020001 	stcvc	0, cr0, [r2], {1}
80701334:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80701338:	0000001c 	andeq	r0, r0, ip, lsl r0
8070133c:	80701328 	rsbshi	r1, r0, r8, lsr #6
80701340:	80700ac8 	rsbshi	r0, r0, r8, asr #21
80701344:	000000c0 	andeq	r0, r0, r0, asr #1
80701348:	8b080e42 	blhi	80904c58 <ptable+0x1ff1c4>
8070134c:	42018e02 	andmi	r8, r1, #2, 28
80701350:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80701354:	080d0c5a 	stmdaeq	sp, {r1, r3, r4, r6, sl, fp}
80701358:	0000001c 	andeq	r0, r0, ip, lsl r0
8070135c:	80701328 	rsbshi	r1, r0, r8, lsr #6
80701360:	80700b88 	rsbshi	r0, r0, r8, lsl #23
80701364:	0000003c 	andeq	r0, r0, ip, lsr r0
80701368:	8b080e42 	blhi	80904c78 <ptable+0x1ff1e4>
8070136c:	42018e02 	andmi	r8, r1, #2, 28
80701370:	58040b0c 	stmdapl	r4, {r2, r3, r8, r9, fp}
80701374:	00080d0c 	andeq	r0, r8, ip, lsl #26
80701378:	00000018 	andeq	r0, r0, r8, lsl r0
8070137c:	80701328 	rsbshi	r1, r0, r8, lsr #6
80701380:	80700bc4 	rsbshi	r0, r0, r4, asr #23
80701384:	000001d4 	ldrdeq	r0, [r0], -r4
80701388:	8b080e42 	blhi	80904c98 <ptable+0x1ff204>
8070138c:	42018e02 	andmi	r8, r1, #2, 28
80701390:	00040b0c 	andeq	r0, r4, ip, lsl #22
80701394:	00002e41 	andeq	r2, r0, r1, asr #28
80701398:	61656100 	cmnvs	r5, r0, lsl #2
8070139c:	01006962 	tsteq	r0, r2, ror #18
807013a0:	00000024 	andeq	r0, r0, r4, lsr #32
807013a4:	412d3705 	teqmi	sp, r5, lsl #14
807013a8:	070a0600 	streq	r0, [sl, -r0, lsl #12]
807013ac:	09010841 	stmdbeq	r1, {r0, r6, fp}
807013b0:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
807013b4:	17011501 	strne	r1, [r1, -r1, lsl #10]
807013b8:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
807013bc:	1e011a01 	vmlane.f32	s2, s2, s2
807013c0:	00012206 	andeq	r2, r1, r6, lsl #4

807013c4 <free_list>:
807013c4:	00000000 	andeq	r0, r0, r0

807013c8 <kalloc_align>:
807013c8:	e92d4800 	push	{fp, lr}
807013cc:	e28db004 	add	fp, sp, #4
807013d0:	e24dd010 	sub	sp, sp, #16
807013d4:	e50b0010 	str	r0, [fp, #-16]
807013d8:	e51b3010 	ldr	r3, [fp, #-16]
807013dc:	e3530c02 	cmp	r3, #512	; 0x200
807013e0:	1a000023 	bne	80701474 <kalloc_align+0xac>
807013e4:	e3013c04 	movw	r3, #7172	; 0x1c04
807013e8:	e3483070 	movt	r3, #32880	; 0x8070
807013ec:	e5933000 	ldr	r3, [r3]
807013f0:	e3530000 	cmp	r3, #0
807013f4:	0a000005 	beq	80701410 <kalloc_align+0x48>
807013f8:	e3013c08 	movw	r3, #7176	; 0x1c08
807013fc:	e3483070 	movt	r3, #32880	; 0x8070
80701400:	e5933000 	ldr	r3, [r3]
80701404:	e5933004 	ldr	r3, [r3, #4]
80701408:	e3530000 	cmp	r3, #0
8070140c:	1a000005 	bne	80701428 <kalloc_align+0x60>
80701410:	e3a00001 	mov	r0, #1
80701414:	eb0000ed 	bl	807017d0 <alloc_pages>
80701418:	e1a02000 	mov	r2, r0
8070141c:	e3013c04 	movw	r3, #7172	; 0x1c04
80701420:	e3483070 	movt	r3, #32880	; 0x8070
80701424:	e5832000 	str	r2, [r3]
80701428:	e3013c04 	movw	r3, #7172	; 0x1c04
8070142c:	e3483070 	movt	r3, #32880	; 0x8070
80701430:	e5932000 	ldr	r2, [r3]
80701434:	e3013c04 	movw	r3, #7172	; 0x1c04
80701438:	e3483070 	movt	r3, #32880	; 0x8070
8070143c:	e5933000 	ldr	r3, [r3]
80701440:	e5933004 	ldr	r3, [r3, #4]
80701444:	e2433c02 	sub	r3, r3, #512	; 0x200
80701448:	e5823004 	str	r3, [r2, #4]
8070144c:	e3013c04 	movw	r3, #7172	; 0x1c04
80701450:	e3483070 	movt	r3, #32880	; 0x8070
80701454:	e5933000 	ldr	r3, [r3]
80701458:	e5932008 	ldr	r2, [r3, #8]
8070145c:	e3013c04 	movw	r3, #7172	; 0x1c04
80701460:	e3483070 	movt	r3, #32880	; 0x8070
80701464:	e5933000 	ldr	r3, [r3]
80701468:	e5933004 	ldr	r3, [r3, #4]
8070146c:	e0823003 	add	r3, r2, r3
80701470:	ea000055 	b	807015cc <kalloc_align+0x204>
80701474:	e51b3010 	ldr	r3, [fp, #-16]
80701478:	e3530b01 	cmp	r3, #1024	; 0x400
8070147c:	1a000023 	bne	80701510 <kalloc_align+0x148>
80701480:	e3013c08 	movw	r3, #7176	; 0x1c08
80701484:	e3483070 	movt	r3, #32880	; 0x8070
80701488:	e5933000 	ldr	r3, [r3]
8070148c:	e3530000 	cmp	r3, #0
80701490:	0a000005 	beq	807014ac <kalloc_align+0xe4>
80701494:	e3013c08 	movw	r3, #7176	; 0x1c08
80701498:	e3483070 	movt	r3, #32880	; 0x8070
8070149c:	e5933000 	ldr	r3, [r3]
807014a0:	e5933004 	ldr	r3, [r3, #4]
807014a4:	e3530000 	cmp	r3, #0
807014a8:	1a000005 	bne	807014c4 <kalloc_align+0xfc>
807014ac:	e3a00001 	mov	r0, #1
807014b0:	eb0000c6 	bl	807017d0 <alloc_pages>
807014b4:	e1a02000 	mov	r2, r0
807014b8:	e3013c08 	movw	r3, #7176	; 0x1c08
807014bc:	e3483070 	movt	r3, #32880	; 0x8070
807014c0:	e5832000 	str	r2, [r3]
807014c4:	e3013c08 	movw	r3, #7176	; 0x1c08
807014c8:	e3483070 	movt	r3, #32880	; 0x8070
807014cc:	e5932000 	ldr	r2, [r3]
807014d0:	e3013c08 	movw	r3, #7176	; 0x1c08
807014d4:	e3483070 	movt	r3, #32880	; 0x8070
807014d8:	e5933000 	ldr	r3, [r3]
807014dc:	e5933004 	ldr	r3, [r3, #4]
807014e0:	e2433b01 	sub	r3, r3, #1024	; 0x400
807014e4:	e5823004 	str	r3, [r2, #4]
807014e8:	e3013c08 	movw	r3, #7176	; 0x1c08
807014ec:	e3483070 	movt	r3, #32880	; 0x8070
807014f0:	e5933000 	ldr	r3, [r3]
807014f4:	e5932008 	ldr	r2, [r3, #8]
807014f8:	e3013c08 	movw	r3, #7176	; 0x1c08
807014fc:	e3483070 	movt	r3, #32880	; 0x8070
80701500:	e5933000 	ldr	r3, [r3]
80701504:	e5933004 	ldr	r3, [r3, #4]
80701508:	e0823003 	add	r3, r2, r3
8070150c:	ea00002e 	b	807015cc <kalloc_align+0x204>
80701510:	e51b3010 	ldr	r3, [fp, #-16]
80701514:	e3530901 	cmp	r3, #16384	; 0x4000
80701518:	1a00002a 	bne	807015c8 <kalloc_align+0x200>
8070151c:	e3a00007 	mov	r0, #7
80701520:	eb0000aa 	bl	807017d0 <alloc_pages>
80701524:	e50b000c 	str	r0, [fp, #-12]
80701528:	e51b300c 	ldr	r3, [fp, #-12]
8070152c:	e5933008 	ldr	r3, [r3, #8]
80701530:	e50b3008 	str	r3, [fp, #-8]
80701534:	ea000002 	b	80701544 <kalloc_align+0x17c>
80701538:	e51b3008 	ldr	r3, [fp, #-8]
8070153c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80701540:	e50b3008 	str	r3, [fp, #-8]
80701544:	e51b3008 	ldr	r3, [fp, #-8]
80701548:	e7ed3053 	ubfx	r3, r3, #0, #14
8070154c:	e3530000 	cmp	r3, #0
80701550:	1afffff8 	bne	80701538 <kalloc_align+0x170>
80701554:	e51b300c 	ldr	r3, [fp, #-12]
80701558:	e5932008 	ldr	r2, [r3, #8]
8070155c:	e51b3008 	ldr	r3, [fp, #-8]
80701560:	e1520003 	cmp	r2, r3
80701564:	0a000008 	beq	8070158c <kalloc_align+0x1c4>
80701568:	e51b300c 	ldr	r3, [fp, #-12]
8070156c:	e5930008 	ldr	r0, [r3, #8]
80701570:	e51b300c 	ldr	r3, [fp, #-12]
80701574:	e5933008 	ldr	r3, [r3, #8]
80701578:	e51b2008 	ldr	r2, [fp, #-8]
8070157c:	e0633002 	rsb	r3, r3, r2
80701580:	e1a03623 	lsr	r3, r3, #12
80701584:	e1a01003 	mov	r1, r3
80701588:	eb00011f 	bl	80701a0c <free_pages>
8070158c:	e51b3008 	ldr	r3, [fp, #-8]
80701590:	e2830901 	add	r0, r3, #16384	; 0x4000
80701594:	e51b300c 	ldr	r3, [fp, #-12]
80701598:	e5932008 	ldr	r2, [r3, #8]
8070159c:	e51b300c 	ldr	r3, [fp, #-12]
807015a0:	e5933004 	ldr	r3, [r3, #4]
807015a4:	e0822003 	add	r2, r2, r3
807015a8:	e51b3008 	ldr	r3, [fp, #-8]
807015ac:	e0633002 	rsb	r3, r3, r2
807015b0:	e2433901 	sub	r3, r3, #16384	; 0x4000
807015b4:	e1a03623 	lsr	r3, r3, #12
807015b8:	e1a01003 	mov	r1, r3
807015bc:	eb000112 	bl	80701a0c <free_pages>
807015c0:	e51b3008 	ldr	r3, [fp, #-8]
807015c4:	ea000000 	b	807015cc <kalloc_align+0x204>
807015c8:	e3a03000 	mov	r3, #0
807015cc:	e1a00003 	mov	r0, r3
807015d0:	e24bd004 	sub	sp, fp, #4
807015d4:	e8bd8800 	pop	{fp, pc}

807015d8 <alloc_align>:
807015d8:	e92d4800 	push	{fp, lr}
807015dc:	e28db004 	add	fp, sp, #4
807015e0:	e24dd008 	sub	sp, sp, #8
807015e4:	e50b0008 	str	r0, [fp, #-8]
807015e8:	e51b0008 	ldr	r0, [fp, #-8]
807015ec:	ebffff75 	bl	807013c8 <kalloc_align>
807015f0:	e1a03000 	mov	r3, r0
807015f4:	e283320e 	add	r3, r3, #-536870912	; 0xe0000000
807015f8:	e1a00003 	mov	r0, r3
807015fc:	e24bd004 	sub	sp, fp, #4
80701600:	e8bd8800 	pop	{fp, pc}

80701604 <page_map>:
80701604:	e92d4800 	push	{fp, lr}
80701608:	e28db004 	add	fp, sp, #4
8070160c:	e24dd018 	sub	sp, sp, #24
80701610:	e50b0010 	str	r0, [fp, #-16]
80701614:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
80701618:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
8070161c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701620:	e50b3008 	str	r3, [fp, #-8]
80701624:	e51b3010 	ldr	r3, [fp, #-16]
80701628:	e1a03a23 	lsr	r3, r3, #20
8070162c:	e1a03103 	lsl	r3, r3, #2
80701630:	e51b2008 	ldr	r2, [fp, #-8]
80701634:	e0823003 	add	r3, r2, r3
80701638:	e50b3008 	str	r3, [fp, #-8]
8070163c:	e51b3008 	ldr	r3, [fp, #-8]
80701640:	e5933000 	ldr	r3, [r3]
80701644:	e2033003 	and	r3, r3, #3
80701648:	e3530001 	cmp	r3, #1
8070164c:	0a000006 	beq	8070166c <page_map+0x68>
80701650:	e3a00b01 	mov	r0, #1024	; 0x400
80701654:	ebffffdf 	bl	807015d8 <alloc_align>
80701658:	e1a03000 	mov	r3, r0
8070165c:	e2833e1e 	add	r3, r3, #480	; 0x1e0
80701660:	e2833001 	add	r3, r3, #1
80701664:	e51b2008 	ldr	r2, [fp, #-8]
80701668:	e5823000 	str	r3, [r2]
8070166c:	e51b3008 	ldr	r3, [fp, #-8]
80701670:	e5933000 	ldr	r3, [r3]
80701674:	e2433d1e 	sub	r3, r3, #1920	; 0x780
80701678:	e2433112 	sub	r3, r3, #-2147483644	; 0x80000004
8070167c:	e50b300c 	str	r3, [fp, #-12]
80701680:	e51b3010 	ldr	r3, [fp, #-16]
80701684:	e1a03623 	lsr	r3, r3, #12
80701688:	e6ef3073 	uxtb	r3, r3
8070168c:	e1a03103 	lsl	r3, r3, #2
80701690:	e51b200c 	ldr	r2, [fp, #-12]
80701694:	e0823003 	add	r3, r2, r3
80701698:	e50b300c 	str	r3, [fp, #-12]
8070169c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807016a0:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
807016a4:	e3c3300f 	bic	r3, r3, #15
807016a8:	e2833e81 	add	r3, r3, #2064	; 0x810
807016ac:	e2833002 	add	r3, r3, #2
807016b0:	e51b200c 	ldr	r2, [fp, #-12]
807016b4:	e5823000 	str	r3, [r2]
807016b8:	e1a00000 	nop			; (mov r0, r0)
807016bc:	e24bd004 	sub	sp, fp, #4
807016c0:	e8bd8800 	pop	{fp, pc}

807016c4 <memory_init>:
807016c4:	e92d4800 	push	{fp, lr}
807016c8:	e28db004 	add	fp, sp, #4
807016cc:	e24dd008 	sub	sp, sp, #8
807016d0:	e3010c0c 	movw	r0, #7180	; 0x1c0c
807016d4:	e3480070 	movt	r0, #32880	; 0x8070
807016d8:	eb000368 	bl	80702480 <uart_spin_puts>
807016dc:	e3a03601 	mov	r3, #1048576	; 0x100000
807016e0:	e50b3008 	str	r3, [fp, #-8]
807016e4:	ea000010 	b	8070172c <memory_init+0x68>
807016e8:	e3a03000 	mov	r3, #0
807016ec:	e3483020 	movt	r3, #32800	; 0x8020
807016f0:	e50b300c 	str	r3, [fp, #-12]
807016f4:	e51b3008 	ldr	r3, [fp, #-8]
807016f8:	e1a03a23 	lsr	r3, r3, #20
807016fc:	e1a03103 	lsl	r3, r3, #2
80701700:	e51b200c 	ldr	r2, [fp, #-12]
80701704:	e0823003 	add	r3, r2, r3
80701708:	e50b300c 	str	r3, [fp, #-12]
8070170c:	e51b300c 	ldr	r3, [fp, #-12]
80701710:	e5933000 	ldr	r3, [r3]
80701714:	e3c32003 	bic	r2, r3, #3
80701718:	e51b300c 	ldr	r3, [fp, #-12]
8070171c:	e5832000 	str	r2, [r3]
80701720:	e51b3008 	ldr	r3, [fp, #-8]
80701724:	e2833601 	add	r3, r3, #1048576	; 0x100000
80701728:	e50b3008 	str	r3, [fp, #-8]
8070172c:	e51b3008 	ldr	r3, [fp, #-8]
80701730:	e3530000 	cmp	r3, #0
80701734:	aaffffeb 	bge	807016e8 <memory_init+0x24>
80701738:	e3010c24 	movw	r0, #7204	; 0x1c24
8070173c:	e3480070 	movt	r0, #32880	; 0x8070
80701740:	eb00034e 	bl	80702480 <uart_spin_puts>
80701744:	e3a01000 	mov	r1, #0
80701748:	ee081f17 	mcr	15, 0, r1, cr8, cr7, {0}
8070174c:	ee081f16 	mcr	15, 0, r1, cr8, cr6, {0}
80701750:	ee081f15 	mcr	15, 0, r1, cr8, cr5, {0}
80701754:	ee071fd5 	mcr	15, 0, r1, cr7, cr5, {6}
80701758:	ee071f15 	mcr	15, 0, r1, cr7, cr5, {0}
8070175c:	ee07bf5e 	mcr	15, 0, fp, cr7, cr14, {2}
80701760:	e3010c44 	movw	r0, #7236	; 0x1c44
80701764:	e3480070 	movt	r0, #32880	; 0x8070
80701768:	eb000344 	bl	80702480 <uart_spin_puts>
8070176c:	e30133c4 	movw	r3, #5060	; 0x13c4
80701770:	e3483070 	movt	r3, #32880	; 0x8070
80701774:	e3a024e1 	mov	r2, #-520093696	; 0xe1000000
80701778:	e5832000 	str	r2, [r3]
8070177c:	e30133c4 	movw	r3, #5060	; 0x13c4
80701780:	e3483070 	movt	r3, #32880	; 0x8070
80701784:	e5933000 	ldr	r3, [r3]
80701788:	e3a0241d 	mov	r2, #486539264	; 0x1d000000
8070178c:	e5832004 	str	r2, [r3, #4]
80701790:	e30133c4 	movw	r3, #5060	; 0x13c4
80701794:	e3483070 	movt	r3, #32880	; 0x8070
80701798:	e5933000 	ldr	r3, [r3]
8070179c:	e3a02000 	mov	r2, #0
807017a0:	e5832000 	str	r2, [r3]
807017a4:	e30133c4 	movw	r3, #5060	; 0x13c4
807017a8:	e3483070 	movt	r3, #32880	; 0x8070
807017ac:	e5933000 	ldr	r3, [r3]
807017b0:	e3a02401 	mov	r2, #16777216	; 0x1000000
807017b4:	e5832008 	str	r2, [r3, #8]
807017b8:	e3010c58 	movw	r0, #7256	; 0x1c58
807017bc:	e3480070 	movt	r0, #32880	; 0x8070
807017c0:	eb00032e 	bl	80702480 <uart_spin_puts>
807017c4:	e1a00000 	nop			; (mov r0, r0)
807017c8:	e24bd004 	sub	sp, fp, #4
807017cc:	e8bd8800 	pop	{fp, pc}

807017d0 <alloc_pages>:
807017d0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
807017d4:	e28db000 	add	fp, sp, #0
807017d8:	e24dd01c 	sub	sp, sp, #28
807017dc:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
807017e0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
807017e4:	e3530000 	cmp	r3, #0
807017e8:	1a000001 	bne	807017f4 <alloc_pages+0x24>
807017ec:	e3a03000 	mov	r3, #0
807017f0:	ea00005d 	b	8070196c <alloc_pages+0x19c>
807017f4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
807017f8:	e1a03603 	lsl	r3, r3, #12
807017fc:	e50b3010 	str	r3, [fp, #-16]
80701800:	e30133c4 	movw	r3, #5060	; 0x13c4
80701804:	e3483070 	movt	r3, #32880	; 0x8070
80701808:	e5933000 	ldr	r3, [r3]
8070180c:	e50b3008 	str	r3, [fp, #-8]
80701810:	e30133c4 	movw	r3, #5060	; 0x13c4
80701814:	e3483070 	movt	r3, #32880	; 0x8070
80701818:	e5933000 	ldr	r3, [r3]
8070181c:	e50b300c 	str	r3, [fp, #-12]
80701820:	ea00004d 	b	8070195c <alloc_pages+0x18c>
80701824:	e51b3008 	ldr	r3, [fp, #-8]
80701828:	e5932004 	ldr	r2, [r3, #4]
8070182c:	e51b3010 	ldr	r3, [fp, #-16]
80701830:	e1520003 	cmp	r2, r3
80701834:	3a000042 	bcc	80701944 <alloc_pages+0x174>
80701838:	e51b3008 	ldr	r3, [fp, #-8]
8070183c:	e5932004 	ldr	r2, [r3, #4]
80701840:	e51b3010 	ldr	r3, [fp, #-16]
80701844:	e1520003 	cmp	r2, r3
80701848:	1a000011 	bne	80701894 <alloc_pages+0xc4>
8070184c:	e30133c4 	movw	r3, #5060	; 0x13c4
80701850:	e3483070 	movt	r3, #32880	; 0x8070
80701854:	e5933000 	ldr	r3, [r3]
80701858:	e51b2008 	ldr	r2, [fp, #-8]
8070185c:	e1520003 	cmp	r2, r3
80701860:	1a000005 	bne	8070187c <alloc_pages+0xac>
80701864:	e51b3008 	ldr	r3, [fp, #-8]
80701868:	e5932000 	ldr	r2, [r3]
8070186c:	e30133c4 	movw	r3, #5060	; 0x13c4
80701870:	e3483070 	movt	r3, #32880	; 0x8070
80701874:	e5832000 	str	r2, [r3]
80701878:	ea000003 	b	8070188c <alloc_pages+0xbc>
8070187c:	e51b3008 	ldr	r3, [fp, #-8]
80701880:	e5932000 	ldr	r2, [r3]
80701884:	e51b300c 	ldr	r3, [fp, #-12]
80701888:	e5832000 	str	r2, [r3]
8070188c:	e51b3008 	ldr	r3, [fp, #-8]
80701890:	ea000035 	b	8070196c <alloc_pages+0x19c>
80701894:	e51b3008 	ldr	r3, [fp, #-8]
80701898:	e5932004 	ldr	r2, [r3, #4]
8070189c:	e51b3010 	ldr	r3, [fp, #-16]
807018a0:	e1520003 	cmp	r2, r3
807018a4:	9a000027 	bls	80701948 <alloc_pages+0x178>
807018a8:	e51b3010 	ldr	r3, [fp, #-16]
807018ac:	e1a03103 	lsl	r3, r3, #2
807018b0:	e1a02103 	lsl	r2, r3, #2
807018b4:	e0633002 	rsb	r3, r3, r2
807018b8:	e51b2008 	ldr	r2, [fp, #-8]
807018bc:	e0823003 	add	r3, r2, r3
807018c0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
807018c4:	e51b3008 	ldr	r3, [fp, #-8]
807018c8:	e5932000 	ldr	r2, [r3]
807018cc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807018d0:	e5832000 	str	r2, [r3]
807018d4:	e51b3008 	ldr	r3, [fp, #-8]
807018d8:	e5932004 	ldr	r2, [r3, #4]
807018dc:	e51b3010 	ldr	r3, [fp, #-16]
807018e0:	e0632002 	rsb	r2, r3, r2
807018e4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807018e8:	e5832004 	str	r2, [r3, #4]
807018ec:	e51b3008 	ldr	r3, [fp, #-8]
807018f0:	e5932008 	ldr	r2, [r3, #8]
807018f4:	e51b3010 	ldr	r3, [fp, #-16]
807018f8:	e0822003 	add	r2, r2, r3
807018fc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701900:	e5832008 	str	r2, [r3, #8]
80701904:	e30133c4 	movw	r3, #5060	; 0x13c4
80701908:	e3483070 	movt	r3, #32880	; 0x8070
8070190c:	e5932000 	ldr	r2, [r3]
80701910:	e51b3008 	ldr	r3, [fp, #-8]
80701914:	e1520003 	cmp	r2, r3
80701918:	1a000004 	bne	80701930 <alloc_pages+0x160>
8070191c:	e30133c4 	movw	r3, #5060	; 0x13c4
80701920:	e3483070 	movt	r3, #32880	; 0x8070
80701924:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80701928:	e5832000 	str	r2, [r3]
8070192c:	ea000002 	b	8070193c <alloc_pages+0x16c>
80701930:	e51b300c 	ldr	r3, [fp, #-12]
80701934:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80701938:	e5832000 	str	r2, [r3]
8070193c:	e51b3008 	ldr	r3, [fp, #-8]
80701940:	ea000009 	b	8070196c <alloc_pages+0x19c>
80701944:	e1a00000 	nop			; (mov r0, r0)
80701948:	e51b3008 	ldr	r3, [fp, #-8]
8070194c:	e50b300c 	str	r3, [fp, #-12]
80701950:	e51b3008 	ldr	r3, [fp, #-8]
80701954:	e5933000 	ldr	r3, [r3]
80701958:	e50b3008 	str	r3, [fp, #-8]
8070195c:	e51b3008 	ldr	r3, [fp, #-8]
80701960:	e3530000 	cmp	r3, #0
80701964:	1affffae 	bne	80701824 <alloc_pages+0x54>
80701968:	e3a03000 	mov	r3, #0
8070196c:	e1a00003 	mov	r0, r3
80701970:	e24bd000 	sub	sp, fp, #0
80701974:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80701978:	e12fff1e 	bx	lr

8070197c <merge_block>:
8070197c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80701980:	e28db000 	add	fp, sp, #0
80701984:	e24dd00c 	sub	sp, sp, #12
80701988:	e50b0008 	str	r0, [fp, #-8]
8070198c:	e50b100c 	str	r1, [fp, #-12]
80701990:	e51b3008 	ldr	r3, [fp, #-8]
80701994:	e3530000 	cmp	r3, #0
80701998:	0a000017 	beq	807019fc <merge_block+0x80>
8070199c:	e51b300c 	ldr	r3, [fp, #-12]
807019a0:	e3530000 	cmp	r3, #0
807019a4:	0a000014 	beq	807019fc <merge_block+0x80>
807019a8:	e51b3008 	ldr	r3, [fp, #-8]
807019ac:	e5932008 	ldr	r2, [r3, #8]
807019b0:	e51b3008 	ldr	r3, [fp, #-8]
807019b4:	e5933004 	ldr	r3, [r3, #4]
807019b8:	e0822003 	add	r2, r2, r3
807019bc:	e51b300c 	ldr	r3, [fp, #-12]
807019c0:	e5933008 	ldr	r3, [r3, #8]
807019c4:	e1520003 	cmp	r2, r3
807019c8:	1a00000c 	bne	80701a00 <merge_block+0x84>
807019cc:	e51b3008 	ldr	r3, [fp, #-8]
807019d0:	e5932004 	ldr	r2, [r3, #4]
807019d4:	e51b300c 	ldr	r3, [fp, #-12]
807019d8:	e5933004 	ldr	r3, [r3, #4]
807019dc:	e0822003 	add	r2, r2, r3
807019e0:	e51b3008 	ldr	r3, [fp, #-8]
807019e4:	e5832004 	str	r2, [r3, #4]
807019e8:	e51b300c 	ldr	r3, [fp, #-12]
807019ec:	e5932000 	ldr	r2, [r3]
807019f0:	e51b3008 	ldr	r3, [fp, #-8]
807019f4:	e5832000 	str	r2, [r3]
807019f8:	ea000000 	b	80701a00 <merge_block+0x84>
807019fc:	e1a00000 	nop			; (mov r0, r0)
80701a00:	e24bd000 	sub	sp, fp, #0
80701a04:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80701a08:	e12fff1e 	bx	lr

80701a0c <free_pages>:
80701a0c:	e92d4800 	push	{fp, lr}
80701a10:	e28db004 	add	fp, sp, #4
80701a14:	e24dd018 	sub	sp, sp, #24
80701a18:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80701a1c:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
80701a20:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80701a24:	e3530000 	cmp	r3, #0
80701a28:	0a000072 	beq	80701bf8 <free_pages+0x1ec>
80701a2c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80701a30:	e1a03603 	lsl	r3, r3, #12
80701a34:	e50b300c 	str	r3, [fp, #-12]
80701a38:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a3c:	e3483070 	movt	r3, #32880	; 0x8070
80701a40:	e5933000 	ldr	r3, [r3]
80701a44:	e5932008 	ldr	r2, [r3, #8]
80701a48:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701a4c:	e1520003 	cmp	r2, r3
80701a50:	9a000025 	bls	80701aec <free_pages+0xe0>
80701a54:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a58:	e3483070 	movt	r3, #32880	; 0x8070
80701a5c:	e5933000 	ldr	r3, [r3]
80701a60:	e1a02003 	mov	r2, r3
80701a64:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a68:	e3483070 	movt	r3, #32880	; 0x8070
80701a6c:	e5933000 	ldr	r3, [r3]
80701a70:	e5933008 	ldr	r3, [r3, #8]
80701a74:	e0632002 	rsb	r2, r3, r2
80701a78:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701a7c:	e0823003 	add	r3, r2, r3
80701a80:	e50b3010 	str	r3, [fp, #-16]
80701a84:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a88:	e3483070 	movt	r3, #32880	; 0x8070
80701a8c:	e5932000 	ldr	r2, [r3]
80701a90:	e51b3010 	ldr	r3, [fp, #-16]
80701a94:	e5832000 	str	r2, [r3]
80701a98:	e51b3010 	ldr	r3, [fp, #-16]
80701a9c:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80701aa0:	e5832008 	str	r2, [r3, #8]
80701aa4:	e51b3010 	ldr	r3, [fp, #-16]
80701aa8:	e51b200c 	ldr	r2, [fp, #-12]
80701aac:	e5832004 	str	r2, [r3, #4]
80701ab0:	e30133c4 	movw	r3, #5060	; 0x13c4
80701ab4:	e3483070 	movt	r3, #32880	; 0x8070
80701ab8:	e51b2010 	ldr	r2, [fp, #-16]
80701abc:	e5832000 	str	r2, [r3]
80701ac0:	e30133c4 	movw	r3, #5060	; 0x13c4
80701ac4:	e3483070 	movt	r3, #32880	; 0x8070
80701ac8:	e5932000 	ldr	r2, [r3]
80701acc:	e30133c4 	movw	r3, #5060	; 0x13c4
80701ad0:	e3483070 	movt	r3, #32880	; 0x8070
80701ad4:	e5933000 	ldr	r3, [r3]
80701ad8:	e5933000 	ldr	r3, [r3]
80701adc:	e1a01003 	mov	r1, r3
80701ae0:	e1a00002 	mov	r0, r2
80701ae4:	ebffffa4 	bl	8070197c <merge_block>
80701ae8:	ea000043 	b	80701bfc <free_pages+0x1f0>
80701aec:	e30133c4 	movw	r3, #5060	; 0x13c4
80701af0:	e3483070 	movt	r3, #32880	; 0x8070
80701af4:	e5933000 	ldr	r3, [r3]
80701af8:	e50b3008 	str	r3, [fp, #-8]
80701afc:	ea000039 	b	80701be8 <free_pages+0x1dc>
80701b00:	e51b3008 	ldr	r3, [fp, #-8]
80701b04:	e5932008 	ldr	r2, [r3, #8]
80701b08:	e51b3008 	ldr	r3, [fp, #-8]
80701b0c:	e5933004 	ldr	r3, [r3, #4]
80701b10:	e0822003 	add	r2, r2, r3
80701b14:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701b18:	e1520003 	cmp	r2, r3
80701b1c:	8a00002d 	bhi	80701bd8 <free_pages+0x1cc>
80701b20:	e51b3008 	ldr	r3, [fp, #-8]
80701b24:	e5932008 	ldr	r2, [r3, #8]
80701b28:	e51b3008 	ldr	r3, [fp, #-8]
80701b2c:	e5933004 	ldr	r3, [r3, #4]
80701b30:	e0822003 	add	r2, r2, r3
80701b34:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701b38:	e1520003 	cmp	r2, r3
80701b3c:	1a00000b 	bne	80701b70 <free_pages+0x164>
80701b40:	e51b3008 	ldr	r3, [fp, #-8]
80701b44:	e5932004 	ldr	r2, [r3, #4]
80701b48:	e51b300c 	ldr	r3, [fp, #-12]
80701b4c:	e0822003 	add	r2, r2, r3
80701b50:	e51b3008 	ldr	r3, [fp, #-8]
80701b54:	e5832004 	str	r2, [r3, #4]
80701b58:	e51b3008 	ldr	r3, [fp, #-8]
80701b5c:	e5933000 	ldr	r3, [r3]
80701b60:	e1a01003 	mov	r1, r3
80701b64:	e51b0008 	ldr	r0, [fp, #-8]
80701b68:	ebffff83 	bl	8070197c <merge_block>
80701b6c:	ea00001a 	b	80701bdc <free_pages+0x1d0>
80701b70:	e51b2008 	ldr	r2, [fp, #-8]
80701b74:	e51b3008 	ldr	r3, [fp, #-8]
80701b78:	e5933008 	ldr	r3, [r3, #8]
80701b7c:	e0632002 	rsb	r2, r3, r2
80701b80:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701b84:	e0823003 	add	r3, r2, r3
80701b88:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80701b8c:	e51b3008 	ldr	r3, [fp, #-8]
80701b90:	e5932000 	ldr	r2, [r3]
80701b94:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701b98:	e5832000 	str	r2, [r3]
80701b9c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701ba0:	e51b200c 	ldr	r2, [fp, #-12]
80701ba4:	e5832004 	str	r2, [r3, #4]
80701ba8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701bac:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80701bb0:	e5832008 	str	r2, [r3, #8]
80701bb4:	e51b3008 	ldr	r3, [fp, #-8]
80701bb8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80701bbc:	e5832000 	str	r2, [r3]
80701bc0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701bc4:	e5933000 	ldr	r3, [r3]
80701bc8:	e1a01003 	mov	r1, r3
80701bcc:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80701bd0:	ebffff69 	bl	8070197c <merge_block>
80701bd4:	ea000000 	b	80701bdc <free_pages+0x1d0>
80701bd8:	e1a00000 	nop			; (mov r0, r0)
80701bdc:	e51b3008 	ldr	r3, [fp, #-8]
80701be0:	e5933000 	ldr	r3, [r3]
80701be4:	e50b3008 	str	r3, [fp, #-8]
80701be8:	e51b3008 	ldr	r3, [fp, #-8]
80701bec:	e3530000 	cmp	r3, #0
80701bf0:	1affffc2 	bne	80701b00 <free_pages+0xf4>
80701bf4:	ea000000 	b	80701bfc <free_pages+0x1f0>
80701bf8:	e1a00000 	nop			; (mov r0, r0)
80701bfc:	e24bd004 	sub	sp, fp, #4
80701c00:	e8bd8800 	pop	{fp, pc}

80701c04 <page_bound_0x200>:
80701c04:	00000000 	andeq	r0, r0, r0

80701c08 <page_bound_0x400>:
80701c08:	00000000 	andeq	r0, r0, r0

80701c0c <.LC0>:
80701c0c:	726d654d 	rsbvc	r6, sp, #322961408	; 0x13400000
80701c10:	6920796f 	stmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, fp, ip, sp, lr}
80701c14:	2074696e 	rsbscs	r6, r4, lr, ror #18
80701c18:	69676562 	stmdbvs	r7!, {r1, r5, r6, r8, sl, sp, lr}^
80701c1c:	0a0d206e 	beq	80a49ddc <ptable+0x344348>
80701c20:	00000000 	andeq	r0, r0, r0

80701c24 <.LC1>:
80701c24:	61656c43 	cmnvs	r5, r3, asr #24
80701c28:	6f6c2072 	svcvs	0x006c2072
80701c2c:	20726577 	rsbscs	r6, r2, r7, ror r5
80701c30:	6f6d656d 	svcvs	0x006d656d
80701c34:	61207972 	teqvs	r0, r2, ror r9
80701c38:	65726464 	ldrbvs	r6, [r2, #-1124]!	; 0xfffffb9c
80701c3c:	4f207373 	svcmi	0x00207373
80701c40:	000a0d4b 	andeq	r0, sl, fp, asr #26

80701c44 <.LC2>:
80701c44:	61766e49 	cmnvs	r6, r9, asr #28
80701c48:	6164696c 	cmnvs	r4, ip, ror #18
80701c4c:	20646574 	rsbcs	r6, r4, r4, ror r5
80701c50:	2e424c54 	mcrcs	12, 2, r4, cr2, cr4, {2}
80701c54:	00000a0d 	andeq	r0, r0, sp, lsl #20

80701c58 <.LC3>:
80701c58:	726d654d 	rsbvc	r6, sp, #322961408	; 0x13400000
80701c5c:	6920796f 	stmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, fp, ip, sp, lr}
80701c60:	2074696e 	rsbscs	r6, r4, lr, ror #18
80701c64:	696e6966 	stmdbvs	lr!, {r1, r2, r5, r6, r8, fp, sp, lr}^
80701c68:	64656873 	strbtvs	r6, [r5], #-2163	; 0xfffff78d
80701c6c:	0a0d0a0d 	beq	80a444a8 <ptable+0x33ea14>
80701c70:	00000000 	andeq	r0, r0, r0
80701c74:	00000342 	andeq	r0, r0, r2, asr #6
80701c78:	1fba0004 	svcne	0x00ba0004
80701c7c:	01048070 	tsteq	r4, r0, ror r0
80701c80:	807011fc 	ldrshthi	r1, [r0], #-28	; 0xffffffe4
80701c84:	70234a0c 	eorvc	r4, r3, ip, lsl #20
80701c88:	70128580 	andsvc	r8, r2, r0, lsl #11
80701c8c:	7013c880 	andsvc	ip, r3, r0, lsl #17
80701c90:	00083c80 	andeq	r3, r8, r0, lsl #25
80701c94:	70214a00 	eorvc	r4, r1, r0, lsl #20
80701c98:	08010280 	stmdaeq	r1, {r7, r9}
80701c9c:	8070124d 	rsbshi	r1, r0, sp, asr #4
80701ca0:	4f060102 	svcmi	0x00060102
80701ca4:	02807012 	addeq	r7, r0, #18
80701ca8:	125b0702 	subsne	r0, fp, #524288	; 0x80000
80701cac:	02028070 	andeq	r8, r2, #112	; 0x70
80701cb0:	7012f905 	andsvc	pc, r2, r5, lsl #18
80701cb4:	07040280 	streq	r0, [r4, -r0, lsl #5]
80701cb8:	807012a8 	rsbshi	r1, r0, r8, lsr #5
80701cbc:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
80701cc0:	411f0400 	tstmi	pc, r0, lsl #8
80701cc4:	04000000 	streq	r0, [r0], #-0
80701cc8:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
80701ccc:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
80701cd0:	7012a307 	andsvc	sl, r2, r7, lsl #6
80701cd4:	07080280 	streq	r0, [r8, -r0, lsl #5]
80701cd8:	8070129e 			; <UNDEFINED> instruction: 0x8070129e
80701cdc:	de050802 	cdple	8, 0, cr0, cr5, cr2, {0}
80701ce0:	02807012 	addeq	r7, r0, #18
80701ce4:	12e30504 	rscne	r0, r3, #4, 10	; 0x1000000
80701ce8:	04028070 	streq	r8, [r2], #-112	; 0xffffff90
80701cec:	7012d507 	andsvc	sp, r2, r7, lsl #10
80701cf0:	127a0580 	rsbsne	r0, sl, #128, 10	; 0x20000000
80701cf4:	020c8070 	andeq	r8, ip, #112	; 0x70
80701cf8:	0000ad08 	andeq	sl, r0, r8, lsl #26
80701cfc:	12480600 	subne	r0, r8, #0, 12
80701d00:	09028070 	stmdbeq	r2, {r4, r5, r6, pc}
80701d04:	000000ad 	andeq	r0, r0, sp, lsr #1
80701d08:	22ca0600 	sbccs	r0, sl, #0, 12
80701d0c:	0a028070 	beq	807a1ed4 <ptable+0x9c440>
80701d10:	00000048 	andeq	r0, r0, r8, asr #32
80701d14:	61700704 	cmnvs	r0, r4, lsl #14
80701d18:	480b0200 	stmdami	fp, {r9}
80701d1c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
80701d20:	7d040800 	stcvc	8, cr0, [r4, #-0]
80701d24:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
80701d28:	807012ec 	rsbshi	r1, r0, ip, ror #5
80701d2c:	007d0c02 	rsbseq	r0, sp, r2, lsl #24
80701d30:	220a0000 	andcs	r0, sl, #0
80701d34:	01807023 	orreq	r7, r0, r3, lsr #32
80701d38:	00004816 	andeq	r4, r0, r6, lsl r8
80701d3c:	7013c800 	andsvc	ip, r3, r0, lsl #16
80701d40:	00021080 	andeq	r1, r2, r0, lsl #1
80701d44:	0b9c0100 	bleq	7ee0214c <__high_exec_veneer+0x7e801db4>
80701d48:	0b000001 	bleq	80701d54 <.LC3+0xfc>
80701d4c:	80702341 	rsbshi	r2, r0, r1, asr #6
80701d50:	00481601 	subeq	r1, r8, r1, lsl #12
80701d54:	91020000 	mrsls	r0, (UNDEF: 2)
80701d58:	151c0c6c 	ldrne	r0, [ip, #-3180]	; 0xfffff394
80701d5c:	00ac8070 	adceq	r8, ip, r0, ror r0
80701d60:	7f0d0000 	svcvc	0x000d0000
80701d64:	01807012 	orreq	r7, r0, r2, lsl r0
80701d68:	00010b2a 	andeq	r0, r1, sl, lsr #22
80701d6c:	70910200 	addsvc	r0, r1, r0, lsl #4
80701d70:	0061700e 	rsbeq	r7, r1, lr
80701d74:	00482b01 	subeq	r2, r8, r1, lsl #22
80701d78:	91020000 	mrsls	r0, (UNDEF: 2)
80701d7c:	08000074 	stmdaeq	r0, {r2, r4, r5, r6}
80701d80:	0000b304 	andeq	fp, r0, r4, lsl #6
80701d84:	23230a00 	teqcs	r3, #0, 20
80701d88:	35018070 	strcc	r8, [r1, #-112]	; 0xffffff90
80701d8c:	00000048 	andeq	r0, r0, r8, asr #32
80701d90:	807015d8 	ldrsbthi	r1, [r0], #-88	; 0xffffffa8
80701d94:	0000002c 	andeq	r0, r0, ip, lsr #32
80701d98:	01399c01 	teqeq	r9, r1, lsl #24
80701d9c:	410b0000 	mrsmi	r0, (UNDEF: 11)
80701da0:	01807023 	orreq	r7, r0, r3, lsr #32
80701da4:	00004835 	andeq	r4, r0, r5, lsr r8
80701da8:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80701dac:	232f0f00 	teqcs	pc, #0, 30
80701db0:	3b018070 	blcc	80761f78 <ptable+0x5c4e4>
80701db4:	80701604 	rsbshi	r1, r0, r4, lsl #12
80701db8:	000000c0 	andeq	r0, r0, r0, asr #1
80701dbc:	01939c01 	orrseq	r9, r3, r1, lsl #24
80701dc0:	76100000 	ldrvc	r0, [r0], -r0
80701dc4:	3b010061 	blcc	80741f50 <ptable+0x3c4bc>
80701dc8:	00000048 	andeq	r0, r0, r8, asr #32
80701dcc:	106c9102 	rsbne	r9, ip, r2, lsl #2
80701dd0:	01006170 	tsteq	r0, r0, ror r1
80701dd4:	0000483b 	andeq	r4, r0, fp, lsr r8
80701dd8:	68910200 	ldmvs	r1, {r9}
80701ddc:	7022f20b 	eorvc	pc, r2, fp, lsl #4
80701de0:	483b0180 	ldmdami	fp!, {r7, r8}
80701de4:	02000000 	andeq	r0, r0, #0
80701de8:	cf0d6491 	svcgt	0x000d6491
80701dec:	01807022 	orreq	r7, r0, r2, lsr #32
80701df0:	0001933d 	andeq	r9, r1, sp, lsr r3
80701df4:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80701df8:	7023380d 	eorvc	r3, r3, sp, lsl #16
80701dfc:	93430180 	movtls	r0, #12672	; 0x3180
80701e00:	02000001 	andeq	r0, r0, #1
80701e04:	08007091 	stmdaeq	r0, {r0, r4, r7, ip, sp, lr}
80701e08:	00004804 	andeq	r4, r0, r4, lsl #16
80701e0c:	22ac1100 	adccs	r1, ip, #0, 2
80701e10:	47018070 	smlsdxmi	r1, r0, r0, r8
80701e14:	807016c4 	rsbshi	r1, r0, r4, asr #13
80701e18:	0000010c 	andeq	r0, r0, ip, lsl #2
80701e1c:	01de9c01 	bicseq	r9, lr, r1, lsl #24
80701e20:	dc0c0000 	stcle	0, cr0, [ip], {-0}
80701e24:	5c807016 	stcpl	0, cr7, [r0], {22}
80701e28:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
80701e2c:	01006176 	tsteq	r0, r6, ror r1
80701e30:	0000484d 	andeq	r4, r0, sp, asr #16
80701e34:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80701e38:	7016e80c 	andsvc	lr, r6, ip, lsl #16
80701e3c:	00003880 	andeq	r3, r0, r0, lsl #17
80701e40:	22cf0d00 	sbccs	r0, pc, #0, 26
80701e44:	4f018070 	svcmi	0x00018070
80701e48:	00000193 	muleq	r0, r3, r1
80701e4c:	00709102 	rsbseq	r9, r0, r2, lsl #2
80701e50:	0a120000 	beq	80b81e58 <ptable+0x47c3c4>
80701e54:	01807023 	orreq	r7, r0, r3, lsr #32
80701e58:	00010b6e 	andeq	r0, r1, lr, ror #22
80701e5c:	7017d000 	andsvc	sp, r7, r0
80701e60:	0001ac80 	andeq	sl, r1, r0, lsl #25
80701e64:	509c0100 	addspl	r0, ip, r0, lsl #2
80701e68:	0b000002 	bleq	80701e78 <.LC3+0x220>
80701e6c:	80703e18 	rsbshi	r3, r0, r8, lsl lr
80701e70:	00486e01 	subeq	r6, r8, r1, lsl #28
80701e74:	91020000 	mrsls	r0, (UNDEF: 2)
80701e78:	22c30d64 	sbccs	r0, r3, #100, 26	; 0x1900
80701e7c:	71018070 	tstvc	r1, r0, ror r0
80701e80:	00000048 	andeq	r0, r0, r8, asr #32
80701e84:	0c6c9102 	stfeqp	f1, [ip], #-8
80701e88:	80701800 	rsbshi	r1, r0, r0, lsl #16
80701e8c:	00000168 	andeq	r0, r0, r8, ror #2
80701e90:	70127f0d 	andsvc	r7, r2, sp, lsl #30
80701e94:	0b730180 	bleq	823c249c <ptable+0x1cbca08>
80701e98:	02000001 	andeq	r0, r0, #1
80701e9c:	700e7491 	mulvc	lr, r1, r4
80701ea0:	01006572 	tsteq	r0, r2, ror r5
80701ea4:	00010b73 	andeq	r0, r1, r3, ror fp
80701ea8:	70910200 	addsvc	r0, r1, r0, lsl #4
80701eac:	7018a80c 	andsvc	sl, r8, ip, lsl #16
80701eb0:	00009c80 	andeq	r9, r0, r0, lsl #25
80701eb4:	00720e00 	rsbseq	r0, r2, r0, lsl #28
80701eb8:	010b8001 	tsteq	fp, r1
80701ebc:	91020000 	mrsls	r0, (UNDEF: 2)
80701ec0:	00000068 	andeq	r0, r0, r8, rrx
80701ec4:	70231613 	eorvc	r1, r3, r3, lsl r6
80701ec8:	7c8f0180 	stfvcs	f0, [pc], {128}	; 0x80
80701ecc:	90807019 	addls	r7, r0, r9, lsl r0
80701ed0:	01000000 	mrseq	r0, (UNDEF: 0)
80701ed4:	00027e9c 	muleq	r2, ip, lr
80701ed8:	006c1000 	rsbeq	r1, ip, r0
80701edc:	010b8f01 	tsteq	fp, r1, lsl #30
80701ee0:	91020000 	mrsls	r0, (UNDEF: 2)
80701ee4:	00721074 	rsbseq	r1, r2, r4, ror r0
80701ee8:	010b8f01 	tsteq	fp, r1, lsl #30
80701eec:	91020000 	mrsls	r0, (UNDEF: 2)
80701ef0:	b80f0070 	stmdalt	pc, {r4, r5, r6}	; <UNPREDICTABLE>
80701ef4:	01807022 	orreq	r7, r0, r2, lsr #32
80701ef8:	701a0c98 	mulsvc	sl, r8, ip
80701efc:	0001f880 	andeq	pc, r1, r0, lsl #17
80701f00:	079c0100 	ldreq	r0, [ip, r0, lsl #2]
80701f04:	10000003 	andne	r0, r0, r3
80701f08:	01006170 	tsteq	r0, r0, ror r1
80701f0c:	00004898 	muleq	r0, r8, r8
80701f10:	64910200 	ldrvs	r0, [r1], #512	; 0x200
80701f14:	703e180b 	eorsvc	r1, lr, fp, lsl #16
80701f18:	48980180 	ldmmi	r8, {r7, r8}
80701f1c:	02000000 	andeq	r0, r0, #0
80701f20:	e80d6091 	stmda	sp, {r0, r4, r7, sp, lr}
80701f24:	01807022 	orreq	r7, r0, r2, lsr #32
80701f28:	0000489b 	muleq	r0, fp, r8
80701f2c:	70910200 	addsvc	r0, r1, r0, lsl #4
80701f30:	701a5414 	andsvc	r5, sl, r4, lsl r4
80701f34:	00009880 	andeq	r9, r0, r0, lsl #17
80701f38:	0002d600 	andeq	sp, r2, r0, lsl #12
80701f3c:	00720e00 	rsbseq	r0, r2, r0, lsl #28
80701f40:	010b9e01 	tsteq	fp, r1, lsl #28
80701f44:	91020000 	mrsls	r0, (UNDEF: 2)
80701f48:	ec0c006c 	stc	0, cr0, [ip], {108}	; 0x6c
80701f4c:	0c80701a 	stceq	0, cr7, [r0], {26}
80701f50:	0d000001 	stceq	0, cr0, [r0, #-4]
80701f54:	8070127f 	rsbshi	r1, r0, pc, ror r2
80701f58:	010ba701 	tsteq	fp, r1, lsl #14
80701f5c:	91020000 	mrsls	r0, (UNDEF: 2)
80701f60:	1b700c74 	blne	82305138 <ptable+0x1bff6a4>
80701f64:	00688070 	rsbeq	r8, r8, r0, ror r0
80701f68:	6d0e0000 	stcvs	0, cr0, [lr, #-0]
80701f6c:	01006469 	tsteq	r0, r9, ror #8
80701f70:	00010bad 	andeq	r0, r1, sp, lsr #23
80701f74:	68910200 	ldmvs	r1, {r9}
80701f78:	15000000 	strne	r0, [r0, #-0]
80701f7c:	8070123c 	rsbshi	r1, r0, ip, lsr r2
80701f80:	0048a003 	subeq	sl, r8, r3
80701f84:	cb160000 	blgt	80c81f8c <ptable+0x57c4f8>
80701f88:	02807012 	addeq	r7, r0, #18
80701f8c:	00010b0d 	andeq	r0, r1, sp, lsl #22
80701f90:	c4030500 	strgt	r0, [r3], #-1280	; 0xfffffb00
80701f94:	16807013 	pkhbtne	r7, r0, r3
80701f98:	807022f9 	ldrshthi	r2, [r0], #-41	; 0xffffffd7
80701f9c:	010b1301 	tsteq	fp, r1, lsl #6
80701fa0:	03050000 	movweq	r0, #20480	; 0x5000
80701fa4:	80701c04 	rsbshi	r1, r0, r4, lsl #24
80701fa8:	7022d716 	eorvc	sp, r2, r6, lsl r7
80701fac:	0b140180 	bleq	80c025b4 <ptable+0x4fcb20>
80701fb0:	05000001 	streq	r0, [r0, #-1]
80701fb4:	701c0803 	andsvc	r0, ip, r3, lsl #16
80701fb8:	11010080 	smlabbne	r1, r0, r0, r0
80701fbc:	130e2501 	movwne	r2, #58625	; 0xe501
80701fc0:	1b0e030b 	blne	80a82bf4 <ptable+0x37d160>
80701fc4:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
80701fc8:	00171006 	andseq	r1, r7, r6
80701fcc:	00240200 	eoreq	r0, r4, r0, lsl #4
80701fd0:	0b3e0b0b 	bleq	81684c04 <ptable+0xf7f170>
80701fd4:	00000e03 	andeq	r0, r0, r3, lsl #28
80701fd8:	03001603 	movweq	r1, #1539	; 0x603
80701fdc:	3b0b3a08 	blcc	809d0804 <ptable+0x2cad70>
80701fe0:	0013490b 	andseq	r4, r3, fp, lsl #18
80701fe4:	00240400 	eoreq	r0, r4, r0, lsl #8
80701fe8:	0b3e0b0b 	bleq	81684c1c <ptable+0xf7f188>
80701fec:	00000803 	andeq	r0, r0, r3, lsl #16
80701ff0:	03011305 	movweq	r1, #4869	; 0x1305
80701ff4:	3a0b0b0e 	bcc	809c4c34 <ptable+0x2bf1a0>
80701ff8:	010b3b0b 	tsteq	fp, fp, lsl #22
80701ffc:	06000013 			; <UNDEFINED> instruction: 0x06000013
80702000:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
80702004:	0b3b0b3a 	bleq	815c4cf4 <ptable+0xebf260>
80702008:	0b381349 	bleq	81506d34 <ptable+0xe012a0>
8070200c:	0d070000 	stceq	0, cr0, [r7, #-0]
80702010:	3a080300 	bcc	80902c18 <ptable+0x1fd184>
80702014:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80702018:	000b3813 	andeq	r3, fp, r3, lsl r8
8070201c:	000f0800 	andeq	r0, pc, r0, lsl #16
80702020:	13490b0b 	movtne	r0, #39691	; 0x9b0b
80702024:	16090000 	strne	r0, [r9], -r0
80702028:	3a0e0300 	bcc	80a82c30 <ptable+0x37d19c>
8070202c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80702030:	0a000013 	beq	80702084 <.LC3+0x42c>
80702034:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
80702038:	0b3a0e03 	bleq	8158584c <ptable+0xe7fdb8>
8070203c:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
80702040:	01111349 	tsteq	r1, r9, asr #6
80702044:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80702048:	01194296 			; <UNDEFINED> instruction: 0x01194296
8070204c:	0b000013 	bleq	807020a0 <.LC3+0x448>
80702050:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
80702054:	0b3b0b3a 	bleq	815c4d44 <ptable+0xebf2b0>
80702058:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
8070205c:	0b0c0000 	bleq	80a02064 <ptable+0x2fc5d0>
80702060:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
80702064:	0d000006 	stceq	0, cr0, [r0, #-24]	; 0xffffffe8
80702068:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
8070206c:	0b3b0b3a 	bleq	815c4d5c <ptable+0xebf2c8>
80702070:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80702074:	340e0000 	strcc	r0, [lr], #-0
80702078:	3a080300 	bcc	80902c80 <ptable+0x1fd1ec>
8070207c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80702080:	00180213 	andseq	r0, r8, r3, lsl r2
80702084:	012e0f00 	teqeq	lr, r0, lsl #30
80702088:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
8070208c:	0b3b0b3a 	bleq	815c4d7c <ptable+0xebf2e8>
80702090:	01111927 	tsteq	r1, r7, lsr #18
80702094:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80702098:	01194296 			; <UNDEFINED> instruction: 0x01194296
8070209c:	10000013 	andne	r0, r0, r3, lsl r0
807020a0:	08030005 	stmdaeq	r3, {r0, r2}
807020a4:	0b3b0b3a 	bleq	815c4d94 <ptable+0xebf300>
807020a8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
807020ac:	2e110000 	cdpcs	0, 1, cr0, cr1, cr0, {0}
807020b0:	03193f01 	tsteq	r9, #1, 30
807020b4:	3b0b3a0e 	blcc	809d08f4 <ptable+0x2cae60>
807020b8:	1201110b 	andne	r1, r1, #-1073741822	; 0xc0000002
807020bc:	96184006 	ldrls	r4, [r8], -r6
807020c0:	13011942 	movwne	r1, #6466	; 0x1942
807020c4:	2e120000 	cdpcs	0, 1, cr0, cr2, cr0, {0}
807020c8:	03193f01 	tsteq	r9, #1, 30
807020cc:	3b0b3a0e 	blcc	809d090c <ptable+0x2cae78>
807020d0:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
807020d4:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
807020d8:	97184006 	ldrls	r4, [r8, -r6]
807020dc:	13011942 	movwne	r1, #6466	; 0x1942
807020e0:	2e130000 	cdpcs	0, 1, cr0, cr3, cr0, {0}
807020e4:	03193f01 	tsteq	r9, #1, 30
807020e8:	3b0b3a0e 	blcc	809d0928 <ptable+0x2cae94>
807020ec:	1119270b 	tstne	r9, fp, lsl #14
807020f0:	40061201 	andmi	r1, r6, r1, lsl #4
807020f4:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
807020f8:	00001301 	andeq	r1, r0, r1, lsl #6
807020fc:	11010b14 	tstne	r1, r4, lsl fp
80702100:	01061201 	tsteq	r6, r1, lsl #4
80702104:	15000013 	strne	r0, [r0, #-19]	; 0xffffffed
80702108:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
8070210c:	0b3b0b3a 	bleq	815c4dfc <ptable+0xebf368>
80702110:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
80702114:	0000193c 	andeq	r1, r0, ip, lsr r9
80702118:	03003416 	movweq	r3, #1046	; 0x416
8070211c:	3b0b3a0e 	blcc	809d095c <ptable+0x2caec8>
80702120:	3f13490b 	svccc	0x0013490b
80702124:	00180219 	andseq	r0, r8, r9, lsl r2
80702128:	001c0000 	andseq	r0, ip, r0
8070212c:	00020000 	andeq	r0, r2, r0
80702130:	80701c74 	rsbshi	r1, r0, r4, ror ip
80702134:	00000004 	andeq	r0, r0, r4
80702138:	13c80000 	bicne	r0, r8, #0
8070213c:	083c8070 	ldmdaeq	ip!, {r4, r5, r6, pc}
	...
80702148:	015e0000 	cmpeq	lr, r0
8070214c:	00020000 	andeq	r0, r2, r0
80702150:	00000077 	andeq	r0, r0, r7, ror r0
80702154:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
80702158:	0101000d 	tsteq	r1, sp
8070215c:	00000101 	andeq	r0, r0, r1, lsl #2
80702160:	00000100 	andeq	r0, r0, r0, lsl #2
80702164:	72656b01 	rsbvc	r6, r5, #1024	; 0x400
80702168:	6d6d2f6e 	stclvs	15, cr2, [sp, #-440]!	; 0xfffffe48
8070216c:	692f2e00 	stmdbvs	pc!, {r9, sl, fp, sp}	; <UNPREDICTABLE>
80702170:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
80702174:	2e006564 	cfsh32cs	mvfx6, mvfx0, #52
80702178:	6972642f 	ldmdbvs	r2!, {r0, r1, r2, r3, r5, sl, sp, lr}^
8070217c:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
80702180:	73696d2f 	cmnvc	r9, #3008	; 0xbc0
80702184:	2f2e0063 	svccs	0x002e0063
80702188:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
8070218c:	2f656475 	svccs	0x00656475
80702190:	00737973 	rsbseq	r7, r3, r3, ror r9
80702194:	6d656d00 	stclvs	13, cr6, [r5, #-0]
80702198:	2e79726f 	cdpcs	2, 7, cr7, cr9, cr15, {3}
8070219c:	00010063 	andeq	r0, r1, r3, rrx
807021a0:	6d656d00 	stclvs	13, cr6, [r5, #-0]
807021a4:	2e79726f 	cdpcs	2, 7, cr7, cr9, cr15, {3}
807021a8:	00020068 	andeq	r0, r2, r8, rrx
807021ac:	62746400 	rsbsvs	r6, r4, #0, 8
807021b0:	6e797a2d 	vaddvs.f32	s15, s18, s27
807021b4:	30303771 	eorscc	r3, r0, r1, ror r7
807021b8:	00682e30 	rsbeq	r2, r8, r0, lsr lr
807021bc:	74000003 	strvc	r0, [r0], #-3
807021c0:	73657079 	cmnvc	r5, #121	; 0x79
807021c4:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
807021c8:	00000000 	andeq	r0, r0, r0
807021cc:	13c80205 	bicne	r0, r8, #1342177280	; 0x50000000
807021d0:	16038070 			; <UNDEFINED> instruction: 0x16038070
807021d4:	00678401 	rsbeq	r8, r7, r1, lsl #8
807021d8:	06010402 	streq	r0, [r1], -r2, lsl #8
807021dc:	bcbb069e 	ldclt	6, cr0, [fp], #632	; 0x278
807021e0:	3f082108 	svccc	0x00082108
807021e4:	04020067 	streq	r0, [r2], #-103	; 0xffffff99
807021e8:	069e0601 	ldreq	r0, [lr], r1, lsl #12
807021ec:	2108bcbb 			; <UNDEFINED> instruction: 0x2108bcbb
807021f0:	68673f08 	stmdavs	r7!, {r3, r8, r9, sl, fp, ip, sp}^
807021f4:	03040200 	movweq	r0, #16896	; 0x4200
807021f8:	02008206 	andeq	r8, r0, #1610612736	; 0x60000000
807021fc:	06660104 	strbteq	r0, [r6], -r4, lsl #2
80702200:	22089f83 	andcs	r9, r8, #524	; 0x20c
80702204:	2f4c9108 	svccs	0x004c9108
80702208:	6a838368 	bvs	7e7e2fb0 <__high_exec_veneer+0x7e1e2c18>
8070220c:	9fbc4bbb 	svcls	0x00bc4bbb
80702210:	d7d79fd8 			; <UNDEFINED> instruction: 0xd7d79fd8
80702214:	00696868 	rsbeq	r6, r9, r8, ror #16
80702218:	68030402 	stmdavs	r3, {r1, sl}
8070221c:	03040200 	movweq	r0, #16896	; 0x4200
80702220:	04020067 	streq	r0, [r2], #-103	; 0xffffff99
80702224:	0200bb03 	andeq	fp, r0, #3072	; 0xc00
80702228:	009a0304 	addseq	r0, sl, r4, lsl #6
8070222c:	06010402 	streq	r0, [r1], -r2, lsl #8
80702230:	696c0666 	stmdbvs	ip!, {r1, r2, r5, r6, r9, sl}^
80702234:	6ad60a03 	bvs	7fc84a48 <__high_exec_veneer+0x7f6846b0>
80702238:	a19f9f83 	orrsge	r9, pc, r3, lsl #31
8070223c:	00836968 	addeq	r6, r3, r8, ror #18
80702240:	06010402 	streq	r0, [r1], -r2, lsl #8
80702244:	684b0666 	stmdavs	fp, {r1, r2, r5, r6, r9, sl}^
80702248:	9fa12108 	svcls	0x00a12108
8070224c:	4c84bcbb 	stcmi	12, cr11, [r4], {187}	; 0xbb
80702250:	bb83d79f 	bllt	7e7f80d4 <__high_exec_veneer+0x7e1f7d3c>
80702254:	68a0bbbb 	stmiavs	r0!, {r0, r1, r3, r4, r5, r7, r8, r9, fp, ip, sp, pc}
80702258:	004a6c03 	subeq	r6, sl, r3, lsl #24
8070225c:	2c020402 	cfstrscs	mvf0, [r2], {2}
80702260:	01040200 	mrseq	r0, R12_usr
80702264:	03069e06 	movweq	r9, #28166	; 0x6e06
80702268:	852f6619 	strhi	r6, [pc, #-1561]!	; 80701c57 <.LC2+0x13>
8070226c:	0402009f 	streq	r0, [r2], #-159	; 0xffffff61
80702270:	06660601 	strbteq	r0, [r6], -r1, lsl #12
80702274:	d7210867 	strle	r0, [r1, -r7, ror #16]!
80702278:	9f69339b 	svcls	0x0069339b
8070227c:	08d76867 	ldmeq	r7, {r0, r1, r2, r5, r6, fp, sp, lr}^
80702280:	67679f75 			; <UNDEFINED> instruction: 0x67679f75
80702284:	313d0883 	teqcc	sp, r3, lsl #17
80702288:	bbf3f39f 	bllt	803ff10c <__high_exec_veneer+0x7fdfed74>
8070228c:	6783d7bc 			; <UNDEFINED> instruction: 0x6783d7bc
80702290:	76036767 	strvc	r6, [r3], -r7, ror #14
80702294:	040200ba 	streq	r0, [r2], #-186	; 0xffffff46
80702298:	02002d02 	andeq	r2, r0, #2, 26	; 0x80
8070229c:	66060104 	strvs	r0, [r6], -r4, lsl #2
807022a0:	82730306 	rsbshi	r0, r3, #402653184	; 0x18000000
807022a4:	022e1b03 	eoreq	r1, lr, #3072	; 0xc00
807022a8:	01010004 	tsteq	r1, r4
807022ac:	6f6d656d 	svcvs	0x006d656d
807022b0:	695f7972 	ldmdbvs	pc, {r1, r4, r5, r6, r8, fp, ip, sp, lr}^	; <UNPREDICTABLE>
807022b4:	0074696e 	rsbseq	r6, r4, lr, ror #18
807022b8:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
807022bc:	6761705f 			; <UNDEFINED> instruction: 0x6761705f
807022c0:	61007365 	tstvs	r0, r5, ror #6
807022c4:	6f6c6c6c 	svcvs	0x006c6c6c
807022c8:	69735f63 	ldmdbvs	r3!, {r0, r1, r5, r6, r8, r9, sl, fp, ip, lr}^
807022cc:	6d00657a 	cfstr32vs	mvfx6, [r0, #-488]	; 0xfffffe18
807022d0:	705f6274 	subsvc	r6, pc, r4, ror r2	; <UNPREDICTABLE>
807022d4:	70006574 	andvc	r6, r0, r4, ror r5
807022d8:	5f656761 	svcpl	0x00656761
807022dc:	6e756f62 	cdpvs	15, 7, cr6, cr5, cr2, {3}
807022e0:	78305f64 	ldmdavc	r0!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}
807022e4:	00303034 	eorseq	r3, r0, r4, lsr r0
807022e8:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
807022ec:	7a69735f 	bvc	8215f070 <ptable+0x1a595dc>
807022f0:	746d0065 	strbtvc	r0, [sp], #-101	; 0xffffff9b
807022f4:	61765f62 	cmnvs	r6, r2, ror #30
807022f8:	67617000 	strbvs	r7, [r1, -r0]!
807022fc:	6f625f65 	svcvs	0x00625f65
80702300:	5f646e75 	svcpl	0x00646e75
80702304:	30327830 	eorscc	r7, r2, r0, lsr r8
80702308:	6c610030 	stclvs	0, cr0, [r1], #-192	; 0xffffff40
8070230c:	5f636f6c 	svcpl	0x00636f6c
80702310:	65676170 	strbvs	r6, [r7, #-368]!	; 0xfffffe90
80702314:	656d0073 	strbvs	r0, [sp, #-115]!	; 0xffffff8d
80702318:	5f656772 	svcpl	0x00656772
8070231c:	636f6c62 	cmnvs	pc, #25088	; 0x6200
80702320:	616b006b 	cmnvs	fp, fp, rrx
80702324:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
80702328:	696c615f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r8, sp, lr}^
8070232c:	70006e67 	andvc	r6, r0, r7, ror #28
80702330:	5f656761 	svcpl	0x00656761
80702334:	0070616d 	rsbseq	r6, r0, sp, ror #2
80702338:	6274326c 	rsbsvs	r3, r4, #108, 4	; 0xc0000006
8070233c:	6574705f 	ldrbvs	r7, [r4, #-95]!	; 0xffffffa1
80702340:	756f6200 	strbvc	r6, [pc, #-512]!	; 80702148 <.LC3+0x4f0>
80702344:	7261646e 	rsbvc	r6, r1, #1845493760	; 0x6e000000
80702348:	656b0079 	strbvs	r0, [fp, #-121]!	; 0xffffff87
8070234c:	6d2f6e72 	stcvs	14, cr6, [pc, #-456]!	; 8070218c <.LC3+0x534>
80702350:	656d2f6d 	strbvs	r2, [sp, #-3949]!	; 0xfffff093
80702354:	79726f6d 	ldmdbvc	r2!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
80702358:	0000632e 	andeq	r6, r0, lr, lsr #6
8070235c:	0000000c 	andeq	r0, r0, ip
80702360:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80702364:	7c020001 	stcvc	0, cr0, [r2], {1}
80702368:	000d0c0e 	andeq	r0, sp, lr, lsl #24
8070236c:	00000020 	andeq	r0, r0, r0, lsr #32
80702370:	8070235c 	rsbshi	r2, r0, ip, asr r3
80702374:	807013c8 	rsbshi	r1, r0, r8, asr #7
80702378:	00000210 	andeq	r0, r0, r0, lsl r2
8070237c:	8b080e42 	blhi	80905c8c <ptable+0x2001f8>
80702380:	42018e02 	andmi	r8, r1, #2, 28
80702384:	03040b0c 	movweq	r0, #19212	; 0x4b0c
80702388:	0d0c0102 	stfeqs	f0, [ip, #-8]
8070238c:	00000008 	andeq	r0, r0, r8
80702390:	0000001c 	andeq	r0, r0, ip, lsl r0
80702394:	8070235c 	rsbshi	r2, r0, ip, asr r3
80702398:	807015d8 	ldrsbthi	r1, [r0], #-88	; 0xffffffa8
8070239c:	0000002c 	andeq	r0, r0, ip, lsr #32
807023a0:	8b080e42 	blhi	80905cb0 <ptable+0x20021c>
807023a4:	42018e02 	andmi	r8, r1, #2, 28
807023a8:	50040b0c 	andpl	r0, r4, ip, lsl #22
807023ac:	00080d0c 	andeq	r0, r8, ip, lsl #26
807023b0:	0000001c 	andeq	r0, r0, ip, lsl r0
807023b4:	8070235c 	rsbshi	r2, r0, ip, asr r3
807023b8:	80701604 	rsbshi	r1, r0, r4, lsl #12
807023bc:	000000c0 	andeq	r0, r0, r0, asr #1
807023c0:	8b080e42 	blhi	80905cd0 <ptable+0x20023c>
807023c4:	42018e02 	andmi	r8, r1, #2, 28
807023c8:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
807023cc:	080d0c5a 	stmdaeq	sp, {r1, r3, r4, r6, sl, fp}
807023d0:	0000001c 	andeq	r0, r0, ip, lsl r0
807023d4:	8070235c 	rsbshi	r2, r0, ip, asr r3
807023d8:	807016c4 	rsbshi	r1, r0, r4, asr #13
807023dc:	0000010c 	andeq	r0, r0, ip, lsl #2
807023e0:	8b080e42 	blhi	80905cf0 <ptable+0x20025c>
807023e4:	42018e02 	andmi	r8, r1, #2, 28
807023e8:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
807023ec:	080d0c80 	stmdaeq	sp, {r7, sl, fp}
807023f0:	0000001c 	andeq	r0, r0, ip, lsl r0
807023f4:	8070235c 	rsbshi	r2, r0, ip, asr r3
807023f8:	807017d0 	ldrsbthi	r1, [r0], #-112	; 0xffffff90
807023fc:	000001ac 	andeq	r0, r0, ip, lsr #3
80702400:	8b040e42 	blhi	80805d10 <ptable+0x10027c>
80702404:	0b0d4201 	bleq	80a52c10 <ptable+0x34d17c>
80702408:	0d0dce02 	stceq	14, cr12, [sp, #-8]
8070240c:	000ecb42 	andeq	ip, lr, r2, asr #22
80702410:	0000001c 	andeq	r0, r0, ip, lsl r0
80702414:	8070235c 	rsbshi	r2, r0, ip, asr r3
80702418:	8070197c 	rsbshi	r1, r0, ip, ror r9
8070241c:	00000090 	muleq	r0, r0, r0
80702420:	8b040e42 	blhi	80805d30 <ptable+0x10029c>
80702424:	0b0d4201 	bleq	80a52c30 <ptable+0x34d19c>
80702428:	0d0d4002 	stceq	0, cr4, [sp, #-8]
8070242c:	000ecb42 	andeq	ip, lr, r2, asr #22
80702430:	0000001c 	andeq	r0, r0, ip, lsl r0
80702434:	8070235c 	rsbshi	r2, r0, ip, asr r3
80702438:	80701a0c 	rsbshi	r1, r0, ip, lsl #20
8070243c:	000001f8 	strdeq	r0, [r0], -r8
80702440:	8b080e42 	blhi	80905d50 <ptable+0x2002bc>
80702444:	42018e02 	andmi	r8, r1, #2, 28
80702448:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
8070244c:	080d0cf6 	stmdaeq	sp, {r1, r2, r4, r5, r6, r7, sl, fp}
80702450:	00002e41 	andeq	r2, r0, r1, asr #28
80702454:	61656100 	cmnvs	r5, r0, lsl #2
80702458:	01006962 	tsteq	r0, r2, ror #18
8070245c:	00000024 	andeq	r0, r0, r4, lsr #32
80702460:	412d3705 	teqmi	sp, r5, lsl #14
80702464:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80702468:	09010841 	stmdbeq	r1, {r0, r6, fp}
8070246c:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
80702470:	17011501 	strne	r1, [r1, -r1, lsl #10]
80702474:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80702478:	1e011a01 	vmlane.f32	s2, s2, s2
8070247c:	00012206 	andeq	r2, r1, r6, lsl #4

80702480 <uart_spin_puts>:
80702480:	e92d4800 	push	{fp, lr}
80702484:	e28db004 	add	fp, sp, #4
80702488:	e24dd008 	sub	sp, sp, #8
8070248c:	e50b0008 	str	r0, [fp, #-8]
80702490:	ea000006 	b	807024b0 <uart_spin_puts+0x30>
80702494:	e51b3008 	ldr	r3, [fp, #-8]
80702498:	e5d33000 	ldrb	r3, [r3]
8070249c:	e1a00003 	mov	r0, r3
807024a0:	eb00075d 	bl	8070421c <uart_spin_putbyte>
807024a4:	e51b3008 	ldr	r3, [fp, #-8]
807024a8:	e2833001 	add	r3, r3, #1
807024ac:	e50b3008 	str	r3, [fp, #-8]
807024b0:	e51b3008 	ldr	r3, [fp, #-8]
807024b4:	e5d33000 	ldrb	r3, [r3]
807024b8:	e3530000 	cmp	r3, #0
807024bc:	1afffff4 	bne	80702494 <uart_spin_puts+0x14>
807024c0:	e1a00000 	nop			; (mov r0, r0)
807024c4:	e24bd004 	sub	sp, fp, #4
807024c8:	e8bd8800 	pop	{fp, pc}
807024cc:	0000009e 	muleq	r0, lr, r0
807024d0:	256e0004 	strbcs	r0, [lr, #-4]!
807024d4:	01048070 	tsteq	r4, r0, ror r0
807024d8:	807011fc 	ldrshthi	r1, [r0], #-28	; 0xffffffe4
807024dc:	7026580c 	eorvc	r5, r6, ip, lsl #16
807024e0:	70128580 	andsvc	r8, r2, r0, lsl #11
807024e4:	70248080 	eorvc	r8, r4, r0, lsl #1
807024e8:	00004c80 	andeq	r4, r0, r0, lsl #25
807024ec:	7025f100 	eorvc	pc, r5, r0, lsl #2
807024f0:	08010280 	stmdaeq	r1, {r7, r9}
807024f4:	8070124d 	rsbshi	r1, r0, sp, asr #4
807024f8:	4f060102 	svcmi	0x00060102
807024fc:	02807012 	addeq	r7, r0, #18
80702500:	125b0702 	subsne	r0, fp, #524288	; 0x80000
80702504:	02028070 	andeq	r8, r2, #112	; 0x70
80702508:	7012f905 	andsvc	pc, r2, r5, lsl #18
8070250c:	07040280 	streq	r0, [r4, -r0, lsl #5]
80702510:	807012a8 	rsbshi	r1, r0, r8, lsr #5
80702514:	69050403 	stmdbvs	r5, {r0, r1, sl}
80702518:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
8070251c:	12a30704 	adcne	r0, r3, #4, 14	; 0x100000
80702520:	08028070 	stmdaeq	r2, {r4, r5, r6, pc}
80702524:	70129e07 	andsvc	r9, r2, r7, lsl #28
80702528:	05080280 	streq	r0, [r8, #-640]	; 0xfffffd80
8070252c:	807012de 	ldrsbthi	r1, [r0], #-46	; 0xffffffd2
80702530:	e3050402 	movw	r0, #21506	; 0x5402
80702534:	04807012 	streq	r7, [r0], #18
80702538:	80702649 	rsbshi	r2, r0, r9, asr #12
8070253c:	24801001 	strcs	r1, [r0], #1
80702540:	004c8070 	subeq	r8, ip, r0, ror r0
80702544:	9c010000 	stcls	0, cr0, [r1], {-0}
80702548:	0000008f 	andeq	r0, r0, pc, lsl #1
8070254c:	72747305 	rsbsvc	r7, r4, #335544320	; 0x14000000
80702550:	8f100100 	svchi	0x00100100
80702554:	02000000 	andeq	r0, r0, #0
80702558:	06007491 			; <UNDEFINED> instruction: 0x06007491
8070255c:	00009c04 	andeq	r9, r0, r4, lsl #24
80702560:	08010200 	stmdaeq	r1, {r9}
80702564:	80701256 	rsbshi	r1, r0, r6, asr r2
80702568:	00009507 	andeq	r9, r0, r7, lsl #10
8070256c:	11010000 	mrsne	r0, (UNDEF: 1)
80702570:	130e2501 	movwne	r2, #58625	; 0xe501
80702574:	1b0e030b 	blne	80a831a8 <ptable+0x37d714>
80702578:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
8070257c:	00171006 	andseq	r1, r7, r6
80702580:	00240200 	eoreq	r0, r4, r0, lsl #4
80702584:	0b3e0b0b 	bleq	816851b8 <ptable+0xf7f724>
80702588:	00000e03 	andeq	r0, r0, r3, lsl #28
8070258c:	0b002403 	bleq	8070b5a0 <ptable+0x5b0c>
80702590:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
80702594:	04000008 	streq	r0, [r0], #-8
80702598:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
8070259c:	0b3a0e03 	bleq	81585db0 <ptable+0xe8031c>
807025a0:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
807025a4:	06120111 			; <UNDEFINED> instruction: 0x06120111
807025a8:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
807025ac:	00130119 	andseq	r0, r3, r9, lsl r1
807025b0:	00050500 	andeq	r0, r5, r0, lsl #10
807025b4:	0b3a0803 	bleq	815845c8 <ptable+0xe7eb34>
807025b8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
807025bc:	00001802 	andeq	r1, r0, r2, lsl #16
807025c0:	0b000f06 	bleq	807061e0 <ptable+0x74c>
807025c4:	0013490b 	andseq	r4, r3, fp, lsl #18
807025c8:	00260700 	eoreq	r0, r6, r0, lsl #14
807025cc:	00001349 	andeq	r1, r0, r9, asr #6
807025d0:	00001c00 	andeq	r1, r0, r0, lsl #24
807025d4:	cc000200 	sfmgt	f0, 4, [r0], {-0}
807025d8:	04807024 	streq	r7, [r0], #36	; 0x24
807025dc:	00000000 	andeq	r0, r0, r0
807025e0:	70248000 	eorvc	r8, r4, r0
807025e4:	00004c80 	andeq	r4, r0, r0, lsl #25
	...
807025f0:	00005400 	andeq	r5, r0, r0, lsl #8
807025f4:	2c000200 	sfmcs	f0, 4, [r0], {-0}
807025f8:	02000000 	andeq	r0, r0, #0
807025fc:	0d0efb01 	vstreq	d15, [lr, #-4]
80702600:	01010100 	mrseq	r0, (UNDEF: 17)
80702604:	00000001 	andeq	r0, r0, r1
80702608:	01000001 	tsteq	r0, r1
8070260c:	76697264 	strbtvc	r7, [r9], -r4, ror #4
80702610:	2f737265 	svccs	0x00737265
80702614:	69726573 	ldmdbvs	r2!, {r0, r1, r4, r5, r6, r8, sl, sp, lr}^
80702618:	00006c61 	andeq	r6, r0, r1, ror #24
8070261c:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
80702620:	0100632e 	tsteq	r0, lr, lsr #6
80702624:	00000000 	andeq	r0, r0, r0
80702628:	24800205 	strcs	r0, [r0], #517	; 0x205
8070262c:	10038070 	andne	r8, r3, r0, ror r0
80702630:	02008301 	andeq	r8, r0, #67108864	; 0x4000000
80702634:	002f0204 	eoreq	r0, pc, r4, lsl #4
80702638:	81020402 	tsthi	r2, r2, lsl #8
8070263c:	01040200 	mrseq	r0, R12_usr
80702640:	84066606 	strhi	r6, [r6], #-1542	; 0xfffff9fa
80702644:	01000602 	tsteq	r0, r2, lsl #12
80702648:	72617501 	rsbvc	r7, r1, #4194304	; 0x400000
8070264c:	70735f74 	rsbsvc	r5, r3, r4, ror pc
80702650:	705f6e69 	subsvc	r6, pc, r9, ror #28
80702654:	00737475 	rsbseq	r7, r3, r5, ror r4
80702658:	76697264 	strbtvc	r7, [r9], -r4, ror #4
8070265c:	2f737265 	svccs	0x00737265
80702660:	69726573 	ldmdbvs	r2!, {r0, r1, r4, r5, r6, r8, sl, sp, lr}^
80702664:	752f6c61 	strvc	r6, [pc, #-3169]!	; 80701a0b <merge_block+0x8f>
80702668:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
8070266c:	00000063 	andeq	r0, r0, r3, rrx
80702670:	0000000c 	andeq	r0, r0, ip
80702674:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80702678:	7c020001 	stcvc	0, cr0, [r2], {1}
8070267c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80702680:	0000001c 	andeq	r0, r0, ip, lsl r0
80702684:	80702670 	rsbshi	r2, r0, r0, ror r6
80702688:	80702480 	rsbshi	r2, r0, r0, lsl #9
8070268c:	0000004c 	andeq	r0, r0, ip, asr #32
80702690:	8b080e42 	blhi	80905fa0 <ptable+0x20050c>
80702694:	42018e02 	andmi	r8, r1, #2, 28
80702698:	60040b0c 	andvs	r0, r4, ip, lsl #22
8070269c:	00080d0c 	andeq	r0, r8, ip, lsl #26
807026a0:	00002e41 	andeq	r2, r0, r1, asr #28
807026a4:	61656100 	cmnvs	r5, r0, lsl #2
807026a8:	01006962 	tsteq	r0, r2, ror #18
807026ac:	00000024 	andeq	r0, r0, r4, lsr #32
807026b0:	412d3705 	teqmi	sp, r5, lsl #14
807026b4:	070a0600 	streq	r0, [sl, -r0, lsl #12]
807026b8:	09010841 	stmdbeq	r1, {r0, r6, fp}
807026bc:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
807026c0:	17011501 	strne	r1, [r1, -r1, lsl #10]
807026c4:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
807026c8:	1e011a01 	vmlane.f32	s2, s2, s2
807026cc:	00012206 	andeq	r2, r1, r6, lsl #4

807026d0 <in32>:
807026d0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
807026d4:	e28db000 	add	fp, sp, #0
807026d8:	e24dd00c 	sub	sp, sp, #12
807026dc:	e50b0008 	str	r0, [fp, #-8]
807026e0:	e51b3008 	ldr	r3, [fp, #-8]
807026e4:	e5933000 	ldr	r3, [r3]
807026e8:	e1a00003 	mov	r0, r3
807026ec:	e24bd000 	sub	sp, fp, #0
807026f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
807026f4:	e12fff1e 	bx	lr

807026f8 <gtc_get_time>:
807026f8:	e92d4830 	push	{r4, r5, fp, lr}
807026fc:	e28db00c 	add	fp, sp, #12
80702700:	e24dd018 	sub	sp, sp, #24
80702704:	e3a00f81 	mov	r0, #516	; 0x204
80702708:	e34f08f0 	movt	r0, #63728	; 0xf8f0
8070270c:	ebffffef 	bl	807026d0 <in32>
80702710:	e50b0010 	str	r0, [fp, #-16]
80702714:	e3a00c02 	mov	r0, #512	; 0x200
80702718:	e34f08f0 	movt	r0, #63728	; 0xf8f0
8070271c:	ebffffeb 	bl	807026d0 <in32>
80702720:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80702724:	e3a00f81 	mov	r0, #516	; 0x204
80702728:	e34f08f0 	movt	r0, #63728	; 0xf8f0
8070272c:	ebffffe7 	bl	807026d0 <in32>
80702730:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80702734:	e51b2010 	ldr	r2, [fp, #-16]
80702738:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
8070273c:	e1520003 	cmp	r2, r3
80702740:	1affffef 	bne	80702704 <gtc_get_time+0xc>
80702744:	e51b3010 	ldr	r3, [fp, #-16]
80702748:	e1a02003 	mov	r2, r3
8070274c:	e3a03000 	mov	r3, #0
80702750:	e1a05002 	mov	r5, r2
80702754:	e3a04000 	mov	r4, #0
80702758:	e14b42f4 	strd	r4, [fp, #-36]	; 0xffffffdc
8070275c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80702760:	e1a02003 	mov	r2, r3
80702764:	e3a03000 	mov	r3, #0
80702768:	e14b02d4 	ldrd	r0, [fp, #-36]	; 0xffffffdc
8070276c:	e1822000 	orr	r2, r2, r0
80702770:	e1833001 	orr	r3, r3, r1
80702774:	e14b22f4 	strd	r2, [fp, #-36]	; 0xffffffdc
80702778:	e14b22d4 	ldrd	r2, [fp, #-36]	; 0xffffffdc
8070277c:	e1a00002 	mov	r0, r2
80702780:	e1a01003 	mov	r1, r3
80702784:	e24bd00c 	sub	sp, fp, #12
80702788:	e8bd8830 	pop	{r4, r5, fp, pc}

8070278c <sleep>:
8070278c:	e92d4800 	push	{fp, lr}
80702790:	e28db004 	add	fp, sp, #4
80702794:	e24dd018 	sub	sp, sp, #24
80702798:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
8070279c:	ebffffd5 	bl	807026f8 <gtc_get_time>
807027a0:	e14b00fc 	strd	r0, [fp, #-12]
807027a4:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
807027a8:	e3a03b21 	mov	r3, #33792	; 0x8400
807027ac:	e34137d7 	movt	r3, #6103	; 0x17d7
807027b0:	e0030293 	mul	r3, r3, r2
807027b4:	e1a02003 	mov	r2, r3
807027b8:	e1a03fc2 	asr	r3, r2, #31
807027bc:	e14b00dc 	ldrd	r0, [fp, #-12]
807027c0:	e0922000 	adds	r2, r2, r0
807027c4:	e0a33001 	adc	r3, r3, r1
807027c8:	e14b20fc 	strd	r2, [fp, #-12]
807027cc:	ebffffc9 	bl	807026f8 <gtc_get_time>
807027d0:	e14b01f4 	strd	r0, [fp, #-20]	; 0xffffffec
807027d4:	e14b01d4 	ldrd	r0, [fp, #-20]	; 0xffffffec
807027d8:	e14b20dc 	ldrd	r2, [fp, #-12]
807027dc:	e1510003 	cmp	r1, r3
807027e0:	01500002 	cmpeq	r0, r2
807027e4:	3afffff8 	bcc	807027cc <sleep+0x40>
807027e8:	e1a00000 	nop			; (mov r0, r0)
807027ec:	e24bd004 	sub	sp, fp, #4
807027f0:	e8bd8800 	pop	{fp, pc}

807027f4 <usleep>:
807027f4:	e92d4800 	push	{fp, lr}
807027f8:	e28db004 	add	fp, sp, #4
807027fc:	e24dd018 	sub	sp, sp, #24
80702800:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80702804:	ebffffbb 	bl	807026f8 <gtc_get_time>
80702808:	e14b00fc 	strd	r0, [fp, #-12]
8070280c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80702810:	e3a02e19 	mov	r2, #400	; 0x190
80702814:	e0030392 	mul	r3, r2, r3
80702818:	e1a02003 	mov	r2, r3
8070281c:	e1a03fc2 	asr	r3, r2, #31
80702820:	e14b00dc 	ldrd	r0, [fp, #-12]
80702824:	e0922000 	adds	r2, r2, r0
80702828:	e0a33001 	adc	r3, r3, r1
8070282c:	e14b20fc 	strd	r2, [fp, #-12]
80702830:	ebffffb0 	bl	807026f8 <gtc_get_time>
80702834:	e14b01f4 	strd	r0, [fp, #-20]	; 0xffffffec
80702838:	e14b01d4 	ldrd	r0, [fp, #-20]	; 0xffffffec
8070283c:	e14b20dc 	ldrd	r2, [fp, #-12]
80702840:	e1510003 	cmp	r1, r3
80702844:	01500002 	cmpeq	r0, r2
80702848:	3afffff8 	bcc	80702830 <usleep+0x3c>
8070284c:	e1a00000 	nop			; (mov r0, r0)
80702850:	e24bd004 	sub	sp, fp, #4
80702854:	e8bd8800 	pop	{fp, pc}
80702858:	00000172 	andeq	r0, r0, r2, ror r1
8070285c:	29ce0004 	stmibcs	lr, {r2}^
80702860:	01048070 	tsteq	r4, r0, ror r0
80702864:	807011fc 	ldrshthi	r1, [r0], #-28	; 0xffffffe4
80702868:	702b9a0c 	eorvc	r9, fp, ip, lsl #20
8070286c:	70128580 	andsvc	r8, r2, r0, lsl #11
80702870:	7026d080 	eorvc	sp, r6, r0, lsl #1
80702874:	00018880 	andeq	r8, r1, r0, lsl #17
80702878:	702ac700 	eorvc	ip, sl, r0, lsl #14
8070287c:	08010280 	stmdaeq	r1, {r7, r9}
80702880:	8070124d 	rsbshi	r1, r0, sp, asr #4
80702884:	4f060102 	svcmi	0x00060102
80702888:	02807012 	addeq	r7, r0, #18
8070288c:	125b0702 	subsne	r0, fp, #524288	; 0x80000
80702890:	02028070 	andeq	r8, r2, #112	; 0x70
80702894:	7012f905 	andsvc	pc, r2, r5, lsl #18
80702898:	07040280 	streq	r0, [r4, -r0, lsl #5]
8070289c:	807012a8 	rsbshi	r1, r0, r8, lsr #5
807028a0:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
807028a4:	411f0300 	tstmi	pc, r0, lsl #6
807028a8:	04000000 	streq	r0, [r0], #-0
807028ac:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
807028b0:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
807028b4:	7012a307 	andsvc	sl, r2, r7, lsl #6
807028b8:	07080280 	streq	r0, [r8, -r0, lsl #5]
807028bc:	8070129e 			; <UNDEFINED> instruction: 0x8070129e
807028c0:	34367503 	ldrtcc	r7, [r6], #-1283	; 0xfffffafd
807028c4:	61220300 	teqvs	r2, r0, lsl #6
807028c8:	02000000 	andeq	r0, r0, #0
807028cc:	12de0508 	sbcsne	r0, lr, #8, 10	; 0x2000000
807028d0:	04028070 	streq	r8, [r2], #-112	; 0xffffff90
807028d4:	7012e305 	andsvc	lr, r2, r5, lsl #6
807028d8:	451a0580 	ldrmi	r0, [sl, #-1408]	; 0xfffffa80
807028dc:	1d018070 	stcne	0, cr8, [r1, #-448]	; 0xfffffe40
807028e0:	0000005a 	andeq	r0, r0, sl, asr r0
807028e4:	807026d0 	ldrsbthi	r2, [r0], #-96	; 0xffffffa0
807028e8:	00000028 	andeq	r0, r0, r8, lsr #32
807028ec:	00a99c01 	adceq	r9, r9, r1, lsl #24
807028f0:	45060000 	strmi	r0, [r6, #-0]
807028f4:	01807059 	orreq	r7, r0, r9, asr r0
807028f8:	00005a1d 	andeq	r5, r0, sp, lsl sl
807028fc:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80702900:	2bb70700 	blcs	7f4c4508 <__high_exec_veneer+0x7eec4170>
80702904:	14028070 	strne	r8, [r2], #-112	; 0xffffff90
80702908:	00000068 	andeq	r0, r0, r8, rrx
8070290c:	807026f8 	ldrshthi	r2, [r0], #-104	; 0xffffff98
80702910:	00000094 	muleq	r0, r4, r0
80702914:	00f99c01 	rscseq	r9, r9, r1, lsl #24
80702918:	bf080000 	svclt	0x00080000
8070291c:	0280702b 	addeq	r7, r0, #43	; 0x2b
80702920:	00006816 	andeq	r6, r0, r6, lsl r8
80702924:	58910200 	ldmpl	r1, {r9}
80702928:	00696809 	rsbeq	r6, r9, r9, lsl #16
8070292c:	00481702 	subeq	r1, r8, r2, lsl #14
80702930:	91020000 	mrsls	r0, (UNDEF: 2)
80702934:	6f6c096c 	svcvs	0x006c096c
80702938:	48170200 	ldmdami	r7, {r9}
8070293c:	02000000 	andeq	r0, r0, #0
80702940:	74096891 	strvc	r6, [r9], #-2193	; 0xfffff76f
80702944:	0200706d 	andeq	r7, r0, #109	; 0x6d
80702948:	00004817 	andeq	r4, r0, r7, lsl r8
8070294c:	64910200 	ldrvs	r0, [r1], #512	; 0x200
80702950:	2b940a00 	blcs	7ec05158 <__high_exec_veneer+0x7e604dc0>
80702954:	23028070 	movwcs	r8, #8304	; 0x2070
80702958:	8070278c 	rsbshi	r2, r0, ip, lsl #15
8070295c:	00000068 	andeq	r0, r0, r8, rrx
80702960:	01399c01 	teqeq	r9, r1, lsl #24
80702964:	730b0000 	movwvc	r0, #45056	; 0xb000
80702968:	02006365 	andeq	r6, r0, #-1811939327	; 0x94000001
8070296c:	00005323 	andeq	r5, r0, r3, lsr #6
80702970:	64910200 	ldrvs	r0, [r1], #512	; 0x200
80702974:	702bbf08 	eorvc	fp, fp, r8, lsl #30
80702978:	68250280 	stmdavs	r5!, {r7, r9}
8070297c:	02000000 	andeq	r0, r0, #0
80702980:	c4087091 	strgt	r7, [r8], #-145	; 0xffffff6f
80702984:	0280702b 	addeq	r7, r0, #43	; 0x2b
80702988:	00006825 	andeq	r6, r0, r5, lsr #16
8070298c:	68910200 	ldmvs	r1, {r9}
80702990:	2b930c00 	blcs	7ebc5998 <__high_exec_veneer+0x7e5c5600>
80702994:	2d028070 	stccs	0, cr8, [r2, #-448]	; 0xfffffe40
80702998:	807027f4 	ldrshthi	r2, [r0], #-116	; 0xffffff8c
8070299c:	00000064 	andeq	r0, r0, r4, rrx
807029a0:	8e069c01 	cdphi	12, 0, cr9, cr6, cr1, {0}
807029a4:	0280702b 	addeq	r7, r0, #43	; 0x2b
807029a8:	0000532d 	andeq	r5, r0, sp, lsr #6
807029ac:	64910200 	ldrvs	r0, [r1], #512	; 0x200
807029b0:	702bbf08 	eorvc	fp, fp, r8, lsl #30
807029b4:	682f0280 	stmdavs	pc!, {r7, r9}	; <UNPREDICTABLE>
807029b8:	02000000 	andeq	r0, r0, #0
807029bc:	c4087091 	strgt	r7, [r8], #-145	; 0xffffff6f
807029c0:	0280702b 	addeq	r7, r0, #43	; 0x2b
807029c4:	0000682f 	andeq	r6, r0, pc, lsr #16
807029c8:	68910200 	ldmvs	r1, {r9}
807029cc:	11010000 	mrsne	r0, (UNDEF: 1)
807029d0:	130e2501 	movwne	r2, #58625	; 0xe501
807029d4:	1b0e030b 	blne	80a83608 <ptable+0x37db74>
807029d8:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
807029dc:	00171006 	andseq	r1, r7, r6
807029e0:	00240200 	eoreq	r0, r4, r0, lsl #4
807029e4:	0b3e0b0b 	bleq	81685618 <ptable+0xf7fb84>
807029e8:	00000e03 	andeq	r0, r0, r3, lsl #28
807029ec:	03001603 	movweq	r1, #1539	; 0x603
807029f0:	3b0b3a08 	blcc	809d1218 <ptable+0x2cb784>
807029f4:	0013490b 	andseq	r4, r3, fp, lsl #18
807029f8:	00240400 	eoreq	r0, r4, r0, lsl #8
807029fc:	0b3e0b0b 	bleq	81685630 <ptable+0xf7fb9c>
80702a00:	00000803 	andeq	r0, r0, r3, lsl #16
80702a04:	03012e05 	movweq	r2, #7685	; 0x1e05
80702a08:	3b0b3a0e 	blcc	809d1248 <ptable+0x2cb7b4>
80702a0c:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
80702a10:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80702a14:	97184006 	ldrls	r4, [r8, -r6]
80702a18:	13011942 	movwne	r1, #6466	; 0x1942
80702a1c:	05060000 	streq	r0, [r6, #-0]
80702a20:	3a0e0300 	bcc	80a83628 <ptable+0x37db94>
80702a24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80702a28:	00180213 	andseq	r0, r8, r3, lsl r2
80702a2c:	012e0700 	teqeq	lr, r0, lsl #14
80702a30:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80702a34:	0b3b0b3a 	bleq	815c5724 <ptable+0xebfc90>
80702a38:	01111349 	tsteq	r1, r9, asr #6
80702a3c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80702a40:	01194296 			; <UNDEFINED> instruction: 0x01194296
80702a44:	08000013 	stmdaeq	r0, {r0, r1, r4}
80702a48:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
80702a4c:	0b3b0b3a 	bleq	815c573c <ptable+0xebfca8>
80702a50:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80702a54:	34090000 	strcc	r0, [r9], #-0
80702a58:	3a080300 	bcc	80903660 <ptable+0x1fdbcc>
80702a5c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80702a60:	00180213 	andseq	r0, r8, r3, lsl r2
80702a64:	012e0a00 	teqeq	lr, r0, lsl #20
80702a68:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80702a6c:	0b3b0b3a 	bleq	815c575c <ptable+0xebfcc8>
80702a70:	01111927 	tsteq	r1, r7, lsr #18
80702a74:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80702a78:	01194296 			; <UNDEFINED> instruction: 0x01194296
80702a7c:	0b000013 	bleq	80702ad0 <usleep+0x2dc>
80702a80:	08030005 	stmdaeq	r3, {r0, r2}
80702a84:	0b3b0b3a 	bleq	815c5774 <ptable+0xebfce0>
80702a88:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80702a8c:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
80702a90:	03193f01 	tsteq	r9, #1, 30
80702a94:	3b0b3a0e 	blcc	809d12d4 <ptable+0x2cb840>
80702a98:	1119270b 	tstne	r9, fp, lsl #14
80702a9c:	40061201 	andmi	r1, r6, r1, lsl #4
80702aa0:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
80702aa4:	1c000000 	stcne	0, cr0, [r0], {-0}
80702aa8:	02000000 	andeq	r0, r0, #0
80702aac:	70285800 	eorvc	r5, r8, r0, lsl #16
80702ab0:	00000480 	andeq	r0, r0, r0, lsl #9
80702ab4:	d0000000 	andle	r0, r0, r0
80702ab8:	88807026 	stmhi	r0, {r1, r2, r5, ip, sp, lr}
80702abc:	00000001 	andeq	r0, r0, r1
80702ac0:	00000000 	andeq	r0, r0, r0
80702ac4:	c3000000 	movwgt	r0, #0
80702ac8:	02000000 	andeq	r0, r0, #0
80702acc:	00007100 	andeq	r7, r0, r0, lsl #2
80702ad0:	fb010200 	blx	807432da <ptable+0x3d846>
80702ad4:	01000d0e 	tsteq	r0, lr, lsl #26
80702ad8:	00010101 	andeq	r0, r1, r1, lsl #2
80702adc:	00010000 	andeq	r0, r1, r0
80702ae0:	2f2e0100 	svccs	0x002e0100
80702ae4:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
80702ae8:	2f656475 	svccs	0x00656475
80702aec:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
80702af0:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
80702af4:	2d613776 	stclcs	7, cr3, [r1, #-472]!	; 0xfffffe28
80702af8:	612f656c 	teqvs	pc, ip, ror #10
80702afc:	64006d73 	strvs	r6, [r0], #-3443	; 0xfffff28d
80702b00:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0xfffff68e
80702b04:	632f7372 	teqvs	pc, #-939524095	; 0xc8000001
80702b08:	6b636f6c 	blvs	81fde8c0 <ptable+0x18d8e2c>
80702b0c:	692f2e00 	stmdbvs	pc!, {r9, sl, fp, sp}	; <UNPREDICTABLE>
80702b10:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
80702b14:	732f6564 	teqvc	pc, #100, 10	; 0x19000000
80702b18:	00007379 	andeq	r7, r0, r9, ror r3
80702b1c:	682e6f69 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}
80702b20:	00000100 	andeq	r0, r0, r0, lsl #2
80702b24:	2d637467 	cfstrdcs	mvd7, [r3, #-412]!	; 0xfffffe64
80702b28:	706d3961 	rsbvc	r3, sp, r1, ror #18
80702b2c:	65726f63 	ldrbvs	r6, [r2, #-3939]!	; 0xfffff09d
80702b30:	0200632e 	andeq	r6, r0, #-1207959552	; 0xb8000000
80702b34:	79740000 	ldmdbvc	r4!, {}^	; <UNPREDICTABLE>
80702b38:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
80702b3c:	00030068 	andeq	r0, r3, r8, rrx
80702b40:	05000000 	streq	r0, [r0, #-0]
80702b44:	7026d002 	eorvc	sp, r6, r2
80702b48:	011d0380 	tsteq	sp, r0, lsl #7
80702b4c:	02044b83 	andeq	r4, r4, #134144	; 0x20c00
80702b50:	00827503 	addeq	r7, r2, r3, lsl #10
80702b54:	6b010402 	blvs	80743b64 <ptable+0x3e0d0>
80702b58:	01040200 	mrseq	r0, R12_usr
80702b5c:	04020083 	streq	r0, [r2], #-131	; 0xffffff7d
80702b60:	02008301 	andeq	r8, r0, #67108864	; 0x4000000
80702b64:	83830104 	orrhi	r0, r3, #4, 2
80702b68:	852fd7bb 	strhi	sp, [pc, #-1979]!	; 807023b5 <.LC3+0x75d>
80702b6c:	02004b84 	andeq	r4, r0, #132, 22	; 0x21000
80702b70:	3e080104 	adfcce	f0, f0, f4
80702b74:	01040200 	mrseq	r0, R12_usr
80702b78:	84699f4b 	strbthi	r9, [r9], #-3915	; 0xfffff0b5
80702b7c:	0402004b 	streq	r0, [r2], #-75	; 0xffffffb5
80702b80:	00220801 	eoreq	r0, r2, r1, lsl #16
80702b84:	4b010402 	blmi	80743b94 <ptable+0x3e100>
80702b88:	0006029f 	muleq	r6, pc, r2	; <UNPREDICTABLE>
80702b8c:	73750101 	cmnvc	r5, #1073741824	; 0x40000000
80702b90:	75006365 	strvc	r6, [r0, #-869]	; 0xfffffc9b
80702b94:	65656c73 	strbvs	r6, [r5, #-3187]!	; 0xfffff38d
80702b98:	72640070 	rsbvc	r0, r4, #112	; 0x70
80702b9c:	72657669 	rsbvc	r7, r5, #110100480	; 0x6900000
80702ba0:	6c632f73 	stclvs	15, cr2, [r3], #-460	; 0xfffffe34
80702ba4:	2f6b636f 	svccs	0x006b636f
80702ba8:	2d637467 	cfstrdcs	mvd7, [r3, #-412]!	; 0xfffffe64
80702bac:	706d3961 	rsbvc	r3, sp, r1, ror #18
80702bb0:	65726f63 	ldrbvs	r6, [r2, #-3939]!	; 0xfffff09d
80702bb4:	6700632e 	strvs	r6, [r0, -lr, lsr #6]
80702bb8:	675f6374 			; <UNDEFINED> instruction: 0x675f6374
80702bbc:	745f7465 	ldrbvc	r7, [pc], #-1125	; 80702bc4 <usleep+0x3d0>
80702bc0:	00656d69 	rsbeq	r6, r5, r9, ror #26
80702bc4:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
80702bc8:	00000031 	andeq	r0, r0, r1, lsr r0
80702bcc:	0000000c 	andeq	r0, r0, ip
80702bd0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80702bd4:	7c020001 	stcvc	0, cr0, [r2], {1}
80702bd8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80702bdc:	0000001c 	andeq	r0, r0, ip, lsl r0
80702be0:	80702bcc 	rsbshi	r2, r0, ip, asr #23
80702be4:	807026d0 	ldrsbthi	r2, [r0], #-96	; 0xffffffa0
80702be8:	00000028 	andeq	r0, r0, r8, lsr #32
80702bec:	8b040e42 	blhi	808064fc <ptable+0x100a68>
80702bf0:	0b0d4201 	bleq	80a533fc <ptable+0x34d968>
80702bf4:	420d0d4c 	andmi	r0, sp, #76, 26	; 0x1300
80702bf8:	00000ecb 	andeq	r0, r0, fp, asr #29
80702bfc:	00000020 	andeq	r0, r0, r0, lsr #32
80702c00:	80702bcc 	rsbshi	r2, r0, ip, asr #23
80702c04:	807026f8 	ldrshthi	r2, [r0], #-104	; 0xffffff98
80702c08:	00000094 	muleq	r0, r4, r0
80702c0c:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
80702c10:	8b038504 	blhi	807e4028 <ptable+0xde594>
80702c14:	42018e02 	andmi	r8, r1, #2, 28
80702c18:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80702c1c:	100d0c44 	andne	r0, sp, r4, asr #24
80702c20:	0000001c 	andeq	r0, r0, ip, lsl r0
80702c24:	80702bcc 	rsbshi	r2, r0, ip, asr #23
80702c28:	8070278c 	rsbshi	r2, r0, ip, lsl #15
80702c2c:	00000068 	andeq	r0, r0, r8, rrx
80702c30:	8b080e42 	blhi	80906540 <ptable+0x200aac>
80702c34:	42018e02 	andmi	r8, r1, #2, 28
80702c38:	6e040b0c 	vmlavs.f64	d0, d4, d12
80702c3c:	00080d0c 	andeq	r0, r8, ip, lsl #26
80702c40:	0000001c 	andeq	r0, r0, ip, lsl r0
80702c44:	80702bcc 	rsbshi	r2, r0, ip, asr #23
80702c48:	807027f4 	ldrshthi	r2, [r0], #-116	; 0xffffff8c
80702c4c:	00000064 	andeq	r0, r0, r4, rrx
80702c50:	8b080e42 	blhi	80906560 <ptable+0x200acc>
80702c54:	42018e02 	andmi	r8, r1, #2, 28
80702c58:	6c040b0c 	stcvs	11, cr0, [r4], {12}
80702c5c:	00080d0c 	andeq	r0, r8, ip, lsl #26
80702c60:	00002e41 	andeq	r2, r0, r1, asr #28
80702c64:	61656100 	cmnvs	r5, r0, lsl #2
80702c68:	01006962 	tsteq	r0, r2, ror #18
80702c6c:	00000024 	andeq	r0, r0, r4, lsr #32
80702c70:	412d3705 	teqmi	sp, r5, lsl #14
80702c74:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80702c78:	09010841 	stmdbeq	r1, {r0, r6, fp}
80702c7c:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
80702c80:	17011501 	strne	r1, [r1, -r1, lsl #10]
80702c84:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80702c88:	1e011a01 	vmlane.f32	s2, s2, s2
80702c8c:	00012206 	andeq	r2, r1, r6, lsl #4

80702c90 <in8>:
80702c90:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702c94:	e28db000 	add	fp, sp, #0
80702c98:	e24dd00c 	sub	sp, sp, #12
80702c9c:	e50b0008 	str	r0, [fp, #-8]
80702ca0:	e51b3008 	ldr	r3, [fp, #-8]
80702ca4:	e5d33000 	ldrb	r3, [r3]
80702ca8:	e6ef3073 	uxtb	r3, r3
80702cac:	e1a00003 	mov	r0, r3
80702cb0:	e24bd000 	sub	sp, fp, #0
80702cb4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702cb8:	e12fff1e 	bx	lr

80702cbc <in16>:
80702cbc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702cc0:	e28db000 	add	fp, sp, #0
80702cc4:	e24dd00c 	sub	sp, sp, #12
80702cc8:	e50b0008 	str	r0, [fp, #-8]
80702ccc:	e51b3008 	ldr	r3, [fp, #-8]
80702cd0:	e1d330b0 	ldrh	r3, [r3]
80702cd4:	e6ff3073 	uxth	r3, r3
80702cd8:	e1a00003 	mov	r0, r3
80702cdc:	e24bd000 	sub	sp, fp, #0
80702ce0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702ce4:	e12fff1e 	bx	lr

80702ce8 <in32>:
80702ce8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702cec:	e28db000 	add	fp, sp, #0
80702cf0:	e24dd00c 	sub	sp, sp, #12
80702cf4:	e50b0008 	str	r0, [fp, #-8]
80702cf8:	e51b3008 	ldr	r3, [fp, #-8]
80702cfc:	e5933000 	ldr	r3, [r3]
80702d00:	e1a00003 	mov	r0, r3
80702d04:	e24bd000 	sub	sp, fp, #0
80702d08:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702d0c:	e12fff1e 	bx	lr

80702d10 <out8>:
80702d10:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702d14:	e28db000 	add	fp, sp, #0
80702d18:	e24dd00c 	sub	sp, sp, #12
80702d1c:	e50b0008 	str	r0, [fp, #-8]
80702d20:	e1a03001 	mov	r3, r1
80702d24:	e54b3009 	strb	r3, [fp, #-9]
80702d28:	e51b3008 	ldr	r3, [fp, #-8]
80702d2c:	e55b2009 	ldrb	r2, [fp, #-9]
80702d30:	e5c32000 	strb	r2, [r3]
80702d34:	e1a00000 	nop			; (mov r0, r0)
80702d38:	e24bd000 	sub	sp, fp, #0
80702d3c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702d40:	e12fff1e 	bx	lr

80702d44 <out16>:
80702d44:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702d48:	e28db000 	add	fp, sp, #0
80702d4c:	e24dd00c 	sub	sp, sp, #12
80702d50:	e50b0008 	str	r0, [fp, #-8]
80702d54:	e1a03001 	mov	r3, r1
80702d58:	e14b30ba 	strh	r3, [fp, #-10]
80702d5c:	e51b3008 	ldr	r3, [fp, #-8]
80702d60:	e15b20ba 	ldrh	r2, [fp, #-10]
80702d64:	e1c320b0 	strh	r2, [r3]
80702d68:	e1a00000 	nop			; (mov r0, r0)
80702d6c:	e24bd000 	sub	sp, fp, #0
80702d70:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702d74:	e12fff1e 	bx	lr

80702d78 <out32>:
80702d78:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702d7c:	e28db000 	add	fp, sp, #0
80702d80:	e24dd00c 	sub	sp, sp, #12
80702d84:	e50b0008 	str	r0, [fp, #-8]
80702d88:	e50b100c 	str	r1, [fp, #-12]
80702d8c:	e51b3008 	ldr	r3, [fp, #-8]
80702d90:	e51b200c 	ldr	r2, [fp, #-12]
80702d94:	e5832000 	str	r2, [r3]
80702d98:	e1a00000 	nop			; (mov r0, r0)
80702d9c:	e24bd000 	sub	sp, fp, #0
80702da0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702da4:	e12fff1e 	bx	lr

80702da8 <sd_init>:
80702da8:	e92d4800 	push	{fp, lr}
80702dac:	e28db004 	add	fp, sp, #4
80702db0:	e24dd008 	sub	sp, sp, #8
80702db4:	e3a01001 	mov	r1, #1
80702db8:	e3a0002f 	mov	r0, #47	; 0x2f
80702dbc:	e34e0010 	movt	r0, #57360	; 0xe010
80702dc0:	ebffffd2 	bl	80702d10 <out8>
80702dc4:	e1a00000 	nop			; (mov r0, r0)
80702dc8:	e3a0002f 	mov	r0, #47	; 0x2f
80702dcc:	e34e0010 	movt	r0, #57360	; 0xe010
80702dd0:	ebffffae 	bl	80702c90 <in8>
80702dd4:	e1a03000 	mov	r3, r0
80702dd8:	e2033001 	and	r3, r3, #1
80702ddc:	e3530000 	cmp	r3, #0
80702de0:	1afffff8 	bne	80702dc8 <sd_init+0x20>
80702de4:	e3043001 	movw	r3, #16385	; 0x4001
80702de8:	e14b30b6 	strh	r3, [fp, #-6]
80702dec:	e15b30b6 	ldrh	r3, [fp, #-6]
80702df0:	e1a01003 	mov	r1, r3
80702df4:	e3a0002c 	mov	r0, #44	; 0x2c
80702df8:	e34e0010 	movt	r0, #57360	; 0xe010
80702dfc:	ebffffd0 	bl	80702d44 <out16>
80702e00:	e1a00000 	nop			; (mov r0, r0)
80702e04:	e3a0002c 	mov	r0, #44	; 0x2c
80702e08:	e34e0010 	movt	r0, #57360	; 0xe010
80702e0c:	ebffffaa 	bl	80702cbc <in16>
80702e10:	e1a03000 	mov	r3, r0
80702e14:	e2033002 	and	r3, r3, #2
80702e18:	e3530000 	cmp	r3, #0
80702e1c:	0afffff8 	beq	80702e04 <sd_init+0x5c>
80702e20:	e3a0002c 	mov	r0, #44	; 0x2c
80702e24:	e34e0010 	movt	r0, #57360	; 0xe010
80702e28:	ebffffa3 	bl	80702cbc <in16>
80702e2c:	e1a03000 	mov	r3, r0
80702e30:	e3833004 	orr	r3, r3, #4
80702e34:	e14b30b6 	strh	r3, [fp, #-6]
80702e38:	e15b30b6 	ldrh	r3, [fp, #-6]
80702e3c:	e1a01003 	mov	r1, r3
80702e40:	e3a0002c 	mov	r0, #44	; 0x2c
80702e44:	e34e0010 	movt	r0, #57360	; 0xe010
80702e48:	ebffffbd 	bl	80702d44 <out16>
80702e4c:	e3a0300f 	mov	r3, #15
80702e50:	e54b3007 	strb	r3, [fp, #-7]
80702e54:	e55b3007 	ldrb	r3, [fp, #-7]
80702e58:	e1a01003 	mov	r1, r3
80702e5c:	e3a00029 	mov	r0, #41	; 0x29
80702e60:	e34e0010 	movt	r0, #57360	; 0xe010
80702e64:	ebffffa9 	bl	80702d10 <out8>
80702e68:	e3a01000 	mov	r1, #0
80702e6c:	e3a00028 	mov	r0, #40	; 0x28
80702e70:	e34e0010 	movt	r0, #57360	; 0xe010
80702e74:	ebffffa5 	bl	80702d10 <out8>
80702e78:	e3e03c01 	mvn	r3, #256	; 0x100
80702e7c:	e14b30b6 	strh	r3, [fp, #-6]
80702e80:	e15b30b6 	ldrh	r3, [fp, #-6]
80702e84:	e1a01003 	mov	r1, r3
80702e88:	e3a00034 	mov	r0, #52	; 0x34
80702e8c:	e34e0010 	movt	r0, #57360	; 0xe010
80702e90:	ebffffab 	bl	80702d44 <out16>
80702e94:	e30f13ff 	movw	r1, #62463	; 0xf3ff
80702e98:	e3a00036 	mov	r0, #54	; 0x36
80702e9c:	e34e0010 	movt	r0, #57360	; 0xe010
80702ea0:	ebffffa7 	bl	80702d44 <out16>
80702ea4:	e3a01000 	mov	r1, #0
80702ea8:	e3a00038 	mov	r0, #56	; 0x38
80702eac:	e34e0010 	movt	r0, #57360	; 0xe010
80702eb0:	ebffffa3 	bl	80702d44 <out16>
80702eb4:	e3a01000 	mov	r1, #0
80702eb8:	e3a0003a 	mov	r0, #58	; 0x3a
80702ebc:	e34e0010 	movt	r0, #57360	; 0xe010
80702ec0:	ebffff9f 	bl	80702d44 <out16>
80702ec4:	e3a01c02 	mov	r1, #512	; 0x200
80702ec8:	e3a00004 	mov	r0, #4
80702ecc:	e34e0010 	movt	r0, #57360	; 0xe010
80702ed0:	ebffff9b 	bl	80702d44 <out16>
80702ed4:	e1a00000 	nop			; (mov r0, r0)
80702ed8:	e24bd004 	sub	sp, fp, #4
80702edc:	e8bd8800 	pop	{fp, pc}

80702ee0 <sd_frame_cmd>:
80702ee0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702ee4:	e28db000 	add	fp, sp, #0
80702ee8:	e24dd00c 	sub	sp, sp, #12
80702eec:	e1a03000 	mov	r3, r0
80702ef0:	e14b30b6 	strh	r3, [fp, #-6]
80702ef4:	e15b30b6 	ldrh	r3, [fp, #-6]
80702ef8:	e3530a01 	cmp	r3, #4096	; 0x1000
80702efc:	0a000046 	beq	8070301c <sd_frame_cmd+0x13c>
80702f00:	e3530a01 	cmp	r3, #4096	; 0x1000
80702f04:	ca000020 	bgt	80702f8c <sd_frame_cmd+0xac>
80702f08:	e3530c05 	cmp	r3, #1280	; 0x500
80702f0c:	0a00004a 	beq	8070303c <sd_frame_cmd+0x15c>
80702f10:	e3530c05 	cmp	r3, #1280	; 0x500
80702f14:	ca00000c 	bgt	80702f4c <sd_frame_cmd+0x6c>
80702f18:	e3530c02 	cmp	r3, #512	; 0x200
80702f1c:	0a00004a 	beq	8070304c <sd_frame_cmd+0x16c>
80702f20:	e3530c02 	cmp	r3, #512	; 0x200
80702f24:	ca000004 	bgt	80702f3c <sd_frame_cmd+0x5c>
80702f28:	e3530000 	cmp	r3, #0
80702f2c:	0a00005a 	beq	8070309c <sd_frame_cmd+0x1bc>
80702f30:	e3530c01 	cmp	r3, #256	; 0x100
80702f34:	0a000048 	beq	8070305c <sd_frame_cmd+0x17c>
80702f38:	ea000058 	b	807030a0 <sd_frame_cmd+0x1c0>
80702f3c:	e3530c03 	cmp	r3, #768	; 0x300
80702f40:	0a000049 	beq	8070306c <sd_frame_cmd+0x18c>
80702f44:	e3530b01 	cmp	r3, #1024	; 0x400
80702f48:	ea000053 	b	8070309c <sd_frame_cmd+0x1bc>
80702f4c:	e3530b02 	cmp	r3, #2048	; 0x800
80702f50:	0a00004d 	beq	8070308c <sd_frame_cmd+0x1ac>
80702f54:	e3530b02 	cmp	r3, #2048	; 0x800
80702f58:	ca000004 	bgt	80702f70 <sd_frame_cmd+0x90>
80702f5c:	e3530c06 	cmp	r3, #1536	; 0x600
80702f60:	0a000045 	beq	8070307c <sd_frame_cmd+0x19c>
80702f64:	e3530c07 	cmp	r3, #1792	; 0x700
80702f68:	0a00002b 	beq	8070301c <sd_frame_cmd+0x13c>
80702f6c:	ea00004b 	b	807030a0 <sd_frame_cmd+0x1c0>
80702f70:	e3530c0a 	cmp	r3, #2560	; 0xa00
80702f74:	0a000028 	beq	8070301c <sd_frame_cmd+0x13c>
80702f78:	e3530b03 	cmp	r3, #3072	; 0xc00
80702f7c:	0a000026 	beq	8070301c <sd_frame_cmd+0x13c>
80702f80:	e3530c09 	cmp	r3, #2304	; 0x900
80702f84:	0a000030 	beq	8070304c <sd_frame_cmd+0x16c>
80702f88:	ea000044 	b	807030a0 <sd_frame_cmd+0x1c0>
80702f8c:	e3530c37 	cmp	r3, #14080	; 0x3700
80702f90:	0a000021 	beq	8070301c <sd_frame_cmd+0x13c>
80702f94:	e3530c37 	cmp	r3, #14080	; 0x3700
80702f98:	ca00000f 	bgt	80702fdc <sd_frame_cmd+0xfc>
80702f9c:	e3530c17 	cmp	r3, #5888	; 0x1700
80702fa0:	0a000021 	beq	8070302c <sd_frame_cmd+0x14c>
80702fa4:	e3530c17 	cmp	r3, #5888	; 0x1700
80702fa8:	ca000004 	bgt	80702fc0 <sd_frame_cmd+0xe0>
80702fac:	e3530c11 	cmp	r3, #4352	; 0x1100
80702fb0:	0a00001d 	beq	8070302c <sd_frame_cmd+0x14c>
80702fb4:	e3530c12 	cmp	r3, #4608	; 0x1200
80702fb8:	0a00001b 	beq	8070302c <sd_frame_cmd+0x14c>
80702fbc:	ea000037 	b	807030a0 <sd_frame_cmd+0x1c0>
80702fc0:	e3530c19 	cmp	r3, #6400	; 0x1900
80702fc4:	0a000018 	beq	8070302c <sd_frame_cmd+0x14c>
80702fc8:	e3530b0d 	cmp	r3, #13312	; 0x3400
80702fcc:	0a000012 	beq	8070301c <sd_frame_cmd+0x13c>
80702fd0:	e3530b06 	cmp	r3, #6144	; 0x1800
80702fd4:	0a000014 	beq	8070302c <sd_frame_cmd+0x14c>
80702fd8:	ea000030 	b	807030a0 <sd_frame_cmd+0x1c0>
80702fdc:	e3530c97 	cmp	r3, #38656	; 0x9700
80702fe0:	0a000011 	beq	8070302c <sd_frame_cmd+0x14c>
80702fe4:	e3530c97 	cmp	r3, #38656	; 0x9700
80702fe8:	ca000004 	bgt	80703000 <sd_frame_cmd+0x120>
80702fec:	e3530c86 	cmp	r3, #34304	; 0x8600
80702ff0:	0a000009 	beq	8070301c <sd_frame_cmd+0x13c>
80702ff4:	e3530c8d 	cmp	r3, #36096	; 0x8d00
80702ff8:	0a000007 	beq	8070301c <sd_frame_cmd+0x13c>
80702ffc:	ea000027 	b	807030a0 <sd_frame_cmd+0x1c0>
80703000:	e3530caa 	cmp	r3, #43520	; 0xaa00
80703004:	0a000004 	beq	8070301c <sd_frame_cmd+0x13c>
80703008:	e3530cb3 	cmp	r3, #45824	; 0xb300
8070300c:	0a000006 	beq	8070302c <sd_frame_cmd+0x14c>
80703010:	e3530ca9 	cmp	r3, #43264	; 0xa900
80703014:	0a000010 	beq	8070305c <sd_frame_cmd+0x17c>
80703018:	ea000020 	b	807030a0 <sd_frame_cmd+0x1c0>
8070301c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703020:	e383301a 	orr	r3, r3, #26
80703024:	e14b30b6 	strh	r3, [fp, #-6]
80703028:	ea00001c 	b	807030a0 <sd_frame_cmd+0x1c0>
8070302c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703030:	e383303a 	orr	r3, r3, #58	; 0x3a
80703034:	e14b30b6 	strh	r3, [fp, #-6]
80703038:	ea000018 	b	807030a0 <sd_frame_cmd+0x1c0>
8070303c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703040:	e383301b 	orr	r3, r3, #27
80703044:	e14b30b6 	strh	r3, [fp, #-6]
80703048:	ea000014 	b	807030a0 <sd_frame_cmd+0x1c0>
8070304c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703050:	e3833009 	orr	r3, r3, #9
80703054:	e14b30b6 	strh	r3, [fp, #-6]
80703058:	ea000010 	b	807030a0 <sd_frame_cmd+0x1c0>
8070305c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703060:	e3833002 	orr	r3, r3, #2
80703064:	e14b30b6 	strh	r3, [fp, #-6]
80703068:	ea00000c 	b	807030a0 <sd_frame_cmd+0x1c0>
8070306c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703070:	e383301b 	orr	r3, r3, #27
80703074:	e14b30b6 	strh	r3, [fp, #-6]
80703078:	ea000008 	b	807030a0 <sd_frame_cmd+0x1c0>
8070307c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703080:	e383303a 	orr	r3, r3, #58	; 0x3a
80703084:	e14b30b6 	strh	r3, [fp, #-6]
80703088:	ea000004 	b	807030a0 <sd_frame_cmd+0x1c0>
8070308c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703090:	e383301a 	orr	r3, r3, #26
80703094:	e14b30b6 	strh	r3, [fp, #-6]
80703098:	ea000000 	b	807030a0 <sd_frame_cmd+0x1c0>
8070309c:	e1a00000 	nop			; (mov r0, r0)
807030a0:	e15b30b6 	ldrh	r3, [fp, #-6]
807030a4:	e7ed3053 	ubfx	r3, r3, #0, #14
807030a8:	e6ff3073 	uxth	r3, r3
807030ac:	e1a00003 	mov	r0, r3
807030b0:	e24bd000 	sub	sp, fp, #0
807030b4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
807030b8:	e12fff1e 	bx	lr

807030bc <sd_spin_send_cmd>:
807030bc:	e92d4800 	push	{fp, lr}
807030c0:	e28db004 	add	fp, sp, #4
807030c4:	e24dd020 	sub	sp, sp, #32
807030c8:	e50b201c 	str	r2, [fp, #-28]	; 0xffffffe4
807030cc:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
807030d0:	e14b01b6 	strh	r0, [fp, #-22]	; 0xffffffea
807030d4:	e14b11b8 	strh	r1, [fp, #-24]	; 0xffffffe8
807030d8:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
807030dc:	e1a00003 	mov	r0, r3
807030e0:	ebffff7e 	bl	80702ee0 <sd_frame_cmd>
807030e4:	e1a03000 	mov	r3, r0
807030e8:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
807030ec:	e3a00024 	mov	r0, #36	; 0x24
807030f0:	e34e0010 	movt	r0, #57360	; 0xe010
807030f4:	ebfffefb 	bl	80702ce8 <in32>
807030f8:	e50b000c 	str	r0, [fp, #-12]
807030fc:	e51b300c 	ldr	r3, [fp, #-12]
80703100:	e2033001 	and	r3, r3, #1
80703104:	e3530000 	cmp	r3, #0
80703108:	0a000001 	beq	80703114 <sd_spin_send_cmd+0x58>
8070310c:	e3e03000 	mvn	r3, #0
80703110:	ea00004b 	b	80703244 <sd_spin_send_cmd+0x188>
80703114:	e51b300c 	ldr	r3, [fp, #-12]
80703118:	e2033002 	and	r3, r3, #2
8070311c:	e3530000 	cmp	r3, #0
80703120:	0a000005 	beq	8070313c <sd_spin_send_cmd+0x80>
80703124:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
80703128:	e2033020 	and	r3, r3, #32
8070312c:	e3530000 	cmp	r3, #0
80703130:	0a000001 	beq	8070313c <sd_spin_send_cmd+0x80>
80703134:	e3e03001 	mvn	r3, #1
80703138:	ea000041 	b	80703244 <sd_spin_send_cmd+0x188>
8070313c:	e15b31b8 	ldrh	r3, [fp, #-24]	; 0xffffffe8
80703140:	e1a01003 	mov	r1, r3
80703144:	e3a00006 	mov	r0, #6
80703148:	e34e0010 	movt	r0, #57360	; 0xe010
8070314c:	ebfffefc 	bl	80702d44 <out16>
80703150:	e3a0100e 	mov	r1, #14
80703154:	e3a0002e 	mov	r0, #46	; 0x2e
80703158:	e34e0010 	movt	r0, #57360	; 0xe010
8070315c:	ebfffef8 	bl	80702d44 <out16>
80703160:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
80703164:	e3a00008 	mov	r0, #8
80703168:	e34e0010 	movt	r0, #57360	; 0xe010
8070316c:	ebffff01 	bl	80702d78 <out32>
80703170:	e30f1fff 	movw	r1, #65535	; 0xffff
80703174:	e3a00030 	mov	r0, #48	; 0x30
80703178:	e34e0010 	movt	r0, #57360	; 0xe010
8070317c:	ebfffef0 	bl	80702d44 <out16>
80703180:	e30f13ff 	movw	r1, #62463	; 0xf3ff
80703184:	e3a00032 	mov	r0, #50	; 0x32
80703188:	e34e0010 	movt	r0, #57360	; 0xe010
8070318c:	ebfffeec 	bl	80702d44 <out16>
80703190:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80703194:	e3530001 	cmp	r3, #1
80703198:	0a000002 	beq	807031a8 <sd_spin_send_cmd+0xec>
8070319c:	e3530002 	cmp	r3, #2
807031a0:	0a000003 	beq	807031b4 <sd_spin_send_cmd+0xf8>
807031a4:	ea000005 	b	807031c0 <sd_spin_send_cmd+0x104>
807031a8:	e3a03037 	mov	r3, #55	; 0x37
807031ac:	e14b30b6 	strh	r3, [fp, #-6]
807031b0:	ea000005 	b	807031cc <sd_spin_send_cmd+0x110>
807031b4:	e3a03027 	mov	r3, #39	; 0x27
807031b8:	e14b30b6 	strh	r3, [fp, #-6]
807031bc:	ea000002 	b	807031cc <sd_spin_send_cmd+0x110>
807031c0:	e3a03001 	mov	r3, #1
807031c4:	e14b30b6 	strh	r3, [fp, #-6]
807031c8:	e1a00000 	nop			; (mov r0, r0)
807031cc:	e15b30b6 	ldrh	r3, [fp, #-6]
807031d0:	e1a01003 	mov	r1, r3
807031d4:	e3a0000c 	mov	r0, #12
807031d8:	e34e0010 	movt	r0, #57360	; 0xe010
807031dc:	ebfffed8 	bl	80702d44 <out16>
807031e0:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
807031e4:	e1a01003 	mov	r1, r3
807031e8:	e3a0000e 	mov	r0, #14
807031ec:	e34e0010 	movt	r0, #57360	; 0xe010
807031f0:	ebfffed3 	bl	80702d44 <out16>
807031f4:	e3a00030 	mov	r0, #48	; 0x30
807031f8:	e34e0010 	movt	r0, #57360	; 0xe010
807031fc:	ebfffeae 	bl	80702cbc <in16>
80703200:	e1a03000 	mov	r3, r0
80703204:	e14b30be 	strh	r3, [fp, #-14]
80703208:	e15b30be 	ldrh	r3, [fp, #-14]
8070320c:	e6bf3073 	sxth	r3, r3
80703210:	e3530000 	cmp	r3, #0
80703214:	aa000001 	bge	80703220 <sd_spin_send_cmd+0x164>
80703218:	e3e03002 	mvn	r3, #2
8070321c:	ea000008 	b	80703244 <sd_spin_send_cmd+0x188>
80703220:	e15b30be 	ldrh	r3, [fp, #-14]
80703224:	e2033001 	and	r3, r3, #1
80703228:	e3530000 	cmp	r3, #0
8070322c:	0afffff0 	beq	807031f4 <sd_spin_send_cmd+0x138>
80703230:	e3a01001 	mov	r1, #1
80703234:	e3a00030 	mov	r0, #48	; 0x30
80703238:	e34e0010 	movt	r0, #57360	; 0xe010
8070323c:	ebfffec0 	bl	80702d44 <out16>
80703240:	e3a03000 	mov	r3, #0
80703244:	e1a00003 	mov	r0, r3
80703248:	e24bd004 	sub	sp, fp, #4
8070324c:	e8bd8800 	pop	{fp, pc}

80703250 <sd_spin_init_mem_card>:
80703250:	e92d4800 	push	{fp, lr}
80703254:	e28db004 	add	fp, sp, #4
80703258:	e24dd010 	sub	sp, sp, #16
8070325c:	e3a00024 	mov	r0, #36	; 0x24
80703260:	e34e0010 	movt	r0, #57360	; 0xe010
80703264:	ebfffe9f 	bl	80702ce8 <in32>
80703268:	e50b000c 	str	r0, [fp, #-12]
8070326c:	e51b300c 	ldr	r3, [fp, #-12]
80703270:	e2033801 	and	r3, r3, #65536	; 0x10000
80703274:	e3530000 	cmp	r3, #0
80703278:	1a000001 	bne	80703284 <sd_spin_init_mem_card+0x34>
8070327c:	e3e03000 	mvn	r3, #0
80703280:	ea00007f 	b	80703484 <sd_spin_init_mem_card+0x234>
80703284:	e3a00e7d 	mov	r0, #2000	; 0x7d0
80703288:	ebfffd59 	bl	807027f4 <usleep>
8070328c:	e3a03000 	mov	r3, #0
80703290:	e3a02000 	mov	r2, #0
80703294:	e3a01000 	mov	r1, #0
80703298:	e3a00000 	mov	r0, #0
8070329c:	ebffff86 	bl	807030bc <sd_spin_send_cmd>
807032a0:	e50b0010 	str	r0, [fp, #-16]
807032a4:	e51b3010 	ldr	r3, [fp, #-16]
807032a8:	e3530000 	cmp	r3, #0
807032ac:	0a000001 	beq	807032b8 <sd_spin_init_mem_card+0x68>
807032b0:	e3e03001 	mvn	r3, #1
807032b4:	ea000072 	b	80703484 <sd_spin_init_mem_card+0x234>
807032b8:	e3a03000 	mov	r3, #0
807032bc:	e30021aa 	movw	r2, #426	; 0x1aa
807032c0:	e3a01000 	mov	r1, #0
807032c4:	e3a00b02 	mov	r0, #2048	; 0x800
807032c8:	ebffff7b 	bl	807030bc <sd_spin_send_cmd>
807032cc:	e50b0010 	str	r0, [fp, #-16]
807032d0:	e51b3010 	ldr	r3, [fp, #-16]
807032d4:	e3530000 	cmp	r3, #0
807032d8:	0a000001 	beq	807032e4 <sd_spin_init_mem_card+0x94>
807032dc:	e3e03002 	mvn	r3, #2
807032e0:	ea000067 	b	80703484 <sd_spin_init_mem_card+0x234>
807032e4:	e3a00010 	mov	r0, #16
807032e8:	e34e0010 	movt	r0, #57360	; 0xe010
807032ec:	ebfffe7d 	bl	80702ce8 <in32>
807032f0:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
807032f4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807032f8:	e30021aa 	movw	r2, #426	; 0x1aa
807032fc:	e1530002 	cmp	r3, r2
80703300:	0a000001 	beq	8070330c <sd_spin_init_mem_card+0xbc>
80703304:	e3e03003 	mvn	r3, #3
80703308:	ea00005d 	b	80703484 <sd_spin_init_mem_card+0x234>
8070330c:	e3a03000 	mov	r3, #0
80703310:	e3a02000 	mov	r2, #0
80703314:	e3a01000 	mov	r1, #0
80703318:	e3a00c37 	mov	r0, #14080	; 0x3700
8070331c:	ebffff66 	bl	807030bc <sd_spin_send_cmd>
80703320:	e50b0010 	str	r0, [fp, #-16]
80703324:	e51b3010 	ldr	r3, [fp, #-16]
80703328:	e3530000 	cmp	r3, #0
8070332c:	0a000001 	beq	80703338 <sd_spin_init_mem_card+0xe8>
80703330:	e3e03004 	mvn	r3, #4
80703334:	ea000052 	b	80703484 <sd_spin_init_mem_card+0x234>
80703338:	e3a03000 	mov	r3, #0
8070333c:	e3a02000 	mov	r2, #0
80703340:	e3442030 	movt	r2, #16432	; 0x4030
80703344:	e3a01000 	mov	r1, #0
80703348:	e3a00ca9 	mov	r0, #43264	; 0xa900
8070334c:	ebffff5a 	bl	807030bc <sd_spin_send_cmd>
80703350:	e50b0010 	str	r0, [fp, #-16]
80703354:	e51b3010 	ldr	r3, [fp, #-16]
80703358:	e3530000 	cmp	r3, #0
8070335c:	0a000001 	beq	80703368 <sd_spin_init_mem_card+0x118>
80703360:	e3e03004 	mvn	r3, #4
80703364:	ea000046 	b	80703484 <sd_spin_init_mem_card+0x234>
80703368:	e3a00010 	mov	r0, #16
8070336c:	e34e0010 	movt	r0, #57360	; 0xe010
80703370:	ebfffe5c 	bl	80702ce8 <in32>
80703374:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80703378:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
8070337c:	e3530000 	cmp	r3, #0
80703380:	aaffffe1 	bge	8070330c <sd_spin_init_mem_card+0xbc>
80703384:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80703388:	e2033101 	and	r3, r3, #1073741824	; 0x40000000
8070338c:	e3530000 	cmp	r3, #0
80703390:	0a000002 	beq	807033a0 <sd_spin_init_mem_card+0x150>
80703394:	e3a03001 	mov	r3, #1
80703398:	e50b3008 	str	r3, [fp, #-8]
8070339c:	ea000001 	b	807033a8 <sd_spin_init_mem_card+0x158>
807033a0:	e3a03000 	mov	r3, #0
807033a4:	e50b3008 	str	r3, [fp, #-8]
807033a8:	e3a03000 	mov	r3, #0
807033ac:	e3a02000 	mov	r2, #0
807033b0:	e3a01000 	mov	r1, #0
807033b4:	e3a00c02 	mov	r0, #512	; 0x200
807033b8:	ebffff3f 	bl	807030bc <sd_spin_send_cmd>
807033bc:	e50b0010 	str	r0, [fp, #-16]
807033c0:	e51b3010 	ldr	r3, [fp, #-16]
807033c4:	e3530000 	cmp	r3, #0
807033c8:	0a000001 	beq	807033d4 <sd_spin_init_mem_card+0x184>
807033cc:	e3e03005 	mvn	r3, #5
807033d0:	ea00002b 	b	80703484 <sd_spin_init_mem_card+0x234>
807033d4:	e3a03000 	mov	r3, #0
807033d8:	e3a02000 	mov	r2, #0
807033dc:	e3a01000 	mov	r1, #0
807033e0:	e3a00c03 	mov	r0, #768	; 0x300
807033e4:	ebffff34 	bl	807030bc <sd_spin_send_cmd>
807033e8:	e50b0010 	str	r0, [fp, #-16]
807033ec:	e51b3010 	ldr	r3, [fp, #-16]
807033f0:	e3530000 	cmp	r3, #0
807033f4:	0a000001 	beq	80703400 <sd_spin_init_mem_card+0x1b0>
807033f8:	e3e03006 	mvn	r3, #6
807033fc:	ea000020 	b	80703484 <sd_spin_init_mem_card+0x234>
80703400:	e3a00010 	mov	r0, #16
80703404:	e34e0010 	movt	r0, #57360	; 0xe010
80703408:	ebfffe36 	bl	80702ce8 <in32>
8070340c:	e1a03000 	mov	r3, r0
80703410:	e1a03823 	lsr	r3, r3, #16
80703414:	e1a03803 	lsl	r3, r3, #16
80703418:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
8070341c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80703420:	e3530000 	cmp	r3, #0
80703424:	0affffea 	beq	807033d4 <sd_spin_init_mem_card+0x184>
80703428:	e3a03000 	mov	r3, #0
8070342c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80703430:	e3a01000 	mov	r1, #0
80703434:	e3a00c09 	mov	r0, #2304	; 0x900
80703438:	ebffff1f 	bl	807030bc <sd_spin_send_cmd>
8070343c:	e50b0010 	str	r0, [fp, #-16]
80703440:	e51b3010 	ldr	r3, [fp, #-16]
80703444:	e3530000 	cmp	r3, #0
80703448:	0a000001 	beq	80703454 <sd_spin_init_mem_card+0x204>
8070344c:	e3e03007 	mvn	r3, #7
80703450:	ea00000b 	b	80703484 <sd_spin_init_mem_card+0x234>
80703454:	e3a03000 	mov	r3, #0
80703458:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
8070345c:	e3a01000 	mov	r1, #0
80703460:	e3a00c07 	mov	r0, #1792	; 0x700
80703464:	ebffff14 	bl	807030bc <sd_spin_send_cmd>
80703468:	e50b0010 	str	r0, [fp, #-16]
8070346c:	e51b3010 	ldr	r3, [fp, #-16]
80703470:	e3530000 	cmp	r3, #0
80703474:	0a000001 	beq	80703480 <sd_spin_init_mem_card+0x230>
80703478:	e3e03008 	mvn	r3, #8
8070347c:	ea000000 	b	80703484 <sd_spin_init_mem_card+0x234>
80703480:	e51b3008 	ldr	r3, [fp, #-8]
80703484:	e1a00003 	mov	r0, r3
80703488:	e24bd004 	sub	sp, fp, #4
8070348c:	e8bd8800 	pop	{fp, pc}

80703490 <sd_dma_spin_read>:
80703490:	e92d4800 	push	{fp, lr}
80703494:	e28db004 	add	fp, sp, #4
80703498:	e24dd020 	sub	sp, sp, #32
8070349c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
807034a0:	e1a03001 	mov	r3, r1
807034a4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
807034a8:	e14b31ba 	strh	r3, [fp, #-26]	; 0xffffffe6
807034ac:	e3a00024 	mov	r0, #36	; 0x24
807034b0:	e34e0010 	movt	r0, #57360	; 0xe010
807034b4:	ebfffe0b 	bl	80702ce8 <in32>
807034b8:	e50b0008 	str	r0, [fp, #-8]
807034bc:	e51b3008 	ldr	r3, [fp, #-8]
807034c0:	e2033801 	and	r3, r3, #65536	; 0x10000
807034c4:	e3530000 	cmp	r3, #0
807034c8:	1a000001 	bne	807034d4 <sd_dma_spin_read+0x44>
807034cc:	e3e03000 	mvn	r3, #0
807034d0:	ea000036 	b	807035b0 <sd_dma_spin_read+0x120>
807034d4:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
807034d8:	e3a00000 	mov	r0, #0
807034dc:	e34e0010 	movt	r0, #57360	; 0xe010
807034e0:	ebfffe24 	bl	80702d78 <out32>
807034e4:	e15b11ba 	ldrh	r1, [fp, #-26]	; 0xffffffe6
807034e8:	e3a03001 	mov	r3, #1
807034ec:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
807034f0:	e3a00c12 	mov	r0, #4608	; 0x1200
807034f4:	ebfffef0 	bl	807030bc <sd_spin_send_cmd>
807034f8:	e50b000c 	str	r0, [fp, #-12]
807034fc:	e51b300c 	ldr	r3, [fp, #-12]
80703500:	e3530000 	cmp	r3, #0
80703504:	0a000001 	beq	80703510 <sd_dma_spin_read+0x80>
80703508:	e3e03001 	mvn	r3, #1
8070350c:	ea000027 	b	807035b0 <sd_dma_spin_read+0x120>
80703510:	e3a00030 	mov	r0, #48	; 0x30
80703514:	e34e0010 	movt	r0, #57360	; 0xe010
80703518:	ebfffde7 	bl	80702cbc <in16>
8070351c:	e1a03000 	mov	r3, r0
80703520:	e14b30be 	strh	r3, [fp, #-14]
80703524:	e15b30be 	ldrh	r3, [fp, #-14]
80703528:	e6bf3073 	sxth	r3, r3
8070352c:	e3530000 	cmp	r3, #0
80703530:	aa000005 	bge	8070354c <sd_dma_spin_read+0xbc>
80703534:	e30f13ff 	movw	r1, #62463	; 0xf3ff
80703538:	e3a00032 	mov	r0, #50	; 0x32
8070353c:	e34e0010 	movt	r0, #57360	; 0xe010
80703540:	ebfffdff 	bl	80702d44 <out16>
80703544:	e3e03002 	mvn	r3, #2
80703548:	ea000018 	b	807035b0 <sd_dma_spin_read+0x120>
8070354c:	e15b30be 	ldrh	r3, [fp, #-14]
80703550:	e2033008 	and	r3, r3, #8
80703554:	e3530000 	cmp	r3, #0
80703558:	0a00000b 	beq	8070358c <sd_dma_spin_read+0xfc>
8070355c:	e3a01008 	mov	r1, #8
80703560:	e3a00030 	mov	r0, #48	; 0x30
80703564:	e34e0010 	movt	r0, #57360	; 0xe010
80703568:	ebfffdf5 	bl	80702d44 <out16>
8070356c:	e3a00000 	mov	r0, #0
80703570:	e34e0010 	movt	r0, #57360	; 0xe010
80703574:	ebfffddb 	bl	80702ce8 <in32>
80703578:	e1a03000 	mov	r3, r0
8070357c:	e1a01003 	mov	r1, r3
80703580:	e3a00000 	mov	r0, #0
80703584:	e34e0010 	movt	r0, #57360	; 0xe010
80703588:	ebfffdfa 	bl	80702d78 <out32>
8070358c:	e15b30be 	ldrh	r3, [fp, #-14]
80703590:	e2033002 	and	r3, r3, #2
80703594:	e3530000 	cmp	r3, #0
80703598:	0affffdc 	beq	80703510 <sd_dma_spin_read+0x80>
8070359c:	e3a01002 	mov	r1, #2
807035a0:	e3a00030 	mov	r0, #48	; 0x30
807035a4:	e34e0010 	movt	r0, #57360	; 0xe010
807035a8:	ebfffde5 	bl	80702d44 <out16>
807035ac:	e3a03000 	mov	r3, #0
807035b0:	e1a00003 	mov	r0, r3
807035b4:	e24bd004 	sub	sp, fp, #4
807035b8:	e8bd8800 	pop	{fp, pc}

807035bc <sd_dma_spin_write>:
807035bc:	e92d4800 	push	{fp, lr}
807035c0:	e28db004 	add	fp, sp, #4
807035c4:	e24dd020 	sub	sp, sp, #32
807035c8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
807035cc:	e1a03001 	mov	r3, r1
807035d0:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
807035d4:	e14b31ba 	strh	r3, [fp, #-26]	; 0xffffffe6
807035d8:	e3a00024 	mov	r0, #36	; 0x24
807035dc:	e34e0010 	movt	r0, #57360	; 0xe010
807035e0:	ebfffdc0 	bl	80702ce8 <in32>
807035e4:	e50b0008 	str	r0, [fp, #-8]
807035e8:	e51b3008 	ldr	r3, [fp, #-8]
807035ec:	e2033801 	and	r3, r3, #65536	; 0x10000
807035f0:	e3530000 	cmp	r3, #0
807035f4:	1a000001 	bne	80703600 <sd_dma_spin_write+0x44>
807035f8:	e3e03000 	mvn	r3, #0
807035fc:	ea000036 	b	807036dc <sd_dma_spin_write+0x120>
80703600:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
80703604:	e3a00000 	mov	r0, #0
80703608:	e34e0010 	movt	r0, #57360	; 0xe010
8070360c:	ebfffdd9 	bl	80702d78 <out32>
80703610:	e15b11ba 	ldrh	r1, [fp, #-26]	; 0xffffffe6
80703614:	e3a03002 	mov	r3, #2
80703618:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
8070361c:	e3a00c19 	mov	r0, #6400	; 0x1900
80703620:	ebfffea5 	bl	807030bc <sd_spin_send_cmd>
80703624:	e50b000c 	str	r0, [fp, #-12]
80703628:	e51b300c 	ldr	r3, [fp, #-12]
8070362c:	e3530000 	cmp	r3, #0
80703630:	0a000001 	beq	8070363c <sd_dma_spin_write+0x80>
80703634:	e3e03001 	mvn	r3, #1
80703638:	ea000027 	b	807036dc <sd_dma_spin_write+0x120>
8070363c:	e3a00030 	mov	r0, #48	; 0x30
80703640:	e34e0010 	movt	r0, #57360	; 0xe010
80703644:	ebfffd9c 	bl	80702cbc <in16>
80703648:	e1a03000 	mov	r3, r0
8070364c:	e14b30be 	strh	r3, [fp, #-14]
80703650:	e15b30be 	ldrh	r3, [fp, #-14]
80703654:	e6bf3073 	sxth	r3, r3
80703658:	e3530000 	cmp	r3, #0
8070365c:	aa000005 	bge	80703678 <sd_dma_spin_write+0xbc>
80703660:	e30f13ff 	movw	r1, #62463	; 0xf3ff
80703664:	e3a00032 	mov	r0, #50	; 0x32
80703668:	e34e0010 	movt	r0, #57360	; 0xe010
8070366c:	ebfffdb4 	bl	80702d44 <out16>
80703670:	e3e03002 	mvn	r3, #2
80703674:	ea000018 	b	807036dc <sd_dma_spin_write+0x120>
80703678:	e15b30be 	ldrh	r3, [fp, #-14]
8070367c:	e2033008 	and	r3, r3, #8
80703680:	e3530000 	cmp	r3, #0
80703684:	0a00000b 	beq	807036b8 <sd_dma_spin_write+0xfc>
80703688:	e3a01008 	mov	r1, #8
8070368c:	e3a00030 	mov	r0, #48	; 0x30
80703690:	e34e0010 	movt	r0, #57360	; 0xe010
80703694:	ebfffdaa 	bl	80702d44 <out16>
80703698:	e3a00000 	mov	r0, #0
8070369c:	e34e0010 	movt	r0, #57360	; 0xe010
807036a0:	ebfffd90 	bl	80702ce8 <in32>
807036a4:	e1a03000 	mov	r3, r0
807036a8:	e1a01003 	mov	r1, r3
807036ac:	e3a00000 	mov	r0, #0
807036b0:	e34e0010 	movt	r0, #57360	; 0xe010
807036b4:	ebfffdaf 	bl	80702d78 <out32>
807036b8:	e15b30be 	ldrh	r3, [fp, #-14]
807036bc:	e2033002 	and	r3, r3, #2
807036c0:	e3530000 	cmp	r3, #0
807036c4:	0affffdc 	beq	8070363c <sd_dma_spin_write+0x80>
807036c8:	e3a01002 	mov	r1, #2
807036cc:	e3a00030 	mov	r0, #48	; 0x30
807036d0:	e34e0010 	movt	r0, #57360	; 0xe010
807036d4:	ebfffd9a 	bl	80702d44 <out16>
807036d8:	e3a03000 	mov	r3, #0
807036dc:	e1a00003 	mov	r0, r3
807036e0:	e24bd004 	sub	sp, fp, #4
807036e4:	e8bd8800 	pop	{fp, pc}
807036e8:	000003a2 	andeq	r0, r0, r2, lsr #7
807036ec:	3a8e0004 	bcc	7ea83704 <__high_exec_veneer+0x7e48336c>
807036f0:	01048070 	tsteq	r4, r0, ror r0
807036f4:	807011fc 	ldrshthi	r1, [r0], #-28	; 0xffffffe4
807036f8:	703e4d0c 	eorsvc	r4, lr, ip, lsl #26
807036fc:	70128580 	andsvc	r8, r2, r0, lsl #11
80703700:	702c9080 	eorvc	r9, ip, r0, lsl #1
80703704:	000a5880 	andeq	r5, sl, r0, lsl #17
80703708:	703c4900 	eorsvc	r4, ip, r0, lsl #18
8070370c:	08010280 	stmdaeq	r1, {r7, r9}
80703710:	8070124d 	rsbshi	r1, r0, sp, asr #4
80703714:	00387503 	eorseq	r7, r8, r3, lsl #10
80703718:	00251b03 	eoreq	r1, r5, r3, lsl #22
8070371c:	01020000 	mrseq	r0, (UNDEF: 2)
80703720:	70124f06 	andsvc	r4, r2, r6, lsl #30
80703724:	07020280 	streq	r0, [r2, -r0, lsl #5]
80703728:	8070125b 	rsbshi	r1, r0, fp, asr r2
8070372c:	36317503 	ldrtcc	r7, [r1], -r3, lsl #10
80703730:	3d1d0300 	ldccc	3, cr0, [sp, #-0]
80703734:	02000000 	andeq	r0, r0, #0
80703738:	12f90502 	rscsne	r0, r9, #8388608	; 0x800000
8070373c:	04028070 	streq	r8, [r2], #-112	; 0xffffff90
80703740:	7012a807 	andsvc	sl, r2, r7, lsl #16
80703744:	33750380 	cmncc	r5, #128, 6
80703748:	1f030032 	svcne	0x00030032
8070374c:	00000056 	andeq	r0, r0, r6, asr r0
80703750:	69050404 	stmdbvs	r5, {r2, sl}
80703754:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
80703758:	12a30704 	adcne	r0, r3, #4, 14	; 0x100000
8070375c:	08028070 	stmdaeq	r2, {r4, r5, r6, pc}
80703760:	70129e07 	andsvc	r9, r2, r7, lsl #28
80703764:	05080280 	streq	r0, [r8, #-640]	; 0xfffffd80
80703768:	807012de 	ldrsbthi	r1, [r0], #-46	; 0xffffffd2
8070376c:	e3050402 	movw	r0, #21506	; 0x5402
80703770:	05807012 	streq	r7, [r0, #18]
80703774:	00386e69 	eorseq	r6, r8, r9, ror #28
80703778:	00251301 	eoreq	r1, r5, r1, lsl #6
8070377c:	2c900000 	ldccs	0, cr0, [r0], {0}
80703780:	002c8070 	eoreq	r8, ip, r0, ror r0
80703784:	9c010000 	stcls	0, cr0, [r1], {-0}
80703788:	000000b3 	strheq	r0, [r0], -r3
8070378c:	70594506 	subsvc	r4, r9, r6, lsl #10
80703790:	6f130180 	svcvs	0x00130180
80703794:	02000000 	andeq	r0, r0, #0
80703798:	07007491 			; <UNDEFINED> instruction: 0x07007491
8070379c:	80703e1e 	rsbshi	r3, r0, lr, lsl lr
807037a0:	003d1801 	eorseq	r1, sp, r1, lsl #16
807037a4:	2cbc0000 	ldccs	0, cr0, [ip]
807037a8:	002c8070 	eoreq	r8, ip, r0, ror r0
807037ac:	9c010000 	stcls	0, cr0, [r1], {-0}
807037b0:	000000db 	ldrdeq	r0, [r0], -fp
807037b4:	70594506 	subsvc	r4, r9, r6, lsl #10
807037b8:	6f180180 	svcvs	0x00180180
807037bc:	02000000 	andeq	r0, r0, #0
807037c0:	07007491 			; <UNDEFINED> instruction: 0x07007491
807037c4:	8070451a 	rsbshi	r4, r0, sl, lsl r5
807037c8:	006f1d01 	rsbeq	r1, pc, r1, lsl #26
807037cc:	2ce80000 	stclcs	0, cr0, [r8]
807037d0:	00288070 	eoreq	r8, r8, r0, ror r0
807037d4:	9c010000 	stcls	0, cr0, [r1], {-0}
807037d8:	00000103 	andeq	r0, r0, r3, lsl #2
807037dc:	70594506 	subsvc	r4, r9, r6, lsl #10
807037e0:	6f1d0180 	svcvs	0x001d0180
807037e4:	02000000 	andeq	r0, r0, #0
807037e8:	08007491 	stmdaeq	r0, {r0, r4, r7, sl, ip, sp, lr}
807037ec:	80703e23 	rsbshi	r3, r0, r3, lsr #28
807037f0:	2d102301 	ldccs	3, cr2, [r0, #-4]
807037f4:	00348070 	eorseq	r8, r4, r0, ror r0
807037f8:	9c010000 	stcls	0, cr0, [r1], {-0}
807037fc:	00000135 	andeq	r0, r0, r5, lsr r1
80703800:	70594506 	subsvc	r4, r9, r6, lsl #10
80703804:	6f230180 	svcvs	0x00230180
80703808:	02000000 	andeq	r0, r0, #0
8070380c:	29067491 	stmdbcs	r6, {r0, r4, r7, sl, ip, sp, lr}
80703810:	01807045 	orreq	r7, r0, r5, asr #32
80703814:	00002523 	andeq	r2, r0, r3, lsr #10
80703818:	73910200 	orrsvc	r0, r1, #0, 4
8070381c:	3e420800 	cdpcc	8, 4, cr0, cr2, cr0, {0}
80703820:	28018070 	stmdacs	r1, {r4, r5, r6, pc}
80703824:	80702d44 	rsbshi	r2, r0, r4, asr #26
80703828:	00000034 	andeq	r0, r0, r4, lsr r0
8070382c:	01679c01 	cmneq	r7, r1, lsl #24
80703830:	45060000 	strmi	r0, [r6, #-0]
80703834:	01807059 	orreq	r7, r0, r9, asr r0
80703838:	00006f28 	andeq	r6, r0, r8, lsr #30
8070383c:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80703840:	70452906 	subvc	r2, r5, r6, lsl #18
80703844:	3d280180 	stfccs	f0, [r8, #-512]!	; 0xfffffe00
80703848:	02000000 	andeq	r0, r0, #0
8070384c:	08007291 	stmdaeq	r0, {r0, r4, r7, r9, ip, sp, lr}
80703850:	8070452e 	rsbshi	r4, r0, lr, lsr #10
80703854:	2d782d01 	ldclcs	13, cr2, [r8, #-4]!
80703858:	00308070 	eorseq	r8, r0, r0, ror r0
8070385c:	9c010000 	stcls	0, cr0, [r1], {-0}
80703860:	00000199 	muleq	r0, r9, r1
80703864:	70594506 	subsvc	r4, r9, r6, lsl #10
80703868:	6f2d0180 	svcvs	0x002d0180
8070386c:	02000000 	andeq	r0, r0, #0
80703870:	29067491 	stmdbcs	r6, {r0, r4, r7, sl, ip, sp, lr}
80703874:	01807045 	orreq	r7, r0, r5, asr #32
80703878:	00006f2d 	andeq	r6, r0, sp, lsr #30
8070387c:	70910200 	addsvc	r0, r1, r0, lsl #4
80703880:	3ea70900 	cdpcc	9, 10, cr0, cr7, cr0, {0}
80703884:	19028070 	stmdbne	r2, {r4, r5, r6, pc}
80703888:	80702da8 	rsbshi	r2, r0, r8, lsr #27
8070388c:	00000138 	andeq	r0, r0, r8, lsr r1
80703890:	01cb9c01 	biceq	r9, fp, r1, lsl #24
80703894:	120a0000 	andne	r0, sl, #0
80703898:	0280703e 	addeq	r7, r0, #62	; 0x3e
8070389c:	0000441b 	andeq	r4, r0, fp, lsl r4
807038a0:	76910200 	ldrvc	r0, [r1], r0, lsl #4
807038a4:	703eaf0a 	eorsvc	sl, lr, sl, lsl #30
807038a8:	2c1c0280 	lfmcs	f0, 4, [ip], {128}	; 0x80
807038ac:	02000000 	andeq	r0, r0, #0
807038b0:	0b007591 	bleq	80720efc <ptable+0x1b468>
807038b4:	80703e7d 	rsbshi	r3, r0, sp, ror lr
807038b8:	00444302 	subeq	r4, r4, r2, lsl #6
807038bc:	2ee00000 	cdpcs	0, 14, cr0, cr0, cr0, {0}
807038c0:	01dc8070 	bicseq	r8, ip, r0, ror r0
807038c4:	9c010000 	stcls	0, cr0, [r1], {-0}
807038c8:	000001f3 	strdeq	r0, [r0], -r3
807038cc:	646d630c 	strbtvs	r6, [sp], #-780	; 0xfffffcf4
807038d0:	44430200 	strbmi	r0, [r3], #-512	; 0xfffffe00
807038d4:	02000000 	andeq	r0, r0, #0
807038d8:	0d007691 	stceq	6, cr7, [r0, #-580]	; 0xfffffdbc
807038dc:	80703e28 	rsbshi	r3, r0, r8, lsr #28
807038e0:	00687802 	rsbeq	r7, r8, r2, lsl #16
807038e4:	30bc0000 	adcscc	r0, ip, r0
807038e8:	01948070 	orrseq	r8, r4, r0, ror r0
807038ec:	9c010000 	stcls	0, cr0, [r1], {-0}
807038f0:	0000026f 	andeq	r0, r0, pc, ror #4
807038f4:	646d630c 	strbtvs	r6, [sp], #-780	; 0xfffffcf4
807038f8:	44780200 	ldrbtmi	r0, [r8], #-512	; 0xfffffe00
807038fc:	02000000 	andeq	r0, r0, #0
80703900:	18066691 	stmdane	r6, {r0, r4, r7, r9, sl, sp, lr}
80703904:	0280703e 	addeq	r7, r0, #62	; 0x3e
80703908:	00004478 	andeq	r4, r0, r8, ror r4
8070390c:	64910200 	ldrvs	r0, [r1], #512	; 0x200
80703910:	6772610c 	ldrbvs	r6, [r2, -ip, lsl #2]!
80703914:	5d780200 	lfmpl	f0, 2, [r8, #-0]
80703918:	02000000 	andeq	r0, r0, #0
8070391c:	7a066091 	bvc	8089bb68 <ptable+0x1960d4>
80703920:	0280704e 	addeq	r7, r0, #78	; 0x4e
80703924:	00006878 	andeq	r6, r0, r8, ror r8
80703928:	5c910200 	lfmpl	f0, 4, [r1], {0}
8070392c:	7059a90a 	subsvc	sl, r9, sl, lsl #18
80703930:	5d7a0280 	lfmpl	f0, 2, [sl, #-512]!	; 0xfffffe00
80703934:	02000000 	andeq	r0, r0, #0
80703938:	760a7091 			; <UNDEFINED> instruction: 0x760a7091
8070393c:	0280703e 	addeq	r7, r0, #62	; 0x3e
80703940:	0000447b 	andeq	r4, r0, fp, ror r4
80703944:	6e910200 	cdpvs	2, 9, cr0, cr1, cr0, {0}
80703948:	703e120a 	eorsvc	r1, lr, sl, lsl #4
8070394c:	447b0280 	ldrbtmi	r0, [fp], #-640	; 0xfffffd80
80703950:	02000000 	andeq	r0, r0, #0
80703954:	0e007691 	mcreq	6, 0, r7, cr0, cr1, {4}
80703958:	80703e91 			; <UNDEFINED> instruction: 0x80703e91
8070395c:	0068ba02 	rsbeq	fp, r8, r2, lsl #20
80703960:	32500000 	subscc	r0, r0, #0
80703964:	02408070 	subeq	r8, r0, #112	; 0x70
80703968:	9c010000 	stcls	0, cr0, [r1], {-0}
8070396c:	000002c1 	andeq	r0, r0, r1, asr #5
80703970:	7059a90a 	subsvc	sl, r9, sl, lsl #18
80703974:	5dbc0280 	lfmpl	f0, 4, [ip, #512]!	; 0x200
80703978:	02000000 	andeq	r0, r0, #0
8070397c:	480a7091 	stmdami	sl, {r0, r4, r7, ip, sp, lr}
80703980:	0280703e 	addeq	r7, r0, #62	; 0x3e
80703984:	00005dbc 			; <UNDEFINED> instruction: 0x00005dbc
80703988:	68910200 	ldmvs	r1, {r9}
8070398c:	7465720f 	strbtvc	r7, [r5], #-527	; 0xfffffdf1
80703990:	68bd0200 	ldmfdvs	sp!, {r9}
80703994:	02000000 	andeq	r0, r0, #0
80703998:	390a6c91 	stmdbcc	sl, {r0, r4, r7, sl, fp, sp, lr}
8070399c:	0280703e 	addeq	r7, r0, #62	; 0x3e
807039a0:	000068bd 			; <UNDEFINED> instruction: 0x000068bd
807039a4:	74910200 	ldrvc	r0, [r1], #512	; 0x200
807039a8:	3e011000 	cdpcc	0, 0, cr1, cr1, cr0, {0}
807039ac:	02028070 	andeq	r8, r2, #112	; 0x70
807039b0:	00006801 	andeq	r6, r0, r1, lsl #16
807039b4:	70349000 	eorsvc	r9, r4, r0
807039b8:	00012c80 	andeq	r2, r1, r0, lsl #25
807039bc:	359c0100 	ldrcc	r0, [ip, #256]	; 0x100
807039c0:	11000003 	tstne	r0, r3
807039c4:	02006170 	andeq	r6, r0, #112, 2
807039c8:	005d0102 	subseq	r0, sp, r2, lsl #2
807039cc:	91020000 	mrsls	r0, (UNDEF: 2)
807039d0:	3e181264 	cdpcc	2, 1, cr1, cr8, cr4, {3}
807039d4:	02028070 	andeq	r8, r2, #112	; 0x70
807039d8:	00004401 	andeq	r4, r0, r1, lsl #8
807039dc:	62910200 	addsvs	r0, r1, #0, 4
807039e0:	703e8a12 	eorsvc	r8, lr, r2, lsl sl
807039e4:	01020280 	smlabbeq	r2, r0, r2, r0
807039e8:	0000005d 	andeq	r0, r0, sp, asr r0
807039ec:	135c9102 	cmpne	ip, #-2147483648	; 0x80000000
807039f0:	00746572 	rsbseq	r6, r4, r2, ror r5
807039f4:	68010402 	stmdavs	r1, {r1, sl}
807039f8:	02000000 	andeq	r0, r0, #0
807039fc:	66147091 			; <UNDEFINED> instruction: 0x66147091
80703a00:	0280703e 	addeq	r7, r0, #62	; 0x3e
80703a04:	00440105 	subeq	r0, r4, r5, lsl #2
80703a08:	91020000 	mrsls	r0, (UNDEF: 2)
80703a0c:	3e6e146e 	cdpcc	4, 6, cr1, cr14, cr14, {3}
80703a10:	06028070 			; <UNDEFINED> instruction: 0x06028070
80703a14:	00005d01 	andeq	r5, r0, r1, lsl #26
80703a18:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80703a1c:	3eb41500 	cdpcc	5, 11, cr1, cr4, cr0, {0}
80703a20:	39028070 	stmdbcc	r2, {r4, r5, r6, pc}
80703a24:	00006801 	andeq	r6, r0, r1, lsl #16
80703a28:	7035bc00 	eorsvc	fp, r5, r0, lsl #24
80703a2c:	00012c80 	andeq	r2, r1, r0, lsl #25
80703a30:	119c0100 	orrsne	r0, ip, r0, lsl #2
80703a34:	02006170 	andeq	r6, r0, #112, 2
80703a38:	005d0139 	subseq	r0, sp, r9, lsr r1
80703a3c:	91020000 	mrsls	r0, (UNDEF: 2)
80703a40:	3e181264 	cdpcc	2, 1, cr1, cr8, cr4, {3}
80703a44:	39028070 	stmdbcc	r2, {r4, r5, r6, pc}
80703a48:	00004401 	andeq	r4, r0, r1, lsl #8
80703a4c:	62910200 	addsvs	r0, r1, #0, 4
80703a50:	703e8a12 	eorsvc	r8, lr, r2, lsl sl
80703a54:	01390280 	teqeq	r9, r0, lsl #5
80703a58:	0000005d 	andeq	r0, r0, sp, asr r0
80703a5c:	135c9102 	cmpne	ip, #-2147483648	; 0x80000000
80703a60:	00746572 	rsbseq	r6, r4, r2, ror r5
80703a64:	68013b02 	stmdavs	r1, {r1, r8, r9, fp, ip, sp}
80703a68:	02000000 	andeq	r0, r0, #0
80703a6c:	66147091 			; <UNDEFINED> instruction: 0x66147091
80703a70:	0280703e 	addeq	r7, r0, #62	; 0x3e
80703a74:	0044013c 	subeq	r0, r4, ip, lsr r1
80703a78:	91020000 	mrsls	r0, (UNDEF: 2)
80703a7c:	3e6e146e 	cdpcc	4, 6, cr1, cr14, cr14, {3}
80703a80:	3d028070 	stccc	0, cr8, [r2, #-448]	; 0xfffffe40
80703a84:	00005d01 	andeq	r5, r0, r1, lsl #26
80703a88:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80703a8c:	11010000 	mrsne	r0, (UNDEF: 1)
80703a90:	130e2501 	movwne	r2, #58625	; 0xe501
80703a94:	1b0e030b 	blne	80a846c8 <ptable+0x37ec34>
80703a98:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
80703a9c:	00171006 	andseq	r1, r7, r6
80703aa0:	00240200 	eoreq	r0, r4, r0, lsl #4
80703aa4:	0b3e0b0b 	bleq	816866d8 <ptable+0xf80c44>
80703aa8:	00000e03 	andeq	r0, r0, r3, lsl #28
80703aac:	03001603 	movweq	r1, #1539	; 0x603
80703ab0:	3b0b3a08 	blcc	809d22d8 <ptable+0x2cc844>
80703ab4:	0013490b 	andseq	r4, r3, fp, lsl #18
80703ab8:	00240400 	eoreq	r0, r4, r0, lsl #8
80703abc:	0b3e0b0b 	bleq	816866f0 <ptable+0xf80c5c>
80703ac0:	00000803 	andeq	r0, r0, r3, lsl #16
80703ac4:	03012e05 	movweq	r2, #7685	; 0x1e05
80703ac8:	3b0b3a08 	blcc	809d22f0 <ptable+0x2cc85c>
80703acc:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
80703ad0:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80703ad4:	97184006 	ldrls	r4, [r8, -r6]
80703ad8:	13011942 	movwne	r1, #6466	; 0x1942
80703adc:	05060000 	streq	r0, [r6, #-0]
80703ae0:	3a0e0300 	bcc	80a846e8 <ptable+0x37ec54>
80703ae4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80703ae8:	00180213 	andseq	r0, r8, r3, lsl r2
80703aec:	012e0700 	teqeq	lr, r0, lsl #14
80703af0:	0b3a0e03 	bleq	81587304 <ptable+0xe81870>
80703af4:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
80703af8:	01111349 	tsteq	r1, r9, asr #6
80703afc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80703b00:	01194297 			; <UNDEFINED> instruction: 0x01194297
80703b04:	08000013 	stmdaeq	r0, {r0, r1, r4}
80703b08:	0e03012e 	adfeqsp	f0, f3, #0.5
80703b0c:	0b3b0b3a 	bleq	815c67fc <ptable+0xec0d68>
80703b10:	01111927 	tsteq	r1, r7, lsr #18
80703b14:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80703b18:	01194297 			; <UNDEFINED> instruction: 0x01194297
80703b1c:	09000013 	stmdbeq	r0, {r0, r1, r4}
80703b20:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
80703b24:	0b3a0e03 	bleq	81587338 <ptable+0xe818a4>
80703b28:	01110b3b 	tsteq	r1, fp, lsr fp
80703b2c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80703b30:	01194296 			; <UNDEFINED> instruction: 0x01194296
80703b34:	0a000013 	beq	80703b88 <sd_dma_spin_write+0x5cc>
80703b38:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
80703b3c:	0b3b0b3a 	bleq	815c682c <ptable+0xec0d98>
80703b40:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80703b44:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
80703b48:	03193f01 	tsteq	r9, #1, 30
80703b4c:	3b0b3a0e 	blcc	809d238c <ptable+0x2cc8f8>
80703b50:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
80703b54:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80703b58:	97184006 	ldrls	r4, [r8, -r6]
80703b5c:	13011942 	movwne	r1, #6466	; 0x1942
80703b60:	050c0000 	streq	r0, [ip, #-0]
80703b64:	3a080300 	bcc	8090476c <ptable+0x1fecd8>
80703b68:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80703b6c:	00180213 	andseq	r0, r8, r3, lsl r2
80703b70:	012e0d00 	teqeq	lr, r0, lsl #26
80703b74:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80703b78:	0b3b0b3a 	bleq	815c6868 <ptable+0xec0dd4>
80703b7c:	13491927 	movtne	r1, #39207	; 0x9927
80703b80:	06120111 			; <UNDEFINED> instruction: 0x06120111
80703b84:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
80703b88:	00130119 	andseq	r0, r3, r9, lsl r1
80703b8c:	012e0e00 	teqeq	lr, r0, lsl #28
80703b90:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80703b94:	0b3b0b3a 	bleq	815c6884 <ptable+0xec0df0>
80703b98:	01111349 	tsteq	r1, r9, asr #6
80703b9c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80703ba0:	01194296 			; <UNDEFINED> instruction: 0x01194296
80703ba4:	0f000013 	svceq	0x00000013
80703ba8:	08030034 	stmdaeq	r3, {r2, r4, r5}
80703bac:	0b3b0b3a 	bleq	815c689c <ptable+0xec0e08>
80703bb0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80703bb4:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
80703bb8:	03193f01 	tsteq	r9, #1, 30
80703bbc:	3b0b3a0e 	blcc	809d23fc <ptable+0x2cc968>
80703bc0:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
80703bc4:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80703bc8:	96184006 	ldrls	r4, [r8], -r6
80703bcc:	13011942 	movwne	r1, #6466	; 0x1942
80703bd0:	05110000 	ldreq	r0, [r1, #-0]
80703bd4:	3a080300 	bcc	809047dc <ptable+0x1fed48>
80703bd8:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
80703bdc:	00180213 	andseq	r0, r8, r3, lsl r2
80703be0:	00051200 	andeq	r1, r5, r0, lsl #4
80703be4:	0b3a0e03 	bleq	815873f8 <ptable+0xe81964>
80703be8:	1349053b 	movtne	r0, #38203	; 0x953b
80703bec:	00001802 	andeq	r1, r0, r2, lsl #16
80703bf0:	03003413 	movweq	r3, #1043	; 0x413
80703bf4:	3b0b3a08 	blcc	809d241c <ptable+0x2cc988>
80703bf8:	02134905 	andseq	r4, r3, #81920	; 0x14000
80703bfc:	14000018 	strne	r0, [r0], #-24	; 0xffffffe8
80703c00:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
80703c04:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
80703c08:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80703c0c:	2e150000 	cdpcs	0, 1, cr0, cr5, cr0, {0}
80703c10:	03193f01 	tsteq	r9, #1, 30
80703c14:	3b0b3a0e 	blcc	809d2454 <ptable+0x2cc9c0>
80703c18:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
80703c1c:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80703c20:	96184006 	ldrls	r4, [r8], -r6
80703c24:	00001942 	andeq	r1, r0, r2, asr #18
80703c28:	00001c00 	andeq	r1, r0, r0, lsl #24
80703c2c:	e8000200 	stmda	r0, {r9}
80703c30:	04807036 	streq	r7, [r0], #54	; 0x36
80703c34:	00000000 	andeq	r0, r0, r0
80703c38:	702c9000 	eorvc	r9, ip, r0
80703c3c:	000a5880 	andeq	r5, sl, r0, lsl #17
	...
80703c48:	0001b400 	andeq	fp, r1, r0, lsl #8
80703c4c:	6d000200 	sfmvs	f0, 4, [r0, #-0]
80703c50:	02000000 	andeq	r0, r0, #0
80703c54:	0d0efb01 	vstreq	d15, [lr, #-4]
80703c58:	01010100 	mrseq	r0, (UNDEF: 17)
80703c5c:	00000001 	andeq	r0, r0, r1
80703c60:	01000001 	tsteq	r0, r1
80703c64:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
80703c68:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
80703c6c:	72612f65 	rsbvc	r2, r1, #404	; 0x194
80703c70:	612f6863 	teqvs	pc, r3, ror #16
80703c74:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
80703c78:	656c2d61 	strbvs	r2, [ip, #-3425]!	; 0xfffff29f
80703c7c:	6d73612f 	ldfvse	f6, [r3, #-188]!	; 0xffffff44
80703c80:	69726400 	ldmdbvs	r2!, {sl, sp, lr}^
80703c84:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
80703c88:	0064732f 	rsbeq	r7, r4, pc, lsr #6
80703c8c:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
80703c90:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
80703c94:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
80703c98:	69000073 	stmdbvs	r0, {r0, r1, r4, r5, r6}
80703c9c:	00682e6f 	rsbeq	r2, r8, pc, ror #28
80703ca0:	73000001 	movwvc	r0, #1
80703ca4:	797a2d64 	ldmdbvc	sl!, {r2, r5, r6, r8, sl, fp, sp}^
80703ca8:	3037716e 	eorscc	r7, r7, lr, ror #2
80703cac:	632e3030 	teqvs	lr, #48	; 0x30
80703cb0:	00000200 	andeq	r0, r0, r0, lsl #4
80703cb4:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
80703cb8:	00682e73 	rsbeq	r2, r8, r3, ror lr
80703cbc:	00000003 	andeq	r0, r0, r3
80703cc0:	90020500 	andls	r0, r2, r0, lsl #10
80703cc4:	0380702c 	orreq	r7, r0, #44	; 0x2c
80703cc8:	67830113 	usada8vs	r3, r3, r1, r0
80703ccc:	85678385 	strbhi	r8, [r7, #-901]!	; 0xfffffc7b
80703cd0:	bb864b83 	bllt	7e896ae4 <__high_exec_veneer+0x7e29674c>
80703cd4:	67bb8567 	ldrvs	r8, [fp, r7, ror #10]!
80703cd8:	04679f85 	strbteq	r9, [r7], #-3973	; 0xfffff07b
80703cdc:	826a0302 	rsbhi	r0, sl, #134217728	; 0x8000000
80703ce0:	0200836a 	andeq	r8, r0, #-1476395007	; 0xa8000001
80703ce4:	2e060104 	adfcss	f0, f6, f4
80703ce8:	9f4bdb06 	svcls	0x004bdb06
80703cec:	01040200 	mrseq	r0, R12_usr
80703cf0:	d9062e06 	stmdble	r6, {r1, r2, r9, sl, fp, sp}
80703cf4:	9f4ba1bb 	svcls	0x004ba1bb
80703cf8:	859f4b89 	ldrhi	r4, [pc, #2953]	; 80704889 <C_SVC_handler+0xd>
80703cfc:	6a838583 	bvs	7e7e5310 <__high_exec_veneer+0x7e1e4f78>
80703d00:	152a029f 	strne	r0, [sl, #-671]!	; 0xfffffd61
80703d04:	020d032b 	andeq	r0, sp, #-1409286144	; 0xac000000
80703d08:	848a0168 	strhi	r0, [sl], #360	; 0x168
80703d0c:	84848585 	strhi	r8, [r4], #1413	; 0x585
80703d10:	825f0385 	subshi	r0, pc, #335544322	; 0x14000002
80703d14:	672e2403 	strvs	r2, [lr, -r3, lsl #8]!
80703d18:	da820c03 	ble	7e786d2c <__high_exec_veneer+0x7e186994>
80703d1c:	020083a0 	andeq	r8, r0, #160, 6	; 0x80000002
80703d20:	82060104 	andhi	r0, r6, #4, 2
80703d24:	02004b06 	andeq	r4, r0, #6144	; 0x1800
80703d28:	82060104 	andhi	r0, r6, #4, 2
80703d2c:	02040200 	andeq	r0, r4, #0, 4
80703d30:	9f4c0682 	svcls	0x004c0682
80703d34:	84838384 	strhi	r8, [r3], #900	; 0x384
80703d38:	4c314dbd 	ldcmi	13, cr4, [r1], #-756	; 0xfffffd0c
80703d3c:	a0304b31 	eorsge	r4, r0, r1, lsr fp
80703d40:	02009fa1 	andeq	r9, r0, #644	; 0x284
80703d44:	82060104 	andhi	r0, r6, #4, 2
80703d48:	83844c06 	orrhi	r4, r4, #1536	; 0x600
80703d4c:	6614032f 	ldrvs	r0, [r4], -pc, lsr #6
80703d50:	0200836a 	andeq	r8, r0, #-1476395007	; 0xa8000001
80703d54:	82060104 	andhi	r0, r6, #4, 2
80703d58:	bb4c4c06 	bllt	81a16d78 <ptable+0x13112e4>
80703d5c:	01040200 	mrseq	r0, R12_usr
80703d60:	4c066606 	stcmi	6, cr6, [r6], {6}
80703d64:	040200bb 	streq	r0, [r2], #-187	; 0xffffff45
80703d68:	06660601 	strbteq	r0, [r6], -r1, lsl #12
80703d6c:	0200834b 	andeq	r8, r0, #738197505	; 0x2c000001
80703d70:	82060104 	andhi	r0, r6, #4, 2
80703d74:	00bb4d06 	adcseq	r4, fp, r6, lsl #26
80703d78:	06010402 	streq	r0, [r1], -r2, lsl #8
80703d7c:	d84b0666 	stmdale	fp, {r1, r2, r5, r6, r9, sl}^
80703d80:	01040200 	mrseq	r0, R12_usr
80703d84:	4b066606 	blmi	8089d5a4 <ptable+0x197b10>
80703d88:	02006883 	andeq	r6, r0, #8585216	; 0x830000
80703d8c:	82060104 	andhi	r0, r6, #4, 2
80703d90:	bb4c6706 	bllt	81a1d9b0 <ptable+0x1317f1c>
80703d94:	01040200 	mrseq	r0, R12_usr
80703d98:	4e066606 	cfmadd32mi	mvax0, mvfx6, mvfx6, mvfx6
80703d9c:	040200bb 	streq	r0, [r2], #-187	; 0xffffff45
80703da0:	06660601 	strbteq	r0, [r6], -r1, lsl #12
80703da4:	bb69d74b 	bllt	82179ad8 <ptable+0x1a74044>
80703da8:	01040200 	mrseq	r0, R12_usr
80703dac:	4d066606 	stcmi	6, cr6, [r6, #-24]	; 0xffffffe8
80703db0:	040200bb 	streq	r0, [r2], #-187	; 0xffffff45
80703db4:	06660601 	strbteq	r0, [r6], -r1, lsl #12
80703db8:	19032f4b 	stmdbne	r3, {r0, r1, r3, r6, r8, r9, sl, fp, sp}
80703dbc:	0083db66 	addeq	sp, r3, r6, ror #22
80703dc0:	06010402 	streq	r0, [r1], -r2, lsl #8
80703dc4:	844d0682 	strbhi	r0, [sp], #-1666	; 0xfffff97e
80703dc8:	040200bb 	streq	r0, [r2], #-187	; 0xffffff45
80703dcc:	06660601 	strbteq	r0, [r6], -r1, lsl #12
80703dd0:	84839f4d 	strhi	r9, [r3], #3917	; 0xf4d
80703dd4:	f583834c 			; <UNDEFINED> instruction: 0xf583834c
80703dd8:	032f8384 	teqeq	pc, #132, 6	; 0x10000002
80703ddc:	83db6619 	bicshi	r6, fp, #26214400	; 0x1900000
80703de0:	01040200 	mrseq	r0, R12_usr
80703de4:	4d068206 	sfmmi	f0, 1, [r6, #-24]	; 0xffffffe8
80703de8:	0200bb84 	andeq	fp, r0, #132, 22	; 0x21000
80703dec:	66060104 	strvs	r0, [r6], -r4, lsl #2
80703df0:	839f4d06 	orrshi	r4, pc, #384	; 0x180
80703df4:	83844c84 	orrhi	r4, r4, #132, 24	; 0x8400
80703df8:	2f8384f4 	svccs	0x008384f4
80703dfc:	01000602 	tsteq	r0, r2, lsl #12
80703e00:	5f647301 	svcpl	0x00647301
80703e04:	5f616d64 	svcpl	0x00616d64
80703e08:	6e697073 	mcrvs	0, 3, r7, cr9, cr3, {3}
80703e0c:	6165725f 	cmnvs	r5, pc, asr r2
80703e10:	6d740064 	ldclvs	0, cr0, [r4, #-400]!	; 0xfffffe70
80703e14:	00363170 	eorseq	r3, r6, r0, ror r1
80703e18:	6e756f63 	cdpvs	15, 7, cr6, cr5, cr3, {3}
80703e1c:	6e690074 	mcrvs	0, 3, r0, cr9, cr4, {3}
80703e20:	6f003631 	svcvs	0x00003631
80703e24:	00387475 	eorseq	r7, r8, r5, ror r4
80703e28:	735f6473 	cmpvc	pc, #1929379840	; 0x73000000
80703e2c:	5f6e6970 	svcpl	0x006e6970
80703e30:	646e6573 	strbtvs	r6, [lr], #-1395	; 0xfffffa8d
80703e34:	646d635f 	strbtvs	r6, [sp], #-863	; 0xfffffca1
80703e38:	72616300 	rsbvc	r6, r1, #0, 6
80703e3c:	70797464 	rsbsvc	r7, r9, r4, ror #8
80703e40:	756f0065 	strbvc	r0, [pc, #-101]!	; 80703de3 <sd_dma_spin_write+0x827>
80703e44:	00363174 	eorseq	r3, r6, r4, ror r1
80703e48:	70736572 	rsbsvc	r6, r3, r2, ror r5
80703e4c:	69726400 	ldmdbvs	r2!, {sl, sp, lr}^
80703e50:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
80703e54:	2f64732f 	svccs	0x0064732f
80703e58:	7a2d6473 	bvc	8125d02c <ptable+0xb57598>
80703e5c:	37716e79 			; <UNDEFINED> instruction: 0x37716e79
80703e60:	2e303030 	mrccs	0, 1, r3, cr0, cr0, {1}
80703e64:	74730063 	ldrbtvc	r0, [r3], #-99	; 0xffffff9d
80703e68:	31657461 	cmncc	r5, r1, ror #8
80703e6c:	74730036 	ldrbtvc	r0, [r3], #-54	; 0xffffffca
80703e70:	33657461 	cmncc	r5, #1627389952	; 0x61000000
80703e74:	65720032 	ldrbvs	r0, [r2, #-50]!	; 0xffffffce
80703e78:	746c7573 	strbtvc	r7, [ip], #-1395	; 0xfffffa8d
80703e7c:	5f647300 	svcpl	0x00647300
80703e80:	6d617266 	sfmvs	f7, 2, [r1, #-408]!	; 0xfffffe68
80703e84:	6d635f65 	stclvs	15, cr5, [r3, #-404]!	; 0xfffffe6c
80703e88:	666f0064 	strbtvs	r0, [pc], -r4, rrx
80703e8c:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
80703e90:	5f647300 	svcpl	0x00647300
80703e94:	6e697073 	mcrvs	0, 3, r7, cr9, cr3, {3}
80703e98:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
80703e9c:	656d5f74 	strbvs	r5, [sp, #-3956]!	; 0xfffff08c
80703ea0:	61635f6d 	cmnvs	r3, sp, ror #30
80703ea4:	73006472 	movwvc	r6, #1138	; 0x472
80703ea8:	6e695f64 	cdpvs	15, 6, cr5, cr9, cr4, {3}
80703eac:	74007469 	strvc	r7, [r0], #-1129	; 0xfffffb97
80703eb0:	0038706d 	eorseq	r7, r8, sp, rrx
80703eb4:	645f6473 	ldrbvs	r6, [pc], #-1139	; 80703ebc <sd_dma_spin_write+0x900>
80703eb8:	735f616d 	cmpvc	pc, #1073741851	; 0x4000001b
80703ebc:	5f6e6970 	svcpl	0x006e6970
80703ec0:	74697277 	strbtvc	r7, [r9], #-631	; 0xfffffd89
80703ec4:	00000065 	andeq	r0, r0, r5, rrx
80703ec8:	0000000c 	andeq	r0, r0, ip
80703ecc:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80703ed0:	7c020001 	stcvc	0, cr0, [r2], {1}
80703ed4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80703ed8:	0000001c 	andeq	r0, r0, ip, lsl r0
80703edc:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80703ee0:	80702c90 			; <UNDEFINED> instruction: 0x80702c90
80703ee4:	0000002c 	andeq	r0, r0, ip, lsr #32
80703ee8:	8b040e42 	blhi	808077f8 <ptable+0x101d64>
80703eec:	0b0d4201 	bleq	80a546f8 <ptable+0x34ec64>
80703ef0:	420d0d4e 	andmi	r0, sp, #4992	; 0x1380
80703ef4:	00000ecb 	andeq	r0, r0, fp, asr #29
80703ef8:	0000001c 	andeq	r0, r0, ip, lsl r0
80703efc:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80703f00:	80702cbc 	ldrhthi	r2, [r0], #-204	; 0xffffff34
80703f04:	0000002c 	andeq	r0, r0, ip, lsr #32
80703f08:	8b040e42 	blhi	80807818 <ptable+0x101d84>
80703f0c:	0b0d4201 	bleq	80a54718 <ptable+0x34ec84>
80703f10:	420d0d4e 	andmi	r0, sp, #4992	; 0x1380
80703f14:	00000ecb 	andeq	r0, r0, fp, asr #29
80703f18:	0000001c 	andeq	r0, r0, ip, lsl r0
80703f1c:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80703f20:	80702ce8 	rsbshi	r2, r0, r8, ror #25
80703f24:	00000028 	andeq	r0, r0, r8, lsr #32
80703f28:	8b040e42 	blhi	80807838 <ptable+0x101da4>
80703f2c:	0b0d4201 	bleq	80a54738 <ptable+0x34eca4>
80703f30:	420d0d4c 	andmi	r0, sp, #76, 26	; 0x1300
80703f34:	00000ecb 	andeq	r0, r0, fp, asr #29
80703f38:	0000001c 	andeq	r0, r0, ip, lsl r0
80703f3c:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80703f40:	80702d10 	rsbshi	r2, r0, r0, lsl sp
80703f44:	00000034 	andeq	r0, r0, r4, lsr r0
80703f48:	8b040e42 	blhi	80807858 <ptable+0x101dc4>
80703f4c:	0b0d4201 	bleq	80a54758 <ptable+0x34ecc4>
80703f50:	420d0d52 	andmi	r0, sp, #5248	; 0x1480
80703f54:	00000ecb 	andeq	r0, r0, fp, asr #29
80703f58:	0000001c 	andeq	r0, r0, ip, lsl r0
80703f5c:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80703f60:	80702d44 	rsbshi	r2, r0, r4, asr #26
80703f64:	00000034 	andeq	r0, r0, r4, lsr r0
80703f68:	8b040e42 	blhi	80807878 <ptable+0x101de4>
80703f6c:	0b0d4201 	bleq	80a54778 <ptable+0x34ece4>
80703f70:	420d0d52 	andmi	r0, sp, #5248	; 0x1480
80703f74:	00000ecb 	andeq	r0, r0, fp, asr #29
80703f78:	0000001c 	andeq	r0, r0, ip, lsl r0
80703f7c:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80703f80:	80702d78 	rsbshi	r2, r0, r8, ror sp
80703f84:	00000030 	andeq	r0, r0, r0, lsr r0
80703f88:	8b040e42 	blhi	80807898 <ptable+0x101e04>
80703f8c:	0b0d4201 	bleq	80a54798 <ptable+0x34ed04>
80703f90:	420d0d50 	andmi	r0, sp, #80, 26	; 0x1400
80703f94:	00000ecb 	andeq	r0, r0, fp, asr #29
80703f98:	0000001c 	andeq	r0, r0, ip, lsl r0
80703f9c:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80703fa0:	80702da8 	rsbshi	r2, r0, r8, lsr #27
80703fa4:	00000138 	andeq	r0, r0, r8, lsr r1
80703fa8:	8b080e42 	blhi	809078b8 <ptable+0x201e24>
80703fac:	42018e02 	andmi	r8, r1, #2, 28
80703fb0:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80703fb4:	080d0c96 	stmdaeq	sp, {r1, r2, r4, r7, sl, fp}
80703fb8:	0000001c 	andeq	r0, r0, ip, lsl r0
80703fbc:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80703fc0:	80702ee0 	rsbshi	r2, r0, r0, ror #29
80703fc4:	000001dc 	ldrdeq	r0, [r0], -ip
80703fc8:	8b040e42 	blhi	808078d8 <ptable+0x101e44>
80703fcc:	0b0d4201 	bleq	80a547d8 <ptable+0x34ed44>
80703fd0:	0d0de602 	stceq	6, cr14, [sp, #-8]
80703fd4:	000ecb42 	andeq	ip, lr, r2, asr #22
80703fd8:	0000001c 	andeq	r0, r0, ip, lsl r0
80703fdc:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80703fe0:	807030bc 	ldrhthi	r3, [r0], #-12
80703fe4:	00000194 	muleq	r0, r4, r1
80703fe8:	8b080e42 	blhi	809078f8 <ptable+0x201e64>
80703fec:	42018e02 	andmi	r8, r1, #2, 28
80703ff0:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80703ff4:	080d0cc4 	stmdaeq	sp, {r2, r6, r7, sl, fp}
80703ff8:	00000020 	andeq	r0, r0, r0, lsr #32
80703ffc:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80704000:	80703250 	rsbshi	r3, r0, r0, asr r2
80704004:	00000240 	andeq	r0, r0, r0, asr #4
80704008:	8b080e42 	blhi	80907918 <ptable+0x201e84>
8070400c:	42018e02 	andmi	r8, r1, #2, 28
80704010:	03040b0c 	movweq	r0, #19212	; 0x4b0c
80704014:	0d0c011a 	stfeqs	f0, [ip, #-104]	; 0xffffff98
80704018:	00000008 	andeq	r0, r0, r8
8070401c:	0000001c 	andeq	r0, r0, ip, lsl r0
80704020:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80704024:	80703490 			; <UNDEFINED> instruction: 0x80703490
80704028:	0000012c 	andeq	r0, r0, ip, lsr #2
8070402c:	8b080e42 	blhi	8090793c <ptable+0x201ea8>
80704030:	42018e02 	andmi	r8, r1, #2, 28
80704034:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80704038:	080d0c90 	stmdaeq	sp, {r4, r7, sl, fp}
8070403c:	0000001c 	andeq	r0, r0, ip, lsl r0
80704040:	80703ec8 	rsbshi	r3, r0, r8, asr #29
80704044:	807035bc 	ldrhthi	r3, [r0], #-92	; 0xffffffa4
80704048:	0000012c 	andeq	r0, r0, ip, lsr #2
8070404c:	8b080e42 	blhi	8090795c <ptable+0x201ec8>
80704050:	42018e02 	andmi	r8, r1, #2, 28
80704054:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80704058:	080d0c90 	stmdaeq	sp, {r4, r7, sl, fp}
8070405c:	00002e41 	andeq	r2, r0, r1, asr #28
80704060:	61656100 	cmnvs	r5, r0, lsl #2
80704064:	01006962 	tsteq	r0, r2, ror #18
80704068:	00000024 	andeq	r0, r0, r4, lsr #32
8070406c:	412d3705 	teqmi	sp, r5, lsl #14
80704070:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80704074:	09010841 	stmdbeq	r1, {r0, r6, fp}
80704078:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
8070407c:	17011501 	strne	r1, [r1, -r1, lsl #10]
80704080:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80704084:	1e011a01 	vmlane.f32	s2, s2, s2
80704088:	00012206 	andeq	r2, r1, r6, lsl #4

8070408c <in32>:
8070408c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80704090:	e28db000 	add	fp, sp, #0
80704094:	e24dd00c 	sub	sp, sp, #12
80704098:	e50b0008 	str	r0, [fp, #-8]
8070409c:	e51b3008 	ldr	r3, [fp, #-8]
807040a0:	e5933000 	ldr	r3, [r3]
807040a4:	e1a00003 	mov	r0, r3
807040a8:	e24bd000 	sub	sp, fp, #0
807040ac:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
807040b0:	e12fff1e 	bx	lr

807040b4 <out32>:
807040b4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
807040b8:	e28db000 	add	fp, sp, #0
807040bc:	e24dd00c 	sub	sp, sp, #12
807040c0:	e50b0008 	str	r0, [fp, #-8]
807040c4:	e50b100c 	str	r1, [fp, #-12]
807040c8:	e51b3008 	ldr	r3, [fp, #-8]
807040cc:	e51b200c 	ldr	r2, [fp, #-12]
807040d0:	e5832000 	str	r2, [r3]
807040d4:	e1a00000 	nop			; (mov r0, r0)
807040d8:	e24bd000 	sub	sp, fp, #0
807040dc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
807040e0:	e12fff1e 	bx	lr

807040e4 <uart_init>:
807040e4:	e92d4800 	push	{fp, lr}
807040e8:	e28db004 	add	fp, sp, #4
807040ec:	e3011fff 	movw	r1, #8191	; 0x1fff
807040f0:	e301000c 	movw	r0, #4108	; 0x100c
807040f4:	e34e0000 	movt	r0, #57344	; 0xe000
807040f8:	ebffffed 	bl	807040b4 <out32>
807040fc:	eb00002d 	bl	807041b8 <uart_disable>
80704100:	e3a01003 	mov	r1, #3
80704104:	e3a00a01 	mov	r0, #4096	; 0x1000
80704108:	e34e0000 	movt	r0, #57344	; 0xe000
8070410c:	ebffffe8 	bl	807040b4 <out32>
80704110:	e3011fff 	movw	r1, #8191	; 0x1fff
80704114:	e3010014 	movw	r0, #4116	; 0x1014
80704118:	e34e0000 	movt	r0, #57344	; 0xe000
8070411c:	ebffffe4 	bl	807040b4 <out32>
80704120:	e3a01020 	mov	r1, #32
80704124:	e3010004 	movw	r0, #4100	; 0x1004
80704128:	e34e0000 	movt	r0, #57344	; 0xe000
8070412c:	ebffffe0 	bl	807040b4 <out32>
80704130:	e3a01020 	mov	r1, #32
80704134:	e3010020 	movw	r0, #4128	; 0x1020
80704138:	e34e0000 	movt	r0, #57344	; 0xe000
8070413c:	ebffffdc 	bl	807040b4 <out32>
80704140:	e3a01020 	mov	r1, #32
80704144:	e3010044 	movw	r0, #4164	; 0x1044
80704148:	e34e0000 	movt	r0, #57344	; 0xe000
8070414c:	ebffffd8 	bl	807040b4 <out32>
80704150:	e3a01000 	mov	r1, #0
80704154:	e301001c 	movw	r0, #4124	; 0x101c
80704158:	e34e0000 	movt	r0, #57344	; 0xe000
8070415c:	ebffffd4 	bl	807040b4 <out32>
80704160:	e3a0103e 	mov	r1, #62	; 0x3e
80704164:	e3010018 	movw	r0, #4120	; 0x1018
80704168:	e34e0000 	movt	r0, #57344	; 0xe000
8070416c:	ebffffd0 	bl	807040b4 <out32>
80704170:	e3a01006 	mov	r1, #6
80704174:	e3010034 	movw	r0, #4148	; 0x1034
80704178:	e34e0000 	movt	r0, #57344	; 0xe000
8070417c:	ebffffcc 	bl	807040b4 <out32>
80704180:	e3a01f4a 	mov	r1, #296	; 0x128
80704184:	e3a00a01 	mov	r0, #4096	; 0x1000
80704188:	e34e0000 	movt	r0, #57344	; 0xe000
8070418c:	ebffffc8 	bl	807040b4 <out32>
80704190:	e1a00000 	nop			; (mov r0, r0)
80704194:	e8bd8800 	pop	{fp, pc}

80704198 <uart_enable>:
80704198:	e92d4800 	push	{fp, lr}
8070419c:	e28db004 	add	fp, sp, #4
807041a0:	e3a01014 	mov	r1, #20
807041a4:	e3a00a01 	mov	r0, #4096	; 0x1000
807041a8:	e34e0000 	movt	r0, #57344	; 0xe000
807041ac:	ebffffc0 	bl	807040b4 <out32>
807041b0:	e1a00000 	nop			; (mov r0, r0)
807041b4:	e8bd8800 	pop	{fp, pc}

807041b8 <uart_disable>:
807041b8:	e92d4800 	push	{fp, lr}
807041bc:	e28db004 	add	fp, sp, #4
807041c0:	e3a01028 	mov	r1, #40	; 0x28
807041c4:	e3a00a01 	mov	r0, #4096	; 0x1000
807041c8:	e34e0000 	movt	r0, #57344	; 0xe000
807041cc:	ebffffb8 	bl	807040b4 <out32>
807041d0:	e1a00000 	nop			; (mov r0, r0)
807041d4:	e8bd8800 	pop	{fp, pc}

807041d8 <uart_spin_getbyte>:
807041d8:	e92d4800 	push	{fp, lr}
807041dc:	e28db004 	add	fp, sp, #4
807041e0:	e1a00000 	nop			; (mov r0, r0)
807041e4:	e301002c 	movw	r0, #4140	; 0x102c
807041e8:	e34e0000 	movt	r0, #57344	; 0xe000
807041ec:	ebffffa6 	bl	8070408c <in32>
807041f0:	e1a03000 	mov	r3, r0
807041f4:	e2033002 	and	r3, r3, #2
807041f8:	e3530000 	cmp	r3, #0
807041fc:	1afffff8 	bne	807041e4 <uart_spin_getbyte+0xc>
80704200:	e3010030 	movw	r0, #4144	; 0x1030
80704204:	e34e0000 	movt	r0, #57344	; 0xe000
80704208:	ebffff9f 	bl	8070408c <in32>
8070420c:	e1a03000 	mov	r3, r0
80704210:	e6ef3073 	uxtb	r3, r3
80704214:	e1a00003 	mov	r0, r3
80704218:	e8bd8800 	pop	{fp, pc}

8070421c <uart_spin_putbyte>:
8070421c:	e92d4800 	push	{fp, lr}
80704220:	e28db004 	add	fp, sp, #4
80704224:	e24dd008 	sub	sp, sp, #8
80704228:	e1a03000 	mov	r3, r0
8070422c:	e54b3005 	strb	r3, [fp, #-5]
80704230:	e1a00000 	nop			; (mov r0, r0)
80704234:	e301002c 	movw	r0, #4140	; 0x102c
80704238:	e34e0000 	movt	r0, #57344	; 0xe000
8070423c:	ebffff92 	bl	8070408c <in32>
80704240:	e1a03000 	mov	r3, r0
80704244:	e2033010 	and	r3, r3, #16
80704248:	e3530000 	cmp	r3, #0
8070424c:	1afffff8 	bne	80704234 <uart_spin_putbyte+0x18>
80704250:	e55b3005 	ldrb	r3, [fp, #-5]
80704254:	e1a01003 	mov	r1, r3
80704258:	e3010030 	movw	r0, #4144	; 0x1030
8070425c:	e34e0000 	movt	r0, #57344	; 0xe000
80704260:	ebffff93 	bl	807040b4 <out32>
80704264:	e1a00000 	nop			; (mov r0, r0)
80704268:	e24bd004 	sub	sp, fp, #4
8070426c:	e8bd8800 	pop	{fp, pc}
80704270:	0000012a 	andeq	r0, r0, sl, lsr #2
80704274:	439e0004 	orrsmi	r0, lr, #4
80704278:	01048070 	tsteq	r4, r0, ror r0
8070427c:	807011fc 	ldrshthi	r1, [r0], #-28	; 0xffffffe4
80704280:	70455f0c 	subvc	r5, r5, ip, lsl #30
80704284:	70128580 	andsvc	r8, r2, r0, lsl #11
80704288:	70408c80 	subvc	r8, r0, r0, lsl #25
8070428c:	0001e480 	andeq	lr, r1, r0, lsl #9
80704290:	70447300 	subvc	r7, r4, r0, lsl #6
80704294:	08010280 	stmdaeq	r1, {r7, r9}
80704298:	8070124d 	rsbshi	r1, r0, sp, asr #4
8070429c:	4f060102 	svcmi	0x00060102
807042a0:	02807012 	addeq	r7, r0, #18
807042a4:	125b0702 	subsne	r0, fp, #524288	; 0x80000
807042a8:	02028070 	andeq	r8, r2, #112	; 0x70
807042ac:	7012f905 	andsvc	pc, r2, r5, lsl #18
807042b0:	07040280 	streq	r0, [r4, -r0, lsl #5]
807042b4:	807012a8 	rsbshi	r1, r0, r8, lsr #5
807042b8:	69050403 	stmdbvs	r5, {r0, r1, sl}
807042bc:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
807042c0:	12a30704 	adcne	r0, r3, #4, 14	; 0x100000
807042c4:	08028070 	stmdaeq	r2, {r4, r5, r6, pc}
807042c8:	70129e07 	andsvc	r9, r2, r7, lsl #28
807042cc:	05080280 	streq	r0, [r8, #-640]	; 0xfffffd80
807042d0:	807012de 	ldrsbthi	r1, [r0], #-46	; 0xffffffd2
807042d4:	e3050402 	movw	r0, #21506	; 0x5402
807042d8:	04807012 	streq	r7, [r0], #18
807042dc:	8070451a 	rsbshi	r4, r0, sl, lsl r5
807042e0:	004f1d01 	subeq	r1, pc, r1, lsl #26
807042e4:	408c0000 	addmi	r0, ip, r0
807042e8:	00288070 	eoreq	r8, r8, r0, ror r0
807042ec:	9c010000 	stcls	0, cr0, [r1], {-0}
807042f0:	00000093 	muleq	r0, r3, r0
807042f4:	70594505 	subsvc	r4, r9, r5, lsl #10
807042f8:	4f1d0180 	svcmi	0x001d0180
807042fc:	02000000 	andeq	r0, r0, #0
80704300:	06007491 			; <UNDEFINED> instruction: 0x06007491
80704304:	8070452e 	rsbshi	r4, r0, lr, lsr #10
80704308:	40b42d01 	adcsmi	r2, r4, r1, lsl #26
8070430c:	00308070 	eorseq	r8, r0, r0, ror r0
80704310:	9c010000 	stcls	0, cr0, [r1], {-0}
80704314:	000000c5 	andeq	r0, r0, r5, asr #1
80704318:	70594505 	subsvc	r4, r9, r5, lsl #10
8070431c:	4f2d0180 	svcmi	0x002d0180
80704320:	02000000 	andeq	r0, r0, #0
80704324:	29057491 	stmdbcs	r5, {r0, r4, r7, sl, ip, sp, lr}
80704328:	01807045 	orreq	r7, r0, r5, asr #32
8070432c:	00004f2d 	andeq	r4, r0, sp, lsr #30
80704330:	70910200 	addsvc	r0, r1, r0, lsl #4
80704334:	451f0700 	ldrmi	r0, [pc, #-1792]	; 80703c3c <sd_dma_spin_write+0x680>
80704338:	13028070 	movwne	r8, #8304	; 0x2070
8070433c:	807040e4 	rsbshi	r4, r0, r4, ror #1
80704340:	000000b4 	strheq	r0, [r0], -r4
80704344:	34079c01 	strcc	r9, [r7], #-3073	; 0xfffff3ff
80704348:	02807045 	addeq	r7, r0, #69	; 0x45
8070434c:	7041982e 	subvc	r9, r1, lr, lsr #16
80704350:	00002080 	andeq	r2, r0, r0, lsl #1
80704354:	079c0100 	ldreq	r0, [ip, r0, lsl #2]
80704358:	80704540 	rsbshi	r4, r0, r0, asr #10
8070435c:	41b83402 			; <UNDEFINED> instruction: 0x41b83402
80704360:	00208070 	eoreq	r8, r0, r0, ror r0
80704364:	9c010000 	stcls	0, cr0, [r1], {-0}
80704368:	70457e08 	subvc	r7, r5, r8, lsl #28
8070436c:	253a0280 	ldrcs	r0, [sl, #-640]!	; 0xfffffd80
80704370:	d8000000 	stmdale	r0, {}	; <UNPREDICTABLE>
80704374:	44807041 	strmi	r7, [r0], #65	; 0x41
80704378:	01000000 	mrseq	r0, (UNDEF: 0)
8070437c:	454d099c 	strbmi	r0, [sp, #-2460]	; 0xfffff664
80704380:	40028070 	andmi	r8, r2, r0, ror r0
80704384:	8070421c 	rsbshi	r4, r0, ip, lsl r2
80704388:	00000054 	andeq	r0, r0, r4, asr r0
8070438c:	8b059c01 	blhi	8086b398 <ptable+0x165904>
80704390:	02807045 	addeq	r7, r0, #69	; 0x45
80704394:	00002540 	andeq	r2, r0, r0, asr #10
80704398:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
8070439c:	11010000 	mrsne	r0, (UNDEF: 1)
807043a0:	130e2501 	movwne	r2, #58625	; 0xe501
807043a4:	1b0e030b 	blne	80a84fd8 <ptable+0x37f544>
807043a8:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
807043ac:	00171006 	andseq	r1, r7, r6
807043b0:	00240200 	eoreq	r0, r4, r0, lsl #4
807043b4:	0b3e0b0b 	bleq	81686fe8 <ptable+0xf81554>
807043b8:	00000e03 	andeq	r0, r0, r3, lsl #28
807043bc:	0b002403 	bleq	8070d3d0 <ptable+0x793c>
807043c0:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
807043c4:	04000008 	streq	r0, [r0], #-8
807043c8:	0e03012e 	adfeqsp	f0, f3, #0.5
807043cc:	0b3b0b3a 	bleq	815c70bc <ptable+0xec1628>
807043d0:	13491927 	movtne	r1, #39207	; 0x9927
807043d4:	06120111 			; <UNDEFINED> instruction: 0x06120111
807043d8:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
807043dc:	00130119 	andseq	r0, r3, r9, lsl r1
807043e0:	00050500 	andeq	r0, r5, r0, lsl #10
807043e4:	0b3a0e03 	bleq	81587bf8 <ptable+0xe82164>
807043e8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
807043ec:	00001802 	andeq	r1, r0, r2, lsl #16
807043f0:	03012e06 	movweq	r2, #7686	; 0x1e06
807043f4:	3b0b3a0e 	blcc	809d2c34 <ptable+0x2cd1a0>
807043f8:	1119270b 	tstne	r9, fp, lsl #14
807043fc:	40061201 	andmi	r1, r6, r1, lsl #4
80704400:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
80704404:	00001301 	andeq	r1, r0, r1, lsl #6
80704408:	3f002e07 	svccc	0x00002e07
8070440c:	3a0e0319 	bcc	80a85078 <ptable+0x37f5e4>
80704410:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
80704414:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
80704418:	96184006 	ldrls	r4, [r8], -r6
8070441c:	00001942 	andeq	r1, r0, r2, asr #18
80704420:	3f002e08 	svccc	0x00002e08
80704424:	3a0e0319 	bcc	80a85090 <ptable+0x37f5fc>
80704428:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
8070442c:	11134919 	tstne	r3, r9, lsl r9
80704430:	40061201 	andmi	r1, r6, r1, lsl #4
80704434:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
80704438:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
8070443c:	03193f01 	tsteq	r9, #1, 30
80704440:	3b0b3a0e 	blcc	809d2c80 <ptable+0x2cd1ec>
80704444:	1119270b 	tstne	r9, fp, lsl #14
80704448:	40061201 	andmi	r1, r6, r1, lsl #4
8070444c:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
80704450:	1c000000 	stcne	0, cr0, [r0], {-0}
80704454:	02000000 	andeq	r0, r0, #0
80704458:	70427000 	subvc	r7, r2, r0
8070445c:	00000480 	andeq	r0, r0, r0, lsl #9
80704460:	8c000000 	stchi	0, cr0, [r0], {-0}
80704464:	e4807040 	str	r7, [r0], #64	; 0x40
80704468:	00000001 	andeq	r0, r0, r1
8070446c:	00000000 	andeq	r0, r0, r0
80704470:	a3000000 	movwge	r0, #0
80704474:	02000000 	andeq	r0, r0, #0
80704478:	00005a00 	andeq	r5, r0, r0, lsl #20
8070447c:	fb010200 	blx	80744c86 <ptable+0x3f1f2>
80704480:	01000d0e 	tsteq	r0, lr, lsl #26
80704484:	00010101 	andeq	r0, r1, r1, lsl #2
80704488:	00010000 	andeq	r0, r1, r0
8070448c:	2f2e0100 	svccs	0x002e0100
80704490:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
80704494:	2f656475 	svccs	0x00656475
80704498:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
8070449c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
807044a0:	2d613776 	stclcs	7, cr3, [r1, #-472]!	; 0xfffffe28
807044a4:	612f656c 	teqvs	pc, ip, ror #10
807044a8:	64006d73 	strvs	r6, [r0], #-3443	; 0xfffff28d
807044ac:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0xfffff68e
807044b0:	732f7372 	teqvc	pc, #-939524095	; 0xc8000001
807044b4:	61697265 	cmnvs	r9, r5, ror #4
807044b8:	6900006c 	stmdbvs	r0, {r2, r3, r5, r6}
807044bc:	00682e6f 	rsbeq	r2, r8, pc, ror #28
807044c0:	75000001 	strvc	r0, [r0, #-1]
807044c4:	2d747261 	lfmcs	f7, 2, [r4, #-388]!	; 0xfffffe7c
807044c8:	716e797a 	smcvc	59290	; 0xe79a
807044cc:	30303037 	eorscc	r3, r0, r7, lsr r0
807044d0:	0200632e 	andeq	r6, r0, #-1207959552	; 0xb8000000
807044d4:	00000000 	andeq	r0, r0, r0
807044d8:	408c0205 	addmi	r0, ip, r5, lsl #4
807044dc:	1d038070 	stcne	0, cr8, [r3, #-448]	; 0xfffffe40
807044e0:	034b8301 	movteq	r8, #45825	; 0xb301
807044e4:	679f820e 	ldrvs	r8, [pc, lr, lsl #4]
807044e8:	64030204 	strvs	r0, [r3], #-516	; 0xfffffdfc
807044ec:	30844c82 	addcc	r4, r4, r2, lsl #25
807044f0:	83868484 	orrhi	r8, r6, #132, 8	; 0x84000000
807044f4:	84838484 	strhi	r8, [r3], #1156	; 0x484
807044f8:	834c4d84 	movthi	r4, #52612	; 0xcd84
807044fc:	4d834c4d 	stcmi	12, cr4, [r3, #308]	; 0x134
80704500:	0402004b 	streq	r0, [r2], #-75	; 0xffffffb5
80704504:	062e0601 	strteq	r0, [lr], -r1, lsl #12
80704508:	9f4d9fd7 	svcls	0x004d9fd7
8070450c:	01040200 	mrseq	r0, R12_usr
80704510:	d7062e06 	strle	r2, [r6, -r6, lsl #28]
80704514:	0006029f 	muleq	r6, pc, r2	; <UNPREDICTABLE>
80704518:	6e690101 	powvse	f0, f1, f1
8070451c:	75003233 	strvc	r3, [r0, #-563]	; 0xfffffdcd
80704520:	5f747261 	svcpl	0x00747261
80704524:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
80704528:	74616400 	strbtvc	r6, [r1], #-1024	; 0xfffffc00
8070452c:	756f0061 	strbvc	r0, [pc, #-97]!	; 807044d3 <uart_spin_putbyte+0x2b7>
80704530:	00323374 	eorseq	r3, r2, r4, ror r3
80704534:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
80704538:	616e655f 	cmnvs	lr, pc, asr r5
8070453c:	00656c62 	rsbeq	r6, r5, r2, ror #24
80704540:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
80704544:	7369645f 	cmnvc	r9, #1593835520	; 0x5f000000
80704548:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
8070454c:	72617500 	rsbvc	r7, r1, #0, 10
80704550:	70735f74 	rsbsvc	r5, r3, r4, ror pc
80704554:	705f6e69 	subsvc	r6, pc, r9, ror #28
80704558:	79627475 	stmdbvc	r2!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
8070455c:	64006574 	strvs	r6, [r0], #-1396	; 0xfffffa8c
80704560:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0xfffff68e
80704564:	732f7372 	teqvc	pc, #-939524095	; 0xc8000001
80704568:	61697265 	cmnvs	r9, r5, ror #4
8070456c:	61752f6c 	cmnvs	r5, ip, ror #30
80704570:	7a2d7472 	bvc	81261740 <ptable+0xb5bcac>
80704574:	37716e79 			; <UNDEFINED> instruction: 0x37716e79
80704578:	2e303030 	mrccs	0, 1, r3, cr0, cr0, {1}
8070457c:	61750063 	cmnvs	r5, r3, rrx
80704580:	735f7472 	cmpvc	pc, #1912602624	; 0x72000000
80704584:	5f6e6970 	svcpl	0x006e6970
80704588:	62746567 	rsbsvs	r6, r4, #432013312	; 0x19c00000
8070458c:	00657479 	rsbeq	r7, r5, r9, ror r4
80704590:	0000000c 	andeq	r0, r0, ip
80704594:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80704598:	7c020001 	stcvc	0, cr0, [r2], {1}
8070459c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
807045a0:	0000001c 	andeq	r0, r0, ip, lsl r0
807045a4:	80704590 			; <UNDEFINED> instruction: 0x80704590
807045a8:	8070408c 	rsbshi	r4, r0, ip, lsl #1
807045ac:	00000028 	andeq	r0, r0, r8, lsr #32
807045b0:	8b040e42 	blhi	80807ec0 <ptable+0x10242c>
807045b4:	0b0d4201 	bleq	80a54dc0 <ptable+0x34f32c>
807045b8:	420d0d4c 	andmi	r0, sp, #76, 26	; 0x1300
807045bc:	00000ecb 	andeq	r0, r0, fp, asr #29
807045c0:	0000001c 	andeq	r0, r0, ip, lsl r0
807045c4:	80704590 			; <UNDEFINED> instruction: 0x80704590
807045c8:	807040b4 	ldrhthi	r4, [r0], #-4
807045cc:	00000030 	andeq	r0, r0, r0, lsr r0
807045d0:	8b040e42 	blhi	80807ee0 <ptable+0x10244c>
807045d4:	0b0d4201 	bleq	80a54de0 <ptable+0x34f34c>
807045d8:	420d0d50 	andmi	r0, sp, #80, 26	; 0x1400
807045dc:	00000ecb 	andeq	r0, r0, fp, asr #29
807045e0:	00000018 	andeq	r0, r0, r8, lsl r0
807045e4:	80704590 			; <UNDEFINED> instruction: 0x80704590
807045e8:	807040e4 	rsbshi	r4, r0, r4, ror #1
807045ec:	000000b4 	strheq	r0, [r0], -r4
807045f0:	8b080e42 	blhi	80907f00 <ptable+0x20246c>
807045f4:	42018e02 	andmi	r8, r1, #2, 28
807045f8:	00040b0c 	andeq	r0, r4, ip, lsl #22
807045fc:	00000018 	andeq	r0, r0, r8, lsl r0
80704600:	80704590 			; <UNDEFINED> instruction: 0x80704590
80704604:	80704198 			; <UNDEFINED> instruction: 0x80704198
80704608:	00000020 	andeq	r0, r0, r0, lsr #32
8070460c:	8b080e42 	blhi	80907f1c <ptable+0x202488>
80704610:	42018e02 	andmi	r8, r1, #2, 28
80704614:	00040b0c 	andeq	r0, r4, ip, lsl #22
80704618:	00000018 	andeq	r0, r0, r8, lsl r0
8070461c:	80704590 			; <UNDEFINED> instruction: 0x80704590
80704620:	807041b8 	ldrhthi	r4, [r0], #-24	; 0xffffffe8
80704624:	00000020 	andeq	r0, r0, r0, lsr #32
80704628:	8b080e42 	blhi	80907f38 <ptable+0x2024a4>
8070462c:	42018e02 	andmi	r8, r1, #2, 28
80704630:	00040b0c 	andeq	r0, r4, ip, lsl #22
80704634:	00000018 	andeq	r0, r0, r8, lsl r0
80704638:	80704590 			; <UNDEFINED> instruction: 0x80704590
8070463c:	807041d8 	ldrsbthi	r4, [r0], #-24	; 0xffffffe8
80704640:	00000044 	andeq	r0, r0, r4, asr #32
80704644:	8b080e42 	blhi	80907f54 <ptable+0x2024c0>
80704648:	42018e02 	andmi	r8, r1, #2, 28
8070464c:	00040b0c 	andeq	r0, r4, ip, lsl #22
80704650:	0000001c 	andeq	r0, r0, ip, lsl r0
80704654:	80704590 			; <UNDEFINED> instruction: 0x80704590
80704658:	8070421c 	rsbshi	r4, r0, ip, lsl r2
8070465c:	00000054 	andeq	r0, r0, r4, asr r0
80704660:	8b080e42 	blhi	80907f70 <ptable+0x2024dc>
80704664:	42018e02 	andmi	r8, r1, #2, 28
80704668:	64040b0c 	strvs	r0, [r4], #-2828	; 0xfffff4f4
8070466c:	00080d0c 	andeq	r0, r8, ip, lsl #26
80704670:	00002e41 	andeq	r2, r0, r1, asr #28
80704674:	61656100 	cmnvs	r5, r0, lsl #2
80704678:	01006962 	tsteq	r0, r2, ror #18
8070467c:	00000024 	andeq	r0, r0, r4, lsr #32
80704680:	412d3705 	teqmi	sp, r5, lsl #14
80704684:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80704688:	09010841 	stmdbeq	r1, {r0, r6, fp}
8070468c:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
80704690:	17011501 	strne	r1, [r1, -r1, lsl #10]
80704694:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80704698:	1e011a01 	vmlane.f32	s2, s2, s2
8070469c:	00012206 	andeq	r2, r1, r6, lsl #4

807046a0 <interrupt_enable>:
807046a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
807046a4:	e28db000 	add	fp, sp, #0
807046a8:	e10f0000 	mrs	r0, CPSR
807046ac:	e3c000c0 	bic	r0, r0, #192	; 0xc0
807046b0:	e129f000 	msr	CPSR_fc, r0
807046b4:	e1a00000 	nop			; (mov r0, r0)
807046b8:	e24bd000 	sub	sp, fp, #0
807046bc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
807046c0:	e12fff1e 	bx	lr

807046c4 <get_vectors_address>:
807046c4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
807046c8:	e28db000 	add	fp, sp, #0
807046cc:	e24dd00c 	sub	sp, sp, #12
807046d0:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
807046d4:	e50b3008 	str	r3, [fp, #-8]
807046d8:	e51b3008 	ldr	r3, [fp, #-8]
807046dc:	e2033a02 	and	r3, r3, #8192	; 0x2000
807046e0:	e3530000 	cmp	r3, #0
807046e4:	0a000002 	beq	807046f4 <get_vectors_address+0x30>
807046e8:	e3a03000 	mov	r3, #0
807046ec:	e34f3fff 	movt	r3, #65535	; 0xffff
807046f0:	ea000002 	b	80704700 <get_vectors_address+0x3c>
807046f4:	ee1c3f10 	mrc	15, 0, r3, cr12, cr0, {0}
807046f8:	e50b3008 	str	r3, [fp, #-8]
807046fc:	e51b3008 	ldr	r3, [fp, #-8]
80704700:	e1a00003 	mov	r0, r3
80704704:	e24bd000 	sub	sp, fp, #0
80704708:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8070470c:	e12fff1e 	bx	lr

80704710 <set_sp>:
80704710:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80704714:	e28db000 	add	fp, sp, #0
80704718:	e24dd014 	sub	sp, sp, #20
8070471c:	e50b0008 	str	r0, [fp, #-8]
80704720:	e50b100c 	str	r1, [fp, #-12]
80704724:	e50b2010 	str	r2, [fp, #-16]
80704728:	e1a0800b 	mov	r8, fp
8070472c:	e51b3008 	ldr	r3, [fp, #-8]
80704730:	e10fc000 	mrs	ip, CPSR
80704734:	e3ccc01f 	bic	ip, ip, #31
80704738:	e18cc003 	orr	ip, ip, r3
8070473c:	e121f00c 	msr	CPSR_c, ip
80704740:	e51b3010 	ldr	r3, [fp, #-16]
80704744:	e1a0b003 	mov	fp, r3
80704748:	e1a0d00b 	mov	sp, fp
8070474c:	e51b300c 	ldr	r3, [fp, #-12]
80704750:	e10fc000 	mrs	ip, CPSR
80704754:	e3ccc01f 	bic	ip, ip, #31
80704758:	e18cc003 	orr	ip, ip, r3
8070475c:	e121f00c 	msr	CPSR_c, ip
80704760:	e1a0b008 	mov	fp, r8
80704764:	e1a00000 	nop			; (mov r0, r0)
80704768:	e24bd000 	sub	sp, fp, #0
8070476c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80704770:	e12fff1e 	bx	lr

80704774 <interrupt_init>:
80704774:	e92d4800 	push	{fp, lr}
80704778:	e28db004 	add	fp, sp, #4
8070477c:	e3040928 	movw	r0, #18728	; 0x4928
80704780:	e3480070 	movt	r0, #32880	; 0x8070
80704784:	ebfff73d 	bl	80702480 <uart_spin_puts>
80704788:	e3a03000 	mov	r3, #0
8070478c:	e3483070 	movt	r3, #32880	; 0x8070
80704790:	ee0c3f10 	mcr	15, 0, r3, cr12, cr0, {0}
80704794:	ebffffca 	bl	807046c4 <get_vectors_address>
80704798:	e1a03000 	mov	r3, r0
8070479c:	e1a00003 	mov	r0, r3
807047a0:	ebfff0c8 	bl	80700ac8 <puthex>
807047a4:	ebffffbd 	bl	807046a0 <interrupt_enable>
807047a8:	e304093c 	movw	r0, #18748	; 0x493c
807047ac:	e3480070 	movt	r0, #32880	; 0x8070
807047b0:	ebfff732 	bl	80702480 <uart_spin_puts>
807047b4:	e3a02000 	mov	r2, #0
807047b8:	e34d2fbf 	movt	r2, #57279	; 0xdfbf
807047bc:	e3a0101f 	mov	r1, #31
807047c0:	e3a00012 	mov	r0, #18
807047c4:	ebffffd1 	bl	80704710 <set_sp>
807047c8:	e3040950 	movw	r0, #18768	; 0x4950
807047cc:	e3480070 	movt	r0, #32880	; 0x8070
807047d0:	ebfff72a 	bl	80702480 <uart_spin_puts>
807047d4:	e3040960 	movw	r0, #18784	; 0x4960
807047d8:	e3480070 	movt	r0, #32880	; 0x8070
807047dc:	ebfff727 	bl	80702480 <uart_spin_puts>
807047e0:	e3a02000 	mov	r2, #0
807047e4:	e34d2fc0 	movt	r2, #57280	; 0xdfc0
807047e8:	e3a0101f 	mov	r1, #31
807047ec:	e3a00013 	mov	r0, #19
807047f0:	ebffffc6 	bl	80704710 <set_sp>
807047f4:	e3040974 	movw	r0, #18804	; 0x4974
807047f8:	e3480070 	movt	r0, #32880	; 0x8070
807047fc:	ebfff71f 	bl	80702480 <uart_spin_puts>
80704800:	e3040984 	movw	r0, #18820	; 0x4984
80704804:	e3480070 	movt	r0, #32880	; 0x8070
80704808:	ebfff71c 	bl	80702480 <uart_spin_puts>
8070480c:	e1a00000 	nop			; (mov r0, r0)
80704810:	e8bd8800 	pop	{fp, pc}

80704814 <print_cpsr>:
80704814:	e92d4800 	push	{fp, lr}
80704818:	e28db004 	add	fp, sp, #4
8070481c:	e24dd008 	sub	sp, sp, #8
80704820:	e10f0000 	mrs	r0, CPSR
80704824:	e1a03000 	mov	r3, r0
80704828:	e50b3008 	str	r3, [fp, #-8]
8070482c:	e51b1008 	ldr	r1, [fp, #-8]
80704830:	e30409a0 	movw	r0, #18848	; 0x49a0
80704834:	e3480070 	movt	r0, #32880	; 0x8070
80704838:	ebfff0d2 	bl	80700b88 <put_str_hex>
8070483c:	e1a00000 	nop			; (mov r0, r0)
80704840:	e24bd004 	sub	sp, fp, #4
80704844:	e8bd8800 	pop	{fp, pc}

80704848 <mode_switch>:
80704848:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8070484c:	e28db000 	add	fp, sp, #0
80704850:	e24dd00c 	sub	sp, sp, #12
80704854:	e50b0008 	str	r0, [fp, #-8]
80704858:	e51b3008 	ldr	r3, [fp, #-8]
8070485c:	e10f0000 	mrs	r0, CPSR
80704860:	e3c0001f 	bic	r0, r0, #31
80704864:	e1800003 	orr	r0, r0, r3
80704868:	e129f000 	msr	CPSR_fc, r0
8070486c:	e1a00000 	nop			; (mov r0, r0)
80704870:	e24bd000 	sub	sp, fp, #0
80704874:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80704878:	e12fff1e 	bx	lr

8070487c <C_SVC_handler>:
8070487c:	e92d4800 	push	{fp, lr}
80704880:	e28db004 	add	fp, sp, #4
80704884:	e30409a8 	movw	r0, #18856	; 0x49a8
80704888:	e3480070 	movt	r0, #32880	; 0x8070
8070488c:	ebfff6fb 	bl	80702480 <uart_spin_puts>
80704890:	e1a00000 	nop			; (mov r0, r0)
80704894:	e8bd8800 	pop	{fp, pc}

80704898 <C_prefetch_abort_handler>:
80704898:	e92d4800 	push	{fp, lr}
8070489c:	e28db004 	add	fp, sp, #4
807048a0:	e30409b8 	movw	r0, #18872	; 0x49b8
807048a4:	e3480070 	movt	r0, #32880	; 0x8070
807048a8:	ebfff6f4 	bl	80702480 <uart_spin_puts>
807048ac:	e1a00000 	nop			; (mov r0, r0)
807048b0:	e8bd8800 	pop	{fp, pc}

807048b4 <C_data_abort_handler>:
807048b4:	e92d4800 	push	{fp, lr}
807048b8:	e28db004 	add	fp, sp, #4
807048bc:	e30409d4 	movw	r0, #18900	; 0x49d4
807048c0:	e3480070 	movt	r0, #32880	; 0x8070
807048c4:	ebfff6ed 	bl	80702480 <uart_spin_puts>
807048c8:	e1a00000 	nop			; (mov r0, r0)
807048cc:	e8bd8800 	pop	{fp, pc}

807048d0 <C_IRQ_handler>:
807048d0:	e92d4800 	push	{fp, lr}
807048d4:	e28db004 	add	fp, sp, #4
807048d8:	e30409ec 	movw	r0, #18924	; 0x49ec
807048dc:	e3480070 	movt	r0, #32880	; 0x8070
807048e0:	ebfff6e6 	bl	80702480 <uart_spin_puts>
807048e4:	e1a00000 	nop			; (mov r0, r0)
807048e8:	e8bd8800 	pop	{fp, pc}

807048ec <SWI>:
807048ec:	e92d4800 	push	{fp, lr}
807048f0:	e28db004 	add	fp, sp, #4
807048f4:	ebffff72 	bl	807046c4 <get_vectors_address>
807048f8:	e1a03000 	mov	r3, r0
807048fc:	e1a00003 	mov	r0, r3
80704900:	ebfff070 	bl	80700ac8 <puthex>
80704904:	e30409fc 	movw	r0, #18940	; 0x49fc
80704908:	e3480070 	movt	r0, #32880	; 0x8070
8070490c:	ebfff6db 	bl	80702480 <uart_spin_puts>
80704910:	ef000100 	svc	0x00000100
80704914:	e3040a04 	movw	r0, #18948	; 0x4a04
80704918:	e3480070 	movt	r0, #32880	; 0x8070
8070491c:	ebfff6d7 	bl	80702480 <uart_spin_puts>
80704920:	e1a00000 	nop			; (mov r0, r0)
80704924:	e8bd8800 	pop	{fp, pc}

80704928 <.LC0>:
80704928:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
8070492c:	4920656c 	stmdbmi	r0!, {r2, r3, r5, r6, r8, sl, sp, lr}
80704930:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
80704934:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
80704938:	00000a0d 	andeq	r0, r0, sp, lsl #20

8070493c <.LC1>:
8070493c:	74746573 	ldrbtvc	r6, [r4], #-1395	; 0xfffffa8d
80704940:	20676e69 	rsbcs	r6, r7, r9, ror #28
80704944:	20515249 	subscs	r5, r1, r9, asr #4
80704948:	0a0d5053 	beq	80a58a9c <ptable+0x353008>
8070494c:	00000000 	andeq	r0, r0, r0

80704950 <.LC2>:
80704950:	20515249 	subscs	r5, r1, r9, asr #4
80704954:	73205053 	teqvc	r0, #83	; 0x53
80704958:	0a0d7465 	beq	80a61af4 <ptable+0x35c060>
8070495c:	00000000 	andeq	r0, r0, r0

80704960 <.LC3>:
80704960:	74746573 	ldrbtvc	r6, [r4], #-1395	; 0xfffffa8d
80704964:	20676e69 	rsbcs	r6, r7, r9, ror #28
80704968:	20435653 	subcs	r5, r3, r3, asr r6
8070496c:	0a0d5053 	beq	80a58ac0 <ptable+0x35302c>
80704970:	00000000 	andeq	r0, r0, r0

80704974 <.LC4>:
80704974:	20435653 	subcs	r5, r3, r3, asr r6
80704978:	73205053 	teqvc	r0, #83	; 0x53
8070497c:	0a0d7465 	beq	80a61b18 <ptable+0x35c084>
80704980:	00000000 	andeq	r0, r0, r0

80704984 <.LC5>:
80704984:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
80704988:	4920656c 	stmdbmi	r0!, {r2, r3, r5, r6, r8, sl, sp, lr}
8070498c:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
80704990:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
80704994:	4e494620 	cdpmi	6, 4, cr4, cr9, cr0, {1}
80704998:	45485349 	strbmi	r5, [r8, #-841]	; 0xfffffcb7
8070499c:	000a0d44 	andeq	r0, sl, r4, asr #26

807049a0 <.LC6>:
807049a0:	52535043 	subspl	r5, r3, #67	; 0x43
807049a4:	00203d20 	eoreq	r3, r0, r0, lsr #26

807049a8 <.LC7>:
807049a8:	20435653 	subcs	r5, r3, r3, asr r6
807049ac:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
807049b0:	0d72656c 	cfldr64eq	mvdx6, [r2, #-432]!	; 0xfffffe50
807049b4:	0000000a 	andeq	r0, r0, sl

807049b8 <.LC8>:
807049b8:	66657270 			; <UNDEFINED> instruction: 0x66657270
807049bc:	68637465 	stmdavs	r3!, {r0, r2, r5, r6, sl, ip, sp, lr}^
807049c0:	6f62615f 	svcvs	0x0062615f
807049c4:	685f7472 	ldmdavs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
807049c8:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
807049cc:	0a0d7265 	beq	80a61368 <ptable+0x35b8d4>
807049d0:	00000000 	andeq	r0, r0, r0

807049d4 <.LC9>:
807049d4:	61746164 	cmnvs	r4, r4, ror #2
807049d8:	6f62615f 	svcvs	0x0062615f
807049dc:	685f7472 	ldmdavs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
807049e0:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
807049e4:	0a0d7265 	beq	80a61380 <ptable+0x35b8ec>
807049e8:	00000000 	andeq	r0, r0, r0

807049ec <.LC10>:
807049ec:	5f515249 	svcpl	0x00515249
807049f0:	646e6168 	strbtvs	r6, [lr], #-360	; 0xfffffe98
807049f4:	0d72656c 	cfldr64eq	mvdx6, [r2, #-432]!	; 0xfffffe50
807049f8:	0000000a 	andeq	r0, r0, sl

807049fc <.LC11>:
807049fc:	0d495753 	stcleq	7, cr5, [r9, #-332]	; 0xfffffeb4
80704a00:	0000000a 	andeq	r0, r0, sl

80704a04 <.LC12>:
80704a04:	20495753 	subcs	r5, r9, r3, asr r7
80704a08:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
80704a0c:	44454853 	strbmi	r4, [r5], #-2131	; 0xfffff7ad
80704a10:	000a0d21 	andeq	r0, sl, r1, lsr #26
80704a14:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
80704a18:	4bd40004 	blmi	7fc04a30 <__high_exec_veneer+0x7f604698>
80704a1c:	01048070 	tsteq	r4, r0, ror r0
80704a20:	807011fc 	ldrshthi	r1, [r0], #-28	; 0xffffffe4
80704a24:	704e7f0c 	subvc	r7, lr, ip, lsl #30
80704a28:	70128580 	andsvc	r8, r2, r0, lsl #11
80704a2c:	7046a080 	subvc	sl, r6, r0, lsl #1
80704a30:	00028880 	andeq	r8, r2, r0, lsl #17
80704a34:	704d2300 	subvc	r2, sp, r0, lsl #6
80704a38:	08010280 	stmdaeq	r1, {r7, r9}
80704a3c:	8070124d 	rsbshi	r1, r0, sp, asr #4
80704a40:	4f060102 	svcmi	0x00060102
80704a44:	02807012 	addeq	r7, r0, #18
80704a48:	125b0702 	subsne	r0, fp, #524288	; 0x80000
80704a4c:	02028070 	andeq	r8, r2, #112	; 0x70
80704a50:	7012f905 	andsvc	pc, r2, r5, lsl #18
80704a54:	07040280 	streq	r0, [r4, -r0, lsl #5]
80704a58:	807012a8 	rsbshi	r1, r0, r8, lsr #5
80704a5c:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
80704a60:	411f0300 	tstmi	pc, r0, lsl #6
80704a64:	04000000 	streq	r0, [r0], #-0
80704a68:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
80704a6c:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
80704a70:	7012a307 	andsvc	sl, r2, r7, lsl #6
80704a74:	07080280 	streq	r0, [r8, -r0, lsl #5]
80704a78:	8070129e 			; <UNDEFINED> instruction: 0x8070129e
80704a7c:	de050802 	cdple	8, 0, cr0, cr5, cr2, {0}
80704a80:	02807012 	addeq	r7, r0, #18
80704a84:	12e30504 	rscne	r0, r3, #4, 10	; 0x1000000
80704a88:	04028070 	streq	r8, [r2], #-112	; 0xffffff90
80704a8c:	7012d507 	andsvc	sp, r2, r7, lsl #10
80704a90:	4ebe0580 	cdpmi	5, 11, cr0, cr14, cr0, {4}
80704a94:	86018070 			; <UNDEFINED> instruction: 0x86018070
80704a98:	807046a0 	rsbshi	r4, r0, r0, lsr #13
80704a9c:	00000024 	andeq	r0, r0, r4, lsr #32
80704aa0:	1d069c01 	stcne	12, cr9, [r6, #-4]
80704aa4:	0280704e 	addeq	r7, r0, #78	; 0x4e
80704aa8:	0000b40e 	andeq	fp, r0, lr, lsl #8
80704aac:	7046c400 	subvc	ip, r6, r0, lsl #8
80704ab0:	00004c80 	andeq	r4, r0, r0, lsl #25
80704ab4:	b49c0100 	ldrlt	r0, [ip], #256	; 0x100
80704ab8:	07000000 	streq	r0, [r0, -r0]
80704abc:	10020076 	andne	r0, r2, r6, ror r0
80704ac0:	00000041 	andeq	r0, r0, r1, asr #32
80704ac4:	00749102 	rsbseq	r9, r4, r2, lsl #2
80704ac8:	00410408 	subeq	r0, r1, r8, lsl #8
80704acc:	56090000 	strpl	r0, [r9], -r0
80704ad0:	0280704e 	addeq	r7, r0, #78	; 0x4e
80704ad4:	7047101c 	subvc	r1, r7, ip, lsl r0
80704ad8:	00006480 	andeq	r6, r0, r0, lsl #9
80704adc:	f99c0100 			; <UNDEFINED> instruction: 0xf99c0100
80704ae0:	0a000000 	beq	80704ae8 <.LC12+0xe4>
80704ae4:	80704e7a 	rsbshi	r4, r0, sl, ror lr
80704ae8:	00481c02 	subeq	r1, r8, r2, lsl #24
80704aec:	91020000 	mrsls	r0, (UNDEF: 2)
80704af0:	4e760a74 	mrcmi	10, 3, r0, cr6, cr4, {3}
80704af4:	1c028070 	stcne	0, cr8, [r2], {112}	; 0x70
80704af8:	00000048 	andeq	r0, r0, r8, asr #32
80704afc:	0b709102 	bleq	82328f0c <ptable+0x1c23478>
80704b00:	02007073 	andeq	r7, r0, #115	; 0x73
80704b04:	0000481c 	andeq	r4, r0, ip, lsl r8
80704b08:	6c910200 	lfmvs	f0, 4, [r1], {0}
80704b0c:	4e9a0c00 	cdpmi	12, 9, cr0, cr10, cr0, {0}
80704b10:	43028070 	movwmi	r8, #8304	; 0x2070
80704b14:	80704774 	rsbshi	r4, r0, r4, ror r7
80704b18:	000000a0 	andeq	r0, r0, r0, lsr #1
80704b1c:	4b0d9c01 	blmi	80a6bb28 <ptable+0x366094>
80704b20:	0280704e 	addeq	r7, r0, #78	; 0x4e
80704b24:	7048145c 	subvc	r1, r8, ip, asr r4
80704b28:	00003480 	andeq	r3, r0, r0, lsl #9
80704b2c:	3b9c0100 	blcc	7ee04f34 <__high_exec_veneer+0x7e804b9c>
80704b30:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
80704b34:	80704e51 	rsbshi	r4, r0, r1, asr lr
80704b38:	00485e02 	subeq	r5, r8, r2, lsl #28
80704b3c:	91020000 	mrsls	r0, (UNDEF: 2)
80704b40:	126e0f74 	rsbne	r0, lr, #116, 30	; 0x1d0
80704b44:	63028070 	movwvs	r8, #8304	; 0x2070
80704b48:	00000053 	andeq	r0, r0, r3, asr r0
80704b4c:	09000010 	stmdbeq	r0, {r4}
80704b50:	80704e3f 	rsbshi	r4, r0, pc, lsr lr
80704b54:	48486602 	stmdami	r8, {r1, r9, sl, sp, lr}^
80704b58:	00348070 	eorseq	r8, r4, r0, ror r0
80704b5c:	9c010000 	stcls	0, cr0, [r1], {-0}
80704b60:	0000015f 	andeq	r0, r0, pc, asr r1
80704b64:	704e7a0a 	subvc	r7, lr, sl, lsl #20
80704b68:	48660280 	stmdami	r6!, {r7, r9}^
80704b6c:	02000000 	andeq	r0, r0, #0
80704b70:	0c007491 	cfstrseq	mvf7, [r0], {145}	; 0x91
80704b74:	80704e0f 	rsbshi	r4, r0, pc, lsl #28
80704b78:	487c7302 	ldmdami	ip!, {r1, r8, r9, ip, sp, lr}^
80704b7c:	001c8070 	andseq	r8, ip, r0, ror r0
80704b80:	9c010000 	stcls	0, cr0, [r1], {-0}
80704b84:	704e5d0c 	subvc	r5, lr, ip, lsl #26
80704b88:	98780280 	ldmdals	r8!, {r7, r9}^
80704b8c:	1c807048 	stcne	0, cr7, [r0], {72}	; 0x48
80704b90:	01000000 	mrseq	r0, (UNDEF: 0)
80704b94:	4ea90c9c 	mcrmi	12, 5, r0, cr9, cr12, {4}
80704b98:	7d028070 	stcvc	0, cr8, [r2, #-448]	; 0xfffffe40
80704b9c:	807048b4 	ldrhthi	r4, [r0], #-132	; 0xffffff7c
80704ba0:	0000001c 	andeq	r0, r0, ip, lsl r0
80704ba4:	310c9c01 	tstcc	ip, r1, lsl #24
80704ba8:	0280704e 	addeq	r7, r0, #78	; 0x4e
80704bac:	7048d082 	subvc	sp, r8, r2, lsl #1
80704bb0:	00001c80 	andeq	r1, r0, r0, lsl #25
80704bb4:	119c0100 	orrsne	r0, ip, r0, lsl #2
80704bb8:	00495753 	subeq	r5, r9, r3, asr r7
80704bbc:	48ec8602 	stmiami	ip!, {r1, r9, sl, pc}^
80704bc0:	003c8070 	eorseq	r8, ip, r0, ror r0
80704bc4:	9c010000 	stcls	0, cr0, [r1], {-0}
80704bc8:	70123c12 	andsvc	r3, r2, r2, lsl ip
80704bcc:	48a00480 	stmiami	r0!, {r7, sl}
80704bd0:	00000000 	andeq	r0, r0, r0
80704bd4:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
80704bd8:	030b130e 	movweq	r1, #45838	; 0xb30e
80704bdc:	110e1b0e 	tstne	lr, lr, lsl #22
80704be0:	10061201 	andne	r1, r6, r1, lsl #4
80704be4:	02000017 	andeq	r0, r0, #23
80704be8:	0b0b0024 	bleq	809c4c80 <ptable+0x2bf1ec>
80704bec:	0e030b3e 	vmoveq.16	d3[0], r0
80704bf0:	16030000 	strne	r0, [r3], -r0
80704bf4:	3a080300 	bcc	809057fc <ptable+0x1ffd68>
80704bf8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80704bfc:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
80704c00:	0b0b0024 	bleq	809c4c98 <ptable+0x2bf204>
80704c04:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
80704c08:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
80704c0c:	3a0e0300 	bcc	80a85814 <ptable+0x37fd80>
80704c10:	110b3b0b 	tstne	fp, fp, lsl #22
80704c14:	40061201 	andmi	r1, r6, r1, lsl #4
80704c18:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
80704c1c:	2e060000 	cdpcs	0, 0, cr0, cr6, cr0, {0}
80704c20:	3a0e0301 	bcc	80a8582c <ptable+0x37fd98>
80704c24:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
80704c28:	11134919 	tstne	r3, r9, lsl r9
80704c2c:	40061201 	andmi	r1, r6, r1, lsl #4
80704c30:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
80704c34:	00001301 	andeq	r1, r0, r1, lsl #6
80704c38:	03003407 	movweq	r3, #1031	; 0x407
80704c3c:	3b0b3a08 	blcc	809d3464 <ptable+0x2cd9d0>
80704c40:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
80704c44:	08000018 	stmdaeq	r0, {r3, r4}
80704c48:	0b0b000f 	bleq	809c4c8c <ptable+0x2bf1f8>
80704c4c:	00001349 	andeq	r1, r0, r9, asr #6
80704c50:	3f012e09 	svccc	0x00012e09
80704c54:	3a0e0319 	bcc	80a858c0 <ptable+0x37fe2c>
80704c58:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
80704c5c:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
80704c60:	97184006 	ldrls	r4, [r8, -r6]
80704c64:	13011942 	movwne	r1, #6466	; 0x1942
80704c68:	050a0000 	streq	r0, [sl, #-0]
80704c6c:	3a0e0300 	bcc	80a85874 <ptable+0x37fde0>
80704c70:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80704c74:	00180213 	andseq	r0, r8, r3, lsl r2
80704c78:	00050b00 	andeq	r0, r5, r0, lsl #22
80704c7c:	0b3a0803 	bleq	81586c90 <ptable+0xe811fc>
80704c80:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80704c84:	00001802 	andeq	r1, r0, r2, lsl #16
80704c88:	3f002e0c 	svccc	0x00002e0c
80704c8c:	3a0e0319 	bcc	80a858f8 <ptable+0x37fe64>
80704c90:	110b3b0b 	tstne	fp, fp, lsl #22
80704c94:	40061201 	andmi	r1, r6, r1, lsl #4
80704c98:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
80704c9c:	2e0d0000 	cdpcs	0, 0, cr0, cr13, cr0, {0}
80704ca0:	03193f01 	tsteq	r9, #1, 30
80704ca4:	3b0b3a0e 	blcc	809d34e4 <ptable+0x2cda50>
80704ca8:	1201110b 	andne	r1, r1, #-1073741822	; 0xc0000002
80704cac:	96184006 	ldrls	r4, [r8], -r6
80704cb0:	13011942 	movwne	r1, #6466	; 0x1942
80704cb4:	340e0000 	strcc	r0, [lr], #-0
80704cb8:	3a0e0300 	bcc	80a858c0 <ptable+0x37fe2c>
80704cbc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80704cc0:	00180213 	andseq	r0, r8, r3, lsl r2
80704cc4:	012e0f00 	teqeq	lr, r0, lsl #30
80704cc8:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80704ccc:	0b3b0b3a 	bleq	815c79bc <ptable+0xec1f28>
80704cd0:	193c1349 	ldmdbne	ip!, {r0, r3, r6, r8, r9, ip}
80704cd4:	18100000 	ldmdane	r0, {}	; <UNPREDICTABLE>
80704cd8:	11000000 	mrsne	r0, (UNDEF: 0)
80704cdc:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
80704ce0:	0b3a0803 	bleq	81586cf4 <ptable+0xe81260>
80704ce4:	01110b3b 	tsteq	r1, fp, lsr fp
80704ce8:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80704cec:	00194296 	mulseq	r9, r6, r2
80704cf0:	00341200 	eorseq	r1, r4, r0, lsl #4
80704cf4:	0b3a0e03 	bleq	81588508 <ptable+0xe82a74>
80704cf8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80704cfc:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
80704d00:	1c000000 	stcne	0, cr0, [r0], {-0}
80704d04:	02000000 	andeq	r0, r0, #0
80704d08:	704a1400 	subvc	r1, sl, r0, lsl #8
80704d0c:	00000480 	andeq	r0, r0, r0, lsl #9
80704d10:	a0000000 	andge	r0, r0, r0
80704d14:	88807046 	stmhi	r0, {r1, r2, r6, ip, sp, lr}
80704d18:	00000002 	andeq	r0, r0, r2
80704d1c:	00000000 	andeq	r0, r0, r0
80704d20:	e8000000 	stmda	r0, {}	; <UNPREDICTABLE>
80704d24:	02000000 	andeq	r0, r0, #0
80704d28:	00009100 	andeq	r9, r0, r0, lsl #2
80704d2c:	fb010200 	blx	80745536 <ptable+0x3faa2>
80704d30:	01000d0e 	tsteq	r0, lr, lsl #26
80704d34:	00010101 	andeq	r0, r1, r1, lsl #2
80704d38:	00010000 	andeq	r0, r1, r0
80704d3c:	2f2e0100 	svccs	0x002e0100
80704d40:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
80704d44:	2f656475 	svccs	0x00656475
80704d48:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
80704d4c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
80704d50:	2d613776 	stclcs	7, cr3, [r1, #-472]!	; 0xfffffe28
80704d54:	612f656c 	teqvs	pc, ip, ror #10
80704d58:	6b006d73 	blvs	8072032c <ptable+0x1a898>
80704d5c:	2f6e7265 	svccs	0x006e7265
80704d60:	65637865 	strbvs	r7, [r3, #-2149]!	; 0xfffff79b
80704d64:	6f697470 	svcvs	0x00697470
80704d68:	2f2e006e 	svccs	0x002e006e
80704d6c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
80704d70:	2f656475 	svccs	0x00656475
80704d74:	00737973 	rsbseq	r7, r3, r3, ror r9
80704d78:	72642f2e 	rsbvc	r2, r4, #46, 30	; 0xb8
80704d7c:	72657669 	rsbvc	r7, r5, #110100480	; 0x6900000
80704d80:	696d2f73 	stmdbvs	sp!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, sp}^
80704d84:	00006373 	andeq	r6, r0, r3, ror r3
80704d88:	2e717269 	cdpcs	2, 7, cr7, cr1, cr9, {3}
80704d8c:	00010068 	andeq	r0, r1, r8, rrx
80704d90:	746e6900 	strbtvc	r6, [lr], #-2304	; 0xfffff700
80704d94:	75727265 	ldrbvc	r7, [r2, #-613]!	; 0xfffffd9b
80704d98:	632e7470 	teqvs	lr, #112, 8	; 0x70000000
80704d9c:	00000200 	andeq	r0, r0, r0, lsl #4
80704da0:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
80704da4:	00682e73 	rsbeq	r2, r8, r3, ror lr
80704da8:	64000003 	strvs	r0, [r0], #-3
80704dac:	7a2d6274 	bvc	8125d784 <ptable+0xb57cf0>
80704db0:	37716e79 			; <UNDEFINED> instruction: 0x37716e79
80704db4:	2e303030 	mrccs	0, 1, r3, cr0, cr0, {1}
80704db8:	00040068 	andeq	r0, r4, r8, rrx
80704dbc:	05000000 	streq	r0, [r0, #-0]
80704dc0:	7046a002 	subvc	sl, r6, r2
80704dc4:	01860380 	orreq	r0, r6, r0, lsl #7
80704dc8:	046c4b01 	strbteq	r4, [ip], #-2817	; 0xfffff4ff
80704dcc:	7f810302 	svcvc	0x00810302
80704dd0:	834c6a82 	movthi	r6, #51842	; 0xca82
80704dd4:	842f4c68 	strthi	r4, [pc], #-3176	; 80704ddc <.LC12+0x3d8>
80704dd8:	090332bb 	stmdbeq	r3, {r0, r1, r3, r4, r5, r7, r9, ip, sp}
80704ddc:	0a036e9e 	beq	807e085c <ptable+0xdadc8>
80704de0:	4b86319e 	blmi	7e891460 <__high_exec_veneer+0x7e2910c8>
80704de4:	30846d68 	addcc	r6, r4, r8, ror #26
80704de8:	67689f67 	strbvs	r9, [r8, -r7, ror #30]!
80704dec:	4c67689f 	stclmi	8, cr6, [r7], #-636	; 0xfffffd84
80704df0:	69836a68 	stmibvs	r3, {r3, r5, r6, r9, fp, sp, lr}
80704df4:	9e090383 	cdpls	3, 0, cr0, cr9, cr3, {4}
80704df8:	4d674b85 	fstmdbxmi	r7!, {d20-d85}	;@ Deprecated
80704dfc:	4b4d674b 	blmi	81a5eb30 <ptable+0x135909c>
80704e00:	674b4d67 	strbvs	r4, [fp, -r7, ror #26]
80704e04:	67834b4c 	strvs	r4, [r3, ip, asr #22]
80704e08:	04026731 	streq	r6, [r2], #-1841	; 0xfffff8cf
80704e0c:	43010100 	movwmi	r0, #4352	; 0x1100
80704e10:	4356535f 	cmpmi	r6, #2080374785	; 0x7c000001
80704e14:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
80704e18:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
80704e1c:	74656700 	strbtvc	r6, [r5], #-1792	; 0xfffff900
80704e20:	6365765f 	cmnvs	r5, #99614720	; 0x5f00000
80704e24:	73726f74 	cmnvc	r2, #116, 30	; 0x1d0
80704e28:	6464615f 	strbtvs	r6, [r4], #-351	; 0xfffffea1
80704e2c:	73736572 	cmnvc	r3, #478150656	; 0x1c800000
80704e30:	495f4300 	ldmdbmi	pc, {r8, r9, lr}^	; <UNPREDICTABLE>
80704e34:	685f5152 	ldmdavs	pc, {r1, r4, r6, r8, ip, lr}^	; <UNPREDICTABLE>
80704e38:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
80704e3c:	6d007265 	sfmvs	f7, 4, [r0, #-404]	; 0xfffffe6c
80704e40:	5f65646f 	svcpl	0x0065646f
80704e44:	74697773 	strbtvc	r7, [r9], #-1907	; 0xfffff88d
80704e48:	70006863 	andvc	r6, r0, r3, ror #16
80704e4c:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
80704e50:	7370635f 	cmnvc	r0, #2080374785	; 0x7c000001
80704e54:	65730072 	ldrbvs	r0, [r3, #-114]!	; 0xffffff8e
80704e58:	70735f74 	rsbsvc	r5, r3, r4, ror pc
80704e5c:	705f4300 	subsvc	r4, pc, r0, lsl #6
80704e60:	65666572 	strbvs	r6, [r6, #-1394]!	; 0xfffffa8e
80704e64:	5f686374 	svcpl	0x00686374
80704e68:	726f6261 	rsbvc	r6, pc, #268435462	; 0x10000006
80704e6c:	61685f74 	smcvs	34292	; 0x85f4
80704e70:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
80704e74:	65720072 	ldrbvs	r0, [r2, #-114]!	; 0xffffff8e
80704e78:	6f6d5f74 	svcvs	0x006d5f74
80704e7c:	6b006564 	blvs	8071e414 <ptable+0x18980>
80704e80:	2f6e7265 	svccs	0x006e7265
80704e84:	65637865 	strbvs	r7, [r3, #-2149]!	; 0xfffff79b
80704e88:	6f697470 	svcvs	0x00697470
80704e8c:	6e692f6e 	cdpvs	15, 6, cr2, cr9, cr14, {3}
80704e90:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
80704e94:	2e747075 	mrccs	0, 3, r7, cr4, cr5, {3}
80704e98:	6e690063 	cdpvs	0, 6, cr0, cr9, cr3, {3}
80704e9c:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
80704ea0:	5f747075 	svcpl	0x00747075
80704ea4:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
80704ea8:	645f4300 	ldrbvs	r4, [pc], #-768	; 80704eb0 <.LC12+0x4ac>
80704eac:	5f617461 	svcpl	0x00617461
80704eb0:	726f6261 	rsbvc	r6, pc, #268435462	; 0x10000006
80704eb4:	61685f74 	smcvs	34292	; 0x85f4
80704eb8:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
80704ebc:	6e690072 	mcrvs	0, 3, r0, cr9, cr2, {3}
80704ec0:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
80704ec4:	5f747075 	svcpl	0x00747075
80704ec8:	62616e65 	rsbvs	r6, r1, #1616	; 0x650
80704ecc:	0000656c 	andeq	r6, r0, ip, ror #10
80704ed0:	0000000c 	andeq	r0, r0, ip
80704ed4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80704ed8:	7c020001 	stcvc	0, cr0, [r2], {1}
80704edc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80704ee0:	0000001c 	andeq	r0, r0, ip, lsl r0
80704ee4:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704ee8:	807046a0 	rsbshi	r4, r0, r0, lsr #13
80704eec:	00000024 	andeq	r0, r0, r4, lsr #32
80704ef0:	8b040e42 	blhi	80808800 <ptable+0x102d6c>
80704ef4:	0b0d4201 	bleq	80a55700 <ptable+0x34fc6c>
80704ef8:	420d0d4a 	andmi	r0, sp, #4736	; 0x1280
80704efc:	00000ecb 	andeq	r0, r0, fp, asr #29
80704f00:	0000001c 	andeq	r0, r0, ip, lsl r0
80704f04:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704f08:	807046c4 	rsbshi	r4, r0, r4, asr #13
80704f0c:	0000004c 	andeq	r0, r0, ip, asr #32
80704f10:	8b040e42 	blhi	80808820 <ptable+0x102d8c>
80704f14:	0b0d4201 	bleq	80a55720 <ptable+0x34fc8c>
80704f18:	420d0d5e 	andmi	r0, sp, #6016	; 0x1780
80704f1c:	00000ecb 	andeq	r0, r0, fp, asr #29
80704f20:	0000001c 	andeq	r0, r0, ip, lsl r0
80704f24:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704f28:	80704710 	rsbshi	r4, r0, r0, lsl r7
80704f2c:	00000064 	andeq	r0, r0, r4, rrx
80704f30:	8b040e42 	blhi	80808840 <ptable+0x102dac>
80704f34:	0b0d4201 	bleq	80a55740 <ptable+0x34fcac>
80704f38:	420d0d6a 	andmi	r0, sp, #6784	; 0x1a80
80704f3c:	00000ecb 	andeq	r0, r0, fp, asr #29
80704f40:	00000018 	andeq	r0, r0, r8, lsl r0
80704f44:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704f48:	80704774 	rsbshi	r4, r0, r4, ror r7
80704f4c:	000000a0 	andeq	r0, r0, r0, lsr #1
80704f50:	8b080e42 	blhi	80908860 <ptable+0x202dcc>
80704f54:	42018e02 	andmi	r8, r1, #2, 28
80704f58:	00040b0c 	andeq	r0, r4, ip, lsl #22
80704f5c:	0000001c 	andeq	r0, r0, ip, lsl r0
80704f60:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704f64:	80704814 	rsbshi	r4, r0, r4, lsl r8
80704f68:	00000034 	andeq	r0, r0, r4, lsr r0
80704f6c:	8b080e42 	blhi	8090887c <ptable+0x202de8>
80704f70:	42018e02 	andmi	r8, r1, #2, 28
80704f74:	54040b0c 	strpl	r0, [r4], #-2828	; 0xfffff4f4
80704f78:	00080d0c 	andeq	r0, r8, ip, lsl #26
80704f7c:	0000001c 	andeq	r0, r0, ip, lsl r0
80704f80:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704f84:	80704848 	rsbshi	r4, r0, r8, asr #16
80704f88:	00000034 	andeq	r0, r0, r4, lsr r0
80704f8c:	8b040e42 	blhi	8080889c <ptable+0x102e08>
80704f90:	0b0d4201 	bleq	80a5579c <ptable+0x34fd08>
80704f94:	420d0d52 	andmi	r0, sp, #5248	; 0x1480
80704f98:	00000ecb 	andeq	r0, r0, fp, asr #29
80704f9c:	00000018 	andeq	r0, r0, r8, lsl r0
80704fa0:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704fa4:	8070487c 	rsbshi	r4, r0, ip, ror r8
80704fa8:	0000001c 	andeq	r0, r0, ip, lsl r0
80704fac:	8b080e42 	blhi	809088bc <ptable+0x202e28>
80704fb0:	42018e02 	andmi	r8, r1, #2, 28
80704fb4:	00040b0c 	andeq	r0, r4, ip, lsl #22
80704fb8:	00000018 	andeq	r0, r0, r8, lsl r0
80704fbc:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704fc0:	80704898 			; <UNDEFINED> instruction: 0x80704898
80704fc4:	0000001c 	andeq	r0, r0, ip, lsl r0
80704fc8:	8b080e42 	blhi	809088d8 <ptable+0x202e44>
80704fcc:	42018e02 	andmi	r8, r1, #2, 28
80704fd0:	00040b0c 	andeq	r0, r4, ip, lsl #22
80704fd4:	00000018 	andeq	r0, r0, r8, lsl r0
80704fd8:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704fdc:	807048b4 	ldrhthi	r4, [r0], #-132	; 0xffffff7c
80704fe0:	0000001c 	andeq	r0, r0, ip, lsl r0
80704fe4:	8b080e42 	blhi	809088f4 <ptable+0x202e60>
80704fe8:	42018e02 	andmi	r8, r1, #2, 28
80704fec:	00040b0c 	andeq	r0, r4, ip, lsl #22
80704ff0:	00000018 	andeq	r0, r0, r8, lsl r0
80704ff4:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80704ff8:	807048d0 	ldrsbthi	r4, [r0], #-128	; 0xffffff80
80704ffc:	0000001c 	andeq	r0, r0, ip, lsl r0
80705000:	8b080e42 	blhi	80908910 <ptable+0x202e7c>
80705004:	42018e02 	andmi	r8, r1, #2, 28
80705008:	00040b0c 	andeq	r0, r4, ip, lsl #22
8070500c:	00000018 	andeq	r0, r0, r8, lsl r0
80705010:	80704ed0 	ldrsbthi	r4, [r0], #-224	; 0xffffff20
80705014:	807048ec 	rsbshi	r4, r0, ip, ror #17
80705018:	0000003c 	andeq	r0, r0, ip, lsr r0
8070501c:	8b080e42 	blhi	8090892c <ptable+0x202e98>
80705020:	42018e02 	andmi	r8, r1, #2, 28
80705024:	00040b0c 	andeq	r0, r4, ip, lsl #22
80705028:	00002e41 	andeq	r2, r0, r1, asr #28
8070502c:	61656100 	cmnvs	r5, r0, lsl #2
80705030:	01006962 	tsteq	r0, r2, ror #18
80705034:	00000024 	andeq	r0, r0, r4, lsr #32
80705038:	412d3705 	teqmi	sp, r5, lsl #14
8070503c:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80705040:	09010841 	stmdbeq	r1, {r0, r6, fp}
80705044:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
80705048:	17011501 	strne	r1, [r1, -r1, lsl #10]
8070504c:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80705050:	1e011a01 	vmlane.f32	s2, s2, s2
80705054:	00012206 	andeq	r2, r1, r6, lsl #4

80705058 <context_swich>:
80705058:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8070505c:	e28db000 	add	fp, sp, #0
80705060:	e1a00000 	nop			; (mov r0, r0)
80705064:	e24bd000 	sub	sp, fp, #0
80705068:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8070506c:	e12fff1e 	bx	lr

80705070 <init_process>:
80705070:	e92d4800 	push	{fp, lr}
80705074:	e28db004 	add	fp, sp, #4
80705078:	e24dd010 	sub	sp, sp, #16
8070507c:	e50b0010 	str	r0, [fp, #-16]
80705080:	e51b3010 	ldr	r3, [fp, #-16]
80705084:	e3a02902 	mov	r2, #32768	; 0x8000
80705088:	e5832000 	str	r2, [r3]
8070508c:	e3a00901 	mov	r0, #16384	; 0x4000
80705090:	ebfff150 	bl	807015d8 <alloc_align>
80705094:	e1a03000 	mov	r3, r0
80705098:	e1a02003 	mov	r2, r3
8070509c:	e51b3010 	ldr	r3, [fp, #-16]
807050a0:	e5832004 	str	r2, [r3, #4]
807050a4:	e30532a8 	movw	r3, #21160	; 0x52a8
807050a8:	e3483070 	movt	r3, #32880	; 0x8070
807050ac:	e5932000 	ldr	r2, [r3]
807050b0:	e2821001 	add	r1, r2, #1
807050b4:	e30532a8 	movw	r3, #21160	; 0x52a8
807050b8:	e3483070 	movt	r3, #32880	; 0x8070
807050bc:	e5831000 	str	r1, [r3]
807050c0:	e51b3010 	ldr	r3, [fp, #-16]
807050c4:	e5832008 	str	r2, [r3, #8]
807050c8:	e51b3010 	ldr	r3, [fp, #-16]
807050cc:	e3a02001 	mov	r2, #1
807050d0:	e5c3200c 	strb	r2, [r3, #12]
807050d4:	e3a00004 	mov	r0, #4
807050d8:	ebfff1bc 	bl	807017d0 <alloc_pages>
807050dc:	e1a03000 	mov	r3, r0
807050e0:	e1a02003 	mov	r2, r3
807050e4:	e51b3010 	ldr	r3, [fp, #-16]
807050e8:	e5832010 	str	r2, [r3, #16]
807050ec:	e51b3010 	ldr	r3, [fp, #-16]
807050f0:	e5933010 	ldr	r3, [r3, #16]
807050f4:	e2833901 	add	r3, r3, #16384	; 0x4000
807050f8:	e50b3008 	str	r3, [fp, #-8]
807050fc:	e51b3008 	ldr	r3, [fp, #-8]
80705100:	e2433004 	sub	r3, r3, #4
80705104:	e50b3008 	str	r3, [fp, #-8]
80705108:	e51b3008 	ldr	r3, [fp, #-8]
8070510c:	e2433044 	sub	r3, r3, #68	; 0x44
80705110:	e50b3008 	str	r3, [fp, #-8]
80705114:	e51b3010 	ldr	r3, [fp, #-16]
80705118:	e51b2008 	ldr	r2, [fp, #-8]
8070511c:	e5832018 	str	r2, [r3, #24]
80705120:	e51b3010 	ldr	r3, [fp, #-16]
80705124:	e3a02000 	mov	r2, #0
80705128:	e5832014 	str	r2, [r3, #20]
8070512c:	e51b3010 	ldr	r3, [fp, #-16]
80705130:	e3a02000 	mov	r2, #0
80705134:	e583201c 	str	r2, [r3, #28]
80705138:	e1a00000 	nop			; (mov r0, r0)
8070513c:	e24bd004 	sub	sp, fp, #4
80705140:	e8bd8800 	pop	{fp, pc}

80705144 <alloc_proc>:
80705144:	e92d4800 	push	{fp, lr}
80705148:	e28db004 	add	fp, sp, #4
8070514c:	e24dd008 	sub	sp, sp, #8
80705150:	e30502ac 	movw	r0, #21164	; 0x52ac
80705154:	e3480070 	movt	r0, #32880	; 0x8070
80705158:	ebfff4c8 	bl	80702480 <uart_spin_puts>
8070515c:	e3053a94 	movw	r3, #23188	; 0x5a94
80705160:	e3483070 	movt	r3, #32880	; 0x8070
80705164:	e50b3008 	str	r3, [fp, #-8]
80705168:	ea00000a 	b	80705198 <alloc_proc+0x54>
8070516c:	e51b3008 	ldr	r3, [fp, #-8]
80705170:	e5d3300c 	ldrb	r3, [r3, #12]
80705174:	e3530000 	cmp	r3, #0
80705178:	1a000003 	bne	8070518c <alloc_proc+0x48>
8070517c:	e51b0008 	ldr	r0, [fp, #-8]
80705180:	ebffffba 	bl	80705070 <init_process>
80705184:	e51b3008 	ldr	r3, [fp, #-8]
80705188:	ea00000a 	b	807051b8 <alloc_proc+0x74>
8070518c:	e51b3008 	ldr	r3, [fp, #-8]
80705190:	e2833020 	add	r3, r3, #32
80705194:	e50b3008 	str	r3, [fp, #-8]
80705198:	e51b3008 	ldr	r3, [fp, #-8]
8070519c:	e59f2020 	ldr	r2, [pc, #32]	; 807051c4 <alloc_proc+0x80>
807051a0:	e1530002 	cmp	r3, r2
807051a4:	3afffff0 	bcc	8070516c <alloc_proc+0x28>
807051a8:	e30502cc 	movw	r0, #21196	; 0x52cc
807051ac:	e3480070 	movt	r0, #32880	; 0x8070
807051b0:	ebfff4b2 	bl	80702480 <uart_spin_puts>
807051b4:	eafffffe 	b	807051b4 <alloc_proc+0x70>
807051b8:	e1a00003 	mov	r0, r3
807051bc:	e24bd004 	sub	sp, fp, #4
807051c0:	e8bd8800 	pop	{fp, pc}
807051c4:	80706294 			; <UNDEFINED> instruction: 0x80706294

807051c8 <sayhello>:
807051c8:	e92d4800 	push	{fp, lr}
807051cc:	e28db004 	add	fp, sp, #4
807051d0:	e24dd008 	sub	sp, sp, #8
807051d4:	e50b0008 	str	r0, [fp, #-8]
807051d8:	e30502f4 	movw	r0, #21236	; 0x52f4
807051dc:	e3480070 	movt	r0, #32880	; 0x8070
807051e0:	ebfff4a6 	bl	80702480 <uart_spin_puts>
807051e4:	e51b3008 	ldr	r3, [fp, #-8]
807051e8:	e5933008 	ldr	r3, [r3, #8]
807051ec:	e1a00003 	mov	r0, r3
807051f0:	ebffee34 	bl	80700ac8 <puthex>
807051f4:	e1a00000 	nop			; (mov r0, r0)
807051f8:	e24bd004 	sub	sp, fp, #4
807051fc:	e8bd8800 	pop	{fp, pc}

80705200 <create_first_process>:
80705200:	e92d4800 	push	{fp, lr}
80705204:	e28db004 	add	fp, sp, #4
80705208:	e24dd008 	sub	sp, sp, #8
8070520c:	e305030c 	movw	r0, #21260	; 0x530c
80705210:	e3480070 	movt	r0, #32880	; 0x8070
80705214:	ebfff499 	bl	80702480 <uart_spin_puts>
80705218:	e3053a94 	movw	r3, #23188	; 0x5a94
8070521c:	e3483070 	movt	r3, #32880	; 0x8070
80705220:	e50b3008 	str	r3, [fp, #-8]
80705224:	ea000005 	b	80705240 <create_first_process+0x40>
80705228:	e51b3008 	ldr	r3, [fp, #-8]
8070522c:	e3a02000 	mov	r2, #0
80705230:	e5c3200c 	strb	r2, [r3, #12]
80705234:	e51b3008 	ldr	r3, [fp, #-8]
80705238:	e2833020 	add	r3, r3, #32
8070523c:	e50b3008 	str	r3, [fp, #-8]
80705240:	e51b3008 	ldr	r3, [fp, #-8]
80705244:	e59f2058 	ldr	r2, [pc, #88]	; 807052a4 <create_first_process+0xa4>
80705248:	e1530002 	cmp	r3, r2
8070524c:	3afffff5 	bcc	80705228 <create_first_process+0x28>
80705250:	ebffffbb 	bl	80705144 <alloc_proc>
80705254:	e1a02000 	mov	r2, r0
80705258:	e3053a90 	movw	r3, #23184	; 0x5a90
8070525c:	e3483070 	movt	r3, #32880	; 0x8070
80705260:	e5832000 	str	r2, [r3]
80705264:	e3053a90 	movw	r3, #23184	; 0x5a90
80705268:	e3483070 	movt	r3, #32880	; 0x8070
8070526c:	e5933000 	ldr	r3, [r3]
80705270:	e3a02002 	mov	r2, #2
80705274:	e5c3200c 	strb	r2, [r3, #12]
80705278:	e3050330 	movw	r0, #21296	; 0x5330
8070527c:	e3480070 	movt	r0, #32880	; 0x8070
80705280:	ebfff47e 	bl	80702480 <uart_spin_puts>
80705284:	e3053a90 	movw	r3, #23184	; 0x5a90
80705288:	e3483070 	movt	r3, #32880	; 0x8070
8070528c:	e5933000 	ldr	r3, [r3]
80705290:	e1a00003 	mov	r0, r3
80705294:	ebffffcb 	bl	807051c8 <sayhello>
80705298:	e1a00000 	nop			; (mov r0, r0)
8070529c:	e24bd004 	sub	sp, fp, #4
807052a0:	e8bd8800 	pop	{fp, pc}
807052a4:	80706294 			; <UNDEFINED> instruction: 0x80706294

807052a8 <pidcnt>:
807052a8:	00000000 	andeq	r0, r0, r0

807052ac <.LC0>:
807052ac:	434f5250 	movtmi	r5, #62032	; 0xf250
807052b0:	20535345 	subscs	r5, r3, r5, asr #6
807052b4:	6c61203a 	stclvs	0, cr2, [r1], #-232	; 0xffffff18
807052b8:	61636f6c 	cmnvs	r3, ip, ror #30
807052bc:	676e6974 			; <UNDEFINED> instruction: 0x676e6974
807052c0:	6f727020 	svcvs	0x00727020
807052c4:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
807052c8:	00000a0d 	andeq	r0, r0, sp, lsl #20

807052cc <.LC1>:
807052cc:	434f5250 	movtmi	r5, #62032	; 0xf250
807052d0:	20535345 	subscs	r5, r3, r5, asr #6
807052d4:	6c61203a 	stclvs	0, cr2, [r1], #-232	; 0xffffff18
807052d8:	61636f6c 	cmnvs	r3, ip, ror #30
807052dc:	676e6974 			; <UNDEFINED> instruction: 0x676e6974
807052e0:	6f727020 	svcvs	0x00727020
807052e4:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
807052e8:	6e696620 	cdpvs	6, 6, cr6, cr9, cr0, {1}
807052ec:	65687369 	strbvs	r7, [r8, #-873]!	; 0xfffffc97
807052f0:	000a0d64 	andeq	r0, sl, r4, ror #26

807052f4 <.LC2>:
807052f4:	4c4c4548 	cfstr64mi	mvdx4, [ip], {72}	; 0x48
807052f8:	49202c4f 	stmdbmi	r0!, {r0, r1, r2, r3, r6, sl, fp, sp}
807052fc:	204d4120 	subcs	r4, sp, r0, lsr #2
80705300:	434f5250 	movtmi	r5, #62032	; 0xf250
80705304:	20535345 	subscs	r5, r3, r5, asr #6
80705308:	00000023 	andeq	r0, r0, r3, lsr #32

8070530c <.LC3>:
8070530c:	434f5250 	movtmi	r5, #62032	; 0xf250
80705310:	20535345 	subscs	r5, r3, r5, asr #6
80705314:	7263203a 	rsbvc	r2, r3, #58	; 0x3a
80705318:	69746165 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, sp, lr}^
8070531c:	6620676e 	strtvs	r6, [r0], -lr, ror #14
80705320:	74737269 	ldrbtvc	r7, [r3], #-617	; 0xfffffd97
80705324:	6f727020 	svcvs	0x00727020
80705328:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
8070532c:	00000000 	andeq	r0, r0, r0

80705330 <.LC4>:
80705330:	434f5250 	movtmi	r5, #62032	; 0xf250
80705334:	20535345 	subscs	r5, r3, r5, asr #6
80705338:	7263203a 	rsbvc	r2, r3, #58	; 0x3a
8070533c:	69746165 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, sp, lr}^
80705340:	6620676e 	strtvs	r6, [r0], -lr, ror #14
80705344:	74737269 	ldrbtvc	r7, [r3], #-617	; 0xfffffd97
80705348:	6f727020 	svcvs	0x00727020
8070534c:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
80705350:	6e696620 	cdpvs	6, 6, cr6, cr9, cr0, {1}
80705354:	65687369 	strbvs	r7, [r8, #-873]!	; 0xfffffc97
80705358:	00000064 	andeq	r0, r0, r4, rrx
8070535c:	000002ea 	andeq	r0, r0, sl, ror #5
80705360:	564a0004 	strbpl	r0, [sl], -r4
80705364:	01048070 	tsteq	r4, r0, ror r0
80705368:	807011fc 	ldrshthi	r1, [r0], #-28	; 0xffffffe4
8070536c:	70591a0c 	subsvc	r1, r9, ip, lsl #20
80705370:	70128580 	andsvc	r8, r2, r0, lsl #11
80705374:	70505880 	subsvc	r5, r0, r0, lsl #17
80705378:	00025080 	andeq	r5, r2, r0, lsl #1
8070537c:	7057ef00 	subsvc	lr, r7, r0, lsl #30
80705380:	08010280 	stmdaeq	r1, {r7, r9}
80705384:	8070124d 	rsbshi	r1, r0, sp, asr #4
80705388:	00387503 	eorseq	r7, r8, r3, lsl #10
8070538c:	00251b02 	eoreq	r1, r5, r2, lsl #22
80705390:	01020000 	mrseq	r0, (UNDEF: 2)
80705394:	70124f06 	andsvc	r4, r2, r6, lsl #30
80705398:	07020280 	streq	r0, [r2, -r0, lsl #5]
8070539c:	8070125b 	rsbshi	r1, r0, fp, asr r2
807053a0:	f9050202 			; <UNDEFINED> instruction: 0xf9050202
807053a4:	02807012 	addeq	r7, r0, #18
807053a8:	12a80704 	adcne	r0, r8, #4, 14	; 0x100000
807053ac:	75038070 	strvc	r8, [r3, #-112]	; 0xffffff90
807053b0:	02003233 	andeq	r3, r0, #805306371	; 0x30000003
807053b4:	00004b1f 	andeq	r4, r0, pc, lsl fp
807053b8:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
807053bc:	00746e69 	rsbseq	r6, r4, r9, ror #28
807053c0:	a3070402 	movwge	r0, #29698	; 0x7402
807053c4:	02807012 	addeq	r7, r0, #18
807053c8:	129e0708 	addsne	r0, lr, #8, 14	; 0x200000
807053cc:	08028070 	stmdaeq	r2, {r4, r5, r6, pc}
807053d0:	7012de05 	andsvc	sp, r2, r5, lsl #28
807053d4:	05040280 	streq	r0, [r4, #-640]	; 0xfffffd80
807053d8:	807012e3 	rsbshi	r1, r0, r3, ror #5
807053dc:	7059a505 	subsvc	sl, r9, r5, lsl #10
807053e0:	00250180 	eoreq	r0, r5, r0, lsl #3
807053e4:	11030000 	mrsne	r0, (UNDEF: 3)
807053e8:	000000bb 	strheq	r0, [r0], -fp
807053ec:	70596106 	subsvc	r6, r9, r6, lsl #2
807053f0:	8f060080 	svchi	0x00060080
807053f4:	01807059 	orreq	r7, r0, r9, asr r0
807053f8:	70595306 	subsvc	r5, r9, r6, lsl #6
807053fc:	36060280 	strcc	r0, [r6], -r0, lsl #5
80705400:	03807059 	orreq	r7, r0, #89	; 0x59
80705404:	70599606 	subsvc	r9, r9, r6, lsl #12
80705408:	dc060480 	cfstrsle	mvf0, [r6], {128}	; 0x80
8070540c:	05807058 	streq	r7, [r0, #88]	; 0x58
80705410:	7058f806 	subsvc	pc, r8, r6, lsl #16
80705414:	07000680 	streq	r0, [r0, -r0, lsl #13]
80705418:	80705959 	rsbshi	r5, r0, r9, asr r9
8070541c:	e9130344 	ldmdb	r3, {r2, r6, r8, r9}
80705420:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
80705424:	03004350 	movweq	r4, #848	; 0x350
80705428:	00005214 	andeq	r5, r0, r4, lsl r2
8070542c:	52080000 	andpl	r0, r8, #0
80705430:	e9140300 	ldmdb	r4, {r8, r9}
80705434:	04000000 	streq	r0, [r0], #-0
80705438:	70598a09 	subsvc	r8, r9, r9, lsl #20
8070543c:	52140380 	andspl	r0, r4, #128, 6
80705440:	40000000 	andmi	r0, r0, r0
80705444:	00520a00 	subseq	r0, r2, r0, lsl #20
80705448:	00f90000 	rscseq	r0, r9, r0
8070544c:	f90b0000 			; <UNDEFINED> instruction: 0xf90b0000
80705450:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
80705454:	07040200 	streq	r0, [r4, -r0, lsl #4]
80705458:	807012d5 	ldrsbthi	r1, [r0], #-37	; 0xffffffdb
8070545c:	7058d20c 	subsvc	sp, r8, ip, lsl #4
80705460:	bb150380 	bllt	80c46268 <ptable+0x5407d4>
80705464:	07000000 	streq	r0, [r0, -r0]
80705468:	80705907 	rsbshi	r5, r0, r7, lsl #18
8070546c:	77170320 	ldrvc	r0, [r7, -r0, lsr #6]
80705470:	08000001 	stmdaeq	r0, {r0}
80705474:	03007a73 	movweq	r7, #2675	; 0xa73
80705478:	00005218 	andeq	r5, r0, r8, lsl r2
8070547c:	43090000 	movwmi	r0, #36864	; 0x9000
80705480:	03807059 	orreq	r7, r0, #89	; 0x59
80705484:	00005219 	andeq	r5, r0, r9, lsl r2
80705488:	70080400 	andvc	r0, r8, r0, lsl #8
8070548c:	03006469 	movweq	r6, #1129	; 0x469
80705490:	0000521a 	andeq	r5, r0, sl, lsl r2
80705494:	a9090800 	stmdbge	r9, {fp}
80705498:	03807059 	orreq	r7, r0, #89	; 0x59
8070549c:	0000801b 	andeq	r8, r0, fp, lsl r0
807054a0:	13090c00 	movwne	r0, #39936	; 0x9c00
807054a4:	03807059 	orreq	r7, r0, #89	; 0x59
807054a8:	0001771c 	andeq	r7, r1, ip, lsl r7
807054ac:	2f091000 	svccs	0x00091000
807054b0:	03807059 	orreq	r7, r0, #89	; 0x59
807054b4:	00017d1e 	andeq	r7, r1, lr, lsl sp
807054b8:	59091400 	stmdbpl	r9, {sl, ip}
807054bc:	03807059 	orreq	r7, r0, #89	; 0x59
807054c0:	0001831f 	andeq	r8, r1, pc, lsl r3
807054c4:	9e091800 	cdpls	8, 0, cr1, cr9, cr0, {0}
807054c8:	03807059 	orreq	r7, r0, #89	; 0x59
807054cc:	00005d20 	andeq	r5, r0, r0, lsr #26
807054d0:	0d001c00 	stceq	12, cr1, [r0, #-0]
807054d4:	00002c04 	andeq	r2, r0, r4, lsl #24
807054d8:	0b040d00 	bleq	808088e0 <ptable+0x102e4c>
807054dc:	0d000001 	stceq	0, cr0, [r0, #-4]
807054e0:	00010004 	andeq	r0, r1, r4
807054e4:	590c0c00 	stmdbpl	ip, {sl, fp}
807054e8:	21038070 	tstcs	r3, r0, ror r0
807054ec:	0000010b 	andeq	r0, r0, fp, lsl #2
807054f0:	0108000e 	tsteq	r8, lr
807054f4:	0001aa11 	andeq	sl, r1, r1, lsl sl
807054f8:	59070900 	stmdbpl	r7, {r8, fp}
807054fc:	13018070 	movwne	r8, #4208	; 0x1070
80705500:	000001aa 	andeq	r0, r0, sl, lsr #3
80705504:	890a0000 	stmdbhi	sl, {}	; <UNPREDICTABLE>
80705508:	ba000001 	blt	80705514 <.LC4+0x1e4>
8070550c:	0b000001 	bleq	80705518 <.LC4+0x1e8>
80705510:	000000f9 	strdeq	r0, [r0], -r9
80705514:	750f003f 	strvc	r0, [pc, #-63]	; 807054dd <.LC4+0x1ad>
80705518:	01807059 	orreq	r7, r0, r9, asr r0
8070551c:	70505816 	subsvc	r5, r0, r6, lsl r8
80705520:	00001880 	andeq	r1, r0, r0, lsl #17
80705524:	109c0100 	addsne	r0, ip, r0, lsl #2
80705528:	80705968 	rsbshi	r5, r0, r8, ror #18
8070552c:	50701b01 	rsbspl	r1, r0, r1, lsl #22
80705530:	00d48070 	sbcseq	r8, r4, r0, ror r0
80705534:	9c010000 	stcls	0, cr0, [r1], {-0}
80705538:	0000021c 	andeq	r0, r0, ip, lsl r2
8070553c:	01007011 	tsteq	r0, r1, lsl r0
80705540:	00021c1b 	andeq	r1, r2, fp, lsl ip
80705544:	6c910200 	lfmvs	f0, 4, [r1], {0}
80705548:	70232312 	eorvc	r2, r3, r2, lsl r3
8070554c:	5d1e0180 	ldfpls	f0, [lr, #-512]	; 0xfffffe00
80705550:	fd000000 	stc2	0, cr0, [r0, #-0]
80705554:	13000001 	movwne	r0, #1
80705558:	230a1200 	movwcs	r1, #41472	; 0xa200
8070555c:	21018070 	tstcs	r1, r0, ror r0
80705560:	0000005d 	andeq	r0, r0, sp, asr r0
80705564:	0000020e 	andeq	r0, r0, lr, lsl #4
80705568:	73140013 	tstvc	r4, #19
8070556c:	22010070 	andcs	r0, r1, #112	; 0x70
80705570:	00000222 	andeq	r0, r0, r2, lsr #4
80705574:	00749102 	rsbseq	r9, r4, r2, lsl #2
80705578:	0189040d 	orreq	r0, r9, sp, lsl #8
8070557c:	040d0000 	streq	r0, [sp], #-0
80705580:	00000228 	andeq	r0, r0, r8, lsr #4
80705584:	56080102 	strpl	r0, [r8], -r2, lsl #2
80705588:	15807012 	strne	r7, [r0, #18]
8070558c:	80705901 	rsbshi	r5, r0, r1, lsl #18
80705590:	021c2e01 	andseq	r2, ip, #1, 28
80705594:	51440000 	mrspl	r0, (UNDEF: 68)
80705598:	00848070 	addeq	r8, r4, r0, ror r0
8070559c:	9c010000 	stcls	0, cr0, [r1], {-0}
807055a0:	0000025f 	andeq	r0, r0, pc, asr r2
807055a4:	70515c16 	subsvc	r5, r1, r6, lsl ip
807055a8:	00004c80 	andeq	r4, r0, r0, lsl #25
807055ac:	00701400 	rsbseq	r1, r0, r0, lsl #8
807055b0:	021c3101 	andseq	r3, ip, #1073741824	; 0x40000000
807055b4:	91020000 	mrsls	r0, (UNDEF: 2)
807055b8:	10000074 	andne	r0, r0, r4, ror r0
807055bc:	8070594a 	rsbshi	r5, r0, sl, asr #18
807055c0:	51c83d01 	bicpl	r3, r8, r1, lsl #26
807055c4:	00388070 	eorseq	r8, r8, r0, ror r0
807055c8:	9c010000 	stcls	0, cr0, [r1], {-0}
807055cc:	00000283 	andeq	r0, r0, r3, lsl #5
807055d0:	70590717 	subsvc	r0, r9, r7, lsl r7
807055d4:	1c3d0180 	ldfnes	f0, [sp], #-512	; 0xfffffe00
807055d8:	02000002 	andeq	r0, r0, #2
807055dc:	18007491 	stmdane	r0, {r0, r4, r7, sl, ip, sp, lr}
807055e0:	807058e3 	rsbshi	r5, r0, r3, ror #17
807055e4:	52004301 	andpl	r4, r0, #67108864	; 0x4000000
807055e8:	00a88070 	adceq	r8, r8, r0, ror r0
807055ec:	9c010000 	stcls	0, cr0, [r1], {-0}
807055f0:	000002af 	andeq	r0, r0, pc, lsr #5
807055f4:	70521816 	subsvc	r1, r2, r6, lsl r8
807055f8:	00003880 	andeq	r3, r0, r0, lsl #17
807055fc:	00701400 	rsbseq	r1, r0, r0, lsl #8
80705600:	021c4601 	andseq	r4, ip, #1048576	; 0x100000
80705604:	91020000 	mrsls	r0, (UNDEF: 2)
80705608:	19000074 	stmdbne	r0, {r2, r4, r5, r6}
8070560c:	8070123c 	rsbshi	r1, r0, ip, lsr r2
80705610:	0052a004 	subseq	sl, r2, r4
80705614:	831a0000 	tsthi	sl, #0
80705618:	01807059 	orreq	r7, r0, r9, asr r0
8070561c:	00005d0e 	andeq	r5, r0, lr, lsl #26
80705620:	a8030500 	stmdage	r3, {r8, sl}
80705624:	1a807052 	bne	7e721774 <__high_exec_veneer+0x7e1213dc>
80705628:	807058c9 	rsbshi	r5, r0, r9, asr #17
8070562c:	021c0f01 	andseq	r0, ip, #1, 30
80705630:	03050000 	movweq	r0, #20480	; 0x5000
80705634:	80705a90 			; <UNDEFINED> instruction: 0x80705a90
80705638:	70593c1a 	subsvc	r3, r9, sl, lsl ip
8070563c:	94140180 	ldrls	r0, [r4], #-384	; 0xfffffe80
80705640:	05000001 	streq	r0, [r0, #-1]
80705644:	705a9403 	subsvc	r9, sl, r3, lsl #8
80705648:	11010080 	smlabbne	r1, r0, r0, r0
8070564c:	130e2501 	movwne	r2, #58625	; 0xe501
80705650:	1b0e030b 	blne	80a86284 <ptable+0x3807f0>
80705654:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
80705658:	00171006 	andseq	r1, r7, r6
8070565c:	00240200 	eoreq	r0, r4, r0, lsl #4
80705660:	0b3e0b0b 	bleq	81688294 <ptable+0xf82800>
80705664:	00000e03 	andeq	r0, r0, r3, lsl #28
80705668:	03001603 	movweq	r1, #1539	; 0x603
8070566c:	3b0b3a08 	blcc	809d3e94 <ptable+0x2ce400>
80705670:	0013490b 	andseq	r4, r3, fp, lsl #18
80705674:	00240400 	eoreq	r0, r4, r0, lsl #8
80705678:	0b3e0b0b 	bleq	816882ac <ptable+0xf82818>
8070567c:	00000803 	andeq	r0, r0, r3, lsl #16
80705680:	03010405 	movweq	r0, #5125	; 0x1405
80705684:	490b0b0e 	stmdbmi	fp, {r1, r2, r3, r8, r9, fp}
80705688:	3b0b3a13 	blcc	809d3edc <ptable+0x2ce448>
8070568c:	0013010b 	andseq	r0, r3, fp, lsl #2
80705690:	00280600 	eoreq	r0, r8, r0, lsl #12
80705694:	0b1c0e03 	bleq	80e08ea8 <ptable+0x703414>
80705698:	13070000 	movwne	r0, #28672	; 0x7000
8070569c:	0b0e0301 	bleq	80a862a8 <ptable+0x380814>
807056a0:	3b0b3a0b 	blcc	809d3ed4 <ptable+0x2ce440>
807056a4:	0013010b 	andseq	r0, r3, fp, lsl #2
807056a8:	000d0800 	andeq	r0, sp, r0, lsl #16
807056ac:	0b3a0803 	bleq	815876c0 <ptable+0xe81c2c>
807056b0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
807056b4:	00000b38 	andeq	r0, r0, r8, lsr fp
807056b8:	03000d09 	movweq	r0, #3337	; 0xd09
807056bc:	3b0b3a0e 	blcc	809d3efc <ptable+0x2ce468>
807056c0:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
807056c4:	0a00000b 	beq	807056f8 <.LC4+0x3c8>
807056c8:	13490101 	movtne	r0, #37121	; 0x9101
807056cc:	00001301 	andeq	r1, r0, r1, lsl #6
807056d0:	4900210b 	stmdbmi	r0, {r0, r1, r3, r8, sp}
807056d4:	000b2f13 	andeq	r2, fp, r3, lsl pc
807056d8:	00160c00 	andseq	r0, r6, r0, lsl #24
807056dc:	0b3a0e03 	bleq	81588ef0 <ptable+0xe8345c>
807056e0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
807056e4:	0f0d0000 	svceq	0x000d0000
807056e8:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
807056ec:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
807056f0:	050b0113 	streq	r0, [fp, #-275]	; 0xfffffeed
807056f4:	0b3b0b3a 	bleq	815c83e4 <ptable+0xec2950>
807056f8:	00001301 	andeq	r1, r0, r1, lsl #6
807056fc:	3f002e0f 	svccc	0x00002e0f
80705700:	3a0e0319 	bcc	80a8636c <ptable+0x3808d8>
80705704:	110b3b0b 	tstne	fp, fp, lsl #22
80705708:	40061201 	andmi	r1, r6, r1, lsl #4
8070570c:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
80705710:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
80705714:	03193f01 	tsteq	r9, #1, 30
80705718:	3b0b3a0e 	blcc	809d3f58 <ptable+0x2ce4c4>
8070571c:	1119270b 	tstne	r9, fp, lsl #14
80705720:	40061201 	andmi	r1, r6, r1, lsl #4
80705724:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
80705728:	00001301 	andeq	r1, r0, r1, lsl #6
8070572c:	03000511 	movweq	r0, #1297	; 0x511
80705730:	3b0b3a08 	blcc	809d3f58 <ptable+0x2ce4c4>
80705734:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
80705738:	12000018 	andne	r0, r0, #24
8070573c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
80705740:	0b3a0e03 	bleq	81588f54 <ptable+0xe834c0>
80705744:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80705748:	1301193c 	movwne	r1, #6460	; 0x193c
8070574c:	18130000 	ldmdane	r3, {}	; <UNPREDICTABLE>
80705750:	14000000 	strne	r0, [r0], #-0
80705754:	08030034 	stmdaeq	r3, {r2, r4, r5}
80705758:	0b3b0b3a 	bleq	815c8448 <ptable+0xec29b4>
8070575c:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80705760:	2e150000 	cdpcs	0, 1, cr0, cr5, cr0, {0}
80705764:	03193f01 	tsteq	r9, #1, 30
80705768:	3b0b3a0e 	blcc	809d3fa8 <ptable+0x2ce514>
8070576c:	1113490b 	tstne	r3, fp, lsl #18
80705770:	40061201 	andmi	r1, r6, r1, lsl #4
80705774:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
80705778:	00001301 	andeq	r1, r0, r1, lsl #6
8070577c:	11010b16 	tstne	r1, r6, lsl fp
80705780:	00061201 	andeq	r1, r6, r1, lsl #4
80705784:	00051700 	andeq	r1, r5, r0, lsl #14
80705788:	0b3a0e03 	bleq	81588f9c <ptable+0xe83508>
8070578c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80705790:	00001802 	andeq	r1, r0, r2, lsl #16
80705794:	3f012e18 	svccc	0x00012e18
80705798:	3a0e0319 	bcc	80a86404 <ptable+0x380970>
8070579c:	110b3b0b 	tstne	fp, fp, lsl #22
807057a0:	40061201 	andmi	r1, r6, r1, lsl #4
807057a4:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
807057a8:	00001301 	andeq	r1, r0, r1, lsl #6
807057ac:	03003419 	movweq	r3, #1049	; 0x419
807057b0:	3b0b3a0e 	blcc	809d3ff0 <ptable+0x2ce55c>
807057b4:	3f13490b 	svccc	0x0013490b
807057b8:	00193c19 	andseq	r3, r9, r9, lsl ip
807057bc:	00341a00 	eorseq	r1, r4, r0, lsl #20
807057c0:	0b3a0e03 	bleq	81588fd4 <ptable+0xe83540>
807057c4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
807057c8:	1802193f 	stmdane	r2, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
807057cc:	1c000000 	stcne	0, cr0, [r0], {-0}
807057d0:	02000000 	andeq	r0, r0, #0
807057d4:	70535c00 	subsvc	r5, r3, r0, lsl #24
807057d8:	00000480 	andeq	r0, r0, r0, lsl #9
807057dc:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
807057e0:	50807050 	addpl	r7, r0, r0, asr r0
807057e4:	00000002 	andeq	r0, r0, r2
807057e8:	00000000 	andeq	r0, r0, r0
807057ec:	d6000000 	strle	r0, [r0], -r0
807057f0:	02000000 	andeq	r0, r0, #0
807057f4:	00007c00 	andeq	r7, r0, r0, lsl #24
807057f8:	fb010200 	blx	80746002 <ptable+0x4056e>
807057fc:	01000d0e 	tsteq	r0, lr, lsl #26
80705800:	00010101 	andeq	r0, r1, r1, lsl #2
80705804:	00010000 	andeq	r0, r1, r0
80705808:	656b0100 	strbvs	r0, [fp, #-256]!	; 0xffffff00
8070580c:	732f6e72 	teqvc	pc, #1824	; 0x720
80705810:	64656863 	strbtvs	r6, [r5], #-2147	; 0xfffff79d
80705814:	692f2e00 	stmdbvs	pc!, {r9, sl, fp, sp}	; <UNPREDICTABLE>
80705818:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
8070581c:	732f6564 	teqvc	pc, #100, 10	; 0x19000000
80705820:	2e007379 	mcrcs	3, 0, r7, cr0, cr9, {3}
80705824:	636e692f 	cmnvs	lr, #770048	; 0xbc000
80705828:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
8070582c:	642f2e00 	strtvs	r2, [pc], #-3584	; 80705834 <.LC4+0x504>
80705830:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0xfffff68e
80705834:	6d2f7372 	stcvs	3, cr7, [pc, #-456]!	; 80705674 <.LC4+0x344>
80705838:	00637369 	rsbeq	r7, r3, r9, ror #6
8070583c:	6f727000 	svcvs	0x00727000
80705840:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
80705844:	0100632e 	tsteq	r0, lr, lsr #6
80705848:	79740000 	ldmdbvc	r4!, {}^	; <UNPREDICTABLE>
8070584c:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
80705850:	00020068 	andeq	r0, r2, r8, rrx
80705854:	6f727000 	svcvs	0x00727000
80705858:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
8070585c:	0300682e 	movweq	r6, #2094	; 0x82e
80705860:	74640000 	strbtvc	r0, [r4], #-0
80705864:	797a2d62 	ldmdbvc	sl!, {r1, r5, r6, r8, sl, fp, sp}^
80705868:	3037716e 	eorscc	r7, r7, lr, ror #2
8070586c:	682e3030 	stmdavs	lr!, {r4, r5, ip, sp}
80705870:	00000400 	andeq	r0, r0, r0, lsl #8
80705874:	02050000 	andeq	r0, r5, #0
80705878:	80705058 	rsbshi	r5, r0, r8, asr r0
8070587c:	4c011603 	stcmi	6, cr1, [r1], {3}
80705880:	bb678385 	bllt	820e669c <ptable+0x19e0c08>
80705884:	bb672108 	bllt	820cdcac <ptable+0x19c8218>
80705888:	67676885 	strbvs	r6, [r7, -r5, lsl #17]!
8070588c:	67696867 	strbvs	r6, [r9, -r7, ror #16]!
80705890:	4b838367 	blmi	7e7e6634 <__high_exec_veneer+0x7e1e629c>
80705894:	02040200 	andeq	r0, r4, #0, 4
80705898:	04020047 	streq	r0, [r2], #-71	; 0xffffffb9
8070589c:	06660601 	strbteq	r0, [r6], -r1, lsl #12
807058a0:	04020088 	streq	r0, [r2], #-136	; 0xffffff78
807058a4:	86306701 	ldrthi	r6, [r0], -r1, lsl #14
807058a8:	69836783 	stmibvs	r3, {r0, r1, r7, r8, r9, sl, sp, lr}
807058ac:	02006767 	andeq	r6, r0, #27000832	; 0x19c0000
807058b0:	00830304 	addeq	r0, r3, r4, lsl #6
807058b4:	65030402 	strvs	r0, [r3, #-1026]	; 0xfffffbfe
807058b8:	01040200 	mrseq	r0, R12_usr
807058bc:	85066606 	strhi	r6, [r6, #-1542]	; 0xfffff9fa
807058c0:	9f679f9f 	svcls	0x00679f9f
807058c4:	01000802 	tsteq	r0, r2, lsl #16
807058c8:	6f6f7201 	svcvs	0x006f7201
807058cc:	6f727074 	svcvs	0x00727074
807058d0:	6f630063 	svcvs	0x00630063
807058d4:	7865746e 	stmdavc	r5!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}^
807058d8:	00745f74 	rsbseq	r5, r4, r4, ror pc
807058dc:	424d4f5a 	submi	r4, sp, #360	; 0x168
807058e0:	63004549 	movwvs	r4, #1353	; 0x549
807058e4:	74616572 	strbtvc	r6, [r1], #-1394	; 0xfffffa8e
807058e8:	69665f65 	stmdbvs	r6!, {r0, r2, r5, r6, r8, r9, sl, fp, ip, lr}^
807058ec:	5f747372 	svcpl	0x00747372
807058f0:	636f7270 	cmnvs	pc, #112, 4
807058f4:	00737365 	rsbseq	r7, r3, r5, ror #6
807058f8:	45454c53 	strbmi	r4, [r5, #-3155]	; 0xfffff3ad
807058fc:	474e4950 	smlsldmi	r4, lr, r0, r9
80705900:	6c6c6100 	stfvse	f6, [ip], #-0
80705904:	705f636f 	subsvc	r6, pc, pc, ror #6
80705908:	00636f72 	rsbeq	r6, r3, r2, ror pc
8070590c:	636f7270 	cmnvs	pc, #112, 4
80705910:	6b00745f 	blvs	80722a94 <ptable+0x1d000>
80705914:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
80705918:	656b006b 	strbvs	r0, [fp, #-107]!	; 0xffffff95
8070591c:	732f6e72 	teqvc	pc, #1824	; 0x720
80705920:	64656863 	strbtvs	r6, [r5], #-2147	; 0xfffff79d
80705924:	6f72702f 	svcvs	0x0072702f
80705928:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
8070592c:	7000632e 	andvc	r6, r0, lr, lsr #6
80705930:	6e657261 	cdpvs	2, 6, cr7, cr5, cr1, {3}
80705934:	4c420074 	mcrrmi	0, 7, r0, r2, cr4
80705938:	004b434f 	subeq	r4, fp, pc, asr #6
8070593c:	62617470 	rsbvs	r7, r1, #112, 8	; 0x70000000
80705940:	7000656c 	andvc	r6, r0, ip, ror #10
80705944:	64646167 	strbtvs	r6, [r4], #-359	; 0xfffffe99
80705948:	61730072 	cmnvs	r3, r2, ror r0
8070594c:	6c656879 	stclvs	8, cr6, [r5], #-484	; 0xfffffe1c
80705950:	52006f6c 	andpl	r6, r0, #108, 30	; 0x1b0
80705954:	59444145 	stmdbpl	r4, {r0, r2, r6, r8, lr}^
80705958:	6e6f6300 	cdpvs	3, 6, cr6, cr15, cr0, {0}
8070595c:	74786574 	ldrbtvc	r6, [r8], #-1396	; 0xfffffa8c
80705960:	554e5500 	strbpl	r5, [lr, #-1280]	; 0xfffffb00
80705964:	00444553 	subeq	r4, r4, r3, asr r5
80705968:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
8070596c:	6f72705f 	svcvs	0x0072705f
80705970:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
80705974:	6e6f6300 	cdpvs	3, 6, cr6, cr15, cr0, {0}
80705978:	74786574 	ldrbtvc	r6, [r8], #-1396	; 0xfffffa8c
8070597c:	6977735f 	ldmdbvs	r7!, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
80705980:	70006863 	andvc	r6, r0, r3, ror #16
80705984:	6e636469 	cdpvs	4, 6, cr6, cr3, cr9, {3}
80705988:	50430074 	subpl	r0, r3, r4, ror r0
8070598c:	45005253 	strmi	r5, [r0, #-595]	; 0xfffffdad
80705990:	5952424d 	ldmdbpl	r2, {r0, r2, r3, r6, r9, lr}^
80705994:	5552004f 	ldrbpl	r0, [r2, #-79]	; 0xffffffb1
80705998:	4e494e4e 	cdpmi	14, 4, cr4, cr9, cr14, {2}
8070599c:	696b0047 	stmdbvs	fp!, {r0, r1, r2, r6}^
807059a0:	64656c6c 	strbtvs	r6, [r5], #-3180	; 0xfffff394
807059a4:	6f727000 	svcvs	0x00727000
807059a8:	61747363 	cmnvs	r4, r3, ror #6
807059ac:	00006574 	andeq	r6, r0, r4, ror r5
807059b0:	0000000c 	andeq	r0, r0, ip
807059b4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
807059b8:	7c020001 	stcvc	0, cr0, [r2], {1}
807059bc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
807059c0:	0000001c 	andeq	r0, r0, ip, lsl r0
807059c4:	807059b0 	ldrhthi	r5, [r0], #-144	; 0xffffff70
807059c8:	80705058 	rsbshi	r5, r0, r8, asr r0
807059cc:	00000018 	andeq	r0, r0, r8, lsl r0
807059d0:	8b040e42 	blhi	808092e0 <ptable+0x10384c>
807059d4:	0b0d4201 	bleq	80a561e0 <ptable+0x35074c>
807059d8:	420d0d44 	andmi	r0, sp, #68, 26	; 0x1100
807059dc:	00000ecb 	andeq	r0, r0, fp, asr #29
807059e0:	0000001c 	andeq	r0, r0, ip, lsl r0
807059e4:	807059b0 	ldrhthi	r5, [r0], #-144	; 0xffffff70
807059e8:	80705070 	rsbshi	r5, r0, r0, ror r0
807059ec:	000000d4 	ldrdeq	r0, [r0], -r4
807059f0:	8b080e42 	blhi	80909300 <ptable+0x20386c>
807059f4:	42018e02 	andmi	r8, r1, #2, 28
807059f8:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
807059fc:	080d0c64 	stmdaeq	sp, {r2, r5, r6, sl, fp}
80705a00:	0000001c 	andeq	r0, r0, ip, lsl r0
80705a04:	807059b0 	ldrhthi	r5, [r0], #-144	; 0xffffff70
80705a08:	80705144 	rsbshi	r5, r0, r4, asr #2
80705a0c:	00000084 	andeq	r0, r0, r4, lsl #1
80705a10:	8b080e42 	blhi	80909320 <ptable+0x20388c>
80705a14:	42018e02 	andmi	r8, r1, #2, 28
80705a18:	7a040b0c 	bvc	80808650 <ptable+0x102bbc>
80705a1c:	00080d0c 	andeq	r0, r8, ip, lsl #26
80705a20:	0000001c 	andeq	r0, r0, ip, lsl r0
80705a24:	807059b0 	ldrhthi	r5, [r0], #-144	; 0xffffff70
80705a28:	807051c8 	rsbshi	r5, r0, r8, asr #3
80705a2c:	00000038 	andeq	r0, r0, r8, lsr r0
80705a30:	8b080e42 	blhi	80909340 <ptable+0x2038ac>
80705a34:	42018e02 	andmi	r8, r1, #2, 28
80705a38:	56040b0c 	strpl	r0, [r4], -ip, lsl #22
80705a3c:	00080d0c 	andeq	r0, r8, ip, lsl #26
80705a40:	0000001c 	andeq	r0, r0, ip, lsl r0
80705a44:	807059b0 	ldrhthi	r5, [r0], #-144	; 0xffffff70
80705a48:	80705200 	rsbshi	r5, r0, r0, lsl #4
80705a4c:	000000a8 	andeq	r0, r0, r8, lsr #1
80705a50:	8b080e42 	blhi	80909360 <ptable+0x2038cc>
80705a54:	42018e02 	andmi	r8, r1, #2, 28
80705a58:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80705a5c:	080d0c4c 	stmdaeq	sp, {r2, r3, r6, sl, fp}
80705a60:	00002e41 	andeq	r2, r0, r1, asr #28
80705a64:	61656100 	cmnvs	r5, r0, lsl #2
80705a68:	01006962 	tsteq	r0, r2, ror #18
80705a6c:	00000024 	andeq	r0, r0, r4, lsr #32
80705a70:	412d3705 	teqmi	sp, r5, lsl #14
80705a74:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80705a78:	09010841 	stmdbeq	r1, {r0, r6, fp}
80705a7c:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
80705a80:	17011501 	strne	r1, [r1, -r1, lsl #10]
80705a84:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80705a88:	1e011a01 	vmlane.f32	s2, s2, s2
80705a8c:	00012206 	andeq	r2, r1, r6, lsl #4

80705a90 <rootproc>:
80705a90:	00000000 	andeq	r0, r0, r0

80705a94 <ptable>:
	...

Disassembly of section .text:

00600000 <mmu_section_map>:
  600000:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  600004:	e28db000 	add	fp, sp, #0
  600008:	e24dd014 	sub	sp, sp, #20
  60000c:	e50b0010 	str	r0, [fp, #-16]
  600010:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
  600014:	e51b3010 	ldr	r3, [fp, #-16]
  600018:	e1a03a23 	lsr	r3, r3, #20
  60001c:	e1a03103 	lsl	r3, r3, #2
  600020:	e2833602 	add	r3, r3, #2097152	; 0x200000
  600024:	e50b3008 	str	r3, [fp, #-8]
  600028:	e51b2008 	ldr	r2, [fp, #-8]
  60002c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
  600030:	e1a03a23 	lsr	r3, r3, #20
  600034:	e1a03a03 	lsl	r3, r3, #20
  600038:	e2833e5e 	add	r3, r3, #1504	; 0x5e0
  60003c:	e2833002 	add	r3, r3, #2
  600040:	e5823000 	str	r3, [r2]
  600044:	e1a00000 	nop			; (mov r0, r0)
  600048:	e24bd000 	sub	sp, fp, #0
  60004c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  600050:	e12fff1e 	bx	lr

00600054 <enable_mmu>:
  600054:	e92d4800 	push	{fp, lr}
  600058:	e28db004 	add	fp, sp, #4
  60005c:	e24dd028 	sub	sp, sp, #40	; 0x28
  600060:	e3a0300c 	mov	r3, #12
  600064:	e3413ff0 	movt	r3, #8176	; 0x1ff0
  600068:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
  60006c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
  600070:	e30002bc 	movw	r0, #700	; 0x2bc
  600074:	e3400060 	movt	r0, #96	; 0x60
  600078:	e12fff33 	blx	r3
  60007c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
  600080:	e30002cc 	movw	r0, #716	; 0x2cc
  600084:	e3400060 	movt	r0, #96	; 0x60
  600088:	e12fff33 	blx	r3
  60008c:	e3a03000 	mov	r3, #0
  600090:	e50b3008 	str	r3, [fp, #-8]
  600094:	e3a03000 	mov	r3, #0
  600098:	e50b300c 	str	r3, [fp, #-12]
  60009c:	ea000008 	b	6000c4 <enable_mmu+0x70>
  6000a0:	e51b100c 	ldr	r1, [fp, #-12]
  6000a4:	e51b000c 	ldr	r0, [fp, #-12]
  6000a8:	ebffffd4 	bl	600000 <mmu_section_map>
  6000ac:	e51b3008 	ldr	r3, [fp, #-8]
  6000b0:	e2833001 	add	r3, r3, #1
  6000b4:	e50b3008 	str	r3, [fp, #-8]
  6000b8:	e51b300c 	ldr	r3, [fp, #-12]
  6000bc:	e2833601 	add	r3, r3, #1048576	; 0x100000
  6000c0:	e50b300c 	str	r3, [fp, #-12]
  6000c4:	e51b3008 	ldr	r3, [fp, #-8]
  6000c8:	e3530a01 	cmp	r3, #4096	; 0x1000
  6000cc:	3afffff3 	bcc	6000a0 <enable_mmu+0x4c>
  6000d0:	e3a03000 	mov	r3, #0
  6000d4:	e50b3010 	str	r3, [fp, #-16]
  6000d8:	ea00000c 	b	600110 <enable_mmu+0xbc>
  6000dc:	e51b3010 	ldr	r3, [fp, #-16]
  6000e0:	e2833b02 	add	r3, r3, #2048	; 0x800
  6000e4:	e2833006 	add	r3, r3, #6
  6000e8:	e1a02a03 	lsl	r2, r3, #20
  6000ec:	e51b3010 	ldr	r3, [fp, #-16]
  6000f0:	e2833006 	add	r3, r3, #6
  6000f4:	e1a03a03 	lsl	r3, r3, #20
  6000f8:	e1a01003 	mov	r1, r3
  6000fc:	e1a00002 	mov	r0, r2
  600100:	ebffffbe 	bl	600000 <mmu_section_map>
  600104:	e51b3010 	ldr	r3, [fp, #-16]
  600108:	e2833001 	add	r3, r3, #1
  60010c:	e50b3010 	str	r3, [fp, #-16]
  600110:	e51b3010 	ldr	r3, [fp, #-16]
  600114:	e3530009 	cmp	r3, #9
  600118:	9affffef 	bls	6000dc <enable_mmu+0x88>
  60011c:	e3a03000 	mov	r3, #0
  600120:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
  600124:	ea00000c 	b	60015c <enable_mmu+0x108>
  600128:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
  60012c:	e2833b02 	add	r3, r3, #2048	; 0x800
  600130:	e2833002 	add	r3, r3, #2
  600134:	e1a02a03 	lsl	r2, r3, #20
  600138:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
  60013c:	e2833002 	add	r3, r3, #2
  600140:	e1a03a03 	lsl	r3, r3, #20
  600144:	e1a01003 	mov	r1, r3
  600148:	e1a00002 	mov	r0, r2
  60014c:	ebffffab 	bl	600000 <mmu_section_map>
  600150:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
  600154:	e2833001 	add	r3, r3, #1
  600158:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
  60015c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
  600160:	e3530003 	cmp	r3, #3
  600164:	9affffef 	bls	600128 <enable_mmu+0xd4>
  600168:	e3a03001 	mov	r3, #1
  60016c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
  600170:	ea00000d 	b	6001ac <enable_mmu+0x158>
  600174:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
  600178:	e1a03a03 	lsl	r3, r3, #20
  60017c:	e2633000 	rsb	r3, r3, #0
  600180:	e283220e 	add	r2, r3, #-536870912	; 0xe0000000
  600184:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
  600188:	e1a03a03 	lsl	r3, r3, #20
  60018c:	e2633000 	rsb	r3, r3, #0
  600190:	e2833202 	add	r3, r3, #536870912	; 0x20000000
  600194:	e1a01003 	mov	r1, r3
  600198:	e1a00002 	mov	r0, r2
  60019c:	ebffff97 	bl	600000 <mmu_section_map>
  6001a0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
  6001a4:	e2833001 	add	r3, r3, #1
  6001a8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
  6001ac:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
  6001b0:	e3530010 	cmp	r3, #16
  6001b4:	9affffee 	bls	600174 <enable_mmu+0x120>
  6001b8:	e3a03401 	mov	r3, #16777216	; 0x1000000
  6001bc:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
  6001c0:	e3a034e1 	mov	r3, #-520093696	; 0xe1000000
  6001c4:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
  6001c8:	e3a03000 	mov	r3, #0
  6001cc:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
  6001d0:	ea00000b 	b	600204 <enable_mmu+0x1b0>
  6001d4:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
  6001d8:	e51b0020 	ldr	r0, [fp, #-32]	; 0xffffffe0
  6001dc:	ebffff87 	bl	600000 <mmu_section_map>
  6001e0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
  6001e4:	e2833001 	add	r3, r3, #1
  6001e8:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
  6001ec:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
  6001f0:	e2833601 	add	r3, r3, #1048576	; 0x100000
  6001f4:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
  6001f8:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
  6001fc:	e2833601 	add	r3, r3, #1048576	; 0x100000
  600200:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
  600204:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
  600208:	e3530e1e 	cmp	r3, #480	; 0x1e0
  60020c:	3afffff0 	bcc	6001d4 <enable_mmu+0x180>
  600210:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
  600214:	e30002dc 	movw	r0, #732	; 0x2dc
  600218:	e3400060 	movt	r0, #96	; 0x60
  60021c:	e12fff33 	blx	r3
  600220:	e3a03602 	mov	r3, #2097152	; 0x200000
  600224:	e1a00003 	mov	r0, r3
  600228:	ee020f10 	mcr	15, 0, r0, cr2, cr0, {0}
  60022c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
  600230:	e30002ec 	movw	r0, #748	; 0x2ec
  600234:	e3400060 	movt	r0, #96	; 0x60
  600238:	e12fff33 	blx	r3
  60023c:	e59f0074 	ldr	r0, [pc, #116]	; 6002b8 <enable_mmu+0x264>
  600240:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}
  600244:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
  600248:	e30002fc 	movw	r0, #764	; 0x2fc
  60024c:	e3400060 	movt	r0, #96	; 0x60
  600250:	e12fff33 	blx	r3
  600254:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
  600258:	e3800001 	orr	r0, r0, #1
  60025c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
  600260:	f57ff06f 	isb	sy
  600264:	f57ff04f 	dsb	sy
  600268:	e3a01000 	mov	r1, #0
  60026c:	ee081f17 	mcr	15, 0, r1, cr8, cr7, {0}
  600270:	ee081f16 	mcr	15, 0, r1, cr8, cr6, {0}
  600274:	ee081f15 	mcr	15, 0, r1, cr8, cr5, {0}
  600278:	ee071fd5 	mcr	15, 0, r1, cr7, cr5, {6}
  60027c:	ee071f15 	mcr	15, 0, r1, cr7, cr5, {0}
  600280:	ee07bf5e 	mcr	15, 0, fp, cr7, cr14, {2}
  600284:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
  600288:	e3800a01 	orr	r0, r0, #4096	; 0x1000
  60028c:	e3800004 	orr	r0, r0, #4
  600290:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
  600294:	f57ff04f 	dsb	sy
  600298:	f57ff06f 	isb	sy
  60029c:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
  6002a0:	e300030c 	movw	r0, #780	; 0x30c
  6002a4:	e3400060 	movt	r0, #96	; 0x60
  6002a8:	e12fff33 	blx	r3
  6002ac:	e1a00000 	nop			; (mov r0, r0)
  6002b0:	e24bd004 	sub	sp, fp, #4
  6002b4:	e8bd8800 	pop	{fp, pc}
  6002b8:	55555555 	ldrbpl	r5, [r5, #-1365]	; 0xfffffaab

006002bc <.LC0>:
  6002bc:	6e450a0d 	vmlavs.f32	s1, s10, s26
  6002c0:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
  6002c4:	554d4d20 	strbpl	r4, [sp, #-3360]	; 0xfffff2e0
  6002c8:	00000a0d 	andeq	r0, r0, sp, lsl #20

006002cc <.LC1>:
  6002cc:	646f6f47 	strbtvs	r6, [pc], #-3911	; 6002d4 <.LC1+0x8>
  6002d0:	63754c20 	cmnvs	r5, #32, 24	; 0x2000
  6002d4:	0a0d216b 	beq	948888 <__high_exec_veneer+0x3484f0>
  6002d8:	00000000 	andeq	r0, r0, r0

006002dc <.LC2>:
  6002dc:	7070614d 	rsbsvc	r6, r0, sp, asr #2
  6002e0:	20676e69 	rsbcs	r6, r7, r9, ror #28
  6002e4:	0d214b4f 	fstmdbxeq	r1!, {d4-d42}	;@ Deprecated
  6002e8:	0000000a 	andeq	r0, r0, sl

006002ec <.LC3>:
  6002ec:	20746573 	rsbscs	r6, r4, r3, ror r5
  6002f0:	20425454 	subcs	r5, r2, r4, asr r4
  6002f4:	0d214b4f 	fstmdbxeq	r1!, {d4-d42}	;@ Deprecated
  6002f8:	0000000a 	andeq	r0, r0, sl

006002fc <.LC4>:
  6002fc:	20746573 	rsbscs	r6, r4, r3, ror r5
  600300:	414d4f44 	cmpmi	sp, r4, asr #30
  600304:	4f204e49 	svcmi	0x00204e49
  600308:	000a0d4b 	andeq	r0, sl, fp, asr #26

0060030c <.LC5>:
  60030c:	20554d4d 	subscs	r4, r5, sp, asr #26
  600310:	62616e65 	rsbvs	r6, r1, #1616	; 0x650
  600314:	0d64656c 	cfstr64eq	mvdx6, [r4, #-432]!	; 0xfffffe50
  600318:	000a0d0a 	andeq	r0, sl, sl, lsl #26

0060031c <interrupt_disable>:
  60031c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  600320:	e28db000 	add	fp, sp, #0
  600324:	e10f0000 	mrs	r0, CPSR
  600328:	e38000c0 	orr	r0, r0, #192	; 0xc0
  60032c:	e129f000 	msr	CPSR_fc, r0
  600330:	e1a00000 	nop			; (mov r0, r0)
  600334:	e24bd000 	sub	sp, fp, #0
  600338:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  60033c:	e12fff1e 	bx	lr

00600340 <main>:
  600340:	e92d4800 	push	{fp, lr}
  600344:	e28db004 	add	fp, sp, #4
  600348:	ebfffff3 	bl	60031c <interrupt_disable>
  60034c:	eb000006 	bl	60036c <low_exec>
  600350:	e3a0320e 	mov	r3, #-536870912	; 0xe0000000
  600354:	e1a0d003 	mov	sp, r3
  600358:	e1b0b00d 	movs	fp, sp
  60035c:	eb00000d 	bl	600398 <__high_exec_veneer>
  600360:	e3a03000 	mov	r3, #0
  600364:	e1a00003 	mov	r0, r3
  600368:	e8bd8800 	pop	{fp, pc}

0060036c <low_exec>:
  60036c:	e92d4800 	push	{fp, lr}
  600370:	e28db004 	add	fp, sp, #4
  600374:	ebffff36 	bl	600054 <enable_mmu>
  600378:	e1a00000 	nop			; (mov r0, r0)
  60037c:	e8bd8800 	pop	{fp, pc}

00600380 <kernel_entry>:
  600380:	e10f0000 	mrs	r0, CPSR
  600384:	e380000f 	orr	r0, r0, #15
  600388:	e129f000 	msr	CPSR_fc, r0
  60038c:	e3a0b61f 	mov	fp, #32505856	; 0x1f00000
  600390:	e1a0d00b 	mov	sp, fp
  600394:	ebffffe9 	bl	600340 <main>

00600398 <__high_exec_veneer>:
  600398:	e51ff004 	ldr	pc, [pc, #-4]	; 60039c <__high_exec_veneer+0x4>
  60039c:	80700bc4 	rsbshi	r0, r0, r4, asr #23

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000001b4 			; <UNDEFINED> instruction: 0x000001b4
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000000 	andeq	r0, r0, r0
  10:	0000400c 	andeq	r4, r0, ip
  14:	00008c00 	andeq	r8, r0, r0, lsl #24
  18:	60000000 	andvs	r0, r0, r0
  1c:	0002b800 	andeq	fp, r2, r0, lsl #16
  20:	00000000 	andeq	r0, r0, r0
  24:	08010200 	stmdaeq	r1, {r9}
  28:	00000054 	andeq	r0, r0, r4, asr r0
  2c:	56060102 	strpl	r0, [r6], -r2, lsl #2
  30:	02000000 	andeq	r0, r0, #0
  34:	00620702 	rsbeq	r0, r2, r2, lsl #14
  38:	02020000 	andeq	r0, r2, #0
  3c:	0000d305 	andeq	sp, r0, r5, lsl #6
  40:	07040200 	streq	r0, [r4, -r0, lsl #4]
  44:	000000af 	andeq	r0, r0, pc, lsr #1
  48:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
  4c:	411f0200 	tstmi	pc, r0, lsl #4
  50:	04000000 	streq	r0, [r0], #-0
  54:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
  58:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
  5c:	0000aa07 	andeq	sl, r0, r7, lsl #20
  60:	07080200 	streq	r0, [r8, -r0, lsl #4]
  64:	000000a5 	andeq	r0, r0, r5, lsr #1
  68:	c5050802 	strgt	r0, [r5, #-2050]	; 0xfffff7fe
  6c:	02000000 	andeq	r0, r0, #0
  70:	00ca0504 	sbceq	r0, sl, r4, lsl #10
  74:	04020000 	streq	r0, [r2], #-0
  78:	0000bc07 	andeq	fp, r0, r7, lsl #24
  7c:	00e20500 	rsceq	r0, r2, r0, lsl #10
  80:	0f010000 	svceq	0x00010000
  84:	00600000 	rsbeq	r0, r0, r0
  88:	00000054 	andeq	r0, r0, r4, asr r0
  8c:	00bb9c01 	adcseq	r9, fp, r1, lsl #24
  90:	76060000 	strvc	r0, [r6], -r0
  94:	0f010061 	svceq	0x00010061
  98:	00000048 	andeq	r0, r0, r8, asr #32
  9c:	066c9102 	strbteq	r9, [ip], -r2, lsl #2
  a0:	01006170 	tsteq	r0, r0, ror r1
  a4:	0000480f 	andeq	r4, r0, pc, lsl #16
  a8:	68910200 	ldmvs	r1, {r9}
  ac:	0000f207 	andeq	pc, r0, r7, lsl #4
  b0:	48110100 	ldmdami	r1, {r8}
  b4:	02000000 	andeq	r0, r0, #0
  b8:	08007491 	stmdaeq	r0, {r0, r4, r7, sl, ip, sp, lr}
  bc:	00000081 	andeq	r0, r0, r1, lsl #1
  c0:	00541501 	subseq	r1, r4, r1, lsl #10
  c4:	02640060 	rsbeq	r0, r4, #96	; 0x60
  c8:	9c010000 	stcls	0, cr0, [r1], {-0}
  cc:	0000018e 	andeq	r0, r0, lr, lsl #3
  d0:	0000dd07 	andeq	sp, r0, r7, lsl #26
  d4:	a6170100 	ldrge	r0, [r7], -r0, lsl #2
  d8:	02000001 	andeq	r0, r0, #1
  dc:	8c095491 	cfstrshi	mvf5, [r9], {145}	; 0x91
  e0:	44006000 	strmi	r6, [r0], #-0
  e4:	07000000 	streq	r0, [r0, -r0]
  e8:	07000001 	streq	r0, [r0, -r1]
  ec:	0000004e 	andeq	r0, r0, lr, asr #32
  f0:	00481b01 	subeq	r1, r8, r1, lsl #22
  f4:	91020000 	mrsls	r0, (UNDEF: 2)
  f8:	61760a74 	cmnvs	r6, r4, ror sl
  fc:	481b0100 	ldmdami	fp, {r8}
 100:	02000000 	andeq	r0, r0, #0
 104:	09007091 	stmdbeq	r0, {r0, r4, r7, ip, sp, lr}
 108:	006000d0 	ldrdeq	r0, [r0], #-0	; <UNPREDICTABLE>
 10c:	0000004c 	andeq	r0, r0, ip, asr #32
 110:	00000123 	andeq	r0, r0, r3, lsr #2
 114:	00004e07 	andeq	r4, r0, r7, lsl #28
 118:	481f0100 	ldmdami	pc, {r8}	; <UNPREDICTABLE>
 11c:	02000000 	andeq	r0, r0, #0
 120:	09006c91 	stmdbeq	r0, {r0, r4, r7, sl, fp, sp, lr}
 124:	0060011c 	rsbeq	r0, r0, ip, lsl r1
 128:	0000004c 	andeq	r0, r0, ip, asr #32
 12c:	0000013f 	andeq	r0, r0, pc, lsr r1
 130:	00004e07 	andeq	r4, r0, r7, lsl #28
 134:	48230100 	stmdami	r3!, {r8}
 138:	02000000 	andeq	r0, r0, #0
 13c:	09006891 	stmdbeq	r0, {r0, r4, r7, fp, sp, lr}
 140:	00600168 	rsbeq	r0, r0, r8, ror #2
 144:	00000050 	andeq	r0, r0, r0, asr r0
 148:	0000015b 	andeq	r0, r0, fp, asr r1
 14c:	00004e07 	andeq	r4, r0, r7, lsl #28
 150:	48280100 	stmdami	r8!, {r8}
 154:	02000000 	andeq	r0, r0, #0
 158:	0b006491 	bleq	193a4 <mmu_section_map-0x5e6c5c>
 15c:	006001b8 	strhteq	r0, [r0], #-24	; 0xffffffe8
 160:	00000058 	andeq	r0, r0, r8, asr r0
 164:	0061700a 	rsbeq	r7, r1, sl
 168:	00482d01 	subeq	r2, r8, r1, lsl #26
 16c:	91020000 	mrsls	r0, (UNDEF: 2)
 170:	61760a60 	cmnvs	r6, r0, ror #20
 174:	482d0100 	stmdami	sp!, {r8}
 178:	02000000 	andeq	r0, r0, #0
 17c:	4e075c91 	mcrmi	12, 0, r5, cr7, cr1, {4}
 180:	01000000 	mrseq	r0, (UNDEF: 0)
 184:	0000482d 	andeq	r4, r0, sp, lsr #16
 188:	58910200 	ldmpl	r1, {r9}
 18c:	990c0000 	stmdbls	ip, {}	; <UNPREDICTABLE>
 190:	0d000001 	stceq	0, cr0, [r0, #-4]
 194:	00000199 	muleq	r0, r9, r1
 198:	9f040e00 	svcls	0x00040e00
 19c:	02000001 	andeq	r0, r0, #1
 1a0:	005d0801 	subseq	r0, sp, r1, lsl #16
 1a4:	040e0000 	streq	r0, [lr], #-0
 1a8:	0000018e 	andeq	r0, r0, lr, lsl #3
 1ac:	0000750f 	andeq	r7, r0, pc, lsl #10
 1b0:	48a00300 	stmiami	r0!, {r8, r9}
 1b4:	00000000 	andeq	r0, r0, r0
 1b8:	000000ab 	andeq	r0, r0, fp, lsr #1
 1bc:	00d60004 	sbcseq	r0, r6, r4
 1c0:	01040000 	mrseq	r0, (UNDEF: 4)
 1c4:	00000000 	andeq	r0, r0, r0
 1c8:	0000fd0c 	andeq	pc, r0, ip, lsl #26
 1cc:	00008c00 	andeq	r8, r0, r0, lsl #24
 1d0:	60031c00 	andvs	r1, r3, r0, lsl #24
 1d4:	00005000 	andeq	r5, r0, r0
 1d8:	0000ec00 	andeq	lr, r0, r0, lsl #24
 1dc:	08010200 	stmdaeq	r1, {r9}
 1e0:	00000054 	andeq	r0, r0, r4, asr r0
 1e4:	56060102 	strpl	r0, [r6], -r2, lsl #2
 1e8:	02000000 	andeq	r0, r0, #0
 1ec:	00620702 	rsbeq	r0, r2, r2, lsl #14
 1f0:	02020000 	andeq	r0, r2, #0
 1f4:	0000d305 	andeq	sp, r0, r5, lsl #6
 1f8:	07040200 	streq	r0, [r4, -r0, lsl #4]
 1fc:	000000af 	andeq	r0, r0, pc, lsr #1
 200:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
 204:	411f0300 	tstmi	pc, r0, lsl #6
 208:	04000000 	streq	r0, [r0], #-0
 20c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 210:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
 214:	0000aa07 	andeq	sl, r0, r7, lsl #20
 218:	07080200 	streq	r0, [r8, -r0, lsl #4]
 21c:	000000a5 	andeq	r0, r0, r5, lsr #1
 220:	c5050802 	strgt	r0, [r5, #-2050]	; 0xfffff7fe
 224:	02000000 	andeq	r0, r0, #0
 228:	00ca0504 	sbceq	r0, sl, r4, lsl #10
 22c:	04020000 	streq	r0, [r2], #-0
 230:	0000bc07 	andeq	fp, r0, r7, lsl #24
 234:	01100500 	tsteq	r0, r0, lsl #10
 238:	90010000 	andls	r0, r1, r0
 23c:	0060031c 	rsbeq	r0, r0, ip, lsl r3
 240:	00000024 	andeq	r0, r0, r4, lsr #32
 244:	0b069c01 	bleq	1a7250 <mmu_section_map-0x458db0>
 248:	02000001 	andeq	r0, r0, #1
 24c:	00005310 	andeq	r5, r0, r0, lsl r3
 250:	60034000 	andvs	r4, r3, r0
 254:	00002c00 	andeq	r2, r0, r0, lsl #24
 258:	079c0100 	ldreq	r0, [ip, r0, lsl #2]
 25c:	00000075 	andeq	r0, r0, r5, ror r0
 260:	0048a004 	subeq	sl, r8, r4
 264:	33000000 	movwcc	r0, #0
 268:	04000000 	streq	r0, [r0], #-0
 26c:	00014c00 	andeq	r4, r1, r0, lsl #24
 270:	00010400 	andeq	r0, r1, r0, lsl #8
 274:	0c000000 	stceq	0, cr0, [r0], {-0}
 278:	0000012b 	andeq	r0, r0, fp, lsr #2
 27c:	0000008c 	andeq	r0, r0, ip, lsl #1
 280:	0060036c 	rsbeq	r0, r0, ip, ror #6
 284:	00000014 	andeq	r0, r0, r4, lsl r0
 288:	00000197 	muleq	r0, r7, r1
 28c:	00012202 	andeq	r2, r1, r2, lsl #4
 290:	6c0d0100 	stfvss	f0, [sp], {-0}
 294:	14006003 	strne	r6, [r0], #-3
 298:	01000000 	mrseq	r0, (UNDEF: 0)
 29c:	004f009c 	umaaleq	r0, pc, ip, r0	; <UNPREDICTABLE>
 2a0:	00020000 	andeq	r0, r2, r0
 2a4:	00000176 	andeq	r0, r0, r6, ror r1
 2a8:	01dd0104 	bicseq	r0, sp, r4, lsl #2
 2ac:	03800000 	orreq	r0, r0, #0
 2b0:	03980060 	orrseq	r0, r8, #96	; 0x60
 2b4:	656b0060 	strbvs	r0, [fp, #-96]!	; 0xffffffa0
 2b8:	6b2f6e72 	blvs	bdbc88 <__high_exec_veneer+0x5db8f0>
 2bc:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 2c0:	6e655f6c 	cdpvs	15, 6, cr5, cr5, cr12, {3}
 2c4:	2e797274 	mrccs	2, 3, r7, cr9, cr4, {3}
 2c8:	552f0053 	strpl	r0, [pc, #-83]!	; 27d <mmu_section_map-0x5ffd83>
 2cc:	73726573 	cmnvc	r2, #482344960	; 0x1cc00000
 2d0:	6575792f 	ldrbvs	r7, [r5, #-2351]!	; 0xfffff6d1
 2d4:	7365442f 	cmnvc	r5, #788529152	; 0x2f000000
 2d8:	706f746b 	rsbvc	r7, pc, fp, ror #8
 2dc:	4d49412f 	stfmie	f4, [r9, #-188]	; 0xffffff44
 2e0:	47003676 	smlsdxmi	r0, r6, r6, r3
 2e4:	4120554e 	teqmi	r0, lr, asr #10
 2e8:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
 2ec:	01003532 	tsteq	r0, r2, lsr r5
 2f0:	Address 0x00000000000002f0 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <mmu_section_map-0x33ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a080300 	bcc	200c28 <mmu_section_map-0x3ff3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	0b0b0024 	bleq	2c00c4 <mmu_section_map-0x33ff3c>
  30:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  34:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
  38:	03193f01 	tsteq	r9, #1, 30
  3c:	3b0b3a0e 	blcc	2ce87c <mmu_section_map-0x331784>
  40:	1119270b 	tstne	r9, fp, lsl #14
  44:	40061201 	andmi	r1, r6, r1, lsl #4
  48:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
  4c:	00001301 	andeq	r1, r0, r1, lsl #6
  50:	03000506 	movweq	r0, #1286	; 0x506
  54:	3b0b3a08 	blcc	2ce87c <mmu_section_map-0x331784>
  58:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  5c:	07000018 	smladeq	r0, r8, r0, r0
  60:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  64:	0b3b0b3a 	bleq	ec2d54 <__high_exec_veneer+0x8c29bc>
  68:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  6c:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
  70:	03193f01 	tsteq	r9, #1, 30
  74:	3b0b3a0e 	blcc	2ce8b4 <mmu_section_map-0x33174c>
  78:	1119270b 	tstne	r9, fp, lsl #14
  7c:	40061201 	andmi	r1, r6, r1, lsl #4
  80:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
  84:	00001301 	andeq	r1, r0, r1, lsl #6
  88:	11010b09 	tstne	r1, r9, lsl #22
  8c:	01061201 	tsteq	r6, r1, lsl #4
  90:	0a000013 	beq	e4 <mmu_section_map-0x5fff1c>
  94:	08030034 	stmdaeq	r3, {r2, r4, r5}
  98:	0b3b0b3a 	bleq	ec2d88 <__high_exec_veneer+0x8c29f0>
  9c:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  a0:	0b0b0000 	bleq	2c00a8 <mmu_section_map-0x33ff58>
  a4:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
  a8:	0c000006 	stceq	0, cr0, [r0], {6}
  ac:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
  b0:	00001301 	andeq	r1, r0, r1, lsl #6
  b4:	4900050d 	stmdbmi	r0, {r0, r2, r3, r8, sl}
  b8:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
  bc:	0b0b000f 	bleq	2c0100 <mmu_section_map-0x33ff00>
  c0:	00001349 	andeq	r1, r0, r9, asr #6
  c4:	0300340f 	movweq	r3, #1039	; 0x40f
  c8:	3b0b3a0e 	blcc	2ce908 <mmu_section_map-0x3316f8>
  cc:	3f13490b 	svccc	0x0013490b
  d0:	00193c19 	andseq	r3, r9, r9, lsl ip
  d4:	11010000 	mrsne	r0, (UNDEF: 1)
  d8:	130e2501 	movwne	r2, #58625	; 0xe501
  dc:	1b0e030b 	blne	380d10 <mmu_section_map-0x27f2f0>
  e0:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
  e4:	00171006 	andseq	r1, r7, r6
  e8:	00240200 	eoreq	r0, r4, r0, lsl #4
  ec:	0b3e0b0b 	bleq	f82d20 <__high_exec_veneer+0x982988>
  f0:	00000e03 	andeq	r0, r0, r3, lsl #28
  f4:	03001603 	movweq	r1, #1539	; 0x603
  f8:	3b0b3a08 	blcc	2ce920 <mmu_section_map-0x3316e0>
  fc:	0013490b 	andseq	r4, r3, fp, lsl #18
 100:	00240400 	eoreq	r0, r4, r0, lsl #8
 104:	0b3e0b0b 	bleq	f82d38 <__high_exec_veneer+0x9829a0>
 108:	00000803 	andeq	r0, r0, r3, lsl #16
 10c:	03002e05 	movweq	r2, #3589	; 0xe05
 110:	3b0b3a0e 	blcc	2ce950 <mmu_section_map-0x3316b0>
 114:	1201110b 	andne	r1, r1, #-1073741822	; 0xc0000002
 118:	97184006 	ldrls	r4, [r8, -r6]
 11c:	00001942 	andeq	r1, r0, r2, asr #18
 120:	3f002e06 	svccc	0x00002e06
 124:	3a0e0319 	bcc	380d90 <mmu_section_map-0x27f270>
 128:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 12c:	11134919 	tstne	r3, r9, lsl r9
 130:	40061201 	andmi	r1, r6, r1, lsl #4
 134:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 138:	34070000 	strcc	r0, [r7], #-0
 13c:	3a0e0300 	bcc	380d44 <mmu_section_map-0x27f2bc>
 140:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 144:	3c193f13 	ldccc	15, cr3, [r9], {19}
 148:	00000019 	andeq	r0, r0, r9, lsl r0
 14c:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 150:	030b130e 	movweq	r1, #45838	; 0xb30e
 154:	110e1b0e 	tstne	lr, lr, lsl #22
 158:	10061201 	andne	r1, r6, r1, lsl #4
 15c:	02000017 	andeq	r0, r0, #23
 160:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 164:	0b3a0e03 	bleq	e83978 <__high_exec_veneer+0x8835e0>
 168:	01110b3b 	tsteq	r1, fp, lsr fp
 16c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 170:	00194296 	mulseq	r9, r6, r2
 174:	11010000 	mrsne	r0, (UNDEF: 1)
 178:	11061000 	mrsne	r1, (UNDEF: 6)
 17c:	03011201 	movweq	r1, #4609	; 0x1201
 180:	25081b08 	strcs	r1, [r8, #-2824]	; 0xfffff4f8
 184:	00051308 	andeq	r1, r5, r8, lsl #6
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00600000 	rsbeq	r0, r0, r0
  14:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01b80002 			; <UNDEFINED> instruction: 0x01b80002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0060031c 	rsbeq	r0, r0, ip, lsl r3
  34:	00000050 	andeq	r0, r0, r0, asr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02670002 	rsbeq	r0, r7, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	0060036c 	rsbeq	r0, r0, ip, ror #6
  54:	00000014 	andeq	r0, r0, r4, lsl r0
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	029e0002 	addseq	r0, lr, #2
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	00600380 	rsbeq	r0, r0, r0, lsl #7
  74:	00000018 	andeq	r0, r0, r8, lsl r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000000e8 	andeq	r0, r0, r8, ror #1
   4:	005e0002 	subseq	r0, lr, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	6b010000 	blvs	40020 <mmu_section_map-0x5bffe0>
  1c:	2f6e7265 	svccs	0x006e7265
  20:	2e006d6d 	cdpcs	13, 0, cr6, cr0, cr13, {3}
  24:	636e692f 	cmnvs	lr, #770048	; 0xbc000
  28:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
  2c:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
  30:	642f2e00 	strtvs	r2, [pc], #-3584	; 38 <mmu_section_map-0x5fffc8>
  34:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0xfffff68e
  38:	6d2f7372 	stcvs	3, cr7, [pc, #-456]!	; fffffe78 <ptable+0x7f8fa3e4>
  3c:	00637369 	rsbeq	r7, r3, r9, ror #6
  40:	756d6d00 	strbvc	r6, [sp, #-3328]!	; 0xfffff300
  44:	0100632e 	tsteq	r0, lr, lsr #6
  48:	79740000 	ldmdbvc	r4!, {}^	; <UNPREDICTABLE>
  4c:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
  50:	00020068 	andeq	r0, r2, r8, rrx
  54:	62746400 	rsbsvs	r6, r4, #0, 8
  58:	6e797a2d 	vaddvs.f32	s15, s18, s27
  5c:	30303771 	eorscc	r3, r0, r1, ror r7
  60:	00682e30 	rsbeq	r2, r8, r0, lsr lr
  64:	00000003 	andeq	r0, r0, r3
  68:	00020500 	andeq	r0, r2, r0, lsl #10
  6c:	03006000 	movweq	r6, #0
  70:	9f9f010f 	svcls	0x009f010f
  74:	676785d7 			; <UNDEFINED> instruction: 0x676785d7
  78:	02008483 	andeq	r8, r0, #-2097152000	; 0x83000000
  7c:	009f0304 	addseq	r0, pc, r4, lsl #6
  80:	65030402 	strvs	r0, [r3, #-1026]	; 0xfffffbfe
  84:	01040200 	mrseq	r0, R12_usr
  88:	6a06ba06 	bvs	1ae8a8 <mmu_section_map-0x451758>
  8c:	03040200 	movweq	r0, #16896	; 0x4200
  90:	04020067 	streq	r0, [r2], #-103	; 0xffffff99
  94:	003b0803 	eorseq	r0, fp, r3, lsl #16
  98:	06010402 	streq	r0, [r1], -r2, lsl #8
  9c:	006a0666 	rsbeq	r0, sl, r6, ror #12
  a0:	67030402 	strvs	r0, [r3, -r2, lsl #8]
  a4:	03040200 	movweq	r0, #16896	; 0x4200
  a8:	02003b08 	andeq	r3, r0, #8, 22	; 0x2000
  ac:	66060104 	strvs	r0, [r6], -r4, lsl #2
  b0:	02006b06 	andeq	r6, r0, #6144	; 0x1800
  b4:	00670304 	rsbeq	r0, r7, r4, lsl #6
  b8:	08030402 	stmdaeq	r3, {r1, sl}
  bc:	04020057 	streq	r0, [r2], #-87	; 0xffffffa9
  c0:	06660601 	strbteq	r0, [r6], -r1, lsl #12
  c4:	0402006b 	streq	r0, [r2], #-107	; 0xffffff95
  c8:	0200d703 	andeq	sp, r0, #786432	; 0xc0000
  cc:	00650304 	rsbeq	r0, r5, r4, lsl #6
  d0:	06010402 	streq	r0, [r1], -r2, lsl #8
  d4:	6a062008 	bvs	1880fc <mmu_section_map-0x477f04>
  d8:	6d820903 	stcvs	9, cr0, [r2, #12]
  dc:	a6864e85 	strge	r4, [r6], r5, lsl #29
  e0:	03d60b03 	bicseq	r0, r6, #3072	; 0xc00
  e4:	0286ba09 	addeq	fp, r6, #36864	; 0x9000
  e8:	01010008 	tsteq	r1, r8
  ec:	000000a7 	andeq	r0, r0, r7, lsr #1
  f0:	00840002 	addeq	r0, r4, r2
  f4:	01020000 	mrseq	r0, (UNDEF: 2)
  f8:	000d0efb 	strdeq	r0, [sp], -fp
  fc:	01010101 	tsteq	r1, r1, lsl #2
 100:	01000000 	mrseq	r0, (UNDEF: 0)
 104:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
 108:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 10c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 110:	6372612f 	cmnvs	r2, #-1073741813	; 0xc000000b
 114:	72612f68 	rsbvc	r2, r1, #104, 30	; 0x1a0
 118:	6137766d 	teqvs	r7, sp, ror #12
 11c:	2f656c2d 	svccs	0x00656c2d
 120:	006d7361 	rsbeq	r7, sp, r1, ror #6
 124:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 128:	692f2e00 	stmdbvs	pc!, {r9, sl, fp, sp}	; <UNPREDICTABLE>
 12c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 130:	732f6564 	teqvc	pc, #100, 10	; 0x19000000
 134:	2e007379 	mcrcs	3, 0, r7, cr0, cr9, {3}
 138:	6972642f 	ldmdbvs	r2!, {r0, r1, r2, r3, r5, sl, sp, lr}^
 13c:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
 140:	73696d2f 	cmnvc	r9, #3008	; 0xbc0
 144:	69000063 	stmdbvs	r0, {r0, r1, r5, r6}
 148:	682e7172 	stmdavs	lr!, {r1, r4, r5, r6, r8, ip, sp, lr}
 14c:	00000100 	andeq	r0, r0, r0, lsl #2
 150:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 154:	632e6c65 	teqvs	lr, #25856	; 0x6500
 158:	00000200 	andeq	r0, r0, r0, lsl #4
 15c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 160:	00682e73 	rsbeq	r2, r8, r3, ror lr
 164:	64000003 	strvs	r0, [r0], #-3
 168:	7a2d6274 	bvc	b58b40 <__high_exec_veneer+0x5587a8>
 16c:	37716e79 			; <UNDEFINED> instruction: 0x37716e79
 170:	2e303030 	mrccs	0, 1, r3, cr0, cr0, {1}
 174:	00040068 	andeq	r0, r4, r8, rrx
 178:	05000000 	streq	r0, [r0, #-0]
 17c:	60031c02 	andvs	r1, r3, r2, lsl #24
 180:	01900300 	orrseq	r0, r0, r0, lsl #6
 184:	046c4b01 	strbteq	r4, [ip], #-2817	; 0xfffff4ff
 188:	7ef90302 	cdpvc	3, 15, cr0, cr9, cr2, {0}
 18c:	352f4b82 	strcc	r4, [pc, #-2946]!	; fffff612 <ptable+0x7f8f9b7e>
 190:	04022f8a 	streq	r2, [r2], #-3978	; 0xfffff076
 194:	42010100 	andmi	r0, r1, #0, 2
 198:	02000000 	andeq	r0, r0, #0
 19c:	00002b00 	andeq	r2, r0, r0, lsl #22
 1a0:	fb010200 	blx	409aa <mmu_section_map-0x5bf656>
 1a4:	01000d0e 	tsteq	r0, lr, lsl #26
 1a8:	00010101 	andeq	r0, r1, r1, lsl #2
 1ac:	00010000 	andeq	r0, r1, r0
 1b0:	656b0100 	strbvs	r0, [fp, #-256]!	; 0xffffff00
 1b4:	692f6e72 	stmdbvs	pc!, {r1, r4, r5, r6, r9, sl, fp, sp, lr}	; <UNPREDICTABLE>
 1b8:	0074696e 	rsbseq	r6, r4, lr, ror #18
 1bc:	776f6c00 	strbvc	r6, [pc, -r0, lsl #24]!
 1c0:	6578655f 	ldrbvs	r6, [r8, #-1375]!	; 0xfffffaa1
 1c4:	00632e63 	rsbeq	r2, r3, r3, ror #28
 1c8:	00000001 	andeq	r0, r0, r1
 1cc:	6c020500 	cfstr32vs	mvfx0, [r2], {-0}
 1d0:	03006003 	movweq	r6, #3
 1d4:	2f4b010d 	svccs	0x004b010d
 1d8:	01000402 	tsteq	r0, r2, lsl #8
 1dc:	00004201 	andeq	r4, r0, r1, lsl #4
 1e0:	2a000200 	bcs	9e8 <mmu_section_map-0x5ff618>
 1e4:	02000000 	andeq	r0, r0, #0
 1e8:	0d0efb01 	vstreq	d15, [lr, #-4]
 1ec:	01010100 	mrseq	r0, (UNDEF: 17)
 1f0:	00000001 	andeq	r0, r0, r1
 1f4:	01000001 	tsteq	r0, r1
 1f8:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 1fc:	656b0000 	strbvs	r0, [fp, #-0]!
 200:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 204:	746e655f 	strbtvc	r6, [lr], #-1375	; 0xfffffaa1
 208:	532e7972 	teqpl	lr, #1867776	; 0x1c8000
 20c:	00000100 	andeq	r0, r0, r0, lsl #2
 210:	02050000 	andeq	r0, r5, #0
 214:	00600380 	rsbeq	r0, r0, r0, lsl #7
 218:	2f2f2f16 	svccs	0x002f2f16
 21c:	02022f2f 	andeq	r2, r2, #47, 30	; 0xbc
 220:	Address 0x0000000000000220 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	20554e47 	subscs	r4, r5, r7, asr #28
   4:	20313143 	eorscs	r3, r1, r3, asr #2
   8:	2e322e35 	mrccs	14, 1, r2, cr2, cr5, {1}
   c:	6d2d2030 	stcvs	0, cr2, [sp, #-192]!	; 0xffffff40
  10:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
  14:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
  18:	612d3776 	teqvs	sp, r6, ror r7
  1c:	6c6d2d20 	stclvs	13, cr2, [sp], #-128	; 0xffffff80
  20:	6c747469 	cfldrdvs	mvd7, [r4], #-420	; 0xfffffe5c
  24:	6e652d65 	cdpvs	13, 6, cr2, cr5, cr5, {3}
  28:	6e616964 	cdpvs	9, 6, cr6, cr1, cr4, {3}
  2c:	67672d20 	strbvs	r2, [r7, -r0, lsr #26]!
  30:	2d206264 	sfmcs	f6, 4, [r0, #-400]!	; 0xfffffe70
  34:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; fffffea4 <ptable+0x7f8fa410>
  38:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
  3c:	006e6974 	rsbeq	r6, lr, r4, ror r9
  40:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
  44:	2f6d6d2f 	svccs	0x006d6d2f
  48:	2e756d6d 	cdpcs	13, 7, cr6, cr5, cr13, {3}
  4c:	6f630063 	svcvs	0x00630063
  50:	00746e75 	rsbseq	r6, r4, r5, ror lr
  54:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  58:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  5c:	61686320 	cmnvs	r8, r0, lsr #6
  60:	68730072 	ldmdavs	r3!, {r1, r4, r5, r6}^
  64:	2074726f 	rsbscs	r7, r4, pc, ror #4
  68:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  6c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  70:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  74:	63706d00 	cmnvs	r0, #0, 26
  78:	5f65726f 	svcpl	0x0065726f
  7c:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
  80:	616e6500 	cmnvs	lr, r0, lsl #10
  84:	5f656c62 	svcpl	0x00656c62
  88:	00756d6d 	rsbseq	r6, r5, sp, ror #26
  8c:	6573552f 	ldrbvs	r5, [r3, #-1327]!	; 0xfffffad1
  90:	792f7372 	stmdbvc	pc!, {r1, r4, r5, r6, r8, r9, ip, sp, lr}	; <UNPREDICTABLE>
  94:	442f6575 	strtmi	r6, [pc], #-1397	; 9c <mmu_section_map-0x5fff64>
  98:	746b7365 	strbtvc	r7, [fp], #-869	; 0xfffffc9b
  9c:	412f706f 	teqmi	pc, pc, rrx
  a0:	36764d49 	ldrbtcc	r4, [r6], -r9, asr #26
  a4:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  a8:	6f6c2067 	svcvs	0x006c2067
  ac:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
  b0:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  b4:	2064656e 	rsbcs	r6, r4, lr, ror #10
  b8:	00746e69 	rsbseq	r6, r4, r9, ror #28
  bc:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
  c0:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
  c4:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  c8:	6f6c2067 	svcvs	0x006c2067
  cc:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
  d0:	7300746e 	movwvc	r7, #1134	; 0x46e
  d4:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
  d8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  dc:	74757000 	ldrbtvc	r7, [r5], #-0
  e0:	6d6d0073 	stclvs	0, cr0, [sp, #-460]!	; 0xfffffe34
  e4:	65735f75 	ldrbvs	r5, [r3, #-3957]!	; 0xfffff08b
  e8:	6f697463 	svcvs	0x00697463
  ec:	616d5f6e 	cmnvs	sp, lr, ror #30
  f0:	61740070 	cmnvs	r4, r0, ror r0
  f4:	5f656c62 	svcpl	0x00656c62
  f8:	72646461 	rsbvc	r6, r4, #1627389952	; 0x61000000
  fc:	72656b00 	rsbvc	r6, r5, #0, 22
 100:	656b2f6e 	strbvs	r2, [fp, #-3950]!	; 0xfffff092
 104:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 108:	6d00632e 	stcvs	3, cr6, [r0, #-184]	; 0xffffff48
 10c:	006e6961 	rsbeq	r6, lr, r1, ror #18
 110:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
 114:	70757272 	rsbsvc	r7, r5, r2, ror r2
 118:	69645f74 	stmdbvs	r4!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 11c:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
 120:	6f6c0065 	svcvs	0x006c0065
 124:	78655f77 	stmdavc	r5!, {r0, r1, r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 128:	6b006365 	blvs	18ec4 <mmu_section_map-0x5e713c>
 12c:	2f6e7265 	svccs	0x006e7265
 130:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
 134:	776f6c2f 	strbvc	r6, [pc, -pc, lsr #24]!
 138:	6578655f 	ldrbvs	r6, [r8, #-1375]!	; 0xfffffaa1
 13c:	00632e63 	rsbeq	r2, r3, r3, ror #28

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__high_exec_veneer+0xad098c>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	35202955 	strcc	r2, [r0, #-2389]!	; 0xfffff6ab
   c:	302e322e 	eorcc	r3, lr, lr, lsr #4
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002c41 	andeq	r2, r0, r1, asr #24
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000022 	andeq	r0, r0, r2, lsr #32
  10:	412d3705 	teqmi	sp, r5, lsl #14
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	09010841 	stmdbeq	r1, {r0, r6, fp}
  1c:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  20:	17011501 	strne	r1, [r1, -r1, lsl #10]
  24:	1a011803 	bne	46038 <mmu_section_map-0x5b9fc8>
  28:	22061e01 	andcs	r1, r6, #1, 28
  2c:	Address 0x000000000000002c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00600000 	rsbeq	r0, r0, r0
  1c:	00000054 	andeq	r0, r0, r4, asr r0
  20:	8b040e42 	blhi	103930 <mmu_section_map-0x4fc6d0>
  24:	0b0d4201 	bleq	350830 <mmu_section_map-0x2af7d0>
  28:	420d0d62 	andmi	r0, sp, #6272	; 0x1880
  2c:	00000ecb 	andeq	r0, r0, fp, asr #29
  30:	00000020 	andeq	r0, r0, r0, lsr #32
  34:	00000000 	andeq	r0, r0, r0
  38:	00600054 	rsbeq	r0, r0, r4, asr r0
  3c:	00000264 	andeq	r0, r0, r4, ror #4
  40:	8b080e42 	blhi	203950 <mmu_section_map-0x3fc6b0>
  44:	42018e02 	andmi	r8, r1, #2, 28
  48:	03040b0c 	movweq	r0, #19212	; 0x4b0c
  4c:	0d0c012c 	stfeqs	f0, [ip, #-176]	; 0xffffff50
  50:	00000008 	andeq	r0, r0, r8
  54:	0000000c 	andeq	r0, r0, ip
  58:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  5c:	7c020001 	stcvc	0, cr0, [r2], {1}
  60:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  64:	0000001c 	andeq	r0, r0, ip, lsl r0
  68:	00000054 	andeq	r0, r0, r4, asr r0
  6c:	0060031c 	rsbeq	r0, r0, ip, lsl r3
  70:	00000024 	andeq	r0, r0, r4, lsr #32
  74:	8b040e42 	blhi	103984 <mmu_section_map-0x4fc67c>
  78:	0b0d4201 	bleq	350884 <mmu_section_map-0x2af77c>
  7c:	420d0d4a 	andmi	r0, sp, #4736	; 0x1280
  80:	00000ecb 	andeq	r0, r0, fp, asr #29
  84:	00000018 	andeq	r0, r0, r8, lsl r0
  88:	00000054 	andeq	r0, r0, r4, asr r0
  8c:	00600340 	rsbeq	r0, r0, r0, asr #6
  90:	0000002c 	andeq	r0, r0, ip, lsr #32
  94:	8b080e42 	blhi	2039a4 <mmu_section_map-0x3fc65c>
  98:	42018e02 	andmi	r8, r1, #2, 28
  9c:	00040b0c 	andeq	r0, r4, ip, lsl #22
  a0:	0000000c 	andeq	r0, r0, ip
  a4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  a8:	7c020001 	stcvc	0, cr0, [r2], {1}
  ac:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  b0:	00000018 	andeq	r0, r0, r8, lsl r0
  b4:	000000a0 	andeq	r0, r0, r0, lsr #1
  b8:	0060036c 	rsbeq	r0, r0, ip, ror #6
  bc:	00000014 	andeq	r0, r0, r4, lsl r0
  c0:	8b080e42 	blhi	2039d0 <mmu_section_map-0x3fc630>
  c4:	42018e02 	andmi	r8, r1, #2, 28
  c8:	00040b0c 	andeq	r0, r4, ip, lsl #22
