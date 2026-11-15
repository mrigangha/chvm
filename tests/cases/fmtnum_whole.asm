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
    LI r2, 4611686018427387904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4613937818241073152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4616189618054758400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4617315517961601024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4618441417868443648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4619567317775286272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4620693217682128896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621256167635550208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621819117588971520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4622382067542392832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4622945017495814144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4623507967449235456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4624070917402656768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4624633867356078080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4625196817309499392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4625478292286210048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4625759767262920704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4626041242239631360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4626322717216342016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4626604192193052672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4626885667169763328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4627167142146473984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4627448617123184640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4627730092099895296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4628011567076605952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4628293042053316608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4628574517030027264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4628855992006737920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4629137466983448576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4629418941960159232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4629700416936869888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4629841154425225216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4629981891913580544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630122629401935872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630263366890291200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630404104378646528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630544841867001856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630685579355357184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630826316843712512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4630967054332067840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4631107791820423168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4631248529308778496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4631389266797133824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4631530004285489152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4631670741773844480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4631811479262199808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4631952216750555136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632092954238910464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632233691727265792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632374429215621120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632515166703976448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632655904192331776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632796641680687104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4632937379169042432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633078116657397760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633218854145753088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633359591634108416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633500329122463744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633641066610819072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633781804099174400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4633922541587529728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634063279075885056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634204016564240384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634274385308418048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634344754052595712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634415122796773376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634485491540951040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634555860285128704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634626229029306368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634696597773484032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634766966517661696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634837335261839360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634907704006017024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4634978072750194688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635048441494372352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635118810238550016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635189178982727680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635259547726905344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635329916471083008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635400285215260672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635470653959438336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635541022703616000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635611391447793664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635681760191971328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635752128936148992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635822497680326656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635892866424504320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4635963235168681984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636033603912859648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636103972657037312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636174341401214976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636244710145392640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636315078889570304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636385447633747968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636455816377925632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636526185122103296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636596553866280960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636666922610458624
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
    LI r2, 4636807660098813952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636878028842991616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636948397587169280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637018766331346944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637089135075524608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637159503819702272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637229872563879936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637300241308057600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637370610052235264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637440978796412928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637511347540590592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637581716284768256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637652085028945920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637722453773123584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637792822517301248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637863191261478912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4637933560005656576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638003928749834240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638074297494011904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638144666238189568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638215034982367232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638285403726544896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638355772470722560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638426141214900224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638496509959077888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638566878703255552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638637247447433216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638707616191610880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638742800563699712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638777984935788544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638813169307877376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638848353679966208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638883538052055040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638918722424143872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638953906796232704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4638989091168321536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639024275540410368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639059459912499200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639094644284588032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639129828656676864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639165013028765696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639200197400854528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639235381772943360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639270566145032192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639305750517121024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639340934889209856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639376119261298688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639411303633387520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639446488005476352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639481672377565184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639516856749654016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639552041121742848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639587225493831680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639622409865920512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639657594238009344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639692778610098176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639727962982187008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639763147354275840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639798331726364672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639833516098453504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639868700470542336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639903884842631168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639939069214720000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4639974253586808832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640009437958897664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640044622330986496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640079806703075328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640114991075164160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640150175447252992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640185359819341824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640220544191430656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640255728563519488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640290912935608320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640326097307697152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640361281679785984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640396466051874816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640431650423963648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640466834796052480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640502019168141312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640537203540230144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640572387912318976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640607572284407808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640642756656496640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640677941028585472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640713125400674304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640748309772763136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640783494144851968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640818678516940800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640853862889029632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640889047261118464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640924231633207296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640959416005296128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4640994600377384960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641029784749473792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641064969121562624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641100153493651456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641135337865740288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641170522237829120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641205706609917952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641240890982006784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641276075354095616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641311259726184448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641346444098273280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641381628470362112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641416812842450944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641451997214539776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641487181586628608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641522365958717440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641557550330806272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641592734702895104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641627919074983936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641663103447072768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641698287819161600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641733472191250432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641768656563339264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641803840935428096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641839025307516928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641874209679605760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641909394051694592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641944578423783424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4641979762795872256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642014947167961088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642050131540049920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642085315912138752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642120500284227584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642155684656316416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642190869028405248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642226053400494080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642261237772582912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642296422144671744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642331606516760576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642366790888849408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642401975260938240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642437159633027072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642472344005115904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642507528377204736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642542712749293568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642577897121382400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642613081493471232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642648265865560064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642683450237648896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642718634609737728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642753818981826560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642789003353915392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642824187726004224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642859372098093056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642894556470181888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642929740842270720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4642964925214359552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643000109586448384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643035293958537216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643070478330626048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643105662702714880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643140847074803712
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
    LI r2, 4643211215818981376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643228808005025792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643246400191070208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643263992377114624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643281584563159040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643299176749203456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643316768935247872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643334361121292288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643351953307336704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643369545493381120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643387137679425536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643404729865469952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643422322051514368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643439914237558784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643457506423603200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643475098609647616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643492690795692032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643510282981736448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643527875167780864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643545467353825280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643563059539869696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643580651725914112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643598243911958528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643615836098002944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643633428284047360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643651020470091776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643668612656136192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643686204842180608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643703797028225024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643721389214269440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643738981400313856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643756573586358272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643774165772402688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643791757958447104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643809350144491520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643826942330535936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643844534516580352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643862126702624768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643879718888669184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643897311074713600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643914903260758016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643932495446802432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643950087632846848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643967679818891264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4643985272004935680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644002864190980096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644020456377024512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644038048563068928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644055640749113344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644073232935157760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644090825121202176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644108417307246592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644126009493291008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644143601679335424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644161193865379840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644178786051424256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644196378237468672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644213970423513088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644231562609557504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644249154795601920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644266746981646336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644284339167690752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644301931353735168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644319523539779584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644337115725824000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644354707911868416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644372300097912832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644389892283957248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644407484470001664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644425076656046080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644442668842090496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644460261028134912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644477853214179328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644495445400223744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644513037586268160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644530629772312576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644548221958356992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644565814144401408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644583406330445824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644600998516490240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644618590702534656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644636182888579072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644653775074623488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644671367260667904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644688959446712320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644706551632756736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644724143818801152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644741736004845568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644759328190889984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644776920376934400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644794512562978816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644812104749023232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644829696935067648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644847289121112064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644864881307156480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644882473493200896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644900065679245312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644917657865289728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644935250051334144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644952842237378560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644970434423422976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4644988026609467392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645005618795511808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645023210981556224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645040803167600640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645058395353645056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645075987539689472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645093579725733888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645111171911778304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645128764097822720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645146356283867136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645163948469911552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645181540655955968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645199132842000384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645216725028044800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645234317214089216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645251909400133632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645269501586178048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645287093772222464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645304685958266880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645322278144311296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645339870330355712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645357462516400128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645375054702444544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645392646888488960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645410239074533376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645427831260577792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645445423446622208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645463015632666624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645480607818711040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645498200004755456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645515792190799872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645533384376844288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645550976562888704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645568568748933120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645586160934977536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645603753121021952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645621345307066368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645638937493110784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645656529679155200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645674121865199616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645691714051244032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645709306237288448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645726898423332864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645744490609377280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645762082795421696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645779674981466112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645797267167510528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645814859353554944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645832451539599360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645850043725643776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645867635911688192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645885228097732608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645902820283777024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645920412469821440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645938004655865856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645955596841910272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645973189027954688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4645990781213999104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646008373400043520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646025965586087936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646043557772132352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646061149958176768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646078742144221184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646096334330265600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646113926516310016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646131518702354432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646149110888398848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646166703074443264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646184295260487680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646201887446532096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646219479632576512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646237071818620928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646254664004665344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646272256190709760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646289848376754176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646307440562798592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646325032748843008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646342624934887424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646360217120931840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646377809306976256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646395401493020672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646412993679065088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646430585865109504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646448178051153920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646465770237198336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646483362423242752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646500954609287168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646518546795331584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646536138981376000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646553731167420416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646571323353464832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646588915539509248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646606507725553664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646624099911598080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646641692097642496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646659284283686912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646676876469731328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646694468655775744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646712060841820160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646729653027864576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646747245213908992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646764837399953408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646782429585997824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646800021772042240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646817613958086656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646835206144131072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646852798330175488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646870390516219904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646887982702264320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646905574888308736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646923167074353152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646940759260397568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646958351446441984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646975943632486400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4646993535818530816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647011128004575232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647028720190619648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647046312376664064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647063904562708480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647081496748752896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647099088934797312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647116681120841728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647134273306886144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647151865492930560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647169457678974976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647187049865019392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647204642051063808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647222234237108224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647239826423152640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647257418609197056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647275010795241472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647292602981285888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647310195167330304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647327787353374720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647345379539419136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647362971725463552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647380563911507968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647398156097552384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647415748283596800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647433340469641216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647450932655685632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647468524841730048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647486117027774464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647503709213818880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647521301399863296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647538893585907712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647556485771952128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647574077957996544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647591670144040960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647609262330085376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647626854516129792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647644446702174208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647662038888218624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647679631074263040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647697223260307456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647714815446351872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647723611539374080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647732407632396288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647741203725418496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647749999818440704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647758795911462912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647767592004485120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647776388097507328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647785184190529536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647793980283551744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647802776376573952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647811572469596160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647820368562618368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647829164655640576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647837960748662784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647846756841684992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647855552934707200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647864349027729408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647873145120751616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647881941213773824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647890737306796032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647899533399818240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647908329492840448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647917125585862656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647925921678884864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647934717771907072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647943513864929280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647952309957951488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647961106050973696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647969902143995904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647978698237018112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647987494330040320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4647996290423062528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648005086516084736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648013882609106944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648022678702129152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648031474795151360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648040270888173568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648049066981195776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648057863074217984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648066659167240192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648075455260262400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648084251353284608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648093047446306816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648101843539329024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648110639632351232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648119435725373440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648128231818395648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648137027911417856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648145824004440064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648154620097462272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648163416190484480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648172212283506688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648181008376528896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648189804469551104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648198600562573312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648207396655595520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648216192748617728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648224988841639936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648233784934662144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648242581027684352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648251377120706560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648260173213728768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648268969306750976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648277765399773184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648286561492795392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648295357585817600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648304153678839808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648312949771862016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648321745864884224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648330541957906432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648339338050928640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648348134143950848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648356930236973056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648365726329995264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648374522423017472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648383318516039680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648392114609061888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648400910702084096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648409706795106304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648418502888128512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648427298981150720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648436095074172928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648444891167195136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648453687260217344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648462483353239552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648471279446261760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648480075539283968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648488871632306176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648497667725328384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648506463818350592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648515259911372800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648524056004395008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648532852097417216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648541648190439424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648550444283461632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648559240376483840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648568036469506048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648576832562528256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648585628655550464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648594424748572672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648603220841594880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648612016934617088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648620813027639296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648629609120661504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648638405213683712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648647201306705920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648655997399728128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648664793492750336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648673589585772544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648682385678794752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648691181771816960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648699977864839168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648708773957861376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648717570050883584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648726366143905792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648735162236928000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648743958329950208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648752754422972416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648761550515994624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648770346609016832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648779142702039040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648787938795061248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648796734888083456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648805530981105664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648814327074127872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648823123167150080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648831919260172288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648840715353194496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648849511446216704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648858307539238912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648867103632261120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648875899725283328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648884695818305536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648893491911327744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648902288004349952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648911084097372160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648919880190394368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648928676283416576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648937472376438784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648946268469460992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648955064562483200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648963860655505408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648972656748527616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648981452841549824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648990248934572032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4648999045027594240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649007841120616448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649016637213638656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649025433306660864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649034229399683072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649043025492705280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649051821585727488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649060617678749696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649069413771771904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649078209864794112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649087005957816320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649095802050838528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649104598143860736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649113394236882944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649122190329905152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649130986422927360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649139782515949568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649148578608971776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649157374701993984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649166170795016192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649174966888038400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649183762981060608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649192559074082816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649201355167105024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649210151260127232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649218947353149440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649227743446171648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649236539539193856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649245335632216064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649254131725238272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649262927818260480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649271723911282688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649280520004304896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649289316097327104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649298112190349312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649306908283371520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649315704376393728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649324500469415936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649333296562438144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649342092655460352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649350888748482560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649359684841504768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649368480934526976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649377277027549184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649386073120571392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649394869213593600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649403665306615808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649412461399638016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649421257492660224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649430053585682432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649438849678704640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649447645771726848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649456441864749056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649465237957771264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649474034050793472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649482830143815680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649491626236837888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649500422329860096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649509218422882304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649518014515904512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649526810608926720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649535606701948928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649544402794971136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649553198887993344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649561994981015552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649570791074037760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649579587167059968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649588383260082176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649597179353104384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649605975446126592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649614771539148800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649623567632171008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649632363725193216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649641159818215424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649649955911237632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649658752004259840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649667548097282048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649676344190304256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649685140283326464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649693936376348672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649702732469370880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649711528562393088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649720324655415296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649729120748437504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649737916841459712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649746712934481920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649755509027504128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649764305120526336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649773101213548544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649781897306570752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649790693399592960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649799489492615168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649808285585637376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649817081678659584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649825877771681792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649834673864704000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649843469957726208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649852266050748416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649861062143770624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649869858236792832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649878654329815040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649887450422837248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649896246515859456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649905042608881664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649913838701903872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649922634794926080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649931430887948288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649940226980970496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649949023073992704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649957819167014912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649966615260037120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649975411353059328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649984207446081536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4649993003539103744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650001799632125952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650010595725148160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650019391818170368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650028187911192576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650036984004214784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650045780097236992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650054576190259200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650063372283281408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650072168376303616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650080964469325824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650089760562348032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650098556655370240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650107352748392448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650116148841414656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650124944934436864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650133741027459072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650142537120481280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650151333213503488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650160129306525696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650168925399547904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650177721492570112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650186517585592320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650195313678614528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650204109771636736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650212905864658944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650221701957681152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650230498050703360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650239294143725568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650248090236747776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650256886329769984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650265682422792192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650274478515814400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650283274608836608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650292070701858816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650300866794881024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650309662887903232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650318458980925440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650327255073947648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650336051166969856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650344847259992064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650353643353014272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650362439446036480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650371235539058688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650380031632080896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650388827725103104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650397623818125312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650406419911147520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650415216004169728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650424012097191936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650432808190214144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650441604283236352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650450400376258560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650459196469280768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650467992562302976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650476788655325184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650485584748347392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650494380841369600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650503176934391808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650511973027414016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650520769120436224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650529565213458432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650538361306480640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650547157399502848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650555953492525056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650564749585547264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650573545678569472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650582341771591680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650591137864613888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650599933957636096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650608730050658304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650617526143680512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650626322236702720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650635118329724928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650643914422747136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650652710515769344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650661506608791552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650670302701813760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650679098794835968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650687894887858176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650696690980880384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650705487073902592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650714283166924800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650723079259947008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650731875352969216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650740671445991424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650749467539013632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650758263632035840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650767059725058048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650775855818080256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650784651911102464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650793448004124672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650802244097146880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650811040190169088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650819836283191296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650828632376213504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650837428469235712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650846224562257920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650855020655280128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650863816748302336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650872612841324544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650881408934346752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650890205027368960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650899001120391168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650907797213413376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650916593306435584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650925389399457792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650934185492480000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650942981585502208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650951777678524416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650960573771546624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650969369864568832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650978165957591040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650986962050613248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4650995758143635456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651004554236657664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651013350329679872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651022146422702080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651030942515724288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651039738608746496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651048534701768704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651057330794790912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651066126887813120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651074922980835328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651083719073857536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651092515166879744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651101311259901952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651110107352924160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651118903445946368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651127699538968576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651136495631990784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651145291725012992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651154087818035200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651162883911057408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651171680004079616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651180476097101824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651189272190124032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651198068283146240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651206864376168448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651215660469190656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651224456562212864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651233252655235072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651242048748257280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651250844841279488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651259640934301696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651268437027323904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651277233120346112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651286029213368320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651294825306390528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651303621399412736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651312417492434944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651321213585457152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651330009678479360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651338805771501568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651347601864523776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651356397957545984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651365194050568192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651373990143590400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651382786236612608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651391582329634816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651400378422657024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651409174515679232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651417970608701440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651426766701723648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651435562794745856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651444358887768064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651453154980790272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651461951073812480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651470747166834688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651479543259856896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651488339352879104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651497135445901312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651505931538923520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651514727631945728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651523523724967936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651532319817990144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651541115911012352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651549912004034560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651558708097056768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651567504190078976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651576300283101184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651585096376123392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651593892469145600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651602688562167808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651611484655190016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651620280748212224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651629076841234432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651637872934256640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651646669027278848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651655465120301056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651664261213323264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651673057306345472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651681853399367680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651690649492389888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651699445585412096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651708241678434304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651717037771456512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651725833864478720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651734629957500928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651743426050523136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651752222143545344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651761018236567552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651769814329589760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651778610422611968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651787406515634176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651796202608656384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651804998701678592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651813794794700800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651822590887723008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651831386980745216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651840183073767424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651848979166789632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651857775259811840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651866571352834048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651875367445856256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651884163538878464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651892959631900672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651901755724922880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651910551817945088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651919347910967296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651928144003989504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651936940097011712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651945736190033920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651954532283056128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651963328376078336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651972124469100544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651980920562122752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651989716655144960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4651998512748167168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652007308841189376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652016104934211584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652024901027233792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652033697120256000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652042493213278208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652051289306300416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652060085399322624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652068881492344832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652077677585367040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652086473678389248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652095269771411456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652104065864433664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652112861957455872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652121658050478080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652130454143500288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652139250236522496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652148046329544704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652156842422566912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652165638515589120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652174434608611328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652183230701633536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652192026794655744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652200822887677952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652209618980700160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652218415073722368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652222813120233472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652227211166744576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652231609213255680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652236007259766784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652240405306277888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652244803352788992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652249201399300096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652253599445811200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652257997492322304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652262395538833408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652266793585344512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652271191631855616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652275589678366720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652279987724877824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652284385771388928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652288783817900032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652293181864411136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652297579910922240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652301977957433344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652306376003944448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652310774050455552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652315172096966656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652319570143477760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652323968189988864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652328366236499968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652332764283011072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652337162329522176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652341560376033280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652345958422544384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652350356469055488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652354754515566592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652359152562077696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652363550608588800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652367948655099904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652372346701611008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652376744748122112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652381142794633216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652385540841144320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652389938887655424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652394336934166528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652398734980677632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652403133027188736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652407531073699840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652411929120210944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652416327166722048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652420725213233152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652425123259744256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652429521306255360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652433919352766464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652438317399277568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652442715445788672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652447113492299776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652451511538810880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652455909585321984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652460307631833088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652464705678344192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652469103724855296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652473501771366400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652477899817877504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652482297864388608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652486695910899712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652491093957410816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652495492003921920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652499890050433024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652504288096944128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652508686143455232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652513084189966336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652517482236477440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652521880282988544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652526278329499648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652530676376010752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652535074422521856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652539472469032960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652543870515544064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652548268562055168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652552666608566272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652557064655077376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652561462701588480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652565860748099584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652570258794610688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652574656841121792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652579054887632896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652583452934144000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652587850980655104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652592249027166208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652596647073677312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652601045120188416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652605443166699520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652609841213210624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652614239259721728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652618637306232832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652623035352743936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652627433399255040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652631831445766144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652636229492277248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652640627538788352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652645025585299456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652649423631810560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652653821678321664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652658219724832768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652662617771343872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652667015817854976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652671413864366080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652675811910877184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652680209957388288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652684608003899392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652689006050410496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652693404096921600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652697802143432704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652702200189943808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652706598236454912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652710996282966016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652715394329477120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652719792375988224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652724190422499328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652728588469010432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652732986515521536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652737384562032640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652741782608543744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652746180655054848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652750578701565952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652754976748077056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652759374794588160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652763772841099264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652768170887610368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652772568934121472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652776966980632576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652781365027143680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652785763073654784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652790161120165888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652794559166676992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652798957213188096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652803355259699200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652807753306210304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652812151352721408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652816549399232512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652820947445743616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652825345492254720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652829743538765824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652834141585276928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652838539631788032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652842937678299136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652847335724810240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652851733771321344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652856131817832448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652860529864343552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652864927910854656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652869325957365760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652873724003876864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652878122050387968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652882520096899072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652886918143410176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652891316189921280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652895714236432384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652900112282943488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652904510329454592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652908908375965696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652913306422476800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652917704468987904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652922102515499008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652926500562010112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652930898608521216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652935296655032320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652939694701543424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652944092748054528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652948490794565632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652952888841076736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652957286887587840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652961684934098944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652966082980610048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652970481027121152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652974879073632256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652979277120143360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652983675166654464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652988073213165568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652992471259676672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4652996869306187776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653001267352698880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653005665399209984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653010063445721088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653014461492232192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653018859538743296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653023257585254400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653027655631765504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653032053678276608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653036451724787712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653040849771298816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653045247817809920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653049645864321024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653054043910832128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653058441957343232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653062840003854336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653067238050365440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653071636096876544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653076034143387648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653080432189898752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653084830236409856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653089228282920960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653093626329432064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653098024375943168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653102422422454272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653106820468965376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653111218515476480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653115616561987584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653120014608498688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653124412655009792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653128810701520896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653133208748032000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653137606794543104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653142004841054208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653146402887565312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653150800934076416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653155198980587520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653159597027098624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653163995073609728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653168393120120832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653172791166631936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653177189213143040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653181587259654144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653185985306165248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653190383352676352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653194781399187456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653199179445698560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653203577492209664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653207975538720768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653212373585231872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653216771631742976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653221169678254080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653225567724765184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653229965771276288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653234363817787392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653238761864298496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653243159910809600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653247557957320704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653251956003831808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653256354050342912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653260752096854016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653265150143365120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653269548189876224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653273946236387328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653278344282898432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653282742329409536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653287140375920640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653291538422431744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653295936468942848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653300334515453952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653304732561965056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653309130608476160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653313528654987264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653317926701498368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653322324748009472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653326722794520576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653331120841031680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653335518887542784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653339916934053888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653344314980564992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653348713027076096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653353111073587200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653357509120098304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653361907166609408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653366305213120512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653370703259631616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653375101306142720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653379499352653824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653383897399164928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653388295445676032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653392693492187136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653397091538698240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653401489585209344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653405887631720448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653410285678231552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653414683724742656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653419081771253760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653423479817764864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653427877864275968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653432275910787072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653436673957298176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653441072003809280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653445470050320384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653449868096831488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653454266143342592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653458664189853696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653463062236364800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653467460282875904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653471858329387008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653476256375898112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653480654422409216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653485052468920320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653489450515431424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653493848561942528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653498246608453632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653502644654964736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653507042701475840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653511440747986944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653515838794498048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653520236841009152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653524634887520256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653529032934031360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653533430980542464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653537829027053568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653542227073564672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653546625120075776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653551023166586880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653555421213097984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653559819259609088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653564217306120192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653568615352631296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653573013399142400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653577411445653504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653581809492164608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653586207538675712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653590605585186816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653595003631697920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653599401678209024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653603799724720128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653608197771231232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653612595817742336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653616993864253440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653621391910764544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653625789957275648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653630188003786752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653634586050297856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653638984096808960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653643382143320064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653647780189831168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653652178236342272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653656576282853376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653660974329364480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653665372375875584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653669770422386688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653674168468897792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653678566515408896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653682964561920000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653687362608431104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653691760654942208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653696158701453312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653700556747964416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653704954794475520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653709352840986624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653713750887497728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653718148934008832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653722546980519936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653726945027031040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653731343073542144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653735741120053248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653740139166564352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653744537213075456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653748935259586560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653753333306097664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653757731352608768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653762129399119872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653766527445630976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653770925492142080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653775323538653184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653779721585164288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653784119631675392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653788517678186496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653792915724697600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653797313771208704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653801711817719808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653806109864230912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653810507910742016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653814905957253120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653819304003764224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653823702050275328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653828100096786432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653832498143297536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653836896189808640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653841294236319744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653845692282830848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653850090329341952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653854488375853056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653858886422364160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653863284468875264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653867682515386368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653872080561897472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653876478608408576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653880876654919680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653885274701430784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653889672747941888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653894070794452992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653898468840964096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653902866887475200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653907264933986304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653911662980497408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653916061027008512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653920459073519616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653924857120030720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653929255166541824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653933653213052928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653938051259564032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653942449306075136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653946847352586240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653951245399097344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653955643445608448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653960041492119552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653964439538630656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653968837585141760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653973235631652864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653977633678163968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653982031724675072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653986429771186176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653990827817697280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653995225864208384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4653999623910719488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654004021957230592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654008420003741696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654012818050252800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654017216096763904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654021614143275008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654026012189786112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654030410236297216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654034808282808320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654039206329319424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654043604375830528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654048002422341632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654052400468852736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654056798515363840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654061196561874944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654065594608386048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654069992654897152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654074390701408256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654078788747919360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654083186794430464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654087584840941568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654091982887452672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654096380933963776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654100778980474880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654105177026985984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654109575073497088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654113973120008192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654118371166519296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654122769213030400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654127167259541504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654131565306052608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654135963352563712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654140361399074816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654144759445585920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654149157492097024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654153555538608128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654157953585119232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654162351631630336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654166749678141440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654171147724652544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654175545771163648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654179943817674752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654184341864185856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654188739910696960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654193137957208064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654197536003719168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654201934050230272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654206332096741376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654210730143252480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654215128189763584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654219526236274688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654223924282785792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654228322329296896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654232720375808000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654237118422319104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654241516468830208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654245914515341312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654250312561852416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654254710608363520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654259108654874624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654263506701385728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654267904747896832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654272302794407936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654276700840919040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654281098887430144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654285496933941248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654289894980452352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654294293026963456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654298691073474560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654303089119985664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654307487166496768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654311885213007872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654316283259518976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654320681306030080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654325079352541184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654329477399052288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654333875445563392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654338273492074496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654342671538585600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654347069585096704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654351467631607808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654355865678118912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654360263724630016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654364661771141120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654369059817652224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654373457864163328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654377855910674432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654382253957185536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654386652003696640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654391050050207744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654395448096718848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654399846143229952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654404244189741056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654408642236252160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654413040282763264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654417438329274368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654421836375785472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654426234422296576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654430632468807680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654435030515318784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654439428561829888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654443826608340992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654448224654852096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654452622701363200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654457020747874304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654461418794385408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654465816840896512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654470214887407616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654474612933918720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654479010980429824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654483409026940928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654487807073452032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654492205119963136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654496603166474240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654501001212985344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654505399259496448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654509797306007552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654514195352518656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654518593399029760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654522991445540864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654527389492051968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654531787538563072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654536185585074176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654540583631585280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654544981678096384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654549379724607488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654553777771118592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654558175817629696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654562573864140800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654566971910651904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654571369957163008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654575768003674112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654580166050185216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654584564096696320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654588962143207424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654593360189718528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654597758236229632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654602156282740736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654606554329251840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654610952375762944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654615350422274048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654619748468785152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654624146515296256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654628544561807360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654632942608318464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654637340654829568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654641738701340672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654646136747851776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654650534794362880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654654932840873984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654659330887385088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654663728933896192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654668126980407296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654672525026918400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654676923073429504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654681321119940608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654685719166451712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654690117212962816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654694515259473920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654698913305985024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654703311352496128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654707709399007232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654712107445518336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654716505492029440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654720903538540544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654725301585051648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654729699631562752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654734097678073856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654738495724584960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654742893771096064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654747291817607168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654751689864118272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654756087910629376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654760485957140480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654764884003651584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654769282050162688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654773680096673792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654778078143184896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654782476189696000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654786874236207104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654791272282718208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654795670329229312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654800068375740416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654804466422251520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654808864468762624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654813262515273728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654817660561784832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654822058608295936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654826456654807040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654830854701318144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654835252747829248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654839650794340352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654844048840851456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654848446887362560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654852844933873664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654857242980384768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654861641026895872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654866039073406976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654870437119918080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654874835166429184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654879233212940288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654883631259451392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654888029305962496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654892427352473600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654896825398984704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654901223445495808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654905621492006912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654910019538518016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654914417585029120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654918815631540224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654923213678051328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654927611724562432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654932009771073536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654936407817584640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654940805864095744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654945203910606848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654949601957117952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654954000003629056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654958398050140160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654962796096651264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654967194143162368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654971592189673472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654975990236184576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654980388282695680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654984786329206784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654989184375717888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654993582422228992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4654997980468740096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655002378515251200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655006776561762304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655011174608273408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655015572654784512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655019970701295616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655024368747806720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655028766794317824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655033164840828928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655037562887340032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655041960933851136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655046358980362240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655050757026873344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655055155073384448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655059553119895552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655063951166406656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655068349212917760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655072747259428864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655077145305939968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655081543352451072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655085941398962176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655090339445473280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655094737491984384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655099135538495488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655103533585006592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655107931631517696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655112329678028800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655116727724539904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655121125771051008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655125523817562112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655129921864073216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655134319910584320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655138717957095424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655143116003606528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655147514050117632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655151912096628736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655156310143139840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655160708189650944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655165106236162048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655169504282673152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655173902329184256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655178300375695360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655182698422206464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655187096468717568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655191494515228672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655195892561739776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655200290608250880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655204688654761984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655209086701273088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655213484747784192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655217882794295296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655222280840806400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655226678887317504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655231076933828608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655235474980339712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655239873026850816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655244271073361920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655248669119873024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655253067166384128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655257465212895232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655261863259406336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655266261305917440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655270659352428544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655275057398939648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655279455445450752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655283853491961856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655288251538472960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655292649584984064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655297047631495168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655301445678006272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655305843724517376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655310241771028480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655314639817539584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655319037864050688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655323435910561792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655327833957072896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655332232003584000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655336630050095104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655341028096606208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655345426143117312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655349824189628416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655354222236139520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655358620282650624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655363018329161728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655367416375672832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655371814422183936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655376212468695040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655380610515206144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655385008561717248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655389406608228352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655393804654739456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655398202701250560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655402600747761664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655406998794272768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655411396840783872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655415794887294976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655420192933806080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655424590980317184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655428989026828288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655433387073339392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655437785119850496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655442183166361600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655446581212872704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655450979259383808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655455377305894912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655459775352406016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655464173398917120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655468571445428224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655472969491939328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655477367538450432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655481765584961536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655486163631472640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655490561677983744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655494959724494848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655499357771005952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655503755817517056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655508153864028160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655512551910539264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655516949957050368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655521348003561472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655525746050072576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655530144096583680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655534542143094784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655538940189605888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655543338236116992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655547736282628096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655552134329139200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655556532375650304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655560930422161408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655565328468672512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655569726515183616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655574124561694720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655578522608205824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655582920654716928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655587318701228032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655591716747739136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655596114794250240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655600512840761344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655604910887272448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655609308933783552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655613706980294656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655618105026805760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655622503073316864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655626901119827968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655631299166339072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655635697212850176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655640095259361280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655644493305872384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655648891352383488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655653289398894592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655657687445405696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655662085491916800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655666483538427904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655670881584939008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655675279631450112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655679677677961216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655684075724472320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655688473770983424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655692871817494528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655697269864005632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655701667910516736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655706065957027840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655710464003538944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655714862050050048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655719260096561152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655723658143072256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655728056189583360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655732454236094464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655736852282605568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655741250329116672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655745648375627776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655750046422138880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655754444468649984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655758842515161088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655763240561672192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655767638608183296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655772036654694400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655776434701205504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655780832747716608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655785230794227712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655789628840738816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655794026887249920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655798424933761024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655802822980272128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655807221026783232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655811619073294336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655816017119805440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655820415166316544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655824813212827648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655829211259338752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655833609305849856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655838007352360960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655842405398872064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655846803445383168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655851201491894272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655855599538405376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655859997584916480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655864395631427584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655868793677938688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655873191724449792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655877589770960896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655881987817472000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655886385863983104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655890783910494208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655895181957005312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655899580003516416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655903978050027520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655908376096538624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655912774143049728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655917172189560832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655921570236071936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655925968282583040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655930366329094144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655934764375605248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655939162422116352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655943560468627456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655947958515138560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655952356561649664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655956754608160768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655961152654671872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655965550701182976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655969948747694080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655974346794205184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655978744840716288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655983142887227392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655987540933738496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655991938980249600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4655996337026760704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656000735073271808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656005133119782912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656009531166294016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656013929212805120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656018327259316224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656022725305827328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656027123352338432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656031521398849536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656035919445360640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656040317491871744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656044715538382848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656049113584893952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656053511631405056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656057909677916160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656062307724427264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656066705770938368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656071103817449472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656075501863960576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656079899910471680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656084297956982784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656088696003493888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656093094050004992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656097492096516096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656101890143027200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656106288189538304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656110686236049408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656115084282560512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656119482329071616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656123880375582720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656128278422093824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656132676468604928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656137074515116032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656141472561627136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656145870608138240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656150268654649344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656154666701160448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656159064747671552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656163462794182656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656167860840693760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656172258887204864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656176656933715968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656181054980227072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656185453026738176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656189851073249280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656194249119760384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656198647166271488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656203045212782592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656207443259293696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656211841305804800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656216239352315904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656220637398827008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656225035445338112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656229433491849216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656233831538360320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656238229584871424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656242627631382528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656247025677893632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656251423724404736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656255821770915840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656260219817426944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656264617863938048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656269015910449152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656273413956960256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656277812003471360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656282210049982464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656286608096493568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656291006143004672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656295404189515776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656299802236026880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656304200282537984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656308598329049088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656312996375560192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656317394422071296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656321792468582400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656326190515093504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656330588561604608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656334986608115712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656339384654626816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656343782701137920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656348180747649024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656352578794160128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656356976840671232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656361374887182336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656365772933693440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656370170980204544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656374569026715648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656378967073226752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656383365119737856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656387763166248960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656392161212760064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656396559259271168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656400957305782272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656405355352293376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656409753398804480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656414151445315584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656418549491826688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656422947538337792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656427345584848896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656431743631360000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656436141677871104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656440539724382208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656444937770893312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656449335817404416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656453733863915520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656458131910426624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656462529956937728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656466928003448832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656471326049959936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656475724096471040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656480122142982144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656484520189493248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656488918236004352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656493316282515456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656497714329026560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656502112375537664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656506510422048768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656510908468559872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656515306515070976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656519704561582080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656524102608093184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656528500654604288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656532898701115392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656537296747626496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656541694794137600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656546092840648704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656550490887159808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656554888933670912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656559286980182016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656563685026693120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656568083073204224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656572481119715328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656576879166226432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656581277212737536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656585675259248640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656590073305759744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656594471352270848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656598869398781952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656603267445293056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656607665491804160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656612063538315264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656616461584826368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656620859631337472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656625257677848576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656629655724359680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656634053770870784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656638451817381888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656642849863892992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656647247910404096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656651645956915200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656656044003426304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656660442049937408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656664840096448512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656669238142959616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656673636189470720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656678034235981824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656682432282492928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656686830329004032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656691228375515136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656695626422026240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656700024468537344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656704422515048448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656708820561559552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656713218608070656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656717616654581760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656722014701092864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656724213724348416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656726412747603968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656728611770859520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656730810794115072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656733009817370624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656735208840626176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656737407863881728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656739606887137280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656741805910392832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656744004933648384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656746203956903936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656748402980159488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656750602003415040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656752801026670592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656755000049926144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656757199073181696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656759398096437248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656761597119692800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656763796142948352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656765995166203904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656768194189459456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656770393212715008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656772592235970560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656774791259226112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656776990282481664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656779189305737216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656781388328992768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656783587352248320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656785786375503872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656787985398759424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656790184422014976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656792383445270528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656794582468526080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656796781491781632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656798980515037184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656801179538292736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656803378561548288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656805577584803840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656807776608059392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656809975631314944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656812174654570496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656814373677826048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656816572701081600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656818771724337152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656820970747592704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656823169770848256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656825368794103808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656827567817359360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656829766840614912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656831965863870464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656834164887126016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656836363910381568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656838562933637120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656840761956892672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656842960980148224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656845160003403776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656847359026659328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656849558049914880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656851757073170432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656853956096425984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656856155119681536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656858354142937088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656860553166192640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656862752189448192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656864951212703744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656867150235959296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656869349259214848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656871548282470400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656873747305725952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656875946328981504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656878145352237056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656880344375492608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656882543398748160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656884742422003712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656886941445259264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656889140468514816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656891339491770368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656893538515025920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656895737538281472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656897936561537024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656900135584792576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656902334608048128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656904533631303680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656906732654559232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656908931677814784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656911130701070336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656913329724325888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656915528747581440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656917727770836992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656919926794092544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656922125817348096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656924324840603648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656926523863859200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656928722887114752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656930921910370304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656933120933625856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656935319956881408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656937518980136960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656939718003392512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656941917026648064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656944116049903616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656946315073159168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656948514096414720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656950713119670272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656952912142925824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656955111166181376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656957310189436928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656959509212692480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656961708235948032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656963907259203584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656966106282459136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656968305305714688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656970504328970240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656972703352225792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656974902375481344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656977101398736896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656979300421992448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656981499445248000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656983698468503552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656985897491759104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656988096515014656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656990295538270208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656992494561525760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656994693584781312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656996892608036864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4656999091631292416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657001290654547968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657003489677803520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657005688701059072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657007887724314624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657010086747570176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657012285770825728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657014484794081280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657016683817336832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657018882840592384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657021081863847936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657023280887103488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657025479910359040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657027678933614592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657029877956870144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657032076980125696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657034276003381248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657036475026636800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657038674049892352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657040873073147904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657043072096403456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657045271119659008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657047470142914560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657049669166170112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657051868189425664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657054067212681216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657056266235936768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657058465259192320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657060664282447872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657062863305703424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657065062328958976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657067261352214528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657069460375470080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657071659398725632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657073858421981184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657076057445236736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657078256468492288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657080455491747840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657082654515003392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657084853538258944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657087052561514496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657089251584770048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657091450608025600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657093649631281152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657095848654536704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657098047677792256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657100246701047808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657102445724303360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657104644747558912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657106843770814464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657109042794070016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657111241817325568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657113440840581120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657115639863836672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657117838887092224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657120037910347776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657122236933603328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657124435956858880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657126634980114432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657128834003369984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657131033026625536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657133232049881088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657135431073136640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657137630096392192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657139829119647744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657142028142903296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657144227166158848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657146426189414400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657148625212669952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657150824235925504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657153023259181056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657155222282436608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657157421305692160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657159620328947712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657161819352203264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657164018375458816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657166217398714368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657168416421969920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657170615445225472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657172814468481024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657175013491736576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657177212514992128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657179411538247680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657181610561503232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657183809584758784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657186008608014336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657188207631269888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657190406654525440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657192605677780992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657194804701036544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657197003724292096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657199202747547648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657201401770803200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657203600794058752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657205799817314304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657207998840569856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657210197863825408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657212396887080960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657214595910336512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657216794933592064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657218993956847616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657221192980103168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657223392003358720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657225591026614272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657227790049869824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657229989073125376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657232188096380928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657234387119636480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657236586142892032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657238785166147584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657240984189403136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657243183212658688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657245382235914240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657247581259169792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657249780282425344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657251979305680896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657254178328936448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657256377352192000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657258576375447552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657260775398703104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657262974421958656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657265173445214208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657267372468469760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657269571491725312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657271770514980864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657273969538236416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657276168561491968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657278367584747520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657280566608003072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657282765631258624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657284964654514176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657287163677769728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657289362701025280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657291561724280832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657293760747536384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657295959770791936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657298158794047488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657300357817303040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657302556840558592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657304755863814144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657306954887069696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657309153910325248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657311352933580800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657313551956836352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657315750980091904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657317950003347456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657320149026603008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657322348049858560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657324547073114112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657326746096369664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657328945119625216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657331144142880768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657333343166136320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657335542189391872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657337741212647424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657339940235902976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657342139259158528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657344338282414080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657346537305669632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657348736328925184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657350935352180736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657353134375436288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657355333398691840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657357532421947392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657359731445202944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657361930468458496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657364129491714048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657366328514969600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657368527538225152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657370726561480704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657372925584736256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657375124607991808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657377323631247360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657379522654502912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657381721677758464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657383920701014016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657386119724269568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657388318747525120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657390517770780672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657392716794036224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657394915817291776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657397114840547328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657399313863802880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657401512887058432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657403711910313984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657405910933569536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657408109956825088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657410308980080640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657412508003336192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657414707026591744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657416906049847296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657419105073102848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657421304096358400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657423503119613952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657425702142869504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657427901166125056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657430100189380608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657432299212636160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657434498235891712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657436697259147264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657438896282402816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657441095305658368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657443294328913920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657445493352169472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657447692375425024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657449891398680576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657452090421936128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657454289445191680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657456488468447232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657458687491702784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657460886514958336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657463085538213888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657465284561469440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657467483584724992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657469682607980544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657471881631236096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657474080654491648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657476279677747200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657478478701002752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657480677724258304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657482876747513856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657485075770769408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657487274794024960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657489473817280512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657491672840536064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657493871863791616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657496070887047168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657498269910302720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657500468933558272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657502667956813824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657504866980069376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657507066003324928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657509265026580480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657511464049836032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657513663073091584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657515862096347136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657518061119602688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657520260142858240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657522459166113792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657524658189369344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657526857212624896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657529056235880448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657531255259136000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657533454282391552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657535653305647104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657537852328902656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657540051352158208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657542250375413760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657544449398669312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657546648421924864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657548847445180416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657551046468435968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657553245491691520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657555444514947072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657557643538202624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657559842561458176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657562041584713728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657564240607969280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657566439631224832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657568638654480384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657570837677735936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657573036700991488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657575235724247040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657577434747502592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657579633770758144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657581832794013696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657584031817269248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657586230840524800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657588429863780352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657590628887035904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657592827910291456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657595026933547008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657597225956802560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657599424980058112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657601624003313664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657603823026569216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657606022049824768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657608221073080320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657610420096335872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657612619119591424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657614818142846976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657617017166102528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657619216189358080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657621415212613632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657623614235869184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657625813259124736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657628012282380288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657630211305635840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657632410328891392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657634609352146944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657636808375402496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657639007398658048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657641206421913600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657643405445169152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657645604468424704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657647803491680256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657650002514935808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657652201538191360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657654400561446912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657656599584702464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657658798607958016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657660997631213568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657663196654469120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657665395677724672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657667594700980224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657669793724235776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657671992747491328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657674191770746880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657676390794002432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657678589817257984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657680788840513536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657682987863769088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657685186887024640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657687385910280192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657689584933535744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657691783956791296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657693982980046848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657696182003302400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657698381026557952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657700580049813504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657702779073069056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657704978096324608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657707177119580160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657709376142835712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657711575166091264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657713774189346816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657715973212602368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657718172235857920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657720371259113472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657722570282369024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657724769305624576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657726968328880128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657729167352135680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657731366375391232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657733565398646784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657735764421902336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657737963445157888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657740162468413440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657742361491668992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657744560514924544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657746759538180096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657748958561435648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657751157584691200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657753356607946752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657755555631202304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657757754654457856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657759953677713408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657762152700968960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657764351724224512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657766550747480064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657768749770735616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657770948793991168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657773147817246720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657775346840502272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657777545863757824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657779744887013376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657781943910268928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657784142933524480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657786341956780032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657788540980035584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657790740003291136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657792939026546688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657795138049802240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657797337073057792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657799536096313344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657801735119568896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657803934142824448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657806133166080000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657808332189335552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657810531212591104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657812730235846656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657814929259102208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657817128282357760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657819327305613312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657821526328868864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657823725352124416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657825924375379968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657828123398635520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657830322421891072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657832521445146624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657834720468402176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657836919491657728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657839118514913280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657841317538168832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657843516561424384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657845715584679936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657847914607935488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657850113631191040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657852312654446592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657854511677702144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657856710700957696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657858909724213248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657861108747468800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657863307770724352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657865506793979904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657867705817235456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657869904840491008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657872103863746560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657874302887002112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657876501910257664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657878700933513216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657880899956768768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657883098980024320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657885298003279872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657887497026535424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657889696049790976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657891895073046528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657894094096302080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657896293119557632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657898492142813184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657900691166068736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657902890189324288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657905089212579840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657907288235835392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657909487259090944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657911686282346496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657913885305602048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657916084328857600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657918283352113152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657920482375368704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657922681398624256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657924880421879808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657927079445135360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657929278468390912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657931477491646464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657933676514902016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657935875538157568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657938074561413120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657940273584668672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657942472607924224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657944671631179776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657946870654435328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657949069677690880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657951268700946432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657953467724201984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657955666747457536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657957865770713088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657960064793968640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657962263817224192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657964462840479744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657966661863735296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657968860886990848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657971059910246400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657973258933501952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657975457956757504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657977656980013056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657979856003268608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657982055026524160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657984254049779712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657986453073035264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657988652096290816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657990851119546368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657993050142801920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657995249166057472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657997448189313024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4657999647212568576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658001846235824128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658004045259079680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658006244282335232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658008443305590784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658010642328846336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658012841352101888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658015040375357440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658017239398612992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658019438421868544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658021637445124096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658023836468379648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658026035491635200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658028234514890752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658030433538146304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658032632561401856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658034831584657408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658037030607912960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658039229631168512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658041428654424064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658043627677679616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658045826700935168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658048025724190720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658050224747446272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658052423770701824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658054622793957376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658056821817212928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658059020840468480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658061219863724032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658063418886979584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658065617910235136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658067816933490688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658070015956746240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658072214980001792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658074414003257344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658076613026512896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658078812049768448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658081011073024000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658083210096279552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658085409119535104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658087608142790656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658089807166046208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658092006189301760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658094205212557312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658096404235812864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658098603259068416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658100802282323968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658103001305579520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658105200328835072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658107399352090624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658109598375346176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658111797398601728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658113996421857280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658116195445112832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658118394468368384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658120593491623936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658122792514879488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658124991538135040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658127190561390592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658129389584646144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658131588607901696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658133787631157248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658135986654412800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658138185677668352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658140384700923904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658142583724179456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658144782747435008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658146981770690560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658149180793946112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658151379817201664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658153578840457216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658155777863712768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658157976886968320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658160175910223872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658162374933479424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658164573956734976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658166772979990528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658168972003246080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658171171026501632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658173370049757184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658175569073012736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658177768096268288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658179967119523840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658182166142779392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658184365166034944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658186564189290496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658188763212546048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658190962235801600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658193161259057152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658195360282312704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658197559305568256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658199758328823808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658201957352079360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658204156375334912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658206355398590464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658208554421846016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658210753445101568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658212952468357120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658215151491612672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658217350514868224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658219549538123776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658221748561379328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658223947584634880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658226146607890432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658228345631145984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658230544654401536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658232743677657088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658234942700912640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658237141724168192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658239340747423744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658241539770679296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658243738793934848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658245937817190400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658248136840445952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658250335863701504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658252534886957056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658254733910212608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658256932933468160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658259131956723712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658261330979979264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658263530003234816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658265729026490368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658267928049745920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658270127073001472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658272326096257024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658274525119512576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658276724142768128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658278923166023680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658281122189279232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658283321212534784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658285520235790336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658287719259045888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658289918282301440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658292117305556992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658294316328812544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658296515352068096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658298714375323648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658300913398579200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658303112421834752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658305311445090304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658307510468345856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658309709491601408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658311908514856960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658314107538112512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658316306561368064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658318505584623616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658320704607879168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658322903631134720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658325102654390272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658327301677645824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658329500700901376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658331699724156928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658333898747412480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658336097770668032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658338296793923584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658340495817179136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658342694840434688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658344893863690240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658347092886945792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658349291910201344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658351490933456896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658353689956712448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658355888979968000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658358088003223552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658360287026479104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658362486049734656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658364685072990208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658366884096245760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658369083119501312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658371282142756864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658373481166012416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658375680189267968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658377879212523520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658380078235779072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658382277259034624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658384476282290176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658386675305545728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658388874328801280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658391073352056832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658393272375312384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658395471398567936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658397670421823488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658399869445079040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658402068468334592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658404267491590144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658406466514845696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658408665538101248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658410864561356800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658413063584612352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658415262607867904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658417461631123456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658419660654379008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658421859677634560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658424058700890112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658426257724145664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658428456747401216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658430655770656768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658432854793912320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658435053817167872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658437252840423424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658439451863678976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658441650886934528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658443849910190080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658446048933445632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658448247956701184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658450446979956736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658452646003212288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658454845026467840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658457044049723392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658459243072978944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658461442096234496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658463641119490048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658465840142745600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658468039166001152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658470238189256704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658472437212512256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658474636235767808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658476835259023360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658479034282278912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658481233305534464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658483432328790016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658485631352045568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658487830375301120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658490029398556672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658492228421812224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658494427445067776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658496626468323328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658498825491578880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658501024514834432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658503223538089984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658505422561345536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658507621584601088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658509820607856640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658512019631112192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658514218654367744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658516417677623296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658518616700878848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658520815724134400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658523014747389952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658525213770645504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658527412793901056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658529611817156608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658531810840412160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658534009863667712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658536208886923264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658538407910178816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658540606933434368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658542805956689920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658545004979945472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658547204003201024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658549403026456576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658551602049712128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658553801072967680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658556000096223232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658558199119478784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658560398142734336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658562597165989888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658564796189245440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658566995212500992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658569194235756544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658571393259012096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658573592282267648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658575791305523200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658577990328778752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658580189352034304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658582388375289856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658584587398545408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658586786421800960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658588985445056512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658591184468312064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658593383491567616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658595582514823168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658597781538078720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658599980561334272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658602179584589824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658604378607845376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658606577631100928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658608776654356480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658610975677612032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658613174700867584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658615373724123136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658617572747378688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658619771770634240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658621970793889792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658624169817145344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658626368840400896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658628567863656448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658630766886912000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658632965910167552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658635164933423104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658637363956678656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658639562979934208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658641762003189760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658643961026445312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658646160049700864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658648359072956416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658650558096211968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658652757119467520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658654956142723072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658657155165978624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658659354189234176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658661553212489728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658663752235745280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658665951259000832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658668150282256384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658670349305511936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658672548328767488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658674747352023040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658676946375278592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658679145398534144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658681344421789696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658683543445045248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658685742468300800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658687941491556352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658690140514811904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658692339538067456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658694538561323008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658696737584578560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658698936607834112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658701135631089664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658703334654345216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658705533677600768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658707732700856320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658709931724111872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658712130747367424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658714329770622976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658716528793878528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658718727817134080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658720926840389632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658723125863645184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658725324886900736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658727523910156288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658729722933411840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658731921956667392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658734120979922944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658736320003178496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658738519026434048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658740718049689600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658742917072945152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658745116096200704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658747315119456256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658749514142711808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658751713165967360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658753912189222912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658756111212478464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658758310235734016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658760509258989568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658762708282245120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658764907305500672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658767106328756224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658769305352011776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658771504375267328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658773703398522880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658775902421778432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658778101445033984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658780300468289536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658782499491545088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658784698514800640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658786897538056192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658789096561311744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658791295584567296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658793494607822848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658795693631078400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658797892654333952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658800091677589504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658802290700845056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658804489724100608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658806688747356160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658808887770611712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658811086793867264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4658813285817122816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830644211149794880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816334491606459648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811602307311440128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820348582050965696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822147814018957920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830804376630071160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826909671117775344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819360423366404736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831041898266676320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814731653361877056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827763017167929472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826834745827791792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827059358181925968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829780091616170048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830297440261366000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831095909160825664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818972593686340640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823598941672981472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828769568359669096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824941545230194080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828839862387463304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809767585280369152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822800180211001440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831048186200226728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823360439922024656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819882671808007872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820252944340975456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829875179272589616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828483181487004912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810571705958504576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827681055970463120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823885858875319760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829036406097143600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807407633988115456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823851044315586912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828220378853448824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821453065760897440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826600448953666384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819351341116071904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828419155214838776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823495411083685904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824485149444814144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828669984704833448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829348815408521672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4796962337548649472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830861936055026312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830760325688147848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830498398898541072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821370860044817120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814299676946902144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829605658564892816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830316582852728520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825874259445364592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831036639700032008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4799377307887667200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815104998341476608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822736213266227936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811064730700176128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821436168624063808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819454977618512576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830650666357491824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816899355535025088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816243342500456576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818755986111618752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831315155162503640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828574634589388520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823265143080062240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827949017146947800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825116354035166320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823763404961609920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829257776012872680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830782422330718016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826486205110354192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823713280082486848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830562922450016640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830920167448890120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819302680001895904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831247021021369384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830034809313167272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821942480593596640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821336145082277504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827106458463030048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822820123615988608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826173921650769088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830272687982641952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831144583197245968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831280336382926544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829646539646420840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827651094539740320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829248919607227176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830681574826694640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830240495391206400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828612172862071376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823927199327749008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828136227165225056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829332163444913032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828032982682135200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829594517784656808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828346202809174976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824824805001720608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830432309424858280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830114998388949960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823376477778589536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828849708941466696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826880246621305360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823995727209249280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827062959009270368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830865980419277216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829217603623482560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4799606528157388800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828297956748032336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823532982193391184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824334514329534288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829906372980278496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816625549899897856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826892302751006576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825916985038855056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829825910948240648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830630731098576448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823158263888023584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817983406206810816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812041873879948416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820976694657560800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827702894298919120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827859229385805232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829242412362719960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820194715716266112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831027713352523072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821664081967581056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829887099828672904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829215123620970080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829213868116024752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829407566937025328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807652311556008704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4803532746772868096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830640677525426984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831338422049094144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831230430668606160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822922183333137824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822231098466159040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830523872159990272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829823987233365560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814565000029519680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827127992029344864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823407081993359120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829960932043176904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827954643428158752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826168963515750288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830723410804667584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824252805937203136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826664125609882752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810892729997346560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819454524677426112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807984607077498368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828871433044784440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828571544857956168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829705283182207112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816798484224467136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830122368990276000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830467140466175728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823428802072802864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822788400488848832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813892043065471872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819853481450538880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828524823903123032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828189978819646224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830124039704064816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4805455283714616576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825330019127322288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814419020891602304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827340550005815776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830019323736945408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826836024307834448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822929803761309472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830221054107289736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829411225818515880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825299964570649888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828448541802806216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818855348317078560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825020225957643328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831100433203072024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825517180127084256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820382100004577184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829342383432111296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829167461743374176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831239301805952712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829063418486645112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828886979234111904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829003795484797592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826074018091828432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829159454011226464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829213456722126880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829167051276281088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824929464483769392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822623314484630976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827823053377501200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825806411689668080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820781472679035200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809719079342792704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823058643493538592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822112110127977792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824665125821110912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4801870918961663488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826653716034526240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830941447928891192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830549365577836520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810320876154767232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816208354391753280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829239692524326320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823481823481618944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829190641835910848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820804879412743232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829988773839996648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830090366690131200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810516935178866432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824840350805823408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830392568454124792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831343055161701792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829050876439330600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824688336212674336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822471501229308576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826211814390041360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826946168978243456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4790713895122825216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823412456742246880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829394791308907240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811061345479147648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4797943870185894912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829089041608630056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825327612215327088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826350404716589824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824828862470343312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827941849596341176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827961035271323072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815315502489315840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829015325884858456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828313800236529456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4805242916298483200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824627090666565360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4806777887801898240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808131495087109120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827941020694694088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824424270888362960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829468067345426048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830457095746829144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829415054352851536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815673550979178432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831057439118741752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822718136547264736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811424736749621888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831005744819793544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826495458308915408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823162690462237344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808281881527097088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820437477071139296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827117279122419936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823604853555173152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826003838212009488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828511399991372464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826075153312397488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827986651817760432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830772377201400768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821853064796520064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823053833499126816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811413609092970112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830112441752110136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829446629756000408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828948441324537528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830036113549514056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825750504248880832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822389742016864960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825205138455616064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830398509904338856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830506194619039832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826838620784242704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830613391498598656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826046427208323024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829533517383710296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830732163913535040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825405224973888480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827043005686941888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823778402289946672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828270034282969768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831246554696415720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825553663974972864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829519118762652776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827827095921678656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817531172116246208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4806016083949685760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829230427558882096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827378882460981824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827066423511749568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820362712012657312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821605255447430848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826843000021758496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830560595313163264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825033442150638992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816182900061618368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831111327807489240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827962400053795352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827507858691265504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818020452019752384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830748417310034696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824000167757890544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829002535050846192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830488050616737264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829077104625115176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828743638182003632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829638681388141752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824230132172049616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829267733847541744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828145166969838952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822197043042706976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828822756948887024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828025078939617040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820846567457951552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809800114191116544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829524524828959712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814358294192858432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825208324496751296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827388239639007040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828842576059106000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817488347535431360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818660087848838464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820549120311528864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819343951243067360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828158177104344864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815280716971309696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830018564702852272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830148188833748984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821252173533913952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829216726768981136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826103941548370112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830516722984494568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824194290356154752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808949834610177792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815020444881248192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830419345996960592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826798520799360592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830129018236611072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821848374007710304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828520410928167440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824849794600305952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828141880552787032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829198404921038248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829629507133118848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827145660969325312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829029814843695320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830081101467325704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819014125168057472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828524014943465792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831239115371370896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828045106852441952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809934146345185280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820024529432423104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824224822577628176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830196991718426040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816488373162457792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810937662056265856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830454824543900088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823259701658815008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829832907268643440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824188967132810672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830483066221702984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823628578803971632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828703422705213752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815077868765605952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830199286982617096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829424234588117680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826580903473777568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830997445539923776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812699651069578880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829589081185026000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830975993519040872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821859896015416928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813165047880410368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829326343253057576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825750990306311440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825298517317806032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826461917447691024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817419749951687616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824330584570613584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828736578036411448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829359877001500864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825292011232959584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809533621550640640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827273191920332272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823719755364663392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826815269545012496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819111212262317568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829989657120808968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827312007508224192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826365952499149056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828649137963615272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809371927231194624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814697541507463744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828523553750578224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828095448765897400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816349614125214016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831308187108725272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831302333122026656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818712643439729472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829766574112276216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824740198181790064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827388466725958720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811618830545680384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831178069731489640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830450371016137168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828890556155755832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829057167096547176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813780501083229056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828829484168428744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831223193568399720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824437191751117936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831295720591289120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830985503653786344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827816631042126432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829571097273257856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829374558151866784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828751013584915296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828621811792274200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823969624844048528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823597028794520544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815898837827980928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828651997692564408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827260562044314112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829071820022064400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823506374001040080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828246036080109712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826673387540090144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812126461014722176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827533095003300528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823478298450098096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831297054670851928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827990491180533416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828901527413412856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829292869338581112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829005486380226440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829967671396613592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824827292551221232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827207911249530112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828473021154043704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825618638277261648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825135917670083872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816612423253336896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830157857706627248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822687503994238144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829552693860810160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826154388677703824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827862204825087272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823917705623535248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820036958585940864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812679127078082304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830535297327458272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825096034752984048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820560784393712128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830628331073271944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828370962742081240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824493727507477632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830937842546596080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828429929918783152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829429790235686648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828187036640447584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827026790976653472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830402928475662704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820660323578366752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830865953724448920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830063174470400520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820645258436091616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829427417091285616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828604180809534136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828632564502254872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830979408399007120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829084135128410344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821587303299649824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827954513806285816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830825013567052712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830487145183179400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821266013270868960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827225713107279824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825214384416045792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824684427404491200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829965902396841944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828507521932167784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822188308089054016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828797644956335776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822421319425605664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826434493882609360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823942019928581792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829247174963112592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830452815257640096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827635235137797952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819380198774518464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819278015371136096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829613674099452000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819217477169095872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828440936518199768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830870984658839656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825762200493439392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824523321349265936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829106774044791016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827746758958004176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814543995711906752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825440792648341328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828626941659831984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825847192794272864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829077510444552288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828874405442540176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808487105138440704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831193736512951736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830816596250823280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820301703568207168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816088331941286272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829708011013548064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830882665912038224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827172178420221280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822736376805066752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829021462063023280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831123522960167472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827311779263792720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830898574553170352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829238198227287040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817862555615365632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829652622688964768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827834319561815712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814501203869884608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828280959277570808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827946478147427720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824358367303487696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819052232672731008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829229206970232648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823729294107831888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829322969862491040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827879576234142928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829409289445028336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823075983534622048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815269653570879168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829924371397524832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820756593715628768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825622285626661760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830275586760255576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830576550951095760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830281400736574304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828839333284832752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828167633125190600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819863611796931264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824156256132371184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827886373577695272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827351062012393088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824070523458235248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826586536449001424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829990752351835312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823147416918755136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809636018861537536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821374557534320384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815842694210102720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827602975797874080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831259954028946688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830368341177266440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828314592038977256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826159092664931456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830792644675535920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827351422226044992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828348639596476824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823067454963369408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828990286430784984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829649954200745608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827739321297842752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826459525262595776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828412505617826264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818327777387514368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815496452724333440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820579168598092928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828530831970749032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826452810791700512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829573905238009984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821862014079014048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826294757573449200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827865338335239880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810013881782478976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820441529120713728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808187674123911680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828270733661697992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824798118792610480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823856992545135360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816811405523954816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823697945327214640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828356087794884864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826900161289582720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829327243593053808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830731136303864048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811934817417130496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825445882547921776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810604587659740160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830276529214390888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826985617963005472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825663390230094448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823490852316592000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825814557310273280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829846635886241432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831201879989513208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828388396013156104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818796119224776384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814286489885770112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821028517057976608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830872623426370088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823447757499592512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824946045267207200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826773099277431424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825639627050463904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831103014040974472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828065949637682832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818536588493988736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828919181040420208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819930306559582240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824745296647657616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817129103849321024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817668066581931904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823082938485559232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820247921013965824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828190295307658656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827709019765762400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830459010227133680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4802479442355543040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824300680259342368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828554111576248368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819155255839790208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828714665721830304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819627083596812672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824758707441755056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826048908929448464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821821043527097920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828193628286844240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820474186362759200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824078894244746736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828976253482565520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807432567215925248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821519451500568704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828319531233532752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830595714000919696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829606143491330296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831062171572444264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828015989135974216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826411908038926976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829137553677427192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4802386872290690560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828512762331546328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826113634408017072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4801366795724209152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829559551088195216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824457815077649488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825104961998997696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828318730155711640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825803382722387072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828518806919805664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829624975360642120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830589877789440192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822033251261072288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821465944022606816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830235553744798728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823823677071700784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828505987520238864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827464595261135744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825983092701849424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826929881694965840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815327921785750272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821937615217344576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828279067859249088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830584328106474768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825161286264794752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830161838060991912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830489049437342376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829181408581271368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830714057790237992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825690259115425216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823541326783054512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819233385286870304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828670686652078736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826334639195689232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4801550758421096960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820033847397215264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830642838411377224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827213559324557328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830991018056563792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819544974863751136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815446550434527104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828705588087706104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829307981649068536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826716407287425904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828935707660355856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830172973858941704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825085320240627120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829182205360928400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830815037126676896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828099391856536224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814039554331539584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828979600297571656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829677650988387000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824340603860443776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823870868948330128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831327466129404080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826218016031263552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829089176554253912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829822725488259160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819122328035090496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828135789121833760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4801880461950990336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829012477243259104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831235763978750584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831011834991798232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831290307149398480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828376847086978328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815373189979926656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826164297293882048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825663403315127552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827582683385437456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818637552110658432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830840534621350568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824990558657048128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4800843769317769216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824720896865374080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829481629144036848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822281258383215328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821922578154521568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818716488573759488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822759788165880000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831176628834623632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830934046219283184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827480703060971056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828801850311988680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829742004452261368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821761108002098368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811171582226770560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821162237441589088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829893652034294528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824941781733999696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815609803134758592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830584369392837736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828854906584776712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829794755630148784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826770539203255776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830540580259903856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819044594925945280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816589930089745984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826325209847117824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829028066635673424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830412658971060968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827881585999554880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821098231599742592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810495948799962368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816452977081495552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823842547817570480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829000400574254480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829973402321283304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812501437949989632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828159102840001664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825617838513018912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823717926129545216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824072921334998368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825972505133988640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831303006185078072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829226200445216840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818450056983720512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830526519432849912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819001615258876512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821558977215788000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830246402648551312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823459480303358304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826097006083706736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824974388397267440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827219072206367712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823447614695485568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817142153021705280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807882622910533888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829863837189077976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828230761001096864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831096691024443768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828362284611117448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822543093235370464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830939132907878664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828848286882678456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829036731779292200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829170535830373584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819180331072956320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819803391503039232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826001247087388928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831175297540653880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808308594351487744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826661817249024640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829828222140456672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825383026489298864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828157563587003032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830512290222329104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826637503311409184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809146820994298624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830852733382901528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829934501038659336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815184071504419328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829636284077325696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824394439420605312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815574272074801728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821234233935693728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830102132906660720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826435401793400032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830851817520721776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829190550160778232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818600570109518976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830576414726407968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810538202405907840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831119946704451160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827968949828340656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825834612564791728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814361544745725952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826965038912810032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818925389340238944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823941549853028656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827199934529622176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828231941641091128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824255847258460288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831226155612323216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828132170068947744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816993247692470656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831054771041187896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829112095333739008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829451759057385848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829187396916832832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829030856085666840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828671584890763048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816980106163006080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4798740491261993984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827983793915982712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828897347734349200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827197027012234608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830457889727819640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827522104757177904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828776882096449752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830914223661357576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830788794370467072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825835141728297760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831134749061743936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831119323337478976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814635753936305024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826319990053618880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829117413533698144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830907338522236776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821373405426605632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822014707577214688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830006819698958880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827982402462070912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822645654896985280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830966479589245248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828202623673552824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827969738135121872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826352357436287984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830578681185208000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828517613773648728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815328588918886848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825585495361811984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808555997827795200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830966038490912640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830304294890521032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825520077923156320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821553753276140416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820737594307238176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828264740701401432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821068768140270592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830992720141957432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824207414462442416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821865791946085760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820882648137761536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4802116320502949888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829534163573253048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826360750357118560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828384116428792936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831014475185740864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820798087871648608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829316148398531864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830140023691716216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825637684592112704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829793805728847480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829630671089730232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828012493830490024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828999828400983256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825467843281339712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830129921127032016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830459184145696784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816215298457082176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825697069030343456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825878569322817104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828743862006044432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4806841318120502528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828082288162543536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825192318514286752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813059735347666304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825142887864212032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830263498179826288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828761480814123752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829266116799413408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828553220621145808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826089580048413136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813146464203002112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819483375091700064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826317824660351280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828958382682678720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826712621806708592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830396581020642272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831320941484415536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830880582894181776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816086903016832896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828978932868789848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824454281393340960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828494657000230768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829921147670877840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828038332980052336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824276184848474832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819864175725308480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825257874386319520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830355502910561736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819567395139830176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831059786224931264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815012682034187584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828850928743361232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828914071268749128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824298670999126176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830817442116622112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831082963429051592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830049193348661640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829162498235442184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824939577850389472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825890586837852064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829727817540523896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825615917541924016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824483021405536256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821181261249639520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828906588570573128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824787899373353888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830401244362513648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823532768809936928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821493725280718368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824004593786391968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825515352901826576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830109921485407056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829492227189699280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831236559896566656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828546390315711024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823497647094069680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827910463947124256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830709120124668680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824826266250678160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826493295940655600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825596410066197024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828290142728167688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829814726233398024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825911049794417664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820894718499538688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823429825572297392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831168636017899424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829000309166144920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826213063368554304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824871721201164752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826978090994732704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829888282160827640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815463590502833664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823655414353957984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829005963406435656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829083472693421640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829425665770202992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828971763543703992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826720341458490032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828516504834323200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828643148039440112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829969652201903680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820033023415602816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829909792269358248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825692851837841328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828764504645372688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830498820588818536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829651387841448416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822258860091572352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828610748787915672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827153038811246656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819569891232775936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823517111282941408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828050670729594288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824247506860790048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829674149697252600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830961168849051280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820418424930619136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823102909356397568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819082606784820448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826998981889498752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831097514598617280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827244907927815696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824627196339620528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825794361196790352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822601676903503776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821659109643759936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822196986477042752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828650786239763256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830919523764256408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819775470675162304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829302111202580920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829106066064528040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4805657881797135360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814438866772163392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825509086266487824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815792487315477056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818798643743191488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815227734331151232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828474242913931024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828127018296071224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823635205848369712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823367475407607120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825763871670807024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831214419383258848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824288957781532272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829456356607402296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829289511976457752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829034820506968904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830597773637131672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825742468968502832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830542387559129856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825744450060895712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828137409426162576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821749282478426304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824956079253902272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827818527547472272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828408689940955864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828560982404743240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830648265918829192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827576132015968720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819621692013594336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827574875831882096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831305106666121792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816251753893187904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826033540569286656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829126182538113392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830799402519026288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819643169533702464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827322243882383264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827834490718046432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823884335864679872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829249767820880904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829883591071052008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4804507150982660608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817045694313755264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828080835070996824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830517214380635496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828681522368146304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830127836939585520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827255812246917088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821612888110048832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815881378974057664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825550681344480224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820617751317415456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829058600510610672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828018251630976608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815123303807057472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824760830316517328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824739439811345248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829995096191868584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828602703410810944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831285681447426816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828904499124773064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822642557532597728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828638895519564816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828873891365172376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822009390604335008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825824064673405520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823414704215581792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827037868457243632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823717895239368576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830723691270468464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829830202640648176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819028745853231840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828115446661935072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828462084075648696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830261729290690032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826311245672607520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823780849891545776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820564707104219296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828786643959353528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828757932036582432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822948878554994304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828695463575702880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815454127756345664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830727985854308096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824892621897440128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821534435969346976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825411581131231888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816110296223969024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830481018771067376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826840413753649344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829729059664169144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811723061350256000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824091230233798784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830177259134549008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830604203781824792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830598941809407736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830918532466547968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828264790237266032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824956728730549664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824386300996389152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811163437251593344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827899387275906672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825221846259770000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828789389135875016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810036889372697088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821599701561385344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811979233842076032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829436264146616088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829767180600043040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825101310268852720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825568540777912032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830828694399054616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826532749806052864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824834593059869344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824372974059422944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828019266821246512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831168995255167976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830774439489081448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824432288438027744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827527854120512800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828469688979773160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819521738232942912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824392126383351600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819766330340943136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828258180701593952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828079682617793440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826074050531504240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826400062458458288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820332594643093760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830064812335529008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825028259168214320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828916955161426560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4801276707255278080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824162241438783008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828989810981130544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823523185728933152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826358144497451744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822186083198697632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826821616284527504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830781828715874736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828113984292970464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823011210392337056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824445769983228560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829961709942378432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823362652008183536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824698831771482976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827793752554909872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828892187636235384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829916463937796072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830852506673997320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827182749784127232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807049038230002944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817960243988094336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822415412706159392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829458704750866224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828650914497562872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826592501459372272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819712122027271328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830556471699972216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824609062003762832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831292111809740352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829163328407309496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830607173753838384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830199234672168024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807445119315442432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830431827929550840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823371725101420624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827203564683550560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4802654392213510144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830392576750358320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830259579085520024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816810139556881536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827592046043154800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809444001976736000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830643128937955248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827833489924083600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809673306017612800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828819973293714008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830604785357518072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827604778491031824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817556334844584512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827632075223961776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829244617782883752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4806082692517707520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829440580022412400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825143619485124048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4804407372270389760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827061129047157024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831005496602051008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822673182503275456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828190005615887768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828658222768019664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829804100173033272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828388983660381704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829629606063748168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825782858588053008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826278667738899504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826683198417091936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828401449032683864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821978376109270048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815599479735153472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829983756204481872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819180467392501376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828373522257085216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825304573467627744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818048571527679296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828448997542998640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822038300668297536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827729494857657792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830148372241123176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823701926117888864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826620420921876512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830604062070689576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823688642857176688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813411710960074496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825833443707113680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820226413199308192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818901435626702208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820572703460820736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830126593546286896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827902264237978848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819085330855746432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825149809170231296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828959845638818912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829576529710751120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813349246492007296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828560857388339568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830332390372090744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830131300718654480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818412236106018624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824125356709734384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816127349066001344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823193270080156096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829724715931198232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825996954598193392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813952995078249216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829346993461650536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814166268508934016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827090806034324048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823429952986812624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827201455390949904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817009432047492608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829534514918251408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829158713847028760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809666165683490048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808772618826028800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829744276920516944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824594095038736752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830208185628499752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829055683486244512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830770703940399064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823626267292312992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825350544189360640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826767024361026576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825451203872374432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829352792561559344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825005378796767024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823634645275372624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819234884588818976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831144160009523112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829222467948395792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4806117454246466560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825652466119577776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829601282915286680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829230429881522856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827902727192733488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825774304577015312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830659819834833816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824581104655865728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4799578258292168704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830073933318267360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824901779276826480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828365439644643224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819134259981495936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828875793807061312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823426681918233472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822891011383723840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819900604615756032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814420325974639168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829480590944785744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829144686305228144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828550700196160480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827674678623597456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830824161453871624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829690082370799488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826867515532633888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831088413137080112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824589806577553904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831299844241812784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829709875665381920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824766200554249584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828941498095148184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825367271139874688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816356729242456192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825186995363937520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829492740521155664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818801757618441088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830708605960973344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821044500485745792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829987031169926928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818204751711647744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825842470053161904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819561172293574464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824428063311925776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829579306479235544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830623250595382048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831194777476287376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828755783937465520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829018062630652808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827050207023462448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825715861690315472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815000621347288000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829161901384130368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822189018725895040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819901036128939360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829076161194730608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4805683993048782848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825567083705557328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825244112728205872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828867843525822640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829582801076311736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830171693639192264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815676967644398656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830430836045712064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828727221034897176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821118095571613376
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831092813080541192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823971189306516464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825697399391297712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827184599034662192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828288403139620288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827616647560329440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830129024447507392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830019585285344160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818709675953384832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815266306700464384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826725375421826464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830644075068547744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829001979141426944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830163552923459528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823689295693272256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827084723674821968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828886591395387680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814387219164263168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831013237466695464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824482515477132976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827546765281739296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819231863053022752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826343424213328336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825716975352951856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829697814912378872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830247020374696720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827739551410954608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810854266004404992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830839484757067072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818067811821895232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829497184940924064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827122235700915312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829207512031749096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825487202965114512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825037641595430288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826654691292779472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829575603486788664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825388313599588816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830155182470676928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812230767270040320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826745832442424384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821740748713696480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825579524074762240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829602739090780760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829067622429790096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830506312121501880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829310650899300496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824871636509209344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821980691668650976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818559402169570112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829354289797827912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830654795274010864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830088811547901696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828866466246432496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815982169813290240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828553133211230208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827898360576455016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826091502388647776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826364852788527200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830798640299891824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824356863289336944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822438314476981056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830315225531732904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821777352116181696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828767993391123248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827217697928330560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830622623352876808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823832180922649056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831224317089507416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825186689667142208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824387170999029456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830110692073218304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828717990228608184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830605565797455304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829258969451171704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831172052227185040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826935144643815072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817376601096578496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829320247921565072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830860423348544920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828926055884951712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831087537632416992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819609905171555264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823990430631776992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816649351884413568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830568092193764952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822961815908763200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823947432112105088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816529621315393856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820608909683641440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829864250302872888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819708508800762432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830176958352915616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825636609926651440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4804669705381847040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815884688589098880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825601596458387344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809537992633624064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823418612481632000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828888904660848712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829757914886484824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825086995035602736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815990724034632704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811953877088863872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826633664600639808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815214346745740480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828591760596913960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825490972866458864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823776673981742128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814820683885126400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823229437443087584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829618304028269816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824258947727907040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829075960462034640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829276879803025696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831030697968676440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831347327108045984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830755497031648360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816421901696901952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831232630915365464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831005298829956624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4806507950231111168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829441548686148648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828295030119831536
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829702700373067456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830399921281850864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810764388335182976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821939752147511968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820981371156213056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820126894765788928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819531241392701280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816580761560698496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4787015691124703232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826587808067086864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827280148172200944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824714525153096624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817986461224304448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818906989651355328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824492564592407472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830760493971499024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825182970358290496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829181005817349368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826634464215338064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831041682764506624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829920396567751424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825094510270951024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828478827689847720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828175855165713624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829409058687563920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830020047865841720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824948201740410336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826216785601745472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823933367929600128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829932371251833512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827409561885041904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831246688654050296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826515696321555632
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824148533170894608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820049303293156000
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830525616420154264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829755646867633056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808152729614747392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828218829599771240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824234842543699152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817704393670129920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822685755132083776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826472865060179360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818917582211088320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825730002472397152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831182602734274600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811102271288483456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816267832722014848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824297894678191600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828989396222451968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823454528813201056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819586801052686048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830679324810744408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824537944667992736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819046776312733856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829110542232348712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827497332436849200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825726441780688048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821162160354381984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831062396843479032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815404154201622272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827062468957834080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829527759046000760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827114124482406992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819583049600597216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825116594551209424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815459059304423104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829649515995403872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819303461145449472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821632634647878688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827761525938309888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830999927906969888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831302735014835608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826245858807608864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830482782912648120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824275150496074416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826274652674185088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813156036567044096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828004763681227712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821323464284191552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828147003537382088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826765493674915488
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827856258017417904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4797003597886793728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824212399569053568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819208724952221280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829826984299412736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829870394113628816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822278364838580032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828645512035289968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823940881946422336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826094882738519184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825308886734199152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814850932814339520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819574699022471968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831063023517681656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828860466564569032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831222139255916824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827636673189145136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818740232801624576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830907423518452312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829163558554449384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822412298515019872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831300497228842568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821835190078033664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830904066426894304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826212721031345792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819819058352501248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826973720951329264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814750894073215744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829710255147153520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831123819618149432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823956046523625504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825620250905488784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822331587049894048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823536377781843504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825531248970217696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826548869496872752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827398366802253568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823568109621898160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827664525304807936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831275047668677760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827036446157365120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828851773231264552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817954959987359872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820197914799703840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829285429815737352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825322018223873664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824190053738543744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829482351415814944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830986542271639120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828002690121049328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820438273850221184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826549410261164320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809327933531682048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820479403709830016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825400504406906592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820981704605227648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824610066114422256
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823976716168422928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825059651876177232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831131234112277584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4803574545180684800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829714610427853752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812767541546718208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820308786257661440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829323151375418280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818848509627248576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823430587744400336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827297621251811216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827964503781447928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824460608748474272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811307091995318656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825104231925151104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831083529233682200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826668207676376096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830025258565155176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4801116480600081920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815732888911631936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827943931276031584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821666325745345984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822930341615833120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814621710889750144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830960796162821176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826945346287249984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826688175956251520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810667675630937088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826265364342800992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828519504549868304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827010495477621520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830846172272253672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812448184406155904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819484414407653312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828563805255368112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819044152113420832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831245281839906096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824696979241462816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829480936576612824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831166526346395784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830838348365535856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828873440553834528
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829587339162152232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829515363552105688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826558900467595568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830497205265777184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821814388996203648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825505594336264896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4802346013026924544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827413446838903760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830933525684314288
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824246472373641952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826145309732970416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812311126865373568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824883297797925248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821411464243387968
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830032469469832056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4792392304279207936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4798054225943911424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830888349620281616
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831200488279832232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826775012572091184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828539430884472936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818319316426633984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826052931406047136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830641218078299040
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821657692617289984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826106283166506208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830697694584277200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831124215654121432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826211877327452928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824932766451729312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815841177410541952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818083444368776064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830570848439638920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829095018956857160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828632250908242768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828138468435588664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824958445834353280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826310149951111664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824621842626629904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811664596270294400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830341611589017208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815648607091992064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829366019428772816
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829439549673847504
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831017586823970312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825197497664835648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823842243591062384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828481977185766184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824239061502505888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829362359379591600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819744355337975648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829124823074648120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4801533772015147520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829124479449952792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830856674616411520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828492323950735720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829200951661036360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821799555554193824
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829095493668706872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828070291765318168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809621295871397120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830649495715344592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824174814301472432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825772541350245392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812378235403899776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830562052419267736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830385506807741792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826439895308664224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815310646142149440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827998677370723600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828562156018242928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4804213314770760192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823597620519451744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820134471689829216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827700647816181872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825712608605087984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824737672957179200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824116017800886800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824385550800273744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826938165453442912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828392760873289552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829881131260800176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4802714550939807232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830202871501583128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830356512424981712
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827407579493812720
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816142745268977088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828709584600411208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812006539508483840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830253309853424784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827172221501251952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829938605973438096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827579275503820384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829719668127289464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829630773548330656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4789324781172637696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827864666462776584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815098304620452160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828825400656240664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829830604182604704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829300170918067280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829618286969682912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827029749470854400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829178212255840520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828224536696954640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823831920176644096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821327401871667136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813850665870254464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818608730209531776
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824270234544197328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825145247272289072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826611773759051392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831200329820927248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831350265146142392
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829524197492650520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826431416703756336
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826459633077735248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830326596286814168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4800860742080316416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829121193457777744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822080402659153120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816591957753914944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824516830111562272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828061276428492640
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830692508035285112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829909670670308296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830257496889434768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819606451801220032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825721185572303104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819587737948909856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830583666602399728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827667485427008048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830281743880955512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830751956833039144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826969095280655248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828638029976343352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824614715178836480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828322334837407808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828361517467437648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825287766799782784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830932566031655648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825157736347828832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830414779300699688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831167155877611136
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820009215375188064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827782986999805072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817422624246468032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828819606206137872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4811487084408231552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827424983036178064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827754809147950736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820433894216282112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829846203419133048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828454549325522008
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826196543566500464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828481724358771352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829059255176514768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831068129582799088
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820756164745126496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830815865936072768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821531541594077408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829499447087240248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829352704440335240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826824434956368096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827790185252750544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829986977859979120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827503372484413760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830783794265962056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829280770307544128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828283154446125704
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828331588649505360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825896104395758800
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4806426769260233984
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820318206413000832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830399868914835416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829180192575058080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823865431554813920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829787080104754128
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830439919138846552
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821289290024119328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819330778106089344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819213679354293120
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822217391189612384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825322787921096448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830271482152690320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824965189344203248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821705089842601408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827512661273974464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823671558999741808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829864275213500104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823675689982701600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4805466646156206080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827267351426073936
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829405387322902048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827481500886310608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820372280236400032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830573100582253472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829996977007107864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830361483549809784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827657358275318896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831087577592538944
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829518960855829064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820546671148816480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829826963793373744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817149615116916608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821606790366824864
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824947533819509952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815468893183850496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829169063528085296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816280335794196352
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831007256026107880
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828626140047050928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825099341551433872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4814230631718346496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830539607759976856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829857550902155168
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822600345670461920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829380687214603232
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828361782350202752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830561363867520592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830036857347027560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829505444641379760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829518474770914840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830319266307777416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821210257426396832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826226634890300768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828853272521321304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829673628073265920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817511336862117248
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812032954068250624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825174956893331328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809931002910482304
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830794991170365320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829567144666699368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828510949803132320
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826590523598392672
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828268813525705560
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830331183795269056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4807825736390281216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828784977537741296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829237949603340408
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830396720975411624
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828962293704197360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816255529468331840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830374419635527840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830162005693378680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4813761108228930432
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825115976356451520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830618570103382688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825904776233322544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819751503937925920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827382448505188592
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4810764518568664192
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828041769261054072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829509440910361832
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823679932491235680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824894466868256608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831052412997544032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826051729646730960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828239360095875688
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812106776624421888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829662693498105520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829558850445312312
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827894399424436280
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828675843375914752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828984303200249656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829927288962327896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829077654811408456
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827035030823764144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823677056898120416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820311513609360448
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830881200528138544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827069293394163920
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829981469925167208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815120282917395328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824131244504752768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824875327042027696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824862510040651424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824495206235597024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824924060233749760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828577388538940568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821564031773328096
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821054192409080544
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828578306982353152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4819209576612547648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828001612889298056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824603142385045344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829511559332690296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824249515810482080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827262120095071840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830268306930454368
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822275314104092384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829734914145351872
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831327021791039472
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827939183029650400
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824728625368859440
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825753883306752496
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830422446226785048
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830741138008733272
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831145716780698024
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824527068418927184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824889469332577360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830676094022899808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4815146591856202240
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830041994399631840
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828402316602229888
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829281965200215072
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823881026522404960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830435044492179904
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828580289114408144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828575305975905648
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825768048796011216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4821660760866752384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4812282198747047424
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829349683463460760
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827680625120305360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830003107120973328
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824406737021565056
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830558705874220016
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824685915418417680
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831245206292333360
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824764925640621264
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828329500574847992
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4824519861108288160
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828612957555455112
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828229607167572896
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830087581678987224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829832156818769696
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828447034724542568
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4825146261921888384
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4820548914013441344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830608237164007600
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808937294902240768
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830602821525917784
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826878343145726736
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823705685615511584
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4818993329837020576
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823857934105611808
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826114651373376064
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4817427686245114752
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830908935320051224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828862287071003480
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829208869107412512
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830577890468994416
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4823926069997831152
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831280790756748032
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828486662089364608
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828012096360157976
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4808044942370674176
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829801156534725792
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826648859901490960
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4830876833245022928
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828848685543967104
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831211025995637344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828039857776914144
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828603714886096656
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826385390523026912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827600529986139296
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831334757042780848
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4822550890941121184
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4829394818927283464
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828350973391129200
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4828731267071646912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4827253332224095856
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4809903518129782912
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4826760302123462224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816244402031689728
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4816244402031689664
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831355200913801208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831355200913801208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831355200913801216
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4831355200913801224
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4846369599423283200
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
    LI r2, 4817745636528479808
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
    LI r2, 4845873199050653695
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4751297606873776128
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
    LI r2, 4621256167635550208
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4621819117588971520
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4636666922610458624
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
    LI r2, 4636807660098813952
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4696837138094751744
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, 4696837146684686336
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
    LI r2, -4540151791924281344
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    LI r1, buf
    LI r2, -4407127634823086080
    LI r3, 0
    SYSCALL SYS_FMTNUM
    MOV r3, r0
    LI r1, FD_STDOUT
    LI r2, buf
    SYSCALL SYS_WRITE
    LI r1, 10
    PRINTC r1
    HALT
