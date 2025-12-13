
///////////////////////////////////////////////////////////////////////////
//
// File name   : internal_mem.sv
// Title       : Memory Module
// Project     : SystemVerilog Training
// Description : Defines the memory module
// Notes       :
// Synchronous 32x8 Memory Design
// Specification:
//  Memory is 8-bits wide and address range is 0 to 31.
//  Memory access is synchronous.
//  Write data into the memory on posedge of clk when write=1
//  Place memory[addr] onto data bus on posedge of clk when read=1
//  The read and write signals should not be simultaneously high.
// 
///////////////////////////////////////////////////////////////////////////
module internal_mem (
  input              clk,
  input              read,
  input              write,
  input  logic [4:0] addr,
  input  logic [7:0] data_in,
  output logic [7:0] data_out
);

  // -------------------------------------------------
  // Time configuration
  // -------------------------------------------------
  timeunit      1ns;
  timeprecision 1ns;

  // -------------------------------------------------
  // Internal memory
  // -------------------------------------------------
  logic [7:0] memory [0:31];

  // -------------------------------------------------
  // Write operation
  // -------------------------------------------------
  always_ff @(posedge clk) begin
    if (write && !read)
      memory[addr] <= data_in;
  end

  // -------------------------------------------------
  // Read operation
  // -------------------------------------------------
  always_ff @(posedge clk iff ((read == '1) && (write == '0))) begin
    data_out <= memory[addr];
  end

endmodule : internal_mem

