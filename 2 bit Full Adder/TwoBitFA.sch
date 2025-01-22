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
        SIGNAL clk
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL Cout
        SIGNAL S(1:0)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL Cin
        SIGNAL A(1:0)
        SIGNAL B(1:0)
        SIGNAL B(1)
        SIGNAL B(0)
        SIGNAL A(1)
        SIGNAL A(0)
        PORT Input clk
        PORT Output Cout
        PORT Output S(1:0)
        PORT Input Cin
        PORT Input A(1:0)
        PORT Input B(1:0)
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
            PIN CO XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_2 OneBitFullAdder
            PIN B XLXN_11
            PIN C XLXN_2
            PIN A XLXN_9
            PIN S XLXN_3
            PIN CO XLXN_4
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
            PIN D XLXN_3
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
            PIN D XLXN_4
            PIN clk clk
            PIN Q Cout
            PIN Q_bar
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1232 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1232 1152 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 384 400 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 384 560 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 384 720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 384 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2448 480 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2448 656 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 384 1056 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1616 592 2032 592
            WIRE 2032 384 2032 592
            WIRE 2032 384 2448 384
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1152 1120 1232 1120
            WIRE 1152 1120 1152 1216
            WIRE 1152 1216 1696 1216
            WIRE 1616 656 1696 656
            WIRE 1696 656 1696 1216
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1616 992 2048 992
            WIRE 2048 560 2048 992
            WIRE 2048 560 2448 560
        END BRANCH
        BEGIN INSTANCE XLXI_10 2464 880 R0
        END INSTANCE
        BEGIN BRANCH XLXN_4
            WIRE 1616 1056 2064 1056
            WIRE 2064 784 2064 1056
            WIRE 2064 784 2464 784
        END BRANCH
        BEGIN BRANCH clk
            WIRE 368 208 368 368
            WIRE 368 368 384 368
            WIRE 368 368 368 528
            WIRE 368 528 384 528
            WIRE 368 528 368 688
            WIRE 368 688 384 688
            WIRE 368 688 368 848
            WIRE 368 848 384 848
            WIRE 368 848 368 1024
            WIRE 368 1024 384 1024
            WIRE 368 208 2096 208
            WIRE 2096 208 2096 320
            WIRE 2096 320 2432 320
            WIRE 2432 320 2432 448
            WIRE 2432 448 2448 448
            WIRE 2432 448 2432 624
            WIRE 2432 624 2448 624
            WIRE 2432 624 2432 848
            WIRE 2432 848 2464 848
            WIRE 2432 272 2432 320
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 768 304 992 304
            WIRE 992 304 992 720
            WIRE 992 720 1232 720
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 768 464 976 464
            WIRE 976 464 976 592
            WIRE 976 592 1232 592
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 768 624 976 624
            WIRE 976 624 976 992
            WIRE 976 992 1232 992
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 768 784 960 784
            WIRE 960 656 960 784
            WIRE 960 656 1232 656
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 768 960 960 960
            WIRE 960 960 960 1056
            WIRE 960 1056 1232 1056
        END BRANCH
        IOMARKER 2432 272 clk R270 28
        BEGIN BRANCH Cout
            WIRE 2848 784 3040 784
        END BRANCH
        IOMARKER 3040 784 Cout R0 28
        IOMARKER 3280 704 S(1:0) R90 28
        BEGIN BRANCH S(1:0)
            WIRE 3280 384 3280 560
            WIRE 3280 560 3280 704
        END BRANCH
        BUSTAP 3280 560 3184 560
        BEGIN BRANCH S(1)
            WIRE 2832 560 3008 560
            WIRE 3008 560 3184 560
            BEGIN DISPLAY 3008 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 3280 384 3184 384
        BEGIN BRANCH S(0)
            WIRE 2832 384 3008 384
            WIRE 3008 384 3184 384
            BEGIN DISPLAY 3008 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 176 304 384 304
        END BRANCH
        BEGIN BRANCH B(1:0)
            WIRE 176 784 176 960
            WIRE 176 960 176 1024
        END BRANCH
        IOMARKER 176 304 Cin R180 28
        IOMARKER 176 1024 B(1:0) R90 28
        IOMARKER 96 656 A(1:0) R90 28
        BEGIN BRANCH A(1:0)
            WIRE 96 464 96 624
            WIRE 96 624 96 656
        END BRANCH
        BUSTAP 176 960 272 960
        BEGIN BRANCH B(1)
            WIRE 272 960 320 960
            WIRE 320 960 384 960
            BEGIN DISPLAY 328 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 176 784 272 784
        BEGIN BRANCH B(0)
            WIRE 272 784 320 784
            WIRE 320 784 384 784
            BEGIN DISPLAY 328 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 96 624 192 624
        BEGIN BRANCH A(1)
            WIRE 192 624 288 624
            WIRE 288 624 384 624
            BEGIN DISPLAY 288 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 96 464 192 464
        BEGIN BRANCH A(0)
            WIRE 192 464 288 464
            WIRE 288 464 384 464
            BEGIN DISPLAY 288 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
