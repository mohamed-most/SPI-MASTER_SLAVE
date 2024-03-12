module RAM_tb; 
parameter  MEM_DEPTH =256 ;
parameter  ADDR_SIZE =8 ;
reg [9:0]din ;
reg rx_valid ;
reg clk ;
reg rst_n ;
wire [7:0]dout ;
wire tx_valid ; 

// clk generation 
initial begin
    clk=1 ; 
    din=10'b0000_0000_00;
    forever begin
     #2   clk =~clk ; 
    end
end
//instanitre module 
    RAM ram(.*); 
initial begin
    $readmemb("mem.dat",ram.mem,0,30);
    rx_valid=1'b1; 
    rst_n=1'b0 ;
    rx_valid=1'b1; 
    @(negedge clk) ; 
    rst_n=1'b1  ;
    din=10'b00_00_0000_00 ;  // hold this as write address 
    @(negedge clk ) ;
    din =10'b01_11_1111_11;  // address wrote in mem 
    @(negedge clk) ; 
    din=10'b10_00_0000_00 ;  // hold this as write address
    @(negedge clk ); 
    din=10'b11_00_0000_00 ; // read address from memory
    @(negedge clk)  ;
    $stop ;  
end


initial begin
$monitor("clk =%d  rst_n=%d  rx_valid=%d  din=%b tx_valid=%b   ",clk,rst_n,rx_valid,din,tx_valid);
end


endmodule
