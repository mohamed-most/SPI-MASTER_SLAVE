module SPI_wrapper(MOSI,MISO,clk,SS_n,rst_n);

input MOSI ; 
input SS_n ;
input clk,rst_n ;
output MISO ; 
wire [9:0]rx_data;
wire rx_valid  , tx_valid;
wire [7:0]tx_data; 
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;
SPI spi (.clk(clk),.rst_n(rst_n),.MOSI(MOSI),.MISO(MISO),.SS_n(SS_n),.tx_data(tx_data),.tx_valid(tx_valid),.rx_data(rx_data),.rx_valid(rx_valid));
RAM #(.MEM_DEPTH(MEM_DEPTH),.ADDR_SIZE(ADDR_SIZE))ram(.rx_data(rx_data),.rx_valid(rx_valid),.clk(clk),.rst_n(rst_n),.tx_data(tx_data),.tx_valid(tx_valid));

endmodule
