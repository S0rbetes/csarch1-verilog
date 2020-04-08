module B1(O, I1, I2, I3, I4);
    output O;
    input I1, I2, I3, I4;

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