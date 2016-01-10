
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
80700030:	eb0011f7 	bl	80704814 <C_SVC_handler>
80700034:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80700038 <prefetch_abort_handler>:
80700038:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8070003c:	eb0011fb 	bl	80704830 <C_prefetch_abort_handler>
80700040:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80700044 <data_abort_handler>:
80700044:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80700048:	eb0011ff 	bl	8070484c <C_data_abort_handler>
8070004c:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80700050 <IRQ_handler>:
80700050:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80700054:	eb001203 	bl	80704868 <C_IRQ_handler>
80700058:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
8070005c:	0000005e 	andeq	r0, r0, lr, asr r0
80700060:	00350002 	eorseq	r0, r5, r2
80700064:	01020000 	mrseq	r0, (UNDEF: 2)
80700068:	000d0efb 	strdeq	r0, [sp], -fp
8070006c:	01010101 	tsteq	r1, r1, lsl #2
80700070:	01000000 	mrseq	r0, (UNDEF: 0)
80700074:	6b010000 	blvs	8074007c <.LC14+0x3b650>
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
80700100:	6b736544 	blvs	823d9618 <.LC14+0x1cd4bec>
80700104:	2f706f74 	svccs	0x00706f74
80700108:	764d4941 	strbvc	r4, [sp], -r1, asr #18
8070010c:	4e470036 	mcrmi	0, 2, r0, cr7, cr6, {1}
80700110:	53412055 	movtpl	r2, #4181	; 0x1055
80700114:	322e3220 	eorcc	r3, lr, #32, 4
80700118:	80010035 	andhi	r0, r1, r5, lsr r0
8070011c:	10001101 	andne	r1, r0, r1, lsl #2
80700120:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
80700124:	1b080301 	blne	80900d30 <.LC14+0x1fc304>
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
80700268:	807011f7 	ldrshthi	r1, [r0], #-23	; 0xffffffe9
8070026c:	7007b50c 	andvc	fp, r7, ip, lsl #10
80700270:	70128680 	andsvc	r8, r2, r0, lsl #13
80700274:	70071280 	andvc	r1, r7, r0, lsl #5
80700278:	08010280 	stmdaeq	r1, {r7, r9}
8070027c:	80701248 	rsbshi	r1, r0, r8, asr #4
80700280:	4a060102 	bmi	80880690 <.LC14+0x17bc64>
80700284:	02807012 	addeq	r7, r0, #18
80700288:	12560702 	subsne	r0, r6, #524288	; 0x80000
8070028c:	02028070 	andeq	r8, r2, #112	; 0x70
80700290:	7012fa05 	andsvc	pc, r2, r5, lsl #20
80700294:	07040280 	streq	r0, [r4, -r0, lsl #5]
80700298:	807012a9 	rsbshi	r1, r0, r9, lsr #5
8070029c:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
807002a0:	391f0200 	ldmdbcc	pc, {r9}	; <UNPREDICTABLE>
807002a4:	04000000 	streq	r0, [r0], #-0
807002a8:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
807002ac:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
807002b0:	7012a407 	andsvc	sl, r2, r7, lsl #8
807002b4:	07080280 	streq	r0, [r8, -r0, lsl #5]
807002b8:	8070129f 			; <UNDEFINED> instruction: 0x8070129f
807002bc:	df050802 	svcle	0x00050802
807002c0:	02807012 	addeq	r7, r0, #18
807002c4:	12e40504 	rscne	r0, r4, #4, 10	; 0x1000000
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
80700344:	1a018070 	bne	8076050c <.LC14+0x5bae0>
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
80700460:	db058070 	blle	80860628 <.LC14+0x15bbfc>
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
807004e8:	db058070 	blle	808606b0 <.LC14+0x15bc84>
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
80700570:	0a058070 	beq	80860738 <.LC14+0x15bd0c>
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
8070062c:	0a520580 	beq	81b81c34 <.LC14+0x147d208>
80700630:	4b018070 	blmi	807607f8 <.LC14+0x5bdcc>
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
80700694:	80701237 	rsbshi	r1, r0, r7, lsr r2
80700698:	00405301 	subeq	r5, r0, r1, lsl #6
8070069c:	03050000 	movweq	r0, #20480	; 0x5000
807006a0:	8070024c 	rsbshi	r0, r0, ip, asr #4
807006a4:	70081805 	andvc	r1, r8, r5, lsl #16
807006a8:	40540180 	subsmi	r0, r4, r0, lsl #3
807006ac:	05000000 	streq	r0, [r0, #-0]
807006b0:	70025003 	andvc	r5, r2, r3
807006b4:	11010080 	smlabbne	r1, r0, r0, r0
807006b8:	130e2501 	movwne	r2, #58625	; 0xe501
807006bc:	1b0e030b 	blne	80a812f0 <.LC14+0x37c8c4>
807006c0:	0017100e 	andseq	r1, r7, lr
807006c4:	00240200 	eoreq	r0, r4, r0, lsl #4
807006c8:	0b3e0b0b 	bleq	816832fc <.LC14+0xf7e8d0>
807006cc:	00000e03 	andeq	r0, r0, r3, lsl #28
807006d0:	03001603 	movweq	r1, #1539	; 0x603
807006d4:	3b0b3a08 	blcc	809ceefc <.LC14+0x2ca4d0>
807006d8:	0013490b 	andseq	r4, r3, fp, lsl #18
807006dc:	00240400 	eoreq	r0, r4, r0, lsl #8
807006e0:	0b3e0b0b 	bleq	81683314 <.LC14+0xf7e8e8>
807006e4:	00000803 	andeq	r0, r0, r3, lsl #16
807006e8:	03003405 	movweq	r3, #1029	; 0x405
807006ec:	3b0b3a0e 	blcc	809cef2c <.LC14+0x2ca500>
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
80700ad8:	e3003d94 	movw	r3, #3476	; 0xd94
80700adc:	e3483070 	movt	r3, #32880	; 0x8070
80700ae0:	e24bc01c 	sub	ip, fp, #28
80700ae4:	e1a0e003 	mov	lr, r3
80700ae8:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
80700aec:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
80700af0:	e59e3000 	ldr	r3, [lr]
80700af4:	e5cc3000 	strb	r3, [ip]
80700af8:	e3002da8 	movw	r2, #3496	; 0xda8
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
80700b78:	eb000620 	bl	80702400 <uart_spin_puts>
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
80700ba0:	eb000616 	bl	80702400 <uart_spin_puts>
80700ba4:	e51b000c 	ldr	r0, [fp, #-12]
80700ba8:	ebffffc6 	bl	80700ac8 <puthex>
80700bac:	e3000db4 	movw	r0, #3508	; 0xdb4
80700bb0:	e3480070 	movt	r0, #32880	; 0x8070
80700bb4:	eb000611 	bl	80702400 <uart_spin_puts>
80700bb8:	e1a00000 	nop			; (mov r0, r0)
80700bbc:	e24bd004 	sub	sp, fp, #4
80700bc0:	e8bd8800 	pop	{fp, pc}

80700bc4 <high_exec>:
80700bc4:	e92d4800 	push	{fp, lr}
80700bc8:	e28db004 	add	fp, sp, #4
80700bcc:	e24dd008 	sub	sp, sp, #8
80700bd0:	eb0002b0 	bl	80701698 <memory_init>
80700bd4:	e3000db8 	movw	r0, #3512	; 0xdb8
80700bd8:	e3480070 	movt	r0, #32880	; 0x8070
80700bdc:	eb000607 	bl	80702400 <uart_spin_puts>
80700be0:	e30133c4 	movw	r3, #5060	; 0x13c4
80700be4:	e3483070 	movt	r3, #32880	; 0x8070
80700be8:	e5933000 	ldr	r3, [r3]
80700bec:	e5933004 	ldr	r3, [r3, #4]
80700bf0:	e1a01003 	mov	r1, r3
80700bf4:	e3000dc8 	movw	r0, #3528	; 0xdc8
80700bf8:	e3480070 	movt	r0, #32880	; 0x8070
80700bfc:	ebffffe1 	bl	80700b88 <put_str_hex>
80700c00:	e3a0000c 	mov	r0, #12
80700c04:	eb0002e6 	bl	807017a4 <alloc_pages>
80700c08:	e50b0008 	str	r0, [fp, #-8]
80700c0c:	e51b3008 	ldr	r3, [fp, #-8]
80700c10:	e5933008 	ldr	r3, [r3, #8]
80700c14:	e1a01003 	mov	r1, r3
80700c18:	e3000ddc 	movw	r0, #3548	; 0xddc
80700c1c:	e3480070 	movt	r0, #32880	; 0x8070
80700c20:	ebffffd8 	bl	80700b88 <put_str_hex>
80700c24:	e30133c4 	movw	r3, #5060	; 0x13c4
80700c28:	e3483070 	movt	r3, #32880	; 0x8070
80700c2c:	e5933000 	ldr	r3, [r3]
80700c30:	e5933008 	ldr	r3, [r3, #8]
80700c34:	e1a01003 	mov	r1, r3
80700c38:	e3000de8 	movw	r0, #3560	; 0xde8
80700c3c:	e3480070 	movt	r0, #32880	; 0x8070
80700c40:	ebffffd0 	bl	80700b88 <put_str_hex>
80700c44:	e3a0000c 	mov	r0, #12
80700c48:	eb0002d5 	bl	807017a4 <alloc_pages>
80700c4c:	e50b000c 	str	r0, [fp, #-12]
80700c50:	e51b300c 	ldr	r3, [fp, #-12]
80700c54:	e5933008 	ldr	r3, [r3, #8]
80700c58:	e1a01003 	mov	r1, r3
80700c5c:	e3000dfc 	movw	r0, #3580	; 0xdfc
80700c60:	e3480070 	movt	r0, #32880	; 0x8070
80700c64:	ebffffc7 	bl	80700b88 <put_str_hex>
80700c68:	e30133c4 	movw	r3, #5060	; 0x13c4
80700c6c:	e3483070 	movt	r3, #32880	; 0x8070
80700c70:	e5933000 	ldr	r3, [r3]
80700c74:	e5933008 	ldr	r3, [r3, #8]
80700c78:	e1a01003 	mov	r1, r3
80700c7c:	e3000de8 	movw	r0, #3560	; 0xde8
80700c80:	e3480070 	movt	r0, #32880	; 0x8070
80700c84:	ebffffbf 	bl	80700b88 <put_str_hex>
80700c88:	e51b3008 	ldr	r3, [fp, #-8]
80700c8c:	e5933008 	ldr	r3, [r3, #8]
80700c90:	e3a01010 	mov	r1, #16
80700c94:	e1a00003 	mov	r0, r3
80700c98:	eb000350 	bl	807019e0 <free_pages>
80700c9c:	e30133c4 	movw	r3, #5060	; 0x13c4
80700ca0:	e3483070 	movt	r3, #32880	; 0x8070
80700ca4:	e5933000 	ldr	r3, [r3]
80700ca8:	e5933008 	ldr	r3, [r3, #8]
80700cac:	e1a01003 	mov	r1, r3
80700cb0:	e3000e08 	movw	r0, #3592	; 0xe08
80700cb4:	e3480070 	movt	r0, #32880	; 0x8070
80700cb8:	ebffffb2 	bl	80700b88 <put_str_hex>
80700cbc:	e30133c4 	movw	r3, #5060	; 0x13c4
80700cc0:	e3483070 	movt	r3, #32880	; 0x8070
80700cc4:	e5933000 	ldr	r3, [r3]
80700cc8:	e5933004 	ldr	r3, [r3, #4]
80700ccc:	e1a01003 	mov	r1, r3
80700cd0:	e3000e18 	movw	r0, #3608	; 0xe18
80700cd4:	e3480070 	movt	r0, #32880	; 0x8070
80700cd8:	ebffffaa 	bl	80700b88 <put_str_hex>
80700cdc:	e51b3008 	ldr	r3, [fp, #-8]
80700ce0:	e5933008 	ldr	r3, [r3, #8]
80700ce4:	e2833801 	add	r3, r3, #65536	; 0x10000
80700ce8:	e3a01008 	mov	r1, #8
80700cec:	e1a00003 	mov	r0, r3
80700cf0:	eb00033a 	bl	807019e0 <free_pages>
80700cf4:	e30133c4 	movw	r3, #5060	; 0x13c4
80700cf8:	e3483070 	movt	r3, #32880	; 0x8070
80700cfc:	e5933000 	ldr	r3, [r3]
80700d00:	e5933008 	ldr	r3, [r3, #8]
80700d04:	e1a01003 	mov	r1, r3
80700d08:	e3000e08 	movw	r0, #3592	; 0xe08
80700d0c:	e3480070 	movt	r0, #32880	; 0x8070
80700d10:	ebffff9c 	bl	80700b88 <put_str_hex>
80700d14:	e30133c4 	movw	r3, #5060	; 0x13c4
80700d18:	e3483070 	movt	r3, #32880	; 0x8070
80700d1c:	e5933000 	ldr	r3, [r3]
80700d20:	e5933004 	ldr	r3, [r3, #4]
80700d24:	e1a01003 	mov	r1, r3
80700d28:	e3000e18 	movw	r0, #3608	; 0xe18
80700d2c:	e3480070 	movt	r0, #32880	; 0x8070
80700d30:	ebffff94 	bl	80700b88 <put_str_hex>
80700d34:	e3a00002 	mov	r0, #2
80700d38:	eb000299 	bl	807017a4 <alloc_pages>
80700d3c:	e30133c4 	movw	r3, #5060	; 0x13c4
80700d40:	e3483070 	movt	r3, #32880	; 0x8070
80700d44:	e5933000 	ldr	r3, [r3]
80700d48:	e5933008 	ldr	r3, [r3, #8]
80700d4c:	e1a01003 	mov	r1, r3
80700d50:	e3000e08 	movw	r0, #3592	; 0xe08
80700d54:	e3480070 	movt	r0, #32880	; 0x8070
80700d58:	ebffff8a 	bl	80700b88 <put_str_hex>
80700d5c:	e30133c4 	movw	r3, #5060	; 0x13c4
80700d60:	e3483070 	movt	r3, #32880	; 0x8070
80700d64:	e5933000 	ldr	r3, [r3]
80700d68:	e5933004 	ldr	r3, [r3, #4]
80700d6c:	e1a01003 	mov	r1, r3
80700d70:	e3000e18 	movw	r0, #3608	; 0xe18
80700d74:	e3480070 	movt	r0, #32880	; 0x8070
80700d78:	ebffff82 	bl	80700b88 <put_str_hex>
80700d7c:	eb000e65 	bl	80704718 <interrupt_init>
80700d80:	eb000ed2 	bl	807048d0 <SWI>
80700d84:	e3000e2c 	movw	r0, #3628	; 0xe2c
80700d88:	e3480070 	movt	r0, #32880	; 0x8070
80700d8c:	eb00059b 	bl	80702400 <uart_spin_puts>
80700d90:	eafffffe 	b	80700d90 <high_exec+0x1cc>

80700d94 <.LC0>:
80700d94:	33323130 	teqcc	r2, #48, 2
80700d98:	37363534 			; <UNDEFINED> instruction: 0x37363534
80700d9c:	42413938 	submi	r3, r1, #56, 18	; 0xe0000
80700da0:	46454443 	strbmi	r4, [r5], -r3, asr #8
80700da4:	00000000 	andeq	r0, r0, r0

80700da8 <.LC1>:
80700da8:	30303030 	eorscc	r3, r0, r0, lsr r0
80700dac:	30303030 	eorscc	r3, r0, r0, lsr r0
80700db0:	00000000 	andeq	r0, r0, r0

80700db4 <.LC2>:
80700db4:	00000a0d 	andeq	r0, r0, sp, lsl #20

80700db8 <.LC3>:
80700db8:	54534554 	ldrbpl	r4, [r3], #-1364	; 0xfffffaac
80700dbc:	47454220 	strbmi	r4, [r5, -r0, lsr #4]
80700dc0:	0a0d4e49 	beq	80a546ec <.LC14+0x34fcc0>
80700dc4:	00000000 	andeq	r0, r0, r0

80700dc8 <.LC4>:
80700dc8:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
80700dcc:	73696c5f 	cmnvc	r9, #24320	; 0x5f00
80700dd0:	733e2d74 	teqvc	lr, #116, 26	; 0x1d00
80700dd4:	20657a69 	rsbcs	r7, r5, r9, ror #20
80700dd8:	0000203a 	andeq	r2, r0, sl, lsr r0

80700ddc <.LC5>:
80700ddc:	703e2d61 	eorsvc	r2, lr, r1, ror #26
80700de0:	203a2061 	eorscs	r2, sl, r1, rrx
80700de4:	00000000 	andeq	r0, r0, r0

80700de8 <.LC6>:
80700de8:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
80700dec:	73696c5f 	cmnvc	r9, #24320	; 0x5f00
80700df0:	703e2d74 	eorsvc	r2, lr, r4, ror sp
80700df4:	203a2061 	eorscs	r2, sl, r1, rrx
80700df8:	00000000 	andeq	r0, r0, r0

80700dfc <.LC7>:
80700dfc:	703e2d62 	eorsvc	r2, lr, r2, ror #26
80700e00:	203a2061 	eorscs	r2, sl, r1, rrx
80700e04:	00000000 	andeq	r0, r0, r0

80700e08 <.LC8>:
80700e08:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
80700e0c:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
80700e10:	61703e2d 	cmnvs	r0, sp, lsr #28
80700e14:	00203a20 	eoreq	r3, r0, r0, lsr #20

80700e18 <.LC9>:
80700e18:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
80700e1c:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
80700e20:	69733e2d 	ldmdbvs	r3!, {r0, r2, r3, r5, r9, sl, fp, ip, sp}^
80700e24:	3a20657a 	bcc	80f1a414 <.LC14+0x8159e8>
80700e28:	00000020 	andeq	r0, r0, r0, lsr #32

80700e2c <.LC10>:
80700e2c:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
80700e30:	44454853 	strbmi	r4, [r5], #-2131	; 0xfffff7ad
80700e34:	000a0d21 	andeq	r0, sl, r1, lsr #26
80700e38:	000001bb 			; <UNDEFINED> instruction: 0x000001bb
80700e3c:	0ff70004 	svceq	0x00f70004
80700e40:	01048070 	tsteq	r4, r0, ror r0
80700e44:	807011f7 	ldrshthi	r1, [r0], #-23	; 0xffffffe9
80700e48:	7012b60c 	andsvc	fp, r2, ip, lsl #12
80700e4c:	70128680 	andsvc	r8, r2, r0, lsl #13
80700e50:	700ac880 	andvc	ip, sl, r0, lsl #17
80700e54:	0002cc80 	andeq	ip, r2, r0, lsl #25
80700e58:	70112b00 	andsvc	r2, r1, r0, lsl #22
80700e5c:	08010280 	stmdaeq	r1, {r7, r9}
80700e60:	80701248 	rsbshi	r1, r0, r8, asr #4
80700e64:	4a060102 	bmi	80881274 <.LC14+0x17c848>
80700e68:	02807012 	addeq	r7, r0, #18
80700e6c:	12560702 	subsne	r0, r6, #524288	; 0x80000
80700e70:	02028070 	andeq	r8, r2, #112	; 0x70
80700e74:	7012fa05 	andsvc	pc, r2, r5, lsl #20
80700e78:	07040280 	streq	r0, [r4, -r0, lsl #5]
80700e7c:	807012a9 	rsbshi	r1, r0, r9, lsr #5
80700e80:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
80700e84:	411f0400 	tstmi	pc, r0, lsl #8
80700e88:	04000000 	streq	r0, [r0], #-0
80700e8c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
80700e90:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
80700e94:	7012a407 	andsvc	sl, r2, r7, lsl #8
80700e98:	07080280 	streq	r0, [r8, -r0, lsl #5]
80700e9c:	8070129f 			; <UNDEFINED> instruction: 0x8070129f
80700ea0:	df050802 	svcle	0x00050802
80700ea4:	02807012 	addeq	r7, r0, #18
80700ea8:	12e40504 	rscne	r0, r4, #4, 10	; 0x1000000
80700eac:	7b058070 	blvc	80861074 <.LC14+0x15c648>
80700eb0:	0c807012 	stceq	0, cr7, [r0], {18}
80700eb4:	00a60802 	adceq	r0, r6, r2, lsl #16
80700eb8:	43060000 	movwmi	r0, #24576	; 0x6000
80700ebc:	02807012 	addeq	r7, r0, #18
80700ec0:	0000a609 	andeq	sl, r0, r9, lsl #12
80700ec4:	f7060000 			; <UNDEFINED> instruction: 0xf7060000
80700ec8:	02807022 	addeq	r7, r0, #34	; 0x22
80700ecc:	0000480a 	andeq	r4, r0, sl, lsl #16
80700ed0:	70070400 	andvc	r0, r7, r0, lsl #8
80700ed4:	0b020061 	bleq	80781060 <.LC14+0x7c634>
80700ed8:	00000048 	andeq	r0, r0, r8, asr #32
80700edc:	04080008 	streq	r0, [r8], #-8
80700ee0:	00000076 	andeq	r0, r0, r6, ror r0
80700ee4:	7012ed09 	andsvc	lr, r2, r9, lsl #26
80700ee8:	760c0280 	strvc	r0, [ip], -r0, lsl #5
80700eec:	0a000000 	beq	80700ef4 <.LC10+0xc8>
80700ef0:	8070130e 	rsbshi	r1, r0, lr, lsl #6
80700ef4:	0ac80e01 	beq	7f904700 <__high_exec_veneer+0x7f304368>
80700ef8:	00c08070 	sbceq	r8, r0, r0, ror r0
80700efc:	9c010000 	stcls	0, cr0, [r1], {-0}
80700f00:	00000103 	andeq	r0, r0, r3, lsl #2
80700f04:	6d756e0b 	ldclvs	14, cr6, [r5, #-44]!	; 0xffffffd4
80700f08:	480e0100 	stmdami	lr, {r8}
80700f0c:	02000000 	andeq	r0, r0, #0
80700f10:	690c4c91 	stmdbvs	ip, {r0, r4, r7, sl, fp, lr}
80700f14:	53100100 	tstpl	r0, #0, 2
80700f18:	02000000 	andeq	r0, r0, #0
80700f1c:	690d7491 	stmdbvs	sp, {r0, r4, r7, sl, ip, sp, lr}
80700f20:	01807012 	orreq	r7, r0, r2, lsl r0
80700f24:	00012111 	andeq	r2, r1, r1, lsl r1
80700f28:	60910200 	addsvs	r0, r1, r0, lsl #4
80700f2c:	6675620c 	ldrbtvs	r6, [r5], -ip, lsl #4
80700f30:	26120100 	ldrcs	r0, [r2], -r0, lsl #2
80700f34:	02000001 	andeq	r0, r0, #1
80700f38:	0e005491 	mcreq	4, 0, r5, cr0, cr1, {4}
80700f3c:	0000011a 	andeq	r0, r0, sl, lsl r1
80700f40:	00000113 	andeq	r0, r0, r3, lsl r1
80700f44:	0001130f 	andeq	r1, r1, pc, lsl #6
80700f48:	02001000 	andeq	r1, r0, #0
80700f4c:	12d60704 	sbcsne	r0, r6, #4, 14	; 0x100000
80700f50:	01028070 	tsteq	r2, r0, ror r0
80700f54:	70125108 	andsvc	r5, r2, r8, lsl #2
80700f58:	01031080 	smlabbeq	r3, r0, r0, r1
80700f5c:	1a0e0000 	bne	80a80f64 <.LC14+0x37c538>
80700f60:	36000001 	strcc	r0, [r0], -r1
80700f64:	0f000001 	svceq	0x00000001
80700f68:	00000113 	andeq	r0, r0, r3, lsl r1
80700f6c:	6f0a0009 	svcvs	0x000a0009
80700f70:	01807012 	orreq	r7, r0, r2, lsl r0
80700f74:	700b8819 	andvc	r8, fp, r9, lsl r8
80700f78:	00003c80 	andeq	r3, r0, r0, lsl #25
80700f7c:	689c0100 	ldmvs	ip, {r8}
80700f80:	0b000001 	bleq	80700f8c <.LC10+0x160>
80700f84:	00727473 	rsbseq	r7, r2, r3, ror r4
80700f88:	01681901 	cmneq	r8, r1, lsl #18
80700f8c:	91020000 	mrsls	r0, (UNDEF: 2)
80700f90:	65680b74 	strbvs	r0, [r8, #-2932]!	; 0xfffff48c
80700f94:	19010078 	stmdbne	r1, {r3, r4, r5, r6}
80700f98:	00000048 	andeq	r0, r0, r8, asr #32
80700f9c:	00709102 	rsbseq	r9, r0, r2, lsl #2
80700fa0:	011a0408 	tsteq	sl, r8, lsl #8
80700fa4:	04110000 	ldreq	r0, [r1], #-0
80700fa8:	01807013 	orreq	r7, r0, r3, lsl r0
80700fac:	700bc420 	andvc	ip, fp, r0, lsr #8
80700fb0:	0001d080 	andeq	sp, r1, r0, lsl #1
80700fb4:	9c9c0100 	ldflss	f0, [ip], {0}
80700fb8:	0c000001 	stceq	0, cr0, [r0], {1}
80700fbc:	27010061 	strcs	r0, [r1, -r1, rrx]
80700fc0:	0000019c 	muleq	r0, ip, r1
80700fc4:	0c749102 	ldfeqp	f1, [r4], #-8
80700fc8:	2b010062 	blcs	80741158 <.LC14+0x3c72c>
80700fcc:	0000019c 	muleq	r0, ip, r1
80700fd0:	00709102 	rsbseq	r9, r0, r2, lsl #2
80700fd4:	00ac0408 	adceq	r0, ip, r8, lsl #8
80700fd8:	37120000 	ldrcc	r0, [r2, -r0]
80700fdc:	03807012 	orreq	r7, r0, #18
80700fe0:	000048a0 	andeq	r4, r0, r0, lsr #17
80700fe4:	12cc1300 	sbcne	r1, ip, #0, 6
80700fe8:	0d028070 	stceq	0, cr8, [r2, #-448]	; 0xfffffe40
80700fec:	0000019c 	muleq	r0, ip, r1
80700ff0:	13c40305 	bicne	r0, r4, #335544320	; 0x14000000
80700ff4:	01008070 	tsteq	r0, r0, ror r0
80700ff8:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
80700ffc:	0e030b13 	vmoveq.32	d3[0], r0
80701000:	01110e1b 	tsteq	r1, fp, lsl lr
80701004:	17100612 			; <UNDEFINED> instruction: 0x17100612
80701008:	24020000 	strcs	r0, [r2], #-0
8070100c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
80701010:	000e030b 	andeq	r0, lr, fp, lsl #6
80701014:	00160300 	andseq	r0, r6, r0, lsl #6
80701018:	0b3a0803 	bleq	8158302c <.LC14+0xe7e600>
8070101c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80701020:	24040000 	strcs	r0, [r4], #-0
80701024:	3e0b0b00 	vmlacc.f64	d0, d11, d0
80701028:	0008030b 	andeq	r0, r8, fp, lsl #6
8070102c:	01130500 	tsteq	r3, r0, lsl #10
80701030:	0b0b0e03 	bleq	809c4844 <.LC14+0x2bfe18>
80701034:	0b3b0b3a 	bleq	815c3d24 <.LC14+0xebf2f8>
80701038:	00001301 	andeq	r1, r0, r1, lsl #6
8070103c:	03000d06 	movweq	r0, #3334	; 0xd06
80701040:	3b0b3a0e 	blcc	809cf880 <.LC14+0x2cae54>
80701044:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
80701048:	0700000b 	streq	r0, [r0, -fp]
8070104c:	0803000d 	stmdaeq	r3, {r0, r2, r3}
80701050:	0b3b0b3a 	bleq	815c3d40 <.LC14+0xebf314>
80701054:	0b381349 	bleq	81505d80 <.LC14+0xe01354>
80701058:	0f080000 	svceq	0x00080000
8070105c:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
80701060:	09000013 	stmdbeq	r0, {r0, r1, r4}
80701064:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
80701068:	0b3b0b3a 	bleq	815c3d58 <.LC14+0xebf32c>
8070106c:	00001349 	andeq	r1, r0, r9, asr #6
80701070:	3f012e0a 	svccc	0x00012e0a
80701074:	3a0e0319 	bcc	80a81ce0 <.LC14+0x37d2b4>
80701078:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
8070107c:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
80701080:	96184006 	ldrls	r4, [r8], -r6
80701084:	13011942 	movwne	r1, #6466	; 0x1942
80701088:	050b0000 	streq	r0, [fp, #-0]
8070108c:	3a080300 	bcc	80901c94 <.LC14+0x1fd268>
80701090:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80701094:	00180213 	andseq	r0, r8, r3, lsl r2
80701098:	00340c00 	eorseq	r0, r4, r0, lsl #24
8070109c:	0b3a0803 	bleq	815830b0 <.LC14+0xe7e684>
807010a0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
807010a4:	00001802 	andeq	r1, r0, r2, lsl #16
807010a8:	0300340d 	movweq	r3, #1037	; 0x40d
807010ac:	3b0b3a0e 	blcc	809cf8ec <.LC14+0x2caec0>
807010b0:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
807010b4:	0e000018 	mcreq	0, 0, r0, cr0, cr8, {0}
807010b8:	13490101 	movtne	r0, #37121	; 0x9101
807010bc:	00001301 	andeq	r1, r0, r1, lsl #6
807010c0:	4900210f 	stmdbmi	r0, {r0, r1, r2, r3, r8, sp}
807010c4:	000b2f13 	andeq	r2, fp, r3, lsl pc
807010c8:	00261000 	eoreq	r1, r6, r0
807010cc:	00001349 	andeq	r1, r0, r9, asr #6
807010d0:	3f012e11 	svccc	0x00012e11
807010d4:	3a0e0319 	bcc	80a81d40 <.LC14+0x37d314>
807010d8:	110b3b0b 	tstne	fp, fp, lsl #22
807010dc:	40061201 	andmi	r1, r6, r1, lsl #4
807010e0:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
807010e4:	00001301 	andeq	r1, r0, r1, lsl #6
807010e8:	03003412 	movweq	r3, #1042	; 0x412
807010ec:	3b0b3a0e 	blcc	809cf92c <.LC14+0x2caf00>
807010f0:	3f13490b 	svccc	0x0013490b
807010f4:	00193c19 	andseq	r3, r9, r9, lsl ip
807010f8:	00341300 	eorseq	r1, r4, r0, lsl #6
807010fc:	0b3a0e03 	bleq	81584910 <.LC14+0xe7fee4>
80701100:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80701104:	1802193f 	stmdane	r2, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
80701108:	1c000000 	stcne	0, cr0, [r0], {-0}
8070110c:	02000000 	andeq	r0, r0, #0
80701110:	700e3800 	andvc	r3, lr, r0, lsl #16
80701114:	00000480 	andeq	r0, r0, r0, lsl #9
80701118:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
8070111c:	cc80700a 	stcgt	0, cr7, [r0], {10}
80701120:	00000002 	andeq	r0, r0, r2
80701124:	00000000 	andeq	r0, r0, r0
80701128:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
8070112c:	02000000 	andeq	r0, r0, #0
80701130:	00007c00 	andeq	r7, r0, r0, lsl #24
80701134:	fb010200 	blx	8074193e <.LC14+0x3cf12>
80701138:	01000d0e 	tsteq	r0, lr, lsl #26
8070113c:	00010101 	andeq	r0, r1, r1, lsl #2
80701140:	00010000 	andeq	r0, r1, r0
80701144:	656b0100 	strbvs	r0, [fp, #-256]!	; 0xffffff00
80701148:	692f6e72 	stmdbvs	pc!, {r1, r4, r5, r6, r9, sl, fp, sp, lr}	; <UNPREDICTABLE>
8070114c:	0074696e 	rsbseq	r6, r4, lr, ror #18
80701150:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
80701154:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
80701158:	2f2e0065 	svccs	0x002e0065
8070115c:	76697264 	strbtvc	r7, [r9], -r4, ror #4
80701160:	2f737265 	svccs	0x00737265
80701164:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
80701168:	692f2e00 	stmdbvs	pc!, {r9, sl, fp, sp}	; <UNPREDICTABLE>
8070116c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
80701170:	732f6564 	teqvc	pc, #100, 10	; 0x19000000
80701174:	00007379 	andeq	r7, r0, r9, ror r3
80701178:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
8070117c:	6578655f 	ldrbvs	r6, [r8, #-1375]!	; 0xfffffaa1
80701180:	00632e63 	rsbeq	r2, r3, r3, ror #28
80701184:	6d000001 	stcvs	0, cr0, [r0, #-4]
80701188:	726f6d65 	rsbvc	r6, pc, #6464	; 0x1940
8070118c:	00682e79 	rsbeq	r2, r8, r9, ror lr
80701190:	64000002 	strvs	r0, [r0], #-2
80701194:	7a2d6274 	bvc	81259b6c <.LC14+0xb55140>
80701198:	37716e79 			; <UNDEFINED> instruction: 0x37716e79
8070119c:	2e303030 	mrccs	0, 1, r3, cr0, cr0, {1}
807011a0:	00030068 	andeq	r0, r3, r8, rrx
807011a4:	70797400 	rsbsvc	r7, r9, r0, lsl #8
807011a8:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
807011ac:	00000400 	andeq	r0, r0, r0, lsl #8
807011b0:	02050000 	andeq	r0, r5, #0
807011b4:	80700ac8 	rsbshi	r0, r0, r8, asr #21
807011b8:	84010e03 	strhi	r0, [r1], #-3587	; 0xfffff1fd
807011bc:	0200f3f3 	andeq	pc, r0, #-872415229	; 0xcc000003
807011c0:	00670304 	rsbeq	r0, r7, r4, lsl #6
807011c4:	08030402 	stmdaeq	r3, {r1, sl}
807011c8:	0402008f 	streq	r0, [r2], #-143	; 0xffffff71
807011cc:	06660601 	strbteq	r0, [r6], -r1, lsl #12
807011d0:	9f696769 	svcls	0x00696769
807011d4:	69674b4b 	stmdbvs	r7!, {r0, r1, r3, r6, r8, r9, fp, lr}^
807011d8:	f4673067 	vld4.16	{d19-d22}, [r7 :128], r7
807011dc:	67f4bb67 	ldrbvs	fp, [r4, r7, ror #22]!
807011e0:	f39ff4bb 	vsri.64	d15, d27, #33
807011e4:	f4f3bbf4 			; <UNDEFINED> instruction: 0xf4f3bbf4
807011e8:	2ff4f34d 	svccs	0x00f4f34d
807011ec:	04020030 	streq	r0, [r2], #-48	; 0xffffffd0
807011f0:	02026801 	andeq	r6, r2, #65536	; 0x10000
807011f4:	47010100 	strmi	r0, [r1, -r0, lsl #2]
807011f8:	4320554e 	teqmi	r0, #327155712	; 0x13800000
807011fc:	35203131 	strcc	r3, [r0, #-305]!	; 0xfffffecf
80701200:	302e322e 	eorcc	r3, lr, lr, lsr #4
80701204:	616d2d20 	cmnvs	sp, r0, lsr #26
80701208:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
8070120c:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
80701210:	20612d37 	rsbcs	r2, r1, r7, lsr sp
80701214:	696c6d2d 	stmdbvs	ip!, {r0, r2, r3, r5, r8, sl, fp, sp, lr}^
80701218:	656c7474 	strbvs	r7, [ip, #-1140]!	; 0xfffffb8c
8070121c:	646e652d 	strbtvs	r6, [lr], #-1325	; 0xfffffad3
80701220:	206e6169 	rsbcs	r6, lr, r9, ror #2
80701224:	6467672d 	strbtvs	r6, [r7], #-1837	; 0xfffff8d3
80701228:	662d2062 	strtvs	r2, [sp], -r2, rrx
8070122c:	622d6f6e 	eorvs	r6, sp, #440	; 0x1b8
80701230:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
80701234:	6d006e69 	stcvs	14, cr6, [r0, #-420]	; 0xfffffe5c
80701238:	726f6370 	rsbvc	r6, pc, #112, 6	; 0xc0000001
8070123c:	61625f65 	cmnvs	r2, r5, ror #30
80701240:	6e006573 	cfrshl64vs	mvdx0, mvdx3, r6
80701244:	00747865 	rsbseq	r7, r4, r5, ror #16
80701248:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
8070124c:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
80701250:	61686320 	cmnvs	r8, r0, lsr #6
80701254:	68730072 	ldmdavs	r3!, {r1, r4, r5, r6}^
80701258:	2074726f 	rsbscs	r7, r4, pc, ror #4
8070125c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
80701260:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
80701264:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
80701268:	62617400 	rsbvs	r7, r1, #0, 8
8070126c:	7000656c 	andvc	r6, r0, ip, ror #10
80701270:	735f7475 	cmpvc	pc, #1962934272	; 0x75000000
80701274:	685f7274 	ldmdavs	pc, {r2, r4, r5, r6, r9, ip, sp, lr}^	; <UNPREDICTABLE>
80701278:	70007865 	andvc	r7, r0, r5, ror #16
8070127c:	5f656761 	svcpl	0x00656761
80701280:	636f6c62 	cmnvs	pc, #25088	; 0x6200
80701284:	552f006b 	strpl	r0, [pc, #-107]!	; 80701221 <.LC10+0x3f5>
80701288:	73726573 	cmnvc	r2, #482344960	; 0x1cc00000
8070128c:	6575792f 	ldrbvs	r7, [r5, #-2351]!	; 0xfffff6d1
80701290:	7365442f 	cmnvc	r5, #788529152	; 0x2f000000
80701294:	706f746b 	rsbvc	r7, pc, fp, ror #8
80701298:	4d49412f 	stfmie	f4, [r9, #-188]	; 0xffffff44
8070129c:	6c003676 	stcvs	6, cr3, [r0], {118}	; 0x76
807012a0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
807012a4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
807012a8:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
807012ac:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
807012b0:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
807012b4:	656b0074 	strbvs	r0, [fp, #-116]!	; 0xffffff8c
807012b8:	692f6e72 	stmdbvs	pc!, {r1, r4, r5, r6, r9, sl, fp, sp, lr}	; <UNPREDICTABLE>
807012bc:	2f74696e 	svccs	0x0074696e
807012c0:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
807012c4:	6578655f 	ldrbvs	r6, [r8, #-1375]!	; 0xfffffaa1
807012c8:	00632e63 	rsbeq	r2, r3, r3, ror #28
807012cc:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
807012d0:	73696c5f 	cmnvc	r9, #24320	; 0x5f00
807012d4:	69730074 	ldmdbvs	r3!, {r2, r4, r5, r6}^
807012d8:	7974657a 	ldmdbvc	r4!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}^
807012dc:	6c006570 	cfstr32vs	mvfx6, [r0], {112}	; 0x70
807012e0:	20676e6f 	rsbcs	r6, r7, pc, ror #28
807012e4:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
807012e8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
807012ec:	67617000 	strbvs	r7, [r1, -r0]!
807012f0:	6c625f65 	stclvs	15, cr5, [r2], #-404	; 0xfffffe6c
807012f4:	5f6b636f 	svcpl	0x006b636f
807012f8:	68730074 	ldmdavs	r3!, {r2, r4, r5, r6}^
807012fc:	2074726f 	rsbscs	r7, r4, pc, ror #4
80701300:	00746e69 	rsbseq	r6, r4, r9, ror #28
80701304:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
80701308:	6578655f 	ldrbvs	r6, [r8, #-1375]!	; 0xfffffaa1
8070130c:	75700063 	ldrbvc	r0, [r0, #-99]!	; 0xffffff9d
80701310:	78656874 	stmdavc	r5!, {r2, r4, r5, r6, fp, sp, lr}^
80701314:	43434700 	movtmi	r4, #14080	; 0x3700
80701318:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
8070131c:	2029554e 	eorcs	r5, r9, lr, asr #10
80701320:	2e322e35 	mrccs	14, 1, r2, cr2, cr5, {1}
80701324:	00000030 	andeq	r0, r0, r0, lsr r0
80701328:	0000000c 	andeq	r0, r0, ip
8070132c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80701330:	7c020001 	stcvc	0, cr0, [r2], {1}
80701334:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80701338:	0000001c 	andeq	r0, r0, ip, lsl r0
8070133c:	80701328 	rsbshi	r1, r0, r8, lsr #6
80701340:	80700ac8 	rsbshi	r0, r0, r8, asr #21
80701344:	000000c0 	andeq	r0, r0, r0, asr #1
80701348:	8b080e42 	blhi	80904c58 <.LC14+0x20022c>
8070134c:	42018e02 	andmi	r8, r1, #2, 28
80701350:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80701354:	080d0c5a 	stmdaeq	sp, {r1, r3, r4, r6, sl, fp}
80701358:	0000001c 	andeq	r0, r0, ip, lsl r0
8070135c:	80701328 	rsbshi	r1, r0, r8, lsr #6
80701360:	80700b88 	rsbshi	r0, r0, r8, lsl #23
80701364:	0000003c 	andeq	r0, r0, ip, lsr r0
80701368:	8b080e42 	blhi	80904c78 <.LC14+0x20024c>
8070136c:	42018e02 	andmi	r8, r1, #2, 28
80701370:	58040b0c 	stmdapl	r4, {r2, r3, r8, r9, fp}
80701374:	00080d0c 	andeq	r0, r8, ip, lsl #26
80701378:	00000018 	andeq	r0, r0, r8, lsl r0
8070137c:	80701328 	rsbshi	r1, r0, r8, lsr #6
80701380:	80700bc4 	rsbshi	r0, r0, r4, asr #23
80701384:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
80701388:	8b080e42 	blhi	80904c98 <.LC14+0x20026c>
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

807013c8 <alloc_align>:
807013c8:	e92d4800 	push	{fp, lr}
807013cc:	e28db004 	add	fp, sp, #4
807013d0:	e24dd010 	sub	sp, sp, #16
807013d4:	e50b0010 	str	r0, [fp, #-16]
807013d8:	e51b3010 	ldr	r3, [fp, #-16]
807013dc:	e3530c02 	cmp	r3, #512	; 0x200
807013e0:	1a000023 	bne	80701474 <alloc_align+0xac>
807013e4:	e3013bd8 	movw	r3, #7128	; 0x1bd8
807013e8:	e3483070 	movt	r3, #32880	; 0x8070
807013ec:	e5933000 	ldr	r3, [r3]
807013f0:	e3530000 	cmp	r3, #0
807013f4:	0a000005 	beq	80701410 <alloc_align+0x48>
807013f8:	e3013bdc 	movw	r3, #7132	; 0x1bdc
807013fc:	e3483070 	movt	r3, #32880	; 0x8070
80701400:	e5933000 	ldr	r3, [r3]
80701404:	e5933004 	ldr	r3, [r3, #4]
80701408:	e3530000 	cmp	r3, #0
8070140c:	1a000005 	bne	80701428 <alloc_align+0x60>
80701410:	e3a00001 	mov	r0, #1
80701414:	eb0000e2 	bl	807017a4 <alloc_pages>
80701418:	e1a02000 	mov	r2, r0
8070141c:	e3013bd8 	movw	r3, #7128	; 0x1bd8
80701420:	e3483070 	movt	r3, #32880	; 0x8070
80701424:	e5832000 	str	r2, [r3]
80701428:	e3013bd8 	movw	r3, #7128	; 0x1bd8
8070142c:	e3483070 	movt	r3, #32880	; 0x8070
80701430:	e5932000 	ldr	r2, [r3]
80701434:	e3013bd8 	movw	r3, #7128	; 0x1bd8
80701438:	e3483070 	movt	r3, #32880	; 0x8070
8070143c:	e5933000 	ldr	r3, [r3]
80701440:	e5933004 	ldr	r3, [r3, #4]
80701444:	e2433c02 	sub	r3, r3, #512	; 0x200
80701448:	e5823004 	str	r3, [r2, #4]
8070144c:	e3013bd8 	movw	r3, #7128	; 0x1bd8
80701450:	e3483070 	movt	r3, #32880	; 0x8070
80701454:	e5933000 	ldr	r3, [r3]
80701458:	e5932008 	ldr	r2, [r3, #8]
8070145c:	e3013bd8 	movw	r3, #7128	; 0x1bd8
80701460:	e3483070 	movt	r3, #32880	; 0x8070
80701464:	e5933000 	ldr	r3, [r3]
80701468:	e5933004 	ldr	r3, [r3, #4]
8070146c:	e0823003 	add	r3, r2, r3
80701470:	ea000055 	b	807015cc <alloc_align+0x204>
80701474:	e51b3010 	ldr	r3, [fp, #-16]
80701478:	e3530b01 	cmp	r3, #1024	; 0x400
8070147c:	1a000023 	bne	80701510 <alloc_align+0x148>
80701480:	e3013bdc 	movw	r3, #7132	; 0x1bdc
80701484:	e3483070 	movt	r3, #32880	; 0x8070
80701488:	e5933000 	ldr	r3, [r3]
8070148c:	e3530000 	cmp	r3, #0
80701490:	0a000005 	beq	807014ac <alloc_align+0xe4>
80701494:	e3013bdc 	movw	r3, #7132	; 0x1bdc
80701498:	e3483070 	movt	r3, #32880	; 0x8070
8070149c:	e5933000 	ldr	r3, [r3]
807014a0:	e5933004 	ldr	r3, [r3, #4]
807014a4:	e3530000 	cmp	r3, #0
807014a8:	1a000005 	bne	807014c4 <alloc_align+0xfc>
807014ac:	e3a00001 	mov	r0, #1
807014b0:	eb0000bb 	bl	807017a4 <alloc_pages>
807014b4:	e1a02000 	mov	r2, r0
807014b8:	e3013bdc 	movw	r3, #7132	; 0x1bdc
807014bc:	e3483070 	movt	r3, #32880	; 0x8070
807014c0:	e5832000 	str	r2, [r3]
807014c4:	e3013bdc 	movw	r3, #7132	; 0x1bdc
807014c8:	e3483070 	movt	r3, #32880	; 0x8070
807014cc:	e5932000 	ldr	r2, [r3]
807014d0:	e3013bdc 	movw	r3, #7132	; 0x1bdc
807014d4:	e3483070 	movt	r3, #32880	; 0x8070
807014d8:	e5933000 	ldr	r3, [r3]
807014dc:	e5933004 	ldr	r3, [r3, #4]
807014e0:	e2433b01 	sub	r3, r3, #1024	; 0x400
807014e4:	e5823004 	str	r3, [r2, #4]
807014e8:	e3013bdc 	movw	r3, #7132	; 0x1bdc
807014ec:	e3483070 	movt	r3, #32880	; 0x8070
807014f0:	e5933000 	ldr	r3, [r3]
807014f4:	e5932008 	ldr	r2, [r3, #8]
807014f8:	e3013bdc 	movw	r3, #7132	; 0x1bdc
807014fc:	e3483070 	movt	r3, #32880	; 0x8070
80701500:	e5933000 	ldr	r3, [r3]
80701504:	e5933004 	ldr	r3, [r3, #4]
80701508:	e0823003 	add	r3, r2, r3
8070150c:	ea00002e 	b	807015cc <alloc_align+0x204>
80701510:	e51b3010 	ldr	r3, [fp, #-16]
80701514:	e3530901 	cmp	r3, #16384	; 0x4000
80701518:	1a00002a 	bne	807015c8 <alloc_align+0x200>
8070151c:	e3a00007 	mov	r0, #7
80701520:	eb00009f 	bl	807017a4 <alloc_pages>
80701524:	e50b000c 	str	r0, [fp, #-12]
80701528:	e51b300c 	ldr	r3, [fp, #-12]
8070152c:	e5933008 	ldr	r3, [r3, #8]
80701530:	e50b3008 	str	r3, [fp, #-8]
80701534:	ea000002 	b	80701544 <alloc_align+0x17c>
80701538:	e51b3008 	ldr	r3, [fp, #-8]
8070153c:	e2833a01 	add	r3, r3, #4096	; 0x1000
80701540:	e50b3008 	str	r3, [fp, #-8]
80701544:	e51b3008 	ldr	r3, [fp, #-8]
80701548:	e7ed3053 	ubfx	r3, r3, #0, #14
8070154c:	e3530000 	cmp	r3, #0
80701550:	1afffff8 	bne	80701538 <alloc_align+0x170>
80701554:	e51b300c 	ldr	r3, [fp, #-12]
80701558:	e5932008 	ldr	r2, [r3, #8]
8070155c:	e51b3008 	ldr	r3, [fp, #-8]
80701560:	e1520003 	cmp	r2, r3
80701564:	0a000008 	beq	8070158c <alloc_align+0x1c4>
80701568:	e51b300c 	ldr	r3, [fp, #-12]
8070156c:	e5930008 	ldr	r0, [r3, #8]
80701570:	e51b300c 	ldr	r3, [fp, #-12]
80701574:	e5933008 	ldr	r3, [r3, #8]
80701578:	e51b2008 	ldr	r2, [fp, #-8]
8070157c:	e0633002 	rsb	r3, r3, r2
80701580:	e1a03623 	lsr	r3, r3, #12
80701584:	e1a01003 	mov	r1, r3
80701588:	eb000114 	bl	807019e0 <free_pages>
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
807015bc:	eb000107 	bl	807019e0 <free_pages>
807015c0:	e51b3008 	ldr	r3, [fp, #-8]
807015c4:	ea000000 	b	807015cc <alloc_align+0x204>
807015c8:	e3a03000 	mov	r3, #0
807015cc:	e1a00003 	mov	r0, r3
807015d0:	e24bd004 	sub	sp, fp, #4
807015d4:	e8bd8800 	pop	{fp, pc}

807015d8 <page_map>:
807015d8:	e92d4800 	push	{fp, lr}
807015dc:	e28db004 	add	fp, sp, #4
807015e0:	e24dd018 	sub	sp, sp, #24
807015e4:	e50b0010 	str	r0, [fp, #-16]
807015e8:	e50b1014 	str	r1, [fp, #-20]	; 0xffffffec
807015ec:	e50b2018 	str	r2, [fp, #-24]	; 0xffffffe8
807015f0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
807015f4:	e50b3008 	str	r3, [fp, #-8]
807015f8:	e51b3010 	ldr	r3, [fp, #-16]
807015fc:	e1a03a23 	lsr	r3, r3, #20
80701600:	e1a03103 	lsl	r3, r3, #2
80701604:	e51b2008 	ldr	r2, [fp, #-8]
80701608:	e0823003 	add	r3, r2, r3
8070160c:	e50b3008 	str	r3, [fp, #-8]
80701610:	e51b3008 	ldr	r3, [fp, #-8]
80701614:	e5933000 	ldr	r3, [r3]
80701618:	e2033003 	and	r3, r3, #3
8070161c:	e3530001 	cmp	r3, #1
80701620:	0a000006 	beq	80701640 <page_map+0x68>
80701624:	e3a00b01 	mov	r0, #1024	; 0x400
80701628:	ebffff66 	bl	807013c8 <alloc_align>
8070162c:	e1a03000 	mov	r3, r0
80701630:	e2833e1e 	add	r3, r3, #480	; 0x1e0
80701634:	e2833001 	add	r3, r3, #1
80701638:	e51b2008 	ldr	r2, [fp, #-8]
8070163c:	e5823000 	str	r3, [r2]
80701640:	e51b3008 	ldr	r3, [fp, #-8]
80701644:	e5933000 	ldr	r3, [r3]
80701648:	e2433d1e 	sub	r3, r3, #1920	; 0x780
8070164c:	e2433112 	sub	r3, r3, #-2147483644	; 0x80000004
80701650:	e50b300c 	str	r3, [fp, #-12]
80701654:	e51b3010 	ldr	r3, [fp, #-16]
80701658:	e1a03623 	lsr	r3, r3, #12
8070165c:	e6ef3073 	uxtb	r3, r3
80701660:	e1a03103 	lsl	r3, r3, #2
80701664:	e51b200c 	ldr	r2, [fp, #-12]
80701668:	e0823003 	add	r3, r2, r3
8070166c:	e50b300c 	str	r3, [fp, #-12]
80701670:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701674:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
80701678:	e3c3300f 	bic	r3, r3, #15
8070167c:	e2833e81 	add	r3, r3, #2064	; 0x810
80701680:	e2833002 	add	r3, r3, #2
80701684:	e51b200c 	ldr	r2, [fp, #-12]
80701688:	e5823000 	str	r3, [r2]
8070168c:	e1a00000 	nop			; (mov r0, r0)
80701690:	e24bd004 	sub	sp, fp, #4
80701694:	e8bd8800 	pop	{fp, pc}

80701698 <memory_init>:
80701698:	e92d4800 	push	{fp, lr}
8070169c:	e28db004 	add	fp, sp, #4
807016a0:	e24dd008 	sub	sp, sp, #8
807016a4:	e3010be0 	movw	r0, #7136	; 0x1be0
807016a8:	e3480070 	movt	r0, #32880	; 0x8070
807016ac:	eb000353 	bl	80702400 <uart_spin_puts>
807016b0:	e3a03601 	mov	r3, #1048576	; 0x100000
807016b4:	e50b3008 	str	r3, [fp, #-8]
807016b8:	ea000010 	b	80701700 <memory_init+0x68>
807016bc:	e3a03000 	mov	r3, #0
807016c0:	e3483020 	movt	r3, #32800	; 0x8020
807016c4:	e50b300c 	str	r3, [fp, #-12]
807016c8:	e51b3008 	ldr	r3, [fp, #-8]
807016cc:	e1a03a23 	lsr	r3, r3, #20
807016d0:	e1a03103 	lsl	r3, r3, #2
807016d4:	e51b200c 	ldr	r2, [fp, #-12]
807016d8:	e0823003 	add	r3, r2, r3
807016dc:	e50b300c 	str	r3, [fp, #-12]
807016e0:	e51b300c 	ldr	r3, [fp, #-12]
807016e4:	e5933000 	ldr	r3, [r3]
807016e8:	e3c32003 	bic	r2, r3, #3
807016ec:	e51b300c 	ldr	r3, [fp, #-12]
807016f0:	e5832000 	str	r2, [r3]
807016f4:	e51b3008 	ldr	r3, [fp, #-8]
807016f8:	e2833601 	add	r3, r3, #1048576	; 0x100000
807016fc:	e50b3008 	str	r3, [fp, #-8]
80701700:	e51b3008 	ldr	r3, [fp, #-8]
80701704:	e3530000 	cmp	r3, #0
80701708:	aaffffeb 	bge	807016bc <memory_init+0x24>
8070170c:	e3010bf8 	movw	r0, #7160	; 0x1bf8
80701710:	e3480070 	movt	r0, #32880	; 0x8070
80701714:	eb000339 	bl	80702400 <uart_spin_puts>
80701718:	e3a01000 	mov	r1, #0
8070171c:	ee081f17 	mcr	15, 0, r1, cr8, cr7, {0}
80701720:	ee081f16 	mcr	15, 0, r1, cr8, cr6, {0}
80701724:	ee081f15 	mcr	15, 0, r1, cr8, cr5, {0}
80701728:	ee071fd5 	mcr	15, 0, r1, cr7, cr5, {6}
8070172c:	ee071f15 	mcr	15, 0, r1, cr7, cr5, {0}
80701730:	ee07bf5e 	mcr	15, 0, fp, cr7, cr14, {2}
80701734:	e3010c18 	movw	r0, #7192	; 0x1c18
80701738:	e3480070 	movt	r0, #32880	; 0x8070
8070173c:	eb00032f 	bl	80702400 <uart_spin_puts>
80701740:	e30133c4 	movw	r3, #5060	; 0x13c4
80701744:	e3483070 	movt	r3, #32880	; 0x8070
80701748:	e3a024e1 	mov	r2, #-520093696	; 0xe1000000
8070174c:	e5832000 	str	r2, [r3]
80701750:	e30133c4 	movw	r3, #5060	; 0x13c4
80701754:	e3483070 	movt	r3, #32880	; 0x8070
80701758:	e5933000 	ldr	r3, [r3]
8070175c:	e3a0241d 	mov	r2, #486539264	; 0x1d000000
80701760:	e5832004 	str	r2, [r3, #4]
80701764:	e30133c4 	movw	r3, #5060	; 0x13c4
80701768:	e3483070 	movt	r3, #32880	; 0x8070
8070176c:	e5933000 	ldr	r3, [r3]
80701770:	e3a02000 	mov	r2, #0
80701774:	e5832000 	str	r2, [r3]
80701778:	e30133c4 	movw	r3, #5060	; 0x13c4
8070177c:	e3483070 	movt	r3, #32880	; 0x8070
80701780:	e5933000 	ldr	r3, [r3]
80701784:	e3a02401 	mov	r2, #16777216	; 0x1000000
80701788:	e5832008 	str	r2, [r3, #8]
8070178c:	e3010c2c 	movw	r0, #7212	; 0x1c2c
80701790:	e3480070 	movt	r0, #32880	; 0x8070
80701794:	eb000319 	bl	80702400 <uart_spin_puts>
80701798:	e1a00000 	nop			; (mov r0, r0)
8070179c:	e24bd004 	sub	sp, fp, #4
807017a0:	e8bd8800 	pop	{fp, pc}

807017a4 <alloc_pages>:
807017a4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
807017a8:	e28db000 	add	fp, sp, #0
807017ac:	e24dd01c 	sub	sp, sp, #28
807017b0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
807017b4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
807017b8:	e3530000 	cmp	r3, #0
807017bc:	1a000001 	bne	807017c8 <alloc_pages+0x24>
807017c0:	e3a03000 	mov	r3, #0
807017c4:	ea00005d 	b	80701940 <alloc_pages+0x19c>
807017c8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
807017cc:	e1a03603 	lsl	r3, r3, #12
807017d0:	e50b3010 	str	r3, [fp, #-16]
807017d4:	e30133c4 	movw	r3, #5060	; 0x13c4
807017d8:	e3483070 	movt	r3, #32880	; 0x8070
807017dc:	e5933000 	ldr	r3, [r3]
807017e0:	e50b3008 	str	r3, [fp, #-8]
807017e4:	e30133c4 	movw	r3, #5060	; 0x13c4
807017e8:	e3483070 	movt	r3, #32880	; 0x8070
807017ec:	e5933000 	ldr	r3, [r3]
807017f0:	e50b300c 	str	r3, [fp, #-12]
807017f4:	ea00004d 	b	80701930 <alloc_pages+0x18c>
807017f8:	e51b3008 	ldr	r3, [fp, #-8]
807017fc:	e5932004 	ldr	r2, [r3, #4]
80701800:	e51b3010 	ldr	r3, [fp, #-16]
80701804:	e1520003 	cmp	r2, r3
80701808:	3a000042 	bcc	80701918 <alloc_pages+0x174>
8070180c:	e51b3008 	ldr	r3, [fp, #-8]
80701810:	e5932004 	ldr	r2, [r3, #4]
80701814:	e51b3010 	ldr	r3, [fp, #-16]
80701818:	e1520003 	cmp	r2, r3
8070181c:	1a000011 	bne	80701868 <alloc_pages+0xc4>
80701820:	e30133c4 	movw	r3, #5060	; 0x13c4
80701824:	e3483070 	movt	r3, #32880	; 0x8070
80701828:	e5933000 	ldr	r3, [r3]
8070182c:	e51b2008 	ldr	r2, [fp, #-8]
80701830:	e1520003 	cmp	r2, r3
80701834:	1a000005 	bne	80701850 <alloc_pages+0xac>
80701838:	e51b3008 	ldr	r3, [fp, #-8]
8070183c:	e5932000 	ldr	r2, [r3]
80701840:	e30133c4 	movw	r3, #5060	; 0x13c4
80701844:	e3483070 	movt	r3, #32880	; 0x8070
80701848:	e5832000 	str	r2, [r3]
8070184c:	ea000003 	b	80701860 <alloc_pages+0xbc>
80701850:	e51b3008 	ldr	r3, [fp, #-8]
80701854:	e5932000 	ldr	r2, [r3]
80701858:	e51b300c 	ldr	r3, [fp, #-12]
8070185c:	e5832000 	str	r2, [r3]
80701860:	e51b3008 	ldr	r3, [fp, #-8]
80701864:	ea000035 	b	80701940 <alloc_pages+0x19c>
80701868:	e51b3008 	ldr	r3, [fp, #-8]
8070186c:	e5932004 	ldr	r2, [r3, #4]
80701870:	e51b3010 	ldr	r3, [fp, #-16]
80701874:	e1520003 	cmp	r2, r3
80701878:	9a000027 	bls	8070191c <alloc_pages+0x178>
8070187c:	e51b3010 	ldr	r3, [fp, #-16]
80701880:	e1a03103 	lsl	r3, r3, #2
80701884:	e1a02103 	lsl	r2, r3, #2
80701888:	e0633002 	rsb	r3, r3, r2
8070188c:	e51b2008 	ldr	r2, [fp, #-8]
80701890:	e0823003 	add	r3, r2, r3
80701894:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80701898:	e51b3008 	ldr	r3, [fp, #-8]
8070189c:	e5932000 	ldr	r2, [r3]
807018a0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807018a4:	e5832000 	str	r2, [r3]
807018a8:	e51b3008 	ldr	r3, [fp, #-8]
807018ac:	e5932004 	ldr	r2, [r3, #4]
807018b0:	e51b3010 	ldr	r3, [fp, #-16]
807018b4:	e0632002 	rsb	r2, r3, r2
807018b8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807018bc:	e5832004 	str	r2, [r3, #4]
807018c0:	e51b3008 	ldr	r3, [fp, #-8]
807018c4:	e5932008 	ldr	r2, [r3, #8]
807018c8:	e51b3010 	ldr	r3, [fp, #-16]
807018cc:	e0822003 	add	r2, r2, r3
807018d0:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807018d4:	e5832008 	str	r2, [r3, #8]
807018d8:	e30133c4 	movw	r3, #5060	; 0x13c4
807018dc:	e3483070 	movt	r3, #32880	; 0x8070
807018e0:	e5932000 	ldr	r2, [r3]
807018e4:	e51b3008 	ldr	r3, [fp, #-8]
807018e8:	e1520003 	cmp	r2, r3
807018ec:	1a000004 	bne	80701904 <alloc_pages+0x160>
807018f0:	e30133c4 	movw	r3, #5060	; 0x13c4
807018f4:	e3483070 	movt	r3, #32880	; 0x8070
807018f8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
807018fc:	e5832000 	str	r2, [r3]
80701900:	ea000002 	b	80701910 <alloc_pages+0x16c>
80701904:	e51b300c 	ldr	r3, [fp, #-12]
80701908:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
8070190c:	e5832000 	str	r2, [r3]
80701910:	e51b3008 	ldr	r3, [fp, #-8]
80701914:	ea000009 	b	80701940 <alloc_pages+0x19c>
80701918:	e1a00000 	nop			; (mov r0, r0)
8070191c:	e51b3008 	ldr	r3, [fp, #-8]
80701920:	e50b300c 	str	r3, [fp, #-12]
80701924:	e51b3008 	ldr	r3, [fp, #-8]
80701928:	e5933000 	ldr	r3, [r3]
8070192c:	e50b3008 	str	r3, [fp, #-8]
80701930:	e51b3008 	ldr	r3, [fp, #-8]
80701934:	e3530000 	cmp	r3, #0
80701938:	1affffae 	bne	807017f8 <alloc_pages+0x54>
8070193c:	e3a03000 	mov	r3, #0
80701940:	e1a00003 	mov	r0, r3
80701944:	e24bd000 	sub	sp, fp, #0
80701948:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8070194c:	e12fff1e 	bx	lr

80701950 <merge_block>:
80701950:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80701954:	e28db000 	add	fp, sp, #0
80701958:	e24dd00c 	sub	sp, sp, #12
8070195c:	e50b0008 	str	r0, [fp, #-8]
80701960:	e50b100c 	str	r1, [fp, #-12]
80701964:	e51b3008 	ldr	r3, [fp, #-8]
80701968:	e3530000 	cmp	r3, #0
8070196c:	0a000017 	beq	807019d0 <merge_block+0x80>
80701970:	e51b300c 	ldr	r3, [fp, #-12]
80701974:	e3530000 	cmp	r3, #0
80701978:	0a000014 	beq	807019d0 <merge_block+0x80>
8070197c:	e51b3008 	ldr	r3, [fp, #-8]
80701980:	e5932008 	ldr	r2, [r3, #8]
80701984:	e51b3008 	ldr	r3, [fp, #-8]
80701988:	e5933004 	ldr	r3, [r3, #4]
8070198c:	e0822003 	add	r2, r2, r3
80701990:	e51b300c 	ldr	r3, [fp, #-12]
80701994:	e5933008 	ldr	r3, [r3, #8]
80701998:	e1520003 	cmp	r2, r3
8070199c:	1a00000c 	bne	807019d4 <merge_block+0x84>
807019a0:	e51b3008 	ldr	r3, [fp, #-8]
807019a4:	e5932004 	ldr	r2, [r3, #4]
807019a8:	e51b300c 	ldr	r3, [fp, #-12]
807019ac:	e5933004 	ldr	r3, [r3, #4]
807019b0:	e0822003 	add	r2, r2, r3
807019b4:	e51b3008 	ldr	r3, [fp, #-8]
807019b8:	e5832004 	str	r2, [r3, #4]
807019bc:	e51b300c 	ldr	r3, [fp, #-12]
807019c0:	e5932000 	ldr	r2, [r3]
807019c4:	e51b3008 	ldr	r3, [fp, #-8]
807019c8:	e5832000 	str	r2, [r3]
807019cc:	ea000000 	b	807019d4 <merge_block+0x84>
807019d0:	e1a00000 	nop			; (mov r0, r0)
807019d4:	e24bd000 	sub	sp, fp, #0
807019d8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
807019dc:	e12fff1e 	bx	lr

807019e0 <free_pages>:
807019e0:	e92d4800 	push	{fp, lr}
807019e4:	e28db004 	add	fp, sp, #4
807019e8:	e24dd018 	sub	sp, sp, #24
807019ec:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
807019f0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
807019f4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
807019f8:	e3530000 	cmp	r3, #0
807019fc:	0a000072 	beq	80701bcc <free_pages+0x1ec>
80701a00:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
80701a04:	e1a03603 	lsl	r3, r3, #12
80701a08:	e50b300c 	str	r3, [fp, #-12]
80701a0c:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a10:	e3483070 	movt	r3, #32880	; 0x8070
80701a14:	e5933000 	ldr	r3, [r3]
80701a18:	e5932008 	ldr	r2, [r3, #8]
80701a1c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701a20:	e1520003 	cmp	r2, r3
80701a24:	9a000025 	bls	80701ac0 <free_pages+0xe0>
80701a28:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a2c:	e3483070 	movt	r3, #32880	; 0x8070
80701a30:	e5933000 	ldr	r3, [r3]
80701a34:	e1a02003 	mov	r2, r3
80701a38:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a3c:	e3483070 	movt	r3, #32880	; 0x8070
80701a40:	e5933000 	ldr	r3, [r3]
80701a44:	e5933008 	ldr	r3, [r3, #8]
80701a48:	e0632002 	rsb	r2, r3, r2
80701a4c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701a50:	e0823003 	add	r3, r2, r3
80701a54:	e50b3010 	str	r3, [fp, #-16]
80701a58:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a5c:	e3483070 	movt	r3, #32880	; 0x8070
80701a60:	e5932000 	ldr	r2, [r3]
80701a64:	e51b3010 	ldr	r3, [fp, #-16]
80701a68:	e5832000 	str	r2, [r3]
80701a6c:	e51b3010 	ldr	r3, [fp, #-16]
80701a70:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80701a74:	e5832008 	str	r2, [r3, #8]
80701a78:	e51b3010 	ldr	r3, [fp, #-16]
80701a7c:	e51b200c 	ldr	r2, [fp, #-12]
80701a80:	e5832004 	str	r2, [r3, #4]
80701a84:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a88:	e3483070 	movt	r3, #32880	; 0x8070
80701a8c:	e51b2010 	ldr	r2, [fp, #-16]
80701a90:	e5832000 	str	r2, [r3]
80701a94:	e30133c4 	movw	r3, #5060	; 0x13c4
80701a98:	e3483070 	movt	r3, #32880	; 0x8070
80701a9c:	e5932000 	ldr	r2, [r3]
80701aa0:	e30133c4 	movw	r3, #5060	; 0x13c4
80701aa4:	e3483070 	movt	r3, #32880	; 0x8070
80701aa8:	e5933000 	ldr	r3, [r3]
80701aac:	e5933000 	ldr	r3, [r3]
80701ab0:	e1a01003 	mov	r1, r3
80701ab4:	e1a00002 	mov	r0, r2
80701ab8:	ebffffa4 	bl	80701950 <merge_block>
80701abc:	ea000043 	b	80701bd0 <free_pages+0x1f0>
80701ac0:	e30133c4 	movw	r3, #5060	; 0x13c4
80701ac4:	e3483070 	movt	r3, #32880	; 0x8070
80701ac8:	e5933000 	ldr	r3, [r3]
80701acc:	e50b3008 	str	r3, [fp, #-8]
80701ad0:	ea000039 	b	80701bbc <free_pages+0x1dc>
80701ad4:	e51b3008 	ldr	r3, [fp, #-8]
80701ad8:	e5932008 	ldr	r2, [r3, #8]
80701adc:	e51b3008 	ldr	r3, [fp, #-8]
80701ae0:	e5933004 	ldr	r3, [r3, #4]
80701ae4:	e0822003 	add	r2, r2, r3
80701ae8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701aec:	e1520003 	cmp	r2, r3
80701af0:	8a00002d 	bhi	80701bac <free_pages+0x1cc>
80701af4:	e51b3008 	ldr	r3, [fp, #-8]
80701af8:	e5932008 	ldr	r2, [r3, #8]
80701afc:	e51b3008 	ldr	r3, [fp, #-8]
80701b00:	e5933004 	ldr	r3, [r3, #4]
80701b04:	e0822003 	add	r2, r2, r3
80701b08:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701b0c:	e1520003 	cmp	r2, r3
80701b10:	1a00000b 	bne	80701b44 <free_pages+0x164>
80701b14:	e51b3008 	ldr	r3, [fp, #-8]
80701b18:	e5932004 	ldr	r2, [r3, #4]
80701b1c:	e51b300c 	ldr	r3, [fp, #-12]
80701b20:	e0822003 	add	r2, r2, r3
80701b24:	e51b3008 	ldr	r3, [fp, #-8]
80701b28:	e5832004 	str	r2, [r3, #4]
80701b2c:	e51b3008 	ldr	r3, [fp, #-8]
80701b30:	e5933000 	ldr	r3, [r3]
80701b34:	e1a01003 	mov	r1, r3
80701b38:	e51b0008 	ldr	r0, [fp, #-8]
80701b3c:	ebffff83 	bl	80701950 <merge_block>
80701b40:	ea00001a 	b	80701bb0 <free_pages+0x1d0>
80701b44:	e51b2008 	ldr	r2, [fp, #-8]
80701b48:	e51b3008 	ldr	r3, [fp, #-8]
80701b4c:	e5933008 	ldr	r3, [r3, #8]
80701b50:	e0632002 	rsb	r2, r3, r2
80701b54:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80701b58:	e0823003 	add	r3, r2, r3
80701b5c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
80701b60:	e51b3008 	ldr	r3, [fp, #-8]
80701b64:	e5932000 	ldr	r2, [r3]
80701b68:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701b6c:	e5832000 	str	r2, [r3]
80701b70:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701b74:	e51b200c 	ldr	r2, [fp, #-12]
80701b78:	e5832004 	str	r2, [r3, #4]
80701b7c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701b80:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80701b84:	e5832008 	str	r2, [r3, #8]
80701b88:	e51b3008 	ldr	r3, [fp, #-8]
80701b8c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
80701b90:	e5832000 	str	r2, [r3]
80701b94:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80701b98:	e5933000 	ldr	r3, [r3]
80701b9c:	e1a01003 	mov	r1, r3
80701ba0:	e51b0014 	ldr	r0, [fp, #-20]	; 0xffffffec
80701ba4:	ebffff69 	bl	80701950 <merge_block>
80701ba8:	ea000000 	b	80701bb0 <free_pages+0x1d0>
80701bac:	e1a00000 	nop			; (mov r0, r0)
80701bb0:	e51b3008 	ldr	r3, [fp, #-8]
80701bb4:	e5933000 	ldr	r3, [r3]
80701bb8:	e50b3008 	str	r3, [fp, #-8]
80701bbc:	e51b3008 	ldr	r3, [fp, #-8]
80701bc0:	e3530000 	cmp	r3, #0
80701bc4:	1affffc2 	bne	80701ad4 <free_pages+0xf4>
80701bc8:	ea000000 	b	80701bd0 <free_pages+0x1f0>
80701bcc:	e1a00000 	nop			; (mov r0, r0)
80701bd0:	e24bd004 	sub	sp, fp, #4
80701bd4:	e8bd8800 	pop	{fp, pc}

80701bd8 <page_bound_0x200>:
80701bd8:	00000000 	andeq	r0, r0, r0

80701bdc <page_bound_0x400>:
80701bdc:	00000000 	andeq	r0, r0, r0

80701be0 <.LC0>:
80701be0:	726d654d 	rsbvc	r6, sp, #322961408	; 0x13400000
80701be4:	6920796f 	stmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, fp, ip, sp, lr}
80701be8:	2074696e 	rsbscs	r6, r4, lr, ror #18
80701bec:	69676562 	stmdbvs	r7!, {r1, r5, r6, r8, sl, sp, lr}^
80701bf0:	0a0d206e 	beq	80a49db0 <.LC14+0x345384>
80701bf4:	00000000 	andeq	r0, r0, r0

80701bf8 <.LC1>:
80701bf8:	61656c43 	cmnvs	r5, r3, asr #24
80701bfc:	6f6c2072 	svcvs	0x006c2072
80701c00:	20726577 	rsbscs	r6, r2, r7, ror r5
80701c04:	6f6d656d 	svcvs	0x006d656d
80701c08:	61207972 	teqvs	r0, r2, ror r9
80701c0c:	65726464 	ldrbvs	r6, [r2, #-1124]!	; 0xfffffb9c
80701c10:	4f207373 	svcmi	0x00207373
80701c14:	000a0d4b 	andeq	r0, sl, fp, asr #26

80701c18 <.LC2>:
80701c18:	61766e49 	cmnvs	r6, r9, asr #28
80701c1c:	6164696c 	cmnvs	r4, ip, ror #18
80701c20:	20646574 	rsbcs	r6, r4, r4, ror r5
80701c24:	2e424c54 	mcrcs	12, 2, r4, cr2, cr4, {2}
80701c28:	00000a0d 	andeq	r0, r0, sp, lsl #20

80701c2c <.LC3>:
80701c2c:	726d654d 	rsbvc	r6, sp, #322961408	; 0x13400000
80701c30:	6920796f 	stmdbvs	r0!, {r0, r1, r2, r3, r5, r6, r8, fp, ip, sp, lr}
80701c34:	2074696e 	rsbscs	r6, r4, lr, ror #18
80701c38:	696e6966 	stmdbvs	lr!, {r1, r2, r5, r6, r8, fp, sp, lr}^
80701c3c:	64656873 	strbtvs	r6, [r5], #-2163	; 0xfffff78d
80701c40:	0a0d0a0d 	beq	80a4447c <.LC14+0x33fa50>
80701c44:	00000000 	andeq	r0, r0, r0
80701c48:	00000313 	andeq	r0, r0, r3, lsl r3
80701c4c:	1f5f0004 	svcne	0x005f0004
80701c50:	01048070 	tsteq	r4, r0, ror r0
80701c54:	807011f7 	ldrshthi	r1, [r0], #-23	; 0xffffffe9
80701c58:	7022c20c 	eorvc	ip, r2, ip, lsl #4
80701c5c:	70128680 	andsvc	r8, r2, r0, lsl #13
80701c60:	7013c880 	andsvc	ip, r3, r0, lsl #17
80701c64:	00081080 	andeq	r1, r8, r0, lsl #1
80701c68:	7020ef00 	eorvc	lr, r0, r0, lsl #30
80701c6c:	08010280 	stmdaeq	r1, {r7, r9}
80701c70:	80701248 	rsbshi	r1, r0, r8, asr #4
80701c74:	4a060102 	bmi	80882084 <.LC14+0x17d658>
80701c78:	02807012 	addeq	r7, r0, #18
80701c7c:	12560702 	subsne	r0, r6, #524288	; 0x80000
80701c80:	02028070 	andeq	r8, r2, #112	; 0x70
80701c84:	7012fa05 	andsvc	pc, r2, r5, lsl #20
80701c88:	07040280 	streq	r0, [r4, -r0, lsl #5]
80701c8c:	807012a9 	rsbshi	r1, r0, r9, lsr #5
80701c90:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
80701c94:	411f0400 	tstmi	pc, r0, lsl #8
80701c98:	04000000 	streq	r0, [r0], #-0
80701c9c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
80701ca0:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
80701ca4:	7012a407 	andsvc	sl, r2, r7, lsl #8
80701ca8:	07080280 	streq	r0, [r8, -r0, lsl #5]
80701cac:	8070129f 			; <UNDEFINED> instruction: 0x8070129f
80701cb0:	df050802 	svcle	0x00050802
80701cb4:	02807012 	addeq	r7, r0, #18
80701cb8:	12e40504 	rscne	r0, r4, #4, 10	; 0x1000000
80701cbc:	7b058070 	blvc	80861e84 <.LC14+0x15d458>
80701cc0:	0c807012 	stceq	0, cr7, [r0], {18}
80701cc4:	00a60802 	adceq	r0, r6, r2, lsl #16
80701cc8:	43060000 	movwmi	r0, #24576	; 0x6000
80701ccc:	02807012 	addeq	r7, r0, #18
80701cd0:	0000a609 	andeq	sl, r0, r9, lsl #12
80701cd4:	f7060000 			; <UNDEFINED> instruction: 0xf7060000
80701cd8:	02807022 	addeq	r7, r0, #34	; 0x22
80701cdc:	0000480a 	andeq	r4, r0, sl, lsl #16
80701ce0:	70070400 	andvc	r0, r7, r0, lsl #8
80701ce4:	0b020061 	bleq	80781e70 <.LC14+0x7d444>
80701ce8:	00000048 	andeq	r0, r0, r8, asr #32
80701cec:	04080008 	streq	r0, [r8], #-8
80701cf0:	00000076 	andeq	r0, r0, r6, ror r0
80701cf4:	7012ed09 	andsvc	lr, r2, r9, lsl #26
80701cf8:	760c0280 	strvc	r0, [ip], -r0, lsl #5
80701cfc:	0a000000 	beq	80701d04 <.LC3+0xd8>
80701d00:	80702277 	rsbshi	r2, r0, r7, ror r2
80701d04:	00481601 	subeq	r1, r8, r1, lsl #12
80701d08:	13c80000 	bicne	r0, r8, #0
80701d0c:	02108070 	andseq	r8, r0, #112	; 0x70
80701d10:	9c010000 	stcls	0, cr0, [r1], {-0}
80701d14:	00000104 	andeq	r0, r0, r4, lsl #2
80701d18:	70229c0b 	eorvc	r9, r2, fp, lsl #24
80701d1c:	48160180 	ldmdami	r6, {r7, r8}
80701d20:	02000000 	andeq	r0, r0, #0
80701d24:	1c0c6c91 	stcne	12, cr6, [ip], {145}	; 0x91
80701d28:	ac807015 	stcge	0, cr7, [r0], {21}
80701d2c:	0d000000 	stceq	0, cr0, [r0, #-0]
80701d30:	80701280 	rsbshi	r1, r0, r0, lsl #5
80701d34:	01042a01 	tsteq	r4, r1, lsl #20
80701d38:	91020000 	mrsls	r0, (UNDEF: 2)
80701d3c:	61700e70 	cmnvs	r0, r0, ror lr
80701d40:	482b0100 	stmdami	fp!, {r8}
80701d44:	02000000 	andeq	r0, r0, #0
80701d48:	00007491 	muleq	r0, r1, r4
80701d4c:	00ac0408 	adceq	r0, ip, r8, lsl #8
80701d50:	6e0f0000 	cdpvs	0, 0, cr0, cr15, cr0, {0}
80701d54:	01807022 	orreq	r7, r0, r2, lsr #32
80701d58:	7015d837 	andsvc	sp, r5, r7, lsr r8
80701d5c:	0000c080 	andeq	ip, r0, r0, lsl #1
80701d60:	649c0100 	ldrvs	r0, [ip], #256	; 0x100
80701d64:	10000001 	andne	r0, r0, r1
80701d68:	01006176 	tsteq	r0, r6, ror r1
80701d6c:	00004837 	andeq	r4, r0, r7, lsr r8
80701d70:	6c910200 	lfmvs	f0, 4, [r1], {0}
80701d74:	00617010 	rsbeq	r7, r1, r0, lsl r0
80701d78:	00483701 	subeq	r3, r8, r1, lsl #14
80701d7c:	91020000 	mrsls	r0, (UNDEF: 2)
80701d80:	22d30b68 	sbcscs	r0, r3, #104, 22	; 0x1a000
80701d84:	37018070 	smlsdxcc	r1, r0, r0, r8
80701d88:	00000048 	andeq	r0, r0, r8, asr #32
80701d8c:	0d649102 	stfeqp	f1, [r4, #-8]!
80701d90:	80702294 			; <UNDEFINED> instruction: 0x80702294
80701d94:	01643901 	cmneq	r4, r1, lsl #18
80701d98:	91020000 	mrsls	r0, (UNDEF: 2)
80701d9c:	22650d74 	rsbcs	r0, r5, #116, 26	; 0x1d00
80701da0:	3f018070 	svccc	0x00018070
80701da4:	00000164 	andeq	r0, r0, r4, ror #2
80701da8:	00709102 	rsbseq	r9, r0, r2, lsl #2
80701dac:	00480408 	subeq	r0, r8, r8, lsl #8
80701db0:	4e110000 	cdpmi	0, 1, cr0, cr1, cr0, {0}
80701db4:	01807022 	orreq	r7, r0, r2, lsr #32
80701db8:	70169843 	andsvc	r9, r6, r3, asr #16
80701dbc:	00010c80 	andeq	r0, r1, r0, lsl #25
80701dc0:	af9c0100 	svcge	0x009c0100
80701dc4:	0c000001 	stceq	0, cr0, [r0], {1}
80701dc8:	807016b0 	ldrhthi	r1, [r0], #-96	; 0xffffffa0
80701dcc:	0000005c 	andeq	r0, r0, ip, asr r0
80701dd0:	0061760e 	rsbeq	r7, r1, lr, lsl #12
80701dd4:	00484901 	subeq	r4, r8, r1, lsl #18
80701dd8:	91020000 	mrsls	r0, (UNDEF: 2)
80701ddc:	16bc0c74 	sxtahne	r0, ip, r4, ror #24
80701de0:	00388070 	eorseq	r8, r8, r0, ror r0
80701de4:	940d0000 	strls	r0, [sp], #-0
80701de8:	01807022 	orreq	r7, r0, r2, lsr #32
80701dec:	0001644b 	andeq	r6, r1, fp, asr #8
80701df0:	70910200 	addsvc	r0, r1, r0, lsl #4
80701df4:	12000000 	andne	r0, r0, #0
80701df8:	807022e4 	rsbshi	r2, r0, r4, ror #5
80701dfc:	01046a01 	tsteq	r4, r1, lsl #20
80701e00:	17a40000 	strne	r0, [r4, r0]!
80701e04:	01ac8070 			; <UNDEFINED> instruction: 0x01ac8070
80701e08:	9c010000 	stcls	0, cr0, [r1], {-0}
80701e0c:	00000221 	andeq	r0, r0, r1, lsr #4
80701e10:	703d9e0b 	eorsvc	r9, sp, fp, lsl #28
80701e14:	486a0180 	stmdami	sl!, {r7, r8}^
80701e18:	02000000 	andeq	r0, r0, #0
80701e1c:	f00d6491 			; <UNDEFINED> instruction: 0xf00d6491
80701e20:	01807022 	orreq	r7, r0, r2, lsr #32
80701e24:	0000486d 	andeq	r4, r0, sp, ror #16
80701e28:	6c910200 	lfmvs	f0, 4, [r1], {0}
80701e2c:	7017d40c 	andsvc	sp, r7, ip, lsl #8
80701e30:	00016880 	andeq	r6, r1, r0, lsl #17
80701e34:	12800d00 	addne	r0, r0, #0, 26
80701e38:	6f018070 	svcvs	0x00018070
80701e3c:	00000104 	andeq	r0, r0, r4, lsl #2
80701e40:	0e749102 	expeqs	f1, f2
80701e44:	00657270 	rsbeq	r7, r5, r0, ror r2
80701e48:	01046f01 	tsteq	r4, r1, lsl #30
80701e4c:	91020000 	mrsls	r0, (UNDEF: 2)
80701e50:	187c0c70 	ldmdane	ip!, {r4, r5, r6, sl, fp}^
80701e54:	009c8070 	addseq	r8, ip, r0, ror r0
80701e58:	720e0000 	andvc	r0, lr, #0
80701e5c:	047c0100 	ldrbteq	r0, [ip], #-256	; 0xffffff00
80701e60:	02000001 	andeq	r0, r0, #1
80701e64:	00006891 	muleq	r0, r1, r8
80701e68:	22b61300 	adcscs	r1, r6, #0, 6
80701e6c:	8b018070 	blhi	80762034 <.LC14+0x5d608>
80701e70:	80701950 	rsbshi	r1, r0, r0, asr r9
80701e74:	00000090 	muleq	r0, r0, r0
80701e78:	024f9c01 	subeq	r9, pc, #256	; 0x100
80701e7c:	6c100000 	ldcvs	0, cr0, [r0], {-0}
80701e80:	048b0100 	streq	r0, [fp], #256	; 0x100
80701e84:	02000001 	andeq	r0, r0, #1
80701e88:	72107491 	andsvc	r7, r0, #-1862270976	; 0x91000000
80701e8c:	048b0100 	streq	r0, [fp], #256	; 0x100
80701e90:	02000001 	andeq	r0, r0, #1
80701e94:	0f007091 	svceq	0x00007091
80701e98:	8070225a 	rsbshi	r2, r0, sl, asr r2
80701e9c:	19e09401 	stmibne	r0!, {r0, sl, ip, pc}^
80701ea0:	01f88070 	mvnseq	r8, r0, ror r0
80701ea4:	9c010000 	stcls	0, cr0, [r1], {-0}
80701ea8:	000002d8 	ldrdeq	r0, [r0], -r8
80701eac:	00617010 	rsbeq	r7, r1, r0, lsl r0
80701eb0:	00489401 	subeq	r9, r8, r1, lsl #8
80701eb4:	91020000 	mrsls	r0, (UNDEF: 2)
80701eb8:	3d9e0b64 	vldrcc	d0, [lr, #400]	; 0x190
80701ebc:	94018070 	strls	r8, [r1], #-112	; 0xffffff90
80701ec0:	00000048 	andeq	r0, r0, r8, asr #32
80701ec4:	0d609102 	stfeqp	f1, [r0, #-8]!
80701ec8:	807022da 	ldrsbthi	r2, [r0], #-42	; 0xffffffd6
80701ecc:	00489701 	subeq	r9, r8, r1, lsl #14
80701ed0:	91020000 	mrsls	r0, (UNDEF: 2)
80701ed4:	1a281470 	bne	8110709c <.LC14+0xa02670>
80701ed8:	00988070 	addseq	r8, r8, r0, ror r0
80701edc:	02a70000 	adceq	r0, r7, #0
80701ee0:	720e0000 	andvc	r0, lr, #0
80701ee4:	049a0100 	ldreq	r0, [sl], #256	; 0x100
80701ee8:	02000001 	andeq	r0, r0, #1
80701eec:	0c006c91 	stceq	12, cr6, [r0], {145}	; 0x91
80701ef0:	80701ac0 	rsbshi	r1, r0, r0, asr #21
80701ef4:	0000010c 	andeq	r0, r0, ip, lsl #2
80701ef8:	7012800d 	andsvc	r8, r2, sp
80701efc:	04a30180 	strteq	r0, [r3], #384	; 0x180
80701f00:	02000001 	andeq	r0, r0, #1
80701f04:	440c7491 	strmi	r7, [ip], #-1169	; 0xfffffb6f
80701f08:	6880701b 	stmvs	r0, {r0, r1, r3, r4, ip, sp, lr}
80701f0c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
80701f10:	0064696d 	rsbeq	r6, r4, sp, ror #18
80701f14:	0104a901 	tsteq	r4, r1, lsl #18
80701f18:	91020000 	mrsls	r0, (UNDEF: 2)
80701f1c:	00000068 	andeq	r0, r0, r8, rrx
80701f20:	70123715 	andsvc	r3, r2, r5, lsl r7
80701f24:	48a00380 	stmiami	r0!, {r7, r8, r9}
80701f28:	16000000 	strne	r0, [r0], -r0
80701f2c:	807012cc 	rsbshi	r1, r0, ip, asr #5
80701f30:	01040d02 	tsteq	r4, r2, lsl #26
80701f34:	03050000 	movweq	r0, #20480	; 0x5000
80701f38:	807013c4 	rsbshi	r1, r0, r4, asr #7
80701f3c:	7022a516 	eorvc	sl, r2, r6, lsl r5
80701f40:	04130180 	ldreq	r0, [r3], #-384	; 0xfffffe80
80701f44:	05000001 	streq	r0, [r0, #-1]
80701f48:	701bd803 	andsvc	sp, fp, r3, lsl #16
80701f4c:	22831680 	addcs	r1, r3, #128, 12	; 0x8000000
80701f50:	14018070 	strne	r8, [r1], #-112	; 0xffffff90
80701f54:	00000104 	andeq	r0, r0, r4, lsl #2
80701f58:	1bdc0305 	blne	7fe02b74 <__high_exec_veneer+0x7f8027dc>
80701f5c:	01008070 	tsteq	r0, r0, ror r0
80701f60:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
80701f64:	0e030b13 	vmoveq.32	d3[0], r0
80701f68:	01110e1b 	tsteq	r1, fp, lsl lr
80701f6c:	17100612 			; <UNDEFINED> instruction: 0x17100612
80701f70:	24020000 	strcs	r0, [r2], #-0
80701f74:	3e0b0b00 	vmlacc.f64	d0, d11, d0
80701f78:	000e030b 	andeq	r0, lr, fp, lsl #6
80701f7c:	00160300 	andseq	r0, r6, r0, lsl #6
80701f80:	0b3a0803 	bleq	81583f94 <.LC14+0xe7f568>
80701f84:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80701f88:	24040000 	strcs	r0, [r4], #-0
80701f8c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
80701f90:	0008030b 	andeq	r0, r8, fp, lsl #6
80701f94:	01130500 	tsteq	r3, r0, lsl #10
80701f98:	0b0b0e03 	bleq	809c57ac <.LC14+0x2c0d80>
80701f9c:	0b3b0b3a 	bleq	815c4c8c <.LC14+0xec0260>
80701fa0:	00001301 	andeq	r1, r0, r1, lsl #6
80701fa4:	03000d06 	movweq	r0, #3334	; 0xd06
80701fa8:	3b0b3a0e 	blcc	809d07e8 <.LC14+0x2cbdbc>
80701fac:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
80701fb0:	0700000b 	streq	r0, [r0, -fp]
80701fb4:	0803000d 	stmdaeq	r3, {r0, r2, r3}
80701fb8:	0b3b0b3a 	bleq	815c4ca8 <.LC14+0xec027c>
80701fbc:	0b381349 	bleq	81506ce8 <.LC14+0xe022bc>
80701fc0:	0f080000 	svceq	0x00080000
80701fc4:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
80701fc8:	09000013 	stmdbeq	r0, {r0, r1, r4}
80701fcc:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
80701fd0:	0b3b0b3a 	bleq	815c4cc0 <.LC14+0xec0294>
80701fd4:	00001349 	andeq	r1, r0, r9, asr #6
80701fd8:	3f012e0a 	svccc	0x00012e0a
80701fdc:	3a0e0319 	bcc	80a82c48 <.LC14+0x37e21c>
80701fe0:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
80701fe4:	11134919 	tstne	r3, r9, lsl r9
80701fe8:	40061201 	andmi	r1, r6, r1, lsl #4
80701fec:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
80701ff0:	00001301 	andeq	r1, r0, r1, lsl #6
80701ff4:	0300050b 	movweq	r0, #1291	; 0x50b
80701ff8:	3b0b3a0e 	blcc	809d0838 <.LC14+0x2cbe0c>
80701ffc:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
80702000:	0c000018 	stceq	0, cr0, [r0], {24}
80702004:	0111010b 	tsteq	r1, fp, lsl #2
80702008:	00000612 	andeq	r0, r0, r2, lsl r6
8070200c:	0300340d 	movweq	r3, #1037	; 0x40d
80702010:	3b0b3a0e 	blcc	809d0850 <.LC14+0x2cbe24>
80702014:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
80702018:	0e000018 	mcreq	0, 0, r0, cr0, cr8, {0}
8070201c:	08030034 	stmdaeq	r3, {r2, r4, r5}
80702020:	0b3b0b3a 	bleq	815c4d10 <.LC14+0xec02e4>
80702024:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80702028:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
8070202c:	03193f01 	tsteq	r9, #1, 30
80702030:	3b0b3a0e 	blcc	809d0870 <.LC14+0x2cbe44>
80702034:	1119270b 	tstne	r9, fp, lsl #14
80702038:	40061201 	andmi	r1, r6, r1, lsl #4
8070203c:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
80702040:	00001301 	andeq	r1, r0, r1, lsl #6
80702044:	03000510 	movweq	r0, #1296	; 0x510
80702048:	3b0b3a08 	blcc	809d0870 <.LC14+0x2cbe44>
8070204c:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
80702050:	11000018 	tstne	r0, r8, lsl r0
80702054:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
80702058:	0b3a0e03 	bleq	8158586c <.LC14+0xe80e40>
8070205c:	01110b3b 	tsteq	r1, fp, lsr fp
80702060:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80702064:	01194296 			; <UNDEFINED> instruction: 0x01194296
80702068:	12000013 	andne	r0, r0, #19
8070206c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
80702070:	0b3a0e03 	bleq	81585884 <.LC14+0xe80e58>
80702074:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
80702078:	01111349 	tsteq	r1, r9, asr #6
8070207c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80702080:	01194297 			; <UNDEFINED> instruction: 0x01194297
80702084:	13000013 	movwne	r0, #19
80702088:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
8070208c:	0b3a0e03 	bleq	815858a0 <.LC14+0xe80e74>
80702090:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
80702094:	06120111 			; <UNDEFINED> instruction: 0x06120111
80702098:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
8070209c:	00130119 	andseq	r0, r3, r9, lsl r1
807020a0:	010b1400 	tsteq	fp, r0, lsl #8
807020a4:	06120111 			; <UNDEFINED> instruction: 0x06120111
807020a8:	00001301 	andeq	r1, r0, r1, lsl #6
807020ac:	03003415 	movweq	r3, #1045	; 0x415
807020b0:	3b0b3a0e 	blcc	809d08f0 <.LC14+0x2cbec4>
807020b4:	3f13490b 	svccc	0x0013490b
807020b8:	00193c19 	andseq	r3, r9, r9, lsl ip
807020bc:	00341600 	eorseq	r1, r4, r0, lsl #12
807020c0:	0b3a0e03 	bleq	815858d4 <.LC14+0xe80ea8>
807020c4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
807020c8:	1802193f 	stmdane	r2, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
807020cc:	1c000000 	stcne	0, cr0, [r0], {-0}
807020d0:	02000000 	andeq	r0, r0, #0
807020d4:	701c4800 	andsvc	r4, ip, r0, lsl #16
807020d8:	00000480 	andeq	r0, r0, r0, lsl #9
807020dc:	c8000000 	stmdagt	r0, {}	; <UNPREDICTABLE>
807020e0:	10807013 	addne	r7, r0, r3, lsl r0
807020e4:	00000008 	andeq	r0, r0, r8
807020e8:	00000000 	andeq	r0, r0, r0
807020ec:	5b000000 	blpl	807020f4 <.LC3+0x4c8>
807020f0:	02000001 	andeq	r0, r0, #1
807020f4:	00007700 	andeq	r7, r0, r0, lsl #14
807020f8:	fb010200 	blx	80742902 <.LC14+0x3ded6>
807020fc:	01000d0e 	tsteq	r0, lr, lsl #26
80702100:	00010101 	andeq	r0, r1, r1, lsl #2
80702104:	00010000 	andeq	r0, r1, r0
80702108:	656b0100 	strbvs	r0, [fp, #-256]!	; 0xffffff00
8070210c:	6d2f6e72 	stcvs	14, cr6, [pc, #-456]!	; 80701f4c <.LC3+0x320>
80702110:	2f2e006d 	svccs	0x002e006d
80702114:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
80702118:	00656475 	rsbeq	r6, r5, r5, ror r4
8070211c:	72642f2e 	rsbvc	r2, r4, #46, 30	; 0xb8
80702120:	72657669 	rsbvc	r7, r5, #110100480	; 0x6900000
80702124:	696d2f73 	stmdbvs	sp!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, sp}^
80702128:	2e006373 	mcrcs	3, 0, r6, cr0, cr3, {3}
8070212c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
80702130:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
80702134:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
80702138:	656d0000 	strbvs	r0, [sp, #-0]!
8070213c:	79726f6d 	ldmdbvc	r2!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
80702140:	0100632e 	tsteq	r0, lr, lsr #6
80702144:	656d0000 	strbvs	r0, [sp, #-0]!
80702148:	79726f6d 	ldmdbvc	r2!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
8070214c:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
80702150:	74640000 	strbtvc	r0, [r4], #-0
80702154:	797a2d62 	ldmdbvc	sl!, {r1, r5, r6, r8, sl, fp, sp}^
80702158:	3037716e 	eorscc	r7, r7, lr, ror #2
8070215c:	682e3030 	stmdavs	lr!, {r4, r5, ip, sp}
80702160:	00000300 	andeq	r0, r0, r0, lsl #6
80702164:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
80702168:	00682e73 	rsbeq	r2, r8, r3, ror lr
8070216c:	00000004 	andeq	r0, r0, r4
80702170:	c8020500 	stmdagt	r2, {r8, sl}
80702174:	03807013 	orreq	r7, r0, #19
80702178:	67840116 	usada8vs	r4, r6, r1, r0
8070217c:	01040200 	mrseq	r0, R12_usr
80702180:	bb069e06 	bllt	808a99a0 <.LC14+0x1a4f74>
80702184:	082108bc 	stmdaeq	r1!, {r2, r3, r4, r5, r7, fp}
80702188:	0200673f 	andeq	r6, r0, #16515072	; 0xfc0000
8070218c:	9e060104 	adflss	f0, f6, f4
80702190:	08bcbb06 	ldmeq	ip!, {r1, r2, r8, r9, fp, ip, sp, pc}
80702194:	673f0821 	ldrvs	r0, [pc, -r1, lsr #16]!
80702198:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
8070219c:	00820603 	addeq	r0, r2, r3, lsl #12
807021a0:	66010402 	strvs	r0, [r1], -r2, lsl #8
807021a4:	089f8306 	ldmeq	pc, {r1, r2, r8, r9, pc}	; <UNPREDICTABLE>
807021a8:	4c910822 	ldcmi	8, cr0, [r1], {34}	; 0x22
807021ac:	4bbb6a2f 	blmi	7f5dca70 <__high_exec_veneer+0x7efdc6d8>
807021b0:	9fd89fbc 	svcls	0x00d89fbc
807021b4:	6868d7d7 	stmdavs	r8!, {r0, r1, r2, r4, r6, r7, r8, r9, sl, ip, lr, pc}^
807021b8:	04020069 	streq	r0, [r2], #-105	; 0xffffff97
807021bc:	02006803 	andeq	r6, r0, #196608	; 0x30000
807021c0:	00670304 	rsbeq	r0, r7, r4, lsl #6
807021c4:	bb030402 	bllt	807c31d4 <.LC14+0xbe7a8>
807021c8:	03040200 	movweq	r0, #16896	; 0x4200
807021cc:	0402009a 	streq	r0, [r2], #-154	; 0xffffff66
807021d0:	06660601 	strbteq	r0, [r6], -r1, lsl #12
807021d4:	0a03696c 	beq	807dc78c <.LC14+0xd7d60>
807021d8:	9f836ad6 	svcls	0x00836ad6
807021dc:	6968a19f 	stmdbvs	r8!, {r0, r1, r2, r3, r4, r7, r8, sp, pc}^
807021e0:	04020083 	streq	r0, [r2], #-131	; 0xffffff7d
807021e4:	06660601 	strbteq	r0, [r6], -r1, lsl #12
807021e8:	2108684b 	tstcs	r8, fp, asr #16
807021ec:	bcbb9fa1 	ldclt	15, cr9, [fp], #644	; 0x284
807021f0:	d79f4c84 	ldrle	r4, [pc, r4, lsl #25]
807021f4:	bbbbbb83 	bllt	7f5f1008 <__high_exec_veneer+0x7eff0c70>
807021f8:	6c0368a0 	stcvs	8, cr6, [r3], {160}	; 0xa0
807021fc:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
80702200:	02002c02 	andeq	r2, r0, #512	; 0x200
80702204:	9e060104 	adflss	f0, f6, f4
80702208:	66190306 	ldrvs	r0, [r9], -r6, lsl #6
8070220c:	009f852f 	addseq	r8, pc, pc, lsr #10
80702210:	06010402 	streq	r0, [r1], -r2, lsl #8
80702214:	08670666 	stmdaeq	r7!, {r1, r2, r5, r6, r9, sl}^
80702218:	339bd721 	orrscc	sp, fp, #8650752	; 0x840000
8070221c:	68679f69 	stmdavs	r7!, {r0, r3, r5, r6, r8, r9, sl, fp, ip, pc}^
80702220:	9f7508d7 	svcls	0x007508d7
80702224:	08836767 	stmeq	r3, {r0, r1, r2, r5, r6, r8, r9, sl, sp, lr}
80702228:	f39f313d 	vsra.u16	d3, d29, #1
8070222c:	d7bcbbf3 			; <UNDEFINED> instruction: 0xd7bcbbf3
80702230:	67676783 	strbvs	r6, [r7, -r3, lsl #15]!
80702234:	00ba7603 	adcseq	r7, sl, r3, lsl #12
80702238:	2d020402 	cfstrscs	mvf0, [r2, #-8]
8070223c:	01040200 	mrseq	r0, R12_usr
80702240:	03066606 	movweq	r6, #26118	; 0x6606
80702244:	1b038273 	blne	807e2c18 <.LC14+0xde1ec>
80702248:	0004022e 	andeq	r0, r4, lr, lsr #4
8070224c:	656d0101 	strbvs	r0, [sp, #-257]!	; 0xfffffeff
80702250:	79726f6d 	ldmdbvc	r2!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
80702254:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
80702258:	72660074 	rsbvc	r0, r6, #116	; 0x74
8070225c:	705f6565 	subsvc	r6, pc, r5, ror #10
80702260:	73656761 	cmnvc	r5, #25427968	; 0x1840000
80702264:	74326c00 	ldrtvc	r6, [r2], #-3072	; 0xfffff400
80702268:	74705f62 	ldrbtvc	r5, [r0], #-3938	; 0xfffff09e
8070226c:	61700065 	cmnvs	r0, r5, rrx
80702270:	6d5f6567 	cfldr64vs	mvdx6, [pc, #-412]	; 807020dc <.LC3+0x4b0>
80702274:	61007061 	tstvs	r0, r1, rrx
80702278:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
8070227c:	696c615f 	stmdbvs	ip!, {r0, r1, r2, r3, r4, r6, r8, sp, lr}^
80702280:	70006e67 	andvc	r6, r0, r7, ror #28
80702284:	5f656761 	svcpl	0x00656761
80702288:	6e756f62 	cdpvs	15, 7, cr6, cr5, cr2, {3}
8070228c:	78305f64 	ldmdavc	r0!, {r2, r5, r6, r8, r9, sl, fp, ip, lr}
80702290:	00303034 	eorseq	r3, r0, r4, lsr r0
80702294:	5f62746d 	svcpl	0x0062746d
80702298:	00657470 	rsbeq	r7, r5, r0, ror r4
8070229c:	6e756f62 	cdpvs	15, 7, cr6, cr5, cr2, {3}
807022a0:	79726164 	ldmdbvc	r2!, {r2, r5, r6, r8, sp, lr}^
807022a4:	67617000 	strbvs	r7, [r1, -r0]!
807022a8:	6f625f65 	svcvs	0x00625f65
807022ac:	5f646e75 	svcpl	0x00646e75
807022b0:	30327830 	eorscc	r7, r2, r0, lsr r8
807022b4:	656d0030 	strbvs	r0, [sp, #-48]!	; 0xffffffd0
807022b8:	5f656772 	svcpl	0x00656772
807022bc:	636f6c62 	cmnvs	pc, #25088	; 0x6200
807022c0:	656b006b 	strbvs	r0, [fp, #-107]!	; 0xffffff95
807022c4:	6d2f6e72 	stcvs	14, cr6, [pc, #-456]!	; 80702104 <.LC3+0x4d8>
807022c8:	656d2f6d 	strbvs	r2, [sp, #-3949]!	; 0xfffff093
807022cc:	79726f6d 	ldmdbvc	r2!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
807022d0:	6d00632e 	stcvs	3, cr6, [r0, #-184]	; 0xffffff48
807022d4:	765f6274 			; <UNDEFINED> instruction: 0x765f6274
807022d8:	72660061 	rsbvc	r0, r6, #97	; 0x61
807022dc:	735f6565 	cmpvc	pc, #423624704	; 0x19400000
807022e0:	00657a69 	rsbeq	r7, r5, r9, ror #20
807022e4:	6f6c6c61 	svcvs	0x006c6c61
807022e8:	61705f63 	cmnvs	r0, r3, ror #30
807022ec:	00736567 	rsbseq	r6, r3, r7, ror #10
807022f0:	6c6c6c61 	stclvs	12, cr6, [ip], #-388	; 0xfffffe7c
807022f4:	735f636f 	cmpvc	pc, #-1140850687	; 0xbc000001
807022f8:	00657a69 	rsbeq	r7, r5, r9, ror #20
807022fc:	0000000c 	andeq	r0, r0, ip
80702300:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80702304:	7c020001 	stcvc	0, cr0, [r2], {1}
80702308:	000d0c0e 	andeq	r0, sp, lr, lsl #24
8070230c:	00000020 	andeq	r0, r0, r0, lsr #32
80702310:	807022fc 	ldrshthi	r2, [r0], #-44	; 0xffffffd4
80702314:	807013c8 	rsbshi	r1, r0, r8, asr #7
80702318:	00000210 	andeq	r0, r0, r0, lsl r2
8070231c:	8b080e42 	blhi	80905c2c <.LC14+0x201200>
80702320:	42018e02 	andmi	r8, r1, #2, 28
80702324:	03040b0c 	movweq	r0, #19212	; 0x4b0c
80702328:	0d0c0102 	stfeqs	f0, [ip, #-8]
8070232c:	00000008 	andeq	r0, r0, r8
80702330:	0000001c 	andeq	r0, r0, ip, lsl r0
80702334:	807022fc 	ldrshthi	r2, [r0], #-44	; 0xffffffd4
80702338:	807015d8 	ldrsbthi	r1, [r0], #-88	; 0xffffffa8
8070233c:	000000c0 	andeq	r0, r0, r0, asr #1
80702340:	8b080e42 	blhi	80905c50 <.LC14+0x201224>
80702344:	42018e02 	andmi	r8, r1, #2, 28
80702348:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
8070234c:	080d0c5a 	stmdaeq	sp, {r1, r3, r4, r6, sl, fp}
80702350:	0000001c 	andeq	r0, r0, ip, lsl r0
80702354:	807022fc 	ldrshthi	r2, [r0], #-44	; 0xffffffd4
80702358:	80701698 			; <UNDEFINED> instruction: 0x80701698
8070235c:	0000010c 	andeq	r0, r0, ip, lsl #2
80702360:	8b080e42 	blhi	80905c70 <.LC14+0x201244>
80702364:	42018e02 	andmi	r8, r1, #2, 28
80702368:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
8070236c:	080d0c80 	stmdaeq	sp, {r7, sl, fp}
80702370:	0000001c 	andeq	r0, r0, ip, lsl r0
80702374:	807022fc 	ldrshthi	r2, [r0], #-44	; 0xffffffd4
80702378:	807017a4 	rsbshi	r1, r0, r4, lsr #15
8070237c:	000001ac 	andeq	r0, r0, ip, lsr #3
80702380:	8b040e42 	blhi	80805c90 <.LC14+0x101264>
80702384:	0b0d4201 	bleq	80a52b90 <.LC14+0x34e164>
80702388:	0d0dce02 	stceq	14, cr12, [sp, #-8]
8070238c:	000ecb42 	andeq	ip, lr, r2, asr #22
80702390:	0000001c 	andeq	r0, r0, ip, lsl r0
80702394:	807022fc 	ldrshthi	r2, [r0], #-44	; 0xffffffd4
80702398:	80701950 	rsbshi	r1, r0, r0, asr r9
8070239c:	00000090 	muleq	r0, r0, r0
807023a0:	8b040e42 	blhi	80805cb0 <.LC14+0x101284>
807023a4:	0b0d4201 	bleq	80a52bb0 <.LC14+0x34e184>
807023a8:	0d0d4002 	stceq	0, cr4, [sp, #-8]
807023ac:	000ecb42 	andeq	ip, lr, r2, asr #22
807023b0:	0000001c 	andeq	r0, r0, ip, lsl r0
807023b4:	807022fc 	ldrshthi	r2, [r0], #-44	; 0xffffffd4
807023b8:	807019e0 	rsbshi	r1, r0, r0, ror #19
807023bc:	000001f8 	strdeq	r0, [r0], -r8
807023c0:	8b080e42 	blhi	80905cd0 <.LC14+0x2012a4>
807023c4:	42018e02 	andmi	r8, r1, #2, 28
807023c8:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
807023cc:	080d0cf6 	stmdaeq	sp, {r1, r2, r4, r5, r6, r7, sl, fp}
807023d0:	00002e41 	andeq	r2, r0, r1, asr #28
807023d4:	61656100 	cmnvs	r5, r0, lsl #2
807023d8:	01006962 	tsteq	r0, r2, ror #18
807023dc:	00000024 	andeq	r0, r0, r4, lsr #32
807023e0:	412d3705 	teqmi	sp, r5, lsl #14
807023e4:	070a0600 	streq	r0, [sl, -r0, lsl #12]
807023e8:	09010841 	stmdbeq	r1, {r0, r6, fp}
807023ec:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
807023f0:	17011501 	strne	r1, [r1, -r1, lsl #10]
807023f4:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
807023f8:	1e011a01 	vmlane.f32	s2, s2, s2
807023fc:	00012206 	andeq	r2, r1, r6, lsl #4

80702400 <uart_spin_puts>:
80702400:	e92d4800 	push	{fp, lr}
80702404:	e28db004 	add	fp, sp, #4
80702408:	e24dd008 	sub	sp, sp, #8
8070240c:	e50b0008 	str	r0, [fp, #-8]
80702410:	ea000006 	b	80702430 <uart_spin_puts+0x30>
80702414:	e51b3008 	ldr	r3, [fp, #-8]
80702418:	e5d33000 	ldrb	r3, [r3]
8070241c:	e1a00003 	mov	r0, r3
80702420:	eb00075e 	bl	807041a0 <uart_spin_putbyte>
80702424:	e51b3008 	ldr	r3, [fp, #-8]
80702428:	e2833001 	add	r3, r3, #1
8070242c:	e50b3008 	str	r3, [fp, #-8]
80702430:	e51b3008 	ldr	r3, [fp, #-8]
80702434:	e5d33000 	ldrb	r3, [r3]
80702438:	e3530000 	cmp	r3, #0
8070243c:	1afffff4 	bne	80702414 <uart_spin_puts+0x14>
80702440:	e1a00000 	nop			; (mov r0, r0)
80702444:	e24bd004 	sub	sp, fp, #4
80702448:	e8bd8800 	pop	{fp, pc}
8070244c:	0000009e 	muleq	r0, lr, r0
80702450:	24ee0004 	strbtcs	r0, [lr], #4
80702454:	01048070 	tsteq	r4, r0, ror r0
80702458:	807011f7 	ldrshthi	r1, [r0], #-23	; 0xffffffe9
8070245c:	7025d80c 	eorvc	sp, r5, ip, lsl #16
80702460:	70128680 	andsvc	r8, r2, r0, lsl #13
80702464:	70240080 	eorvc	r0, r4, r0, lsl #1
80702468:	00004c80 	andeq	r4, r0, r0, lsl #25
8070246c:	70257100 	eorvc	r7, r5, r0, lsl #2
80702470:	08010280 	stmdaeq	r1, {r7, r9}
80702474:	80701248 	rsbshi	r1, r0, r8, asr #4
80702478:	4a060102 	bmi	80882888 <.LC14+0x17de5c>
8070247c:	02807012 	addeq	r7, r0, #18
80702480:	12560702 	subsne	r0, r6, #524288	; 0x80000
80702484:	02028070 	andeq	r8, r2, #112	; 0x70
80702488:	7012fa05 	andsvc	pc, r2, r5, lsl #20
8070248c:	07040280 	streq	r0, [r4, -r0, lsl #5]
80702490:	807012a9 	rsbshi	r1, r0, r9, lsr #5
80702494:	69050403 	stmdbvs	r5, {r0, r1, sl}
80702498:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
8070249c:	12a40704 	adcne	r0, r4, #4, 14	; 0x100000
807024a0:	08028070 	stmdaeq	r2, {r4, r5, r6, pc}
807024a4:	70129f07 	andsvc	r9, r2, r7, lsl #30
807024a8:	05080280 	streq	r0, [r8, #-640]	; 0xfffffd80
807024ac:	807012df 	ldrsbthi	r1, [r0], #-47	; 0xffffffd1
807024b0:	e4050402 	str	r0, [r5], #-1026	; 0xfffffbfe
807024b4:	04807012 	streq	r7, [r0], #18
807024b8:	807025c9 	rsbshi	r2, r0, r9, asr #11
807024bc:	24001001 	strcs	r1, [r0], #-1
807024c0:	004c8070 	subeq	r8, ip, r0, ror r0
807024c4:	9c010000 	stcls	0, cr0, [r1], {-0}
807024c8:	0000008f 	andeq	r0, r0, pc, lsl #1
807024cc:	72747305 	rsbsvc	r7, r4, #335544320	; 0x14000000
807024d0:	8f100100 	svchi	0x00100100
807024d4:	02000000 	andeq	r0, r0, #0
807024d8:	06007491 			; <UNDEFINED> instruction: 0x06007491
807024dc:	00009c04 	andeq	r9, r0, r4, lsl #24
807024e0:	08010200 	stmdaeq	r1, {r9}
807024e4:	80701251 	rsbshi	r1, r0, r1, asr r2
807024e8:	00009507 	andeq	r9, r0, r7, lsl #10
807024ec:	11010000 	mrsne	r0, (UNDEF: 1)
807024f0:	130e2501 	movwne	r2, #58625	; 0xe501
807024f4:	1b0e030b 	blne	80a83128 <.LC14+0x37e6fc>
807024f8:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
807024fc:	00171006 	andseq	r1, r7, r6
80702500:	00240200 	eoreq	r0, r4, r0, lsl #4
80702504:	0b3e0b0b 	bleq	81685138 <.LC14+0xf8070c>
80702508:	00000e03 	andeq	r0, r0, r3, lsl #28
8070250c:	0b002403 	bleq	8070b520 <.LC14+0x6af4>
80702510:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
80702514:	04000008 	streq	r0, [r0], #-8
80702518:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
8070251c:	0b3a0e03 	bleq	81585d30 <.LC14+0xe81304>
80702520:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
80702524:	06120111 			; <UNDEFINED> instruction: 0x06120111
80702528:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
8070252c:	00130119 	andseq	r0, r3, r9, lsl r1
80702530:	00050500 	andeq	r0, r5, r0, lsl #10
80702534:	0b3a0803 	bleq	81584548 <.LC14+0xe7fb1c>
80702538:	13490b3b 	movtne	r0, #39739	; 0x9b3b
8070253c:	00001802 	andeq	r1, r0, r2, lsl #16
80702540:	0b000f06 	bleq	80706160 <.LC14+0x1734>
80702544:	0013490b 	andseq	r4, r3, fp, lsl #18
80702548:	00260700 	eoreq	r0, r6, r0, lsl #14
8070254c:	00001349 	andeq	r1, r0, r9, asr #6
80702550:	00001c00 	andeq	r1, r0, r0, lsl #24
80702554:	4c000200 	sfmmi	f0, 4, [r0], {-0}
80702558:	04807024 	streq	r7, [r0], #36	; 0x24
8070255c:	00000000 	andeq	r0, r0, r0
80702560:	70240000 	eorvc	r0, r4, r0
80702564:	00004c80 	andeq	r4, r0, r0, lsl #25
	...
80702570:	00005400 	andeq	r5, r0, r0, lsl #8
80702574:	2c000200 	sfmcs	f0, 4, [r0], {-0}
80702578:	02000000 	andeq	r0, r0, #0
8070257c:	0d0efb01 	vstreq	d15, [lr, #-4]
80702580:	01010100 	mrseq	r0, (UNDEF: 17)
80702584:	00000001 	andeq	r0, r0, r1
80702588:	01000001 	tsteq	r0, r1
8070258c:	76697264 	strbtvc	r7, [r9], -r4, ror #4
80702590:	2f737265 	svccs	0x00737265
80702594:	69726573 	ldmdbvs	r2!, {r0, r1, r4, r5, r6, r8, sl, sp, lr}^
80702598:	00006c61 	andeq	r6, r0, r1, ror #24
8070259c:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
807025a0:	0100632e 	tsteq	r0, lr, lsr #6
807025a4:	00000000 	andeq	r0, r0, r0
807025a8:	24000205 	strcs	r0, [r0], #-517	; 0xfffffdfb
807025ac:	10038070 	andne	r8, r3, r0, ror r0
807025b0:	02008301 	andeq	r8, r0, #67108864	; 0x4000000
807025b4:	002f0204 	eoreq	r0, pc, r4, lsl #4
807025b8:	81020402 	tsthi	r2, r2, lsl #8
807025bc:	01040200 	mrseq	r0, R12_usr
807025c0:	84066606 	strhi	r6, [r6], #-1542	; 0xfffff9fa
807025c4:	01000602 	tsteq	r0, r2, lsl #12
807025c8:	72617501 	rsbvc	r7, r1, #4194304	; 0x400000
807025cc:	70735f74 	rsbsvc	r5, r3, r4, ror pc
807025d0:	705f6e69 	subsvc	r6, pc, r9, ror #28
807025d4:	00737475 	rsbseq	r7, r3, r5, ror r4
807025d8:	76697264 	strbtvc	r7, [r9], -r4, ror #4
807025dc:	2f737265 	svccs	0x00737265
807025e0:	69726573 	ldmdbvs	r2!, {r0, r1, r4, r5, r6, r8, sl, sp, lr}^
807025e4:	752f6c61 	strvc	r6, [pc, #-3169]!	; 8070198b <merge_block+0x3b>
807025e8:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
807025ec:	00000063 	andeq	r0, r0, r3, rrx
807025f0:	0000000c 	andeq	r0, r0, ip
807025f4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
807025f8:	7c020001 	stcvc	0, cr0, [r2], {1}
807025fc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80702600:	0000001c 	andeq	r0, r0, ip, lsl r0
80702604:	807025f0 	ldrshthi	r2, [r0], #-80	; 0xffffffb0
80702608:	80702400 	rsbshi	r2, r0, r0, lsl #8
8070260c:	0000004c 	andeq	r0, r0, ip, asr #32
80702610:	8b080e42 	blhi	80905f20 <.LC14+0x2014f4>
80702614:	42018e02 	andmi	r8, r1, #2, 28
80702618:	60040b0c 	andvs	r0, r4, ip, lsl #22
8070261c:	00080d0c 	andeq	r0, r8, ip, lsl #26
80702620:	00002e41 	andeq	r2, r0, r1, asr #28
80702624:	61656100 	cmnvs	r5, r0, lsl #2
80702628:	01006962 	tsteq	r0, r2, ror #18
8070262c:	00000024 	andeq	r0, r0, r4, lsr #32
80702630:	412d3705 	teqmi	sp, r5, lsl #14
80702634:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80702638:	09010841 	stmdbeq	r1, {r0, r6, fp}
8070263c:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
80702640:	17011501 	strne	r1, [r1, -r1, lsl #10]
80702644:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80702648:	1e011a01 	vmlane.f32	s2, s2, s2
8070264c:	00012206 	andeq	r2, r1, r6, lsl #4

80702650 <in32>:
80702650:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702654:	e28db000 	add	fp, sp, #0
80702658:	e24dd00c 	sub	sp, sp, #12
8070265c:	e50b0008 	str	r0, [fp, #-8]
80702660:	e51b3008 	ldr	r3, [fp, #-8]
80702664:	e5933000 	ldr	r3, [r3]
80702668:	e1a00003 	mov	r0, r3
8070266c:	e24bd000 	sub	sp, fp, #0
80702670:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702674:	e12fff1e 	bx	lr

80702678 <gtc_get_time>:
80702678:	e92d4830 	push	{r4, r5, fp, lr}
8070267c:	e28db00c 	add	fp, sp, #12
80702680:	e24dd018 	sub	sp, sp, #24
80702684:	e3a00f81 	mov	r0, #516	; 0x204
80702688:	e34f08f0 	movt	r0, #63728	; 0xf8f0
8070268c:	ebffffef 	bl	80702650 <in32>
80702690:	e50b0010 	str	r0, [fp, #-16]
80702694:	e3a00c02 	mov	r0, #512	; 0x200
80702698:	e34f08f0 	movt	r0, #63728	; 0xf8f0
8070269c:	ebffffeb 	bl	80702650 <in32>
807026a0:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
807026a4:	e3a00f81 	mov	r0, #516	; 0x204
807026a8:	e34f08f0 	movt	r0, #63728	; 0xf8f0
807026ac:	ebffffe7 	bl	80702650 <in32>
807026b0:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
807026b4:	e51b2010 	ldr	r2, [fp, #-16]
807026b8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
807026bc:	e1520003 	cmp	r2, r3
807026c0:	1affffef 	bne	80702684 <gtc_get_time+0xc>
807026c4:	e51b3010 	ldr	r3, [fp, #-16]
807026c8:	e1a02003 	mov	r2, r3
807026cc:	e3a03000 	mov	r3, #0
807026d0:	e1a05002 	mov	r5, r2
807026d4:	e3a04000 	mov	r4, #0
807026d8:	e14b42f4 	strd	r4, [fp, #-36]	; 0xffffffdc
807026dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807026e0:	e1a02003 	mov	r2, r3
807026e4:	e3a03000 	mov	r3, #0
807026e8:	e14b02d4 	ldrd	r0, [fp, #-36]	; 0xffffffdc
807026ec:	e1822000 	orr	r2, r2, r0
807026f0:	e1833001 	orr	r3, r3, r1
807026f4:	e14b22f4 	strd	r2, [fp, #-36]	; 0xffffffdc
807026f8:	e14b22d4 	ldrd	r2, [fp, #-36]	; 0xffffffdc
807026fc:	e1a00002 	mov	r0, r2
80702700:	e1a01003 	mov	r1, r3
80702704:	e24bd00c 	sub	sp, fp, #12
80702708:	e8bd8830 	pop	{r4, r5, fp, pc}

8070270c <sleep>:
8070270c:	e92d4800 	push	{fp, lr}
80702710:	e28db004 	add	fp, sp, #4
80702714:	e24dd018 	sub	sp, sp, #24
80702718:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
8070271c:	ebffffd5 	bl	80702678 <gtc_get_time>
80702720:	e14b00fc 	strd	r0, [fp, #-12]
80702724:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
80702728:	e3a03b21 	mov	r3, #33792	; 0x8400
8070272c:	e34137d7 	movt	r3, #6103	; 0x17d7
80702730:	e0030293 	mul	r3, r3, r2
80702734:	e1a02003 	mov	r2, r3
80702738:	e1a03fc2 	asr	r3, r2, #31
8070273c:	e14b00dc 	ldrd	r0, [fp, #-12]
80702740:	e0922000 	adds	r2, r2, r0
80702744:	e0a33001 	adc	r3, r3, r1
80702748:	e14b20fc 	strd	r2, [fp, #-12]
8070274c:	ebffffc9 	bl	80702678 <gtc_get_time>
80702750:	e14b01f4 	strd	r0, [fp, #-20]	; 0xffffffec
80702754:	e14b01d4 	ldrd	r0, [fp, #-20]	; 0xffffffec
80702758:	e14b20dc 	ldrd	r2, [fp, #-12]
8070275c:	e1510003 	cmp	r1, r3
80702760:	01500002 	cmpeq	r0, r2
80702764:	3afffff8 	bcc	8070274c <sleep+0x40>
80702768:	e1a00000 	nop			; (mov r0, r0)
8070276c:	e24bd004 	sub	sp, fp, #4
80702770:	e8bd8800 	pop	{fp, pc}

80702774 <usleep>:
80702774:	e92d4800 	push	{fp, lr}
80702778:	e28db004 	add	fp, sp, #4
8070277c:	e24dd018 	sub	sp, sp, #24
80702780:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80702784:	ebffffbb 	bl	80702678 <gtc_get_time>
80702788:	e14b00fc 	strd	r0, [fp, #-12]
8070278c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
80702790:	e3a02e19 	mov	r2, #400	; 0x190
80702794:	e0030392 	mul	r3, r2, r3
80702798:	e1a02003 	mov	r2, r3
8070279c:	e1a03fc2 	asr	r3, r2, #31
807027a0:	e14b00dc 	ldrd	r0, [fp, #-12]
807027a4:	e0922000 	adds	r2, r2, r0
807027a8:	e0a33001 	adc	r3, r3, r1
807027ac:	e14b20fc 	strd	r2, [fp, #-12]
807027b0:	ebffffb0 	bl	80702678 <gtc_get_time>
807027b4:	e14b01f4 	strd	r0, [fp, #-20]	; 0xffffffec
807027b8:	e14b01d4 	ldrd	r0, [fp, #-20]	; 0xffffffec
807027bc:	e14b20dc 	ldrd	r2, [fp, #-12]
807027c0:	e1510003 	cmp	r1, r3
807027c4:	01500002 	cmpeq	r0, r2
807027c8:	3afffff8 	bcc	807027b0 <usleep+0x3c>
807027cc:	e1a00000 	nop			; (mov r0, r0)
807027d0:	e24bd004 	sub	sp, fp, #4
807027d4:	e8bd8800 	pop	{fp, pc}
807027d8:	00000172 	andeq	r0, r0, r2, ror r1
807027dc:	294e0004 	stmdbcs	lr, {r2}^
807027e0:	01048070 	tsteq	r4, r0, ror r0
807027e4:	807011f7 	ldrshthi	r1, [r0], #-23	; 0xffffffe9
807027e8:	702b1a0c 	eorvc	r1, fp, ip, lsl #20
807027ec:	70128680 	andsvc	r8, r2, r0, lsl #13
807027f0:	70265080 	eorvc	r5, r6, r0, lsl #1
807027f4:	00018880 	andeq	r8, r1, r0, lsl #17
807027f8:	702a4700 	eorvc	r4, sl, r0, lsl #14
807027fc:	08010280 	stmdaeq	r1, {r7, r9}
80702800:	80701248 	rsbshi	r1, r0, r8, asr #4
80702804:	4a060102 	bmi	80882c14 <.LC14+0x17e1e8>
80702808:	02807012 	addeq	r7, r0, #18
8070280c:	12560702 	subsne	r0, r6, #524288	; 0x80000
80702810:	02028070 	andeq	r8, r2, #112	; 0x70
80702814:	7012fa05 	andsvc	pc, r2, r5, lsl #20
80702818:	07040280 	streq	r0, [r4, -r0, lsl #5]
8070281c:	807012a9 	rsbshi	r1, r0, r9, lsr #5
80702820:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
80702824:	411f0300 	tstmi	pc, r0, lsl #6
80702828:	04000000 	streq	r0, [r0], #-0
8070282c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
80702830:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
80702834:	7012a407 	andsvc	sl, r2, r7, lsl #8
80702838:	07080280 	streq	r0, [r8, -r0, lsl #5]
8070283c:	8070129f 			; <UNDEFINED> instruction: 0x8070129f
80702840:	34367503 	ldrtcc	r7, [r6], #-1283	; 0xfffffafd
80702844:	61220300 	teqvs	r2, r0, lsl #6
80702848:	02000000 	andeq	r0, r0, #0
8070284c:	12df0508 	sbcsne	r0, pc, #8, 10	; 0x2000000
80702850:	04028070 	streq	r8, [r2], #-112	; 0xffffff90
80702854:	7012e405 	andsvc	lr, r2, r5, lsl #8
80702858:	449e0580 	ldrmi	r0, [lr], #1408	; 0x580
8070285c:	1d018070 	stcne	0, cr8, [r1, #-448]	; 0xfffffe40
80702860:	0000005a 	andeq	r0, r0, sl, asr r0
80702864:	80702650 	rsbshi	r2, r0, r0, asr r6
80702868:	00000028 	andeq	r0, r0, r8, lsr #32
8070286c:	00a99c01 	adceq	r9, r9, r1, lsl #24
80702870:	a3060000 	movwge	r0, #24576	; 0x6000
80702874:	01807044 	orreq	r7, r0, r4, asr #32
80702878:	00005a1d 	andeq	r5, r0, sp, lsl sl
8070287c:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80702880:	2b370700 	blcs	814c4488 <.LC14+0xdbfa5c>
80702884:	14028070 	strne	r8, [r2], #-112	; 0xffffff90
80702888:	00000068 	andeq	r0, r0, r8, rrx
8070288c:	80702678 	rsbshi	r2, r0, r8, ror r6
80702890:	00000094 	muleq	r0, r4, r0
80702894:	00f99c01 	rscseq	r9, r9, r1, lsl #24
80702898:	3f080000 	svccc	0x00080000
8070289c:	0280702b 	addeq	r7, r0, #43	; 0x2b
807028a0:	00006816 	andeq	r6, r0, r6, lsl r8
807028a4:	58910200 	ldmpl	r1, {r9}
807028a8:	00696809 	rsbeq	r6, r9, r9, lsl #16
807028ac:	00481702 	subeq	r1, r8, r2, lsl #14
807028b0:	91020000 	mrsls	r0, (UNDEF: 2)
807028b4:	6f6c096c 	svcvs	0x006c096c
807028b8:	48170200 	ldmdami	r7, {r9}
807028bc:	02000000 	andeq	r0, r0, #0
807028c0:	74096891 	strvc	r6, [r9], #-2193	; 0xfffff76f
807028c4:	0200706d 	andeq	r7, r0, #109	; 0x6d
807028c8:	00004817 	andeq	r4, r0, r7, lsl r8
807028cc:	64910200 	ldrvs	r0, [r1], #512	; 0x200
807028d0:	2b140a00 	blcs	80c050d8 <.LC14+0x5006ac>
807028d4:	23028070 	movwcs	r8, #8304	; 0x2070
807028d8:	8070270c 	rsbshi	r2, r0, ip, lsl #14
807028dc:	00000068 	andeq	r0, r0, r8, rrx
807028e0:	01399c01 	teqeq	r9, r1, lsl #24
807028e4:	730b0000 	movwvc	r0, #45056	; 0xb000
807028e8:	02006365 	andeq	r6, r0, #-1811939327	; 0x94000001
807028ec:	00005323 	andeq	r5, r0, r3, lsr #6
807028f0:	64910200 	ldrvs	r0, [r1], #512	; 0x200
807028f4:	702b3f08 	eorvc	r3, fp, r8, lsl #30
807028f8:	68250280 	stmdavs	r5!, {r7, r9}
807028fc:	02000000 	andeq	r0, r0, #0
80702900:	44087091 	strmi	r7, [r8], #-145	; 0xffffff6f
80702904:	0280702b 	addeq	r7, r0, #43	; 0x2b
80702908:	00006825 	andeq	r6, r0, r5, lsr #16
8070290c:	68910200 	ldmvs	r1, {r9}
80702910:	2b130c00 	blcs	80bc5918 <.LC14+0x4c0eec>
80702914:	2d028070 	stccs	0, cr8, [r2, #-448]	; 0xfffffe40
80702918:	80702774 	rsbshi	r2, r0, r4, ror r7
8070291c:	00000064 	andeq	r0, r0, r4, rrx
80702920:	0e069c01 	cdpeq	12, 0, cr9, cr6, cr1, {0}
80702924:	0280702b 	addeq	r7, r0, #43	; 0x2b
80702928:	0000532d 	andeq	r5, r0, sp, lsr #6
8070292c:	64910200 	ldrvs	r0, [r1], #512	; 0x200
80702930:	702b3f08 	eorvc	r3, fp, r8, lsl #30
80702934:	682f0280 	stmdavs	pc!, {r7, r9}	; <UNPREDICTABLE>
80702938:	02000000 	andeq	r0, r0, #0
8070293c:	44087091 	strmi	r7, [r8], #-145	; 0xffffff6f
80702940:	0280702b 	addeq	r7, r0, #43	; 0x2b
80702944:	0000682f 	andeq	r6, r0, pc, lsr #16
80702948:	68910200 	ldmvs	r1, {r9}
8070294c:	11010000 	mrsne	r0, (UNDEF: 1)
80702950:	130e2501 	movwne	r2, #58625	; 0xe501
80702954:	1b0e030b 	blne	80a83588 <.LC14+0x37eb5c>
80702958:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
8070295c:	00171006 	andseq	r1, r7, r6
80702960:	00240200 	eoreq	r0, r4, r0, lsl #4
80702964:	0b3e0b0b 	bleq	81685598 <.LC14+0xf80b6c>
80702968:	00000e03 	andeq	r0, r0, r3, lsl #28
8070296c:	03001603 	movweq	r1, #1539	; 0x603
80702970:	3b0b3a08 	blcc	809d1198 <.LC14+0x2cc76c>
80702974:	0013490b 	andseq	r4, r3, fp, lsl #18
80702978:	00240400 	eoreq	r0, r4, r0, lsl #8
8070297c:	0b3e0b0b 	bleq	816855b0 <.LC14+0xf80b84>
80702980:	00000803 	andeq	r0, r0, r3, lsl #16
80702984:	03012e05 	movweq	r2, #7685	; 0x1e05
80702988:	3b0b3a0e 	blcc	809d11c8 <.LC14+0x2cc79c>
8070298c:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
80702990:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80702994:	97184006 	ldrls	r4, [r8, -r6]
80702998:	13011942 	movwne	r1, #6466	; 0x1942
8070299c:	05060000 	streq	r0, [r6, #-0]
807029a0:	3a0e0300 	bcc	80a835a8 <.LC14+0x37eb7c>
807029a4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
807029a8:	00180213 	andseq	r0, r8, r3, lsl r2
807029ac:	012e0700 	teqeq	lr, r0, lsl #14
807029b0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
807029b4:	0b3b0b3a 	bleq	815c56a4 <.LC14+0xec0c78>
807029b8:	01111349 	tsteq	r1, r9, asr #6
807029bc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
807029c0:	01194296 			; <UNDEFINED> instruction: 0x01194296
807029c4:	08000013 	stmdaeq	r0, {r0, r1, r4}
807029c8:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
807029cc:	0b3b0b3a 	bleq	815c56bc <.LC14+0xec0c90>
807029d0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
807029d4:	34090000 	strcc	r0, [r9], #-0
807029d8:	3a080300 	bcc	809035e0 <.LC14+0x1febb4>
807029dc:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
807029e0:	00180213 	andseq	r0, r8, r3, lsl r2
807029e4:	012e0a00 	teqeq	lr, r0, lsl #20
807029e8:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
807029ec:	0b3b0b3a 	bleq	815c56dc <.LC14+0xec0cb0>
807029f0:	01111927 	tsteq	r1, r7, lsr #18
807029f4:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
807029f8:	01194296 			; <UNDEFINED> instruction: 0x01194296
807029fc:	0b000013 	bleq	80702a50 <usleep+0x2dc>
80702a00:	08030005 	stmdaeq	r3, {r0, r2}
80702a04:	0b3b0b3a 	bleq	815c56f4 <.LC14+0xec0cc8>
80702a08:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80702a0c:	2e0c0000 	cdpcs	0, 0, cr0, cr12, cr0, {0}
80702a10:	03193f01 	tsteq	r9, #1, 30
80702a14:	3b0b3a0e 	blcc	809d1254 <.LC14+0x2cc828>
80702a18:	1119270b 	tstne	r9, fp, lsl #14
80702a1c:	40061201 	andmi	r1, r6, r1, lsl #4
80702a20:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
80702a24:	1c000000 	stcne	0, cr0, [r0], {-0}
80702a28:	02000000 	andeq	r0, r0, #0
80702a2c:	7027d800 	eorvc	sp, r7, r0, lsl #16
80702a30:	00000480 	andeq	r0, r0, r0, lsl #9
80702a34:	50000000 	andpl	r0, r0, r0
80702a38:	88807026 	stmhi	r0, {r1, r2, r5, ip, sp, lr}
80702a3c:	00000001 	andeq	r0, r0, r1
80702a40:	00000000 	andeq	r0, r0, r0
80702a44:	c3000000 	movwgt	r0, #0
80702a48:	02000000 	andeq	r0, r0, #0
80702a4c:	00007100 	andeq	r7, r0, r0, lsl #2
80702a50:	fb010200 	blx	8074325a <.LC14+0x3e82e>
80702a54:	01000d0e 	tsteq	r0, lr, lsl #26
80702a58:	00010101 	andeq	r0, r1, r1, lsl #2
80702a5c:	00010000 	andeq	r0, r1, r0
80702a60:	2f2e0100 	svccs	0x002e0100
80702a64:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
80702a68:	2f656475 	svccs	0x00656475
80702a6c:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
80702a70:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
80702a74:	2d613776 	stclcs	7, cr3, [r1, #-472]!	; 0xfffffe28
80702a78:	612f656c 	teqvs	pc, ip, ror #10
80702a7c:	64006d73 	strvs	r6, [r0], #-3443	; 0xfffff28d
80702a80:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0xfffff68e
80702a84:	632f7372 	teqvs	pc, #-939524095	; 0xc8000001
80702a88:	6b636f6c 	blvs	81fde840 <.LC14+0x18d9e14>
80702a8c:	692f2e00 	stmdbvs	pc!, {r9, sl, fp, sp}	; <UNPREDICTABLE>
80702a90:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
80702a94:	732f6564 	teqvc	pc, #100, 10	; 0x19000000
80702a98:	00007379 	andeq	r7, r0, r9, ror r3
80702a9c:	682e6f69 	stmdavs	lr!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}
80702aa0:	00000100 	andeq	r0, r0, r0, lsl #2
80702aa4:	2d637467 	cfstrdcs	mvd7, [r3, #-412]!	; 0xfffffe64
80702aa8:	706d3961 	rsbvc	r3, sp, r1, ror #18
80702aac:	65726f63 	ldrbvs	r6, [r2, #-3939]!	; 0xfffff09d
80702ab0:	0200632e 	andeq	r6, r0, #-1207959552	; 0xb8000000
80702ab4:	79740000 	ldmdbvc	r4!, {}^	; <UNPREDICTABLE>
80702ab8:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
80702abc:	00030068 	andeq	r0, r3, r8, rrx
80702ac0:	05000000 	streq	r0, [r0, #-0]
80702ac4:	70265002 	eorvc	r5, r6, r2
80702ac8:	011d0380 	tsteq	sp, r0, lsl #7
80702acc:	02044b83 	andeq	r4, r4, #134144	; 0x20c00
80702ad0:	00827503 	addeq	r7, r2, r3, lsl #10
80702ad4:	6b010402 	blvs	80743ae4 <.LC14+0x3f0b8>
80702ad8:	01040200 	mrseq	r0, R12_usr
80702adc:	04020083 	streq	r0, [r2], #-131	; 0xffffff7d
80702ae0:	02008301 	andeq	r8, r0, #67108864	; 0x4000000
80702ae4:	83830104 	orrhi	r0, r3, #4, 2
80702ae8:	852fd7bb 	strhi	sp, [pc, #-1979]!	; 80702335 <.LC3+0x709>
80702aec:	02004b84 	andeq	r4, r0, #132, 22	; 0x21000
80702af0:	3e080104 	adfcce	f0, f0, f4
80702af4:	01040200 	mrseq	r0, R12_usr
80702af8:	84699f4b 	strbthi	r9, [r9], #-3915	; 0xfffff0b5
80702afc:	0402004b 	streq	r0, [r2], #-75	; 0xffffffb5
80702b00:	00220801 	eoreq	r0, r2, r1, lsl #16
80702b04:	4b010402 	blmi	80743b14 <.LC14+0x3f0e8>
80702b08:	0006029f 	muleq	r6, pc, r2	; <UNPREDICTABLE>
80702b0c:	73750101 	cmnvc	r5, #1073741824	; 0x40000000
80702b10:	75006365 	strvc	r6, [r0, #-869]	; 0xfffffc9b
80702b14:	65656c73 	strbvs	r6, [r5, #-3187]!	; 0xfffff38d
80702b18:	72640070 	rsbvc	r0, r4, #112	; 0x70
80702b1c:	72657669 	rsbvc	r7, r5, #110100480	; 0x6900000
80702b20:	6c632f73 	stclvs	15, cr2, [r3], #-460	; 0xfffffe34
80702b24:	2f6b636f 	svccs	0x006b636f
80702b28:	2d637467 	cfstrdcs	mvd7, [r3, #-412]!	; 0xfffffe64
80702b2c:	706d3961 	rsbvc	r3, sp, r1, ror #18
80702b30:	65726f63 	ldrbvs	r6, [r2, #-3939]!	; 0xfffff09d
80702b34:	6700632e 	strvs	r6, [r0, -lr, lsr #6]
80702b38:	675f6374 			; <UNDEFINED> instruction: 0x675f6374
80702b3c:	745f7465 	ldrbvc	r7, [pc], #-1125	; 80702b44 <usleep+0x3d0>
80702b40:	00656d69 	rsbeq	r6, r5, r9, ror #26
80702b44:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
80702b48:	00000031 	andeq	r0, r0, r1, lsr r0
80702b4c:	0000000c 	andeq	r0, r0, ip
80702b50:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80702b54:	7c020001 	stcvc	0, cr0, [r2], {1}
80702b58:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80702b5c:	0000001c 	andeq	r0, r0, ip, lsl r0
80702b60:	80702b4c 	rsbshi	r2, r0, ip, asr #22
80702b64:	80702650 	rsbshi	r2, r0, r0, asr r6
80702b68:	00000028 	andeq	r0, r0, r8, lsr #32
80702b6c:	8b040e42 	blhi	8080647c <.LC14+0x101a50>
80702b70:	0b0d4201 	bleq	80a5337c <.LC14+0x34e950>
80702b74:	420d0d4c 	andmi	r0, sp, #76, 26	; 0x1300
80702b78:	00000ecb 	andeq	r0, r0, fp, asr #29
80702b7c:	00000020 	andeq	r0, r0, r0, lsr #32
80702b80:	80702b4c 	rsbshi	r2, r0, ip, asr #22
80702b84:	80702678 	rsbshi	r2, r0, r8, ror r6
80702b88:	00000094 	muleq	r0, r4, r0
80702b8c:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
80702b90:	8b038504 	blhi	807e3fa8 <.LC14+0xdf57c>
80702b94:	42018e02 	andmi	r8, r1, #2, 28
80702b98:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80702b9c:	100d0c44 	andne	r0, sp, r4, asr #24
80702ba0:	0000001c 	andeq	r0, r0, ip, lsl r0
80702ba4:	80702b4c 	rsbshi	r2, r0, ip, asr #22
80702ba8:	8070270c 	rsbshi	r2, r0, ip, lsl #14
80702bac:	00000068 	andeq	r0, r0, r8, rrx
80702bb0:	8b080e42 	blhi	809064c0 <.LC14+0x201a94>
80702bb4:	42018e02 	andmi	r8, r1, #2, 28
80702bb8:	6e040b0c 	vmlavs.f64	d0, d4, d12
80702bbc:	00080d0c 	andeq	r0, r8, ip, lsl #26
80702bc0:	0000001c 	andeq	r0, r0, ip, lsl r0
80702bc4:	80702b4c 	rsbshi	r2, r0, ip, asr #22
80702bc8:	80702774 	rsbshi	r2, r0, r4, ror r7
80702bcc:	00000064 	andeq	r0, r0, r4, rrx
80702bd0:	8b080e42 	blhi	809064e0 <.LC14+0x201ab4>
80702bd4:	42018e02 	andmi	r8, r1, #2, 28
80702bd8:	6c040b0c 	stcvs	11, cr0, [r4], {12}
80702bdc:	00080d0c 	andeq	r0, r8, ip, lsl #26
80702be0:	00002e41 	andeq	r2, r0, r1, asr #28
80702be4:	61656100 	cmnvs	r5, r0, lsl #2
80702be8:	01006962 	tsteq	r0, r2, ror #18
80702bec:	00000024 	andeq	r0, r0, r4, lsr #32
80702bf0:	412d3705 	teqmi	sp, r5, lsl #14
80702bf4:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80702bf8:	09010841 	stmdbeq	r1, {r0, r6, fp}
80702bfc:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
80702c00:	17011501 	strne	r1, [r1, -r1, lsl #10]
80702c04:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80702c08:	1e011a01 	vmlane.f32	s2, s2, s2
80702c0c:	00012206 	andeq	r2, r1, r6, lsl #4

80702c10 <in8>:
80702c10:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702c14:	e28db000 	add	fp, sp, #0
80702c18:	e24dd00c 	sub	sp, sp, #12
80702c1c:	e50b0008 	str	r0, [fp, #-8]
80702c20:	e51b3008 	ldr	r3, [fp, #-8]
80702c24:	e5d33000 	ldrb	r3, [r3]
80702c28:	e6ef3073 	uxtb	r3, r3
80702c2c:	e1a00003 	mov	r0, r3
80702c30:	e24bd000 	sub	sp, fp, #0
80702c34:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702c38:	e12fff1e 	bx	lr

80702c3c <in16>:
80702c3c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702c40:	e28db000 	add	fp, sp, #0
80702c44:	e24dd00c 	sub	sp, sp, #12
80702c48:	e50b0008 	str	r0, [fp, #-8]
80702c4c:	e51b3008 	ldr	r3, [fp, #-8]
80702c50:	e1d330b0 	ldrh	r3, [r3]
80702c54:	e6ff3073 	uxth	r3, r3
80702c58:	e1a00003 	mov	r0, r3
80702c5c:	e24bd000 	sub	sp, fp, #0
80702c60:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702c64:	e12fff1e 	bx	lr

80702c68 <in32>:
80702c68:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702c6c:	e28db000 	add	fp, sp, #0
80702c70:	e24dd00c 	sub	sp, sp, #12
80702c74:	e50b0008 	str	r0, [fp, #-8]
80702c78:	e51b3008 	ldr	r3, [fp, #-8]
80702c7c:	e5933000 	ldr	r3, [r3]
80702c80:	e1a00003 	mov	r0, r3
80702c84:	e24bd000 	sub	sp, fp, #0
80702c88:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702c8c:	e12fff1e 	bx	lr

80702c90 <out8>:
80702c90:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702c94:	e28db000 	add	fp, sp, #0
80702c98:	e24dd00c 	sub	sp, sp, #12
80702c9c:	e50b0008 	str	r0, [fp, #-8]
80702ca0:	e1a03001 	mov	r3, r1
80702ca4:	e54b3009 	strb	r3, [fp, #-9]
80702ca8:	e51b3008 	ldr	r3, [fp, #-8]
80702cac:	e55b2009 	ldrb	r2, [fp, #-9]
80702cb0:	e5c32000 	strb	r2, [r3]
80702cb4:	e1a00000 	nop			; (mov r0, r0)
80702cb8:	e24bd000 	sub	sp, fp, #0
80702cbc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702cc0:	e12fff1e 	bx	lr

80702cc4 <out16>:
80702cc4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702cc8:	e28db000 	add	fp, sp, #0
80702ccc:	e24dd00c 	sub	sp, sp, #12
80702cd0:	e50b0008 	str	r0, [fp, #-8]
80702cd4:	e1a03001 	mov	r3, r1
80702cd8:	e14b30ba 	strh	r3, [fp, #-10]
80702cdc:	e51b3008 	ldr	r3, [fp, #-8]
80702ce0:	e15b20ba 	ldrh	r2, [fp, #-10]
80702ce4:	e1c320b0 	strh	r2, [r3]
80702ce8:	e1a00000 	nop			; (mov r0, r0)
80702cec:	e24bd000 	sub	sp, fp, #0
80702cf0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702cf4:	e12fff1e 	bx	lr

80702cf8 <out32>:
80702cf8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702cfc:	e28db000 	add	fp, sp, #0
80702d00:	e24dd00c 	sub	sp, sp, #12
80702d04:	e50b0008 	str	r0, [fp, #-8]
80702d08:	e50b100c 	str	r1, [fp, #-12]
80702d0c:	e51b3008 	ldr	r3, [fp, #-8]
80702d10:	e51b200c 	ldr	r2, [fp, #-12]
80702d14:	e5832000 	str	r2, [r3]
80702d18:	e1a00000 	nop			; (mov r0, r0)
80702d1c:	e24bd000 	sub	sp, fp, #0
80702d20:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80702d24:	e12fff1e 	bx	lr

80702d28 <sd_init>:
80702d28:	e92d4800 	push	{fp, lr}
80702d2c:	e28db004 	add	fp, sp, #4
80702d30:	e24dd008 	sub	sp, sp, #8
80702d34:	e3a01001 	mov	r1, #1
80702d38:	e3a0002f 	mov	r0, #47	; 0x2f
80702d3c:	e34e0010 	movt	r0, #57360	; 0xe010
80702d40:	ebffffd2 	bl	80702c90 <out8>
80702d44:	e1a00000 	nop			; (mov r0, r0)
80702d48:	e3a0002f 	mov	r0, #47	; 0x2f
80702d4c:	e34e0010 	movt	r0, #57360	; 0xe010
80702d50:	ebffffae 	bl	80702c10 <in8>
80702d54:	e1a03000 	mov	r3, r0
80702d58:	e2033001 	and	r3, r3, #1
80702d5c:	e3530000 	cmp	r3, #0
80702d60:	1afffff8 	bne	80702d48 <sd_init+0x20>
80702d64:	e3043001 	movw	r3, #16385	; 0x4001
80702d68:	e14b30b6 	strh	r3, [fp, #-6]
80702d6c:	e15b30b6 	ldrh	r3, [fp, #-6]
80702d70:	e1a01003 	mov	r1, r3
80702d74:	e3a0002c 	mov	r0, #44	; 0x2c
80702d78:	e34e0010 	movt	r0, #57360	; 0xe010
80702d7c:	ebffffd0 	bl	80702cc4 <out16>
80702d80:	e1a00000 	nop			; (mov r0, r0)
80702d84:	e3a0002c 	mov	r0, #44	; 0x2c
80702d88:	e34e0010 	movt	r0, #57360	; 0xe010
80702d8c:	ebffffaa 	bl	80702c3c <in16>
80702d90:	e1a03000 	mov	r3, r0
80702d94:	e2033002 	and	r3, r3, #2
80702d98:	e3530000 	cmp	r3, #0
80702d9c:	0afffff8 	beq	80702d84 <sd_init+0x5c>
80702da0:	e3a0002c 	mov	r0, #44	; 0x2c
80702da4:	e34e0010 	movt	r0, #57360	; 0xe010
80702da8:	ebffffa3 	bl	80702c3c <in16>
80702dac:	e1a03000 	mov	r3, r0
80702db0:	e3833004 	orr	r3, r3, #4
80702db4:	e14b30b6 	strh	r3, [fp, #-6]
80702db8:	e15b30b6 	ldrh	r3, [fp, #-6]
80702dbc:	e1a01003 	mov	r1, r3
80702dc0:	e3a0002c 	mov	r0, #44	; 0x2c
80702dc4:	e34e0010 	movt	r0, #57360	; 0xe010
80702dc8:	ebffffbd 	bl	80702cc4 <out16>
80702dcc:	e3a0300f 	mov	r3, #15
80702dd0:	e54b3007 	strb	r3, [fp, #-7]
80702dd4:	e55b3007 	ldrb	r3, [fp, #-7]
80702dd8:	e1a01003 	mov	r1, r3
80702ddc:	e3a00029 	mov	r0, #41	; 0x29
80702de0:	e34e0010 	movt	r0, #57360	; 0xe010
80702de4:	ebffffa9 	bl	80702c90 <out8>
80702de8:	e3a01000 	mov	r1, #0
80702dec:	e3a00028 	mov	r0, #40	; 0x28
80702df0:	e34e0010 	movt	r0, #57360	; 0xe010
80702df4:	ebffffa5 	bl	80702c90 <out8>
80702df8:	e3e03c01 	mvn	r3, #256	; 0x100
80702dfc:	e14b30b6 	strh	r3, [fp, #-6]
80702e00:	e15b30b6 	ldrh	r3, [fp, #-6]
80702e04:	e1a01003 	mov	r1, r3
80702e08:	e3a00034 	mov	r0, #52	; 0x34
80702e0c:	e34e0010 	movt	r0, #57360	; 0xe010
80702e10:	ebffffab 	bl	80702cc4 <out16>
80702e14:	e30f13ff 	movw	r1, #62463	; 0xf3ff
80702e18:	e3a00036 	mov	r0, #54	; 0x36
80702e1c:	e34e0010 	movt	r0, #57360	; 0xe010
80702e20:	ebffffa7 	bl	80702cc4 <out16>
80702e24:	e3a01000 	mov	r1, #0
80702e28:	e3a00038 	mov	r0, #56	; 0x38
80702e2c:	e34e0010 	movt	r0, #57360	; 0xe010
80702e30:	ebffffa3 	bl	80702cc4 <out16>
80702e34:	e3a01000 	mov	r1, #0
80702e38:	e3a0003a 	mov	r0, #58	; 0x3a
80702e3c:	e34e0010 	movt	r0, #57360	; 0xe010
80702e40:	ebffff9f 	bl	80702cc4 <out16>
80702e44:	e3a01c02 	mov	r1, #512	; 0x200
80702e48:	e3a00004 	mov	r0, #4
80702e4c:	e34e0010 	movt	r0, #57360	; 0xe010
80702e50:	ebffff9b 	bl	80702cc4 <out16>
80702e54:	e1a00000 	nop			; (mov r0, r0)
80702e58:	e24bd004 	sub	sp, fp, #4
80702e5c:	e8bd8800 	pop	{fp, pc}

80702e60 <sd_frame_cmd>:
80702e60:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80702e64:	e28db000 	add	fp, sp, #0
80702e68:	e24dd00c 	sub	sp, sp, #12
80702e6c:	e1a03000 	mov	r3, r0
80702e70:	e14b30b6 	strh	r3, [fp, #-6]
80702e74:	e15b30b6 	ldrh	r3, [fp, #-6]
80702e78:	e3530a01 	cmp	r3, #4096	; 0x1000
80702e7c:	0a000046 	beq	80702f9c <sd_frame_cmd+0x13c>
80702e80:	e3530a01 	cmp	r3, #4096	; 0x1000
80702e84:	ca000020 	bgt	80702f0c <sd_frame_cmd+0xac>
80702e88:	e3530c05 	cmp	r3, #1280	; 0x500
80702e8c:	0a00004a 	beq	80702fbc <sd_frame_cmd+0x15c>
80702e90:	e3530c05 	cmp	r3, #1280	; 0x500
80702e94:	ca00000c 	bgt	80702ecc <sd_frame_cmd+0x6c>
80702e98:	e3530c02 	cmp	r3, #512	; 0x200
80702e9c:	0a00004a 	beq	80702fcc <sd_frame_cmd+0x16c>
80702ea0:	e3530c02 	cmp	r3, #512	; 0x200
80702ea4:	ca000004 	bgt	80702ebc <sd_frame_cmd+0x5c>
80702ea8:	e3530000 	cmp	r3, #0
80702eac:	0a00005a 	beq	8070301c <sd_frame_cmd+0x1bc>
80702eb0:	e3530c01 	cmp	r3, #256	; 0x100
80702eb4:	0a000048 	beq	80702fdc <sd_frame_cmd+0x17c>
80702eb8:	ea000058 	b	80703020 <sd_frame_cmd+0x1c0>
80702ebc:	e3530c03 	cmp	r3, #768	; 0x300
80702ec0:	0a000049 	beq	80702fec <sd_frame_cmd+0x18c>
80702ec4:	e3530b01 	cmp	r3, #1024	; 0x400
80702ec8:	ea000053 	b	8070301c <sd_frame_cmd+0x1bc>
80702ecc:	e3530b02 	cmp	r3, #2048	; 0x800
80702ed0:	0a00004d 	beq	8070300c <sd_frame_cmd+0x1ac>
80702ed4:	e3530b02 	cmp	r3, #2048	; 0x800
80702ed8:	ca000004 	bgt	80702ef0 <sd_frame_cmd+0x90>
80702edc:	e3530c06 	cmp	r3, #1536	; 0x600
80702ee0:	0a000045 	beq	80702ffc <sd_frame_cmd+0x19c>
80702ee4:	e3530c07 	cmp	r3, #1792	; 0x700
80702ee8:	0a00002b 	beq	80702f9c <sd_frame_cmd+0x13c>
80702eec:	ea00004b 	b	80703020 <sd_frame_cmd+0x1c0>
80702ef0:	e3530c0a 	cmp	r3, #2560	; 0xa00
80702ef4:	0a000028 	beq	80702f9c <sd_frame_cmd+0x13c>
80702ef8:	e3530b03 	cmp	r3, #3072	; 0xc00
80702efc:	0a000026 	beq	80702f9c <sd_frame_cmd+0x13c>
80702f00:	e3530c09 	cmp	r3, #2304	; 0x900
80702f04:	0a000030 	beq	80702fcc <sd_frame_cmd+0x16c>
80702f08:	ea000044 	b	80703020 <sd_frame_cmd+0x1c0>
80702f0c:	e3530c37 	cmp	r3, #14080	; 0x3700
80702f10:	0a000021 	beq	80702f9c <sd_frame_cmd+0x13c>
80702f14:	e3530c37 	cmp	r3, #14080	; 0x3700
80702f18:	ca00000f 	bgt	80702f5c <sd_frame_cmd+0xfc>
80702f1c:	e3530c17 	cmp	r3, #5888	; 0x1700
80702f20:	0a000021 	beq	80702fac <sd_frame_cmd+0x14c>
80702f24:	e3530c17 	cmp	r3, #5888	; 0x1700
80702f28:	ca000004 	bgt	80702f40 <sd_frame_cmd+0xe0>
80702f2c:	e3530c11 	cmp	r3, #4352	; 0x1100
80702f30:	0a00001d 	beq	80702fac <sd_frame_cmd+0x14c>
80702f34:	e3530c12 	cmp	r3, #4608	; 0x1200
80702f38:	0a00001b 	beq	80702fac <sd_frame_cmd+0x14c>
80702f3c:	ea000037 	b	80703020 <sd_frame_cmd+0x1c0>
80702f40:	e3530c19 	cmp	r3, #6400	; 0x1900
80702f44:	0a000018 	beq	80702fac <sd_frame_cmd+0x14c>
80702f48:	e3530b0d 	cmp	r3, #13312	; 0x3400
80702f4c:	0a000012 	beq	80702f9c <sd_frame_cmd+0x13c>
80702f50:	e3530b06 	cmp	r3, #6144	; 0x1800
80702f54:	0a000014 	beq	80702fac <sd_frame_cmd+0x14c>
80702f58:	ea000030 	b	80703020 <sd_frame_cmd+0x1c0>
80702f5c:	e3530c97 	cmp	r3, #38656	; 0x9700
80702f60:	0a000011 	beq	80702fac <sd_frame_cmd+0x14c>
80702f64:	e3530c97 	cmp	r3, #38656	; 0x9700
80702f68:	ca000004 	bgt	80702f80 <sd_frame_cmd+0x120>
80702f6c:	e3530c86 	cmp	r3, #34304	; 0x8600
80702f70:	0a000009 	beq	80702f9c <sd_frame_cmd+0x13c>
80702f74:	e3530c8d 	cmp	r3, #36096	; 0x8d00
80702f78:	0a000007 	beq	80702f9c <sd_frame_cmd+0x13c>
80702f7c:	ea000027 	b	80703020 <sd_frame_cmd+0x1c0>
80702f80:	e3530caa 	cmp	r3, #43520	; 0xaa00
80702f84:	0a000004 	beq	80702f9c <sd_frame_cmd+0x13c>
80702f88:	e3530cb3 	cmp	r3, #45824	; 0xb300
80702f8c:	0a000006 	beq	80702fac <sd_frame_cmd+0x14c>
80702f90:	e3530ca9 	cmp	r3, #43264	; 0xa900
80702f94:	0a000010 	beq	80702fdc <sd_frame_cmd+0x17c>
80702f98:	ea000020 	b	80703020 <sd_frame_cmd+0x1c0>
80702f9c:	e15b30b6 	ldrh	r3, [fp, #-6]
80702fa0:	e383301a 	orr	r3, r3, #26
80702fa4:	e14b30b6 	strh	r3, [fp, #-6]
80702fa8:	ea00001c 	b	80703020 <sd_frame_cmd+0x1c0>
80702fac:	e15b30b6 	ldrh	r3, [fp, #-6]
80702fb0:	e383303a 	orr	r3, r3, #58	; 0x3a
80702fb4:	e14b30b6 	strh	r3, [fp, #-6]
80702fb8:	ea000018 	b	80703020 <sd_frame_cmd+0x1c0>
80702fbc:	e15b30b6 	ldrh	r3, [fp, #-6]
80702fc0:	e383301b 	orr	r3, r3, #27
80702fc4:	e14b30b6 	strh	r3, [fp, #-6]
80702fc8:	ea000014 	b	80703020 <sd_frame_cmd+0x1c0>
80702fcc:	e15b30b6 	ldrh	r3, [fp, #-6]
80702fd0:	e3833009 	orr	r3, r3, #9
80702fd4:	e14b30b6 	strh	r3, [fp, #-6]
80702fd8:	ea000010 	b	80703020 <sd_frame_cmd+0x1c0>
80702fdc:	e15b30b6 	ldrh	r3, [fp, #-6]
80702fe0:	e3833002 	orr	r3, r3, #2
80702fe4:	e14b30b6 	strh	r3, [fp, #-6]
80702fe8:	ea00000c 	b	80703020 <sd_frame_cmd+0x1c0>
80702fec:	e15b30b6 	ldrh	r3, [fp, #-6]
80702ff0:	e383301b 	orr	r3, r3, #27
80702ff4:	e14b30b6 	strh	r3, [fp, #-6]
80702ff8:	ea000008 	b	80703020 <sd_frame_cmd+0x1c0>
80702ffc:	e15b30b6 	ldrh	r3, [fp, #-6]
80703000:	e383303a 	orr	r3, r3, #58	; 0x3a
80703004:	e14b30b6 	strh	r3, [fp, #-6]
80703008:	ea000004 	b	80703020 <sd_frame_cmd+0x1c0>
8070300c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703010:	e383301a 	orr	r3, r3, #26
80703014:	e14b30b6 	strh	r3, [fp, #-6]
80703018:	ea000000 	b	80703020 <sd_frame_cmd+0x1c0>
8070301c:	e1a00000 	nop			; (mov r0, r0)
80703020:	e15b30b6 	ldrh	r3, [fp, #-6]
80703024:	e7ed3053 	ubfx	r3, r3, #0, #14
80703028:	e6ff3073 	uxth	r3, r3
8070302c:	e1a00003 	mov	r0, r3
80703030:	e24bd000 	sub	sp, fp, #0
80703034:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80703038:	e12fff1e 	bx	lr

8070303c <sd_spin_send_cmd>:
8070303c:	e92d4800 	push	{fp, lr}
80703040:	e28db004 	add	fp, sp, #4
80703044:	e24dd020 	sub	sp, sp, #32
80703048:	e50b201c 	str	r2, [fp, #-28]	; 0xffffffe4
8070304c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
80703050:	e14b01b6 	strh	r0, [fp, #-22]	; 0xffffffea
80703054:	e14b11b8 	strh	r1, [fp, #-24]	; 0xffffffe8
80703058:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
8070305c:	e1a00003 	mov	r0, r3
80703060:	ebffff7e 	bl	80702e60 <sd_frame_cmd>
80703064:	e1a03000 	mov	r3, r0
80703068:	e14b31b6 	strh	r3, [fp, #-22]	; 0xffffffea
8070306c:	e3a00024 	mov	r0, #36	; 0x24
80703070:	e34e0010 	movt	r0, #57360	; 0xe010
80703074:	ebfffefb 	bl	80702c68 <in32>
80703078:	e50b000c 	str	r0, [fp, #-12]
8070307c:	e51b300c 	ldr	r3, [fp, #-12]
80703080:	e2033001 	and	r3, r3, #1
80703084:	e3530000 	cmp	r3, #0
80703088:	0a000001 	beq	80703094 <sd_spin_send_cmd+0x58>
8070308c:	e3e03000 	mvn	r3, #0
80703090:	ea00004b 	b	807031c4 <sd_spin_send_cmd+0x188>
80703094:	e51b300c 	ldr	r3, [fp, #-12]
80703098:	e2033002 	and	r3, r3, #2
8070309c:	e3530000 	cmp	r3, #0
807030a0:	0a000005 	beq	807030bc <sd_spin_send_cmd+0x80>
807030a4:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
807030a8:	e2033020 	and	r3, r3, #32
807030ac:	e3530000 	cmp	r3, #0
807030b0:	0a000001 	beq	807030bc <sd_spin_send_cmd+0x80>
807030b4:	e3e03001 	mvn	r3, #1
807030b8:	ea000041 	b	807031c4 <sd_spin_send_cmd+0x188>
807030bc:	e15b31b8 	ldrh	r3, [fp, #-24]	; 0xffffffe8
807030c0:	e1a01003 	mov	r1, r3
807030c4:	e3a00006 	mov	r0, #6
807030c8:	e34e0010 	movt	r0, #57360	; 0xe010
807030cc:	ebfffefc 	bl	80702cc4 <out16>
807030d0:	e3a0100e 	mov	r1, #14
807030d4:	e3a0002e 	mov	r0, #46	; 0x2e
807030d8:	e34e0010 	movt	r0, #57360	; 0xe010
807030dc:	ebfffef8 	bl	80702cc4 <out16>
807030e0:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
807030e4:	e3a00008 	mov	r0, #8
807030e8:	e34e0010 	movt	r0, #57360	; 0xe010
807030ec:	ebffff01 	bl	80702cf8 <out32>
807030f0:	e30f1fff 	movw	r1, #65535	; 0xffff
807030f4:	e3a00030 	mov	r0, #48	; 0x30
807030f8:	e34e0010 	movt	r0, #57360	; 0xe010
807030fc:	ebfffef0 	bl	80702cc4 <out16>
80703100:	e30f13ff 	movw	r1, #62463	; 0xf3ff
80703104:	e3a00032 	mov	r0, #50	; 0x32
80703108:	e34e0010 	movt	r0, #57360	; 0xe010
8070310c:	ebfffeec 	bl	80702cc4 <out16>
80703110:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
80703114:	e3530001 	cmp	r3, #1
80703118:	0a000002 	beq	80703128 <sd_spin_send_cmd+0xec>
8070311c:	e3530002 	cmp	r3, #2
80703120:	0a000003 	beq	80703134 <sd_spin_send_cmd+0xf8>
80703124:	ea000005 	b	80703140 <sd_spin_send_cmd+0x104>
80703128:	e3a03037 	mov	r3, #55	; 0x37
8070312c:	e14b30b6 	strh	r3, [fp, #-6]
80703130:	ea000005 	b	8070314c <sd_spin_send_cmd+0x110>
80703134:	e3a03027 	mov	r3, #39	; 0x27
80703138:	e14b30b6 	strh	r3, [fp, #-6]
8070313c:	ea000002 	b	8070314c <sd_spin_send_cmd+0x110>
80703140:	e3a03001 	mov	r3, #1
80703144:	e14b30b6 	strh	r3, [fp, #-6]
80703148:	e1a00000 	nop			; (mov r0, r0)
8070314c:	e15b30b6 	ldrh	r3, [fp, #-6]
80703150:	e1a01003 	mov	r1, r3
80703154:	e3a0000c 	mov	r0, #12
80703158:	e34e0010 	movt	r0, #57360	; 0xe010
8070315c:	ebfffed8 	bl	80702cc4 <out16>
80703160:	e15b31b6 	ldrh	r3, [fp, #-22]	; 0xffffffea
80703164:	e1a01003 	mov	r1, r3
80703168:	e3a0000e 	mov	r0, #14
8070316c:	e34e0010 	movt	r0, #57360	; 0xe010
80703170:	ebfffed3 	bl	80702cc4 <out16>
80703174:	e3a00030 	mov	r0, #48	; 0x30
80703178:	e34e0010 	movt	r0, #57360	; 0xe010
8070317c:	ebfffeae 	bl	80702c3c <in16>
80703180:	e1a03000 	mov	r3, r0
80703184:	e14b30be 	strh	r3, [fp, #-14]
80703188:	e15b30be 	ldrh	r3, [fp, #-14]
8070318c:	e6bf3073 	sxth	r3, r3
80703190:	e3530000 	cmp	r3, #0
80703194:	aa000001 	bge	807031a0 <sd_spin_send_cmd+0x164>
80703198:	e3e03002 	mvn	r3, #2
8070319c:	ea000008 	b	807031c4 <sd_spin_send_cmd+0x188>
807031a0:	e15b30be 	ldrh	r3, [fp, #-14]
807031a4:	e2033001 	and	r3, r3, #1
807031a8:	e3530000 	cmp	r3, #0
807031ac:	0afffff0 	beq	80703174 <sd_spin_send_cmd+0x138>
807031b0:	e3a01001 	mov	r1, #1
807031b4:	e3a00030 	mov	r0, #48	; 0x30
807031b8:	e34e0010 	movt	r0, #57360	; 0xe010
807031bc:	ebfffec0 	bl	80702cc4 <out16>
807031c0:	e3a03000 	mov	r3, #0
807031c4:	e1a00003 	mov	r0, r3
807031c8:	e24bd004 	sub	sp, fp, #4
807031cc:	e8bd8800 	pop	{fp, pc}

807031d0 <sd_spin_init_mem_card>:
807031d0:	e92d4800 	push	{fp, lr}
807031d4:	e28db004 	add	fp, sp, #4
807031d8:	e24dd010 	sub	sp, sp, #16
807031dc:	e3a00024 	mov	r0, #36	; 0x24
807031e0:	e34e0010 	movt	r0, #57360	; 0xe010
807031e4:	ebfffe9f 	bl	80702c68 <in32>
807031e8:	e50b000c 	str	r0, [fp, #-12]
807031ec:	e51b300c 	ldr	r3, [fp, #-12]
807031f0:	e2033801 	and	r3, r3, #65536	; 0x10000
807031f4:	e3530000 	cmp	r3, #0
807031f8:	1a000001 	bne	80703204 <sd_spin_init_mem_card+0x34>
807031fc:	e3e03000 	mvn	r3, #0
80703200:	ea00007f 	b	80703404 <sd_spin_init_mem_card+0x234>
80703204:	e3a00e7d 	mov	r0, #2000	; 0x7d0
80703208:	ebfffd59 	bl	80702774 <usleep>
8070320c:	e3a03000 	mov	r3, #0
80703210:	e3a02000 	mov	r2, #0
80703214:	e3a01000 	mov	r1, #0
80703218:	e3a00000 	mov	r0, #0
8070321c:	ebffff86 	bl	8070303c <sd_spin_send_cmd>
80703220:	e50b0010 	str	r0, [fp, #-16]
80703224:	e51b3010 	ldr	r3, [fp, #-16]
80703228:	e3530000 	cmp	r3, #0
8070322c:	0a000001 	beq	80703238 <sd_spin_init_mem_card+0x68>
80703230:	e3e03001 	mvn	r3, #1
80703234:	ea000072 	b	80703404 <sd_spin_init_mem_card+0x234>
80703238:	e3a03000 	mov	r3, #0
8070323c:	e30021aa 	movw	r2, #426	; 0x1aa
80703240:	e3a01000 	mov	r1, #0
80703244:	e3a00b02 	mov	r0, #2048	; 0x800
80703248:	ebffff7b 	bl	8070303c <sd_spin_send_cmd>
8070324c:	e50b0010 	str	r0, [fp, #-16]
80703250:	e51b3010 	ldr	r3, [fp, #-16]
80703254:	e3530000 	cmp	r3, #0
80703258:	0a000001 	beq	80703264 <sd_spin_init_mem_card+0x94>
8070325c:	e3e03002 	mvn	r3, #2
80703260:	ea000067 	b	80703404 <sd_spin_init_mem_card+0x234>
80703264:	e3a00010 	mov	r0, #16
80703268:	e34e0010 	movt	r0, #57360	; 0xe010
8070326c:	ebfffe7d 	bl	80702c68 <in32>
80703270:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
80703274:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80703278:	e30021aa 	movw	r2, #426	; 0x1aa
8070327c:	e1530002 	cmp	r3, r2
80703280:	0a000001 	beq	8070328c <sd_spin_init_mem_card+0xbc>
80703284:	e3e03003 	mvn	r3, #3
80703288:	ea00005d 	b	80703404 <sd_spin_init_mem_card+0x234>
8070328c:	e3a03000 	mov	r3, #0
80703290:	e3a02000 	mov	r2, #0
80703294:	e3a01000 	mov	r1, #0
80703298:	e3a00c37 	mov	r0, #14080	; 0x3700
8070329c:	ebffff66 	bl	8070303c <sd_spin_send_cmd>
807032a0:	e50b0010 	str	r0, [fp, #-16]
807032a4:	e51b3010 	ldr	r3, [fp, #-16]
807032a8:	e3530000 	cmp	r3, #0
807032ac:	0a000001 	beq	807032b8 <sd_spin_init_mem_card+0xe8>
807032b0:	e3e03004 	mvn	r3, #4
807032b4:	ea000052 	b	80703404 <sd_spin_init_mem_card+0x234>
807032b8:	e3a03000 	mov	r3, #0
807032bc:	e3a02000 	mov	r2, #0
807032c0:	e3442030 	movt	r2, #16432	; 0x4030
807032c4:	e3a01000 	mov	r1, #0
807032c8:	e3a00ca9 	mov	r0, #43264	; 0xa900
807032cc:	ebffff5a 	bl	8070303c <sd_spin_send_cmd>
807032d0:	e50b0010 	str	r0, [fp, #-16]
807032d4:	e51b3010 	ldr	r3, [fp, #-16]
807032d8:	e3530000 	cmp	r3, #0
807032dc:	0a000001 	beq	807032e8 <sd_spin_init_mem_card+0x118>
807032e0:	e3e03004 	mvn	r3, #4
807032e4:	ea000046 	b	80703404 <sd_spin_init_mem_card+0x234>
807032e8:	e3a00010 	mov	r0, #16
807032ec:	e34e0010 	movt	r0, #57360	; 0xe010
807032f0:	ebfffe5c 	bl	80702c68 <in32>
807032f4:	e50b0014 	str	r0, [fp, #-20]	; 0xffffffec
807032f8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807032fc:	e3530000 	cmp	r3, #0
80703300:	aaffffe1 	bge	8070328c <sd_spin_init_mem_card+0xbc>
80703304:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
80703308:	e2033101 	and	r3, r3, #1073741824	; 0x40000000
8070330c:	e3530000 	cmp	r3, #0
80703310:	0a000002 	beq	80703320 <sd_spin_init_mem_card+0x150>
80703314:	e3a03001 	mov	r3, #1
80703318:	e50b3008 	str	r3, [fp, #-8]
8070331c:	ea000001 	b	80703328 <sd_spin_init_mem_card+0x158>
80703320:	e3a03000 	mov	r3, #0
80703324:	e50b3008 	str	r3, [fp, #-8]
80703328:	e3a03000 	mov	r3, #0
8070332c:	e3a02000 	mov	r2, #0
80703330:	e3a01000 	mov	r1, #0
80703334:	e3a00c02 	mov	r0, #512	; 0x200
80703338:	ebffff3f 	bl	8070303c <sd_spin_send_cmd>
8070333c:	e50b0010 	str	r0, [fp, #-16]
80703340:	e51b3010 	ldr	r3, [fp, #-16]
80703344:	e3530000 	cmp	r3, #0
80703348:	0a000001 	beq	80703354 <sd_spin_init_mem_card+0x184>
8070334c:	e3e03005 	mvn	r3, #5
80703350:	ea00002b 	b	80703404 <sd_spin_init_mem_card+0x234>
80703354:	e3a03000 	mov	r3, #0
80703358:	e3a02000 	mov	r2, #0
8070335c:	e3a01000 	mov	r1, #0
80703360:	e3a00c03 	mov	r0, #768	; 0x300
80703364:	ebffff34 	bl	8070303c <sd_spin_send_cmd>
80703368:	e50b0010 	str	r0, [fp, #-16]
8070336c:	e51b3010 	ldr	r3, [fp, #-16]
80703370:	e3530000 	cmp	r3, #0
80703374:	0a000001 	beq	80703380 <sd_spin_init_mem_card+0x1b0>
80703378:	e3e03006 	mvn	r3, #6
8070337c:	ea000020 	b	80703404 <sd_spin_init_mem_card+0x234>
80703380:	e3a00010 	mov	r0, #16
80703384:	e34e0010 	movt	r0, #57360	; 0xe010
80703388:	ebfffe36 	bl	80702c68 <in32>
8070338c:	e1a03000 	mov	r3, r0
80703390:	e1a03823 	lsr	r3, r3, #16
80703394:	e1a03803 	lsl	r3, r3, #16
80703398:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
8070339c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
807033a0:	e3530000 	cmp	r3, #0
807033a4:	0affffea 	beq	80703354 <sd_spin_init_mem_card+0x184>
807033a8:	e3a03000 	mov	r3, #0
807033ac:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
807033b0:	e3a01000 	mov	r1, #0
807033b4:	e3a00c09 	mov	r0, #2304	; 0x900
807033b8:	ebffff1f 	bl	8070303c <sd_spin_send_cmd>
807033bc:	e50b0010 	str	r0, [fp, #-16]
807033c0:	e51b3010 	ldr	r3, [fp, #-16]
807033c4:	e3530000 	cmp	r3, #0
807033c8:	0a000001 	beq	807033d4 <sd_spin_init_mem_card+0x204>
807033cc:	e3e03007 	mvn	r3, #7
807033d0:	ea00000b 	b	80703404 <sd_spin_init_mem_card+0x234>
807033d4:	e3a03000 	mov	r3, #0
807033d8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
807033dc:	e3a01000 	mov	r1, #0
807033e0:	e3a00c07 	mov	r0, #1792	; 0x700
807033e4:	ebffff14 	bl	8070303c <sd_spin_send_cmd>
807033e8:	e50b0010 	str	r0, [fp, #-16]
807033ec:	e51b3010 	ldr	r3, [fp, #-16]
807033f0:	e3530000 	cmp	r3, #0
807033f4:	0a000001 	beq	80703400 <sd_spin_init_mem_card+0x230>
807033f8:	e3e03008 	mvn	r3, #8
807033fc:	ea000000 	b	80703404 <sd_spin_init_mem_card+0x234>
80703400:	e51b3008 	ldr	r3, [fp, #-8]
80703404:	e1a00003 	mov	r0, r3
80703408:	e24bd004 	sub	sp, fp, #4
8070340c:	e8bd8800 	pop	{fp, pc}

80703410 <sd_dma_spin_read>:
80703410:	e92d4800 	push	{fp, lr}
80703414:	e28db004 	add	fp, sp, #4
80703418:	e24dd020 	sub	sp, sp, #32
8070341c:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
80703420:	e1a03001 	mov	r3, r1
80703424:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80703428:	e14b31ba 	strh	r3, [fp, #-26]	; 0xffffffe6
8070342c:	e3a00024 	mov	r0, #36	; 0x24
80703430:	e34e0010 	movt	r0, #57360	; 0xe010
80703434:	ebfffe0b 	bl	80702c68 <in32>
80703438:	e50b0008 	str	r0, [fp, #-8]
8070343c:	e51b3008 	ldr	r3, [fp, #-8]
80703440:	e2033801 	and	r3, r3, #65536	; 0x10000
80703444:	e3530000 	cmp	r3, #0
80703448:	1a000001 	bne	80703454 <sd_dma_spin_read+0x44>
8070344c:	e3e03000 	mvn	r3, #0
80703450:	ea000036 	b	80703530 <sd_dma_spin_read+0x120>
80703454:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
80703458:	e3a00000 	mov	r0, #0
8070345c:	e34e0010 	movt	r0, #57360	; 0xe010
80703460:	ebfffe24 	bl	80702cf8 <out32>
80703464:	e15b11ba 	ldrh	r1, [fp, #-26]	; 0xffffffe6
80703468:	e3a03001 	mov	r3, #1
8070346c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
80703470:	e3a00c12 	mov	r0, #4608	; 0x1200
80703474:	ebfffef0 	bl	8070303c <sd_spin_send_cmd>
80703478:	e50b000c 	str	r0, [fp, #-12]
8070347c:	e51b300c 	ldr	r3, [fp, #-12]
80703480:	e3530000 	cmp	r3, #0
80703484:	0a000001 	beq	80703490 <sd_dma_spin_read+0x80>
80703488:	e3e03001 	mvn	r3, #1
8070348c:	ea000027 	b	80703530 <sd_dma_spin_read+0x120>
80703490:	e3a00030 	mov	r0, #48	; 0x30
80703494:	e34e0010 	movt	r0, #57360	; 0xe010
80703498:	ebfffde7 	bl	80702c3c <in16>
8070349c:	e1a03000 	mov	r3, r0
807034a0:	e14b30be 	strh	r3, [fp, #-14]
807034a4:	e15b30be 	ldrh	r3, [fp, #-14]
807034a8:	e6bf3073 	sxth	r3, r3
807034ac:	e3530000 	cmp	r3, #0
807034b0:	aa000005 	bge	807034cc <sd_dma_spin_read+0xbc>
807034b4:	e30f13ff 	movw	r1, #62463	; 0xf3ff
807034b8:	e3a00032 	mov	r0, #50	; 0x32
807034bc:	e34e0010 	movt	r0, #57360	; 0xe010
807034c0:	ebfffdff 	bl	80702cc4 <out16>
807034c4:	e3e03002 	mvn	r3, #2
807034c8:	ea000018 	b	80703530 <sd_dma_spin_read+0x120>
807034cc:	e15b30be 	ldrh	r3, [fp, #-14]
807034d0:	e2033008 	and	r3, r3, #8
807034d4:	e3530000 	cmp	r3, #0
807034d8:	0a00000b 	beq	8070350c <sd_dma_spin_read+0xfc>
807034dc:	e3a01008 	mov	r1, #8
807034e0:	e3a00030 	mov	r0, #48	; 0x30
807034e4:	e34e0010 	movt	r0, #57360	; 0xe010
807034e8:	ebfffdf5 	bl	80702cc4 <out16>
807034ec:	e3a00000 	mov	r0, #0
807034f0:	e34e0010 	movt	r0, #57360	; 0xe010
807034f4:	ebfffddb 	bl	80702c68 <in32>
807034f8:	e1a03000 	mov	r3, r0
807034fc:	e1a01003 	mov	r1, r3
80703500:	e3a00000 	mov	r0, #0
80703504:	e34e0010 	movt	r0, #57360	; 0xe010
80703508:	ebfffdfa 	bl	80702cf8 <out32>
8070350c:	e15b30be 	ldrh	r3, [fp, #-14]
80703510:	e2033002 	and	r3, r3, #2
80703514:	e3530000 	cmp	r3, #0
80703518:	0affffdc 	beq	80703490 <sd_dma_spin_read+0x80>
8070351c:	e3a01002 	mov	r1, #2
80703520:	e3a00030 	mov	r0, #48	; 0x30
80703524:	e34e0010 	movt	r0, #57360	; 0xe010
80703528:	ebfffde5 	bl	80702cc4 <out16>
8070352c:	e3a03000 	mov	r3, #0
80703530:	e1a00003 	mov	r0, r3
80703534:	e24bd004 	sub	sp, fp, #4
80703538:	e8bd8800 	pop	{fp, pc}

8070353c <sd_dma_spin_write>:
8070353c:	e92d4800 	push	{fp, lr}
80703540:	e28db004 	add	fp, sp, #4
80703544:	e24dd020 	sub	sp, sp, #32
80703548:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
8070354c:	e1a03001 	mov	r3, r1
80703550:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
80703554:	e14b31ba 	strh	r3, [fp, #-26]	; 0xffffffe6
80703558:	e3a00024 	mov	r0, #36	; 0x24
8070355c:	e34e0010 	movt	r0, #57360	; 0xe010
80703560:	ebfffdc0 	bl	80702c68 <in32>
80703564:	e50b0008 	str	r0, [fp, #-8]
80703568:	e51b3008 	ldr	r3, [fp, #-8]
8070356c:	e2033801 	and	r3, r3, #65536	; 0x10000
80703570:	e3530000 	cmp	r3, #0
80703574:	1a000001 	bne	80703580 <sd_dma_spin_write+0x44>
80703578:	e3e03000 	mvn	r3, #0
8070357c:	ea000036 	b	8070365c <sd_dma_spin_write+0x120>
80703580:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
80703584:	e3a00000 	mov	r0, #0
80703588:	e34e0010 	movt	r0, #57360	; 0xe010
8070358c:	ebfffdd9 	bl	80702cf8 <out32>
80703590:	e15b11ba 	ldrh	r1, [fp, #-26]	; 0xffffffe6
80703594:	e3a03002 	mov	r3, #2
80703598:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
8070359c:	e3a00c19 	mov	r0, #6400	; 0x1900
807035a0:	ebfffea5 	bl	8070303c <sd_spin_send_cmd>
807035a4:	e50b000c 	str	r0, [fp, #-12]
807035a8:	e51b300c 	ldr	r3, [fp, #-12]
807035ac:	e3530000 	cmp	r3, #0
807035b0:	0a000001 	beq	807035bc <sd_dma_spin_write+0x80>
807035b4:	e3e03001 	mvn	r3, #1
807035b8:	ea000027 	b	8070365c <sd_dma_spin_write+0x120>
807035bc:	e3a00030 	mov	r0, #48	; 0x30
807035c0:	e34e0010 	movt	r0, #57360	; 0xe010
807035c4:	ebfffd9c 	bl	80702c3c <in16>
807035c8:	e1a03000 	mov	r3, r0
807035cc:	e14b30be 	strh	r3, [fp, #-14]
807035d0:	e15b30be 	ldrh	r3, [fp, #-14]
807035d4:	e6bf3073 	sxth	r3, r3
807035d8:	e3530000 	cmp	r3, #0
807035dc:	aa000005 	bge	807035f8 <sd_dma_spin_write+0xbc>
807035e0:	e30f13ff 	movw	r1, #62463	; 0xf3ff
807035e4:	e3a00032 	mov	r0, #50	; 0x32
807035e8:	e34e0010 	movt	r0, #57360	; 0xe010
807035ec:	ebfffdb4 	bl	80702cc4 <out16>
807035f0:	e3e03002 	mvn	r3, #2
807035f4:	ea000018 	b	8070365c <sd_dma_spin_write+0x120>
807035f8:	e15b30be 	ldrh	r3, [fp, #-14]
807035fc:	e2033008 	and	r3, r3, #8
80703600:	e3530000 	cmp	r3, #0
80703604:	0a00000b 	beq	80703638 <sd_dma_spin_write+0xfc>
80703608:	e3a01008 	mov	r1, #8
8070360c:	e3a00030 	mov	r0, #48	; 0x30
80703610:	e34e0010 	movt	r0, #57360	; 0xe010
80703614:	ebfffdaa 	bl	80702cc4 <out16>
80703618:	e3a00000 	mov	r0, #0
8070361c:	e34e0010 	movt	r0, #57360	; 0xe010
80703620:	ebfffd90 	bl	80702c68 <in32>
80703624:	e1a03000 	mov	r3, r0
80703628:	e1a01003 	mov	r1, r3
8070362c:	e3a00000 	mov	r0, #0
80703630:	e34e0010 	movt	r0, #57360	; 0xe010
80703634:	ebfffdaf 	bl	80702cf8 <out32>
80703638:	e15b30be 	ldrh	r3, [fp, #-14]
8070363c:	e2033002 	and	r3, r3, #2
80703640:	e3530000 	cmp	r3, #0
80703644:	0affffdc 	beq	807035bc <sd_dma_spin_write+0x80>
80703648:	e3a01002 	mov	r1, #2
8070364c:	e3a00030 	mov	r0, #48	; 0x30
80703650:	e34e0010 	movt	r0, #57360	; 0xe010
80703654:	ebfffd9a 	bl	80702cc4 <out16>
80703658:	e3a03000 	mov	r3, #0
8070365c:	e1a00003 	mov	r0, r3
80703660:	e24bd004 	sub	sp, fp, #4
80703664:	e8bd8800 	pop	{fp, pc}
80703668:	000003a2 	andeq	r0, r0, r2, lsr #7
8070366c:	3a0e0004 	bcc	80a83684 <.LC14+0x37ec58>
80703670:	01048070 	tsteq	r4, r0, ror r0
80703674:	807011f7 	ldrshthi	r1, [r0], #-23	; 0xffffffe9
80703678:	703dd30c 	eorsvc	sp, sp, ip, lsl #6
8070367c:	70128680 	andsvc	r8, r2, r0, lsl #13
80703680:	702c1080 	eorvc	r1, ip, r0, lsl #1
80703684:	000a5880 	andeq	r5, sl, r0, lsl #17
80703688:	703bc900 	eorsvc	ip, fp, r0, lsl #18
8070368c:	08010280 	stmdaeq	r1, {r7, r9}
80703690:	80701248 	rsbshi	r1, r0, r8, asr #4
80703694:	00387503 	eorseq	r7, r8, r3, lsl #10
80703698:	00251b03 	eoreq	r1, r5, r3, lsl #22
8070369c:	01020000 	mrseq	r0, (UNDEF: 2)
807036a0:	70124a06 	andsvc	r4, r2, r6, lsl #20
807036a4:	07020280 	streq	r0, [r2, -r0, lsl #5]
807036a8:	80701256 	rsbshi	r1, r0, r6, asr r2
807036ac:	36317503 	ldrtcc	r7, [r1], -r3, lsl #10
807036b0:	3d1d0300 	ldccc	3, cr0, [sp, #-0]
807036b4:	02000000 	andeq	r0, r0, #0
807036b8:	12fa0502 	rscsne	r0, sl, #8388608	; 0x800000
807036bc:	04028070 	streq	r8, [r2], #-112	; 0xffffff90
807036c0:	7012a907 	andsvc	sl, r2, r7, lsl #18
807036c4:	33750380 	cmncc	r5, #128, 6
807036c8:	1f030032 	svcne	0x00030032
807036cc:	00000056 	andeq	r0, r0, r6, asr r0
807036d0:	69050404 	stmdbvs	r5, {r2, sl}
807036d4:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
807036d8:	12a40704 	adcne	r0, r4, #4, 14	; 0x100000
807036dc:	08028070 	stmdaeq	r2, {r4, r5, r6, pc}
807036e0:	70129f07 	andsvc	r9, r2, r7, lsl #30
807036e4:	05080280 	streq	r0, [r8, #-640]	; 0xfffffd80
807036e8:	807012df 	ldrsbthi	r1, [r0], #-47	; 0xffffffd1
807036ec:	e4050402 	str	r0, [r5], #-1026	; 0xfffffbfe
807036f0:	05807012 	streq	r7, [r0, #18]
807036f4:	00386e69 	eorseq	r6, r8, r9, ror #28
807036f8:	00251301 	eoreq	r1, r5, r1, lsl #6
807036fc:	2c100000 	ldccs	0, cr0, [r0], {-0}
80703700:	002c8070 	eoreq	r8, ip, r0, ror r0
80703704:	9c010000 	stcls	0, cr0, [r1], {-0}
80703708:	000000b3 	strheq	r0, [r0], -r3
8070370c:	7044a306 	subvc	sl, r4, r6, lsl #6
80703710:	6f130180 	svcvs	0x00130180
80703714:	02000000 	andeq	r0, r0, #0
80703718:	07007491 			; <UNDEFINED> instruction: 0x07007491
8070371c:	80703da4 	rsbshi	r3, r0, r4, lsr #27
80703720:	003d1801 	eorseq	r1, sp, r1, lsl #16
80703724:	2c3c0000 	ldccs	0, cr0, [ip], #-0
80703728:	002c8070 	eoreq	r8, ip, r0, ror r0
8070372c:	9c010000 	stcls	0, cr0, [r1], {-0}
80703730:	000000db 	ldrdeq	r0, [r0], -fp
80703734:	7044a306 	subvc	sl, r4, r6, lsl #6
80703738:	6f180180 	svcvs	0x00180180
8070373c:	02000000 	andeq	r0, r0, #0
80703740:	07007491 			; <UNDEFINED> instruction: 0x07007491
80703744:	8070449e 			; <UNDEFINED> instruction: 0x8070449e
80703748:	006f1d01 	rsbeq	r1, pc, r1, lsl #26
8070374c:	2c680000 	stclcs	0, cr0, [r8], #-0
80703750:	00288070 	eoreq	r8, r8, r0, ror r0
80703754:	9c010000 	stcls	0, cr0, [r1], {-0}
80703758:	00000103 	andeq	r0, r0, r3, lsl #2
8070375c:	7044a306 	subvc	sl, r4, r6, lsl #6
80703760:	6f1d0180 	svcvs	0x001d0180
80703764:	02000000 	andeq	r0, r0, #0
80703768:	08007491 	stmdaeq	r0, {r0, r4, r7, sl, ip, sp, lr}
8070376c:	80703da9 	rsbshi	r3, r0, r9, lsr #27
80703770:	2c902301 	ldccs	3, cr2, [r0], {1}
80703774:	00348070 	eorseq	r8, r4, r0, ror r0
80703778:	9c010000 	stcls	0, cr0, [r1], {-0}
8070377c:	00000135 	andeq	r0, r0, r5, lsr r1
80703780:	7044a306 	subvc	sl, r4, r6, lsl #6
80703784:	6f230180 	svcvs	0x00230180
80703788:	02000000 	andeq	r0, r0, #0
8070378c:	b2067491 	andlt	r7, r6, #-1862270976	; 0x91000000
80703790:	01807044 	orreq	r7, r0, r4, asr #32
80703794:	00002523 	andeq	r2, r0, r3, lsr #10
80703798:	73910200 	orrsvc	r0, r1, #0, 4
8070379c:	3dc80800 	stclcc	8, cr0, [r8]
807037a0:	28018070 	stmdacs	r1, {r4, r5, r6, pc}
807037a4:	80702cc4 	rsbshi	r2, r0, r4, asr #25
807037a8:	00000034 	andeq	r0, r0, r4, lsr r0
807037ac:	01679c01 	cmneq	r7, r1, lsl #24
807037b0:	a3060000 	movwge	r0, #24576	; 0x6000
807037b4:	01807044 	orreq	r7, r0, r4, asr #32
807037b8:	00006f28 	andeq	r6, r0, r8, lsr #30
807037bc:	74910200 	ldrvc	r0, [r1], #512	; 0x200
807037c0:	7044b206 	subvc	fp, r4, r6, lsl #4
807037c4:	3d280180 	stfccs	f0, [r8, #-512]!	; 0xfffffe00
807037c8:	02000000 	andeq	r0, r0, #0
807037cc:	08007291 	stmdaeq	r0, {r0, r4, r7, r9, ip, sp, lr}
807037d0:	807044b7 	ldrhthi	r4, [r0], #-71	; 0xffffffb9
807037d4:	2cf82d01 	ldclcs	13, cr2, [r8], #4
807037d8:	00308070 	eorseq	r8, r0, r0, ror r0
807037dc:	9c010000 	stcls	0, cr0, [r1], {-0}
807037e0:	00000199 	muleq	r0, r9, r1
807037e4:	7044a306 	subvc	sl, r4, r6, lsl #6
807037e8:	6f2d0180 	svcvs	0x002d0180
807037ec:	02000000 	andeq	r0, r0, #0
807037f0:	b2067491 	andlt	r7, r6, #-1862270976	; 0x91000000
807037f4:	01807044 	orreq	r7, r0, r4, asr #32
807037f8:	00006f2d 	andeq	r6, r0, sp, lsr #30
807037fc:	70910200 	addsvc	r0, r1, r0, lsl #4
80703800:	3e2d0900 	cdpcc	9, 2, cr0, cr13, cr0, {0}
80703804:	19028070 	stmdbne	r2, {r4, r5, r6, pc}
80703808:	80702d28 	rsbshi	r2, r0, r8, lsr #26
8070380c:	00000138 	andeq	r0, r0, r8, lsr r1
80703810:	01cb9c01 	biceq	r9, fp, r1, lsl #24
80703814:	980a0000 	stmdals	sl, {}	; <UNPREDICTABLE>
80703818:	0280703d 	addeq	r7, r0, #61	; 0x3d
8070381c:	0000441b 	andeq	r4, r0, fp, lsl r4
80703820:	76910200 	ldrvc	r0, [r1], r0, lsl #4
80703824:	703e350a 	eorsvc	r3, lr, sl, lsl #10
80703828:	2c1c0280 	lfmcs	f0, 4, [ip], {128}	; 0x80
8070382c:	02000000 	andeq	r0, r0, #0
80703830:	0b007591 	bleq	80720e7c <.LC14+0x1c450>
80703834:	80703e03 	rsbshi	r3, r0, r3, lsl #28
80703838:	00444302 	subeq	r4, r4, r2, lsl #6
8070383c:	2e600000 	cdpcs	0, 6, cr0, cr0, cr0, {0}
80703840:	01dc8070 	bicseq	r8, ip, r0, ror r0
80703844:	9c010000 	stcls	0, cr0, [r1], {-0}
80703848:	000001f3 	strdeq	r0, [r0], -r3
8070384c:	646d630c 	strbtvs	r6, [sp], #-780	; 0xfffffcf4
80703850:	44430200 	strbmi	r0, [r3], #-512	; 0xfffffe00
80703854:	02000000 	andeq	r0, r0, #0
80703858:	0d007691 	stceq	6, cr7, [r0, #-580]	; 0xfffffdbc
8070385c:	80703dae 	rsbshi	r3, r0, lr, lsr #27
80703860:	00687802 	rsbeq	r7, r8, r2, lsl #16
80703864:	303c0000 	eorscc	r0, ip, r0
80703868:	01948070 	orrseq	r8, r4, r0, ror r0
8070386c:	9c010000 	stcls	0, cr0, [r1], {-0}
80703870:	0000026f 	andeq	r0, r0, pc, ror #4
80703874:	646d630c 	strbtvs	r6, [sp], #-780	; 0xfffffcf4
80703878:	44780200 	ldrbtmi	r0, [r8], #-512	; 0xfffffe00
8070387c:	02000000 	andeq	r0, r0, #0
80703880:	9e066691 	mcrls	6, 0, r6, cr6, cr1, {4}
80703884:	0280703d 	addeq	r7, r0, #61	; 0x3d
80703888:	00004478 	andeq	r4, r0, r8, ror r4
8070388c:	64910200 	ldrvs	r0, [r1], #512	; 0x200
80703890:	6772610c 	ldrbvs	r6, [r2, -ip, lsl #2]!
80703894:	5d780200 	lfmpl	f0, 2, [r8, #-0]
80703898:	02000000 	andeq	r0, r0, #0
8070389c:	db066091 	blle	8089bae8 <.LC14+0x1970bc>
807038a0:	0280704e 	addeq	r7, r0, #78	; 0x4e
807038a4:	00006878 	andeq	r6, r0, r8, ror r8
807038a8:	5c910200 	lfmpl	f0, 4, [r1], {0}
807038ac:	703d920a 	eorsvc	r9, sp, sl, lsl #4
807038b0:	5d7a0280 	lfmpl	f0, 2, [sl, #-512]!	; 0xfffffe00
807038b4:	02000000 	andeq	r0, r0, #0
807038b8:	fc0a7091 	stc2	0, cr7, [sl], {145}	; 0x91
807038bc:	0280703d 	addeq	r7, r0, #61	; 0x3d
807038c0:	0000447b 	andeq	r4, r0, fp, ror r4
807038c4:	6e910200 	cdpvs	2, 9, cr0, cr1, cr0, {0}
807038c8:	703d980a 	eorsvc	r9, sp, sl, lsl #16
807038cc:	447b0280 	ldrbtmi	r0, [fp], #-640	; 0xfffffd80
807038d0:	02000000 	andeq	r0, r0, #0
807038d4:	0e007691 	mcreq	6, 0, r7, cr0, cr1, {4}
807038d8:	80703e17 	rsbshi	r3, r0, r7, lsl lr
807038dc:	0068ba02 	rsbeq	fp, r8, r2, lsl #20
807038e0:	31d00000 	bicscc	r0, r0, r0
807038e4:	02408070 	subeq	r8, r0, #112	; 0x70
807038e8:	9c010000 	stcls	0, cr0, [r1], {-0}
807038ec:	000002c1 	andeq	r0, r0, r1, asr #5
807038f0:	703d920a 	eorsvc	r9, sp, sl, lsl #4
807038f4:	5dbc0280 	lfmpl	f0, 4, [ip, #512]!	; 0x200
807038f8:	02000000 	andeq	r0, r0, #0
807038fc:	ce0a7091 	mcrgt	0, 0, r7, cr10, cr1, {4}
80703900:	0280703d 	addeq	r7, r0, #61	; 0x3d
80703904:	00005dbc 			; <UNDEFINED> instruction: 0x00005dbc
80703908:	68910200 	ldmvs	r1, {r9}
8070390c:	7465720f 	strbtvc	r7, [r5], #-527	; 0xfffffdf1
80703910:	68bd0200 	ldmfdvs	sp!, {r9}
80703914:	02000000 	andeq	r0, r0, #0
80703918:	bf0a6c91 	svclt	0x000a6c91
8070391c:	0280703d 	addeq	r7, r0, #61	; 0x3d
80703920:	000068bd 			; <UNDEFINED> instruction: 0x000068bd
80703924:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80703928:	3d811000 	stccc	0, cr1, [r1]
8070392c:	02028070 	andeq	r8, r2, #112	; 0x70
80703930:	00006801 	andeq	r6, r0, r1, lsl #16
80703934:	70341000 	eorsvc	r1, r4, r0
80703938:	00012c80 	andeq	r2, r1, r0, lsl #25
8070393c:	359c0100 	ldrcc	r0, [ip, #256]	; 0x100
80703940:	11000003 	tstne	r0, r3
80703944:	02006170 	andeq	r6, r0, #112, 2
80703948:	005d0102 	subseq	r0, sp, r2, lsl #2
8070394c:	91020000 	mrsls	r0, (UNDEF: 2)
80703950:	3d9e1264 	lfmcc	f1, 4, [lr, #400]	; 0x190
80703954:	02028070 	andeq	r8, r2, #112	; 0x70
80703958:	00004401 	andeq	r4, r0, r1, lsl #8
8070395c:	62910200 	addsvs	r0, r1, #0, 4
80703960:	703e1012 	eorsvc	r1, lr, r2, lsl r0
80703964:	01020280 	smlabbeq	r2, r0, r2, r0
80703968:	0000005d 	andeq	r0, r0, sp, asr r0
8070396c:	135c9102 	cmpne	ip, #-2147483648	; 0x80000000
80703970:	00746572 	rsbseq	r6, r4, r2, ror r5
80703974:	68010402 	stmdavs	r1, {r1, sl}
80703978:	02000000 	andeq	r0, r0, #0
8070397c:	ec147091 	ldc	0, cr7, [r4], {145}	; 0x91
80703980:	0280703d 	addeq	r7, r0, #61	; 0x3d
80703984:	00440105 	subeq	r0, r4, r5, lsl #2
80703988:	91020000 	mrsls	r0, (UNDEF: 2)
8070398c:	3df4146e 	cfldrdcc	mvd1, [r4, #440]!	; 0x1b8
80703990:	06028070 			; <UNDEFINED> instruction: 0x06028070
80703994:	00005d01 	andeq	r5, r0, r1, lsl #26
80703998:	74910200 	ldrvc	r0, [r1], #512	; 0x200
8070399c:	3e3a1500 	cfabs32cc	mvfx1, mvfx10
807039a0:	39028070 	stmdbcc	r2, {r4, r5, r6, pc}
807039a4:	00006801 	andeq	r6, r0, r1, lsl #16
807039a8:	70353c00 	eorsvc	r3, r5, r0, lsl #24
807039ac:	00012c80 	andeq	r2, r1, r0, lsl #25
807039b0:	119c0100 	orrsne	r0, ip, r0, lsl #2
807039b4:	02006170 	andeq	r6, r0, #112, 2
807039b8:	005d0139 	subseq	r0, sp, r9, lsr r1
807039bc:	91020000 	mrsls	r0, (UNDEF: 2)
807039c0:	3d9e1264 	lfmcc	f1, 4, [lr, #400]	; 0x190
807039c4:	39028070 	stmdbcc	r2, {r4, r5, r6, pc}
807039c8:	00004401 	andeq	r4, r0, r1, lsl #8
807039cc:	62910200 	addsvs	r0, r1, #0, 4
807039d0:	703e1012 	eorsvc	r1, lr, r2, lsl r0
807039d4:	01390280 	teqeq	r9, r0, lsl #5
807039d8:	0000005d 	andeq	r0, r0, sp, asr r0
807039dc:	135c9102 	cmpne	ip, #-2147483648	; 0x80000000
807039e0:	00746572 	rsbseq	r6, r4, r2, ror r5
807039e4:	68013b02 	stmdavs	r1, {r1, r8, r9, fp, ip, sp}
807039e8:	02000000 	andeq	r0, r0, #0
807039ec:	ec147091 	ldc	0, cr7, [r4], {145}	; 0x91
807039f0:	0280703d 	addeq	r7, r0, #61	; 0x3d
807039f4:	0044013c 	subeq	r0, r4, ip, lsr r1
807039f8:	91020000 	mrsls	r0, (UNDEF: 2)
807039fc:	3df4146e 	cfldrdcc	mvd1, [r4, #440]!	; 0x1b8
80703a00:	3d028070 	stccc	0, cr8, [r2, #-448]	; 0xfffffe40
80703a04:	00005d01 	andeq	r5, r0, r1, lsl #26
80703a08:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80703a0c:	11010000 	mrsne	r0, (UNDEF: 1)
80703a10:	130e2501 	movwne	r2, #58625	; 0xe501
80703a14:	1b0e030b 	blne	80a84648 <.LC14+0x37fc1c>
80703a18:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
80703a1c:	00171006 	andseq	r1, r7, r6
80703a20:	00240200 	eoreq	r0, r4, r0, lsl #4
80703a24:	0b3e0b0b 	bleq	81686658 <.LC14+0xf81c2c>
80703a28:	00000e03 	andeq	r0, r0, r3, lsl #28
80703a2c:	03001603 	movweq	r1, #1539	; 0x603
80703a30:	3b0b3a08 	blcc	809d2258 <.LC14+0x2cd82c>
80703a34:	0013490b 	andseq	r4, r3, fp, lsl #18
80703a38:	00240400 	eoreq	r0, r4, r0, lsl #8
80703a3c:	0b3e0b0b 	bleq	81686670 <.LC14+0xf81c44>
80703a40:	00000803 	andeq	r0, r0, r3, lsl #16
80703a44:	03012e05 	movweq	r2, #7685	; 0x1e05
80703a48:	3b0b3a08 	blcc	809d2270 <.LC14+0x2cd844>
80703a4c:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
80703a50:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80703a54:	97184006 	ldrls	r4, [r8, -r6]
80703a58:	13011942 	movwne	r1, #6466	; 0x1942
80703a5c:	05060000 	streq	r0, [r6, #-0]
80703a60:	3a0e0300 	bcc	80a84668 <.LC14+0x37fc3c>
80703a64:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80703a68:	00180213 	andseq	r0, r8, r3, lsl r2
80703a6c:	012e0700 	teqeq	lr, r0, lsl #14
80703a70:	0b3a0e03 	bleq	81587284 <.LC14+0xe82858>
80703a74:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
80703a78:	01111349 	tsteq	r1, r9, asr #6
80703a7c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80703a80:	01194297 			; <UNDEFINED> instruction: 0x01194297
80703a84:	08000013 	stmdaeq	r0, {r0, r1, r4}
80703a88:	0e03012e 	adfeqsp	f0, f3, #0.5
80703a8c:	0b3b0b3a 	bleq	815c677c <.LC14+0xec1d50>
80703a90:	01111927 	tsteq	r1, r7, lsr #18
80703a94:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80703a98:	01194297 			; <UNDEFINED> instruction: 0x01194297
80703a9c:	09000013 	stmdbeq	r0, {r0, r1, r4}
80703aa0:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
80703aa4:	0b3a0e03 	bleq	815872b8 <.LC14+0xe8288c>
80703aa8:	01110b3b 	tsteq	r1, fp, lsr fp
80703aac:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80703ab0:	01194296 			; <UNDEFINED> instruction: 0x01194296
80703ab4:	0a000013 	beq	80703b08 <sd_dma_spin_write+0x5cc>
80703ab8:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
80703abc:	0b3b0b3a 	bleq	815c67ac <.LC14+0xec1d80>
80703ac0:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80703ac4:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
80703ac8:	03193f01 	tsteq	r9, #1, 30
80703acc:	3b0b3a0e 	blcc	809d230c <.LC14+0x2cd8e0>
80703ad0:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
80703ad4:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80703ad8:	97184006 	ldrls	r4, [r8, -r6]
80703adc:	13011942 	movwne	r1, #6466	; 0x1942
80703ae0:	050c0000 	streq	r0, [ip, #-0]
80703ae4:	3a080300 	bcc	809046ec <.LC14+0x1ffcc0>
80703ae8:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80703aec:	00180213 	andseq	r0, r8, r3, lsl r2
80703af0:	012e0d00 	teqeq	lr, r0, lsl #26
80703af4:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80703af8:	0b3b0b3a 	bleq	815c67e8 <.LC14+0xec1dbc>
80703afc:	13491927 	movtne	r1, #39207	; 0x9927
80703b00:	06120111 			; <UNDEFINED> instruction: 0x06120111
80703b04:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
80703b08:	00130119 	andseq	r0, r3, r9, lsl r1
80703b0c:	012e0e00 	teqeq	lr, r0, lsl #28
80703b10:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80703b14:	0b3b0b3a 	bleq	815c6804 <.LC14+0xec1dd8>
80703b18:	01111349 	tsteq	r1, r9, asr #6
80703b1c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80703b20:	01194296 			; <UNDEFINED> instruction: 0x01194296
80703b24:	0f000013 	svceq	0x00000013
80703b28:	08030034 	stmdaeq	r3, {r2, r4, r5}
80703b2c:	0b3b0b3a 	bleq	815c681c <.LC14+0xec1df0>
80703b30:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80703b34:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
80703b38:	03193f01 	tsteq	r9, #1, 30
80703b3c:	3b0b3a0e 	blcc	809d237c <.LC14+0x2cd950>
80703b40:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
80703b44:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80703b48:	96184006 	ldrls	r4, [r8], -r6
80703b4c:	13011942 	movwne	r1, #6466	; 0x1942
80703b50:	05110000 	ldreq	r0, [r1, #-0]
80703b54:	3a080300 	bcc	8090475c <.LC14+0x1ffd30>
80703b58:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
80703b5c:	00180213 	andseq	r0, r8, r3, lsl r2
80703b60:	00051200 	andeq	r1, r5, r0, lsl #4
80703b64:	0b3a0e03 	bleq	81587378 <.LC14+0xe8294c>
80703b68:	1349053b 	movtne	r0, #38203	; 0x953b
80703b6c:	00001802 	andeq	r1, r0, r2, lsl #16
80703b70:	03003413 	movweq	r3, #1043	; 0x413
80703b74:	3b0b3a08 	blcc	809d239c <.LC14+0x2cd970>
80703b78:	02134905 	andseq	r4, r3, #81920	; 0x14000
80703b7c:	14000018 	strne	r0, [r0], #-24	; 0xffffffe8
80703b80:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
80703b84:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
80703b88:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80703b8c:	2e150000 	cdpcs	0, 1, cr0, cr5, cr0, {0}
80703b90:	03193f01 	tsteq	r9, #1, 30
80703b94:	3b0b3a0e 	blcc	809d23d4 <.LC14+0x2cd9a8>
80703b98:	49192705 	ldmdbmi	r9, {r0, r2, r8, r9, sl, sp}
80703b9c:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
80703ba0:	96184006 	ldrls	r4, [r8], -r6
80703ba4:	00001942 	andeq	r1, r0, r2, asr #18
80703ba8:	00001c00 	andeq	r1, r0, r0, lsl #24
80703bac:	68000200 	stmdavs	r0, {r9}
80703bb0:	04807036 	streq	r7, [r0], #54	; 0x36
80703bb4:	00000000 	andeq	r0, r0, r0
80703bb8:	702c1000 	eorvc	r1, ip, r0
80703bbc:	000a5880 	andeq	r5, sl, r0, lsl #17
	...
80703bc8:	0001b400 	andeq	fp, r1, r0, lsl #8
80703bcc:	6d000200 	sfmvs	f0, 4, [r0, #-0]
80703bd0:	02000000 	andeq	r0, r0, #0
80703bd4:	0d0efb01 	vstreq	d15, [lr, #-4]
80703bd8:	01010100 	mrseq	r0, (UNDEF: 17)
80703bdc:	00000001 	andeq	r0, r0, r1
80703be0:	01000001 	tsteq	r0, r1
80703be4:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
80703be8:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
80703bec:	72612f65 	rsbvc	r2, r1, #404	; 0x194
80703bf0:	612f6863 	teqvs	pc, r3, ror #16
80703bf4:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
80703bf8:	656c2d61 	strbvs	r2, [ip, #-3425]!	; 0xfffff29f
80703bfc:	6d73612f 	ldfvse	f6, [r3, #-188]!	; 0xffffff44
80703c00:	69726400 	ldmdbvs	r2!, {sl, sp, lr}^
80703c04:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
80703c08:	0064732f 	rsbeq	r7, r4, pc, lsr #6
80703c0c:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
80703c10:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
80703c14:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
80703c18:	69000073 	stmdbvs	r0, {r0, r1, r4, r5, r6}
80703c1c:	00682e6f 	rsbeq	r2, r8, pc, ror #28
80703c20:	73000001 	movwvc	r0, #1
80703c24:	797a2d64 	ldmdbvc	sl!, {r2, r5, r6, r8, sl, fp, sp}^
80703c28:	3037716e 	eorscc	r7, r7, lr, ror #2
80703c2c:	632e3030 	teqvs	lr, #48	; 0x30
80703c30:	00000200 	andeq	r0, r0, r0, lsl #4
80703c34:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
80703c38:	00682e73 	rsbeq	r2, r8, r3, ror lr
80703c3c:	00000003 	andeq	r0, r0, r3
80703c40:	10020500 	andne	r0, r2, r0, lsl #10
80703c44:	0380702c 	orreq	r7, r0, #44	; 0x2c
80703c48:	67830113 	usada8vs	r3, r3, r1, r0
80703c4c:	85678385 	strbhi	r8, [r7, #-901]!	; 0xfffffc7b
80703c50:	bb864b83 	bllt	7e896a64 <__high_exec_veneer+0x7e2966cc>
80703c54:	67bb8567 	ldrvs	r8, [fp, r7, ror #10]!
80703c58:	04679f85 	strbteq	r9, [r7], #-3973	; 0xfffff07b
80703c5c:	826a0302 	rsbhi	r0, sl, #134217728	; 0x8000000
80703c60:	0200836a 	andeq	r8, r0, #-1476395007	; 0xa8000001
80703c64:	2e060104 	adfcss	f0, f6, f4
80703c68:	9f4bdb06 	svcls	0x004bdb06
80703c6c:	01040200 	mrseq	r0, R12_usr
80703c70:	d9062e06 	stmdble	r6, {r1, r2, r9, sl, fp, sp}
80703c74:	9f4ba1bb 	svcls	0x004ba1bb
80703c78:	859f4b89 	ldrhi	r4, [pc, #2953]	; 80704809 <mode_switch+0x29>
80703c7c:	6a838583 	bvs	7e7e5290 <__high_exec_veneer+0x7e1e4ef8>
80703c80:	152a029f 	strne	r0, [sl, #-671]!	; 0xfffffd61
80703c84:	020d032b 	andeq	r0, sp, #-1409286144	; 0xac000000
80703c88:	848a0168 	strhi	r0, [sl], #360	; 0x168
80703c8c:	84848585 	strhi	r8, [r4], #1413	; 0x585
80703c90:	825f0385 	subshi	r0, pc, #335544322	; 0x14000002
80703c94:	672e2403 	strvs	r2, [lr, -r3, lsl #8]!
80703c98:	da820c03 	ble	7e786cac <__high_exec_veneer+0x7e186914>
80703c9c:	020083a0 	andeq	r8, r0, #160, 6	; 0x80000002
80703ca0:	82060104 	andhi	r0, r6, #4, 2
80703ca4:	02004b06 	andeq	r4, r0, #6144	; 0x1800
80703ca8:	82060104 	andhi	r0, r6, #4, 2
80703cac:	02040200 	andeq	r0, r4, #0, 4
80703cb0:	9f4c0682 	svcls	0x004c0682
80703cb4:	84838384 	strhi	r8, [r3], #900	; 0x384
80703cb8:	4c314dbd 	ldcmi	13, cr4, [r1], #-756	; 0xfffffd0c
80703cbc:	a0304b31 	eorsge	r4, r0, r1, lsr fp
80703cc0:	02009fa1 	andeq	r9, r0, #644	; 0x284
80703cc4:	82060104 	andhi	r0, r6, #4, 2
80703cc8:	83844c06 	orrhi	r4, r4, #1536	; 0x600
80703ccc:	6614032f 	ldrvs	r0, [r4], -pc, lsr #6
80703cd0:	0200836a 	andeq	r8, r0, #-1476395007	; 0xa8000001
80703cd4:	82060104 	andhi	r0, r6, #4, 2
80703cd8:	bb4c4c06 	bllt	81a16cf8 <.LC14+0x13122cc>
80703cdc:	01040200 	mrseq	r0, R12_usr
80703ce0:	4c066606 	stcmi	6, cr6, [r6], {6}
80703ce4:	040200bb 	streq	r0, [r2], #-187	; 0xffffff45
80703ce8:	06660601 	strbteq	r0, [r6], -r1, lsl #12
80703cec:	0200834b 	andeq	r8, r0, #738197505	; 0x2c000001
80703cf0:	82060104 	andhi	r0, r6, #4, 2
80703cf4:	00bb4d06 	adcseq	r4, fp, r6, lsl #26
80703cf8:	06010402 	streq	r0, [r1], -r2, lsl #8
80703cfc:	d84b0666 	stmdale	fp, {r1, r2, r5, r6, r9, sl}^
80703d00:	01040200 	mrseq	r0, R12_usr
80703d04:	4b066606 	blmi	8089d524 <.LC14+0x198af8>
80703d08:	02006883 	andeq	r6, r0, #8585216	; 0x830000
80703d0c:	82060104 	andhi	r0, r6, #4, 2
80703d10:	bb4c6706 	bllt	81a1d930 <.LC14+0x1318f04>
80703d14:	01040200 	mrseq	r0, R12_usr
80703d18:	4e066606 	cfmadd32mi	mvax0, mvfx6, mvfx6, mvfx6
80703d1c:	040200bb 	streq	r0, [r2], #-187	; 0xffffff45
80703d20:	06660601 	strbteq	r0, [r6], -r1, lsl #12
80703d24:	bb69d74b 	bllt	82179a58 <.LC14+0x1a7502c>
80703d28:	01040200 	mrseq	r0, R12_usr
80703d2c:	4d066606 	stcmi	6, cr6, [r6, #-24]	; 0xffffffe8
80703d30:	040200bb 	streq	r0, [r2], #-187	; 0xffffff45
80703d34:	06660601 	strbteq	r0, [r6], -r1, lsl #12
80703d38:	19032f4b 	stmdbne	r3, {r0, r1, r3, r6, r8, r9, sl, fp, sp}
80703d3c:	0083db66 	addeq	sp, r3, r6, ror #22
80703d40:	06010402 	streq	r0, [r1], -r2, lsl #8
80703d44:	844d0682 	strbhi	r0, [sp], #-1666	; 0xfffff97e
80703d48:	040200bb 	streq	r0, [r2], #-187	; 0xffffff45
80703d4c:	06660601 	strbteq	r0, [r6], -r1, lsl #12
80703d50:	84839f4d 	strhi	r9, [r3], #3917	; 0xf4d
80703d54:	f583834c 			; <UNDEFINED> instruction: 0xf583834c
80703d58:	032f8384 	teqeq	pc, #132, 6	; 0x10000002
80703d5c:	83db6619 	bicshi	r6, fp, #26214400	; 0x1900000
80703d60:	01040200 	mrseq	r0, R12_usr
80703d64:	4d068206 	sfmmi	f0, 1, [r6, #-24]	; 0xffffffe8
80703d68:	0200bb84 	andeq	fp, r0, #132, 22	; 0x21000
80703d6c:	66060104 	strvs	r0, [r6], -r4, lsl #2
80703d70:	839f4d06 	orrshi	r4, pc, #384	; 0x180
80703d74:	83844c84 	orrhi	r4, r4, #132, 24	; 0x8400
80703d78:	2f8384f4 	svccs	0x008384f4
80703d7c:	01000602 	tsteq	r0, r2, lsl #12
80703d80:	5f647301 	svcpl	0x00647301
80703d84:	5f616d64 	svcpl	0x00616d64
80703d88:	6e697073 	mcrvs	0, 3, r7, cr9, cr3, {3}
80703d8c:	6165725f 	cmnvs	r5, pc, asr r2
80703d90:	74730064 	ldrbtvc	r0, [r3], #-100	; 0xffffff9c
80703d94:	00657461 	rsbeq	r7, r5, r1, ror #8
80703d98:	31706d74 	cmncc	r0, r4, ror sp
80703d9c:	6f630036 	svcvs	0x00630036
80703da0:	00746e75 	rsbseq	r6, r4, r5, ror lr
80703da4:	36316e69 	ldrtcc	r6, [r1], -r9, ror #28
80703da8:	74756f00 	ldrbtvc	r6, [r5], #-3840	; 0xfffff100
80703dac:	64730038 	ldrbtvs	r0, [r3], #-56	; 0xffffffc8
80703db0:	6970735f 	ldmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
80703db4:	65735f6e 	ldrbvs	r5, [r3, #-3950]!	; 0xfffff092
80703db8:	635f646e 	cmpvs	pc, #1845493760	; 0x6e000000
80703dbc:	6300646d 	movwvs	r6, #1133	; 0x46d
80703dc0:	74647261 	strbtvc	r7, [r4], #-609	; 0xfffffd9f
80703dc4:	00657079 	rsbeq	r7, r5, r9, ror r0
80703dc8:	3174756f 	cmncc	r4, pc, ror #10
80703dcc:	65720036 	ldrbvs	r0, [r2, #-54]!	; 0xffffffca
80703dd0:	64007073 	strvs	r7, [r0], #-115	; 0xffffff8d
80703dd4:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0xfffff68e
80703dd8:	732f7372 	teqvc	pc, #-939524095	; 0xc8000001
80703ddc:	64732f64 	ldrbtvs	r2, [r3], #-3940	; 0xfffff09c
80703de0:	6e797a2d 	vaddvs.f32	s15, s18, s27
80703de4:	30303771 	eorscc	r3, r0, r1, ror r7
80703de8:	00632e30 	rsbeq	r2, r3, r0, lsr lr
80703dec:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
80703df0:	00363165 	eorseq	r3, r6, r5, ror #2
80703df4:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
80703df8:	00323365 	eorseq	r3, r2, r5, ror #6
80703dfc:	75736572 	ldrbvc	r6, [r3, #-1394]!	; 0xfffffa8e
80703e00:	7300746c 	movwvc	r7, #1132	; 0x46c
80703e04:	72665f64 	rsbvc	r5, r6, #100, 30	; 0x190
80703e08:	5f656d61 	svcpl	0x00656d61
80703e0c:	00646d63 	rsbeq	r6, r4, r3, ror #26
80703e10:	7366666f 	cmnvc	r6, #116391936	; 0x6f00000
80703e14:	73007465 	movwvc	r7, #1125	; 0x465
80703e18:	70735f64 	rsbsvc	r5, r3, r4, ror #30
80703e1c:	695f6e69 	ldmdbvs	pc, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^	; <UNPREDICTABLE>
80703e20:	5f74696e 	svcpl	0x0074696e
80703e24:	5f6d656d 	svcpl	0x006d656d
80703e28:	64726163 	ldrbtvs	r6, [r2], #-355	; 0xfffffe9d
80703e2c:	5f647300 	svcpl	0x00647300
80703e30:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xfffff197
80703e34:	706d7400 	rsbvc	r7, sp, r0, lsl #8
80703e38:	64730038 	ldrbtvs	r0, [r3], #-56	; 0xffffffc8
80703e3c:	616d645f 	cmnvs	sp, pc, asr r4
80703e40:	6970735f 	ldmdbvs	r0!, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
80703e44:	72775f6e 	rsbsvc	r5, r7, #440	; 0x1b8
80703e48:	00657469 	rsbeq	r7, r5, r9, ror #8
80703e4c:	0000000c 	andeq	r0, r0, ip
80703e50:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80703e54:	7c020001 	stcvc	0, cr0, [r2], {1}
80703e58:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80703e5c:	0000001c 	andeq	r0, r0, ip, lsl r0
80703e60:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703e64:	80702c10 	rsbshi	r2, r0, r0, lsl ip
80703e68:	0000002c 	andeq	r0, r0, ip, lsr #32
80703e6c:	8b040e42 	blhi	8080777c <.LC14+0x102d50>
80703e70:	0b0d4201 	bleq	80a5467c <.LC14+0x34fc50>
80703e74:	420d0d4e 	andmi	r0, sp, #4992	; 0x1380
80703e78:	00000ecb 	andeq	r0, r0, fp, asr #29
80703e7c:	0000001c 	andeq	r0, r0, ip, lsl r0
80703e80:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703e84:	80702c3c 	rsbshi	r2, r0, ip, lsr ip
80703e88:	0000002c 	andeq	r0, r0, ip, lsr #32
80703e8c:	8b040e42 	blhi	8080779c <.LC14+0x102d70>
80703e90:	0b0d4201 	bleq	80a5469c <.LC14+0x34fc70>
80703e94:	420d0d4e 	andmi	r0, sp, #4992	; 0x1380
80703e98:	00000ecb 	andeq	r0, r0, fp, asr #29
80703e9c:	0000001c 	andeq	r0, r0, ip, lsl r0
80703ea0:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703ea4:	80702c68 	rsbshi	r2, r0, r8, ror #24
80703ea8:	00000028 	andeq	r0, r0, r8, lsr #32
80703eac:	8b040e42 	blhi	808077bc <.LC14+0x102d90>
80703eb0:	0b0d4201 	bleq	80a546bc <.LC14+0x34fc90>
80703eb4:	420d0d4c 	andmi	r0, sp, #76, 26	; 0x1300
80703eb8:	00000ecb 	andeq	r0, r0, fp, asr #29
80703ebc:	0000001c 	andeq	r0, r0, ip, lsl r0
80703ec0:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703ec4:	80702c90 			; <UNDEFINED> instruction: 0x80702c90
80703ec8:	00000034 	andeq	r0, r0, r4, lsr r0
80703ecc:	8b040e42 	blhi	808077dc <.LC14+0x102db0>
80703ed0:	0b0d4201 	bleq	80a546dc <.LC14+0x34fcb0>
80703ed4:	420d0d52 	andmi	r0, sp, #5248	; 0x1480
80703ed8:	00000ecb 	andeq	r0, r0, fp, asr #29
80703edc:	0000001c 	andeq	r0, r0, ip, lsl r0
80703ee0:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703ee4:	80702cc4 	rsbshi	r2, r0, r4, asr #25
80703ee8:	00000034 	andeq	r0, r0, r4, lsr r0
80703eec:	8b040e42 	blhi	808077fc <.LC14+0x102dd0>
80703ef0:	0b0d4201 	bleq	80a546fc <.LC14+0x34fcd0>
80703ef4:	420d0d52 	andmi	r0, sp, #5248	; 0x1480
80703ef8:	00000ecb 	andeq	r0, r0, fp, asr #29
80703efc:	0000001c 	andeq	r0, r0, ip, lsl r0
80703f00:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703f04:	80702cf8 	ldrshthi	r2, [r0], #-200	; 0xffffff38
80703f08:	00000030 	andeq	r0, r0, r0, lsr r0
80703f0c:	8b040e42 	blhi	8080781c <.LC14+0x102df0>
80703f10:	0b0d4201 	bleq	80a5471c <.LC14+0x34fcf0>
80703f14:	420d0d50 	andmi	r0, sp, #80, 26	; 0x1400
80703f18:	00000ecb 	andeq	r0, r0, fp, asr #29
80703f1c:	0000001c 	andeq	r0, r0, ip, lsl r0
80703f20:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703f24:	80702d28 	rsbshi	r2, r0, r8, lsr #26
80703f28:	00000138 	andeq	r0, r0, r8, lsr r1
80703f2c:	8b080e42 	blhi	8090783c <.LC14+0x202e10>
80703f30:	42018e02 	andmi	r8, r1, #2, 28
80703f34:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80703f38:	080d0c96 	stmdaeq	sp, {r1, r2, r4, r7, sl, fp}
80703f3c:	0000001c 	andeq	r0, r0, ip, lsl r0
80703f40:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703f44:	80702e60 	rsbshi	r2, r0, r0, ror #28
80703f48:	000001dc 	ldrdeq	r0, [r0], -ip
80703f4c:	8b040e42 	blhi	8080785c <.LC14+0x102e30>
80703f50:	0b0d4201 	bleq	80a5475c <.LC14+0x34fd30>
80703f54:	0d0de602 	stceq	6, cr14, [sp, #-8]
80703f58:	000ecb42 	andeq	ip, lr, r2, asr #22
80703f5c:	0000001c 	andeq	r0, r0, ip, lsl r0
80703f60:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703f64:	8070303c 	rsbshi	r3, r0, ip, lsr r0
80703f68:	00000194 	muleq	r0, r4, r1
80703f6c:	8b080e42 	blhi	8090787c <.LC14+0x202e50>
80703f70:	42018e02 	andmi	r8, r1, #2, 28
80703f74:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80703f78:	080d0cc4 	stmdaeq	sp, {r2, r6, r7, sl, fp}
80703f7c:	00000020 	andeq	r0, r0, r0, lsr #32
80703f80:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703f84:	807031d0 	ldrsbthi	r3, [r0], #-16
80703f88:	00000240 	andeq	r0, r0, r0, asr #4
80703f8c:	8b080e42 	blhi	8090789c <.LC14+0x202e70>
80703f90:	42018e02 	andmi	r8, r1, #2, 28
80703f94:	03040b0c 	movweq	r0, #19212	; 0x4b0c
80703f98:	0d0c011a 	stfeqs	f0, [ip, #-104]	; 0xffffff98
80703f9c:	00000008 	andeq	r0, r0, r8
80703fa0:	0000001c 	andeq	r0, r0, ip, lsl r0
80703fa4:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703fa8:	80703410 	rsbshi	r3, r0, r0, lsl r4
80703fac:	0000012c 	andeq	r0, r0, ip, lsr #2
80703fb0:	8b080e42 	blhi	809078c0 <.LC14+0x202e94>
80703fb4:	42018e02 	andmi	r8, r1, #2, 28
80703fb8:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80703fbc:	080d0c90 	stmdaeq	sp, {r4, r7, sl, fp}
80703fc0:	0000001c 	andeq	r0, r0, ip, lsl r0
80703fc4:	80703e4c 	rsbshi	r3, r0, ip, asr #28
80703fc8:	8070353c 	rsbshi	r3, r0, ip, lsr r5
80703fcc:	0000012c 	andeq	r0, r0, ip, lsr #2
80703fd0:	8b080e42 	blhi	809078e0 <.LC14+0x202eb4>
80703fd4:	42018e02 	andmi	r8, r1, #2, 28
80703fd8:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80703fdc:	080d0c90 	stmdaeq	sp, {r4, r7, sl, fp}
80703fe0:	00002e41 	andeq	r2, r0, r1, asr #28
80703fe4:	61656100 	cmnvs	r5, r0, lsl #2
80703fe8:	01006962 	tsteq	r0, r2, ror #18
80703fec:	00000024 	andeq	r0, r0, r4, lsr #32
80703ff0:	412d3705 	teqmi	sp, r5, lsl #14
80703ff4:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80703ff8:	09010841 	stmdbeq	r1, {r0, r6, fp}
80703ffc:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
80704000:	17011501 	strne	r1, [r1, -r1, lsl #10]
80704004:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80704008:	1e011a01 	vmlane.f32	s2, s2, s2
8070400c:	00012206 	andeq	r2, r1, r6, lsl #4

80704010 <in32>:
80704010:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80704014:	e28db000 	add	fp, sp, #0
80704018:	e24dd00c 	sub	sp, sp, #12
8070401c:	e50b0008 	str	r0, [fp, #-8]
80704020:	e51b3008 	ldr	r3, [fp, #-8]
80704024:	e5933000 	ldr	r3, [r3]
80704028:	e1a00003 	mov	r0, r3
8070402c:	e24bd000 	sub	sp, fp, #0
80704030:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80704034:	e12fff1e 	bx	lr

80704038 <out32>:
80704038:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
8070403c:	e28db000 	add	fp, sp, #0
80704040:	e24dd00c 	sub	sp, sp, #12
80704044:	e50b0008 	str	r0, [fp, #-8]
80704048:	e50b100c 	str	r1, [fp, #-12]
8070404c:	e51b3008 	ldr	r3, [fp, #-8]
80704050:	e51b200c 	ldr	r2, [fp, #-12]
80704054:	e5832000 	str	r2, [r3]
80704058:	e1a00000 	nop			; (mov r0, r0)
8070405c:	e24bd000 	sub	sp, fp, #0
80704060:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80704064:	e12fff1e 	bx	lr

80704068 <uart_init>:
80704068:	e92d4800 	push	{fp, lr}
8070406c:	e28db004 	add	fp, sp, #4
80704070:	e3011fff 	movw	r1, #8191	; 0x1fff
80704074:	e301000c 	movw	r0, #4108	; 0x100c
80704078:	e34e0000 	movt	r0, #57344	; 0xe000
8070407c:	ebffffed 	bl	80704038 <out32>
80704080:	eb00002d 	bl	8070413c <uart_disable>
80704084:	e3a01003 	mov	r1, #3
80704088:	e3a00a01 	mov	r0, #4096	; 0x1000
8070408c:	e34e0000 	movt	r0, #57344	; 0xe000
80704090:	ebffffe8 	bl	80704038 <out32>
80704094:	e3011fff 	movw	r1, #8191	; 0x1fff
80704098:	e3010014 	movw	r0, #4116	; 0x1014
8070409c:	e34e0000 	movt	r0, #57344	; 0xe000
807040a0:	ebffffe4 	bl	80704038 <out32>
807040a4:	e3a01020 	mov	r1, #32
807040a8:	e3010004 	movw	r0, #4100	; 0x1004
807040ac:	e34e0000 	movt	r0, #57344	; 0xe000
807040b0:	ebffffe0 	bl	80704038 <out32>
807040b4:	e3a01020 	mov	r1, #32
807040b8:	e3010020 	movw	r0, #4128	; 0x1020
807040bc:	e34e0000 	movt	r0, #57344	; 0xe000
807040c0:	ebffffdc 	bl	80704038 <out32>
807040c4:	e3a01020 	mov	r1, #32
807040c8:	e3010044 	movw	r0, #4164	; 0x1044
807040cc:	e34e0000 	movt	r0, #57344	; 0xe000
807040d0:	ebffffd8 	bl	80704038 <out32>
807040d4:	e3a01000 	mov	r1, #0
807040d8:	e301001c 	movw	r0, #4124	; 0x101c
807040dc:	e34e0000 	movt	r0, #57344	; 0xe000
807040e0:	ebffffd4 	bl	80704038 <out32>
807040e4:	e3a0103e 	mov	r1, #62	; 0x3e
807040e8:	e3010018 	movw	r0, #4120	; 0x1018
807040ec:	e34e0000 	movt	r0, #57344	; 0xe000
807040f0:	ebffffd0 	bl	80704038 <out32>
807040f4:	e3a01006 	mov	r1, #6
807040f8:	e3010034 	movw	r0, #4148	; 0x1034
807040fc:	e34e0000 	movt	r0, #57344	; 0xe000
80704100:	ebffffcc 	bl	80704038 <out32>
80704104:	e3a01f4a 	mov	r1, #296	; 0x128
80704108:	e3a00a01 	mov	r0, #4096	; 0x1000
8070410c:	e34e0000 	movt	r0, #57344	; 0xe000
80704110:	ebffffc8 	bl	80704038 <out32>
80704114:	e1a00000 	nop			; (mov r0, r0)
80704118:	e8bd8800 	pop	{fp, pc}

8070411c <uart_enable>:
8070411c:	e92d4800 	push	{fp, lr}
80704120:	e28db004 	add	fp, sp, #4
80704124:	e3a01014 	mov	r1, #20
80704128:	e3a00a01 	mov	r0, #4096	; 0x1000
8070412c:	e34e0000 	movt	r0, #57344	; 0xe000
80704130:	ebffffc0 	bl	80704038 <out32>
80704134:	e1a00000 	nop			; (mov r0, r0)
80704138:	e8bd8800 	pop	{fp, pc}

8070413c <uart_disable>:
8070413c:	e92d4800 	push	{fp, lr}
80704140:	e28db004 	add	fp, sp, #4
80704144:	e3a01028 	mov	r1, #40	; 0x28
80704148:	e3a00a01 	mov	r0, #4096	; 0x1000
8070414c:	e34e0000 	movt	r0, #57344	; 0xe000
80704150:	ebffffb8 	bl	80704038 <out32>
80704154:	e1a00000 	nop			; (mov r0, r0)
80704158:	e8bd8800 	pop	{fp, pc}

8070415c <uart_spin_getbyte>:
8070415c:	e92d4800 	push	{fp, lr}
80704160:	e28db004 	add	fp, sp, #4
80704164:	e1a00000 	nop			; (mov r0, r0)
80704168:	e301002c 	movw	r0, #4140	; 0x102c
8070416c:	e34e0000 	movt	r0, #57344	; 0xe000
80704170:	ebffffa6 	bl	80704010 <in32>
80704174:	e1a03000 	mov	r3, r0
80704178:	e2033002 	and	r3, r3, #2
8070417c:	e3530000 	cmp	r3, #0
80704180:	1afffff8 	bne	80704168 <uart_spin_getbyte+0xc>
80704184:	e3010030 	movw	r0, #4144	; 0x1030
80704188:	e34e0000 	movt	r0, #57344	; 0xe000
8070418c:	ebffff9f 	bl	80704010 <in32>
80704190:	e1a03000 	mov	r3, r0
80704194:	e6ef3073 	uxtb	r3, r3
80704198:	e1a00003 	mov	r0, r3
8070419c:	e8bd8800 	pop	{fp, pc}

807041a0 <uart_spin_putbyte>:
807041a0:	e92d4800 	push	{fp, lr}
807041a4:	e28db004 	add	fp, sp, #4
807041a8:	e24dd008 	sub	sp, sp, #8
807041ac:	e1a03000 	mov	r3, r0
807041b0:	e54b3005 	strb	r3, [fp, #-5]
807041b4:	e1a00000 	nop			; (mov r0, r0)
807041b8:	e301002c 	movw	r0, #4140	; 0x102c
807041bc:	e34e0000 	movt	r0, #57344	; 0xe000
807041c0:	ebffff92 	bl	80704010 <in32>
807041c4:	e1a03000 	mov	r3, r0
807041c8:	e2033010 	and	r3, r3, #16
807041cc:	e3530000 	cmp	r3, #0
807041d0:	1afffff8 	bne	807041b8 <uart_spin_putbyte+0x18>
807041d4:	e55b3005 	ldrb	r3, [fp, #-5]
807041d8:	e1a01003 	mov	r1, r3
807041dc:	e3010030 	movw	r0, #4144	; 0x1030
807041e0:	e34e0000 	movt	r0, #57344	; 0xe000
807041e4:	ebffff93 	bl	80704038 <out32>
807041e8:	e1a00000 	nop			; (mov r0, r0)
807041ec:	e24bd004 	sub	sp, fp, #4
807041f0:	e8bd8800 	pop	{fp, pc}
807041f4:	0000012a 	andeq	r0, r0, sl, lsr #2
807041f8:	43220004 	teqmi	r2, #4
807041fc:	01048070 	tsteq	r4, r0, ror r0
80704200:	807011f7 	ldrshthi	r1, [r0], #-23	; 0xffffffe9
80704204:	7044e80c 	subvc	lr, r4, ip, lsl #16
80704208:	70128680 	andsvc	r8, r2, r0, lsl #13
8070420c:	70401080 	subvc	r1, r0, r0, lsl #1
80704210:	0001e480 	andeq	lr, r1, r0, lsl #9
80704214:	7043f700 	subvc	pc, r3, r0, lsl #14
80704218:	08010280 	stmdaeq	r1, {r7, r9}
8070421c:	80701248 	rsbshi	r1, r0, r8, asr #4
80704220:	4a060102 	bmi	80884630 <.LC14+0x17fc04>
80704224:	02807012 	addeq	r7, r0, #18
80704228:	12560702 	subsne	r0, r6, #524288	; 0x80000
8070422c:	02028070 	andeq	r8, r2, #112	; 0x70
80704230:	7012fa05 	andsvc	pc, r2, r5, lsl #20
80704234:	07040280 	streq	r0, [r4, -r0, lsl #5]
80704238:	807012a9 	rsbshi	r1, r0, r9, lsr #5
8070423c:	69050403 	stmdbvs	r5, {r0, r1, sl}
80704240:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
80704244:	12a40704 	adcne	r0, r4, #4, 14	; 0x100000
80704248:	08028070 	stmdaeq	r2, {r4, r5, r6, pc}
8070424c:	70129f07 	andsvc	r9, r2, r7, lsl #30
80704250:	05080280 	streq	r0, [r8, #-640]	; 0xfffffd80
80704254:	807012df 	ldrsbthi	r1, [r0], #-47	; 0xffffffd1
80704258:	e4050402 	str	r0, [r5], #-1026	; 0xfffffbfe
8070425c:	04807012 	streq	r7, [r0], #18
80704260:	8070449e 			; <UNDEFINED> instruction: 0x8070449e
80704264:	004f1d01 	subeq	r1, pc, r1, lsl #26
80704268:	40100000 	andsmi	r0, r0, r0
8070426c:	00288070 	eoreq	r8, r8, r0, ror r0
80704270:	9c010000 	stcls	0, cr0, [r1], {-0}
80704274:	00000093 	muleq	r0, r3, r0
80704278:	7044a305 	subvc	sl, r4, r5, lsl #6
8070427c:	4f1d0180 	svcmi	0x001d0180
80704280:	02000000 	andeq	r0, r0, #0
80704284:	06007491 			; <UNDEFINED> instruction: 0x06007491
80704288:	807044b7 	ldrhthi	r4, [r0], #-71	; 0xffffffb9
8070428c:	40382d01 	eorsmi	r2, r8, r1, lsl #26
80704290:	00308070 	eorseq	r8, r0, r0, ror r0
80704294:	9c010000 	stcls	0, cr0, [r1], {-0}
80704298:	000000c5 	andeq	r0, r0, r5, asr #1
8070429c:	7044a305 	subvc	sl, r4, r5, lsl #6
807042a0:	4f2d0180 	svcmi	0x002d0180
807042a4:	02000000 	andeq	r0, r0, #0
807042a8:	b2057491 	andlt	r7, r5, #-1862270976	; 0x91000000
807042ac:	01807044 	orreq	r7, r0, r4, asr #32
807042b0:	00004f2d 	andeq	r4, r0, sp, lsr #30
807042b4:	70910200 	addsvc	r0, r1, r0, lsl #4
807042b8:	44a80700 	strtmi	r0, [r8], #1792	; 0x700
807042bc:	13028070 	movwne	r8, #8304	; 0x2070
807042c0:	80704068 	rsbshi	r4, r0, r8, rrx
807042c4:	000000b4 	strheq	r0, [r0], -r4
807042c8:	bd079c01 	stclt	12, cr9, [r7, #-4]
807042cc:	02807044 	addeq	r7, r0, #68	; 0x44
807042d0:	70411c2e 	subvc	r1, r1, lr, lsr #24
807042d4:	00002080 	andeq	r2, r0, r0, lsl #1
807042d8:	079c0100 	ldreq	r0, [ip, r0, lsl #2]
807042dc:	807044c9 	rsbshi	r4, r0, r9, asr #9
807042e0:	413c3402 	teqmi	ip, r2, lsl #8
807042e4:	00208070 	eoreq	r8, r0, r0, ror r0
807042e8:	9c010000 	stcls	0, cr0, [r1], {-0}
807042ec:	70450708 	subvc	r0, r5, r8, lsl #14
807042f0:	253a0280 	ldrcs	r0, [sl, #-640]!	; 0xfffffd80
807042f4:	5c000000 	stcpl	0, cr0, [r0], {-0}
807042f8:	44807041 	strmi	r7, [r0], #65	; 0x41
807042fc:	01000000 	mrseq	r0, (UNDEF: 0)
80704300:	44d6099c 	ldrbmi	r0, [r6], #2460	; 0x99c
80704304:	40028070 	andmi	r8, r2, r0, ror r0
80704308:	807041a0 	rsbshi	r4, r0, r0, lsr #3
8070430c:	00000054 	andeq	r0, r0, r4, asr r0
80704310:	14059c01 	strne	r9, [r5], #-3073	; 0xfffff3ff
80704314:	02807045 	addeq	r7, r0, #69	; 0x45
80704318:	00002540 	andeq	r2, r0, r0, asr #10
8070431c:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
80704320:	11010000 	mrsne	r0, (UNDEF: 1)
80704324:	130e2501 	movwne	r2, #58625	; 0xe501
80704328:	1b0e030b 	blne	80a84f5c <.LC14+0x380530>
8070432c:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
80704330:	00171006 	andseq	r1, r7, r6
80704334:	00240200 	eoreq	r0, r4, r0, lsl #4
80704338:	0b3e0b0b 	bleq	81686f6c <.LC14+0xf82540>
8070433c:	00000e03 	andeq	r0, r0, r3, lsl #28
80704340:	0b002403 	bleq	8070d354 <.LC14+0x8928>
80704344:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
80704348:	04000008 	streq	r0, [r0], #-8
8070434c:	0e03012e 	adfeqsp	f0, f3, #0.5
80704350:	0b3b0b3a 	bleq	815c7040 <.LC14+0xec2614>
80704354:	13491927 	movtne	r1, #39207	; 0x9927
80704358:	06120111 			; <UNDEFINED> instruction: 0x06120111
8070435c:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
80704360:	00130119 	andseq	r0, r3, r9, lsl r1
80704364:	00050500 	andeq	r0, r5, r0, lsl #10
80704368:	0b3a0e03 	bleq	81587b7c <.LC14+0xe83150>
8070436c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80704370:	00001802 	andeq	r1, r0, r2, lsl #16
80704374:	03012e06 	movweq	r2, #7686	; 0x1e06
80704378:	3b0b3a0e 	blcc	809d2bb8 <.LC14+0x2ce18c>
8070437c:	1119270b 	tstne	r9, fp, lsl #14
80704380:	40061201 	andmi	r1, r6, r1, lsl #4
80704384:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
80704388:	00001301 	andeq	r1, r0, r1, lsl #6
8070438c:	3f002e07 	svccc	0x00002e07
80704390:	3a0e0319 	bcc	80a84ffc <.LC14+0x3805d0>
80704394:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
80704398:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
8070439c:	96184006 	ldrls	r4, [r8], -r6
807043a0:	00001942 	andeq	r1, r0, r2, asr #18
807043a4:	3f002e08 	svccc	0x00002e08
807043a8:	3a0e0319 	bcc	80a85014 <.LC14+0x3805e8>
807043ac:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
807043b0:	11134919 	tstne	r3, r9, lsl r9
807043b4:	40061201 	andmi	r1, r6, r1, lsl #4
807043b8:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
807043bc:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
807043c0:	03193f01 	tsteq	r9, #1, 30
807043c4:	3b0b3a0e 	blcc	809d2c04 <.LC14+0x2ce1d8>
807043c8:	1119270b 	tstne	r9, fp, lsl #14
807043cc:	40061201 	andmi	r1, r6, r1, lsl #4
807043d0:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
807043d4:	1c000000 	stcne	0, cr0, [r0], {-0}
807043d8:	02000000 	andeq	r0, r0, #0
807043dc:	7041f400 	subvc	pc, r1, r0, lsl #8
807043e0:	00000480 	andeq	r0, r0, r0, lsl #9
807043e4:	10000000 	andne	r0, r0, r0
807043e8:	e4807040 	str	r7, [r0], #64	; 0x40
807043ec:	00000001 	andeq	r0, r0, r1
807043f0:	00000000 	andeq	r0, r0, r0
807043f4:	a3000000 	movwge	r0, #0
807043f8:	02000000 	andeq	r0, r0, #0
807043fc:	00005a00 	andeq	r5, r0, r0, lsl #20
80704400:	fb010200 	blx	80744c0a <.LC14+0x401de>
80704404:	01000d0e 	tsteq	r0, lr, lsl #26
80704408:	00010101 	andeq	r0, r1, r1, lsl #2
8070440c:	00010000 	andeq	r0, r1, r0
80704410:	2f2e0100 	svccs	0x002e0100
80704414:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
80704418:	2f656475 	svccs	0x00656475
8070441c:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
80704420:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
80704424:	2d613776 	stclcs	7, cr3, [r1, #-472]!	; 0xfffffe28
80704428:	612f656c 	teqvs	pc, ip, ror #10
8070442c:	64006d73 	strvs	r6, [r0], #-3443	; 0xfffff28d
80704430:	65766972 	ldrbvs	r6, [r6, #-2418]!	; 0xfffff68e
80704434:	732f7372 	teqvc	pc, #-939524095	; 0xc8000001
80704438:	61697265 	cmnvs	r9, r5, ror #4
8070443c:	6900006c 	stmdbvs	r0, {r2, r3, r5, r6}
80704440:	00682e6f 	rsbeq	r2, r8, pc, ror #28
80704444:	75000001 	strvc	r0, [r0, #-1]
80704448:	2d747261 	lfmcs	f7, 2, [r4, #-388]!	; 0xfffffe7c
8070444c:	716e797a 	smcvc	59290	; 0xe79a
80704450:	30303037 	eorscc	r3, r0, r7, lsr r0
80704454:	0200632e 	andeq	r6, r0, #-1207959552	; 0xb8000000
80704458:	00000000 	andeq	r0, r0, r0
8070445c:	40100205 	andsmi	r0, r0, r5, lsl #4
80704460:	1d038070 	stcne	0, cr8, [r3, #-448]	; 0xfffffe40
80704464:	034b8301 	movteq	r8, #45825	; 0xb301
80704468:	679f820e 	ldrvs	r8, [pc, lr, lsl #4]
8070446c:	64030204 	strvs	r0, [r3], #-516	; 0xfffffdfc
80704470:	30844c82 	addcc	r4, r4, r2, lsl #25
80704474:	83868484 	orrhi	r8, r6, #132, 8	; 0x84000000
80704478:	84838484 	strhi	r8, [r3], #1156	; 0x484
8070447c:	834c4d84 	movthi	r4, #52612	; 0xcd84
80704480:	4d834c4d 	stcmi	12, cr4, [r3, #308]	; 0x134
80704484:	0402004b 	streq	r0, [r2], #-75	; 0xffffffb5
80704488:	062e0601 	strteq	r0, [lr], -r1, lsl #12
8070448c:	9f4d9fd7 	svcls	0x004d9fd7
80704490:	01040200 	mrseq	r0, R12_usr
80704494:	d7062e06 	strle	r2, [r6, -r6, lsl #28]
80704498:	0006029f 	muleq	r6, pc, r2	; <UNPREDICTABLE>
8070449c:	6e690101 	powvse	f0, f1, f1
807044a0:	61003233 	tstvs	r0, r3, lsr r2
807044a4:	00726464 	rsbseq	r6, r2, r4, ror #8
807044a8:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
807044ac:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
807044b0:	61640074 	smcvs	16388	; 0x4004
807044b4:	6f006174 	svcvs	0x00006174
807044b8:	32337475 	eorscc	r7, r3, #1962934272	; 0x75000000
807044bc:	72617500 	rsbvc	r7, r1, #0, 10
807044c0:	6e655f74 	mcrvs	15, 3, r5, cr5, cr4, {3}
807044c4:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
807044c8:	72617500 	rsbvc	r7, r1, #0, 10
807044cc:	69645f74 	stmdbvs	r4!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
807044d0:	6c626173 	stfvse	f6, [r2], #-460	; 0xfffffe34
807044d4:	61750065 	cmnvs	r5, r5, rrx
807044d8:	735f7472 	cmpvc	pc, #1912602624	; 0x72000000
807044dc:	5f6e6970 	svcpl	0x006e6970
807044e0:	62747570 	rsbsvs	r7, r4, #112, 10	; 0x1c000000
807044e4:	00657479 	rsbeq	r7, r5, r9, ror r4
807044e8:	76697264 	strbtvc	r7, [r9], -r4, ror #4
807044ec:	2f737265 	svccs	0x00737265
807044f0:	69726573 	ldmdbvs	r2!, {r0, r1, r4, r5, r6, r8, sl, sp, lr}^
807044f4:	752f6c61 	strvc	r6, [pc, #-3169]!	; 8070389b <sd_dma_spin_write+0x35f>
807044f8:	2d747261 	lfmcs	f7, 2, [r4, #-388]!	; 0xfffffe7c
807044fc:	716e797a 	smcvc	59290	; 0xe79a
80704500:	30303037 	eorscc	r3, r0, r7, lsr r0
80704504:	7500632e 	strvc	r6, [r0, #-814]	; 0xfffffcd2
80704508:	5f747261 	svcpl	0x00747261
8070450c:	6e697073 	mcrvs	0, 3, r7, cr9, cr3, {3}
80704510:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
80704514:	65747962 	ldrbvs	r7, [r4, #-2402]!	; 0xfffff69e
80704518:	00000000 	andeq	r0, r0, r0
8070451c:	0000000c 	andeq	r0, r0, ip
80704520:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80704524:	7c020001 	stcvc	0, cr0, [r2], {1}
80704528:	000d0c0e 	andeq	r0, sp, lr, lsl #24
8070452c:	0000001c 	andeq	r0, r0, ip, lsl r0
80704530:	8070451c 	rsbshi	r4, r0, ip, lsl r5
80704534:	80704010 	rsbshi	r4, r0, r0, lsl r0
80704538:	00000028 	andeq	r0, r0, r8, lsr #32
8070453c:	8b040e42 	blhi	80807e4c <.LC14+0x103420>
80704540:	0b0d4201 	bleq	80a54d4c <.LC14+0x350320>
80704544:	420d0d4c 	andmi	r0, sp, #76, 26	; 0x1300
80704548:	00000ecb 	andeq	r0, r0, fp, asr #29
8070454c:	0000001c 	andeq	r0, r0, ip, lsl r0
80704550:	8070451c 	rsbshi	r4, r0, ip, lsl r5
80704554:	80704038 	rsbshi	r4, r0, r8, lsr r0
80704558:	00000030 	andeq	r0, r0, r0, lsr r0
8070455c:	8b040e42 	blhi	80807e6c <.LC14+0x103440>
80704560:	0b0d4201 	bleq	80a54d6c <.LC14+0x350340>
80704564:	420d0d50 	andmi	r0, sp, #80, 26	; 0x1400
80704568:	00000ecb 	andeq	r0, r0, fp, asr #29
8070456c:	00000018 	andeq	r0, r0, r8, lsl r0
80704570:	8070451c 	rsbshi	r4, r0, ip, lsl r5
80704574:	80704068 	rsbshi	r4, r0, r8, rrx
80704578:	000000b4 	strheq	r0, [r0], -r4
8070457c:	8b080e42 	blhi	80907e8c <.LC14+0x203460>
80704580:	42018e02 	andmi	r8, r1, #2, 28
80704584:	00040b0c 	andeq	r0, r4, ip, lsl #22
80704588:	00000018 	andeq	r0, r0, r8, lsl r0
8070458c:	8070451c 	rsbshi	r4, r0, ip, lsl r5
80704590:	8070411c 	rsbshi	r4, r0, ip, lsl r1
80704594:	00000020 	andeq	r0, r0, r0, lsr #32
80704598:	8b080e42 	blhi	80907ea8 <.LC14+0x20347c>
8070459c:	42018e02 	andmi	r8, r1, #2, 28
807045a0:	00040b0c 	andeq	r0, r4, ip, lsl #22
807045a4:	00000018 	andeq	r0, r0, r8, lsl r0
807045a8:	8070451c 	rsbshi	r4, r0, ip, lsl r5
807045ac:	8070413c 	rsbshi	r4, r0, ip, lsr r1
807045b0:	00000020 	andeq	r0, r0, r0, lsr #32
807045b4:	8b080e42 	blhi	80907ec4 <.LC14+0x203498>
807045b8:	42018e02 	andmi	r8, r1, #2, 28
807045bc:	00040b0c 	andeq	r0, r4, ip, lsl #22
807045c0:	00000018 	andeq	r0, r0, r8, lsl r0
807045c4:	8070451c 	rsbshi	r4, r0, ip, lsl r5
807045c8:	8070415c 	rsbshi	r4, r0, ip, asr r1
807045cc:	00000044 	andeq	r0, r0, r4, asr #32
807045d0:	8b080e42 	blhi	80907ee0 <.LC14+0x2034b4>
807045d4:	42018e02 	andmi	r8, r1, #2, 28
807045d8:	00040b0c 	andeq	r0, r4, ip, lsl #22
807045dc:	0000001c 	andeq	r0, r0, ip, lsl r0
807045e0:	8070451c 	rsbshi	r4, r0, ip, lsl r5
807045e4:	807041a0 	rsbshi	r4, r0, r0, lsr #3
807045e8:	00000054 	andeq	r0, r0, r4, asr r0
807045ec:	8b080e42 	blhi	80907efc <.LC14+0x2034d0>
807045f0:	42018e02 	andmi	r8, r1, #2, 28
807045f4:	64040b0c 	strvs	r0, [r4], #-2828	; 0xfffff4f4
807045f8:	00080d0c 	andeq	r0, r8, ip, lsl #26
807045fc:	00002e41 	andeq	r2, r0, r1, asr #28
80704600:	61656100 	cmnvs	r5, r0, lsl #2
80704604:	01006962 	tsteq	r0, r2, ror #18
80704608:	00000024 	andeq	r0, r0, r4, lsr #32
8070460c:	412d3705 	teqmi	sp, r5, lsl #14
80704610:	070a0600 	streq	r0, [sl, -r0, lsl #12]
80704614:	09010841 	stmdbeq	r1, {r0, r6, fp}
80704618:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
8070461c:	17011501 	strne	r1, [r1, -r1, lsl #10]
80704620:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
80704624:	1e011a01 	vmlane.f32	s2, s2, s2
80704628:	00012206 	andeq	r2, r1, r6, lsl #4

8070462c <interrupt_enable>:
8070462c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80704630:	e28db000 	add	fp, sp, #0
80704634:	e10f0000 	mrs	r0, CPSR
80704638:	e3c000c0 	bic	r0, r0, #192	; 0xc0
8070463c:	e129f000 	msr	CPSR_fc, r0
80704640:	e1a00000 	nop			; (mov r0, r0)
80704644:	e24bd000 	sub	sp, fp, #0
80704648:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
8070464c:	e12fff1e 	bx	lr

80704650 <set_sp>:
80704650:	e92d4800 	push	{fp, lr}
80704654:	e28db004 	add	fp, sp, #4
80704658:	e24dd010 	sub	sp, sp, #16
8070465c:	e50b0008 	str	r0, [fp, #-8]
80704660:	e50b100c 	str	r1, [fp, #-12]
80704664:	e50b2010 	str	r2, [fp, #-16]
80704668:	e1a0800b 	mov	r8, fp
8070466c:	e10f0000 	mrs	r0, CPSR
80704670:	e1a02000 	mov	r2, r0
80704674:	e3043910 	movw	r3, #18704	; 0x4910
80704678:	e3483070 	movt	r3, #32880	; 0x8070
8070467c:	e5832000 	str	r2, [r3]
80704680:	e3040914 	movw	r0, #18708	; 0x4914
80704684:	e3480070 	movt	r0, #32880	; 0x8070
80704688:	ebfff75c 	bl	80702400 <uart_spin_puts>
8070468c:	e3043910 	movw	r3, #18704	; 0x4910
80704690:	e3483070 	movt	r3, #32880	; 0x8070
80704694:	e5933000 	ldr	r3, [r3]
80704698:	e1a00003 	mov	r0, r3
8070469c:	ebfff109 	bl	80700ac8 <puthex>
807046a0:	e51b3008 	ldr	r3, [fp, #-8]
807046a4:	e10fc000 	mrs	ip, CPSR
807046a8:	e3ccc01f 	bic	ip, ip, #31
807046ac:	e18cc003 	orr	ip, ip, r3
807046b0:	e121f00c 	msr	CPSR_c, ip
807046b4:	e51b3010 	ldr	r3, [fp, #-16]
807046b8:	e1a0b003 	mov	fp, r3
807046bc:	e1a0d00b 	mov	sp, fp
807046c0:	e10f0000 	mrs	r0, CPSR
807046c4:	e1a02000 	mov	r2, r0
807046c8:	e3043910 	movw	r3, #18704	; 0x4910
807046cc:	e3483070 	movt	r3, #32880	; 0x8070
807046d0:	e5832000 	str	r2, [r3]
807046d4:	e3040934 	movw	r0, #18740	; 0x4934
807046d8:	e3480070 	movt	r0, #32880	; 0x8070
807046dc:	ebfff747 	bl	80702400 <uart_spin_puts>
807046e0:	e3043910 	movw	r3, #18704	; 0x4910
807046e4:	e3483070 	movt	r3, #32880	; 0x8070
807046e8:	e5933000 	ldr	r3, [r3]
807046ec:	e1a00003 	mov	r0, r3
807046f0:	ebfff0f4 	bl	80700ac8 <puthex>
807046f4:	e51b300c 	ldr	r3, [fp, #-12]
807046f8:	e10fc000 	mrs	ip, CPSR
807046fc:	e3ccc01f 	bic	ip, ip, #31
80704700:	e18cc003 	orr	ip, ip, r3
80704704:	e121f00c 	msr	CPSR_c, ip
80704708:	e1a0b008 	mov	fp, r8
8070470c:	e1a00000 	nop			; (mov r0, r0)
80704710:	e24bd004 	sub	sp, fp, #4
80704714:	e8bd8800 	pop	{fp, pc}

80704718 <interrupt_init>:
80704718:	e92d4800 	push	{fp, lr}
8070471c:	e28db004 	add	fp, sp, #4
80704720:	e3040950 	movw	r0, #18768	; 0x4950
80704724:	e3480070 	movt	r0, #32880	; 0x8070
80704728:	ebfff734 	bl	80702400 <uart_spin_puts>
8070472c:	e3a03102 	mov	r3, #-2147483648	; 0x80000000
80704730:	e59f01d4 	ldr	r0, [pc, #468]	; 8070490c <SWI+0x3c>
80704734:	e0800003 	add	r0, r0, r3
80704738:	ee0c0f10 	mcr	15, 0, r0, cr12, cr0, {0}
8070473c:	ebffffba 	bl	8070462c <interrupt_enable>
80704740:	e3040964 	movw	r0, #18788	; 0x4964
80704744:	e3480070 	movt	r0, #32880	; 0x8070
80704748:	ebfff72c 	bl	80702400 <uart_spin_puts>
8070474c:	e3a02000 	mov	r2, #0
80704750:	e34d2fbf 	movt	r2, #57279	; 0xdfbf
80704754:	e3a0101f 	mov	r1, #31
80704758:	e3a00012 	mov	r0, #18
8070475c:	ebffffbb 	bl	80704650 <set_sp>
80704760:	e3040978 	movw	r0, #18808	; 0x4978
80704764:	e3480070 	movt	r0, #32880	; 0x8070
80704768:	ebfff724 	bl	80702400 <uart_spin_puts>
8070476c:	e3040988 	movw	r0, #18824	; 0x4988
80704770:	e3480070 	movt	r0, #32880	; 0x8070
80704774:	ebfff721 	bl	80702400 <uart_spin_puts>
80704778:	e3a02000 	mov	r2, #0
8070477c:	e34d2fc0 	movt	r2, #57280	; 0xdfc0
80704780:	e3a0101f 	mov	r1, #31
80704784:	e3a00013 	mov	r0, #19
80704788:	ebffffb0 	bl	80704650 <set_sp>
8070478c:	e304099c 	movw	r0, #18844	; 0x499c
80704790:	e3480070 	movt	r0, #32880	; 0x8070
80704794:	ebfff719 	bl	80702400 <uart_spin_puts>
80704798:	e30409ac 	movw	r0, #18860	; 0x49ac
8070479c:	e3480070 	movt	r0, #32880	; 0x8070
807047a0:	ebfff716 	bl	80702400 <uart_spin_puts>
807047a4:	e1a00000 	nop			; (mov r0, r0)
807047a8:	e8bd8800 	pop	{fp, pc}

807047ac <print_cpsr>:
807047ac:	e92d4800 	push	{fp, lr}
807047b0:	e28db004 	add	fp, sp, #4
807047b4:	e24dd008 	sub	sp, sp, #8
807047b8:	e10f0000 	mrs	r0, CPSR
807047bc:	e1a03000 	mov	r3, r0
807047c0:	e50b3008 	str	r3, [fp, #-8]
807047c4:	e51b1008 	ldr	r1, [fp, #-8]
807047c8:	e30409c8 	movw	r0, #18888	; 0x49c8
807047cc:	e3480070 	movt	r0, #32880	; 0x8070
807047d0:	ebfff0ec 	bl	80700b88 <put_str_hex>
807047d4:	e1a00000 	nop			; (mov r0, r0)
807047d8:	e24bd004 	sub	sp, fp, #4
807047dc:	e8bd8800 	pop	{fp, pc}

807047e0 <mode_switch>:
807047e0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
807047e4:	e28db000 	add	fp, sp, #0
807047e8:	e24dd00c 	sub	sp, sp, #12
807047ec:	e50b0008 	str	r0, [fp, #-8]
807047f0:	e51b3008 	ldr	r3, [fp, #-8]
807047f4:	e10f0000 	mrs	r0, CPSR
807047f8:	e3c0001f 	bic	r0, r0, #31
807047fc:	e1800003 	orr	r0, r0, r3
80704800:	e129f000 	msr	CPSR_fc, r0
80704804:	e1a00000 	nop			; (mov r0, r0)
80704808:	e24bd000 	sub	sp, fp, #0
8070480c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
80704810:	e12fff1e 	bx	lr

80704814 <C_SVC_handler>:
80704814:	e92d4800 	push	{fp, lr}
80704818:	e28db004 	add	fp, sp, #4
8070481c:	e30409d0 	movw	r0, #18896	; 0x49d0
80704820:	e3480070 	movt	r0, #32880	; 0x8070
80704824:	ebfff6f5 	bl	80702400 <uart_spin_puts>
80704828:	e1a00000 	nop			; (mov r0, r0)
8070482c:	e8bd8800 	pop	{fp, pc}

80704830 <C_prefetch_abort_handler>:
80704830:	e92d4800 	push	{fp, lr}
80704834:	e28db004 	add	fp, sp, #4
80704838:	e30409e0 	movw	r0, #18912	; 0x49e0
8070483c:	e3480070 	movt	r0, #32880	; 0x8070
80704840:	ebfff6ee 	bl	80702400 <uart_spin_puts>
80704844:	e1a00000 	nop			; (mov r0, r0)
80704848:	e8bd8800 	pop	{fp, pc}

8070484c <C_data_abort_handler>:
8070484c:	e92d4800 	push	{fp, lr}
80704850:	e28db004 	add	fp, sp, #4
80704854:	e30409fc 	movw	r0, #18940	; 0x49fc
80704858:	e3480070 	movt	r0, #32880	; 0x8070
8070485c:	ebfff6e7 	bl	80702400 <uart_spin_puts>
80704860:	e1a00000 	nop			; (mov r0, r0)
80704864:	e8bd8800 	pop	{fp, pc}

80704868 <C_IRQ_handler>:
80704868:	e92d4800 	push	{fp, lr}
8070486c:	e28db004 	add	fp, sp, #4
80704870:	e3040a14 	movw	r0, #18964	; 0x4a14
80704874:	e3480070 	movt	r0, #32880	; 0x8070
80704878:	ebfff6e0 	bl	80702400 <uart_spin_puts>
8070487c:	e1a00000 	nop			; (mov r0, r0)
80704880:	e8bd8800 	pop	{fp, pc}

80704884 <get_vectors_address>:
80704884:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
80704888:	e28db000 	add	fp, sp, #0
8070488c:	e24dd00c 	sub	sp, sp, #12
80704890:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
80704894:	e50b3008 	str	r3, [fp, #-8]
80704898:	e51b3008 	ldr	r3, [fp, #-8]
8070489c:	e2033a02 	and	r3, r3, #8192	; 0x2000
807048a0:	e3530000 	cmp	r3, #0
807048a4:	0a000002 	beq	807048b4 <get_vectors_address+0x30>
807048a8:	e3a03000 	mov	r3, #0
807048ac:	e34f3fff 	movt	r3, #65535	; 0xffff
807048b0:	ea000002 	b	807048c0 <get_vectors_address+0x3c>
807048b4:	ee1c3f10 	mrc	15, 0, r3, cr12, cr0, {0}
807048b8:	e50b3008 	str	r3, [fp, #-8]
807048bc:	e51b3008 	ldr	r3, [fp, #-8]
807048c0:	e1a00003 	mov	r0, r3
807048c4:	e24bd000 	sub	sp, fp, #0
807048c8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
807048cc:	e12fff1e 	bx	lr

807048d0 <SWI>:
807048d0:	e92d4800 	push	{fp, lr}
807048d4:	e28db004 	add	fp, sp, #4
807048d8:	ebffffe9 	bl	80704884 <get_vectors_address>
807048dc:	e1a03000 	mov	r3, r0
807048e0:	e1a00003 	mov	r0, r3
807048e4:	ebfff077 	bl	80700ac8 <puthex>
807048e8:	e3040a24 	movw	r0, #18980	; 0x4a24
807048ec:	e3480070 	movt	r0, #32880	; 0x8070
807048f0:	ebfff6c2 	bl	80702400 <uart_spin_puts>
807048f4:	ef000100 	svc	0x00000100
807048f8:	e3040a2c 	movw	r0, #18988	; 0x4a2c
807048fc:	e3480070 	movt	r0, #32880	; 0x8070
80704900:	ebfff6be 	bl	80702400 <uart_spin_puts>
80704904:	e1a00000 	nop			; (mov r0, r0)
80704908:	e8bd8800 	pop	{fp, pc}
8070490c:	80700000 	rsbshi	r0, r0, r0

80704910 <cpsr.3867>:
80704910:	00000000 	andeq	r0, r0, r0

80704914 <.LC0>:
80704914:	52535043 	subspl	r5, r3, #67	; 0x43
80704918:	66656220 	strbtvs	r6, [r5], -r0, lsr #4
8070491c:	2065726f 	rsbcs	r7, r5, pc, ror #4
80704920:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
80704924:	676e6967 	strbvs	r6, [lr, -r7, ror #18]!
80704928:	646f6d20 	strbtvs	r6, [pc], #-3360	; 80704930 <.LC0+0x1c>
8070492c:	203d2065 	eorscs	r2, sp, r5, rrx
80704930:	00000000 	andeq	r0, r0, r0

80704934 <.LC1>:
80704934:	52535043 	subspl	r5, r3, #67	; 0x43
80704938:	74666120 	strbtvc	r6, [r6], #-288	; 0xfffffee0
8070493c:	63207265 	teqvs	r0, #1342177286	; 0x50000006
80704940:	676e6168 	strbvs	r6, [lr, -r8, ror #2]!
80704944:	20676e69 	rsbcs	r6, r7, r9, ror #28
80704948:	65646f6d 	strbvs	r6, [r4, #-3949]!	; 0xfffff093
8070494c:	00203d20 	eoreq	r3, r0, r0, lsr #26

80704950 <.LC2>:
80704950:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
80704954:	4920656c 	stmdbmi	r0!, {r2, r3, r5, r6, r8, sl, sp, lr}
80704958:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
8070495c:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
80704960:	00000a0d 	andeq	r0, r0, sp, lsl #20

80704964 <.LC3>:
80704964:	74746573 	ldrbtvc	r6, [r4], #-1395	; 0xfffffa8d
80704968:	20676e69 	rsbcs	r6, r7, r9, ror #28
8070496c:	20515249 	subscs	r5, r1, r9, asr #4
80704970:	0a0d5053 	beq	80a58ac4 <.LC14+0x354098>
80704974:	00000000 	andeq	r0, r0, r0

80704978 <.LC4>:
80704978:	20515249 	subscs	r5, r1, r9, asr #4
8070497c:	73205053 	teqvc	r0, #83	; 0x53
80704980:	0a0d7465 	beq	80a61b1c <.LC14+0x35d0f0>
80704984:	00000000 	andeq	r0, r0, r0

80704988 <.LC5>:
80704988:	74746573 	ldrbtvc	r6, [r4], #-1395	; 0xfffffa8d
8070498c:	20676e69 	rsbcs	r6, r7, r9, ror #28
80704990:	20435653 	subcs	r5, r3, r3, asr r6
80704994:	0a0d5053 	beq	80a58ae8 <.LC14+0x3540bc>
80704998:	00000000 	andeq	r0, r0, r0

8070499c <.LC6>:
8070499c:	20435653 	subcs	r5, r3, r3, asr r6
807049a0:	73205053 	teqvc	r0, #83	; 0x53
807049a4:	0a0d7465 	beq	80a61b40 <.LC14+0x35d114>
807049a8:	00000000 	andeq	r0, r0, r0

807049ac <.LC7>:
807049ac:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
807049b0:	4920656c 	stmdbmi	r0!, {r2, r3, r5, r6, r8, sl, sp, lr}
807049b4:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
807049b8:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
807049bc:	4e494620 	cdpmi	6, 4, cr4, cr9, cr0, {1}
807049c0:	45485349 	strbmi	r5, [r8, #-841]	; 0xfffffcb7
807049c4:	000a0d44 	andeq	r0, sl, r4, asr #26

807049c8 <.LC8>:
807049c8:	52535043 	subspl	r5, r3, #67	; 0x43
807049cc:	00203d20 	eoreq	r3, r0, r0, lsr #26

807049d0 <.LC9>:
807049d0:	20435653 	subcs	r5, r3, r3, asr r6
807049d4:	646e6148 	strbtvs	r6, [lr], #-328	; 0xfffffeb8
807049d8:	0d72656c 	cfldr64eq	mvdx6, [r2, #-432]!	; 0xfffffe50
807049dc:	0000000a 	andeq	r0, r0, sl

807049e0 <.LC10>:
807049e0:	66657270 			; <UNDEFINED> instruction: 0x66657270
807049e4:	68637465 	stmdavs	r3!, {r0, r2, r5, r6, sl, ip, sp, lr}^
807049e8:	6f62615f 	svcvs	0x0062615f
807049ec:	685f7472 	ldmdavs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
807049f0:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
807049f4:	0a0d7265 	beq	80a61390 <.LC14+0x35c964>
807049f8:	00000000 	andeq	r0, r0, r0

807049fc <.LC11>:
807049fc:	61746164 	cmnvs	r4, r4, ror #2
80704a00:	6f62615f 	svcvs	0x0062615f
80704a04:	685f7472 	ldmdavs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
80704a08:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
80704a0c:	0a0d7265 	beq	80a613a8 <.LC14+0x35c97c>
80704a10:	00000000 	andeq	r0, r0, r0

80704a14 <.LC12>:
80704a14:	5f515249 	svcpl	0x00515249
80704a18:	646e6168 	strbtvs	r6, [lr], #-360	; 0xfffffe98
80704a1c:	0d72656c 	cfldr64eq	mvdx6, [r2, #-432]!	; 0xfffffe50
80704a20:	0000000a 	andeq	r0, r0, sl

80704a24 <.LC13>:
80704a24:	0d495753 	stcleq	7, cr5, [r9, #-332]	; 0xfffffeb4
80704a28:	0000000a 	andeq	r0, r0, sl

80704a2c <.LC14>:
80704a2c:	20495753 	subcs	r5, r9, r3, asr r7
80704a30:	494e4946 	stmdbmi	lr, {r1, r2, r6, r8, fp, lr}^
80704a34:	44454853 	strbmi	r4, [r5], #-2131	; 0xfffff7ad
80704a38:	000a0d21 	andeq	r0, sl, r1, lsr #26
80704a3c:	000001db 	ldrdeq	r0, [r0], -fp
80704a40:	4c1b0004 	ldcmi	0, cr0, [fp], {4}
80704a44:	01048070 	tsteq	r4, r0, ror r0
80704a48:	807011f7 	ldrshthi	r1, [r0], #-23	; 0xffffffe9
80704a4c:	704ee00c 	subvc	lr, lr, ip
80704a50:	70128680 	andsvc	r8, r2, r0, lsl #13
80704a54:	70462c80 	subvc	r2, r6, r0, lsl #25
80704a58:	0002e080 	andeq	lr, r2, r0, lsl #1
80704a5c:	704d9100 	subvc	r9, sp, r0, lsl #2
80704a60:	08010280 	stmdaeq	r1, {r7, r9}
80704a64:	80701248 	rsbshi	r1, r0, r8, asr #4
80704a68:	4a060102 	bmi	80884e78 <.LC14+0x18044c>
80704a6c:	02807012 	addeq	r7, r0, #18
80704a70:	12560702 	subsne	r0, r6, #524288	; 0x80000
80704a74:	02028070 	andeq	r8, r2, #112	; 0x70
80704a78:	7012fa05 	andsvc	pc, r2, r5, lsl #20
80704a7c:	07040280 	streq	r0, [r4, -r0, lsl #5]
80704a80:	807012a9 	rsbshi	r1, r0, r9, lsr #5
80704a84:	32337503 	eorscc	r7, r3, #12582912	; 0xc00000
80704a88:	411f0300 	tstmi	pc, r0, lsl #6
80704a8c:	04000000 	streq	r0, [r0], #-0
80704a90:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
80704a94:	04020074 	streq	r0, [r2], #-116	; 0xffffff8c
80704a98:	7012a407 	andsvc	sl, r2, r7, lsl #8
80704a9c:	07080280 	streq	r0, [r8, -r0, lsl #5]
80704aa0:	8070129f 			; <UNDEFINED> instruction: 0x8070129f
80704aa4:	df050802 	svcle	0x00050802
80704aa8:	02807012 	addeq	r7, r0, #18
80704aac:	12e40504 	rscne	r0, r4, #4, 10	; 0x1000000
80704ab0:	33058070 	movwcc	r8, #20592	; 0x5070
80704ab4:	0180704f 	orreq	r7, r0, pc, asr #32
80704ab8:	70462c86 	subvc	r2, r6, r6, lsl #25
80704abc:	00002480 	andeq	r2, r0, r0, lsl #9
80704ac0:	069c0100 	ldreq	r0, [ip], r0, lsl #2
80704ac4:	80704eb7 	ldrhthi	r4, [r0], #-231	; 0xffffff19
80704ac8:	46500e02 	ldrbmi	r0, [r0], -r2, lsl #28
80704acc:	00c88070 	sbceq	r8, r8, r0, ror r0
80704ad0:	9c010000 	stcls	0, cr0, [r1], {-0}
80704ad4:	000000ec 	andeq	r0, r0, ip, ror #1
80704ad8:	704edb07 	subvc	sp, lr, r7, lsl #22
80704adc:	480e0280 	stmdami	lr, {r7, r9}
80704ae0:	02000000 	andeq	r0, r0, #0
80704ae4:	d7077491 			; <UNDEFINED> instruction: 0xd7077491
80704ae8:	0280704e 	addeq	r7, r0, #78	; 0x4e
80704aec:	0000480e 	andeq	r4, r0, lr, lsl #16
80704af0:	70910200 	addsvc	r0, r1, r0, lsl #4
80704af4:	00707308 	rsbseq	r7, r0, r8, lsl #6
80704af8:	00480e02 	subeq	r0, r8, r2, lsl #28
80704afc:	91020000 	mrsls	r0, (UNDEF: 2)
80704b00:	7066096c 	rsbvc	r0, r6, ip, ror #18
80704b04:	48100200 	ldmdami	r0, {r9}
80704b08:	0a000000 	beq	80704b10 <.LC14+0xe4>
80704b0c:	80704eb2 	ldrhthi	r4, [r0], #-226	; 0xffffff1e
80704b10:	00481502 	subeq	r1, r8, r2, lsl #10
80704b14:	03050000 	movweq	r0, #20480	; 0x5000
80704b18:	80704910 	rsbshi	r4, r0, r0, lsl r9
80704b1c:	32317209 	eorscc	r7, r1, #-1879048192	; 0x90000000
80704b20:	481c0200 	ldmdami	ip, {r9}
80704b24:	00000000 	andeq	r0, r0, r0
80704b28:	704efb0b 	subvc	pc, lr, fp, lsl #22
80704b2c:	18440280 	stmdane	r4, {r7, r9}^
80704b30:	94807047 	strls	r7, [r0], #71	; 0x47
80704b34:	01000000 	mrseq	r0, (UNDEF: 0)
80704b38:	4eac0c9c 	mcrmi	12, 5, r0, cr12, cr12, {4}
80704b3c:	5f028070 	svcpl	0x00028070
80704b40:	807047ac 	rsbshi	r4, r0, ip, lsr #15
80704b44:	00000034 	andeq	r0, r0, r4, lsr r0
80704b48:	012e9c01 	teqeq	lr, r1, lsl #24
80704b4c:	b20a0000 	andlt	r0, sl, #0
80704b50:	0280704e 	addeq	r7, r0, #78	; 0x4e
80704b54:	00004861 	andeq	r4, r0, r1, ror #16
80704b58:	74910200 	ldrvc	r0, [r1], #512	; 0x200
80704b5c:	70126f0d 	andsvc	r6, r2, sp, lsl #30
80704b60:	53660280 	cmnpl	r6, #128, 4
80704b64:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
80704b68:	a00f0000 	andge	r0, pc, r0
80704b6c:	0280704e 	addeq	r7, r0, #78	; 0x4e
80704b70:	7047e069 	subvc	lr, r7, r9, rrx
80704b74:	00003480 	andeq	r3, r0, r0, lsl #9
80704b78:	529c0100 	addspl	r0, ip, #0, 2
80704b7c:	07000001 	streq	r0, [r0, -r1]
80704b80:	80704edb 	ldrsbthi	r4, [r0], #-235	; 0xffffff15
80704b84:	00486902 	subeq	r6, r8, r2, lsl #18
80704b88:	91020000 	mrsls	r0, (UNDEF: 2)
80704b8c:	840b0074 	strhi	r0, [fp], #-116	; 0xffffff8c
80704b90:	0280704e 	addeq	r7, r0, #78	; 0x4e
80704b94:	70481476 	subvc	r1, r8, r6, ror r4
80704b98:	00001c80 	andeq	r1, r0, r0, lsl #25
80704b9c:	0b9c0100 	bleq	7ee04fa4 <__high_exec_veneer+0x7e804c0c>
80704ba0:	80704ebe 	ldrhthi	r4, [r0], #-238	; 0xffffff12
80704ba4:	48307b02 	ldmdami	r0!, {r1, r8, r9, fp, ip, sp, lr}
80704ba8:	001c8070 	andseq	r8, ip, r0, ror r0
80704bac:	9c010000 	stcls	0, cr0, [r1], {-0}
80704bb0:	704f1e0b 	subvc	r1, pc, fp, lsl #28
80704bb4:	4c800280 	sfmmi	f0, 4, [r0], {128}	; 0x80
80704bb8:	1c807048 	stcne	0, cr7, [r0], {72}	; 0x48
80704bbc:	01000000 	mrseq	r0, (UNDEF: 0)
80704bc0:	4e920b9c 	vmovmi.32	r0, d18[0]
80704bc4:	85028070 	strhi	r8, [r2, #-112]	; 0xffffff90
80704bc8:	80704868 	rsbshi	r4, r0, r8, ror #16
80704bcc:	0000001c 	andeq	r0, r0, ip, lsl r0
80704bd0:	0a109c01 	beq	80b2bbdc <.LC14+0x4271b0>
80704bd4:	0280704f 	addeq	r7, r0, #79	; 0x4f
80704bd8:	0001bc89 	andeq	fp, r1, r9, lsl #25
80704bdc:	70488400 	subvc	r8, r8, r0, lsl #8
80704be0:	00004c80 	andeq	r4, r0, r0, lsl #25
80704be4:	bc9c0100 	ldflts	f0, [ip], {0}
80704be8:	11000001 	tstne	r0, r1
80704bec:	8b020076 	blhi	80784dcc <.LC14+0x803a0>
80704bf0:	00000041 	andeq	r0, r0, r1, asr #32
80704bf4:	00749102 	rsbseq	r9, r4, r2, lsl #2
80704bf8:	00410412 	subeq	r0, r1, r2, lsl r4
80704bfc:	53130000 	tstpl	r3, #0
80704c00:	02004957 	andeq	r4, r0, #1425408	; 0x15c000
80704c04:	7048d097 	umaalvc	sp, r8, r7, r0
80704c08:	00003c80 	andeq	r3, r0, r0, lsl #25
80704c0c:	149c0100 	ldrne	r0, [ip], #256	; 0x100
80704c10:	80701237 	rsbshi	r1, r0, r7, lsr r2
80704c14:	0048a004 	subeq	sl, r8, r4
80704c18:	01000000 	mrseq	r0, (UNDEF: 0)
80704c1c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
80704c20:	0e030b13 	vmoveq.32	d3[0], r0
80704c24:	01110e1b 	tsteq	r1, fp, lsl lr
80704c28:	17100612 			; <UNDEFINED> instruction: 0x17100612
80704c2c:	24020000 	strcs	r0, [r2], #-0
80704c30:	3e0b0b00 	vmlacc.f64	d0, d11, d0
80704c34:	000e030b 	andeq	r0, lr, fp, lsl #6
80704c38:	00160300 	andseq	r0, r6, r0, lsl #6
80704c3c:	0b3a0803 	bleq	81586c50 <.LC14+0xe82224>
80704c40:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80704c44:	24040000 	strcs	r0, [r4], #-0
80704c48:	3e0b0b00 	vmlacc.f64	d0, d11, d0
80704c4c:	0008030b 	andeq	r0, r8, fp, lsl #6
80704c50:	002e0500 	eoreq	r0, lr, r0, lsl #10
80704c54:	0b3a0e03 	bleq	81588468 <.LC14+0xe83a3c>
80704c58:	01110b3b 	tsteq	r1, fp, lsr fp
80704c5c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80704c60:	00194297 	mulseq	r9, r7, r2
80704c64:	012e0600 	teqeq	lr, r0, lsl #12
80704c68:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80704c6c:	0b3b0b3a 	bleq	815c795c <.LC14+0xec2f30>
80704c70:	01111927 	tsteq	r1, r7, lsr #18
80704c74:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80704c78:	01194296 			; <UNDEFINED> instruction: 0x01194296
80704c7c:	07000013 	smladeq	r0, r3, r0, r0
80704c80:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
80704c84:	0b3b0b3a 	bleq	815c7974 <.LC14+0xec2f48>
80704c88:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
80704c8c:	05080000 	streq	r0, [r8, #-0]
80704c90:	3a080300 	bcc	80905898 <.LC14+0x200e6c>
80704c94:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80704c98:	00180213 	andseq	r0, r8, r3, lsl r2
80704c9c:	00340900 	eorseq	r0, r4, r0, lsl #18
80704ca0:	0b3a0803 	bleq	81586cb4 <.LC14+0xe82288>
80704ca4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80704ca8:	340a0000 	strcc	r0, [sl], #-0
80704cac:	3a0e0300 	bcc	80a858b4 <.LC14+0x380e88>
80704cb0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
80704cb4:	00180213 	andseq	r0, r8, r3, lsl r2
80704cb8:	002e0b00 	eoreq	r0, lr, r0, lsl #22
80704cbc:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80704cc0:	0b3b0b3a 	bleq	815c79b0 <.LC14+0xec2f84>
80704cc4:	06120111 			; <UNDEFINED> instruction: 0x06120111
80704cc8:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
80704ccc:	0c000019 	stceq	0, cr0, [r0], {25}
80704cd0:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
80704cd4:	0b3a0e03 	bleq	815884e8 <.LC14+0xe83abc>
80704cd8:	01110b3b 	tsteq	r1, fp, lsr fp
80704cdc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80704ce0:	01194296 			; <UNDEFINED> instruction: 0x01194296
80704ce4:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
80704ce8:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
80704cec:	0b3a0e03 	bleq	81588500 <.LC14+0xe83ad4>
80704cf0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80704cf4:	0000193c 	andeq	r1, r0, ip, lsr r9
80704cf8:	0000180e 	andeq	r1, r0, lr, lsl #16
80704cfc:	012e0f00 	teqeq	lr, r0, lsl #30
80704d00:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
80704d04:	0b3b0b3a 	bleq	815c79f4 <.LC14+0xec2fc8>
80704d08:	01111927 	tsteq	r1, r7, lsr #18
80704d0c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
80704d10:	01194297 			; <UNDEFINED> instruction: 0x01194297
80704d14:	10000013 	andne	r0, r0, r3, lsl r0
80704d18:	0e03012e 	adfeqsp	f0, f3, #0.5
80704d1c:	0b3b0b3a 	bleq	815c7a0c <.LC14+0xec2fe0>
80704d20:	13491927 	movtne	r1, #39207	; 0x9927
80704d24:	06120111 			; <UNDEFINED> instruction: 0x06120111
80704d28:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
80704d2c:	00130119 	andseq	r0, r3, r9, lsl r1
80704d30:	00341100 	eorseq	r1, r4, r0, lsl #2
80704d34:	0b3a0803 	bleq	81586d48 <.LC14+0xe8231c>
80704d38:	13490b3b 	movtne	r0, #39739	; 0x9b3b
80704d3c:	00001802 	andeq	r1, r0, r2, lsl #16
80704d40:	0b000f12 	bleq	80708990 <.LC14+0x3f64>
80704d44:	0013490b 	andseq	r4, r3, fp, lsl #18
80704d48:	002e1300 	eoreq	r1, lr, r0, lsl #6
80704d4c:	0803193f 	stmdaeq	r3, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
80704d50:	0b3b0b3a 	bleq	815c7a40 <.LC14+0xec3014>
80704d54:	06120111 			; <UNDEFINED> instruction: 0x06120111
80704d58:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
80704d5c:	14000019 	strne	r0, [r0], #-25	; 0xffffffe7
80704d60:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
80704d64:	0b3b0b3a 	bleq	815c7a54 <.LC14+0xec3028>
80704d68:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
80704d6c:	0000193c 	andeq	r1, r0, ip, lsr r9
80704d70:	00001c00 	andeq	r1, r0, r0, lsl #24
80704d74:	3c000200 	sfmcc	f0, 4, [r0], {-0}
80704d78:	0480704a 	streq	r7, [r0], #74	; 0x4a
80704d7c:	00000000 	andeq	r0, r0, r0
80704d80:	70462c00 	subvc	r2, r6, r0, lsl #24
80704d84:	0002e080 	andeq	lr, r2, r0, lsl #1
	...
80704d90:	0000ef00 	andeq	lr, r0, r0, lsl #30
80704d94:	91000200 	mrsls	r0, R8_usr
80704d98:	02000000 	andeq	r0, r0, #0
80704d9c:	0d0efb01 	vstreq	d15, [lr, #-4]
80704da0:	01010100 	mrseq	r0, (UNDEF: 17)
80704da4:	00000001 	andeq	r0, r0, r1
80704da8:	01000001 	tsteq	r0, r1
80704dac:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
80704db0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
80704db4:	72612f65 	rsbvc	r2, r1, #404	; 0x194
80704db8:	612f6863 	teqvs	pc, r3, ror #16
80704dbc:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
80704dc0:	656c2d61 	strbvs	r2, [ip, #-3425]!	; 0xfffff29f
80704dc4:	6d73612f 	ldfvse	f6, [r3, #-188]!	; 0xffffff44
80704dc8:	72656b00 	rsbvc	r6, r5, #0, 22
80704dcc:	78652f6e 	stmdavc	r5!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, sp}^
80704dd0:	74706563 	ldrbtvc	r6, [r0], #-1379	; 0xfffffa9d
80704dd4:	006e6f69 	rsbeq	r6, lr, r9, ror #30
80704dd8:	6e692f2e 	cdpvs	15, 6, cr2, cr9, cr14, {1}
80704ddc:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
80704de0:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
80704de4:	2f2e0073 	svccs	0x002e0073
80704de8:	76697264 	strbtvc	r7, [r9], -r4, ror #4
80704dec:	2f737265 	svccs	0x00737265
80704df0:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
80704df4:	72690000 	rsbvc	r0, r9, #0
80704df8:	00682e71 	rsbeq	r2, r8, r1, ror lr
80704dfc:	69000001 	stmdbvs	r0, {r0}
80704e00:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
80704e04:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
80704e08:	0200632e 	andeq	r6, r0, #-1207959552	; 0xb8000000
80704e0c:	79740000 	ldmdbvc	r4!, {}^	; <UNPREDICTABLE>
80704e10:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
80704e14:	00030068 	andeq	r0, r3, r8, rrx
80704e18:	62746400 	rsbsvs	r6, r4, #0, 8
80704e1c:	6e797a2d 	vaddvs.f32	s15, s18, s27
80704e20:	30303771 	eorscc	r3, r0, r1, ror r7
80704e24:	00682e30 	rsbeq	r2, r8, r0, lsr lr
80704e28:	00000004 	andeq	r0, r0, r4
80704e2c:	2c020500 	cfstr32cs	mvfx0, [r2], {-0}
80704e30:	03807046 	orreq	r7, r0, #70	; 0x46
80704e34:	4b010186 	blmi	80745454 <.LC14+0x40a28>
80704e38:	0302046c 	movweq	r0, #9324	; 0x246c
80704e3c:	bc827f81 	stclt	15, cr7, [r2], {129}	; 0x81
80704e40:	a167a133 	cmnge	r7, r3, lsr r1
80704e44:	6e9e0903 	cdpvs	9, 9, cr0, cr14, cr3, {0}
80704e48:	03a067a1 	moveq	r6, #42205184	; 0x2840000
80704e4c:	6a319e0a 	bvs	8136c67c <.LC14+0xc67c50>
80704e50:	09036a4b 	stmdbeq	r3, {r0, r1, r3, r6, r9, fp, sp, lr}
80704e54:	9f673082 	svcls	0x00673082
80704e58:	689f6768 	ldmvs	pc, {r3, r5, r6, r8, r9, sl, sp, lr}	; <UNPREDICTABLE>
80704e5c:	6a684c67 	bvs	82118000 <.LC14+0x1a135d4>
80704e60:	03836983 	orreq	r6, r3, #2146304	; 0x20c000
80704e64:	4b859e09 	blmi	7e86c690 <__high_exec_veneer+0x7e26c2f8>
80704e68:	674b4d67 	strbvs	r4, [fp, -r7, ror #26]
80704e6c:	4d674b4d 	fstmdbxmi	r7!, {d20-d57}	;@ Deprecated
80704e70:	6a4c674b 	bvs	81a1eba4 <.LC14+0x131a178>
80704e74:	4c68834c 	stclmi	3, cr8, [r8], #-304	; 0xfffffed0
80704e78:	834b842f 	movthi	r8, #46127	; 0xb42f
80704e7c:	02673167 	rsbeq	r3, r7, #-1073741799	; 0xc0000019
80704e80:	01010006 	tsteq	r1, r6
80704e84:	56535f43 	ldrbpl	r5, [r3], -r3, asr #30
80704e88:	61685f43 	cmnvs	r8, r3, asr #30
80704e8c:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
80704e90:	5f430072 	svcpl	0x00430072
80704e94:	5f515249 	svcpl	0x00515249
80704e98:	646e6168 	strbtvs	r6, [lr], #-360	; 0xfffffe98
80704e9c:	0072656c 	rsbseq	r6, r2, ip, ror #10
80704ea0:	65646f6d 	strbvs	r6, [r4, #-3949]!	; 0xfffff093
80704ea4:	6977735f 	ldmdbvs	r7!, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
80704ea8:	00686374 	rsbeq	r6, r8, r4, ror r3
80704eac:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
80704eb0:	70635f74 	rsbvc	r5, r3, r4, ror pc
80704eb4:	73007273 	movwvc	r7, #627	; 0x273
80704eb8:	735f7465 	cmpvc	pc, #1694498816	; 0x65000000
80704ebc:	5f430070 	svcpl	0x00430070
80704ec0:	66657270 			; <UNDEFINED> instruction: 0x66657270
80704ec4:	68637465 	stmdavs	r3!, {r0, r2, r5, r6, sl, ip, sp, lr}^
80704ec8:	6f62615f 	svcvs	0x0062615f
80704ecc:	685f7472 	ldmdavs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
80704ed0:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
80704ed4:	72007265 	andvc	r7, r0, #1342177286	; 0x50000006
80704ed8:	6d5f7465 	cfldrdvs	mvd7, [pc, #-404]	; 80704d4c <.LC14+0x320>
80704edc:	0065646f 	rsbeq	r6, r5, pc, ror #8
80704ee0:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
80704ee4:	6378652f 	cmnvs	r8, #197132288	; 0xbc00000
80704ee8:	69747065 	ldmdbvs	r4!, {r0, r2, r5, r6, ip, sp, lr}^
80704eec:	692f6e6f 	stmdbvs	pc!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}	; <UNPREDICTABLE>
80704ef0:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
80704ef4:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
80704ef8:	6900632e 	stmdbvs	r0, {r1, r2, r3, r5, r8, r9, sp, lr}
80704efc:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
80704f00:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
80704f04:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
80704f08:	65670074 	strbvs	r0, [r7, #-116]!	; 0xffffff8c
80704f0c:	65765f74 	ldrbvs	r5, [r6, #-3956]!	; 0xfffff08c
80704f10:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
80704f14:	64615f73 	strbtvs	r5, [r1], #-3955	; 0xfffff08d
80704f18:	73657264 	cmnvc	r5, #100, 4	; 0x40000006
80704f1c:	5f430073 	svcpl	0x00430073
80704f20:	61746164 	cmnvs	r4, r4, ror #2
80704f24:	6f62615f 	svcvs	0x0062615f
80704f28:	685f7472 	ldmdavs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
80704f2c:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
80704f30:	69007265 	stmdbvs	r0, {r0, r2, r5, r6, r9, ip, sp, lr}
80704f34:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
80704f38:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
80704f3c:	616e655f 	cmnvs	lr, pc, asr r5
80704f40:	00656c62 	rsbeq	r6, r5, r2, ror #24
80704f44:	0000000c 	andeq	r0, r0, ip
80704f48:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
80704f4c:	7c020001 	stcvc	0, cr0, [r2], {1}
80704f50:	000d0c0e 	andeq	r0, sp, lr, lsl #24
80704f54:	0000001c 	andeq	r0, r0, ip, lsl r0
80704f58:	80704f44 	rsbshi	r4, r0, r4, asr #30
80704f5c:	8070462c 	rsbshi	r4, r0, ip, lsr #12
80704f60:	00000024 	andeq	r0, r0, r4, lsr #32
80704f64:	8b040e42 	blhi	80808874 <.LC14+0x103e48>
80704f68:	0b0d4201 	bleq	80a55774 <.LC14+0x350d48>
80704f6c:	420d0d4a 	andmi	r0, sp, #4736	; 0x1280
80704f70:	00000ecb 	andeq	r0, r0, fp, asr #29
80704f74:	0000001c 	andeq	r0, r0, ip, lsl r0
80704f78:	80704f44 	rsbshi	r4, r0, r4, asr #30
80704f7c:	80704650 	rsbshi	r4, r0, r0, asr r6
80704f80:	000000c8 	andeq	r0, r0, r8, asr #1
80704f84:	8b080e42 	blhi	80908894 <.LC14+0x203e68>
80704f88:	42018e02 	andmi	r8, r1, #2, 28
80704f8c:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
80704f90:	080d0c5e 	stmdaeq	sp, {r1, r2, r3, r4, r6, sl, fp}
80704f94:	00000018 	andeq	r0, r0, r8, lsl r0
80704f98:	80704f44 	rsbshi	r4, r0, r4, asr #30
80704f9c:	80704718 	rsbshi	r4, r0, r8, lsl r7
80704fa0:	00000094 	muleq	r0, r4, r0
80704fa4:	8b080e42 	blhi	809088b4 <.LC14+0x203e88>
80704fa8:	42018e02 	andmi	r8, r1, #2, 28
80704fac:	00040b0c 	andeq	r0, r4, ip, lsl #22
80704fb0:	0000001c 	andeq	r0, r0, ip, lsl r0
80704fb4:	80704f44 	rsbshi	r4, r0, r4, asr #30
80704fb8:	807047ac 	rsbshi	r4, r0, ip, lsr #15
80704fbc:	00000034 	andeq	r0, r0, r4, lsr r0
80704fc0:	8b080e42 	blhi	809088d0 <.LC14+0x203ea4>
80704fc4:	42018e02 	andmi	r8, r1, #2, 28
80704fc8:	54040b0c 	strpl	r0, [r4], #-2828	; 0xfffff4f4
80704fcc:	00080d0c 	andeq	r0, r8, ip, lsl #26
80704fd0:	0000001c 	andeq	r0, r0, ip, lsl r0
80704fd4:	80704f44 	rsbshi	r4, r0, r4, asr #30
80704fd8:	807047e0 	rsbshi	r4, r0, r0, ror #15
80704fdc:	00000034 	andeq	r0, r0, r4, lsr r0
80704fe0:	8b040e42 	blhi	808088f0 <.LC14+0x103ec4>
80704fe4:	0b0d4201 	bleq	80a557f0 <.LC14+0x350dc4>
80704fe8:	420d0d52 	andmi	r0, sp, #5248	; 0x1480
80704fec:	00000ecb 	andeq	r0, r0, fp, asr #29
80704ff0:	00000018 	andeq	r0, r0, r8, lsl r0
80704ff4:	80704f44 	rsbshi	r4, r0, r4, asr #30
80704ff8:	80704814 	rsbshi	r4, r0, r4, lsl r8
80704ffc:	0000001c 	andeq	r0, r0, ip, lsl r0
80705000:	8b080e42 	blhi	80908910 <.LC14+0x203ee4>
80705004:	42018e02 	andmi	r8, r1, #2, 28
80705008:	00040b0c 	andeq	r0, r4, ip, lsl #22
8070500c:	00000018 	andeq	r0, r0, r8, lsl r0
80705010:	80704f44 	rsbshi	r4, r0, r4, asr #30
80705014:	80704830 	rsbshi	r4, r0, r0, lsr r8
80705018:	0000001c 	andeq	r0, r0, ip, lsl r0
8070501c:	8b080e42 	blhi	8090892c <.LC14+0x203f00>
80705020:	42018e02 	andmi	r8, r1, #2, 28
80705024:	00040b0c 	andeq	r0, r4, ip, lsl #22
80705028:	00000018 	andeq	r0, r0, r8, lsl r0
8070502c:	80704f44 	rsbshi	r4, r0, r4, asr #30
80705030:	8070484c 	rsbshi	r4, r0, ip, asr #16
80705034:	0000001c 	andeq	r0, r0, ip, lsl r0
80705038:	8b080e42 	blhi	80908948 <.LC14+0x203f1c>
8070503c:	42018e02 	andmi	r8, r1, #2, 28
80705040:	00040b0c 	andeq	r0, r4, ip, lsl #22
80705044:	00000018 	andeq	r0, r0, r8, lsl r0
80705048:	80704f44 	rsbshi	r4, r0, r4, asr #30
8070504c:	80704868 	rsbshi	r4, r0, r8, ror #16
80705050:	0000001c 	andeq	r0, r0, ip, lsl r0
80705054:	8b080e42 	blhi	80908964 <.LC14+0x203f38>
80705058:	42018e02 	andmi	r8, r1, #2, 28
8070505c:	00040b0c 	andeq	r0, r4, ip, lsl #22
80705060:	0000001c 	andeq	r0, r0, ip, lsl r0
80705064:	80704f44 	rsbshi	r4, r0, r4, asr #30
80705068:	80704884 	rsbshi	r4, r0, r4, lsl #17
8070506c:	0000004c 	andeq	r0, r0, ip, asr #32
80705070:	8b040e42 	blhi	80808980 <.LC14+0x103f54>
80705074:	0b0d4201 	bleq	80a55880 <.LC14+0x350e54>
80705078:	420d0d5e 	andmi	r0, sp, #6016	; 0x1780
8070507c:	00000ecb 	andeq	r0, r0, fp, asr #29
80705080:	00000018 	andeq	r0, r0, r8, lsl r0
80705084:	80704f44 	rsbshi	r4, r0, r4, asr #30
80705088:	807048d0 	ldrsbthi	r4, [r0], #-128	; 0xffffff80
8070508c:	0000003c 	andeq	r0, r0, ip, lsr r0
80705090:	8b080e42 	blhi	809089a0 <.LC14+0x203f74>
80705094:	42018e02 	andmi	r8, r1, #2, 28
80705098:	00040b0c 	andeq	r0, r4, ip, lsl #22
8070509c:	00002e41 	andeq	r2, r0, r1, asr #28
807050a0:	61656100 	cmnvs	r5, r0, lsl #2
807050a4:	01006962 	tsteq	r0, r2, ror #18
807050a8:	00000024 	andeq	r0, r0, r4, lsr #32
807050ac:	412d3705 	teqmi	sp, r5, lsl #14
807050b0:	070a0600 	streq	r0, [sl, -r0, lsl #12]
807050b4:	09010841 	stmdbeq	r1, {r0, r6, fp}
807050b8:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
807050bc:	17011501 	strne	r1, [r1, -r1, lsl #10]
807050c0:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
807050c4:	1e011a01 	vmlane.f32	s2, s2, s2
807050c8:	Address 0x00000000807050c8 is out of bounds.


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
   0:	000001ad 	andeq	r0, r0, sp, lsr #3
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
  3c:	0000ca05 	andeq	ip, r0, r5, lsl #20
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
  68:	bc050802 	stclt	8, cr0, [r5], {2}
  6c:	02000000 	andeq	r0, r0, #0
  70:	00c10504 	sbceq	r0, r1, r4, lsl #10
  74:	d9050000 	stmdble	r5, {}	; <UNPREDICTABLE>
  78:	01000000 	mrseq	r0, (UNDEF: 0)
  7c:	6000000f 	andvs	r0, r0, pc
  80:	00005400 	andeq	r5, r0, r0, lsl #8
  84:	b49c0100 	ldrlt	r0, [ip], #256	; 0x100
  88:	06000000 	streq	r0, [r0], -r0
  8c:	01006176 	tsteq	r0, r6, ror r1
  90:	0000480f 	andeq	r4, r0, pc, lsl #16
  94:	6c910200 	lfmvs	f0, 4, [r1], {0}
  98:	00617006 	rsbeq	r7, r1, r6
  9c:	00480f01 	subeq	r0, r8, r1, lsl #30
  a0:	91020000 	mrsls	r0, (UNDEF: 2)
  a4:	00e90768 	rsceq	r0, r9, r8, ror #14
  a8:	11010000 	mrsne	r0, (UNDEF: 1)
  ac:	00000048 	andeq	r0, r0, r8, asr #32
  b0:	00749102 	rsbseq	r9, r4, r2, lsl #2
  b4:	00008108 	andeq	r8, r0, r8, lsl #2
  b8:	54150100 	ldrpl	r0, [r5], #-256	; 0xffffff00
  bc:	64006000 	strvs	r6, [r0], #-0
  c0:	01000002 	tsteq	r0, r2
  c4:	0001879c 	muleq	r1, ip, r7
  c8:	00d40700 	sbcseq	r0, r4, r0, lsl #14
  cc:	17010000 	strne	r0, [r1, -r0]
  d0:	0000019f 	muleq	r0, pc, r1	; <UNPREDICTABLE>
  d4:	09549102 	ldmdbeq	r4, {r1, r8, ip, pc}^
  d8:	0060008c 	rsbeq	r0, r0, ip, lsl #1
  dc:	00000044 	andeq	r0, r0, r4, asr #32
  e0:	00000100 	andeq	r0, r0, r0, lsl #2
  e4:	00004e07 	andeq	r4, r0, r7, lsl #28
  e8:	481b0100 	ldmdami	fp, {r8}
  ec:	02000000 	andeq	r0, r0, #0
  f0:	760a7491 			; <UNDEFINED> instruction: 0x760a7491
  f4:	1b010061 	blne	40280 <mmu_section_map-0x5bfd80>
  f8:	00000048 	andeq	r0, r0, r8, asr #32
  fc:	00709102 	rsbseq	r9, r0, r2, lsl #2
 100:	6000d009 	andvs	sp, r0, r9
 104:	00004c00 	andeq	r4, r0, r0, lsl #24
 108:	00011c00 	andeq	r1, r1, r0, lsl #24
 10c:	004e0700 	subeq	r0, lr, r0, lsl #14
 110:	1f010000 	svcne	0x00010000
 114:	00000048 	andeq	r0, r0, r8, asr #32
 118:	006c9102 	rsbeq	r9, ip, r2, lsl #2
 11c:	60011c09 	andvs	r1, r1, r9, lsl #24
 120:	00004c00 	andeq	r4, r0, r0, lsl #24
 124:	00013800 	andeq	r3, r1, r0, lsl #16
 128:	004e0700 	subeq	r0, lr, r0, lsl #14
 12c:	23010000 	movwcs	r0, #4096	; 0x1000
 130:	00000048 	andeq	r0, r0, r8, asr #32
 134:	00689102 	rsbeq	r9, r8, r2, lsl #2
 138:	60016809 	andvs	r6, r1, r9, lsl #16
 13c:	00005000 	andeq	r5, r0, r0
 140:	00015400 	andeq	r5, r1, r0, lsl #8
 144:	004e0700 	subeq	r0, lr, r0, lsl #14
 148:	28010000 	stmdacs	r1, {}	; <UNPREDICTABLE>
 14c:	00000048 	andeq	r0, r0, r8, asr #32
 150:	00649102 	rsbeq	r9, r4, r2, lsl #2
 154:	6001b80b 	andvs	fp, r1, fp, lsl #16
 158:	00005800 	andeq	r5, r0, r0, lsl #16
 15c:	61700a00 	cmnvs	r0, r0, lsl #20
 160:	482d0100 	stmdami	sp!, {r8}
 164:	02000000 	andeq	r0, r0, #0
 168:	760a6091 			; <UNDEFINED> instruction: 0x760a6091
 16c:	2d010061 	stccs	0, cr0, [r1, #-388]	; 0xfffffe7c
 170:	00000048 	andeq	r0, r0, r8, asr #32
 174:	075c9102 	ldrbeq	r9, [ip, -r2, lsl #2]
 178:	0000004e 	andeq	r0, r0, lr, asr #32
 17c:	00482d01 	subeq	r2, r8, r1, lsl #26
 180:	91020000 	mrsls	r0, (UNDEF: 2)
 184:	0c000058 	stceq	0, cr0, [r0], {88}	; 0x58
 188:	00000192 	muleq	r0, r2, r1
 18c:	0001920d 	andeq	r9, r1, sp, lsl #4
 190:	040e0000 	streq	r0, [lr], #-0
 194:	00000198 	muleq	r0, r8, r1
 198:	5d080102 	stfpls	f0, [r8, #-8]
 19c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
 1a0:	00018704 	andeq	r8, r1, r4, lsl #14
 1a4:	00750f00 	rsbseq	r0, r5, r0, lsl #30
 1a8:	a0030000 	andge	r0, r3, r0
 1ac:	00000048 	andeq	r0, r0, r8, asr #32
 1b0:	0000a400 	andeq	sl, r0, r0, lsl #8
 1b4:	d6000400 	strle	r0, [r0], -r0, lsl #8
 1b8:	04000000 	streq	r0, [r0], #-0
 1bc:	00000001 	andeq	r0, r0, r1
 1c0:	00f40c00 	rscseq	r0, r4, r0, lsl #24
 1c4:	008c0000 	addeq	r0, ip, r0
 1c8:	031c0000 	tsteq	ip, #0
 1cc:	00500060 	subseq	r0, r0, r0, rrx
 1d0:	00ec0000 	rsceq	r0, ip, r0
 1d4:	01020000 	mrseq	r0, (UNDEF: 2)
 1d8:	00005408 	andeq	r5, r0, r8, lsl #8
 1dc:	06010200 	streq	r0, [r1], -r0, lsl #4
 1e0:	00000056 	andeq	r0, r0, r6, asr r0
 1e4:	62070202 	andvs	r0, r7, #536870912	; 0x20000000
 1e8:	02000000 	andeq	r0, r0, #0
 1ec:	00ca0502 	sbceq	r0, sl, r2, lsl #10
 1f0:	04020000 	streq	r0, [r2], #-0
 1f4:	0000af07 	andeq	sl, r0, r7, lsl #30
 1f8:	33750300 	cmncc	r5, #0, 6
 1fc:	1f030032 	svcne	0x00030032
 200:	00000041 	andeq	r0, r0, r1, asr #32
 204:	69050404 	stmdbvs	r5, {r2, sl}
 208:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
 20c:	00aa0704 	adceq	r0, sl, r4, lsl #14
 210:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 214:	0000a507 	andeq	sl, r0, r7, lsl #10
 218:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
 21c:	000000bc 	strheq	r0, [r0], -ip
 220:	c1050402 	tstgt	r5, r2, lsl #8
 224:	05000000 	streq	r0, [r0, #-0]
 228:	00000107 	andeq	r0, r0, r7, lsl #2
 22c:	031c9001 	tsteq	ip, #1
 230:	00240060 	eoreq	r0, r4, r0, rrx
 234:	9c010000 	stcls	0, cr0, [r1], {-0}
 238:	00010206 	andeq	r0, r1, r6, lsl #4
 23c:	53100200 	tstpl	r0, #0, 4
 240:	40000000 	andmi	r0, r0, r0
 244:	2c006003 	stccs	0, cr6, [r0], {3}
 248:	01000000 	mrseq	r0, (UNDEF: 0)
 24c:	0075079c 			; <UNDEFINED> instruction: 0x0075079c
 250:	a0040000 	andge	r0, r4, r0
 254:	00000048 	andeq	r0, r0, r8, asr #32
 258:	00003300 	andeq	r3, r0, r0, lsl #6
 25c:	4c000400 	cfstrsmi	mvf0, [r0], {-0}
 260:	04000001 	streq	r0, [r0], #-1
 264:	00000001 	andeq	r0, r0, r1
 268:	01220c00 	teqeq	r2, r0, lsl #24
 26c:	008c0000 	addeq	r0, ip, r0
 270:	036c0000 	cmneq	ip, #0
 274:	00140060 	andseq	r0, r4, r0, rrx
 278:	01970000 	orrseq	r0, r7, r0
 27c:	19020000 	stmdbne	r2, {}	; <UNPREDICTABLE>
 280:	01000001 	tsteq	r0, r1
 284:	60036c0d 	andvs	r6, r3, sp, lsl #24
 288:	00001400 	andeq	r1, r0, r0, lsl #8
 28c:	009c0100 	addseq	r0, ip, r0, lsl #2
 290:	0000004f 	andeq	r0, r0, pc, asr #32
 294:	01760002 	cmneq	r6, r2
 298:	01040000 	mrseq	r0, (UNDEF: 4)
 29c:	000001dd 	ldrdeq	r0, [r0], -sp
 2a0:	00600380 	rsbeq	r0, r0, r0, lsl #7
 2a4:	00600398 	mlseq	r0, r8, r3, r0
 2a8:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 2ac:	72656b2f 	rsbvc	r6, r5, #48128	; 0xbc00
 2b0:	5f6c656e 	svcpl	0x006c656e
 2b4:	72746e65 	rsbsvc	r6, r4, #1616	; 0x650
 2b8:	00532e79 	subseq	r2, r3, r9, ror lr
 2bc:	6573552f 	ldrbvs	r5, [r3, #-1327]!	; 0xfffffad1
 2c0:	792f7372 	stmdbvc	pc!, {r1, r4, r5, r6, r8, r9, ip, sp, lr}	; <UNPREDICTABLE>
 2c4:	442f6575 	strtmi	r6, [pc], #-1397	; 2cc <mmu_section_map-0x5ffd34>
 2c8:	746b7365 	strbtvc	r7, [fp], #-869	; 0xfffffc9b
 2cc:	412f706f 	teqmi	pc, pc, rrx
 2d0:	36764d49 	ldrbtcc	r4, [r6], -r9, asr #26
 2d4:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
 2d8:	20534120 	subscs	r4, r3, r0, lsr #2
 2dc:	35322e32 	ldrcc	r2, [r2, #-3634]!	; 0xfffff1ce
 2e0:	Address 0x00000000000002e0 is out of bounds.


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
  24:	01b10002 			; <UNDEFINED> instruction: 0x01b10002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0060031c 	rsbeq	r0, r0, ip, lsl r3
  34:	00000050 	andeq	r0, r0, r0, asr r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02590002 	subseq	r0, r9, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	0060036c 	rsbeq	r0, r0, ip, ror #6
  54:	00000014 	andeq	r0, r0, r4, lsl r0
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	02900002 	addseq	r0, r0, #2
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
  38:	6d2f7372 	stcvs	3, cr7, [pc, #-456]!	; fffffe78 <.LC14+0x7f8fb44c>
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
 18c:	352f4b82 	strcc	r4, [pc, #-2946]!	; fffff612 <.LC14+0x7f8fabe6>
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
  34:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; fffffea4 <.LC14+0x7f8fb478>
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
  bc:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  c0:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  c4:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
  c8:	68730074 	ldmdavs	r3!, {r2, r4, r5, r6}^
  cc:	2074726f 	rsbscs	r7, r4, pc, ror #4
  d0:	00746e69 	rsbseq	r6, r4, r9, ror #28
  d4:	73747570 	cmnvc	r4, #112, 10	; 0x1c000000
  d8:	756d6d00 	strbvc	r6, [sp, #-3328]!	; 0xfffff300
  dc:	6365735f 	cmnvs	r5, #2080374785	; 0x7c000001
  e0:	6e6f6974 	mcrvs	9, 3, r6, cr15, cr4, {3}
  e4:	70616d5f 	rsbvc	r6, r1, pc, asr sp
  e8:	62617400 	rsbvs	r7, r1, #0, 8
  ec:	615f656c 	cmpvs	pc, ip, ror #10
  f0:	00726464 	rsbseq	r6, r2, r4, ror #8
  f4:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
  f8:	72656b2f 	rsbvc	r6, r5, #48128	; 0xbc00
  fc:	2e6c656e 	cdpcs	5, 6, cr6, cr12, cr14, {3}
 100:	616d0063 	cmnvs	sp, r3, rrx
 104:	69006e69 	stmdbvs	r0, {r0, r3, r5, r6, r9, sl, fp, sp, lr}
 108:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
 10c:	74707572 	ldrbtvc	r7, [r0], #-1394	; 0xfffffa8e
 110:	7369645f 	cmnvc	r9, #1593835520	; 0x5f000000
 114:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
 118:	776f6c00 	strbvc	r6, [pc, -r0, lsl #24]!
 11c:	6578655f 	ldrbvs	r6, [r8, #-1375]!	; 0xfffffaa1
 120:	656b0063 	strbvs	r0, [fp, #-99]!	; 0xffffff9d
 124:	692f6e72 	stmdbvs	pc!, {r1, r4, r5, r6, r9, sl, fp, sp, lr}	; <UNPREDICTABLE>
 128:	2f74696e 	svccs	0x0074696e
 12c:	5f776f6c 	svcpl	0x00776f6c
 130:	63657865 	cmnvs	r5, #6619136	; 0x650000
 134:	Address 0x0000000000000134 is out of bounds.


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
