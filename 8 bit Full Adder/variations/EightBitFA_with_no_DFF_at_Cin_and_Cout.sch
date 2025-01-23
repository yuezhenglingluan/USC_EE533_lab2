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
        SIGNAL XLXN_10
        SIGNAL XLXN_17
        SIGNAL XLXN_12
        SIGNAL XLXN_18
        SIGNAL XLXN_14
        SIGNAL XLXN_19
        SIGNAL S(5:4)
        SIGNAL S(3:2)
        SIGNAL B(3:2)
        SIGNAL A(3:2)
        SIGNAL B(5:4)
        SIGNAL A(5:4)
        SIGNAL S(7:6)
        SIGNAL B(7:6)
        SIGNAL A(7:6)
        SIGNAL S(1:0)
        SIGNAL B(1:0)
        SIGNAL A(1:0)
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
        BEGIN BLOCK XLXI_18 TwoBitFA_NoDFFonCINandCOUT
            PIN clk clk
            PIN Cin XLXN_17
            PIN B(1:0) B(7:6)
            PIN A(1:0) A(7:6)
            PIN Cout cout
            PIN S(1:0) S(7:6)
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
            WIRE 256 256 416 256
            WIRE 416 256 416 592
            WIRE 416 592 1440 592
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 256 608 416 608
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 256 960 416 960
        END BRANCH
        BEGIN BRANCH clk
            WIRE 256 1312 1408 1312
            WIRE 1408 1312 1408 1520
            WIRE 1408 1520 1424 1520
            WIRE 1408 1520 1408 1888
            WIRE 1408 1888 1424 1888
            WIRE 1408 528 1408 944
            WIRE 1408 944 1424 944
            WIRE 1408 944 1408 1312
            WIRE 1408 528 1440 528
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 3200 256 3360 256
        END BRANCH
        BEGIN BRANCH cout
            WIRE 1808 1952 3344 1952
            WIRE 3344 736 3360 736
            WIRE 3344 736 3344 1952
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1360 1792 1360 1952
            WIRE 1360 1952 1424 1952
            WIRE 1360 1792 1888 1792
            WIRE 1808 1584 1888 1584
            WIRE 1888 1584 1888 1792
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1360 1584 1424 1584
            WIRE 1360 1584 1360 1760
            WIRE 1360 1760 1872 1760
            WIRE 1808 1008 1872 1008
            WIRE 1872 1008 1872 1760
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1344 1008 1424 1008
            WIRE 1344 1008 1344 1232
            WIRE 1344 1232 1904 1232
            WIRE 1824 592 1904 592
            WIRE 1904 592 1904 640
            WIRE 1904 640 1904 1232
        END BRANCH
        BEGIN INSTANCE XLXI_17 1424 1744 R0
        END INSTANCE
        BEGIN BRANCH S(5:4)
            WIRE 1808 1520 2000 1520
            BEGIN DISPLAY 2000 1520 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_16 1424 1168 R0
        END INSTANCE
        BEGIN BRANCH S(3:2)
            WIRE 1808 944 1984 944
            BEGIN DISPLAY 1984 944 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3:2)
            WIRE 1248 1136 1424 1136
            BEGIN DISPLAY 1248 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3:2)
            WIRE 1248 1072 1424 1072
            BEGIN DISPLAY 1248 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5:4)
            WIRE 1248 1712 1424 1712
            BEGIN DISPLAY 1248 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5:4)
            WIRE 1248 1648 1424 1648
            BEGIN DISPLAY 1248 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:6)
            WIRE 1808 1888 2000 1888
            BEGIN DISPLAY 2000 1888 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:6)
            WIRE 1264 2080 1424 2080
            BEGIN DISPLAY 1264 2080 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(7:6)
            WIRE 1264 2016 1424 2016
            BEGIN DISPLAY 1264 2016 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_18 1424 2112 R0
        END INSTANCE
        IOMARKER 256 256 cin R180 28
        IOMARKER 256 608 A(7:0) R180 28
        IOMARKER 256 960 B(7:0) R180 28
        IOMARKER 256 1312 clk R180 28
        IOMARKER 3360 256 S(7:0) R0 28
        IOMARKER 3360 736 cout R0 28
        BEGIN INSTANCE XLXI_19 1440 752 R0
        END INSTANCE
        BEGIN BRANCH S(1:0)
            WIRE 1824 528 1984 528
            BEGIN DISPLAY 1984 528 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 1232 720 1440 720
            BEGIN DISPLAY 1232 720 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1:0)
            WIRE 1232 656 1440 656
            BEGIN DISPLAY 1232 656 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
