VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
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
        BEGIN BLOCK XLXI_1 OneBitFullAdder
            PIN B B(0)
            PIN C Cin
            PIN A A(0)
            PIN S S(0)
            PIN CO XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_2 OneBitFullAdder
            PIN B B(1)
            PIN C XLXN_3
            PIN A A(1)
            PIN S S(1)
            PIN CO Cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1392 928 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1392 1328 R0
        END INSTANCE
        BEGIN BRANCH XLXN_3
            WIRE 1312 1296 1392 1296
            WIRE 1312 1296 1312 1392
            WIRE 1312 1392 1856 1392
            WIRE 1776 832 1856 832
            WIRE 1856 832 1856 1392
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1776 1232 2224 1232
            WIRE 2224 960 2224 1232
            WIRE 2224 960 2624 960
            WIRE 2624 960 3008 960
            WIRE 3008 960 3200 960
        END BRANCH
        BEGIN BRANCH S(1:0)
            WIRE 3440 560 3440 736
            WIRE 3440 736 3440 880
        END BRANCH
        BUSTAP 3440 736 3344 736
        BEGIN BRANCH S(1)
            WIRE 1776 1168 2208 1168
            WIRE 2208 736 2208 1168
            WIRE 2208 736 2608 736
            WIRE 2608 736 2992 736
            WIRE 2992 736 3168 736
            WIRE 3168 736 3344 736
            BEGIN DISPLAY 3168 736 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3440 560 3344 560
        BEGIN BRANCH S(0)
            WIRE 1776 768 2192 768
            WIRE 2192 560 2192 768
            WIRE 2192 560 2608 560
            WIRE 2608 560 2992 560
            WIRE 2992 560 3168 560
            WIRE 3168 560 3344 560
            BEGIN DISPLAY 3168 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 336 480 544 480
            WIRE 544 480 928 480
            WIRE 928 480 1152 480
            WIRE 1152 480 1152 896
            WIRE 1152 896 1392 896
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 336 960 336 1136
            WIRE 336 1136 336 1200
        END BRANCH
        BEGIN BRANCH A(1:0)
            WIRE 256 640 256 800
            WIRE 256 800 256 832
        END BRANCH
        BUSTAP 336 1136 432 1136
        BEGIN BRANCH B(1)
            WIRE 432 1136 480 1136
            WIRE 480 1136 480 1136
            WIRE 480 1136 544 1136
            WIRE 544 1136 928 1136
            WIRE 928 1136 1120 1136
            WIRE 1120 1136 1120 1232
            WIRE 1120 1232 1392 1232
            BEGIN DISPLAY 488 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 336 960 432 960
        BEGIN BRANCH B(0)
            WIRE 432 960 480 960
            WIRE 480 960 480 960
            WIRE 480 960 544 960
            WIRE 544 960 928 960
            WIRE 928 960 1120 960
            WIRE 1120 832 1120 960
            WIRE 1120 832 1392 832
            BEGIN DISPLAY 488 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 256 800 352 800
        BEGIN BRANCH A(1)
            WIRE 352 800 448 800
            WIRE 448 800 544 800
            WIRE 544 800 928 800
            WIRE 928 800 1136 800
            WIRE 1136 800 1136 1168
            WIRE 1136 1168 1392 1168
            BEGIN DISPLAY 448 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 256 640 352 640
        BEGIN BRANCH A(0)
            WIRE 352 640 448 640
            WIRE 448 640 544 640
            WIRE 544 640 928 640
            WIRE 928 640 1136 640
            WIRE 1136 640 1136 768
            WIRE 1136 768 1392 768
            BEGIN DISPLAY 448 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3200 960 Cout R0 28
        IOMARKER 3440 880 S(1:0) R90 28
        IOMARKER 336 480 Cin R180 28
        IOMARKER 336 1200 B(1:0) R90 28
        IOMARKER 256 832 A(1:0) R90 28
    END SHEET
END SCHEMATIC
