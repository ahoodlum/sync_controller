// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Fri Jul 26 00:19:17 2013

//
// Verilog Description of module sync_controller_top
//

module sync_controller_top (uart_sin, uart_sout, led_pio_out, rst, sync_in, 
            sync_out);   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(11[8:27])
    input uart_sin;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(13[3:11])
    output uart_sout;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(14[3:12])
    output [3:0]led_pio_out;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(16[3:14])
    input rst;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(18[3:6])
    input sync_in;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(20[3:10])
    output sync_out;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(21[3:11])
    
    wire [15:0]reset_start;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(9[3:14])
    wire uart_sin_c;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(13[3:11])
    wire uart_sout_c;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(14[3:12])
    wire [3:0]led_pio_out_c;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(16[3:14])
    wire rst_c;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(18[3:6])
    wire sync_in_c;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(20[3:10])
    wire sync_out_c;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(21[3:11])
    wire clk_i_keep;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(82[9:14])
    wire ff_clr_i;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(83[9:17])
    wire clk_out_div512;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(84[8:22])
    wire [1:0]next_state;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(19[8:18])
    
    wire n59, n349, n478, n346, n369, n725, n363;
    
    VHI i2 (.Z(reset_start[15]));
    INV i138 (.A(rst_c), .Z(n369));
    sync_controller lm8_inst (.clk_i(clk_i_keep), .reset_n(reset_start[15]), 
            .LEDPIO_OUT({led_pio_out_c}), .uartSIN(uart_sin_c), .uartSOUT(uart_sout_c)) /* synthesis syn_instantiated=1 */ ;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/sync_controller_top.vhd(125[13:28])
    OSCH OSCInst0 (.STDBY(reset_start[14]), .SEDSTDBY(n59), .OSC(clk_i_keep)) /* synthesis lattice_noprune=1, NOM_FREQ="88.67", syn_instantiated=1 */ ;
    defparam OSCInst0.NOM_FREQ = "88.67";
    OB led_pio_out_pad_1 (.I(led_pio_out_c[1]), .O(led_pio_out[1]));
    OB led_pio_out_pad_2 (.I(led_pio_out_c[2]), .O(led_pio_out[2]));
    VLO i1 (.Z(reset_start[14]));
    OB led_pio_out_pad_3 (.I(led_pio_out_c[3]), .O(led_pio_out[3]));
    OB uart_sout_pad (.I(uart_sout_c), .O(uart_sout));
    dff_async_rst ff1 (.sync_out_c(sync_out_c), .sync_in_c(sync_in_c), .VCC_net(reset_start[15]), 
            .ff_clr_i(ff_clr_i), .n725(n725));
    FD1S1A i130 (.D(n349), .CK(n478), .Q(next_state[0]));
    defparam i130.GSR = "DISABLED";
    OB led_pio_out_pad_0 (.I(led_pio_out_c[0]), .O(led_pio_out[0]));
    PUR PUR_INST (.PUR(reset_start[15]));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n725)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1S1A i126 (.D(n346), .CK(n363), .Q(next_state[1]));
    defparam i126.GSR = "DISABLED";
    one_shot_counter counter1 (.GND_net(reset_start[14]), .ff_clr_i(ff_clr_i), 
            .clk_out_div512(clk_out_div512), .n346(n346), .n363(n363), 
            .n478(n478), .n349(n349), .next_state({next_state}));
    GSR GSR_INST (.GSR(n369));
    OB sync_out_pad (.I(sync_out_c), .O(sync_out));
    IB uart_sin_pad (.I(uart_sin), .O(uart_sin_c));
    IB rst_pad (.I(rst), .O(rst_c));
    IB sync_in_pad (.I(sync_in), .O(sync_in_c));
    \clock_divider(512)  clk_div (.clk_out_div512(clk_out_div512), .clk_i_keep(clk_i_keep), 
            .GND_net(reset_start[14]));
    
endmodule

//
// Verilog Description of module sync_controller
// module not written out since it is a black-box. 
//


