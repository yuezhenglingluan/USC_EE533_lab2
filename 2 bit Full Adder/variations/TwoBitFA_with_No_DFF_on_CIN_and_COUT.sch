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
            PIN C Cin
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
        BEGIN INSTANCE XLXI_1 1392 1120 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1392 1520 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 544 928 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 544 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 544 1248 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2608 848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2608 1024 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 544 1424 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1776 960 2192 960
            WIRE 2192 752 2192 960
            WIRE 2192 752 2608 752
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1312 1488 1392 1488
            WIRE 1312 1488 1312 1584
            WIRE 1312 1584 1856 1584
            WIRE 1776 1024 1856 1024
            WIRE 1856 1024 1856 1584
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1776 1360 2208 1360
            WIRE 2208 928 2208 1360
            WIRE 2208 928 2608 928
        END BRANCH
        BEGIN BRANCH clk
            WIRE 528 576 528 736
            WIRE 528 736 528 896
            WIRE 528 896 544 896
            WIRE 528 896 528 1056
            WIRE 528 1056 544 1056
            WIRE 528 1056 528 1216
            WIRE 528 1216 544 1216
            WIRE 528 1216 528 1392
            WIRE 528 1392 544 1392
            WIRE 528 576 2256 576
            WIRE 2256 576 2256 688
            WIRE 2256 688 2592 688
            WIRE 2592 688 2592 816
            WIRE 2592 816 2608 816
            WIRE 2592 816 2592 992
            WIRE 2592 992 2608 992
            WIRE 2592 640 2592 688
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 928 832 1136 832
            WIRE 1136 832 1136 960
            WIRE 1136 960 1392 960
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 928 992 1136 992
            WIRE 1136 992 1136 1360
            WIRE 1136 1360 1392 1360
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 928 1152 1120 1152
            WIRE 1120 1024 1120 1152
            WIRE 1120 1024 1392 1024
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 928 1328 1120 1328
            WIRE 1120 1328 1120 1424
            WIRE 1120 1424 1392 1424
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1776 1424 2224 1424
            WIRE 2224 1152 2224 1424
            WIRE 2224 1152 2624 1152
            WIRE 2624 1152 3008 1152
            WIRE 3008 1152 3200 1152
        END BRANCH
        BEGIN BRANCH S(1:0)
            WIRE 3440 752 3440 928
            WIRE 3440 928 3440 1072
        END BRANCH
        BUSTAP 3440 928 3344 928
        BEGIN BRANCH S(1)
            WIRE 2992 928 3168 928
            WIRE 3168 928 3344 928
            BEGIN DISPLAY 3168 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3440 752 3344 752
        BEGIN BRANCH S(0)
            WIRE 2992 752 3168 752
            WIRE 3168 752 3344 752
            BEGIN DISPLAY 3168 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 336 672 544 672
            WIRE 544 672 928 672
            WIRE 928 672 1152 672
            WIRE 1152 672 1152 1088
            WIRE 1152 1088 1392 1088
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 336 1152 336 1328
            WIRE 336 1328 336 1392
        END BRANCH
        BEGIN BRANCH A(1:0)
            WIRE 256 832 256 992
            WIRE 256 992 256 1024
        END BRANCH
        BUSTAP 336 1328 432 1328
        BEGIN BRANCH B(1)
            WIRE 432 1328 480 1328
            WIRE 480 1328 480 1328
            WIRE 480 1328 544 1328
            BEGIN DISPLAY 488 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 336 1152 432 1152
        BEGIN BRANCH B(0)
            WIRE 432 1152 480 1152
            WIRE 480 1152 480 1152
            WIRE 480 1152 544 1152
            BEGIN DISPLAY 488 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 256 992 352 992
        BEGIN BRANCH A(1)
            WIRE 352 992 448 992
            WIRE 448 992 544 992
            BEGIN DISPLAY 448 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 256 832 352 832
        BEGIN BRANCH A(0)
            WIRE 352 832 448 832
            WIRE 448 832 544 832
            BEGIN DISPLAY 448 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2592 640 clk R270 28
        IOMARKER 3200 1152 Cout R0 28
        IOMARKER 3440 1072 S(1:0) R90 28
        IOMARKER 336 672 Cin R180 28
        IOMARKER 336 1392 B(1:0) R90 28
        IOMARKER 256 1024 A(1:0) R90 28
    END SHEET
END SCHEMATIC
