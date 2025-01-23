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
        SIGNAL clk
        SIGNAL cin
        SIGNAL Sum(31:0)
        SIGNAL cout
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL A(15:8)
        SIGNAL B(15:8)
        SIGNAL A(23:16)
        SIGNAL B(23:16)
        SIGNAL A(31:24)
        SIGNAL B(31:24)
        SIGNAL Sum(31:24)
        SIGNAL Sum(23:16)
        SIGNAL Sum(15:8)
        SIGNAL Sum(7:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Input clk
        PORT Input cin
        PORT Output Sum(31:0)
        PORT Output cout
        BEGIN BLOCKDEF EightBitFA_with_no_DFF_at_cout
            TIMESTAMP 2025 1 23 3 6 59
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF EightBitFA_with_no_DFF_at_Cin_and_Cout
            TIMESTAMP 2025 1 23 3 6 53
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF EightBitFA_with_no_DFF_at_Cin
            TIMESTAMP 2025 1 23 3 6 46
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 EightBitFA_with_no_DFF_at_cout
            PIN cin cin
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN clk clk
            PIN S(7:0) Sum(7:0)
            PIN cout XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_2 EightBitFA_with_no_DFF_at_Cin_and_Cout
            PIN cin XLXN_15
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN clk clk
            PIN S(7:0) Sum(15:8)
            PIN cout XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_3 EightBitFA_with_no_DFF_at_Cin_and_Cout
            PIN cin XLXN_16
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN clk clk
            PIN S(7:0) Sum(23:16)
            PIN cout XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_5 EightBitFA_with_no_DFF_at_Cin
            PIN cin XLXN_17
            PIN clk clk
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN S(7:0) Sum(31:24)
            PIN cout cout
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(31:0)
            WIRE 192 96 352 96
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 192 448 352 448
        END BRANCH
        BEGIN BRANCH cin
            WIRE 192 1152 352 1152
            WIRE 352 1152 752 1152
            WIRE 752 208 752 1152
            WIRE 752 208 1152 208
        END BRANCH
        IOMARKER 192 96 A(31:0) R180 28
        IOMARKER 192 448 B(31:0) R180 28
        IOMARKER 192 800 clk R180 28
        IOMARKER 192 1152 cin R180 28
        BEGIN BRANCH Sum(31:0)
            WIRE 3120 64 3280 64
        END BRANCH
        BEGIN BRANCH cout
            WIRE 1520 1648 3120 1648
            WIRE 3120 544 3280 544
            WIRE 3120 544 3120 1648
        END BRANCH
        IOMARKER 3280 64 Sum(31:0) R0 28
        IOMARKER 3280 544 cout R0 28
        BEGIN INSTANCE XLXI_5 1136 1680 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1136 1280 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1152 864 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 1152 432 R0
        END INSTANCE
        BEGIN BRANCH clk
            WIRE 192 800 352 800
            WIRE 352 800 1120 800
            WIRE 1120 800 1136 800
            WIRE 1136 800 1136 832
            WIRE 1136 832 1152 832
            WIRE 1120 832 1136 832
            WIRE 1120 832 1120 1248
            WIRE 1120 1248 1136 1248
            WIRE 1120 1248 1120 1520
            WIRE 1120 1520 1136 1520
            WIRE 1136 400 1152 400
            WIRE 1136 400 1136 800
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1056 640 1152 640
            WIRE 1056 640 1056 944
            WIRE 1056 944 1616 944
            WIRE 1536 400 1616 400
            WIRE 1616 400 1616 944
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1056 960 1056 1056
            WIRE 1056 1056 1136 1056
            WIRE 1056 960 1600 960
            WIRE 1536 832 1600 832
            WIRE 1600 832 1600 960
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1056 1360 1056 1456
            WIRE 1056 1456 1136 1456
            WIRE 1056 1360 1600 1360
            WIRE 1520 1248 1600 1248
            WIRE 1600 1248 1600 1360
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1040 272 1152 272
            BEGIN DISPLAY 1040 272 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1040 336 1152 336
            BEGIN DISPLAY 1040 336 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 960 704 1152 704
            BEGIN DISPLAY 960 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 960 768 1152 768
            BEGIN DISPLAY 960 768 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 928 1120 1136 1120
            BEGIN DISPLAY 928 1120 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 928 1184 1136 1184
            BEGIN DISPLAY 928 1184 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:24)
            WIRE 912 1584 1136 1584
            BEGIN DISPLAY 912 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:24)
            WIRE 912 1648 1136 1648
            BEGIN DISPLAY 912 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sum(31:24)
            WIRE 1520 1456 1648 1456
            BEGIN DISPLAY 1648 1456 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sum(23:16)
            WIRE 1520 1056 1696 1056
            BEGIN DISPLAY 1696 1056 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sum(15:8)
            WIRE 1536 640 1952 640
            BEGIN DISPLAY 1952 640 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Sum(7:0)
            WIRE 1536 208 1856 208
            BEGIN DISPLAY 1856 208 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
