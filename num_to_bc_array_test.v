`timescale 1ns / 10ps // <-- We have to justify this in the documentation, 
                      // is there a reason why we should pick this aside from
                      // "because sir did it?" xD

module numToBarcodeConverterTester;
    // Output
    wire [10:0] bc;
    // Input
    reg [3:0] num;

numToBarcodeConverter uut(bc, num);
initial
begin
    $monitor("Number: %b / %d, Barcode: %b\n", num, num, bc);
    $dumpfile("num_to_bc.vcd");
    $dumpvars(0, numToBarcodeConverterTester);

    num = 4'b0000;
    #30 num = 4'b0101;
    #30 num = 4'b1010;
    #30 num = 4'b1111;
end
initial #130 $finish;
endmodule