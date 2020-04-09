/*
 * For the purposes of easy implementation, the NAND gate implementation will chosen
 * to be converted to HDL. 
 */

/* Implemented as arrays because individual inputs do not have any meaning for this project.
   The order of the segments is also important, so an array is appropriate for this scenario. */

module numToBarcodeConverter(output [0:10] barcode, input [0:3] number);

// Implementation for b1. Barcode segments always begin with a black segment.
assign  barcode[0] = 1'b1;

// NAND gate implementation for output variable b2.
wire    b2_w1, b2_w2, b2_w3;
nand    b2_g1(b2_w1, !number[0], !number[1], !number[2]),
        b2_g2(b2_w2, !number[1], number[2], !number[3]),
        b2_g3(b2_w3, number[0], !number[1], number[3]),
        B2(barcode[1], b2_w1, b2_w2, b2_w3);

// NAND gate implementation for output variable b3.
wire    b3_w1, b3_w2;
nand    b3_g1(b3_w1, number[0], number[1], !number[2], !number[3]),
        b3_g2(b3_w2, number[0], number[1], number[2], number[3]),
        B3(barcode[2], b3_w1, b3_w2);

// NAND gate implementation for output variable b4.
wire    b4_w1, b4_w2, b4_w3, b4_w4;
nand    b4_g1(b4_w1, !number[0], !number[1], !number[3]),
        b4_g2(b4_w2, !number[0], number[2], number[3]),
        b4_g3(b4_w3, number[1], !number[3]),
        b4_g4(b4_w4, number[0], number[1]),
        b4_g5(barcode[3], b4_w1, b4_w2, b4_w3, b4_w4);

// NAND gate implementation for output variable b5.
wire    b5_w1, b5_w2, b5_w3;
nand    b5_g1(b5_w1, !number[1], !number[2]),
        b5_g2(b5_w2, number[2], !number[3]),
        b5_g3(b5_w3, number[1], number[3]),
        B5(barcode[4], b5_w1, b5_w2, b5_w3);

// NAND gate implementation for output variable b6.
wire    b6_w1, b6_w2, b6_w3, b6_w4;
nand    b6_g1(b6_w1, !number[0], !number[1], !number[2], number[3]),
        b6_g2(b6_w2, !number[0], !number[1], number[2], !number[3]),
        b6_g3(b6_w3, number[0], !number[1], !number[2], !number[3]),
        b6_g4(b6_w4, number[0], !number[1], number[2], number[3]),
        B6(barcode[5], b6_w1, b6_w2, b6_w3, b6_w4);

// NAND gate implementation for output variable b7.
wire    b7_w1, b7_w2;
nand    b7_g1(b7_w1, !number[0], !number[1], number[2], number[3]),
        b7_g2(b7_w2, number[0], number[1], !number[2]),
        B7(barcode[6], b7_w1, b7_w2);

// NAND gate implementation for output variable b8.
wire    b8_w1, b8_w2, b8_w3, b8_w4, b8_w5;
nand    b8_g1(b8_w1, !number[0], !number[2]),
        b8_g2(b8_w2, !number[0], !number[1], number[3]),
        b8_g3(b8_w3, !number[2], number[3]),
        b8_g4(b8_w4, number[1], !number[3]),
        b8_g5(b8_w5, number[0], number[1]),
        B8(barcode[7], b8_w1, b8_w2, b8_w3, b8_w4, b8_w5);

// NAND gate implementation for output variable b9.
wire    b9_w1, b9_w2, b9_w3, b9_w4, b9_w5;
nand    b9_g1(b9_w1, !number[0], !number[2]),
        b9_g2(b9_w2, !number[1], !number[3]),
        b9_g3(b9_w3, !number[2], !number[3]),
        b9_g4(b9_w4, number[1], number[3]),
        b9_g5(b9_w5, number[0], number[2]),
        B9(barcode[8], b9_w1, b9_w2, b9_w3, b9_w4, b9_w5);

// NAND gate implementation for output variable b10.
wire    b10_w1, b10_w2, b10_w3, b10_w4, b10_w5;
nand    b10_g1(b10_w1, !number[0], !number[1], number[2], !number[3]),
        b10_g2(b10_w2, number[0], number[1], number[2], !number[3]),
        B10(barcode[9], b10_w1, b10_w2);

// Barcode segments always end with a white segment.
assign  barcode[10] = 1'b0;
endmodule