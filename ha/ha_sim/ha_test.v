`timescale 1ns/1ns
module ha_test;

reg a,b;
wire sum,co;

integer i;
ha dut(a,b,sum,co);

initial begin
$dumpvars(1);
$dumpfile("wave.vcd");
end

initial
begin
$monitor($time,"a=%b b=%b, sum=%b, co=%b",a,b,sum,co);
for(i=0;i<4;i=i+1) begin
{a,b}=i;
#5;
end
#5;
$stop;
end
endmodule