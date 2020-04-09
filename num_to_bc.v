/*
 * For the purposes of easy implementation, the NAND gate implementation will chosen
 * to be converted to HDL. 
 */

module B1(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;

// B1 only 
assign O = 1'b1;
endmodule

module B2(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;
    wire W1, W2, W3;

nand G1(W1, !I1, !I2, !I3),
     G2(W2, !I2, I3, !I4),
     G3(W3, I1, !I2, I4),
     G4(O, W1, W2, W3);
endmodule

module B3(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;
    wire W1, W2;

nand G1(W1, I1, I2, !I3, !I4),
     G2(W2, I1, I2, I3, I4),
     G3(O, W1, W2);
endmodule

module B4(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;
    wire W1, W2, W3, W4;

nand G1(W1, !I1, !I2, !I4),
     G2(W2, !I1, I3, I4),
     G3(W3, I2, !I4),
     G4(W4, I1, I2),
     G5(O, W1, W2, W3, W4);
endmodule

module B5(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;
    wire W1, W2, W3;

nand G1(W1, !I2, !I3),
     G2(W2, I3, !I4),
     G3(W3, I2, I4),
     G4(O, W1, W2, W3);
endmodule

module B6(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;
    wire W1, W2, W3, W4;

nand G1(W1, !I1, !I2, !I3, I4),
     G2(W2, !I1, !I2, I3, !I4),
     G3(W3, I1, !I2, !I3, !I4),
     G4(W4, I1, !I2, I3, I4),
     G5(O, W1, W2, W3, W4);
endmodule

module B7(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;
    wire W1, W2;

nand G1(W1, !I1, !I2, I3, I4),
     G2(W2, I1, I2, !I3),
     G3(O, W1, W2);
endmodule

module B8(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;
    wire W1, W2, W3, W4, W5;
	
nand G1(W1, !I1, !I3),
	 G2(W2, !I1, !I2, I4),
	 G3(W3, !I3, I4),
	 G4(W4, I2, !I4),
	 G5(W5, I1, I2),
	 G6(O, W1, W2, W3, W4, W5);
endmodule
	 
module B9(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;
    wire W1, W2, W3, W4, W5;
	
nand G1(W1, !I1, !I3),
	 G2(W2, !I2, !I4),
	 G3(W3, !I3, !I4),
	 G4(W4, I2, I4),
	 G5(W5, I1, I3),
	 G6(O, W1, W2, W3, W4, W5);
endmodule

module B10(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;
    wire W1, W2, W3, W4, W5;
	
nand G1(W1, !I1, !I2, I3, !I4),
	 G2(W2, I1, I2, I3, !I4),
	 G3(O, W1, W2);
endmodule

module B11(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;

assign O = 1'b0;
endmodule