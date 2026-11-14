.entry main
.bss
buf: .zero 64
.code
main:
    LI r1, buf
    LI r2, 0
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9223372036854775808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4607182418800017408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4616189618054758400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4602678819172646912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4591870180066957722
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4596373779694328218
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4599075939470750516
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4599676419421066581
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636737291354636288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4921056587992461136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4906019910204099648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4907451598986591450
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4517329193108106637
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4502148214488346440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4504762867522569078
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4518434226865098134
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9218868437227405311
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9221120237041090560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9218868437227405312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4503599627370496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4683220299150161609
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4751297606875873280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4845873199050653696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4845873199050653697
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9094988921128908188
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4892433759222981601
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4517329193108106637
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4503760093022765596
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643176031446892544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4614256650576692846
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4612811918334230528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4936209963552724370
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4950912855330343670
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4475073619774577209
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4878069932856101786
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4685406262320816728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4399283603904592726
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4791312740804394432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4492821234450310633
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4404673805209700785
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4425941331152562422
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4459941087385332671
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4794930759371896674
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4652263692963749673
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4507835546559680226
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4715938850910783669
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810700474956181976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4677786713567129088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4390108003986433044
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4743036080502721465
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4629843014158713700
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4572103044579303493
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4433314966424015580
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4424990229764491812
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4479785846352317486
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4779680663647353872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4356974796591864646
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4337096817851446093
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4521618918626357646
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4446728423314785455
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4690304913809814116
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4378325144610837864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4933061341873320818
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4849847614053254794
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4296299038334988642
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4761043364048742528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4812338740122262040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4584399411742855463
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4780081054272540319
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4697617591892323105
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4591431166267102371
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4635815471143940920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4460391392157644884
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4376022363139453075
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4624323837290990607
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4661152203959802488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4546462235367662241
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4519639523968618978
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4703797264475474081
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4461873861604982690
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4587300379538353660
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4593961464983064378
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4805191348526952006
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4694452457555575883
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4367823088340236470
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4786722964872063899
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4456936285439324174
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4417664765722144734
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4445367468973002149
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4677026871867144843
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4740857572627927969
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4791358131429415569
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4883145539162987815
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4801020639296494240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4926318622927288906
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4610654404379978625
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4699064529492996886
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4580614685700864403
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4834088029526774320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4371378521626617426
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4410045191167254729
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4550638578699372847
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4522922803381134119
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4703943529068785770
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4730098154626980391
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4607604413296738202
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721571294662969136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4775250325776914473
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4479328418980544190
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4656077398572808256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4398694288489889594
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4927695220088267989
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4517741201661256019
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4846703088662744049
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4862253404398130665
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4718011837439163291
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4506749782732211130
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4654738262080711858
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4481714568733360509
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4398045547721154883
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4344846207646538727
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4789526689656435168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4860000400055633863
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4490826155747087045
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4447671734599075156
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4626544217274553064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4612304220995216513
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4701127561813957560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4850249699834289171
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4314394359890846882
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4637875154034759107
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4727697303709154355
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4671184640319974237
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4485735742779681429
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4678860866059222253
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4471819104009085703
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4855789043480207778
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4532897344403292973
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4451016295645208210
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4681498005101411356
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4376954800216586263
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4317849189587154279
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4707294468973736125
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4399264925239422895
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4357576762168583966
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4881396775419015142
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568689423817088095
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819765825460537582
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4462518861605283041
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4666637485473383459
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4334164119271423084
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4735663757246132731
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4531470390469661087
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4447117254130066956
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4866554678853729144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807384352497805274
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4863554474544322179
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4385499050188156299
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4449676980859159305
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4418008479101211038
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4703172650075183223
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4401959002120578362
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4779218113319837446
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4433601587506347771
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4877427544657400800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4730072295858627914
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4656202660435060966
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4726673340045574731
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4832865118645162380
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4908221754632663846
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4461075506917110928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4584274107200256518
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4350527124327763026
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4554341359473345278
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653849797705848698
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4867028953343238985
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621097660070944688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4538756027894177389
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4337060590007244518
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4763566350262963218
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4819448296061788615
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4849867466427063929
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4661622098238904545
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4691840118329086069
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4536171857693123723
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4583950700248755648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4716169357438305318
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4776244414944414463
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4831147049269303026
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4585253084591514106
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4926815459565520715
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4338203006666471353
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644050320633394771
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4766553881136575982
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4791858161714215884
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4676868176303094184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4370873538804419409
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4509155088296770112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4580477751835482650
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4571334830922903557
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4531596592325719855
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4832042026120924140
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4542398978193999710
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4904311088685780146
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4556472344950362817
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4877964688748508358
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4763347331512861230
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4809591520807726792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4328124023728524394
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4426686807807789015
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4422712358059329534
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4445242825848163915
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4877379579825242548
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621286808081938362
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4340798746009523691
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4775929692276614739
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4816888447032288757
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4757179543762617973
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4360569775306137028
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4403897244267467826
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4502111705398201476
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4535908190742232364
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4845439978426223765
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4519657409189340207
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4689241249335875878
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4639547811440857576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4475435119235896971
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4770840715659317325
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4701908695795701086
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4678058442472897671
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4906402759210059941
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4346660504414676607
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4836556322324908018
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4404846794938781821
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4786418300291475048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4765826213558112135
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4359407712548808211
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4881227632949801670
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4554382439789897061
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4675808569157155430
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4565342125279147251
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4301134191903219089
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813354798562120946
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807413557766440304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4644285631103581171
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4608149256742035115
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4657240406952583063
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4584465900413608884
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4452245685796607807
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4586831116565334938
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4675521649244111597
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4629726153929797330
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4870400908163153511
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4362479721425231309
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711381759417052577
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4656432133961124431
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4428552112453404989
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4895244332121214291
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4428728800075557579
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4922612094967784592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4463458791624889130
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4421409547833266478
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4527033984539644988
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4669618791316584734
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4699321276474179853
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4581949193887882096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4687526700081804135
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4850835896683945617
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4478408941021761972
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4343210626199145903
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4442218572093051228
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4919367899898833097
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4601949061824303252
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4778725767128201931
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4502338795026432223
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4306309971169015609
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4392093249811383033
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4695923938594136964
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4869911118456767351
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4659757921619356641
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4754331244776426652
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4285625453773769621
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4300958167844122233
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4307475070569343971
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4733769072692076395
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4846165887967438299
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4343717954584688986
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815213863108661552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4408306641793563839
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4457480046349611558
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4680466487303140450
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4462496820980272778
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4481534630832900848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4397382224709533943
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4578722585970172282
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4303539416307579641
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4747105574024125413
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4435607935082673098
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4593708257367048868
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4793531623629057650
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4788269728107664917
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4443795545124432123
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4532843099334300305
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4374363362248486305
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4529800335062377064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4660770787061064878
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4415326627903673141
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4386879594122241695
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4804785568497466172
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4298379192658985361
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4885026380537213189
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4463662666265465802
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4832915466320731430
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4728695311263297636
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4511097969887370094
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4432194092078431161
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4551580891177719145
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4531779579122756787
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4694600046046205103
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4775748241800786405
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721124355462761013
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4867344879509974351
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4790055637532324670
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4548844621294844967
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4740863510173679459
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4371861133057493138
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4780297456582058805
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4534008818886843135
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4653631479980100185
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4871528210810315416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4302080432835472921
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4362436171504609268
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4759698333454492204
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4690329298488382540
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4763702475034457745
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4676619747349378501
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4716316503038373840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4728841127912801899
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4865642984833271719
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4518576201578103518
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4408948823190347253
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4735466180746040728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4372582727885395628
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4676844436296683129
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4652671029084999910
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4533375900870548410
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4840576084735892025
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4461144595979643099
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4328629788464600090
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4581170544774491309
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4532273905477086230
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4622290765128358380
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4724135703984288903
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4609658172706232159
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4332274256707272472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4790716877767007584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4547741024590657724
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4751375072253077415
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4478867685606354894
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4703339427473488053
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4688877856787849819
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4360500481612405761
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4436781812176348572
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4735268351245948607
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4736319648781594405
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4855253322919375027
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4510855849615890468
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4879627013616461505
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4846318818292616584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4464203015210653551
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4507455739988528702
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4460244620638354068
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642491646707491614
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4422326567652719266
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4579096529874953031
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4908838638971215607
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721572053812969489
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4539348546794178069
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4795795363864486786
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4735096612745868634
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807899397664060722
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4745472598007106392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4301637531561179439
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4650980329547377074
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4932220598188169155
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4422588262053504265
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4457980784240469732
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4431452214993817955
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4607408922491460610
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4840340979215083084
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4511618069462549909
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4800645733561023346
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4792199640413563911
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657655286756254106
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4392120439713010094
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4580502899657764412
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576647943248559444
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4777105379830967627
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4581959962070730910
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4391369111934250996
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4846361948883069333
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4615339850241537608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4622552594924779056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4381848419251634232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4756619596304764288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4397455999609918439
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4740897661149813697
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4326385010991079683
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4755575860402006214
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4519056825509060539
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4361410216667761856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4593549913091154588
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4576323403333712839
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4769977546537979764
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4373102106865256520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4726464840046049008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4405437603598415682
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4708981105403161338
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4685150241840697511
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822172369193347671
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4296916843658094435
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4345977492688834370
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4860507403610932635
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4819143668544397969
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4298081862833718500
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4890346426581444317
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4592330022391936934
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4498951003383956316
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4585225546120192789
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4431488499974627545
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4487372064116299014
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4743371055360857504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4457967143224838381
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4451461679368354474
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4921262611271688616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4402541912659673752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4834960509469786850
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4558238938604166226
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4540193267267895811
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4526960682474332145
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4437525094609229915
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4668186745590460567
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4923302736423829842
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819788947294349619
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4595683169733331709
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4527257506281661052
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4492079699747670772
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4579498074129943160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4540309610728323858
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4534375388359013832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4420587922177995320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4908020165010340632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4756715306124046193
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4766007273323821449
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4496443852524725192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4848711808373479790
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4867916814488189691
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4674910976430182791
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4534967299271289462
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4501472683026028908
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4296881124377582556
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4770864212172547890
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4530791285294693378
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4466841273160990044
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4836303399329286234
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4457012854552519005
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4473193619234853192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4834325585030730158
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4517912511730208411
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4860625984243211885
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4818259773383059578
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4607556030490126232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4736937659699921819
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4463406964416525999
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639860308148826302
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4878185664553799865
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4626069831694038018
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4397729336020568182
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4415592790013172083
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4905376855520929700
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4690514321208468697
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4782411364871589296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4766805056136692945
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4871242453104613081
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830579016853760269
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4762161606512309084
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4329402904302414526
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4421310154281228884
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4338177364647214850
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4455014521368582520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4377480664518473245
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649151338589107460
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4851136470986758923
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4481329756681436809
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4712363380151836013
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638080208530148036
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4781425505410709094
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4826678915003830631
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4556317789960398279
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4471809154606493750
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4354935947386060067
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4676514180322129341
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4442485873248822260
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4347166120133720005
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4660605902463228105
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4500813556546305660
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4637462900340369376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4906965209839530930
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4354948092763761284
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4549146313154185456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4672408184390943994
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4578065825340765908
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4686948693041534978
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4547107607681562766
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4550541266422711218
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4392742561130163891
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4549034882715398500
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4325839213131024918
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4714179400930791011
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4569628584043896108
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4561450920201821923
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4591258604211854016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4795795017184799125
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4809848882003763252
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4417944624883652007
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4610325101145379972
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4521778829535991562
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4743875883006362866
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621331653580327250
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4892372462300941013
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4511603927350692590
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4370232954122401112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4410170057620669678
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4465496287800546372
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617977071803347804
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4628025929452755488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4659380398877377427
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4553945543533498810
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4756029506890283774
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4760137727054338302
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4712392955251020310
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4600936323030949484
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4924182527083735124
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4496607890687650874
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4426724279426458808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4773832474145089666
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4556272514759235429
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4607526991142482630
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645803545997667181
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4536732198181624893
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4414343925266496785
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4561590302189726828
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4430836600893196241
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4876813056682525424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4430730558499341283
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4421005187864699673
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4367161995343331334
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4709351845577716064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4620745109477023332
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4711911272752650598
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4846112003725781344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4860604653318196653
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4463075866112835814
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4341208182298307596
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4796330462784604428
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4461944995980015814
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4326496925722443355
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4820046920304363541
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4804581901307699372
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4569489422672751832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4467066295768677974
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4856241673702262270
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4555983534516019008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4492038983747651812
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4620127929137626047
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4600502496974113100
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4508932112264365401
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4863113230159926549
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4514914384301858223
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4507067351428907473
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4316277459317760346
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4562345314571977569
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808751463650852379
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4333471256610512816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4826419451188621611
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4560489746310814340
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646845218173768247
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4749462069379733442
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4717268002852192921
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4766331454573972407
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4676839233610707726
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4668746517955538271
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4413867750339517236
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4346998651605127495
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813329407937109122
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4466605369280136566
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4780529722207166962
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4490891650976106552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4757029625920539620
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4437290037315755361
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4606980386827178113
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4742662858914804161
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4600936280081276504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4509648031483063355
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4621216050493765383
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4356264852760595817
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4736326550746441370
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4331741893016051627
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4890809102991372483
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4861576702367442328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4483439611004819478
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4533228811462479916
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4561382469160510048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4780653605019724649
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4294073999371591676
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4685190394618618105
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4706540469859524830
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4463468860160451143
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4912044489222682956
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630782560725348454
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4387079889570638188
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4773370103693091699
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4696243918927247442
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4356436814930479060
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4593153574402150830
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4674788745265325873
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4382558460997257562
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4479352463158533963
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4294381144773917004
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4415117173607282999
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4301521318503926963
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4862999744664845684
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4670591447892468449
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4323467929081149240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4451630749773060575
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4686829765681479600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4853869278385873892
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4683525566116625612
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4697697653422360385
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4477481678867006131
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4742927658005921312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4825069706421622437
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4921182514004047921
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4839721926930051467
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4445849262559869509
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4390439965949710155
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4593896363512928462
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4750841902629997201
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4524964901044380414
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4404334851144468726
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4890675869694582353
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4456989299083758037
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4608422032799485656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4922764929262472278
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4486808451053536562
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4420092978030245002
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4765504323714212244
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4457069983849420608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4922235282746823173
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4294854165228415524
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4504755247527873434
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4367466440967824604
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4636518340794072712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4908216367117610367
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810908466747050313
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4610626344782952567
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4677231741669820490
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4604168832470914642
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4815661971009306068
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4728473183853319042
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4802371309019711582
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4645626138500920710
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4638781247395497456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4369312017679528839
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4315750471709023272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4884040580320896105
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4430852966946663908
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4462269017855166699
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4907402169001633075
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4852472886099399824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810828015571442362
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4554797062513049709
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4833564852914298019
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810892129161593487
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4342809889533992126
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4527331379741176885
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4341544459570410071
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4736632608746583888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4736747936746637592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4491649033935873089
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4372692045071651074
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4607609916223588765
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4653406060806529268
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4770364710373420362
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4355967264273359464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4491396826051583419
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4531527131252901865
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4547524270824156790
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4586880840428535717
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4870516037857245839
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4767319512621025074
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4862729696741169928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4833394469931516741
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4580634787865805962
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4512721943139661990
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4428264158351708400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4816713118787324315
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4407070348588002016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4407953906273990404
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4328290379967991089
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4330185023059168859
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4562612042927795957
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4521705235039068488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4828081763477144178
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4392835036116543068
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4703681035995419958
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4510443295120033270
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4943395150232600807
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4432654694653675698
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4314643781043243679
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4686142445617159539
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4525443287470771311
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4597595826104295959
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824139738728531578
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4731349493122756654
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4644842087066710051
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4297238056757255028
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4518242152148681177
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657955958188074121
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4685312525360773080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4542985541599573770
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4389235937392687098
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4748121115128730236
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4463915887027326539
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4733636142745188551
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4554627388077595562
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4804739927628276657
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4406379923496312224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632161046807935964
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4298380479324345191
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4774144162499726994
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4420343218870250795
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4756472359005185394
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4736251694746406512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4479640923868011608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4792130752892462972
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4740951351263156359
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4667214247346449141
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4775553097384488575
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4776492966333828554
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4763994425263162556
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4622655068549542038
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4497431441483151598
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4906816950213766011
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4670744226111769153
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4502375467948199857
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4838904727580267547
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4781921751504690177
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4716155392638298815
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4525562331732205005
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4544337078556736684
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4443779334507784911
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4677574156338622931
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4529668038304824243
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4417126679784394168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4405552415107710990
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4763539456512950695
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4492006482837024084
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4920350291057095779
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4758582168610225421
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4521554402470223564
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4852490427280470360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657558611453809092
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4804285468369908005
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4390402810371440915
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4566105845077262886
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4480562987555043917
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4524179349420011446
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4302874638120771241
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4508527200869660617
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4340436673306664900
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4518793884473568721
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4805061024937428901
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4474231132360336322
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4596455485384148946
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4496982675794473664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4496918141013223244
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4541159850216719782
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4445040599812511897
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4873406771844543410
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4848023780279459956
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4421380662413214361
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4669357707882401235
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4481153460571781520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4921729601076524153
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4481672384016656744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811490802410163281
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4447968656474213421
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4488896044117008672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4723753978879695225
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4493002279748100381
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4862474545944860828
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4894701989351810778
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4428645092800127974
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4538018823819205641
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4868730804525761078
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4526174906021825424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4533392008390555910
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4413077007766559504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4791694424107387717
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4508532332228857188
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4486952830116103793
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4316495958705852056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4441152018243700833
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4512731610136057857
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4571284115949048773
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4292154643258639346
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4426968049208161829
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4347235751166112134
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4848238877197089232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4847368173762548553
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4356968169874144016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4311964641109681602
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4519119756069089844
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818938905904488455
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4299016833587703087
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4883675189805654617
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4483523208504858407
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4866147091116694328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4355655226012061789
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4761257706135721995
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4555536574243026909
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4339480582824074568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4563627288780590428
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4657250615918051717
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4689272737335890539
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4684444455984368852
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4355900129237572707
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4865109733312392958
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4869016680160228933
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4867000450816340972
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4673637244636407656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4926863896494977991
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4766023153353125718
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4516945474200304020
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4563964167917865590
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4856195171648502975
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4867891197991817957
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4770324316615566144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4471973953356570490
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4788860712019920253
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4458479983068827191
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4360205304481307268
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4310488019297670175
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4510465581745749643
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4365935768383499216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4374454715937013845
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4567234850334650890
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4447640578417725199
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4863298988865751755
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4356891545309281848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4927164163222067085
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4563106823917466357
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4492420605035912300
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4921695493352545879
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4795777442655143115
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4284232457881542160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4723635734338148760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4412127552504886911
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4621234465166055558
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4720812326680918806
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4698109414108885478
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4792034199311954109
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4848785758352944193
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4534430258375039383
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4627205394745410965
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4616668067752797772
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4466921140645337369
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4796648963487773433
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4362467490964493735
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4640598488431973856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4705212694109865584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4687551207241815736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4865674244609117176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4479732559040925684
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4661905852012946776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4503409918198806004
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4462066236616481143
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4616629070791909213
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4372099577882540041
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4912919251326818417
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4760410522917743673
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4364689474268007442
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4742137236595571987
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4312860048092273830
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4411292773936349572
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4413333460708573456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4293781970702681113
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4851537804613305508
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4678861774899222525
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4913837931101403122
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4586618222337817484
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4868341889338140706
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4520884015909911390
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617481808386797179
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810268262126390866
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4337162760750340286
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4313226551630123294
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4913607046123212592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4525531548432348905
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4383197708087616038
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4479169256776272723
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4831455425089828474
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4421560498030840384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4550454716457194729
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4491898039747586180
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4570016240233071145
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4603126876626693896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4821798572526689035
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4622207844879090455
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4729472183101522016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4637101942668511871
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4576074456711132914
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4531255402347133279
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4755658211954958458
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4775022118988977868
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4477318998866930378
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4855759887868202319
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4743964939639675848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4418364804403201697
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4375955887464446455
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711126813816933857
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4751811762253280765
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4444144461981452314
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810724585368790859
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4875641974689366421
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4795611660904386898
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4560180605711765473
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4448754713362055108
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4843553855542830063
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4780592437050946166
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4534540393671090669
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4804333828995302692
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4656005520700569617
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4628181124132975740
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4710977962729364572
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4330225067324608290
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4473019502359772112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4613996668965120780
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4613949408265901333
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4788304004040911720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4727885787428460975
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4719786360262137961
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4773748569839906649
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4569851264010804672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4591907335563605705
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4639923500820348232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4765584731136124686
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4873602598484599055
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4686243167436952699
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810345952250938763
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4401620619519787040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4780757290566647932
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4621003604231337111
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4418434863156471522
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4457573904162155264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4628222681904676868
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4751763429753258258
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4778216388209631085
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4295098793581719992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4411927624602572132
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4642006109847305401
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4287536936074815568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4522295297278247851
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4804121555029211272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4611291067476423062
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4629705321802107116
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4861940452188912935
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4582420339774564260
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4518368957281110537
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4460975716726594547
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4734515712745598132
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4547378798926489049
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4798578172920183714
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4727348039167944056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4443891846882289467
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4452594635962377919
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4422767697201789017
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4381855458558759475
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4351145214012579107
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4675550761800080715
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4776405263174114482
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4684225363927732522
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4844079270486769803
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4546635242215742804
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4675841589269016142
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4816102018118904113
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4651746604326689674
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4704701738075895260
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4473265369234886603
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4613487395364195504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4399984995125012110
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4412719170852330373
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4347824747562827899
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4412666153045298849
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4773211895192469858
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4531511211205680096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4564545232556141092
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4568332440953173069
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4638343906336166097
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4520021958390154297
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4720552304262494631
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4458094443224897659
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4869020039906418423
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4845324565904948872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4514019753901441629
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817143031810731766
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4690424593976426914
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4527940829898744164
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4571416047747875776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4508990773901339031
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642287371519684489
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4417359304837807230
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809187075375908741
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4609187374497152766
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663344506172976702
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4569910731334708018
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4578128772285337530
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4561304427580953708
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4538551962054404349
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4493292029946936070
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4881203731422482037
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4392133515001333958
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4418615754541498280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4880267150089936488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4361502169016355547
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4863334504688496932
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4565705904428116649
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4607323382849011818
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4599524786323429082
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4862067615710945118
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4774913093132576418
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4346334143187117731
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568583816412385800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4313530522359975196
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4563531599515744160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4660981313848414315
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4479940558868151137
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4796757906358917913
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4730924403092732913
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4343037032962206176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4413096801849210323
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4440520957231642720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4412800716872876159
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4748618937883021841
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4332726463581109708
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645063117647882392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4314857310349663352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4766531434603362404
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4792736740816187504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4503516209398855499
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807222374294671592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4871124439665934970
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4713501009018039428
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4604688067173697229
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4776024559269743985
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4532979838150363979
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4466565923738544461
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4878066754223270936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4480443441368385311
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4621648895150574174
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4700696447806288031
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4864009951741599956
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4284874928559048994
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4711225208388477594
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4397861204897381487
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4371459028371524369
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4525849052342496760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4650959637812274518
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4557334333602471646
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4853313104464983494
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649981346786613964
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4547553252481770286
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4421849450560405313
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4608522556509095346
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4882515287565081234
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4747282467628339710
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4746943507628181869
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4522877286581112924
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4606705305915792419
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4422260430910095879
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4558011230725660178
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4848322469330282776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4746008338007355865
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4766653209261622235
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4921070877533751563
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4609951944369483198
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4862041598500787841
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4666586275642959612
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4787536365659889489
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4759307032121902687
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4837452634455201715
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4290133426770954135
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4741742745722576609
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4366761374670409399
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4727702059510363073
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4352726539176303395
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4540482368457391345
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4405096732796317159
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4890251420906935043
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4881732953764777418
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4517094002840373184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4409580007373093318
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4792260719693066760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4390318511972764652
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4839293755772015170
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4868022744527301699
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4864662481050241373
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4786602908276308396
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4413112902541966844
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4507614518897065213
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4879497822658328534
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4801422826433552025
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4368424388963900780
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4855480273538734039
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4597026911299295037
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4567067223908103907
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4502909377398572921
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4781196134316852285
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4482310456238626794
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4412802033706372866
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4325286581841950112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4508486290240995277
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4391445975437897886
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4486747550616008202
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4853353027656072641
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4456702640099249550
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4612900389299724526
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4555813547819262425
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4482041537272219267
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4354870410216453858
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4548216199912478995
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4609883220939583675
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4369660084940501354
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4540894674793611477
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658143131671681279
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4463996736800796246
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817752071117655997
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4689509866627101393
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4496248473762719923
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4624864648835736522
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4626316210345604138
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4912455798267159164
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4914679708540764471
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4361428674063613999
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4442215401603341085
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4651831345749466134
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4520360116797832414
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4748169980128752991
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4748332000128828437
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4314977616333793222
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4362894273211087746
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4458626793634720656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4921137999633064904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4387270807618913733
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4879318154539928700
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4536613577429329415
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4314603734673306181
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4382195485915329696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4572028649217351840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4345529547861215503
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4871017000863951619
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4670493078233252203
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4710220004478288543
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4713454813971656192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4338642089826693434
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4891303119747466706
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4727313797503416542
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4779986737831914115
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4359064102814203095
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4737746544023611096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4705538169436284755
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655579780334494284
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4736369214746461237
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4360589098293739304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4806329301784490097
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4566852194910118656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4730108649815556902
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4308319767814083340
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646185026859540821
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4603553484990985986
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4457523146349631628
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4469160692127233120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4865448575876975611
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646889875452765042
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4464735704987692199
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4302785195863503988
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4791528347978181054
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4315981815962968588
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4377634905977832036
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4398407601115641104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4846469098652397038
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4886458039496793905
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4486342600115819632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4495245857193049910
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4446353617410961360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4355713148443007596
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4491789621904786256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4862493822992419052
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4424344334378448860
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4601609509762787056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4387806103443805667
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4869617362732038989
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4747482782672378313
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4333632065021690869
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4592359617820405115
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4818515720108837726
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4749110517629190962
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4761222744011871892
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4493205045622252679
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826536766732535745
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4505104938627993653
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4361271422465123320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4414791081028423758
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4763330916103466048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4339428906062691528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4725849387025850538
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4712764443673656208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4864529406221059375
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4622721713557105104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4698390240852682898
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4502340006198307787
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812630200630875320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4665749363869807270
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4707116139614662820
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568081514811959046
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721579654654617190
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4587800623392499951
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4681013599564844971
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657521433519677170
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4572489264523015720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4598310322021691587
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4664454214114999691
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4603465961044700101
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4572277128868488543
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4666598441075528916
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4696682498106496909
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711393929323180196
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738382040615878656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4695838229788052423
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4703010041422445281
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648957359084920694
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4681577522915910353
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4590360045513077375
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4591550541731119916
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4619805294397225998
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651874152274401331
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4694960117823100158
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4587383052488530882
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4680633856945864625
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663428523291093269
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568020123402045698
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4680788292534907856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4618254778983369219
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4696283920442733887
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4681445120536583392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4725187651085271040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4606436978305951431
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4724886638282198221
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630626411359001516
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721306392259356262
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4725852250486027059
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711096119560419410
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4693043168571937522
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651752116898292333
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4600781556016254369
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650191332496543932
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4740358926367719424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4689359044658784633
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4713403632959723930
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4693781703230870258
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4705106458703864791
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4689247764530046435
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4606248093734699811
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711321015402857759
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4723705354255335424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634790791411152290
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4590915664816872908
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576969914544554899
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4590519341557275081
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663782497645613894
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648194427502529530
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721242904254113382
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636208951029548863
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4584598449918210572
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4676912129650860438
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4677193397053519666
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4665834595399852349
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4724207822653777510
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4590471954537880701
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634268156597916539
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4692452630059299111
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4591099987630813010
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663585599929056651
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4674899627217990871
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621973147170152055
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4720452797050598195
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635386007608173257
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4571905499436519860
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4695748708410312360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4660135960790000604
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651689800027298454
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657792015942554705
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4603192961112905017
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4606989059371111239
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4570813652668876690
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4665749996292402892
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4705295358538138255
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4597591770755589585
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576108840309562549
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650749965556208363
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4605464723924572119
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576627322576307421
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4725540648682677862
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4723064245453429146
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4692163239973258002
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4588696482701791259
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4613074858904300728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576670295615545288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4623367266721512086
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642688808324936816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4709643412553334784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4619432682495541045
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4690030448171427037
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646382353650106505
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4616976194067532809
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4688713109030897189
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576243689917145266
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4679348849996157524
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4675679929963148791
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738641048367005696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4591561478618331474
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630293373136118472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646775024383980846
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645950055127384421
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4582455254387922085
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4581590581273865459
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4599512217037740747
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636373951379421672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650699920167366325
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4664377249950322813
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4620527607229614566
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640192182420933569
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4725922426285509837
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4661686530867265431
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4695318726718775099
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4604285154116566963
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4679391448395768293
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4741101208368840704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4605220392106565025
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4741608663368597504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4569235689357773960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4739290299363229696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4724263848649949184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4615389334233136180
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4707930213213504799
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4675457909153564774
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630846148852810354
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4595190045461790827
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4674471175684144234
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617010343084585307
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4661991459064713293
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640728352880255002
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4671749809501168992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4583750884545192205
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4707537874006919086
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4726254852882038784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4681055103716739881
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4585426450905048663
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4693498774588118532
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4564151002626920075
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4695449333822388175
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4562711626475862912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4590977463383897911
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4741435285361917952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4627194044004783114
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4588795129504794626
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4612829790644171766
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4606793428984078570
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4591488708799828316
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4675282444291384803
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4722467299451417395
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4724299424085521203
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4571579593545564154
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4620448919402428226
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576667973585518150
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4679258297269638660
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650778165953582865
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4692801871931949187
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634568996722291790
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4741446134365421568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4578042269779127669
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4604115163604918441
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4726278217483996365
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4726202697684877312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4588152132096016310
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4702862966860168561
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4707227699607764992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4566729432320149061
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4605828325129957221
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4603871074170643291
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568825444376452502
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632747379872440544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568068012809868015
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4573264912249372995
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4597547080563709668
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649220647866629051
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650203718257536318
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632548855078785309
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4582952082477202825
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4726481820683809587
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4605948848625716262
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4674832619941993329
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635688436011399593
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650358774351568638
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738677979364720640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4725014812085243085
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721108378254835712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4574394521980916283
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633034582330124806
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4626458862299714821
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4618698866523948251
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4574527246431347989
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663235101658557008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4618797919212066595
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4707882333530121830
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4609252926931278797
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4585936332270723930
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644709728130645474
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633783366257147646
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4661244121901918365
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656484926832873665
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640152181343490148
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4605357929580219523
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633611537366561083
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4698538254811109786
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711521563322655703
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4661223528730827329
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4733471242739253248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641485380498621381
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4673186617651290859
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4741300107364794368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663161733072824817
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4696344704056857461
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4741030299364753408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4691301967844928913
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4631421317114241969
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4724212985835290624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4739441566861492224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4618796986685468752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645629450906786333
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639917849766203830
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4659410825922568845
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4606462777626776786
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4604015881066585915
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4673056128903232566
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738205261364199424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647667683886468742
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4587062927965694584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4629385526658299026
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4720374726651595981
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4696609194301928243
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4573279167420495341
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4670409093829463586
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4666217917407468664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4604369017653833663
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636451635700465293
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4590521136850613258
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663835254126664818
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4574026319930938065
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4672426717897446497
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621495027407747362
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4590923510865645803
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4675195743442719841
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4662229654899804686
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4584269957101982829
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4660634569148153767
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4566186358076301914
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617524307058348737
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4602890071429894222
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4606433668520513284
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4625777502635285773
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649155809164561798
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635169821230818098
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4734454084734550016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4601051280507062065
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738141469364191232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4580186100338580893
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4680556922598568703
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4609879986796331631
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4737473282729574400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4716474206226114150
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738886691111043072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4666578083793662504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4681107220196811289
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4715868826210245018
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4694122968636287091
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4600706978207864965
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647806577071611825
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4703732885578003251
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4599835581417723059
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738276869365825536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4725256932055161242
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4598591705197027439
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4587607476556914911
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4572996133884142505
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4737849668363354112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4676896193288095767
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4679080180131150430
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4616818681514990456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4573498401797193824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4679836795004671492
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4681464656817240513
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650327712382823873
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4616679610471087246
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4599655995410607672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4666417116726218772
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4695118534719695749
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4575308989584524830
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4737386592740573184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4691400716272709665
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4703529514066174280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4701816075969112310
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4691805199404835537
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4613867929985939732
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4591345062764335722
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648701026024875880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721552065851660698
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4607424002377416693
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617971488312914794
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630803789739860163
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4724422470281461760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4567923703193109622
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4605878778109905922
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4717149907822051328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4591492688086784188
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663853065500352232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4598217172773561990
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711216367719384351
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4598117564967249977
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4570968436531387576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4561614456796454338
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4587444209382680978
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4571814934039685338
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4596060581361842364
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568354869779806579
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4706845217308173926
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4677624818079651122
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4666202677692522572
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4584233068484928767
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4676044480478785307
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4581161125766796527
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4683221047780141171
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4631706304969030718
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4729964573103226880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4740852168867708928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4695638327613366206
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4723266969762004992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4724976211455901696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711691826552949965
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576137579310729249
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4701333641791904154
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4694537383485147972
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4705968272453339709
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4598454384355522216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4680254081561437772
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4715134180187858534
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568810228510428013
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4708037212251986330
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649190290799186900
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711505714920177009
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4587507682568191423
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4603868098840527871
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4566184065607182154
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650141848096126571
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4666130315412817471
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711092183351741645
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4722934365857146470
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4688832208937871737
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4602716452746328296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711169960683650417
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635512522081512902
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621284050563631664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4612860107863553308
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4709367969375007539
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4590832763570944347
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568733637905735132
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4737842879362236416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640023895428495198
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4588529472034666424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4696571885630424875
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4578591790445217245
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640611801586670374
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651049608731114995
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4595895906160603651
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4564996032293204247
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4585538326242926776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4719261056610441626
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4679673482776507371
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4618635798857860493
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4603547633076344927
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4684337050639224799
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4628341873261143796
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4680572443978157261
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4597789037534554059
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4623547809669238896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4563337781834363705
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4676759973074543680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4722768800250016563
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4602325648835423557
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4715488835823835546
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651564768350062372
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4681842137603363570
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4671766445964218755
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4669441548061154424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4558097218040828265
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738363466367107072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4701760795251771965
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4659030746611137842
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4588786202851518501
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4659977963981751053
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4736649386736484352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4599687016348956188
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4735419976742076416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4574612542769380586
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4690977850921075081
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4670285220952820784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617684028840429297
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4566579576436142177
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634336509495716620
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4600786501671206764
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4585639709807763222
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4589903694069482463
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4590364203899183228
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4693900614717629530
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4661287657471639458
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4691479787050125754
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4614980280858339408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4689299885607450837
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4604855955276283463
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4681235067828604345
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711557943402902323
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645086639819445598
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648514065973686431
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4708323253852674458
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4591432004279561989
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4709229533538151301
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4575209489876133089
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711615110759789363
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4664539099601247719
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663416251674801010
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643419639911645664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4601286605513123987
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4582648644749351935
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4605976992205255652
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4739267567368011776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4734893335234215936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4574175638034709126
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4701260896814120305
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4665309130585083897
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4584608826586451523
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4563227704209517776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4677278993621425167
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4585007411597016771
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656209576003988326
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4734289068735594496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4676087370970531942
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4619624956757347201
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576394760063845410
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4572704873261341805
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4664197077070062415
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4606823406780666996
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4692196404783004778
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4584358481412702455
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4589528414430384119
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4677595160485222679
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617629175391032892
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4665317743983254034
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633035959741997089
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4714405821756001485
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568853686710564233
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4618625026641616790
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635390543929266670
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4734092006727352320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4695367894327558668
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4585210860751817232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4585035186283107803
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634872864504106532
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4696501510203278098
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4591387210994882282
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4717763040629699379
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4709851489695757763
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4610454971538893180
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4739005258364092416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4691947249710074429
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4679871736343458900
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4694025694267052130
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738035193368018944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4620674173321643633
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4568421731202740104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4727047673444564992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650812254051006153
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576388002877376022
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4599062445965690973
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4618756376140109884
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651357676117823041
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4713450077769695232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4572201733301522832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646677678778968070
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4725801611083487642
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4690517426217875931
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4596097232736473815
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4686689981470848582
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4706031532618620600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4573205985647285916
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636416083166143798
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632774726742687854
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4604962678770006722
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4710791306601153167
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4723568538260026163
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4685677684754655216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4665229466338707573
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4726048195081351987
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4706448581534416896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4619738732129230385
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4707998371928573215
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4573187281582661594
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621453605133591656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4722970339456319488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4574695171062584083
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4561901011470374394
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648306536003877850
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4737891988362231808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4669809757133012887
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4607163797433371747
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4734084800728530944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4575788011239277089
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647296586080904762
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4583707364496581870
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721268509050614579
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4608601687780258566
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656742494204671820
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4698547555390990582
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4611782844153044508
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4672328787310466302
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650856923452510971
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658568976664395640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4741637363363479552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651882201403204093
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4606007448887606854
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635532227546498090
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651711891423719823
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4574929075327799333
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4605526962311335292
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4625339070371719321
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4663353407240535938
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4733301110729605120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4722172936606606950
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632945487337221559
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4675411832029730728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4583652478256026218
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635343718737303503
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4598972522231643296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4572726562493384286
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576177966606439621
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4708405481055243469
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4705897197251466363
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617661918406799723
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4567797307555397660
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4567294346955577159
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621181143148890762
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634350819620200720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4694918121452491244
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4603472068439205173
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4728653329452761088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4708840761054944297
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4679409788648292562
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4687546455055556149
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636190219052807503
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636529997946953446
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4572673475323425890
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4680412439472670507
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617465969320287623
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4719248099821538509
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4563316034875541488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4629959929321867737
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4721657334654513971
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645785714431711718
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4726214184682284646
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4725788322481517363
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4582947348552681871
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4666202843498876041
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4664340004532692598
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4740688113364369408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4620843076372734032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4688579759659385094
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4739034912361807872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4722993741793591296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4677712748141084253
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635285779470700545
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4695666435133481681
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4593007643704433958
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4578117282426274055
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4705775681094675333
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4602911182539536281
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4738501892366139392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4576401808086293550
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4620756287667570462
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617199988707878957
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644301819485024112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4705801790544465101
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649325777310279040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4567899603375139234
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4740187427367288832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4709953681055222333
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4680620057092247519
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4603851018290422722
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4679577835998873125
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4606548031731493229
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4711611727082548101
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642962261229626846
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4737538070734176256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4662403313822382372
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -401633998880814079
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7998881122228726784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1713799420702506495
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8098604622566534656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5532331775813136896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -463261626673905664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5835644764387835904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7771559283327451135
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6218872945593810944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6825310791646920705
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2249372085196652543
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5564443623601668095
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5020000649646292991
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1860655142057181183
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8673897701014945793
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2989299438039203968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3438945819548953473
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 469893887656250992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7188195798916149760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8620709916281750016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3950578267627007617
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2401592883535617153
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7389986977795914241
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7786884288641403393
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 867259590430097537
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1328959906381152767
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9160539346469170688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8865769065589465599
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3063672594139312639
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6556209716142603776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1827187656505121791
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3001143378837275777
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4108349389295673985
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4710114292912066560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3306750428257767424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8319327182565937152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4764368592736440319
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1120639845590069377
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4874660615091662337
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7978115746738216448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2078734488041000577
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4432373259007788032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -870553168563318272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2845230432385491585
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 796802882923851904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5963829137838578433
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 246536897695760497
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3470709608416415872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7590930423577197312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1251579579001900032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8621362477486765568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6535183208892698625
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6764037208454287361
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3719814963322359936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3915148704285145985
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1697212749878845057
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6137311180073487360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8261646801244754943
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5771824712038642688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5637658463198175745
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 732567215988011648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9174500937838002176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2963403730800427007
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1442242591795314688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1374266942851544833
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3613870422414097537
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1743911195978360319
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7435849804842396160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7834853222959976448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -427542339371964415
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5533701288059398145
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5764282062312937472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8074205909705220608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2244523796192675072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6295822823751697408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2951735715906378752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6108204907764450304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6800175955245786113
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1409499132917595135
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7300568095586952193
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5541622158936603647
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5304840139373896704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7170869146764805632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -923710218112322048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1458988161095919233
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2961684105232389249
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5378452446111298049
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2764060083425837696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6559334530380664833
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 924979553683820673
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4806987864042205695
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6363913922862023168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4838266220669230079
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3530624189018602495
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7423317565809630208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3572352304685450751
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2004895683735177857
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6943591854717605889
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4119782101091870719
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7179467884006676481
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4218069653536512128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4066695489752340096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 312986981536318576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4397382409734861953
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1076846298832343681
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9194591223387987969
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5694520248598437888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4788944330045467136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3729964008670248193
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2510853552787544193
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6934573657986225664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2282056175470577280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2572440495809438080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1390666706629309568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 983959556106654337
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8376624939970928640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1941332909652484096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6237556403248223744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7838094581613315071
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9218846447448873984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9022666629793074688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -487186450593449984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7271475567958928897
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7961952916693869055
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7458341405753012735
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2681706662074777216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4178985314042042752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2180309559448654847
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5337438453045670911
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6650061822040740863
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1963529856041421952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1160155192167733120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7581561477876377088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1279570403780960513
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6197538021961245696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3352661642766220416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3110970296305223552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5715932143303723520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4850273929899977217
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1847249903421235328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3157365228249710976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6065640606592756736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 155765617043436657
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3840888788379264129
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8100333062253986305
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1569370324163079680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7208211306185825791
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1415651999354775551
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -143666582181242880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5656353451266257408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2647437633798829312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7215838621084992512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -295852184172438527
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4880199944394540031
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5862609196690119681
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 481687248199990384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7911061203781224192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1201797539822414336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2638267151327525376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6787084677726829055
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3114962613133101567
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 184469465880028784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1475740313068624384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 508500489011072240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -586309622091124736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6023265426734305279
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7503225678512844800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8070046463912764929
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -173302816404826111
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1699519513172862975
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5522231174238070784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2236063604304681088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 671686156489720704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7721177464579627520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6622629564261911552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7439035631204818431
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2469421743752924671
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6183255363777412607
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 406161796111585904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5591190342390025727
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7079682796502711807
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7501807303023586816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6275473054257850367
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7554691610525706239
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5901219647242819585
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7247883886244931583
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4253834560466266112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6787953776116246528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6280648464952069633
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1906243101253238400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9078204608950708223
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4299433505099163647
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1487779962147055615
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1267948008514725888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 53014605188370163
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4842911115882091008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5601433403417682433
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6352215127269896705
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3725767710124506623
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7342070250072272383
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -816125693489110528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2940329382043569664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7926429895534067199
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6950749666259774976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 100427195364041329
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3172339538698142337
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4536796084010717184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 191596501019086961
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1530027607858421889
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7463086907907726848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -514142626638148096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3140159032405376641
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2416599014826978432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3354147085255030657
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5191667407112878592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5422735814989201407
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -752910372744790016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4146513435973664896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8249142064459016960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4981384710670164736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1361713269331991425
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2919764126188093057
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2710467678132818943
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6456442222517531647
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4457793965876155391
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2684044214656857087
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 407289894073904240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7007860508028886017
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6412549720928453632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5730781659581289471
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7618019081510548479
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2739873029203209345
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1541126070315398656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3310318891421380607
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4094458160557461633
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 450472113669656176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -148225155815124991
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3070065157849051136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8948565050207340032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3819494483257903616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5327862264355855360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3724982671325805697
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9136358879213659648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2979076172272784896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4213612231821359744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4554556493899445504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2048027868053425152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7675686276012545024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1759671048983401984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6022511722200543233
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 509557670775910512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5850633306095271935
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -734473761486897152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4942454291846152191
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1309738252029591680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1896744420022987648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5280019765640678913
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5811075086249016833
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6027146704750301696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824751582446951936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2603601745864389119
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4207160299507777152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1429395902979632256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4289418061658552192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -980304771364062720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8549330178189787136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3696926972339554816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9132141150476098047
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6369655581772263425
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2904452316283310079
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2252661831311962240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8452685846692275199
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8290410027275125760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5972709334192958976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2032871648109567487
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 193964847184245360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4355889039304036993
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1204501796027277440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2866059570654552576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1112136213981671936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4669223456998736384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4769938170645519359
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5039118959286762496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7612820592808975360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4163916505630868608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1918873183688667135
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5496942404281528319
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -13035801538965503
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3581927403421560832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6822618628012571136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3223431643734259328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814651469537862657
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3689138591940985985
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 146940935800005233
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6362928768723304961
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2195511407610310143
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2408640741924642303
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3953568930685947392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3167743022357268480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3574670074891244031
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3195926259785621120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2158177491561924607
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4519705275639085056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -931902070718121984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2654528378341396992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1502172019917220863
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 81174747429401713
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6817486665628738560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 336067930145244272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5573024213397785600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2360866962319567871
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2548083008401181696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7968350432440191488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -454825624221904896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5962431098292468223
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8226930828412237312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4222650768790854912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6447543874422430719
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7439300075775198209
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4899894397734165503
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3276777747607635072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6857024004555017985
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 854773537476957313
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -863325526482406911
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5947750977262708736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1056050125463787519
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5574990140385466368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3514822016311781504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6940009642578011648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7329413231841627136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2641990105908374657
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6162311869590468096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5280573428325242367
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -51015133963421695
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4839671954316130304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1787920808434478849
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3865667374502579200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 334467591056689905
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3873280399743903873
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9104767712029219328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9166850536341498368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6319040661308982784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9051159931419620865
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -998640226408258048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7225337310905226753
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3556856346978944641
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2356468917798194176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8553456637606802943
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6783795428867480064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3350100330384957696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8423440488347500544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3607911067169898624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5378800920207524864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 15643853566665842
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3059105223565983743
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2843987974210322432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5800178923334483968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2809859623474745345
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9022099836600225792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8106391921601381889
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2291890208878704257
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1614421721592521857
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7499665463016833537
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4399319740226842112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7224136644634927617
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7587270141821193728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5053155333230920193
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5442395634137853440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5273281949974912512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5017333233309765119
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3353868900298604032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 614453826858780928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8619385502368390656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2377872019859000961
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5035530160180050944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -883290462087685120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1277038219987275264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2599938172772335103
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7196336584689626624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4717438688441985023
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4469374024260642816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4771731484540161537
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3473847618063646337
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3370658450001472640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7222135525594445312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2729289607650241024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7313420826392924159
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6260443287097356288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3418988024477604351
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -602059575318063615
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1623545468712355456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 658550292985754753
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4095665422384861824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8108379287370866688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1454099732297572481
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3706029289267568257
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8636457131739450369
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7387447104196455424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3369005333571207936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6779563401882043392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1600937310501510272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5558002685314909696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8382305007420044799
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8227898392967030272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8255183870609380863
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3840798626192390784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6554012893116778496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3061031568621123583
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 561129166062176385
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4753199754763844095
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1909436085329557121
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 692098590218429568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8978324982265081857
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4540349708244594689
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2299562594133839872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5958280449439458816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4655087583246398463
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1856402229856801791
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5578372245775027201
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5863963792220859392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8230156241002167808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6390390721541523457
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5211236519097780225
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8061029919291885569
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3278347850974939264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7240308258733770240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6481473156345746432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1107009740021267967
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6146773579297231361
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3445664925612170751
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1406207202599907968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8734484080221606911
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1790493114842565760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4290538456930096640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7995158176237861376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4172182637054036609
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1726664265553926272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -753633850147285503
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5235854580403602944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2541738274291586047
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3963770199808734208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4908786699544010240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6717710932926048256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8072675946132285441
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2146132341175113727
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5382619594594527233
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8095897632887449601
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6553326787674494975
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4444322758784297089
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5962732914823059967
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -377864756332210175
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1068857245231929472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6701793855029499393
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5654407873106675201
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4278157954365409791
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7968800685512779265
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -660254526057245183
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2145052622084782592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 504875948579714672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2488219280541766017
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 184669576925078640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8841757932975893504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6528913231588477951
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8766111533707521024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4548464103199732737
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7742044004873819137
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7366160550845893631
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7590258620677755904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2875297115830441471
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5842081304204871167
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5564428239695104513
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2020816610829605504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7048229067538476031
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1608106124660487296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -35963919431139328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7551938443356979201
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -965423981427425280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3035320108444839936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8841498449032032256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8377416578621698047
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8972243572707241983
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6933555513177051137
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -782588390283259904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4545134770856914943
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7366991784314155008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4132035618781316865
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2499748473298531327
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8193098857799707649
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1673469893853613185
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9192073333547161088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7847308490920022016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3933102071799994880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5295826894679051265
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1305063121095480319
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633953328520711168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 915282409224053504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2401044216313537535
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1102172440749097984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6551492252621762047
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2443073058557272705
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4211973954320781312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4216547371179366911
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1839845786164406784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6062269503820003840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8031868672553760257
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4349595434720618113
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6643799011040400384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5480207288325887487
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5610849612266833408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3663025179778266623
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2515011895741343231
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 617540706979834496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5476174831703640064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1181271865899478785
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5898910669681505280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4556230495544653312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1673682642446004224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5957400841394177536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7143362110705666559
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3098931741475513984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2790467116467430912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1484724969857753087
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2583729173828329472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4898790497797824513
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2898840410082467840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 418975502846845040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -887191381881284095
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2641658045066548736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4204529710154584064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5408418535499345921
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 649169259009437824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -674618545193538047
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 755749320810634881
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7335620523436051456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2306972749085941247
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5223724760548314623
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 879725852416967296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8664063667606818816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3947317113712431232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4059896108395400832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2476853354666748289
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1050266704713596033
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1246756020115777024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4477055219340225152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6523895062965684224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8012035682450241537
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1187393393776752768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6990801574604053503
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 9095146993665295361
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9198369135217957887
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7394853405655661567
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 947607502860936321
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9049092839628258815
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -1828045825768599039
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5550767906995036673
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4155808701937815040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8383286264639967745
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8368754636463104513
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 6600898267737125376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5644441889901772287
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2397949101409833601
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8334825908106600449
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5991617092328415232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6830904546107042303
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8410193019579890175
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2532553515047391361
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1174146478575954048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2021586270016710272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4352381596854768769
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2261130262277574143
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 122910007925195376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1840083290644603521
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 2622168109831680129
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2837050056089489920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4212684244904091264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3036230994444160129
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5101256758028129791
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -6117504567903356415
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1937200953222056577
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5816425307123652608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7447573278536493056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 8309748796788743681
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3147552138455413247
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7151058693986779648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -226721488586182655
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2286966588027555840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -3419692260185673727
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 538338486390206576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -2648503603913129984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3916126717889935104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 1374032197615521665
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -7610949222182923775
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 5214968257733124608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 3675670122618366209
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -9037928400125385728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 7433811309546734592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -504239932518805503
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -5246570414649372672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -8960140152260276224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    HALT
