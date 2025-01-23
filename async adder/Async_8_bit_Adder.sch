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
        SIGNAL XLXN_22
        SIGNAL S(7:0)
        SIGNAL XLXN_25
        SIGNAL cout
        SIGNAL S(1:0)
        SIGNAL S(7:6)
        SIGNAL XLXN_29
        SIGNAL XLXN_17
        SIGNAL XLXN_31
        SIGNAL XLXN_18
        SIGNAL XLXN_33
        SIGNAL XLXN_19
        SIGNAL A(7:6)
        SIGNAL B(7:6)
        SIGNAL A(1:0)
        SIGNAL B(1:0)
        SIGNAL XLXN_45(1:0)
        SIGNAL XLXN_46(1:0)
        SIGNAL XLXN_47
        SIGNAL S(3:2)
        SIGNAL A(3:2)
        SIGNAL B(3:2)
        SIGNAL S(5:4)
        SIGNAL A(5:4)
        SIGNAL B(5:4)
        PORT Input cin
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output S(7:0)
        PORT Output cout
        BEGIN BLOCKDEF Async_2_Bit_Adder
            TIMESTAMP 2025 1 23 5 27 2
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_18 Async_2_Bit_Adder
            PIN Cin cin
            PIN B(1:0) B(1:0)
            PIN A(1:0) A(1:0)
            PIN Cout XLXN_19
            PIN S(1:0) S(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_21 Async_2_Bit_Adder
            PIN Cin XLXN_19
            PIN B(1:0) B(3:2)
            PIN A(1:0) A(3:2)
            PIN Cout XLXN_18
            PIN S(1:0) S(3:2)
        END BLOCK
        BEGIN BLOCK XLXI_20 Async_2_Bit_Adder
            PIN Cin XLXN_17
            PIN B(1:0) B(7:6)
            PIN A(1:0) A(7:6)
            PIN Cout cout
            PIN S(1:0) S(7:6)
        END BLOCK
        BEGIN BLOCK XLXI_19 Async_2_Bit_Adder
            PIN Cin XLXN_18
            PIN B(1:0) B(5:4)
            PIN A(1:0) A(5:4)
            PIN Cout XLXN_17
            PIN S(1:0) S(5:4)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH cin
            WIRE 208 544 224 544
            WIRE 224 544 224 880
            WIRE 224 880 1328 880
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 208 896 368 896
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 208 1248 368 1248
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 3152 544 3312 544
        END BRANCH
        BEGIN BRANCH cout
            WIRE 1760 2240 1872 2240
            WIRE 1872 2176 3152 2176
            WIRE 1872 2176 1872 2240
            WIRE 3152 1024 3312 1024
            WIRE 3152 1024 3152 2176
        END BRANCH
        BEGIN BRANCH S(1:0)
            WIRE 1712 1008 1936 1008
            BEGIN DISPLAY 1936 1008 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH S(7:6)
            WIRE 1760 2368 1968 2368
            BEGIN DISPLAY 1968 2368 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1360 2144 1360 2240
            WIRE 1360 2240 1376 2240
            WIRE 1360 2144 1840 2144
            WIRE 1760 1760 1840 1760
            WIRE 1840 1760 1840 2144
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1296 1296 1376 1296
            WIRE 1296 1296 1296 1520
            WIRE 1296 1520 1856 1520
            WIRE 1712 880 1856 880
            WIRE 1856 880 1856 1520
        END BRANCH
        BEGIN BRANCH A(7:6)
            WIRE 1232 2368 1376 2368
            BEGIN DISPLAY 1232 2368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:6)
            WIRE 1232 2304 1376 2304
            BEGIN DISPLAY 1232 2304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(1:0)
            WIRE 1184 1008 1328 1008
            BEGIN DISPLAY 1184 1008 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 1184 944 1328 944
            BEGIN DISPLAY 1184 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 208 544 cin R180 28
        IOMARKER 208 896 A(7:0) R180 28
        IOMARKER 208 1248 B(7:0) R180 28
        IOMARKER 3312 544 S(7:0) R0 28
        IOMARKER 3312 1024 cout R0 28
        BEGIN INSTANCE XLXI_18 1328 1040 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_21 1376 1456 R0
        END INSTANCE
        BEGIN BRANCH S(3:2)
            WIRE 1760 1424 1936 1424
            BEGIN DISPLAY 1936 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(3:2)
            WIRE 1200 1424 1376 1424
            BEGIN DISPLAY 1200 1424 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(3:2)
            WIRE 1200 1360 1376 1360
            BEGIN DISPLAY 1200 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_20 1376 2400 R0
        END INSTANCE
        BEGIN BRANCH S(5:4)
            WIRE 1760 1888 1952 1888
            BEGIN DISPLAY 1952 1888 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(5:4)
            WIRE 1200 1888 1376 1888
            BEGIN DISPLAY 1200 1888 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(5:4)
            WIRE 1200 1824 1376 1824
            BEGIN DISPLAY 1200 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_19 1376 1920 R0
        END INSTANCE
        BEGIN BRANCH XLXN_18
            WIRE 1296 1664 1296 1760
            WIRE 1296 1760 1376 1760
            WIRE 1296 1664 1776 1664
            WIRE 1760 1296 1776 1296
            WIRE 1776 1296 1776 1664
        END BRANCH
    END SHEET
END SCHEMATIC
