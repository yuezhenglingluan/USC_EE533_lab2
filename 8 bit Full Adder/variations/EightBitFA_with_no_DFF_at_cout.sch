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
        SIGNAL XLXN_4
        SIGNAL clk
        SIGNAL S(7:0)
        SIGNAL XLXN_7
        SIGNAL cout
        SIGNAL S(1:0)
        SIGNAL XLXN_11
        SIGNAL XLXN_17
        SIGNAL XLXN_13
        SIGNAL XLXN_18
        SIGNAL XLXN_15
        SIGNAL XLXN_19
        SIGNAL S(5:4)
        SIGNAL S(3:2)
        SIGNAL B(3:2)
        SIGNAL A(3:2)
        SIGNAL B(5:4)
        SIGNAL A(5:4)
        SIGNAL A(1:0)
        SIGNAL B(1:0)
        SIGNAL S(7:6)
        SIGNAL B(7:6)
        SIGNAL A(7:6)
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
        BEGIN BLOCK FA1 TwoBitFA_NoDFFonCout
            PIN clk clk
            PIN Cin cin
            PIN B(1:0) B(1:0)
            PIN A(1:0) A(1:0)
            PIN Cout XLXN_19
            PIN S(1:0) S(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_18 TwoBitFA_NoDFFonCINandCOUT
            PIN clk clk
            PIN Cin XLXN_17
            PIN B(1:0) B(7:6)
            PIN A(1:0) A(7:6)
            PIN Cout cout
            PIN S(1:0) S(7:6)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH cin
            WIRE 272 224 432 224
            WIRE 432 224 432 560
            WIRE 432 560 1456 560
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 272 576 432 576
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 272 928 432 928
        END BRANCH
        BEGIN BRANCH clk
            WIRE 272 1280 1424 1280
            WIRE 1424 1280 1424 1488
            WIRE 1424 1488 1440 1488
            WIRE 1424 1488 1424 1856
            WIRE 1424 1856 1440 1856
            WIRE 1424 496 1424 912
            WIRE 1424 912 1440 912
            WIRE 1424 912 1424 1280
            WIRE 1424 496 1456 496
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 3216 224 3376 224
        END BRANCH
        BEGIN BRANCH cout
            WIRE 1824 1920 3360 1920
            WIRE 3360 704 3376 704
            WIRE 3360 704 3360 1920
        END BRANCH
        BEGIN BRANCH S(1:0)
            WIRE 1840 688 2000 688
            BEGIN DISPLAY 2000 688 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1376 1760 1376 1920
            WIRE 1376 1920 1440 1920
            WIRE 1376 1760 1904 1760
            WIRE 1824 1552 1904 1552
            WIRE 1904 1552 1904 1760
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1376 1552 1440 1552
            WIRE 1376 1552 1376 1728
            WIRE 1376 1728 1888 1728
            WIRE 1824 976 1888 976
            WIRE 1888 976 1888 1728
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1360 976 1440 976
            WIRE 1360 976 1360 1200
            WIRE 1360 1200 1920 1200
            WIRE 1840 496 1920 496
            WIRE 1920 496 1920 1200
        END BRANCH
        BEGIN INSTANCE XLXI_17 1440 1712 R0
        END INSTANCE
        BEGIN BRANCH S(5:4)
            WIRE 1824 1488 2016 1488
            BEGIN DISPLAY 2016 1488 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_16 1440 1136 R0
        END INSTANCE
        BEGIN BRANCH S(3:2)
            WIRE 1824 912 2000 912
            BEGIN DISPLAY 2000 912 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3:2)
            WIRE 1264 1104 1440 1104
            BEGIN DISPLAY 1264 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3:2)
            WIRE 1264 1040 1440 1040
            BEGIN DISPLAY 1264 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5:4)
            WIRE 1264 1680 1440 1680
            BEGIN DISPLAY 1264 1680 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5:4)
            WIRE 1264 1616 1440 1616
            BEGIN DISPLAY 1264 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE FA1 1456 720 R0
        END INSTANCE
        BEGIN BRANCH A(1:0)
            WIRE 1248 688 1456 688
            BEGIN DISPLAY 1248 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 1248 624 1456 624
            BEGIN DISPLAY 1248 624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 272 224 cin R180 28
        IOMARKER 272 576 A(7:0) R180 28
        IOMARKER 272 928 B(7:0) R180 28
        IOMARKER 272 1280 clk R180 28
        IOMARKER 3376 224 S(7:0) R0 28
        IOMARKER 3376 704 cout R0 28
        BEGIN BRANCH S(7:6)
            WIRE 1824 1856 2016 1856
            BEGIN DISPLAY 2016 1856 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:6)
            WIRE 1280 2048 1440 2048
            BEGIN DISPLAY 1280 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:6)
            WIRE 1280 1984 1440 1984
            BEGIN DISPLAY 1280 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_18 1440 2080 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
