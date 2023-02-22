module adder (
    input  logic [7:0] A,
    input  logic [7:0] B,
    output logic [8:0] F
        );
  always_comb 
    F <= A+B;
endmodule
