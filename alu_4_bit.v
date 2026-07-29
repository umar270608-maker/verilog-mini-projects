module alu_4_bit (A,B,op,out_alu);
input [3:0] A,B;
input [2:0] op;
output reg [3:0] out_alu;

always @(*)
    begin
      casex(op)

      
      3'b000 :out_alu= A+B;//addition
      3'b001 :out_alu= A-B;//subtraction
      3'b010 :out_alu= A&B;//logical AND
      3'b011 :out_alu= A|B;//logical OR
      3'b100 :out_alu= ~A;//logical NOT
      3'b101 :out_alu= A<<1;//left shift
      3'b110 :out_alu=A>>1;//right shift
      3'b111 :out_alu=A^B;//xor operation
      default:out_alu=0;
      endcase

    end
endmodule