//
// Verilog Description of module dff_async_rst
//

module dff_async_rst (sync_out_c, sync_in_c, VCC_net, ff_clr_i, n725);
    output sync_out_c;
    input sync_in_c;
    input VCC_net;
    input ff_clr_i;
    input n725;
    
    
    OFS1P3DX q_8 (.D(n725), .SP(VCC_net), .SCLK(sync_in_c), .CD(ff_clr_i), 
            .Q(sync_out_c));
    defparam q_8.GSR = "DISABLED";
    
endmodule

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


//
// Verilog Description of module one_shot_counter
//

module one_shot_counter (GND_net, ff_clr_i, clk_out_div512, n346, n363, 
            n478, n349, next_state);
    input GND_net;
    output ff_clr_i;
    input clk_out_div512;
    output n346;
    output n363;
    output n478;
    output n349;
    input [1:0]next_state;
    
    wire [30:0]counter;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(21[8:15])
    wire [1:0]state;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(18[8:13])
    
    wire n631, n632, n619;
    wire [30:0]n130;
    
    wire n620, n634, n635, n633, n618, n630, n617, n370, n616, 
        n615, n625, n626, n628, n629, n41, n214, n627, n34, 
        n44, n614, n30, n42, n613, n48, n29, n40, n39, n50, 
        n45, n623, n8, n644, n622, n612, n611, n610, n638, 
        n621, n609, n637, n636;
    
    CCU2D add_348_16 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n631), .COUT(n632));
    defparam add_348_16.INIT0 = 16'h5555;
    defparam add_348_16.INIT1 = 16'h5555;
    defparam add_348_16.INJECT1_0 = "NO";
    defparam add_348_16.INJECT1_1 = "NO";
    FD1S3AX rst_out_29 (.D(state[1]), .CK(clk_out_div512), .Q(ff_clr_i));
    defparam rst_out_29.GSR = "DISABLED";
    CCU2D counter_38_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n619), .COUT(n620), .S0(n130[21]), .S1(n130[22]));
    defparam counter_38_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_23.INJECT1_0 = "NO";
    defparam counter_38_add_4_23.INJECT1_1 = "NO";
    CCU2D add_348_22 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n634), .COUT(n635));
    defparam add_348_22.INIT0 = 16'h5555;
    defparam add_348_22.INIT1 = 16'h5555;
    defparam add_348_22.INJECT1_0 = "NO";
    defparam add_348_22.INJECT1_1 = "NO";
    CCU2D add_348_20 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n633), .COUT(n634));
    defparam add_348_20.INIT0 = 16'h5555;
    defparam add_348_20.INIT1 = 16'h5555;
    defparam add_348_20.INJECT1_0 = "NO";
    defparam add_348_20.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n618), .COUT(n619), .S0(n130[19]), .S1(n130[20]));
    defparam counter_38_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_21.INJECT1_0 = "NO";
    defparam counter_38_add_4_21.INJECT1_1 = "NO";
    CCU2D add_348_14 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n630), .COUT(n631));
    defparam add_348_14.INIT0 = 16'h5aaa;
    defparam add_348_14.INIT1 = 16'h5555;
    defparam add_348_14.INJECT1_0 = "NO";
    defparam add_348_14.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n617), .COUT(n618), .S0(n130[17]), .S1(n130[18]));
    defparam counter_38_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_19.INJECT1_0 = "NO";
    defparam counter_38_add_4_19.INJECT1_1 = "NO";
    FD1S3IX counter_38__i0 (.D(n130[0]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[0]));
    defparam counter_38__i0.GSR = "DISABLED";
    LUT4 i367_2_lut (.A(state[0]), .B(state[1]), .Z(n370)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i367_2_lut.init = 16'h1111;
    CCU2D counter_38_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n616), .COUT(n617), .S0(n130[15]), .S1(n130[16]));
    defparam counter_38_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_17.INJECT1_0 = "NO";
    defparam counter_38_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n615), .COUT(n616), .S0(n130[13]), .S1(n130[14]));
    defparam counter_38_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_15.INJECT1_0 = "NO";
    defparam counter_38_add_4_15.INJECT1_1 = "NO";
    CCU2D add_348_4 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n625), .COUT(n626));
    defparam add_348_4.INIT0 = 16'h5aaa;
    defparam add_348_4.INIT1 = 16'h5555;
    defparam add_348_4.INJECT1_0 = "NO";
    defparam add_348_4.INJECT1_1 = "NO";
    CCU2D add_348_2 (.A0(counter[3]), .B0(counter[2]), .C0(GND_net), .D0(GND_net), 
          .A1(counter[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n625));
    defparam add_348_2.INIT0 = 16'h1000;
    defparam add_348_2.INIT1 = 16'h5555;
    defparam add_348_2.INJECT1_0 = "NO";
    defparam add_348_2.INJECT1_1 = "NO";
    CCU2D add_348_10 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n628), .COUT(n629));
    defparam add_348_10.INIT0 = 16'h5aaa;
    defparam add_348_10.INIT1 = 16'h5555;
    defparam add_348_10.INJECT1_0 = "NO";
    defparam add_348_10.INJECT1_1 = "NO";
    LUT4 i136_2_lut (.A(state[0]), .B(state[1]), .Z(n346)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i136_2_lut.init = 16'h6666;
    LUT4 i1_4_lut (.A(state[0]), .B(n41), .C(n214), .D(state[1]), .Z(n363)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hf577;
    CCU2D add_348_8 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n627), .COUT(n628));
    defparam add_348_8.INIT0 = 16'h5555;
    defparam add_348_8.INIT1 = 16'h5555;
    defparam add_348_8.INJECT1_0 = "NO";
    defparam add_348_8.INJECT1_1 = "NO";
    CCU2D add_348_12 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n629), .COUT(n630));
    defparam add_348_12.INIT0 = 16'h5aaa;
    defparam add_348_12.INIT1 = 16'h5555;
    defparam add_348_12.INJECT1_0 = "NO";
    defparam add_348_12.INJECT1_1 = "NO";
    LUT4 i8_2_lut (.A(counter[17]), .B(counter[22]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i18_4_lut (.A(counter[28]), .B(counter[20]), .C(counter[18]), 
         .D(counter[24]), .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i18_4_lut.init = 16'hfffe;
    CCU2D add_348_18 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n632), .COUT(n633));
    defparam add_348_18.INIT0 = 16'h5555;
    defparam add_348_18.INIT1 = 16'h5555;
    defparam add_348_18.INJECT1_0 = "NO";
    defparam add_348_18.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n614), .COUT(n615), .S0(n130[11]), .S1(n130[12]));
    defparam counter_38_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_13.INJECT1_0 = "NO";
    defparam counter_38_add_4_13.INJECT1_1 = "NO";
    LUT4 i4_2_lut (.A(counter[26]), .B(counter[29]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i16_4_lut (.A(counter[6]), .B(counter[1]), .C(counter[21]), .D(counter[16]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    CCU2D counter_38_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n613), .COUT(n614), .S0(n130[9]), .S1(n130[10]));
    defparam counter_38_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_11.INJECT1_0 = "NO";
    defparam counter_38_add_4_11.INJECT1_1 = "NO";
    LUT4 i22_4_lut (.A(counter[30]), .B(n44), .C(n34), .D(counter[25]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(counter[19]), .B(counter[2]), .Z(n29)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i14_4_lut (.A(counter[9]), .B(counter[27]), .C(counter[10]), 
         .D(counter[3]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i13_2_lut (.A(counter[14]), .B(counter[7]), .Z(n39)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13_2_lut.init = 16'heeee;
    LUT4 i24_4_lut (.A(n29), .B(n48), .C(n42), .D(n30), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i19_4_lut (.A(counter[4]), .B(counter[0]), .C(counter[23]), .D(counter[12]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    CCU2D counter_38_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n623), .S0(n130[29]), .S1(n130[30]));
    defparam counter_38_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_31.INJECT1_0 = "NO";
    defparam counter_38_add_4_31.INJECT1_1 = "NO";
    LUT4 i3_3_lut (.A(counter[11]), .B(counter[8]), .C(counter[13]), .Z(n8)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3_3_lut.init = 16'h8080;
    LUT4 i25_4_lut (.A(n45), .B(n50), .C(n39), .D(n40), .Z(n644)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i25_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_1 (.A(n644), .B(counter[5]), .C(n8), .D(counter[15]), 
         .Z(n41)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut_adj_1.init = 16'hbfff;
    CCU2D counter_38_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n622), .COUT(n623), .S0(n130[27]), .S1(n130[28]));
    defparam counter_38_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_29.INJECT1_0 = "NO";
    defparam counter_38_add_4_29.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n612), .COUT(n613), .S0(n130[7]), .S1(n130[8]));
    defparam counter_38_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_9.INJECT1_0 = "NO";
    defparam counter_38_add_4_9.INJECT1_1 = "NO";
    LUT4 i363_4_lut (.A(n41), .B(state[0]), .C(n214), .D(state[1]), 
         .Z(n478)) /* synthesis lut_function=(A ((C (D))+!B)+!A ((C+!(D))+!B)) */ ;
    defparam i363_4_lut.init = 16'hf377;
    FD1S3IX counter_38__i30 (.D(n130[30]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[30]));
    defparam counter_38__i30.GSR = "DISABLED";
    CCU2D counter_38_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n611), .COUT(n612), .S0(n130[5]), .S1(n130[6]));
    defparam counter_38_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_7.INJECT1_0 = "NO";
    defparam counter_38_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n610), .COUT(n611), .S0(n130[3]), .S1(n130[4]));
    defparam counter_38_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_5.INJECT1_0 = "NO";
    defparam counter_38_add_4_5.INJECT1_1 = "NO";
    INV i135 (.A(state[0]), .Z(n349));
    FD1S3IX counter_38__i29 (.D(n130[29]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[29]));
    defparam counter_38__i29.GSR = "DISABLED";
    FD1S3IX counter_38__i28 (.D(n130[28]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[28]));
    defparam counter_38__i28.GSR = "DISABLED";
    FD1S3IX counter_38__i27 (.D(n130[27]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[27]));
    defparam counter_38__i27.GSR = "DISABLED";
    FD1S3IX counter_38__i26 (.D(n130[26]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[26]));
    defparam counter_38__i26.GSR = "DISABLED";
    FD1S3IX counter_38__i25 (.D(n130[25]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[25]));
    defparam counter_38__i25.GSR = "DISABLED";
    FD1S3IX counter_38__i24 (.D(n130[24]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[24]));
    defparam counter_38__i24.GSR = "DISABLED";
    FD1S3IX counter_38__i23 (.D(n130[23]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[23]));
    defparam counter_38__i23.GSR = "DISABLED";
    FD1S3IX counter_38__i22 (.D(n130[22]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[22]));
    defparam counter_38__i22.GSR = "DISABLED";
    FD1S3IX counter_38__i21 (.D(n130[21]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[21]));
    defparam counter_38__i21.GSR = "DISABLED";
    FD1S3IX counter_38__i20 (.D(n130[20]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[20]));
    defparam counter_38__i20.GSR = "DISABLED";
    FD1S3IX counter_38__i19 (.D(n130[19]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[19]));
    defparam counter_38__i19.GSR = "DISABLED";
    FD1S3IX counter_38__i18 (.D(n130[18]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[18]));
    defparam counter_38__i18.GSR = "DISABLED";
    FD1S3IX counter_38__i17 (.D(n130[17]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[17]));
    defparam counter_38__i17.GSR = "DISABLED";
    FD1S3IX counter_38__i16 (.D(n130[16]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[16]));
    defparam counter_38__i16.GSR = "DISABLED";
    FD1S3IX counter_38__i15 (.D(n130[15]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[15]));
    defparam counter_38__i15.GSR = "DISABLED";
    FD1S3IX counter_38__i14 (.D(n130[14]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[14]));
    defparam counter_38__i14.GSR = "DISABLED";
    FD1S3IX counter_38__i13 (.D(n130[13]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[13]));
    defparam counter_38__i13.GSR = "DISABLED";
    FD1S3IX counter_38__i12 (.D(n130[12]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[12]));
    defparam counter_38__i12.GSR = "DISABLED";
    FD1S3IX counter_38__i11 (.D(n130[11]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[11]));
    defparam counter_38__i11.GSR = "DISABLED";
    FD1S3IX counter_38__i10 (.D(n130[10]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[10]));
    defparam counter_38__i10.GSR = "DISABLED";
    FD1S3IX counter_38__i9 (.D(n130[9]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[9]));
    defparam counter_38__i9.GSR = "DISABLED";
    FD1S3IX counter_38__i8 (.D(n130[8]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[8]));
    defparam counter_38__i8.GSR = "DISABLED";
    FD1S3IX counter_38__i7 (.D(n130[7]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[7]));
    defparam counter_38__i7.GSR = "DISABLED";
    FD1S3IX counter_38__i6 (.D(n130[6]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[6]));
    defparam counter_38__i6.GSR = "DISABLED";
    FD1S3IX counter_38__i5 (.D(n130[5]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[5]));
    defparam counter_38__i5.GSR = "DISABLED";
    FD1S3IX counter_38__i4 (.D(n130[4]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[4]));
    defparam counter_38__i4.GSR = "DISABLED";
    FD1S3IX counter_38__i3 (.D(n130[3]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[3]));
    defparam counter_38__i3.GSR = "DISABLED";
    FD1S3IX counter_38__i2 (.D(n130[2]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[2]));
    defparam counter_38__i2.GSR = "DISABLED";
    FD1S3IX counter_38__i1 (.D(n130[1]), .CK(clk_out_div512), .CD(n370), 
            .Q(counter[1]));
    defparam counter_38__i1.GSR = "DISABLED";
    CCU2D add_348_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n638), 
          .S0(n214));
    defparam add_348_cout.INIT0 = 16'h0000;
    defparam add_348_cout.INIT1 = 16'h0000;
    defparam add_348_cout.INJECT1_0 = "NO";
    defparam add_348_cout.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n621), .COUT(n622), .S0(n130[25]), .S1(n130[26]));
    defparam counter_38_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_27.INJECT1_0 = "NO";
    defparam counter_38_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n609), .COUT(n610), .S0(n130[1]), .S1(n130[2]));
    defparam counter_38_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_3.INJECT1_0 = "NO";
    defparam counter_38_add_4_3.INJECT1_1 = "NO";
    FD1S3AX state_i1 (.D(next_state[1]), .CK(clk_out_div512), .Q(state[1]));
    defparam state_i1.GSR = "DISABLED";
    CCU2D add_348_28 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n637), .COUT(n638));
    defparam add_348_28.INIT0 = 16'h5555;
    defparam add_348_28.INIT1 = 16'h5555;
    defparam add_348_28.INJECT1_0 = "NO";
    defparam add_348_28.INJECT1_1 = "NO";
    CCU2D add_348_26 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n636), .COUT(n637));
    defparam add_348_26.INIT0 = 16'h5555;
    defparam add_348_26.INIT1 = 16'h5555;
    defparam add_348_26.INJECT1_0 = "NO";
    defparam add_348_26.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n620), .COUT(n621), .S0(n130[23]), .S1(n130[24]));
    defparam counter_38_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_38_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_38_add_4_25.INJECT1_0 = "NO";
    defparam counter_38_add_4_25.INJECT1_1 = "NO";
    FD1S3AX state_i0 (.D(next_state[0]), .CK(clk_out_div512), .Q(state[0]));
    defparam state_i0.GSR = "DISABLED";
    CCU2D add_348_6 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n626), .COUT(n627));
    defparam add_348_6.INIT0 = 16'h5555;
    defparam add_348_6.INIT1 = 16'h5aaa;
    defparam add_348_6.INJECT1_0 = "NO";
    defparam add_348_6.INJECT1_1 = "NO";
    CCU2D counter_38_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n609), .S1(n130[0]));
    defparam counter_38_add_4_1.INIT0 = 16'hF000;
    defparam counter_38_add_4_1.INIT1 = 16'h0555;
    defparam counter_38_add_4_1.INJECT1_0 = "NO";
    defparam counter_38_add_4_1.INJECT1_1 = "NO";
    CCU2D add_348_24 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n635), .COUT(n636));
    defparam add_348_24.INIT0 = 16'h5555;
    defparam add_348_24.INIT1 = 16'h5555;
    defparam add_348_24.INJECT1_0 = "NO";
    defparam add_348_24.INJECT1_1 = "NO";
    
