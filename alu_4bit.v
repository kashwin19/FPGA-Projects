
module alu_4bit(
    input [3:0] a,
    input [3:0] b,
    input [2:0] opcode,
    output reg[3:0] result,
    output reg zero_flag
    );
    
   always@(*)
   begin
   case(opcode)
   3'b000: result =a + b;
   3'b001: result =a - b;
   3'b010: result = a & b;
   3'b011: result= a | b;
   3'b100: result= a^ b;
   3'b101: result= a<< 1;
   3'b110: result = a>>1;
   3'b111: result = (a==b)?4'b0001:4'b0000;
   default :result=4'b0000;
   endcase
   zero_flag =(result==4'b0000)? 1'b1 : 1'b0;
   end
endmodule