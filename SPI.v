module SPI(input MOSI,input SS_n,input clk ,input rst_n,input[7:0]tx_data,input tx_valid,
output reg [9:0]rx_data,output reg rx_valid,output reg MISO
);

 
// (* fsm_encoding = "gray" *)
(* fsm_encoding = "sequential" *)
// (* fsm_encoding = "one_hot" *)

//states 
localparam IDLE = 3'b000 ;
localparam CHK_CMD = 3'b001 ;
localparam WRITE = 3'b010 ;
localparam READ_DATA = 3'b011 ;
localparam READ_ADDR= 3'b100 ;
reg [2:0]current_state , next_state ; 
reg [3:0]counter;
reg read_flag ; 
always @(*) begin:next_state_logic
    case (current_state)
        IDLE:
        if(SS_n==1'b0) next_state<=CHK_CMD ;
        else next_state<=IDLE ;
        CHK_CMD: 
        if(SS_n==1'b0 && MOSI==1'b0) next_state<=WRITE; 
        else if (SS_n==1'b0 && MOSI==1'b1 && read_flag==1'b0)next_state=READ_ADDR; 
        else if (SS_n==1'b0 && MOSI==1'b1 && read_flag==1'b1)next_state=READ_DATA; 
        else next_state<=IDLE  ; 
        WRITE:
        if(SS_n==1'b0) begin  
            next_state<=WRITE;
        end 
        else begin 
            next_state <=IDLE;
        end
        READ_ADDR: if(SS_n ==1'b1) next_state<=IDLE;
        else next_state<=READ_ADDR; 

        READ_DATA:if(SS_n ==1'b1) next_state<=IDLE;
        else next_state<=READ_DATA; 
    endcase
end

always @(posedge clk ) begin
    if(~rst_n) begin 
        current_state<=IDLE;
    end
    else current_state <=next_state;
end

always@(posedge clk ) begin 
     if(~rst_n)begin
         MISO<=0;
         read_flag<=1'b0;
    end
 case(current_state)
    IDLE:begin
    rx_valid<=1'b0;
    MISO<=1'b0;
    end
    CHK_CMD:counter<=1'b0;
    WRITE:begin
    if(SS_n==0)begin
        rx_data[9-counter]<=MOSI;
        counter<=counter+1'b1;
    end
    if(counter==9)begin
        rx_valid<=1'b1;
        counter<=1'b0;
        end
    end
    READ_ADDR:begin
        if(SS_n==0)begin
        rx_data[9-counter]<=MOSI;
        counter<=counter+1'b1;
    end
        if(counter==9)begin
        rx_valid<=1'b1;
        counter<=1'b0;
        read_flag<=1'b1; //to be able to READ_DATA
        end

    end

    READ_DATA:
    if(SS_n ==1'b0 )begin 
      if(tx_valid==1'b0)begin
        rx_data[9-counter]<=MOSI ; 
        counter<=counter+1; 
        if(counter == 9)begin
            counter<=1'b0 ; 
            rx_valid<=1'b1 ; 
        end
    end
    if(tx_valid==1'b1)begin
        MISO<=tx_data[7-counter]; 
        counter<=counter+1'b1; 
        if(counter==7)begin
            read_flag<=1'b0 ;
            counter<=0 ; 
        end
    end
end 
endcase

end 

endmodule   
