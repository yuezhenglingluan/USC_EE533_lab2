VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL clk
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL Cout
        SIGNAL S(1:0)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL Cin
        SIGNAL B(1:0)
        SIGNAL A(1:0)
        SIGNAL B(1)
        SIGNAL B(0)
        SIGNAL A(1)
        SIGNAL A(0)
        PORT Input clk
        PORT Output Cout
        PORT Output S(1:0)
        PORT Input Cin
        PORT Input B(1:0)
        PORT Input A(1:0)
        BEGIN BLOCKDEF OneBitFullAdder
            TIMESTAMP 2025 1 22 13 1 33
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF DFF
            TIMESTAMP 2025 1 22 12 53 7
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 OneBitFullAdder
            PIN B XLXN_10
            PIN C XLXN_7
            PIN A XLXN_8
            PIN S XLXN_1
            PIN CO XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_2 OneBitFullAdder
            PIN B XLXN_11
            PIN C XLXN_3
            PIN A XLXN_9
            PIN S XLXN_4
            PIN CO Cout
        END BLOCK
        BEGIN BLOCK XLXI_3 DFF
            PIN D Cin
            PIN clk clk
            PIN Q XLXN_7
            PIN Q_bar
        END BLOCK
        BEGIN BLOCK XLXI_4 DFF
            PIN D A(0)
            PIN clk clk
            PIN Q XLXN_8
            PIN Q_bar
        END BLOCK
        BEGIN BLOCK XLXI_5 DFF
            PIN D A(1)
            PIN clk clk
            PIN Q XLXN_9
            PIN Q_bar
        END BLOCK
        BEGIN BLOCK XLXI_6 DFF
            PIN D B(0)
            PIN clk clk
            PIN Q XLXN_10
            PIN Q_bar
        END BLOCK
        BEGIN BLOCK XLXI_7 DFF
            PIN D XLXN_1
            PIN clk clk
            PIN Q S(0)
            PIN Q_bar
        END BLOCK
        BEGIN BLOCK XLXI_8 DFF
            PIN D XLXN_4
            PIN clk clk
            PIN Q S(1)
            PIN Q_bar
        END BLOCK
        BEGIN BLOCK XLXI_9 DFF
            PIN D B(1)
            PIN clk clk
            PIN Q XLXN_11
            PIN Q_bar
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1360 1328 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1360 1728 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 512 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 512 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 512 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 512 1456 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2576 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2576 1232 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 512 1632 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1744 1168 2160 1168
            WIRE 2160 960 2160 1168
            WIRE 2160 960 2576 960
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1280 1696 1360 1696
            WIRE 1280 1696 1280 1792
            WIRE 1280 1792 1824 1792
            WIRE 1744 1232 1824 1232
            WIRE 1824 1232 1824 1792
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1744 1568 2176 1568
            WIRE 2176 1136 2176 1568
            WIRE 2176 1136 2576 1136
        END BRANCH
        BEGIN BRANCH clk
            WIRE 496 784 496 944
            WIRE 496 944 512 944
            WIRE 496 944 496 1104
            WIRE 496 1104 512 1104
            WIRE 496 1104 496 1264
            WIRE 496 1264 512 1264
            WIRE 496 1264 496 1424
            WIRE 496 1424 512 1424
            WIRE 496 1424 496 1600
            WIRE 496 1600 512 1600
            WIRE 496 784 2224 784
            WIRE 2224 784 2224 896
            WIRE 2224 896 2560 896
            WIRE 2560 896 2560 1024
            WIRE 2560 1024 2576 1024
            WIRE 2560 1024 2560 1200
            WIRE 2560 1200 2576 1200
            WIRE 2560 848 2560 896
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 896 880 1120 880
            WIRE 1120 880 1120 1296
            WIRE 1120 1296 1360 1296
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 896 1040 1104 1040
            WIRE 1104 1040 1104 1168
            WIRE 1104 1168 1360 1168
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 896 1200 1104 1200
            WIRE 1104 1200 1104 1568
            WIRE 1104 1568 1360 1568
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 896 1360 1088 1360
            WIRE 1088 1232 1088 1360
            WIRE 1088 1232 1360 1232
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 896 1536 1088 1536
            WIRE 1088 1536 1088 1632
            WIRE 1088 1632 1360 1632
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1744 1632 2192 1632
            WIRE 2192 1360 2192 1632
            WIRE 2192 1360 2592 1360
            WIRE 2592 1360 2976 1360
            WIRE 2976 1360 3168 1360
        END BRANCH
        BEGIN BRANCH S(1:0)
            WIRE 3408 960 3408 1136
            WIRE 3408 1136 3408 1280
        END BRANCH
        BUSTAP 3408 1136 3312 1136
        BEGIN BRANCH S(1)
            WIRE 2960 1136 3136 1136
            WIRE 3136 1136 3312 1136
            BEGIN DISPLAY 3136 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3408 960 3312 960
        BEGIN BRANCH S(0)
            WIRE 2960 960 3136 960
            WIRE 3136 960 3312 960
            BEGIN DISPLAY 3136 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 304 880 512 880
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 304 1360 304 1536
            WIRE 304 1536 304 1600
        END BRANCH
        BEGIN BRANCH A(1:0)
            WIRE 224 1040 224 1200
            WIRE 224 1200 224 1232
        END BRANCH
        BUSTAP 304 1536 400 1536
        BEGIN BRANCH B(1)
            WIRE 400 1536 448 1536
            WIRE 448 1536 448 1536
            WIRE 448 1536 512 1536
            BEGIN DISPLAY 456 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 304 1360 400 1360
        BEGIN BRANCH B(0)
            WIRE 400 1360 448 1360
            WIRE 448 1360 448 1360
            WIRE 448 1360 512 1360
            BEGIN DISPLAY 456 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 224 1200 320 1200
        BEGIN BRANCH A(1)
            WIRE 320 1200 416 1200
            WIRE 416 1200 512 1200
            BEGIN DISPLAY 416 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 224 1040 320 1040
        BEGIN BRANCH A(0)
            WIRE 320 1040 416 1040
            WIRE 416 1040 512 1040
            BEGIN DISPLAY 416 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2560 848 clk R270 28
        IOMARKER 3168 1360 Cout R0 28
        IOMARKER 3408 1280 S(1:0) R90 28
        IOMARKER 304 880 Cin R180 28
        IOMARKER 304 1600 B(1:0) R90 28
        IOMARKER 224 1232 A(1:0) R90 28
    END SHEET
END SCHEMATIC
