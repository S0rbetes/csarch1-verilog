`timescale 1ns / 10ps

module numToBarcodeConverterTester;
    // Output
    wire [10:0] bc;
    // Input
    reg [3:0] num;
    // To be used for iteration
    integer i;

numToBarcodeConverter uut(bc, num);
initial
begin
    $monitor("Number: %b / %d, Barcode: %b\n", num, num, bc);
    $dumpfile("num_to_bc.vcd");
    $dumpvars(0, numToBarcodeConverterTester);

    // Iterate through all 16 numbers.
    num = 4'b0000;
    for (i = 4'b0001; i <= 4'b1111 ; i = i + 4'b0001) begin
        #30 num = i;
    end 
end
initial #490 $finish;
endmodule