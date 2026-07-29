`timescale 1ns/1ps
module alu_4_bit_tb;
reg [3:0] A_tb,B_tb;
reg [2:0] op_tb;
wire [3:0] out_alu_tb;


alu_4_bit dut(A_tb,B_tb,op_tb,out_alu_tb);

initial
begin
$dumpfile("aluwaveform.vcd");
$dumpvars(0,alu_4_bit_tb);
end

initial 
begin

op_tb=3'b000; A_tb=4'b0011;B_tb=4'b0001;
#10
op_tb=3'b001; A_tb=4'b0011;B_tb=4'b0001;
#10
op_tb=3'b010; A_tb=4'b0011;B_tb=4'b0001;
#10
op_tb=3'b011; A_tb=4'b0011;B_tb=4'b0001;
#10
op_tb=3'b100; A_tb=4'b0011;B_tb=4'b0001;
#10
op_tb=3'b101; A_tb=4'b0011;B_tb=4'b0001;
#10
op_tb=3'b110; A_tb=4'b0011;B_tb=4'b0001;
#10
op_tb=3'b111; A_tb=4'b0011;B_tb=4'b0001;
end

initial
begin

$monitor("....op=%b........,......A=%b.......,.......B=%b.......,....out=%b... ",op_tb,A_tb,B_tb,out_alu_tb);
end
endmodule

