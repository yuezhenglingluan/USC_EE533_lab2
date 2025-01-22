VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL D
        SIGNAL clk
        SIGNAL XLXN_8
        SIGNAL XLXN_2
        SIGNAL XLXN_10
        SIGNAL XLXN_3
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL Q
        SIGNAL Q_bar
        PORT Input D
        PORT Input clk
        PORT Output Q
        PORT Output Q_bar
        BEGIN BLOCKDEF inv
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -32 64 -32 
            LINE N 224 -32 160 -32 
            LINE N 64 -64 128 -32 
            LINE N 128 -32 64 0 
            LINE N 64 0 64 -64 
            CIRCLE N 128 -48 160 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF nand2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 inv
            PIN I clk
            PIN O XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_2 inv
            PIN I XLXN_5
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_3 inv
            PIN I D
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_4 nand2
            PIN I0 XLXN_5
            PIN I1 D
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_5 nand2
            PIN I0 XLXN_4
            PIN I1 XLXN_5
            PIN O XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_8 nand2
            PIN I0 XLXN_12
            PIN I1 XLXN_3
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_9 nand2
            PIN I0 XLXN_13
            PIN I1 XLXN_12
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_10 nand2
            PIN I0 Q_bar
            PIN I1 XLXN_15
            PIN O Q
        END BLOCK
        BEGIN BLOCK XLXI_11 nand2
            PIN I0 XLXN_16
            PIN I1 Q
            PIN O Q_bar
        END BLOCK
        BEGIN BLOCK XLXI_12 inv
            PIN I XLXN_3
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_6 nand2
            PIN I0 XLXN_2
            PIN I1 XLXN_1
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_7 nand2
            PIN I0 XLXN_8
            PIN I1 XLXN_3
            PIN O XLXN_2
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_4 864 624 R0
        INSTANCE XLXI_5 864 880 R0
        INSTANCE XLXI_8 2016 1184 R0
        INSTANCE XLXI_9 2016 1312 R0
        INSTANCE XLXI_10 2640 1152 R0
        INSTANCE XLXI_11 2640 1296 R0
        INSTANCE XLXI_12 1664 1296 R0
        BEGIN BRANCH XLXN_1
            WIRE 1120 528 1136 528
            WIRE 1136 528 1392 528
        END BRANCH
        INSTANCE XLXI_3 560 848 R0
        BEGIN BRANCH XLXN_4
            WIRE 784 816 864 816
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 384 1264 400 1264
            WIRE 400 1264 784 1264
            WIRE 784 1264 896 1264
            WIRE 400 656 848 656
            WIRE 848 656 848 752
            WIRE 848 752 864 752
            WIRE 400 656 400 1264
            WIRE 848 560 864 560
            WIRE 848 560 848 656
        END BRANCH
        BEGIN BRANCH D
            WIRE 368 496 544 496
            WIRE 544 496 560 496
            WIRE 560 496 864 496
            WIRE 544 496 544 816
            WIRE 544 816 560 816
        END BRANCH
        INSTANCE XLXI_1 160 1296 R0
        BEGIN BRANCH clk
            WIRE 144 1168 144 1264
            WIRE 144 1264 160 1264
            WIRE 144 1168 304 1168
            WIRE 240 1120 304 1120
            WIRE 304 1120 304 1168
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1120 784 1136 784
            WIRE 1136 784 1392 784
        END BRANCH
        INSTANCE XLXI_6 1392 656 R0
        INSTANCE XLXI_7 1392 848 R0
        BEGIN BRANCH XLXN_2
            WIRE 1328 592 1392 592
            WIRE 1328 592 1328 672
            WIRE 1328 672 1712 672
            WIRE 1712 672 1712 752
            WIRE 1648 752 1712 752
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1328 720 1392 720
            WIRE 1328 720 1328 880
            WIRE 1328 880 1728 880
            WIRE 1728 880 1728 1168
            WIRE 1728 880 1872 880
            WIRE 1872 880 1872 1056
            WIRE 1872 1056 2016 1056
            WIRE 1584 1168 1584 1264
            WIRE 1584 1264 1664 1264
            WIRE 1584 1168 1728 1168
            WIRE 1648 560 1728 560
            WIRE 1728 560 1728 880
        END BRANCH
        INSTANCE XLXI_2 896 1296 R0
        BEGIN BRANCH XLXN_12
            WIRE 1120 1264 1168 1264
            WIRE 1168 1152 2000 1152
            WIRE 2000 1152 2000 1184
            WIRE 2000 1184 2016 1184
            WIRE 1168 1152 1168 1264
            WIRE 2000 1120 2016 1120
            WIRE 2000 1120 2000 1152
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1888 1264 1952 1264
            WIRE 1952 1248 1952 1264
            WIRE 1952 1248 2016 1248
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 2272 1088 2448 1088
            WIRE 2448 1024 2448 1088
            WIRE 2448 1024 2640 1024
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 2272 1216 2448 1216
            WIRE 2448 1216 2448 1232
            WIRE 2448 1232 2640 1232
        END BRANCH
        BEGIN BRANCH Q
            WIRE 2560 1168 2640 1168
            WIRE 2560 1168 2560 1312
            WIRE 2560 1312 2976 1312
            WIRE 2896 1056 2976 1056
            WIRE 2976 1056 2976 1312
            WIRE 2976 1056 3184 1056
        END BRANCH
        BEGIN BRANCH Q_bar
            WIRE 2560 944 2560 1088
            WIRE 2560 1088 2640 1088
            WIRE 2560 944 2960 944
            WIRE 2960 944 2960 1200
            WIRE 2960 1200 3200 1200
            WIRE 2896 1200 2960 1200
        END BRANCH
        IOMARKER 368 496 D R180 28
        IOMARKER 3184 1056 Q R0 28
        IOMARKER 3200 1200 Q_bar R0 28
        IOMARKER 240 1120 clk R180 28
    END SHEET
END SCHEMATIC
