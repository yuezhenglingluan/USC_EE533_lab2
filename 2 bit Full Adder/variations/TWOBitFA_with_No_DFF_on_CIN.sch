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
        SIGNAL XLXN_5
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
            PIN CO XLXN_5
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
        BEGIN BLOCK XLXI_10 DFF
            PIN D XLXN_5
            PIN clk clk
            PIN Q Cout
            PIN Q_bar
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1376 1232 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1376 1632 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 528 1040 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 528 1200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 528 1360 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2592 960 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2592 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 528 1536 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1760 1072 2176 1072
            WIRE 2176 864 2176 1072
            WIRE 2176 864 2592 864
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1296 1600 1376 1600
            WIRE 1296 1600 1296 1696
            WIRE 1296 1696 1840 1696
            WIRE 1760 1136 1840 1136
            WIRE 1840 1136 1840 1696
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1760 1472 2192 1472
            WIRE 2192 1040 2192 1472
            WIRE 2192 1040 2592 1040
        END BRANCH
        BEGIN INSTANCE XLXI_10 2608 1360 R0
        END INSTANCE
        BEGIN BRANCH XLXN_5
            WIRE 1760 1536 2208 1536
            WIRE 2208 1264 2208 1536
            WIRE 2208 1264 2608 1264
        END BRANCH
        BEGIN BRANCH clk
            WIRE 512 688 512 848
            WIRE 512 848 512 1008
            WIRE 512 1008 528 1008
            WIRE 512 1008 512 1168
            WIRE 512 1168 528 1168
            WIRE 512 1168 512 1328
            WIRE 512 1328 528 1328
            WIRE 512 1328 512 1504
            WIRE 512 1504 528 1504
            WIRE 512 688 2240 688
            WIRE 2240 688 2240 800
            WIRE 2240 800 2576 800
            WIRE 2576 800 2576 928
            WIRE 2576 928 2592 928
            WIRE 2576 928 2576 1104
            WIRE 2576 1104 2592 1104
            WIRE 2576 1104 2576 1328
            WIRE 2576 1328 2608 1328
            WIRE 2576 752 2576 800
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 912 944 1120 944
            WIRE 1120 944 1120 1072
            WIRE 1120 1072 1376 1072
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 912 1104 1120 1104
            WIRE 1120 1104 1120 1472
            WIRE 1120 1472 1376 1472
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 912 1264 1104 1264
            WIRE 1104 1136 1104 1264
            WIRE 1104 1136 1376 1136
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 912 1440 1104 1440
            WIRE 1104 1440 1104 1536
            WIRE 1104 1536 1376 1536
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2992 1264 3184 1264
        END BRANCH
        BEGIN BRANCH S(1:0)
            WIRE 3424 864 3424 1040
            WIRE 3424 1040 3424 1184
        END BRANCH
        BUSTAP 3424 1040 3328 1040
        BEGIN BRANCH S(1)
            WIRE 2976 1040 3152 1040
            WIRE 3152 1040 3328 1040
            BEGIN DISPLAY 3152 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3424 864 3328 864
        BEGIN BRANCH S(0)
            WIRE 2976 864 3152 864
            WIRE 3152 864 3328 864
            BEGIN DISPLAY 3152 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 320 784 528 784
            WIRE 528 784 912 784
            WIRE 912 784 1136 784
            WIRE 1136 784 1136 1200
            WIRE 1136 1200 1376 1200
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 320 1264 320 1440
            WIRE 320 1440 320 1504
        END BRANCH
        BEGIN BRANCH A(1:0)
            WIRE 240 944 240 1104
            WIRE 240 1104 240 1136
        END BRANCH
        BUSTAP 320 1440 416 1440
        BEGIN BRANCH B(1)
            WIRE 416 1440 464 1440
            WIRE 464 1440 464 1440
            WIRE 464 1440 528 1440
            BEGIN DISPLAY 472 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 320 1264 416 1264
        BEGIN BRANCH B(0)
            WIRE 416 1264 464 1264
            WIRE 464 1264 464 1264
            WIRE 464 1264 528 1264
            BEGIN DISPLAY 472 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 240 1104 336 1104
        BEGIN BRANCH A(1)
            WIRE 336 1104 432 1104
            WIRE 432 1104 528 1104
            BEGIN DISPLAY 432 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 240 944 336 944
        BEGIN BRANCH A(0)
            WIRE 336 944 432 944
            WIRE 432 944 528 944
            BEGIN DISPLAY 432 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2576 752 clk R270 28
        IOMARKER 3184 1264 Cout R0 28
        IOMARKER 3424 1184 S(1:0) R90 28
        IOMARKER 320 784 Cin R180 28
        IOMARKER 320 1504 B(1:0) R90 28
        IOMARKER 240 1136 A(1:0) R90 28
    END SHEET
END SCHEMATIC
