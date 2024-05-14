# VLSI-LAB-EXP-4

# SIMULATION AND IMPLEMENTATION OF SEQUENTIAL LOGIC CIRCUITS

Date:




AIM: 
 To simulate and synthesis SR, JK, T, D - FLIPFLOP, COUNTER DESIGN using Xilinx ISE.


APPARATUS REQUIRED:
Xilinx 14.7,
Spartan6 FPGA


  
PROCEDURE:

STEP:1  Start  the Xilinx navigator, Select and Name the New project.

STEP:2  Select the device family, device, package and speed.       

STEP:3  Select new source in the New Project and select Verilog Module as the Source type.                       

STEP:4  Type the File Name and Click Next and then finish button. Type the code and save it.

STEP:5  Select the Behavioral Simulation in the Source Window and click the check syntax.                       

STEP:6  Click the simulation to simulate the program and  give the inputs and verify the outputs as per the truth table.               

STEP:7  Select the Implementation in the Sources Window and select the required file in the Processes Window.

STEP:8  Select Check Syntax from the Synthesize  XST Process. Double Click in the  FloorplanArea/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained. 

STEP:9  In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu.

STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here.

STEP:11  On the board, by giving required input, the LEDs starts to glow light, indicating the output.

SR FLIPFLOP

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/77fb7f38-5649-4778-a987-8468df9ea3c3)

VERILOG CODE:

```

module srff(clk,rst,s,r,q);
input clk,rst,s,r;
output reg q;
always @(posedge clk)
begin
if(rst)
 q<=1'b0;
else
 begin
 case({s,r})
 2'b00:q<=q;
 2'b01:q<=1'b0;
 2'b10:q<=1'b1;
 2'b11:q<=1'bx;
 default:q<=1'bx;
 endcase
 end
end 
endmodule

```

OUTPUT:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/3b3e747d-5700-49f6-a013-a98d3421a1fc)

JK FLIPFLOP

LOGIC DIAGRAM:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/fc45dfc1-482b-4488-84c4-ab6c6d25cfb4)

VERILOG CODE:

```

module jkff(clk,rst,j,k,q);
input clk,rst,j,k;
output reg q;
always @(posedge clk)
begin
if(rst)
 q<=1'b0;
else
 begin
 case({j,k})
 2'b00:q<=q;
 2'b01:q<=1'b0;
 2'b10:q<=1'b1;
 2'b11:q<=~q;
 default:q<=1'bx;
 endcase
 end
end 
endmodule

```

OUTPUT:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/5cdedead-2cba-4a22-a980-94a1803f5658)

T FLIPFLOP

LOGIC DIAGRAM:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/ed7709e6-c3ee-43cd-92d3-312e54eef534)

VERILOG CODE:

```

module tff(clk,rst,t,q);
input clk,rst,t;
output reg q;
always @(posedge clk)
 begin
 if(rst)
 q<=0;
 else if(t)
 q<=~q;
 else
 q<=q;
 end
endmodule

```

OUTPUT:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/e3f23e0f-f205-4e39-b533-3017f4d5dcd6)

D FLIPFLOP

LOGIC DIAGRAM:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/f1fcee9c-4c9d-455b-ab01-cad45eb7df17)

VERILOG CODE:

```

module dff(d,clk,rst,q);
input d,clk,rst;
output reg q;
always @(posedge clk)
begin 
if(rst)
 q <=1'b0;
else
 q <= d;
end
endmodule

```

OUTPUT:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/5028b57e-ea37-4e22-9396-41e6f14480d3)

COUNTER

MOD10COUNTER:

LOGIC DIAGRAM:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/d533df00-1d8d-4c8b-a13e-7872d43968e6)

VERILOG CODE:


```

module mod10counter(clk,rst,count);
input clk,rst;
output[3:0]count;
reg[3:0]count;
always@(posedge clk)
begin
if(rst|count==4'b1001)
count<=4'b0;
else
count<=count+1;
end
endmodule

```

OUTPUT:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/106c2988-541b-4df8-a7bf-fda589a88c6f)

UP COUNTER

LOGIC DIAGRAM:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/be6d9b0e-f1c7-4809-a314-e631cad32156)

VERILOG CODE:

```

module upcounter(clk,rst,count);
input clk,rst;
output[3:0]count;
reg[3:0]count;
always@(posedge clk)
begin
if(rst)
count<=4'b0;
else
count<=count+1;
end
endmodule

```

OUTPUT:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/c3b452b7-df21-4937-9eba-eb3ef7496319)

DOWN COUNTER

LOGIC DIAGRAM:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/f796778b-390b-4411-a7c6-5036e76be5c9)

VERILOG CODE:

```

module downcounter(clk,rst,count);
input clk,rst;
output[3:0]count;
reg[3:0]count;
always@(posedge clk)
begin
if(rst)
count<=4'b0;
else
count <=count-1;
end
endmodule

```

OUTPUT:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/facb5dd8-b4d0-46e7-a887-c0198f587278)

RIPPLE COUNTER

LOGIC DIAGRAM:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/2d096c98-9ca9-4798-b641-d8b12b9ce460)

VERILOG CODE:

```

module jkff(j,k,clock,reset,q,qb);
input j,k,clock,reset;
output reg q,qb;
 begin
case({reset,j,k})
3'b100 :q=q;
3'b101 :q=0;
3'b110 :q=1;
3'b111 :q=~q;
default :q=0;
endcase
qb<=~q;
end
endmodule

module ripple_count(j,k,clock,reset,q,qb);
input j,k,clock,reset;
output wire [3:0]q,qb;
jkff JK1(j,k,clock,reset,q[0],qb[0]);
jkff JK2(j,k,q[0],reset,q[1],qb[1]);
jkff JK3(j,k,q[1],reset,q[2],qb[2]);
jkff JK4(j,k,q[2],reset,q[3],qb[3]);
endmodule

```



OUTPUT:

![image](https://github.com/Bharathsampat/VLSI-LAB-EXP-4/assets/147235565/afdb5712-bc5f-43e4-a0d6-3ced8acb5f00)

RESULT:
Hence, the simulation and synthesis of SR, JK, T, D - FLIPFLOP, COUNTER DESIGN is verified using Xilinx ISE.
