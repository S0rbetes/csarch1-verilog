`timescale 1ns / 10ps // <-- We have to justify this in the documentation, 
                      // is there a reason why we should pick this aside from
                      // "because sir did it?" xD

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

    //num = 4'b0000;
    //#30 num = 4'b0101;
    //#30 num = 4'b1010;
    //#30 num = 4'b1111;
    num = 4'b0000;
    for (i = 4'b0001; i <= 4'b1111 ; i = i + 4'b0001) begin
        #30 num = i;
    end 
end
initial #490 $finish;
endmodule