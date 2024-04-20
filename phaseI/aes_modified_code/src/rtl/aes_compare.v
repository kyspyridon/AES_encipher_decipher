 // Aes_compare_outputs. 
 // Module that compares the input of encipher and the output decipher.
`timescale 1ns/10ps

module aes_compare(encipher_input, decipher_output, outputs_comp_result);

  input [127:0] encipher_input, decipher_output;
  output outputs_comp_result;

  reg outputs_comp_result;
  wire [127:0] encipher_input, decipher_output;

  // Combinational logic that compares the input of encipher and the output decipher. 
  // If the input of encipher is equal to the output of decipher, 
  // outputs_comp_result becomes equal to 1 otherwise it becomes equal to 0.  
  always @(encipher_input or decipher_output)
    begin
      if (encipher_input == decipher_output)
        begin
          outputs_comp_result = 1'b1;
        end
      else 
        begin
          outputs_comp_result = 1'b0;
        end
    end

endmodule