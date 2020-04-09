# Verilog Project for CSARCH1

This is a project that simulates a 4-bit binary integer to a CODE 128 barcode segment represented by the 11-bit output.
Edit the documentation [here](https://docs.google.com/document/d/19TT09PgFI_rJOjWgXX9Lp24xiZEWg5JUGNk7w3_RHNY/edit).

# Compile Testbench
Run the following commands in this folder:
```
iverilog -o num_to_bc.vvp num_to_bc_array.v num_to_bc_array_test.v
```

Print log file:
```
vvp num_to_bc.vvp
```

Open in GTKWave:
```
gtkwave num_to_bc.vcd
```

## To-do List:
1. Update documentation
2. ~~Add modules for b3-b11~~ Done!
3. ~~Create simulation~~ Done! **Needs checking**