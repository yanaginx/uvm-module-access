module input_model (
    input  logic clk,
    output logic [7:0] A,
    output logic [7:0] B
);

  logic [7:0] input_pool[*];
  int current_index = 0;
  int rand_index = 0;
  reg [7:0] reg_A;
  reg [7:0] reg_B;

  // Function to be called for adding randomized input
  function void insert_input(logic[7:0] value);
    input_pool[current_index++] = value;
    $display("INPUT MODEL: Currently inserting: %d at index %d", value, current_index-1);
  endfunction : insert_input

  always @(posedge clk) begin
    assert ( randomize(rand_index) with { rand_index inside {[0:current_index-1]}; }) else 
    begin
      $display("why the fuck can it not randomize properly?");
    end
    // $display("Current rand_index: %d", rand_index);
    // $display("Current current_index: %d", current_index);
    reg_A <= input_pool[rand_index-1];
    reg_B <= input_pool[rand_index];
  end

  assign A = reg_A;
  assign B = reg_B;

endmodule : input_model
