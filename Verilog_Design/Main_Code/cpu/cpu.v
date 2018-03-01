module cpu(iram_addr, iram_data, dram_addr, dram_data, dram_write, clk, enable, done);

input clk, enable;
output reg dram_write, done;

inout[15:0] iram_addr, dram_addr;
inout[7:0] iram_data, dram_data;

alu alu();
