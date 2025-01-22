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
        SIGNAL B
        SIGNAL C
        SIGNAL A
        SIGNAL S
        SIGNAL CO
        PORT Input B
        PORT Input C
        PORT Input A
        PORT Output S
        PORT Output CO
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF or3
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 72 -128 
            LINE N 0 -192 48 -192 
            LINE N 256 -128 192 -128 
            ARC N 28 -256 204 -80 112 -80 192 -128 
            ARC N -40 -184 72 -72 48 -80 48 -176 
            LINE N 48 -64 48 -80 
            LINE N 48 -192 48 -176 
            LINE N 112 -80 48 -80 
            ARC N 28 -176 204 0 192 -128 112 -176 
            LINE N 112 -176 48 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_7 and2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_8 and2
            PIN I0 C
            PIN I1 A
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_9 and2
            PIN I0 C
            PIN I1 B
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 C
            PIN I1 XLXN_4
            PIN O S
        END BLOCK
        BEGIN BLOCK XLXI_3 or3
            PIN I0 XLXN_3
            PIN I1 XLXN_2
            PIN I2 XLXN_1
            PIN O CO
        END BLOCK
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 B
            PIN I1 A
            PIN O XLXN_4
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 1760 1360
        INSTANCE XLXI_7 576 656 R0
        INSTANCE XLXI_8 576 784 R0
        INSTANCE XLXI_9 576 912 R0
        INSTANCE XLXI_2 1104 560 R0
        BEGIN BRANCH XLXN_1
            WIRE 832 560 1104 560
            WIRE 1104 560 1104 624
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 832 688 1104 688
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 832 816 1104 816
            WIRE 1104 752 1104 816
        END BRANCH
        INSTANCE XLXI_3 1104 816 R0
        BEGIN BRANCH XLXN_4
            WIRE 832 416 1088 416
            WIRE 1088 416 1088 432
            WIRE 1088 432 1104 432
        END BRANCH
        BEGIN BRANCH B
            WIRE 384 448 448 448
            WIRE 448 448 448 592
            WIRE 448 592 576 592
            WIRE 448 592 448 784
            WIRE 448 784 528 784
            WIRE 528 784 576 784
            WIRE 448 448 576 448
        END BRANCH
        BEGIN BRANCH C
            WIRE 384 496 512 496
            WIRE 512 496 1104 496
            WIRE 512 496 512 720
            WIRE 512 720 528 720
            WIRE 528 720 576 720
            WIRE 512 720 512 848
            WIRE 512 848 528 848
            WIRE 528 848 576 848
        END BRANCH
        BEGIN BRANCH A
            WIRE 384 384 400 384
            WIRE 400 384 400 528
            WIRE 400 528 576 528
            WIRE 400 528 400 656
            WIRE 400 656 528 656
            WIRE 528 656 576 656
            WIRE 400 384 576 384
        END BRANCH
        INSTANCE XLXI_1 576 512 R0
        IOMARKER 384 448 B R180 28
        IOMARKER 384 496 C R180 28
        IOMARKER 384 384 A R180 28
        BEGIN BRANCH S
            WIRE 1360 464 1456 464
        END BRANCH
        BEGIN BRANCH CO
            WIRE 1360 688 1456 688
        END BRANCH
        IOMARKER 1456 688 CO R0 28
        IOMARKER 1456 464 S R0 28
    END SHEET
END SCHEMATIC
