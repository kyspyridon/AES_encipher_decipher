// Our top level module. The connection of encipher and decipher modules.
// The output of encipher goes to the input of decipher and then the outputs
// of decipher and encipher are compared in order to confirm that they 
// are working as expected (have the same result).

`timescale 1ns/10ps


module aes_core(
                input wire            clk,
                input wire            reset_n,

                // input wire            encdec,
                input wire            init,
                input wire            next,
                output wire           enc_ready, // encipher has finished //

                input wire [255 : 0]  key,
                input wire            keylen,

                input wire [127 : 0]  block,
                output wire [127 : 0] result,
                // output wire           result_valid,
                output wire outputs_comp_result,
                output wire finished
               );




  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  localparam CTRL_IDLE  = 2'h0;
  localparam CTRL_INIT  = 2'h1;
  localparam CTRL_ENCIPHER = 2'h2;
  localparam CTRL_DECIPHER = 2'h3;
  // localparam CTRL_NEXT  = 2'h2;


  //----------------------------------------------------------------
  // Registers including update variables and write enable.
  //----------------------------------------------------------------
  reg [1 : 0] aes_core_ctrl_reg;
  reg [1 : 0] aes_core_ctrl_new;
  reg         aes_core_ctrl_we;

  // reg         result_valid_reg;
  // reg         result_valid_new;
  // reg         result_valid_we;

  // reg         ready_reg;
  // reg         ready_new;
  // reg         ready_we;

  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  reg            init_state;

  wire [127 : 0] round_key;
  wire           key_ready;

  reg            enc_next;
  wire            enc_finished;
  wire [3 : 0]   enc_round_nr;
  wire [127 : 0] enc_new_block;
  // wire           enc_ready;
  wire [31 : 0]  enc_sboxw;

  reg            dec_next;
  wire           dec_finished;
  wire [3 : 0]   dec_round_nr;
  wire [127 : 0] dec_new_block;
  wire           dec_ready;

  // reg [127 : 0]  muxed_new_block;
  reg [3 : 0]    muxed_round_nr;
  // reg            muxed_ready;

  wire [31 : 0]  keymem_sboxw;

  /* verilator lint_off UNOPTFLAT */
  reg [31 : 0]   muxed_sboxw;
  wire [31 : 0]  new_sboxw;
  /* verilator lint_on UNOPTFLAT */

  /* Instantiation of aes_compare module's ports */
  // wire [127:0] encipher_input, decipher_output;
  // wire outputs_comp_result;




  //----------------------------------------------------------------
  // Instantiations.
  //----------------------------------------------------------------
  aes_encipher_block enc_block(
                               .clk(clk),
                               .reset_n(reset_n),

                               .next(enc_next),

                               .keylen(keylen),
                               .round(enc_round_nr),
                               .round_key(round_key),

                               .sboxw(enc_sboxw),
                               .new_sboxw(new_sboxw),

                               .block(block),
                               .new_block(enc_new_block),
                               .ready(enc_ready),
                               .finished(enc_finished)
                              );


  aes_decipher_block dec_block(
                               .clk(clk),
                               .reset_n(reset_n),

                               .next(dec_next),

                               .keylen(keylen),
                               .round(dec_round_nr),
                               .round_key(round_key),

                               .block(enc_new_block),     // The input of decipher is now the output of encipher //
                               .new_block(dec_new_block),
                               .ready(dec_ready),
                               .finished(dec_finished)
                              );


  aes_key_mem keymem(
                     .clk(clk),
                     .reset_n(reset_n),

                     .key(key),
                     .keylen(keylen),
                     .init(init),

                     .round(muxed_round_nr),
                     .round_key(round_key),
                     .ready(key_ready),

                     .sboxw(keymem_sboxw),
                     .new_sboxw(new_sboxw)
                    );


  aes_sbox sbox_inst(.sboxw(muxed_sboxw), .new_sboxw(new_sboxw));


  // Instantiation of the module that compares input of encipher and the output decipher.
  aes_compare aes_compare_inst(.encipher_input(block), .decipher_output(dec_new_block), .outputs_comp_result(outputs_comp_result)); 

  //----------------------------------------------------------------
  // Concurrent connectivity for ports etc.
  //----------------------------------------------------------------
  // assign ready        = ready_reg;
  // assign result_valid = result_valid_reg;
  assign result       = enc_new_block;
  assign finished     = dec_finished;

  //----------------------------------------------------------------
  // reg_update
  //
  // Update functionality for all registers in the core.
  // All registers are positive edge triggered with asynchronous
  // active low reset. All registers have write enable.
  //----------------------------------------------------------------
  always @ (posedge clk /*or negedge reset_n*/)
    begin: reg_update
      if (!reset_n)
        begin
          // result_valid_reg  <= 1'b0;
          // ready_reg         <= 1'b1;
          aes_core_ctrl_reg <= CTRL_IDLE;
        end
      else
        begin
          // if (result_valid_we)
          //   result_valid_reg <= result_valid_new;

          // if (ready_we)
          //   ready_reg <= ready_new;

          if (aes_core_ctrl_we)
            aes_core_ctrl_reg <= aes_core_ctrl_new;
        end
    end // reg_update


  //----------------------------------------------------------------
  // sbox_mux
  //
  // Controls which of the encipher datapath or the key memory
  // that gets access to the sbox.
  //----------------------------------------------------------------
  always @*
    begin : sbox_mux
      if (init_state)
        begin
          muxed_sboxw = keymem_sboxw;
        end
      else
        begin
          muxed_sboxw = enc_sboxw;
        end
    end // sbox_mux


  //----------------------------------------------------------------
  // encdex_mux
  //
  // Controls which of the datapaths that get the next signal, have
  // access to the memory as well as the block processing result.
  //----------------------------------------------------------------
  // always @*
  //   begin : encdec_mux
  //     enc_next = 1'b0;
  //     dec_next = 1'b0;

  //     if (encdec)
  //       begin
  //         // Encipher operations
  //         enc_next        = next;
  //         muxed_round_nr  = enc_round_nr;
  //         muxed_new_block = enc_new_block;
  //         muxed_ready     = enc_ready;
  //       end
  //     else
  //       begin
  //         // Decipher operations
  //         dec_next        = next;
  //         muxed_round_nr  = dec_round_nr;
  //         muxed_new_block = dec_new_block;
  //         muxed_ready     = dec_ready;
  //       end
  //   end // encdec_mux


  //----------------------------------------------------------------
  // aes_core_ctrl
  //
  // Control FSM for aes core. Basically tracks if we are in
  // key init, encipher or decipher modes and connects the
  // different submodules to shared resources and interface ports.
  //----------------------------------------------------------------
  always @*
    begin : aes_core_ctrl
      // ready_new         = 1'b0;
      // ready_we          = 1'b0;
      // result_valid_new  = 1'b0;
      // result_valid_we   = 1'b0;
      init_state        = 1'b0;
      enc_next          = 1'b0;
      dec_next          = 1'b0;
      aes_core_ctrl_new = CTRL_IDLE;
      aes_core_ctrl_we  = 1'b0;

      muxed_round_nr = 4'b0000;

      case (aes_core_ctrl_reg)
        CTRL_IDLE:
          begin
            if (init)
              begin
                // ready_new         = 1'b0;
                // ready_we          = 1'b1;
                // result_valid_new  = 1'b0;
                // result_valid_we   = 1'b1;
                init_state        = 1'b1;
                aes_core_ctrl_new = CTRL_INIT;
                aes_core_ctrl_we  = 1'b1;
              end
            else if (next)
              begin
                // ready_new         = 1'b0;
                // ready_we          = 1'b1;
                // result_valid_new  = 1'b0;
                // result_valid_we   = 1'b1;
                init_state        = 1'b0;
                aes_core_ctrl_new = CTRL_ENCIPHER;
                aes_core_ctrl_we  = 1'b1;
              end
          end

        CTRL_INIT:
          begin
            init_state = 1'b1;
            enc_next   = 1'b0;
            dec_next   = 1'b0;

            if (key_ready)
              begin
                // ready_new         = 1'b1;
                // ready_we          = 1'b1;
                aes_core_ctrl_new = CTRL_IDLE;
                aes_core_ctrl_we  = 1'b1;
              end
          end

        CTRL_ENCIPHER:
          begin
            init_state = 1'b0;
            enc_next   = next;
            dec_next   = 1'b0;
            muxed_round_nr = enc_round_nr;

            if (enc_finished == 1'b1)
              begin
                dec_next = 1'b1;
                aes_core_ctrl_new = CTRL_DECIPHER;
                aes_core_ctrl_we  = 1'b1;
              end
          end

        CTRL_DECIPHER:
          begin
            init_state = 1'b0;
            enc_next   = 1'b0;
            dec_next   = 1'b0;
            muxed_round_nr = dec_round_nr;

            if (dec_finished == 1'b1)
              begin
                aes_core_ctrl_new = CTRL_IDLE;
                aes_core_ctrl_we  = 1'b1;
              end
          end

        // CTRL_NEXT:
        //   begin
        //     init_state = 1'b0;

        //     if (muxed_ready)
        //       begin
        //         // ready_new         = 1'b1;
        //         // ready_we          = 1'b1;
        //         // result_valid_new  = 1'b1;
        //         // result_valid_we   = 1'b1;
        //         aes_core_ctrl_new = CTRL_IDLE;
        //         aes_core_ctrl_we  = 1'b1;
        //      end
        //   end

        default:
          begin

          end
      endcase // case (aes_core_ctrl_reg)

    end // aes_core_ctrl
endmodule // aes_core

//======================================================================
// EOF aes_core.v
//======================================================================