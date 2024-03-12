// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Mar 12 04:04:51 2024
// Host        : DESKTOP-0B86MCA running 64-bit major release  (build 9200)
// Command     : write_verilog D:/digital_design_diploma/projects/SPI/project_4.v
// Design      : SPI_wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (SR,
    tx_valid,
    MISO_reg,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    Q,
    WEA,
    \rx_data_reg[8]_0 ,
    \counter_reg[2] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[2] ,
    E);
  output [0:0]SR;
  output tx_valid;
  output MISO_reg;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input [7:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[8]_0 ;
  input [2:0]\counter_reg[2] ;
  input \FSM_sequential_current_state_reg[1] ;
  input \FSM_sequential_current_state_reg[2] ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire MISO_i_3_n_0;
  wire MISO_i_5_n_0;
  wire MISO_reg;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [2:0]\counter_reg[2] ;
  wire [7:0]internal_buffer;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire \rx_data_reg[8]_0 ;
  wire [7:0]tx_data;
  wire tx_valid;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF008C0080)) 
    MISO_i_2
       (.I0(MISO_i_3_n_0),
        .I1(tx_valid),
        .I2(\counter_reg[2] [2]),
        .I3(\FSM_sequential_current_state_reg[1] ),
        .I4(MISO_i_5_n_0),
        .I5(\FSM_sequential_current_state_reg[2] ),
        .O(MISO_reg));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    MISO_i_3
       (.I0(tx_data[1]),
        .I1(tx_data[3]),
        .I2(tx_data[2]),
        .I3(\counter_reg[2] [0]),
        .I4(\counter_reg[2] [1]),
        .I5(tx_data[0]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFAAF0CC00AAF0CC)) 
    MISO_i_5
       (.I0(tx_data[5]),
        .I1(tx_data[7]),
        .I2(tx_data[6]),
        .I3(\counter_reg[2] [0]),
        .I4(\counter_reg[2] [1]),
        .I5(tx_data[4]),
        .O(MISO_i_5_n_0));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_buffer_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(internal_buffer[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_buffer_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(internal_buffer[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_buffer_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(internal_buffer[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_buffer_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(internal_buffer[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_buffer_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(internal_buffer[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_buffer_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(internal_buffer[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_buffer_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(internal_buffer[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_buffer_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(internal_buffer[7]),
        .R(SR));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "ram/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,internal_buffer,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,internal_buffer,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[8]_0 ),
        .Q(tx_valid),
        .R(SR));
endmodule

module SPI
   (MISO_OBUF,
    MISO_reg_0,
    Q,
    WEA,
    \internal_buffer_reg[7] ,
    tx_valid_reg,
    MISO_reg_1,
    mem_reg,
    E,
    tx_valid_reg_0,
    CLK,
    SS_n_IBUF,
    MOSI_IBUF,
    rst_n_IBUF,
    tx_valid,
    SR);
  output MISO_OBUF;
  output MISO_reg_0;
  output [2:0]Q;
  output [0:0]WEA;
  output [7:0]\internal_buffer_reg[7] ;
  output tx_valid_reg;
  output MISO_reg_1;
  output mem_reg;
  output [0:0]E;
  input tx_valid_reg_0;
  input CLK;
  input SS_n_IBUF;
  input MOSI_IBUF;
  input rst_n_IBUF;
  input tx_valid;
  input [0:0]SR;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_2_n_0 ;
  wire GND_2;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_reg_0;
  wire MISO_reg_1;
  wire MOSI_IBUF;
  wire [2:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire VCC_2;
  wire [0:0]WEA;
  wire [3:0]counter;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter[3]_i_5_n_0 ;
  wire \counter[3]_i_6_n_0 ;
  wire \counter[3]_i_7_n_0 ;
  wire \counter[3]_i_8_n_0 ;
  wire \counter_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
  wire [7:0]\internal_buffer_reg[7] ;
  wire mem_reg;
  wire [2:0]next_state;
  wire read_flag_i_1_n_0;
  wire read_flag_i_2_n_0;
  wire read_flag_i_3_n_0;
  wire read_flag_i_4_n_0;
  wire read_flag_i_5_n_0;
  wire read_flag_reg_n_0;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire rx_valid_i_3_n_0;
  wire tx_valid;
  wire tx_valid_reg;
  wire tx_valid_reg_0;

  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,IDLE:000,READ_DATA:100,READ_ADDR:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,IDLE:000,READ_DATA:100,READ_ADDR:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,IDLE:000,READ_DATA:100,READ_ADDR:011" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(next_state[2]),
        .Q(current_state[2]),
        .R(SR));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[0] 
       (.CLR(GND_2),
        .D(\FSM_sequential_next_state_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'h0041004100450041)) 
    \FSM_sequential_next_state_reg[0]_i_1 
       (.I0(SS_n_IBUF),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(MOSI_IBUF),
        .I5(read_flag_reg_n_0),
        .O(\FSM_sequential_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[1] 
       (.CLR(GND_2),
        .D(\FSM_sequential_next_state_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(next_state[1]));
  LUT6 #(
    .INIT(64'h0202030203020302)) 
    \FSM_sequential_next_state_reg[1]_i_1 
       (.I0(current_state[1]),
        .I1(SS_n_IBUF),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(MOSI_IBUF),
        .I5(read_flag_reg_n_0),
        .O(\FSM_sequential_next_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[2] 
       (.CLR(GND_2),
        .D(\FSM_sequential_next_state_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(VCC_2),
        .Q(next_state[2]));
  LUT6 #(
    .INIT(64'h5555555510000000)) 
    \FSM_sequential_next_state_reg[2]_i_1 
       (.I0(SS_n_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(read_flag_reg_n_0),
        .I4(MOSI_IBUF),
        .I5(current_state[2]),
        .O(\FSM_sequential_next_state_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_next_state_reg[2]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(\FSM_sequential_next_state_reg[2]_i_2_n_0 ));
  GND GND
       (.G(\<const0> ));
  GND GND_1
       (.G(GND_2));
  LUT6 #(
    .INIT(64'h0000004F0F0F0FFF)) 
    MISO_i_1
       (.I0(SS_n_IBUF),
        .I1(tx_valid),
        .I2(rst_n_IBUF),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .I5(current_state[2]),
        .O(MISO_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    MISO_i_4
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(SS_n_IBUF),
        .I3(current_state[2]),
        .O(MISO_reg_1));
  LUT6 #(
    .INIT(64'h0A0A0A800A0A0AA0)) 
    MISO_i_6
       (.I0(rst_n_IBUF),
        .I1(SS_n_IBUF),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(tx_valid),
        .O(MISO_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(tx_valid_reg_0),
        .Q(MISO_OBUF),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  VCC VCC_1
       (.P(VCC_2));
  LUT4 #(
    .INIT(16'h0047)) 
    \counter[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(Q[0]),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \counter[1]_i_1 
       (.I0(\counter[3]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \counter[2]_i_1 
       (.I0(\counter[3]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(counter[2]));
  LUT5 #(
    .INIT(32'hAAAEAFBE)) 
    \counter[3]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(SS_n_IBUF),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \counter[3]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter[3]_i_4_n_0 ),
        .O(counter[3]));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \counter[3]_i_3 
       (.I0(Q[2]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(current_state[1]),
        .I5(current_state[2]),
        .O(\counter[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00570000)) 
    \counter[3]_i_4 
       (.I0(current_state[2]),
        .I1(\counter[3]_i_5_n_0 ),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(Q[1]),
        .I5(\counter[3]_i_6_n_0 ),
        .O(\counter[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \counter[3]_i_5 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(tx_valid),
        .O(\counter[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h110F110011001100)) 
    \counter[3]_i_6 
       (.I0(rx_valid_i_3_n_0),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\counter[3]_i_7_n_0 ),
        .I5(\counter[3]_i_8_n_0 ),
        .O(\counter[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \counter[3]_i_7 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\counter[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFDFDFDF)) 
    \counter[3]_i_8 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(tx_valid),
        .I4(current_state[2]),
        .O(\counter[3]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .D(counter[0]),
        .Q(Q[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .D(counter[1]),
        .Q(Q[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .D(counter[2]),
        .Q(Q[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .D(counter[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \internal_buffer[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .O(E));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_2
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(WEA));
  LUT6 #(
    .INIT(64'hFFBFBABAAAAAAAAA)) 
    read_flag_i_1
       (.I0(read_flag_i_2_n_0),
        .I1(read_flag_i_3_n_0),
        .I2(current_state[2]),
        .I3(read_flag_i_4_n_0),
        .I4(rst_n_IBUF),
        .I5(read_flag_reg_n_0),
        .O(read_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    read_flag_i_2
       (.I0(current_state[0]),
        .I1(read_flag_i_5_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\counter_reg_n_0_[3] ),
        .I5(Q[2]),
        .O(read_flag_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    read_flag_i_3
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(read_flag_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    read_flag_i_4
       (.I0(tx_valid),
        .I1(Q[2]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(SS_n_IBUF),
        .O(read_flag_i_4_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    read_flag_i_5
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .O(read_flag_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_flag_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(read_flag_i_1_n_0),
        .Q(read_flag_reg_n_0),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \rx_data[0]_i_1 
       (.I0(Q[0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\rx_data[9]_i_2_n_0 ),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \rx_data[1]_i_1 
       (.I0(Q[0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\rx_data[9]_i_2_n_0 ),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \rx_data[2]_i_1 
       (.I0(Q[0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\rx_data[9]_i_2_n_0 ),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \rx_data[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\rx_data[9]_i_2_n_0 ),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \rx_data[4]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \rx_data[5]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \rx_data[6]_i_1 
       (.I0(Q[0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\rx_data[9]_i_2_n_0 ),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \rx_data[7]_i_1 
       (.I0(Q[0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\rx_data[9]_i_2_n_0 ),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \rx_data[8]_i_1 
       (.I0(\rx_data[9]_i_2_n_0 ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rx_data[9]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\rx_data[9]_i_2_n_0 ),
        .I4(\counter_reg_n_0_[3] ),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFAFFEAF)) 
    \rx_data[9]_i_2 
       (.I0(SS_n_IBUF),
        .I1(tx_valid),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .O(\rx_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[0]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(\internal_buffer_reg[7] [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[1]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(\internal_buffer_reg[7] [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[2]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(\internal_buffer_reg[7] [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[3]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(\internal_buffer_reg[7] [3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[4]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(\internal_buffer_reg[7] [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[5]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(\internal_buffer_reg[7] [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[6]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(\internal_buffer_reg[7] [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[7]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(\internal_buffer_reg[7] [7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[8]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(rx_data[8]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(MOSI_IBUF),
        .Q(rx_data[9]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFE26FEFE22260000)) 
    rx_valid_i_1
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(rx_valid_i_2_n_0),
        .I4(rx_valid_i_3_n_0),
        .I5(rx_valid),
        .O(rx_valid_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    rx_valid_i_2
       (.I0(tx_valid),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(SS_n_IBUF),
        .O(rx_valid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    rx_valid_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(Q[2]),
        .O(rx_valid_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    tx_valid_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(tx_valid),
        .O(tx_valid_reg));
endmodule

(* ADDR_SIZE = "8" *) (* MEM_DEPTH = "256" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_wrapper
   (MOSI,
    MISO,
    clk,
    SS_n,
    rst_n);
  input MOSI;
  output MISO;
  input clk;
  input SS_n;
  input rst_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire ram_n_0;
  wire ram_n_2;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire spi_n_1;
  wire spi_n_14;
  wire spi_n_15;
  wire spi_n_16;
  wire spi_n_17;
  wire spi_n_2;
  wire spi_n_3;
  wire spi_n_4;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  RAM ram
       (.CLK(clk_IBUF_BUFG),
        .E(spi_n_17),
        .\FSM_sequential_current_state_reg[1] (spi_n_15),
        .\FSM_sequential_current_state_reg[2] (spi_n_1),
        .MISO_reg(ram_n_2),
        .Q(rx_data),
        .SR(ram_n_0),
        .WEA(mem),
        .\counter_reg[2] ({spi_n_2,spi_n_3,spi_n_4}),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (spi_n_16),
        .\rx_data_reg[8]_0 (spi_n_14),
        .tx_valid(tx_valid));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  SPI spi
       (.CLK(clk_IBUF_BUFG),
        .E(spi_n_17),
        .MISO_OBUF(MISO_OBUF),
        .MISO_reg_0(spi_n_1),
        .MISO_reg_1(spi_n_15),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({spi_n_2,spi_n_3,spi_n_4}),
        .SR(ram_n_0),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .\internal_buffer_reg[7] (rx_data),
        .mem_reg(spi_n_16),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_valid(tx_valid),
        .tx_valid_reg(spi_n_14),
        .tx_valid_reg_0(ram_n_2));
endmodule