endmodule

//
// Verilog Description of module \clock_divider(512) 
//

module \clock_divider(512)  (clk_out_div512, clk_i_keep, GND_net);
    output clk_out_div512;
    input clk_i_keep;
    input GND_net;
    
    wire [8:0]\clkdiv_proc:count ;   // c:/users/andrewpc1/documents/work/fpga/sync_controller/clock_divider.vhd(33[14:19])
    
    wire n341;
    wire [8:0]n42;
    
    wire n604, n180, n10, n14, n500, n607, n606, n605;
    
    FD1S3AX clk_out_i_20 (.D(n341), .CK(clk_i_keep), .Q(clk_out_div512));
    defparam clk_out_i_20.GSR = "ENABLED";
    CCU2D \clkdiv_proc:count_39_add_4_1  (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\clkdiv_proc:count [0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n604), .S1(n42[0]));
    defparam \clkdiv_proc:count_39_add_4_1 .INIT0 = 16'hF000;
    defparam \clkdiv_proc:count_39_add_4_1 .INIT1 = 16'h0555;
    defparam \clkdiv_proc:count_39_add_4_1 .INJECT1_0 = "NO";
    defparam \clkdiv_proc:count_39_add_4_1 .INJECT1_1 = "NO";
    FD1S3IX \clkdiv_proc:count_39__i0  (.D(n42[0]), .CK(clk_i_keep), .CD(n180), 
            .Q(\clkdiv_proc:count [0]));
    defparam \clkdiv_proc:count_39__i0 .GSR = "ENABLED";
    LUT4 i2_2_lut (.A(\clkdiv_proc:count [6]), .B(\clkdiv_proc:count [4]), 
         .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i6_4_lut (.A(\clkdiv_proc:count [3]), .B(\clkdiv_proc:count [7]), 
         .C(\clkdiv_proc:count [1]), .D(\clkdiv_proc:count [5]), .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(\clkdiv_proc:count [0]), .B(n14), .C(n10), .D(\clkdiv_proc:count [2]), 
         .Z(n500)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i15_3_lut (.A(clk_out_div512), .B(n500), .Z(n341)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_3_lut.init = 16'h6666;
    LUT4 i274_2_lut (.A(\clkdiv_proc:count [8]), .B(n500), .Z(n180)) /* synthesis lut_function=(A (B)) */ ;
    defparam i274_2_lut.init = 16'h8888;
    FD1S3IX \clkdiv_proc:count_39__i8  (.D(n42[8]), .CK(clk_i_keep), .CD(n180), 
            .Q(\clkdiv_proc:count [8]));
    defparam \clkdiv_proc:count_39__i8 .GSR = "ENABLED";
    FD1S3IX \clkdiv_proc:count_39__i7  (.D(n42[7]), .CK(clk_i_keep), .CD(n180), 
            .Q(\clkdiv_proc:count [7]));
    defparam \clkdiv_proc:count_39__i7 .GSR = "ENABLED";
    FD1S3IX \clkdiv_proc:count_39__i6  (.D(n42[6]), .CK(clk_i_keep), .CD(n180), 
            .Q(\clkdiv_proc:count [6]));
    defparam \clkdiv_proc:count_39__i6 .GSR = "ENABLED";
    FD1S3IX \clkdiv_proc:count_39__i5  (.D(n42[5]), .CK(clk_i_keep), .CD(n180), 
            .Q(\clkdiv_proc:count [5]));
    defparam \clkdiv_proc:count_39__i5 .GSR = "ENABLED";
    FD1S3IX \clkdiv_proc:count_39__i4  (.D(n42[4]), .CK(clk_i_keep), .CD(n180), 
            .Q(\clkdiv_proc:count [4]));
    defparam \clkdiv_proc:count_39__i4 .GSR = "ENABLED";
    FD1S3IX \clkdiv_proc:count_39__i3  (.D(n42[3]), .CK(clk_i_keep), .CD(n180), 
            .Q(\clkdiv_proc:count [3]));
    defparam \clkdiv_proc:count_39__i3 .GSR = "ENABLED";
    FD1S3IX \clkdiv_proc:count_39__i2  (.D(n42[2]), .CK(clk_i_keep), .CD(n180), 
            .Q(\clkdiv_proc:count [2]));
    defparam \clkdiv_proc:count_39__i2 .GSR = "ENABLED";
    FD1S3IX \clkdiv_proc:count_39__i1  (.D(n42[1]), .CK(clk_i_keep), .CD(n180), 
            .Q(\clkdiv_proc:count [1]));
    defparam \clkdiv_proc:count_39__i1 .GSR = "ENABLED";
    CCU2D \clkdiv_proc:count_39_add_4_9  (.A0(\clkdiv_proc:count [7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clkdiv_proc:count [8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n607), .S0(n42[7]), .S1(n42[8]));
    defparam \clkdiv_proc:count_39_add_4_9 .INIT0 = 16'hfaaa;
    defparam \clkdiv_proc:count_39_add_4_9 .INIT1 = 16'hfaaa;
    defparam \clkdiv_proc:count_39_add_4_9 .INJECT1_0 = "NO";
    defparam \clkdiv_proc:count_39_add_4_9 .INJECT1_1 = "NO";
    CCU2D \clkdiv_proc:count_39_add_4_7  (.A0(\clkdiv_proc:count [5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clkdiv_proc:count [6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n606), .COUT(n607), .S0(n42[5]), 
          .S1(n42[6]));
    defparam \clkdiv_proc:count_39_add_4_7 .INIT0 = 16'hfaaa;
    defparam \clkdiv_proc:count_39_add_4_7 .INIT1 = 16'hfaaa;
    defparam \clkdiv_proc:count_39_add_4_7 .INJECT1_0 = "NO";
    defparam \clkdiv_proc:count_39_add_4_7 .INJECT1_1 = "NO";
    CCU2D \clkdiv_proc:count_39_add_4_5  (.A0(\clkdiv_proc:count [3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clkdiv_proc:count [4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n605), .COUT(n606), .S0(n42[3]), 
          .S1(n42[4]));
    defparam \clkdiv_proc:count_39_add_4_5 .INIT0 = 16'hfaaa;
    defparam \clkdiv_proc:count_39_add_4_5 .INIT1 = 16'hfaaa;
    defparam \clkdiv_proc:count_39_add_4_5 .INJECT1_0 = "NO";
    defparam \clkdiv_proc:count_39_add_4_5 .INJECT1_1 = "NO";
    CCU2D \clkdiv_proc:count_39_add_4_3  (.A0(\clkdiv_proc:count [1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\clkdiv_proc:count [2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n604), .COUT(n605), .S0(n42[1]), 
          .S1(n42[2]));
    defparam \clkdiv_proc:count_39_add_4_3 .INIT0 = 16'hfaaa;
    defparam \clkdiv_proc:count_39_add_4_3 .INIT1 = 16'hfaaa;
    defparam \clkdiv_proc:count_39_add_4_3 .INJECT1_0 = "NO";
    defparam \clkdiv_proc:count_39_add_4_3 .INJECT1_1 = "NO";
    
endmodule
