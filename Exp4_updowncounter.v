module updown_counter(clk,rst,ud,out); 
input clk,rst,ud; 
output reg[3:0]out;
always@(posedge clk)
begin
if(rst==1)
out=4'b0;
else if (ud==1)
out=out+1;
else if(ud==0)
out=out-1;
end
endmodule
