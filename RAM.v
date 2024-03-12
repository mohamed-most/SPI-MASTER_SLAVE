module RAM (
    input [9:0] rx_data,
    input rx_valid,
    input clk,
    input rst_n,
    output  reg [7:0] tx_data,
    output reg tx_valid
); 

parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;
reg [ADDR_SIZE-1:0] internal_buffer; 
reg [ADDR_SIZE-1:0] mem [MEM_DEPTH-1:0];

always @(posedge clk ) begin 
    if (~rst_n) begin
        tx_data <= 8'h00;
        tx_valid <= 1'b0;
        internal_buffer <= 1'b0;
    end
    else begin
        if (rx_valid) begin 
            case({rx_data[9],rx_data[8]})
                2'b00: begin 
                    internal_buffer <= rx_data[7:0];
                    tx_valid <= 1'b0;
                end
                2'b01: begin 
                    mem[internal_buffer] <= rx_data[7:0]; 
                    tx_valid <= 1'b0; 
                end
                2'b10: begin
                    internal_buffer <= rx_data[7:0];
                    tx_valid <= 1'b0;
                end
                2'b11: begin 
                    tx_data <= mem[internal_buffer]; 
                    tx_valid <= 1'b1;
                end
            endcase
        end
    end 
end 

endmodule
