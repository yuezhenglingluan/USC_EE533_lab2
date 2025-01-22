VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL cin
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL clk
        SIGNAL S(7:0)
        SIGNAL cout
        SIGNAL S(1:0)
        SIGNAL S(7:6)
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL A(7:6)
        SIGNAL B(7:6)
        SIGNAL S(5:4)
        SIGNAL S(3:2)
        SIGNAL B(3:2)
        SIGNAL A(3:2)
        SIGNAL B(5:4)
        SIGNAL A(5:4)
        SIGNAL A(1:0)
        SIGNAL B(1:0)
        PORT Input cin
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Input clk
        PORT Output S(7:0)
        PORT Output cout
        BEGIN BLOCKDEF TwoBitFA_NoDFFonCINandCOUT
            TIMESTAMP 2025 1 22 14 5 45
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -160 0 -160 
            LINE N 64 -224 0 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -236 384 -212 
        END BLOCKDEF
        BEGIN BLOCKDEF TWOBitFA_NoDFFonCIN
            TIMESTAMP 2025 1 22 14 10 45
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF TwoBitFA_NoDFFonCout
            TIMESTAMP 2025 1 22 14 36 27
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_14 TWOBitFA_NoDFFonCIN
            PIN clk clk
            PIN Cin XLXN_17
            PIN B(1:0) B(7:6)
            PIN A(1:0) A(7:6)
            PIN Cout cout
            PIN S(1:0) S(7:6)
        END BLOCK
        BEGIN BLOCK XLXI_16 TwoBitFA_NoDFFonCINandCOUT
            PIN clk clk
            PIN Cin XLXN_19
            PIN B(1:0) B(3:2)
            PIN A(1:0) A(3:2)
            PIN Cout XLXN_18
            PIN S(1:0) S(3:2)
        END BLOCK
        BEGIN BLOCK XLXI_17 TwoBitFA_NoDFFonCINandCOUT
            PIN clk clk
            PIN Cin XLXN_18
            PIN B(1:0) B(5:4)
            PIN A(1:0) A(5:4)
            PIN Cout XLXN_17
            PIN S(1:0) S(5:4)
        END BLOCK
        BEGIN BLOCK FA1 TwoBitFA_NoDFFonCout
            PIN clk clk
            PIN Cin cin
            PIN B(1:0) B(1:0)
            PIN A(1:0) A(1:0)
            PIN Cout XLXN_19
            PIN S(1:0) S(1:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH cin
            WIRE 208 80 368 80
            WIRE 368 80 368 416
            WIRE 368 416 1392 416
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 208 432 368 432
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 208 784 368 784
        END BRANCH
        BEGIN BRANCH clk
            WIRE 208 1136 1360 1136
            WIRE 1360 1136 1360 1344
            WIRE 1360 1344 1376 1344
            WIRE 1360 1344 1360 1712
            WIRE 1360 1712 1376 1712
            WIRE 1360 352 1360 768
            WIRE 1360 768 1376 768
            WIRE 1360 768 1360 1136
            WIRE 1360 352 1392 352
        END BRANCH
        IOMARKER 208 80 cin R180 28
        IOMARKER 208 432 A(7:0) R180 28
        IOMARKER 208 784 B(7:0) R180 28
        IOMARKER 208 1136 clk R180 28
        BEGIN BRANCH S(7:0)
            WIRE 3152 80 3312 80
        END BRANCH
        BEGIN BRANCH cout
            WIRE 1760 1712 3152 1712
            WIRE 3152 560 3312 560
            WIRE 3152 560 3152 1712
        END BRANCH
        IOMARKER 3312 80 S(7:0) R0 28
        IOMARKER 3312 560 cout R0 28
        BEGIN BRANCH S(1:0)
            WIRE 1776 544 1936 544
            BEGIN DISPLAY 1936 544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:6)
            WIRE 1760 1904 1968 1904
            BEGIN DISPLAY 1968 1904 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1312 1616 1312 1776
            WIRE 1312 1776 1376 1776
            WIRE 1312 1616 1840 1616
            WIRE 1760 1408 1840 1408
            WIRE 1840 1408 1840 1616
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1312 1408 1376 1408
            WIRE 1312 1408 1312 1584
            WIRE 1312 1584 1824 1584
            WIRE 1760 832 1824 832
            WIRE 1824 832 1824 1584
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1296 832 1376 832
            WIRE 1296 832 1296 1056
            WIRE 1296 1056 1856 1056
            WIRE 1776 352 1856 352
            WIRE 1856 352 1856 1056
        END BRANCH
        BEGIN INSTANCE XLXI_14 1376 1936 R0
        END INSTANCE
        BEGIN BRANCH A(7:6)
            WIRE 1232 1904 1376 1904
            BEGIN DISPLAY 1232 1904 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:6)
            WIRE 1232 1840 1376 1840
            BEGIN DISPLAY 1232 1840 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_17 1376 1568 R0
        END INSTANCE
        BEGIN BRANCH S(5:4)
            WIRE 1760 1344 1952 1344
            BEGIN DISPLAY 1952 1344 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_16 1376 992 R0
        END INSTANCE
        BEGIN BRANCH S(3:2)
            WIRE 1760 768 1936 768
            BEGIN DISPLAY 1936 768 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3:2)
            WIRE 1200 960 1376 960
            BEGIN DISPLAY 1200 960 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3:2)
            WIRE 1200 896 1376 896
            BEGIN DISPLAY 1200 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5:4)
            WIRE 1200 1536 1376 1536
            BEGIN DISPLAY 1200 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5:4)
            WIRE 1200 1472 1376 1472
            BEGIN DISPLAY 1200 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE FA1 1392 576 R0
        END INSTANCE
        BEGIN BRANCH A(1:0)
            WIRE 1184 544 1392 544
            BEGIN DISPLAY 1184 544 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 1184 480 1392 480
            BEGIN DISPLAY 1184 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
