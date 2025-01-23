VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL cin
        SIGNAL XLXN_4
        SIGNAL clk
        SIGNAL S(7:0)
        SIGNAL XLXN_7
        SIGNAL cout
        SIGNAL S(7:6)
        SIGNAL XLXN_11
        SIGNAL XLXN_17
        SIGNAL XLXN_13
        SIGNAL XLXN_18
        SIGNAL XLXN_15
        SIGNAL XLXN_19
        SIGNAL A(7:6)
        SIGNAL B(7:6)
        SIGNAL S(5:4)
        SIGNAL S(3:2)
        SIGNAL B(3:2)
        SIGNAL A(3:2)
        SIGNAL B(5:4)
        SIGNAL A(5:4)
        SIGNAL S(1:0)
        SIGNAL A(1:0)
        SIGNAL B(1:0)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        PORT Input cin
        PORT Input clk
        PORT Output S(7:0)
        PORT Output cout
        PORT Input A(7:0)
        PORT Input B(7:0)
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
        BEGIN BLOCK XLXI_14 TWOBitFA_NoDFFonCIN
            PIN clk clk
            PIN Cin XLXN_17
            PIN B(1:0) B(7:6)
            PIN A(1:0) A(7:6)
            PIN Cout cout
            PIN S(1:0) S(7:6)
        END BLOCK
        BEGIN BLOCK XLXI_17 TwoBitFA_NoDFFonCINandCOUT
            PIN clk clk
            PIN Cin XLXN_18
            PIN B(1:0) B(5:4)
            PIN A(1:0) A(5:4)
            PIN Cout XLXN_17
            PIN S(1:0) S(5:4)
        END BLOCK
        BEGIN BLOCK XLXI_16 TwoBitFA_NoDFFonCINandCOUT
            PIN clk clk
            PIN Cin XLXN_19
            PIN B(1:0) B(3:2)
            PIN A(1:0) A(3:2)
            PIN Cout XLXN_18
            PIN S(1:0) S(3:2)
        END BLOCK
        BEGIN BLOCK XLXI_19 TwoBitFA_NoDFFonCINandCOUT
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
            WIRE 272 288 288 288
            WIRE 288 288 432 288
            WIRE 432 288 432 624
            WIRE 432 624 1456 624
        END BRANCH
        BEGIN BRANCH clk
            WIRE 272 1344 1424 1344
            WIRE 1424 1344 1424 1552
            WIRE 1424 1552 1440 1552
            WIRE 1424 1552 1424 1920
            WIRE 1424 1920 1440 1920
            WIRE 1424 560 1424 976
            WIRE 1424 976 1440 976
            WIRE 1424 976 1424 1344
            WIRE 1424 560 1456 560
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 3216 288 3376 288
        END BRANCH
        BEGIN BRANCH cout
            WIRE 1824 1920 3216 1920
            WIRE 3216 768 3376 768
            WIRE 3216 768 3216 1920
        END BRANCH
        BEGIN BRANCH S(7:6)
            WIRE 1824 2112 2032 2112
            BEGIN DISPLAY 2032 2112 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1376 1824 1376 1984
            WIRE 1376 1984 1440 1984
            WIRE 1376 1824 1904 1824
            WIRE 1824 1616 1904 1616
            WIRE 1904 1616 1904 1824
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1376 1616 1440 1616
            WIRE 1376 1616 1376 1792
            WIRE 1376 1792 1888 1792
            WIRE 1824 1040 1888 1040
            WIRE 1888 1040 1888 1792
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1360 1040 1440 1040
            WIRE 1360 1040 1360 1264
            WIRE 1360 1264 1920 1264
            WIRE 1840 624 1920 624
            WIRE 1920 624 1920 1264
        END BRANCH
        BEGIN INSTANCE XLXI_14 1440 2144 R0
        END INSTANCE
        BEGIN BRANCH A(7:6)
            WIRE 1296 2112 1440 2112
            BEGIN DISPLAY 1296 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:6)
            WIRE 1296 2048 1440 2048
            BEGIN DISPLAY 1296 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_17 1440 1776 R0
        END INSTANCE
        BEGIN BRANCH S(5:4)
            WIRE 1824 1552 2016 1552
            BEGIN DISPLAY 2016 1552 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_16 1440 1200 R0
        END INSTANCE
        BEGIN BRANCH S(3:2)
            WIRE 1824 976 2000 976
            BEGIN DISPLAY 2000 976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3:2)
            WIRE 1264 1168 1440 1168
            BEGIN DISPLAY 1264 1168 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3:2)
            WIRE 1264 1104 1440 1104
            BEGIN DISPLAY 1264 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5:4)
            WIRE 1264 1744 1440 1744
            BEGIN DISPLAY 1264 1744 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5:4)
            WIRE 1264 1680 1440 1680
            BEGIN DISPLAY 1264 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 272 288 cin R180 28
        IOMARKER 272 1344 clk R180 28
        IOMARKER 3376 288 S(7:0) R0 28
        IOMARKER 3376 768 cout R0 28
        BEGIN INSTANCE XLXI_19 1456 784 R0
        END INSTANCE
        BEGIN BRANCH S(1:0)
            WIRE 1840 560 2000 560
            BEGIN DISPLAY 2000 560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1:0)
            WIRE 1248 688 1456 688
            BEGIN DISPLAY 1248 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 1248 752 1456 752
            BEGIN DISPLAY 1248 752 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 272 736 432 736
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 272 1088 432 1088
        END BRANCH
        IOMARKER 272 736 A(7:0) R180 28
        IOMARKER 272 1088 B(7:0) R180 28
    END SHEET
END SCHEMATIC
