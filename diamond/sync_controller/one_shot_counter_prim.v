// Verilog netlist produced by program LSE :  version Diamond (64-bit) 2.1.0.103
// Netlist written on Mon Jul 29 22:01:48 2013

//
// Verilog Description of module one_shot_counter
//

module one_shot_counter (clk, ce, reset_start, reset_stop, rst_out);   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(5[8:24])
    input clk;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(7[3:6])
    input ce;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(8[3:5])
    input [15:0]reset_start;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(9[3:14])
    input [15:0]reset_stop;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(10[3:13])
    output rst_out;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(11[3:10])
    
    wire clk_c;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(7[3:6])
    wire ce_c;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(8[3:5])
    wire [15:0]reset_start_c;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(9[3:14])
    wire [15:0]reset_stop_c;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(10[3:13])
    wire rst_out_c;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(11[3:10])
    wire [1:0]state;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(18[8:13])
    wire [1:0]next_state;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(19[8:18])
    wire [30:0]counter;   // c:/lscc/diamond/2.0/examples/../../../../users/andrewpc1/documents/work/fpga/sync_controller/one_shot_counter.vhd(21[8:15])
    
    wire GND_net, VCC_net, n10, n514, n446;
    wire [30:0]n130;
    
    wire n480, n513, n512, n511, n510, n509, n508, n507, n506, 
        n505, n504, n503, n502, n501, n388, n484, n467, n516, 
        n492, n483, n481, n500, n499, n498, n497, n496, n495, 
        n490, n489, n488, n487, n486, n485, n468, n470, n491, 
        n494, n493, n482, n515;
    
    VHI i2 (.Z(VCC_net));
    INV i117 (.A(state[0]), .Z(n468));
    CCU2D sub_53_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[0]), .B1(reset_stop_c[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n486));
    defparam sub_53_add_2_1.INIT0 = 16'h0000;
    defparam sub_53_add_2_1.INIT1 = 16'h5999;
    defparam sub_53_add_2_1.INJECT1_0 = "NO";
    defparam sub_53_add_2_1.INJECT1_1 = "NO";
    CCU2D equal_7_22 (.A0(counter[27]), .B0(counter[26]), .C0(counter[25]), 
          .D0(counter[24]), .A1(counter[23]), .B1(counter[22]), .C1(counter[21]), 
          .D1(counter[20]), .CIN(n480), .COUT(n481));
    defparam equal_7_22.INIT0 = 16'h0001;
    defparam equal_7_22.INIT1 = 16'h0001;
    defparam equal_7_22.INJECT1_0 = "YES";
    defparam equal_7_22.INJECT1_1 = "YES";
    GSR GSR_INST (.GSR(VCC_net));
    IB ce_pad (.I(ce), .O(ce_c));
    IB clk_pad (.I(clk), .O(clk_c));
    CCU2D sub_53_add_2_15 (.A0(counter[13]), .B0(reset_stop_c[13]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(reset_stop_c[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n492), .COUT(n493));
    defparam sub_53_add_2_15.INIT0 = 16'h5999;
    defparam sub_53_add_2_15.INIT1 = 16'h5999;
    defparam sub_53_add_2_15.INJECT1_0 = "NO";
    defparam sub_53_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_13 (.A0(counter[11]), .B0(reset_stop_c[11]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(reset_stop_c[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n491), .COUT(n492));
    defparam sub_53_add_2_13.INIT0 = 16'h5999;
    defparam sub_53_add_2_13.INIT1 = 16'h5999;
    defparam sub_53_add_2_13.INJECT1_0 = "NO";
    defparam sub_53_add_2_13.INJECT1_1 = "NO";
    OB rst_out_pad (.I(rst_out_c), .O(rst_out));
    FD1S1A i109 (.D(n446), .CK(n470), .Q(next_state[1]));
    defparam i109.GSR = "DISABLED";
    CCU2D equal_7_28 (.A0(counter[9]), .B0(reset_start_c[9]), .C0(counter[8]), 
          .D0(reset_start_c[8]), .A1(counter[7]), .B1(reset_start_c[7]), 
          .C1(counter[6]), .D1(reset_start_c[6]), .CIN(n483), .COUT(n484));
    defparam equal_7_28.INIT0 = 16'h9009;
    defparam equal_7_28.INIT1 = 16'h9009;
    defparam equal_7_28.INJECT1_0 = "YES";
    defparam equal_7_28.INJECT1_1 = "YES";
    LUT4 i132_2_lut (.A(state[0]), .B(state[1]), .Z(n467)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i132_2_lut.init = 16'h1111;
    LUT4 i115_2_lut (.A(state[0]), .B(state[1]), .Z(n446)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i115_2_lut.init = 16'h6666;
    CCU2D counter_59_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n511), .COUT(n512), .S0(n130[19]), .S1(n130[20]));
    defparam counter_59_add_4_21.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_21.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_21.INJECT1_0 = "NO";
    defparam counter_59_add_4_21.INJECT1_1 = "NO";
    CCU2D equal_7_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[30]), .B1(counter[29]), .C1(counter[28]), .D1(GND_net), 
          .COUT(n480));
    defparam equal_7_0.INIT0 = 16'hF000;
    defparam equal_7_0.INIT1 = 16'h0101;
    defparam equal_7_0.INJECT1_0 = "NO";
    defparam equal_7_0.INJECT1_1 = "YES";
    IB reset_start_pad_15 (.I(reset_start[15]), .O(reset_start_c[15]));
    FD1S3IX counter_59__i30 (.D(n130[30]), .CK(clk_c), .CD(n467), .Q(counter[30]));
    defparam counter_59__i30.GSR = "DISABLED";
    CCU2D counter_59_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n516), .S0(n130[29]), .S1(n130[30]));
    defparam counter_59_add_4_31.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_31.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_31.INJECT1_0 = "NO";
    defparam counter_59_add_4_31.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_11 (.A0(counter[9]), .B0(reset_stop_c[9]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(reset_stop_c[10]), .C1(GND_net), 
          .D1(GND_net), .CIN(n490), .COUT(n491));
    defparam sub_53_add_2_11.INIT0 = 16'h5999;
    defparam sub_53_add_2_11.INIT1 = 16'h5999;
    defparam sub_53_add_2_11.INJECT1_0 = "NO";
    defparam sub_53_add_2_11.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n515), .COUT(n516), .S0(n130[27]), .S1(n130[28]));
    defparam counter_59_add_4_29.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_29.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_29.INJECT1_0 = "NO";
    defparam counter_59_add_4_29.INJECT1_1 = "NO";
    CCU2D equal_7_26 (.A0(counter[13]), .B0(reset_start_c[13]), .C0(counter[12]), 
          .D0(reset_start_c[12]), .A1(counter[11]), .B1(reset_start_c[11]), 
          .C1(counter[10]), .D1(reset_start_c[10]), .CIN(n482), .COUT(n483));
    defparam equal_7_26.INIT0 = 16'h9009;
    defparam equal_7_26.INIT1 = 16'h9009;
    defparam equal_7_26.INJECT1_0 = "YES";
    defparam equal_7_26.INJECT1_1 = "YES";
    CCU2D counter_59_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n514), .COUT(n515), .S0(n130[25]), .S1(n130[26]));
    defparam counter_59_add_4_27.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_27.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_27.INJECT1_0 = "NO";
    defparam counter_59_add_4_27.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n513), .COUT(n514), .S0(n130[23]), .S1(n130[24]));
    defparam counter_59_add_4_25.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_25.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_25.INJECT1_0 = "NO";
    defparam counter_59_add_4_25.INJECT1_1 = "NO";
    FD1S3IX counter_59__i0 (.D(n130[0]), .CK(clk_c), .CD(n467), .Q(counter[0]));
    defparam counter_59__i0.GSR = "DISABLED";
    CCU2D counter_59_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n510), .COUT(n511), .S0(n130[17]), .S1(n130[18]));
    defparam counter_59_add_4_19.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_19.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_19.INJECT1_0 = "NO";
    defparam counter_59_add_4_19.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n509), .COUT(n510), .S0(n130[15]), .S1(n130[16]));
    defparam counter_59_add_4_17.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_17.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_17.INJECT1_0 = "NO";
    defparam counter_59_add_4_17.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n508), .COUT(n509), .S0(n130[13]), .S1(n130[14]));
    defparam counter_59_add_4_15.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_15.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_15.INJECT1_0 = "NO";
    defparam counter_59_add_4_15.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n507), .COUT(n508), .S0(n130[11]), .S1(n130[12]));
    defparam counter_59_add_4_13.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_13.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_13.INJECT1_0 = "NO";
    defparam counter_59_add_4_13.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n506), .COUT(n507), .S0(n130[9]), .S1(n130[10]));
    defparam counter_59_add_4_11.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_11.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_11.INJECT1_0 = "NO";
    defparam counter_59_add_4_11.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n505), .COUT(n506), .S0(n130[7]), .S1(n130[8]));
    defparam counter_59_add_4_9.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_9.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_9.INJECT1_0 = "NO";
    defparam counter_59_add_4_9.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n504), .COUT(n505), .S0(n130[5]), .S1(n130[6]));
    defparam counter_59_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_7.INJECT1_0 = "NO";
    defparam counter_59_add_4_7.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n503), .COUT(n504), .S0(n130[3]), .S1(n130[4]));
    defparam counter_59_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_5.INJECT1_0 = "NO";
    defparam counter_59_add_4_5.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n502), .COUT(n503), .S0(n130[1]), .S1(n130[2]));
    defparam counter_59_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_3.INJECT1_0 = "NO";
    defparam counter_59_add_4_3.INJECT1_1 = "NO";
    CCU2D counter_59_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n502), .S1(n130[0]));
    defparam counter_59_add_4_1.INIT0 = 16'hF000;
    defparam counter_59_add_4_1.INIT1 = 16'h0555;
    defparam counter_59_add_4_1.INJECT1_0 = "NO";
    defparam counter_59_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n501), .S0(n388));
    defparam sub_53_add_2_cout.INIT0 = 16'h0000;
    defparam sub_53_add_2_cout.INIT1 = 16'h0000;
    defparam sub_53_add_2_cout.INJECT1_0 = "NO";
    defparam sub_53_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n500), .COUT(n501));
    defparam sub_53_add_2_31.INIT0 = 16'h5555;
    defparam sub_53_add_2_31.INIT1 = 16'h5555;
    defparam sub_53_add_2_31.INJECT1_0 = "NO";
    defparam sub_53_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n499), .COUT(n500));
    defparam sub_53_add_2_29.INIT0 = 16'h5555;
    defparam sub_53_add_2_29.INIT1 = 16'h5555;
    defparam sub_53_add_2_29.INJECT1_0 = "NO";
    defparam sub_53_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n498), .COUT(n499));
    defparam sub_53_add_2_27.INIT0 = 16'h5555;
    defparam sub_53_add_2_27.INIT1 = 16'h5555;
    defparam sub_53_add_2_27.INJECT1_0 = "NO";
    defparam sub_53_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n497), .COUT(n498));
    defparam sub_53_add_2_25.INIT0 = 16'h5555;
    defparam sub_53_add_2_25.INIT1 = 16'h5555;
    defparam sub_53_add_2_25.INJECT1_0 = "NO";
    defparam sub_53_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n496), .COUT(n497));
    defparam sub_53_add_2_23.INIT0 = 16'h5555;
    defparam sub_53_add_2_23.INIT1 = 16'h5555;
    defparam sub_53_add_2_23.INJECT1_0 = "NO";
    defparam sub_53_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n495), .COUT(n496));
    defparam sub_53_add_2_21.INIT0 = 16'h5555;
    defparam sub_53_add_2_21.INIT1 = 16'h5555;
    defparam sub_53_add_2_21.INJECT1_0 = "NO";
    defparam sub_53_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_17 (.A0(counter[15]), .B0(reset_stop_c[15]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n493), .COUT(n494));
    defparam sub_53_add_2_17.INIT0 = 16'h5999;
    defparam sub_53_add_2_17.INIT1 = 16'h5555;
    defparam sub_53_add_2_17.INJECT1_0 = "NO";
    defparam sub_53_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_9 (.A0(counter[7]), .B0(reset_stop_c[7]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[8]), .B1(reset_stop_c[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n489), .COUT(n490));
    defparam sub_53_add_2_9.INIT0 = 16'h5999;
    defparam sub_53_add_2_9.INIT1 = 16'h5999;
    defparam sub_53_add_2_9.INJECT1_0 = "NO";
    defparam sub_53_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_7 (.A0(counter[5]), .B0(reset_stop_c[5]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(reset_stop_c[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n488), .COUT(n489));
    defparam sub_53_add_2_7.INIT0 = 16'h5999;
    defparam sub_53_add_2_7.INIT1 = 16'h5999;
    defparam sub_53_add_2_7.INJECT1_0 = "NO";
    defparam sub_53_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_53_add_2_5 (.A0(counter[3]), .B0(reset_stop_c[3]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(reset_stop_c[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n487), .COUT(n488));
    defparam sub_53_add_2_5.INIT0 = 16'h5999;
    defparam sub_53_add_2_5.INIT1 = 16'h5999;
    defparam sub_53_add_2_5.INJECT1_0 = "NO";
    defparam sub_53_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(state[0]), .B(n10), .C(n388), .D(state[1]), .Z(n470)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hf5dd;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2D sub_53_add_2_3 (.A0(counter[1]), .B0(reset_stop_c[1]), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(reset_stop_c[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n486), .COUT(n487));
    defparam sub_53_add_2_3.INIT0 = 16'h5999;
    defparam sub_53_add_2_3.INIT1 = 16'h5999;
    defparam sub_53_add_2_3.INJECT1_0 = "NO";
    defparam sub_53_add_2_3.INJECT1_1 = "NO";
    CCU2D equal_7_31 (.A0(counter[1]), .B0(reset_start_c[1]), .C0(counter[0]), 
          .D0(reset_start_c[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n485), .S1(n10));
    defparam equal_7_31.INIT0 = 16'h9009;
    defparam equal_7_31.INIT1 = 16'hFFFF;
    defparam equal_7_31.INJECT1_0 = "YES";
    defparam equal_7_31.INJECT1_1 = "NO";
    CCU2D equal_7_30 (.A0(counter[5]), .B0(reset_start_c[5]), .C0(counter[4]), 
          .D0(reset_start_c[4]), .A1(counter[3]), .B1(reset_start_c[3]), 
          .C1(counter[2]), .D1(reset_start_c[2]), .CIN(n484), .COUT(n485));
    defparam equal_7_30.INIT0 = 16'h9009;
    defparam equal_7_30.INIT1 = 16'h9009;
    defparam equal_7_30.INJECT1_0 = "YES";
    defparam equal_7_30.INJECT1_1 = "YES";
    CCU2D sub_53_add_2_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n494), .COUT(n495));
    defparam sub_53_add_2_19.INIT0 = 16'h5555;
    defparam sub_53_add_2_19.INIT1 = 16'h5555;
    defparam sub_53_add_2_19.INJECT1_0 = "NO";
    defparam sub_53_add_2_19.INJECT1_1 = "NO";
    FD1S3IX counter_59__i29 (.D(n130[29]), .CK(clk_c), .CD(n467), .Q(counter[29]));
    defparam counter_59__i29.GSR = "DISABLED";
    FD1S3IX counter_59__i28 (.D(n130[28]), .CK(clk_c), .CD(n467), .Q(counter[28]));
    defparam counter_59__i28.GSR = "DISABLED";
    FD1S3IX counter_59__i27 (.D(n130[27]), .CK(clk_c), .CD(n467), .Q(counter[27]));
    defparam counter_59__i27.GSR = "DISABLED";
    FD1S3IX counter_59__i26 (.D(n130[26]), .CK(clk_c), .CD(n467), .Q(counter[26]));
    defparam counter_59__i26.GSR = "DISABLED";
    FD1S3IX counter_59__i25 (.D(n130[25]), .CK(clk_c), .CD(n467), .Q(counter[25]));
    defparam counter_59__i25.GSR = "DISABLED";
    FD1S3IX counter_59__i24 (.D(n130[24]), .CK(clk_c), .CD(n467), .Q(counter[24]));
    defparam counter_59__i24.GSR = "DISABLED";
    FD1S3IX counter_59__i23 (.D(n130[23]), .CK(clk_c), .CD(n467), .Q(counter[23]));
    defparam counter_59__i23.GSR = "DISABLED";
    FD1S3IX counter_59__i22 (.D(n130[22]), .CK(clk_c), .CD(n467), .Q(counter[22]));
    defparam counter_59__i22.GSR = "DISABLED";
    FD1S3IX counter_59__i21 (.D(n130[21]), .CK(clk_c), .CD(n467), .Q(counter[21]));
    defparam counter_59__i21.GSR = "DISABLED";
    FD1S3IX counter_59__i20 (.D(n130[20]), .CK(clk_c), .CD(n467), .Q(counter[20]));
    defparam counter_59__i20.GSR = "DISABLED";
    FD1S3IX counter_59__i19 (.D(n130[19]), .CK(clk_c), .CD(n467), .Q(counter[19]));
    defparam counter_59__i19.GSR = "DISABLED";
    FD1S3IX counter_59__i18 (.D(n130[18]), .CK(clk_c), .CD(n467), .Q(counter[18]));
    defparam counter_59__i18.GSR = "DISABLED";
    FD1S3IX counter_59__i17 (.D(n130[17]), .CK(clk_c), .CD(n467), .Q(counter[17]));
    defparam counter_59__i17.GSR = "DISABLED";
    FD1S3IX counter_59__i16 (.D(n130[16]), .CK(clk_c), .CD(n467), .Q(counter[16]));
    defparam counter_59__i16.GSR = "DISABLED";
    FD1S3IX counter_59__i15 (.D(n130[15]), .CK(clk_c), .CD(n467), .Q(counter[15]));
    defparam counter_59__i15.GSR = "DISABLED";
    FD1S3IX counter_59__i14 (.D(n130[14]), .CK(clk_c), .CD(n467), .Q(counter[14]));
    defparam counter_59__i14.GSR = "DISABLED";
    FD1S3IX counter_59__i13 (.D(n130[13]), .CK(clk_c), .CD(n467), .Q(counter[13]));
    defparam counter_59__i13.GSR = "DISABLED";
    FD1S3IX counter_59__i12 (.D(n130[12]), .CK(clk_c), .CD(n467), .Q(counter[12]));
    defparam counter_59__i12.GSR = "DISABLED";
    FD1S3IX counter_59__i11 (.D(n130[11]), .CK(clk_c), .CD(n467), .Q(counter[11]));
    defparam counter_59__i11.GSR = "DISABLED";
    FD1S3IX counter_59__i10 (.D(n130[10]), .CK(clk_c), .CD(n467), .Q(counter[10]));
    defparam counter_59__i10.GSR = "DISABLED";
    FD1S3IX counter_59__i9 (.D(n130[9]), .CK(clk_c), .CD(n467), .Q(counter[9]));
    defparam counter_59__i9.GSR = "DISABLED";
    FD1S3IX counter_59__i8 (.D(n130[8]), .CK(clk_c), .CD(n467), .Q(counter[8]));
    defparam counter_59__i8.GSR = "DISABLED";
    FD1S3IX counter_59__i7 (.D(n130[7]), .CK(clk_c), .CD(n467), .Q(counter[7]));
    defparam counter_59__i7.GSR = "DISABLED";
    FD1S3IX counter_59__i6 (.D(n130[6]), .CK(clk_c), .CD(n467), .Q(counter[6]));
    defparam counter_59__i6.GSR = "DISABLED";
    FD1S3IX counter_59__i5 (.D(n130[5]), .CK(clk_c), .CD(n467), .Q(counter[5]));
    defparam counter_59__i5.GSR = "DISABLED";
    FD1S3IX counter_59__i4 (.D(n130[4]), .CK(clk_c), .CD(n467), .Q(counter[4]));
    defparam counter_59__i4.GSR = "DISABLED";
    FD1S3IX counter_59__i3 (.D(n130[3]), .CK(clk_c), .CD(n467), .Q(counter[3]));
    defparam counter_59__i3.GSR = "DISABLED";
    FD1S3IX counter_59__i2 (.D(n130[2]), .CK(clk_c), .CD(n467), .Q(counter[2]));
    defparam counter_59__i2.GSR = "DISABLED";
    FD1S3IX counter_59__i1 (.D(n130[1]), .CK(clk_c), .CD(n467), .Q(counter[1]));
    defparam counter_59__i1.GSR = "DISABLED";
    FD1S1A i103 (.D(n468), .CK(n470), .Q(next_state[0]));
    defparam i103.GSR = "DISABLED";
    FD1S3AX state_i1 (.D(next_state[1]), .CK(clk_c), .Q(state[1]));
    defparam state_i1.GSR = "DISABLED";
    CCU2D equal_7_24 (.A0(counter[19]), .B0(counter[18]), .C0(counter[17]), 
          .D0(counter[16]), .A1(counter[15]), .B1(reset_start_c[15]), 
          .C1(counter[14]), .D1(reset_start_c[14]), .CIN(n481), .COUT(n482));
    defparam equal_7_24.INIT0 = 16'h0001;
    defparam equal_7_24.INIT1 = 16'h9009;
    defparam equal_7_24.INJECT1_0 = "YES";
    defparam equal_7_24.INJECT1_1 = "YES";
    OFS1P3DX rst_out_29 (.D(state[1]), .SP(VCC_net), .SCLK(clk_c), .CD(GND_net), 
            .Q(rst_out_c));
    defparam rst_out_29.GSR = "DISABLED";
    IB reset_start_pad_14 (.I(reset_start[14]), .O(reset_start_c[14]));
    IB reset_start_pad_13 (.I(reset_start[13]), .O(reset_start_c[13]));
    IB reset_start_pad_12 (.I(reset_start[12]), .O(reset_start_c[12]));
    IB reset_start_pad_11 (.I(reset_start[11]), .O(reset_start_c[11]));
    IB reset_start_pad_10 (.I(reset_start[10]), .O(reset_start_c[10]));
    IB reset_start_pad_9 (.I(reset_start[9]), .O(reset_start_c[9]));
    IB reset_start_pad_8 (.I(reset_start[8]), .O(reset_start_c[8]));
    IB reset_start_pad_7 (.I(reset_start[7]), .O(reset_start_c[7]));
    IB reset_start_pad_6 (.I(reset_start[6]), .O(reset_start_c[6]));
    IB reset_start_pad_5 (.I(reset_start[5]), .O(reset_start_c[5]));
    IB reset_start_pad_4 (.I(reset_start[4]), .O(reset_start_c[4]));
    IB reset_start_pad_3 (.I(reset_start[3]), .O(reset_start_c[3]));
    IB reset_start_pad_2 (.I(reset_start[2]), .O(reset_start_c[2]));
    IB reset_start_pad_1 (.I(reset_start[1]), .O(reset_start_c[1]));
    IB reset_start_pad_0 (.I(reset_start[0]), .O(reset_start_c[0]));
    IB reset_stop_pad_15 (.I(reset_stop[15]), .O(reset_stop_c[15]));
    IB reset_stop_pad_14 (.I(reset_stop[14]), .O(reset_stop_c[14]));
    IB reset_stop_pad_13 (.I(reset_stop[13]), .O(reset_stop_c[13]));
    IB reset_stop_pad_12 (.I(reset_stop[12]), .O(reset_stop_c[12]));
    IB reset_stop_pad_11 (.I(reset_stop[11]), .O(reset_stop_c[11]));
    IB reset_stop_pad_10 (.I(reset_stop[10]), .O(reset_stop_c[10]));
    IB reset_stop_pad_9 (.I(reset_stop[9]), .O(reset_stop_c[9]));
    IB reset_stop_pad_8 (.I(reset_stop[8]), .O(reset_stop_c[8]));
    IB reset_stop_pad_7 (.I(reset_stop[7]), .O(reset_stop_c[7]));
    IB reset_stop_pad_6 (.I(reset_stop[6]), .O(reset_stop_c[6]));
    IB reset_stop_pad_5 (.I(reset_stop[5]), .O(reset_stop_c[5]));
    IB reset_stop_pad_4 (.I(reset_stop[4]), .O(reset_stop_c[4]));
    IB reset_stop_pad_3 (.I(reset_stop[3]), .O(reset_stop_c[3]));
    IB reset_stop_pad_2 (.I(reset_stop[2]), .O(reset_stop_c[2]));
    IB reset_stop_pad_1 (.I(reset_stop[1]), .O(reset_stop_c[1]));
    IB reset_stop_pad_0 (.I(reset_stop[0]), .O(reset_stop_c[0]));
    FD1S3AX state_i0 (.D(next_state[0]), .CK(clk_c), .Q(state[0]));
    defparam state_i0.GSR = "DISABLED";
    VLO i1 (.Z(GND_net));
    CCU2D counter_59_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n512), .COUT(n513), .S0(n130[21]), .S1(n130[22]));
    defparam counter_59_add_4_23.INIT0 = 16'hfaaa;
    defparam counter_59_add_4_23.INIT1 = 16'hfaaa;
    defparam counter_59_add_4_23.INJECT1_0 = "NO";
    defparam counter_59_add_4_23.INJECT1_1 = "NO";
    
endmodule

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

