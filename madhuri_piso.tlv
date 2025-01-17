\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/   /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/      /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  
//Your Verilog/System Verilog Code Starts Here:
module madhuri_piso(clk, load, INPUT, OUTPUT);
input clk, load;
input [9:0] INPUT;
output reg OUTPUT;
reg [9:0] tmp;
always @(posedge clk)
begin
  if(load)
  tmp<=INPUT;
  else
  begin
  OUTPUT <= tmp[9];
  tmp <= {tmp[8:0],1'b0};
  end
end
endmodule

//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  load;//input
		logic  [9:0] INPUT;//input
		logic  OUTPUT;//output
//The $random() can be replaced if user wants to assign values
		assign load = 1;
		assign INPUT = $random();
		madhuri_piso madhuri_piso(.clk(clk), .load(load), .INPUT(INPUT), .OUTPUT(OUTPUT));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

