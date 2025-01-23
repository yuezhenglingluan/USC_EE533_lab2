VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL cin
        SIGNAL Sum(31:0)
        SIGNAL XLXN_5
        SIGNAL cout
        SIGNAL XLXN_7
        SIGNAL XLXN_9
        SIGNAL XLXN_15
        SIGNAL XLXN_11
        SIGNAL XLXN_16
        SIGNAL XLXN_13
        SIGNAL XLXN_17
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL A(23:16)
        SIGNAL B(23:16)
        SIGNAL A(31:24)
        SIGNAL B(31:24)
        SIGNAL Sum(23:16)
        SIGNAL Sum(15:8)
        SIGNAL Sum(7:0)
        SIGNAL Sum(31:24)
        SIGNAL XLXN_28
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Input cin
        PORT Output Sum(31:0)
        PORT Output cout
        BEGIN BLOCKDEF Async_8_bit_Adder
            TIMESTAMP 2025 1 23 5 32 5
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_6 Async_8_bit_Adder
            PIN cin XLXN_17
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN S(7:0) Sum(31:24)
            PIN cout cout
        END BLOCK
        BEGIN BLOCK XLXI_7 Async_8_bit_Adder
            PIN cin XLXN_16
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN S(7:0) Sum(23:16)
            PIN cout XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_8 Async_8_bit_Adder
            PIN cin XLXN_15
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN S(7:0) Sum(15:8)
            PIN cout XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_9 Async_8_bit_Adder
            PIN cin cin
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN S(7:0) Sum(7:0)
            PIN cout XLXN_15
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(31:0)
            WIRE 224 432 384 432
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 224 784 384 784
        END BRANCH
        BEGIN BRANCH cin
            WIRE 224 1488 784 1488
            WIRE 784 544 784 1488
            WIRE 784 544 1184 544
        END BRANCH
        BEGIN BRANCH Sum(31:0)
            WIRE 3152 400 3312 400
        END BRANCH
        BEGIN BRANCH cout
            WIRE 1552 1984 3152 1984
            WIRE 3152 880 3312 880
            WIRE 3152 880 3152 1984
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1088 976 1184 976
            WIRE 1088 976 1088 1280
            WIRE 1088 1280 1648 1280
            WIRE 1568 672 1648 672
            WIRE 1648 672 1648 1280
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1088 1296 1088 1392
            WIRE 1088 1392 1168 1392
            WIRE 1088 1296 1632 1296
            WIRE 1568 1104 1632 1104
            WIRE 1632 1104 1632 1296
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1088 1696 1088 1792
            WIRE 1088 1792 1088 1856
            WIRE 1088 1856 1168 1856
            WIRE 1088 1696 1632 1696
            WIRE 1552 1520 1632 1520
            WIRE 1632 1520 1632 1584
            WIRE 1632 1584 1632 1696
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1072 608 1184 608
            BEGIN DISPLAY 1072 608 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1072 672 1184 672
            BEGIN DISPLAY 1072 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 992 1040 1184 1040
            BEGIN DISPLAY 992 1040 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 992 1104 1184 1104
            BEGIN DISPLAY 992 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 960 1456 1168 1456
            BEGIN DISPLAY 960 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 960 1520 1168 1520
            BEGIN DISPLAY 960 1520 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 944 1920 1168 1920
            BEGIN DISPLAY 944 1920 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 944 1984 1168 1984
            BEGIN DISPLAY 944 1984 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sum(23:16)
            WIRE 1552 1392 1728 1392
            BEGIN DISPLAY 1728 1392 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sum(15:8)
            WIRE 1568 976 1984 976
            BEGIN DISPLAY 1984 976 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sum(7:0)
            WIRE 1568 544 1888 544
            BEGIN DISPLAY 1888 544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 224 432 A(31:0) R180 28
        IOMARKER 224 784 B(31:0) R180 28
        IOMARKER 224 1488 cin R180 28
        IOMARKER 3312 400 Sum(31:0) R0 28
        IOMARKER 3312 880 cout R0 28
        BEGIN INSTANCE XLXI_9 1184 704 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1184 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1168 1552 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1168 2016 R0
        END INSTANCE
        BEGIN BRANCH Sum(31:24)
            WIRE 1552 1856 1680 1856
            BEGIN DISPLAY 1680 1856 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
