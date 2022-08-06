module intadder_20_f300_uid106
    (input clk,
        input rst,
        input[19:0] x,
        input[19:0] y,
        input cin,
        output[19:0] r);
    wire[19:0] n1348_o;
    wire[19:0] n1349_o;
    wire[19:0] n1350_o;
    assign r = n1350_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:431:12  */
    assign n1348_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:431:16  */
    assign n1349_o = {19'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:431:16  */
    assign n1350_o = n1348_o+n1349_o;
endmodule

module compressor_3_2
    (input[2:0] x0,
        output[1:0] r);
    wire[2:0] x;
    wire n1318_o;
    wire n1321_o;
    wire n1324_o;
    wire n1327_o;
    wire n1330_o;
    wire n1333_o;
    wire n1336_o;
    wire n1339_o;
    wire[7:0] n1341_o;
    reg[1:0] n1342_o;
    assign r = n1342_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:382:8  */
    assign x = x0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:386:12  */
    assign n1318_o = x == 3'b000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:387:12  */
    assign n1321_o = x == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:388:12  */
    assign n1324_o = x == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:389:12  */
    assign n1327_o = x == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:390:12  */
    assign n1330_o = x == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:391:12  */
    assign n1333_o = x == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:392:12  */
    assign n1336_o = x == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:393:12  */
    assign n1339_o = x == 3'b111;
    assign n1341_o = {n1339_o, n1336_o, n1333_o, n1330_o, n1327_o, n1324_o, n1321_o, n1318_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:385:4  */
    always @*
        case (n1341_o)
            8'b10000000: n1342_o <= 2'b11;
            8'b01000000: n1342_o <= 2'b10;
            8'b00100000: n1342_o <= 2'b10;
            8'b00010000: n1342_o <= 2'b01;
            8'b00001000: n1342_o <= 2'b10;
            8'b00000100: n1342_o <= 2'b01;
            8'b00000010: n1342_o <= 2'b01;
            8'b00000001: n1342_o <= 2'b00;
            default: n1342_o <= 2'bXX;
        endcase
endmodule

module compressor_13_3
    (input[2:0] x0,
        input x1,
        output[2:0] r);
    wire[3:0] x;
    wire[3:0] n1263_o;
    wire n1266_o;
    wire n1269_o;
    wire n1272_o;
    wire n1275_o;
    wire n1278_o;
    wire n1281_o;
    wire n1284_o;
    wire n1287_o;
    wire n1290_o;
    wire n1293_o;
    wire n1296_o;
    wire n1299_o;
    wire n1302_o;
    wire n1305_o;
    wire n1308_o;
    wire n1311_o;
    wire[15:0] n1313_o;
    reg[2:0] n1314_o;
    assign r = n1314_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:336:8  */
    assign x = n1263_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:338:11  */
    assign n1263_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:340:13  */
    assign n1266_o = x == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:341:13  */
    assign n1269_o = x == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:342:13  */
    assign n1272_o = x == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:343:13  */
    assign n1275_o = x == 4'b0011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:344:13  */
    assign n1278_o = x == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:345:13  */
    assign n1281_o = x == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:346:13  */
    assign n1284_o = x == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:347:13  */
    assign n1287_o = x == 4'b0111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:348:13  */
    assign n1290_o = x == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:349:13  */
    assign n1293_o = x == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:350:13  */
    assign n1296_o = x == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:351:13  */
    assign n1299_o = x == 4'b1011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:352:13  */
    assign n1302_o = x == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:353:13  */
    assign n1305_o = x == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:354:13  */
    assign n1308_o = x == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:355:13  */
    assign n1311_o = x == 4'b1111;
    assign n1313_o = {n1311_o, n1308_o, n1305_o, n1302_o, n1299_o, n1296_o, n1293_o, n1290_o, n1287_o, n1284_o, n1281_o, n1278_o, n1275_o, n1272_o, n1269_o, n1266_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:339:4  */
    always @*
        case (n1313_o)
            16'b1000000000000000: n1314_o <= 3'b101;
            16'b0100000000000000: n1314_o <= 3'b100;
            16'b0010000000000000: n1314_o <= 3'b100;
            16'b0001000000000000: n1314_o <= 3'b011;
            16'b0000100000000000: n1314_o <= 3'b100;
            16'b0000010000000000: n1314_o <= 3'b011;
            16'b0000001000000000: n1314_o <= 3'b011;
            16'b0000000100000000: n1314_o <= 3'b010;
            16'b0000000010000000: n1314_o <= 3'b011;
            16'b0000000001000000: n1314_o <= 3'b010;
            16'b0000000000100000: n1314_o <= 3'b010;
            16'b0000000000010000: n1314_o <= 3'b001;
            16'b0000000000001000: n1314_o <= 3'b010;
            16'b0000000000000100: n1314_o <= 3'b001;
            16'b0000000000000010: n1314_o <= 3'b001;
            16'b0000000000000001: n1314_o <= 3'b000;
            default: n1314_o <= 3'bXXX;
        endcase
endmodule

module compressor_23_3
    (input[2:0] x0,
        input[1:0] x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n1162_o;
    wire n1165_o;
    wire n1168_o;
    wire n1171_o;
    wire n1174_o;
    wire n1177_o;
    wire n1180_o;
    wire n1183_o;
    wire n1186_o;
    wire n1189_o;
    wire n1192_o;
    wire n1195_o;
    wire n1198_o;
    wire n1201_o;
    wire n1204_o;
    wire n1207_o;
    wire n1210_o;
    wire n1213_o;
    wire n1216_o;
    wire n1219_o;
    wire n1222_o;
    wire n1225_o;
    wire n1228_o;
    wire n1231_o;
    wire n1234_o;
    wire n1237_o;
    wire n1240_o;
    wire n1243_o;
    wire n1246_o;
    wire n1249_o;
    wire n1252_o;
    wire n1255_o;
    wire n1258_o;
    wire[31:0] n1260_o;
    reg[2:0] n1261_o;
    assign r = n1261_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:273:8  */
    assign x = n1162_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:275:11  */
    assign n1162_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:277:13  */
    assign n1165_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:278:13  */
    assign n1168_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:279:13  */
    assign n1171_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:280:13  */
    assign n1174_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:281:13  */
    assign n1177_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:282:13  */
    assign n1180_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:283:13  */
    assign n1183_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:284:13  */
    assign n1186_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:285:13  */
    assign n1189_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:286:13  */
    assign n1192_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:287:13  */
    assign n1195_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:288:13  */
    assign n1198_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:289:13  */
    assign n1201_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:290:13  */
    assign n1204_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:291:13  */
    assign n1207_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:292:13  */
    assign n1210_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:293:13  */
    assign n1213_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:294:13  */
    assign n1216_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:295:13  */
    assign n1219_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:296:13  */
    assign n1222_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:297:13  */
    assign n1225_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:298:13  */
    assign n1228_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:299:13  */
    assign n1231_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:300:13  */
    assign n1234_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:301:13  */
    assign n1237_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:302:13  */
    assign n1240_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:303:13  */
    assign n1243_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:304:13  */
    assign n1246_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:305:13  */
    assign n1249_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:306:13  */
    assign n1252_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:307:13  */
    assign n1255_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:308:13  */
    assign n1258_o = x == 5'b11111;
    assign n1260_o = {n1258_o, n1255_o, n1252_o, n1249_o, n1246_o, n1243_o, n1240_o, n1237_o, n1234_o, n1231_o, n1228_o, n1225_o, n1222_o, n1219_o, n1216_o, n1213_o, n1210_o, n1207_o, n1204_o, n1201_o, n1198_o, n1195_o, n1192_o, n1189_o, n1186_o, n1183_o, n1180_o, n1177_o, n1174_o, n1171_o, n1168_o, n1165_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:276:4  */
    always @*
        case (n1260_o)
            32'b10000000000000000000000000000000: n1261_o <= 3'b111;
            32'b01000000000000000000000000000000: n1261_o <= 3'b110;
            32'b00100000000000000000000000000000: n1261_o <= 3'b110;
            32'b00010000000000000000000000000000: n1261_o <= 3'b101;
            32'b00001000000000000000000000000000: n1261_o <= 3'b110;
            32'b00000100000000000000000000000000: n1261_o <= 3'b101;
            32'b00000010000000000000000000000000: n1261_o <= 3'b101;
            32'b00000001000000000000000000000000: n1261_o <= 3'b100;
            32'b00000000100000000000000000000000: n1261_o <= 3'b101;
            32'b00000000010000000000000000000000: n1261_o <= 3'b100;
            32'b00000000001000000000000000000000: n1261_o <= 3'b100;
            32'b00000000000100000000000000000000: n1261_o <= 3'b011;
            32'b00000000000010000000000000000000: n1261_o <= 3'b100;
            32'b00000000000001000000000000000000: n1261_o <= 3'b011;
            32'b00000000000000100000000000000000: n1261_o <= 3'b011;
            32'b00000000000000010000000000000000: n1261_o <= 3'b010;
            32'b00000000000000001000000000000000: n1261_o <= 3'b101;
            32'b00000000000000000100000000000000: n1261_o <= 3'b100;
            32'b00000000000000000010000000000000: n1261_o <= 3'b100;
            32'b00000000000000000001000000000000: n1261_o <= 3'b011;
            32'b00000000000000000000100000000000: n1261_o <= 3'b100;
            32'b00000000000000000000010000000000: n1261_o <= 3'b011;
            32'b00000000000000000000001000000000: n1261_o <= 3'b011;
            32'b00000000000000000000000100000000: n1261_o <= 3'b010;
            32'b00000000000000000000000010000000: n1261_o <= 3'b011;
            32'b00000000000000000000000001000000: n1261_o <= 3'b010;
            32'b00000000000000000000000000100000: n1261_o <= 3'b010;
            32'b00000000000000000000000000010000: n1261_o <= 3'b001;
            32'b00000000000000000000000000001000: n1261_o <= 3'b010;
            32'b00000000000000000000000000000100: n1261_o <= 3'b001;
            32'b00000000000000000000000000000010: n1261_o <= 3'b001;
            32'b00000000000000000000000000000001: n1261_o <= 3'b000;
            default: n1261_o <= 3'bXXX;
        endcase
endmodule

module compressor_14_3
    (input[3:0] x0,
        input x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n1061_o;
    wire n1064_o;
    wire n1067_o;
    wire n1070_o;
    wire n1073_o;
    wire n1076_o;
    wire n1079_o;
    wire n1082_o;
    wire n1085_o;
    wire n1088_o;
    wire n1091_o;
    wire n1094_o;
    wire n1097_o;
    wire n1100_o;
    wire n1103_o;
    wire n1106_o;
    wire n1109_o;
    wire n1112_o;
    wire n1115_o;
    wire n1118_o;
    wire n1121_o;
    wire n1124_o;
    wire n1127_o;
    wire n1130_o;
    wire n1133_o;
    wire n1136_o;
    wire n1139_o;
    wire n1142_o;
    wire n1145_o;
    wire n1148_o;
    wire n1151_o;
    wire n1154_o;
    wire n1157_o;
    wire[31:0] n1159_o;
    reg[2:0] n1160_o;
    assign r = n1160_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:210:8  */
    assign x = n1061_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:212:11  */
    assign n1061_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:214:13  */
    assign n1064_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:215:13  */
    assign n1067_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:216:13  */
    assign n1070_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:217:13  */
    assign n1073_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:218:13  */
    assign n1076_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:219:13  */
    assign n1079_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:220:13  */
    assign n1082_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:221:13  */
    assign n1085_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:222:13  */
    assign n1088_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:223:13  */
    assign n1091_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:224:13  */
    assign n1094_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:225:13  */
    assign n1097_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:226:13  */
    assign n1100_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:227:13  */
    assign n1103_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:228:13  */
    assign n1106_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:229:13  */
    assign n1109_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:230:13  */
    assign n1112_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:231:13  */
    assign n1115_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:232:13  */
    assign n1118_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:233:13  */
    assign n1121_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:234:13  */
    assign n1124_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:235:13  */
    assign n1127_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:236:13  */
    assign n1130_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:237:13  */
    assign n1133_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:238:13  */
    assign n1136_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:239:13  */
    assign n1139_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:240:13  */
    assign n1142_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:241:13  */
    assign n1145_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:242:13  */
    assign n1148_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:243:13  */
    assign n1151_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:244:13  */
    assign n1154_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:245:13  */
    assign n1157_o = x == 5'b11111;
    assign n1159_o = {n1157_o, n1154_o, n1151_o, n1148_o, n1145_o, n1142_o, n1139_o, n1136_o, n1133_o, n1130_o, n1127_o, n1124_o, n1121_o, n1118_o, n1115_o, n1112_o, n1109_o, n1106_o, n1103_o, n1100_o, n1097_o, n1094_o, n1091_o, n1088_o, n1085_o, n1082_o, n1079_o, n1076_o, n1073_o, n1070_o, n1067_o, n1064_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:213:4  */
    always @*
        case (n1159_o)
            32'b10000000000000000000000000000000: n1160_o <= 3'b110;
            32'b01000000000000000000000000000000: n1160_o <= 3'b101;
            32'b00100000000000000000000000000000: n1160_o <= 3'b101;
            32'b00010000000000000000000000000000: n1160_o <= 3'b100;
            32'b00001000000000000000000000000000: n1160_o <= 3'b101;
            32'b00000100000000000000000000000000: n1160_o <= 3'b100;
            32'b00000010000000000000000000000000: n1160_o <= 3'b100;
            32'b00000001000000000000000000000000: n1160_o <= 3'b011;
            32'b00000000100000000000000000000000: n1160_o <= 3'b101;
            32'b00000000010000000000000000000000: n1160_o <= 3'b100;
            32'b00000000001000000000000000000000: n1160_o <= 3'b100;
            32'b00000000000100000000000000000000: n1160_o <= 3'b011;
            32'b00000000000010000000000000000000: n1160_o <= 3'b100;
            32'b00000000000001000000000000000000: n1160_o <= 3'b011;
            32'b00000000000000100000000000000000: n1160_o <= 3'b011;
            32'b00000000000000010000000000000000: n1160_o <= 3'b010;
            32'b00000000000000001000000000000000: n1160_o <= 3'b100;
            32'b00000000000000000100000000000000: n1160_o <= 3'b011;
            32'b00000000000000000010000000000000: n1160_o <= 3'b011;
            32'b00000000000000000001000000000000: n1160_o <= 3'b010;
            32'b00000000000000000000100000000000: n1160_o <= 3'b011;
            32'b00000000000000000000010000000000: n1160_o <= 3'b010;
            32'b00000000000000000000001000000000: n1160_o <= 3'b010;
            32'b00000000000000000000000100000000: n1160_o <= 3'b001;
            32'b00000000000000000000000010000000: n1160_o <= 3'b011;
            32'b00000000000000000000000001000000: n1160_o <= 3'b010;
            32'b00000000000000000000000000100000: n1160_o <= 3'b010;
            32'b00000000000000000000000000010000: n1160_o <= 3'b001;
            32'b00000000000000000000000000001000: n1160_o <= 3'b010;
            32'b00000000000000000000000000000100: n1160_o <= 3'b001;
            32'b00000000000000000000000000000010: n1160_o <= 3'b001;
            32'b00000000000000000000000000000001: n1160_o <= 3'b000;
            default: n1160_o <= 3'bXXX;
        endcase
endmodule

module compressor_6_3
    (input[5:0] x0,
        output[2:0] r);
    wire[5:0] x;
    wire n867_o;
    wire n870_o;
    wire n873_o;
    wire n876_o;
    wire n879_o;
    wire n882_o;
    wire n885_o;
    wire n888_o;
    wire n891_o;
    wire n894_o;
    wire n897_o;
    wire n900_o;
    wire n903_o;
    wire n906_o;
    wire n909_o;
    wire n912_o;
    wire n915_o;
    wire n918_o;
    wire n921_o;
    wire n924_o;
    wire n927_o;
    wire n930_o;
    wire n933_o;
    wire n936_o;
    wire n939_o;
    wire n942_o;
    wire n945_o;
    wire n948_o;
    wire n951_o;
    wire n954_o;
    wire n957_o;
    wire n960_o;
    wire n963_o;
    wire n966_o;
    wire n969_o;
    wire n972_o;
    wire n975_o;
    wire n978_o;
    wire n981_o;
    wire n984_o;
    wire n987_o;
    wire n990_o;
    wire n993_o;
    wire n996_o;
    wire n999_o;
    wire n1002_o;
    wire n1005_o;
    wire n1008_o;
    wire n1011_o;
    wire n1014_o;
    wire n1017_o;
    wire n1020_o;
    wire n1023_o;
    wire n1026_o;
    wire n1029_o;
    wire n1032_o;
    wire n1035_o;
    wire n1038_o;
    wire n1041_o;
    wire n1044_o;
    wire n1047_o;
    wire n1050_o;
    wire n1053_o;
    wire n1056_o;
    wire[63:0] n1058_o;
    reg[2:0] n1059_o;
    assign r = n1059_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:115:8  */
    assign x = x0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:119:13  */
    assign n867_o = x == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:120:13  */
    assign n870_o = x == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:121:13  */
    assign n873_o = x == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:122:13  */
    assign n876_o = x == 6'b000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:123:13  */
    assign n879_o = x == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:124:13  */
    assign n882_o = x == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:125:13  */
    assign n885_o = x == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:126:13  */
    assign n888_o = x == 6'b000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:127:13  */
    assign n891_o = x == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:128:13  */
    assign n894_o = x == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:129:13  */
    assign n897_o = x == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:130:13  */
    assign n900_o = x == 6'b001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:131:13  */
    assign n903_o = x == 6'b001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:132:13  */
    assign n906_o = x == 6'b001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:133:13  */
    assign n909_o = x == 6'b001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:134:13  */
    assign n912_o = x == 6'b001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:135:13  */
    assign n915_o = x == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:136:13  */
    assign n918_o = x == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:137:13  */
    assign n921_o = x == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:138:13  */
    assign n924_o = x == 6'b010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:139:13  */
    assign n927_o = x == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:140:13  */
    assign n930_o = x == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:141:13  */
    assign n933_o = x == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:142:13  */
    assign n936_o = x == 6'b010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:143:13  */
    assign n939_o = x == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:144:13  */
    assign n942_o = x == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:145:13  */
    assign n945_o = x == 6'b011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:146:13  */
    assign n948_o = x == 6'b011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:147:13  */
    assign n951_o = x == 6'b011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:148:13  */
    assign n954_o = x == 6'b011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:149:13  */
    assign n957_o = x == 6'b011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:150:13  */
    assign n960_o = x == 6'b011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:151:13  */
    assign n963_o = x == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:152:13  */
    assign n966_o = x == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:153:13  */
    assign n969_o = x == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:154:13  */
    assign n972_o = x == 6'b100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:155:13  */
    assign n975_o = x == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:156:13  */
    assign n978_o = x == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:157:13  */
    assign n981_o = x == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:158:13  */
    assign n984_o = x == 6'b100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:159:13  */
    assign n987_o = x == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:160:13  */
    assign n990_o = x == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:161:13  */
    assign n993_o = x == 6'b101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:162:13  */
    assign n996_o = x == 6'b101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:163:13  */
    assign n999_o = x == 6'b101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:164:13  */
    assign n1002_o = x == 6'b101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:165:13  */
    assign n1005_o = x == 6'b101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:166:13  */
    assign n1008_o = x == 6'b101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:167:13  */
    assign n1011_o = x == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:168:13  */
    assign n1014_o = x == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:169:13  */
    assign n1017_o = x == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:170:13  */
    assign n1020_o = x == 6'b110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:171:13  */
    assign n1023_o = x == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:172:13  */
    assign n1026_o = x == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:173:13  */
    assign n1029_o = x == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:174:13  */
    assign n1032_o = x == 6'b110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:175:13  */
    assign n1035_o = x == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:176:13  */
    assign n1038_o = x == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:177:13  */
    assign n1041_o = x == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:178:13  */
    assign n1044_o = x == 6'b111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:179:13  */
    assign n1047_o = x == 6'b111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:180:13  */
    assign n1050_o = x == 6'b111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:181:13  */
    assign n1053_o = x == 6'b111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:182:13  */
    assign n1056_o = x == 6'b111111;
    assign n1058_o = {n1056_o, n1053_o, n1050_o, n1047_o, n1044_o, n1041_o, n1038_o, n1035_o, n1032_o, n1029_o, n1026_o, n1023_o, n1020_o, n1017_o, n1014_o, n1011_o, n1008_o, n1005_o, n1002_o, n999_o, n996_o, n993_o, n990_o, n987_o, n984_o, n981_o, n978_o, n975_o, n972_o, n969_o, n966_o, n963_o, n960_o, n957_o, n954_o, n951_o, n948_o, n945_o, n942_o, n939_o, n936_o, n933_o, n930_o, n927_o, n924_o, n921_o, n918_o, n915_o, n912_o, n909_o, n906_o, n903_o, n900_o, n897_o, n894_o, n891_o, n888_o, n885_o, n882_o, n879_o, n876_o, n873_o, n870_o, n867_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:118:4  */
    always @*
        case (n1058_o)
            64'b1000000000000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b110;
            64'b0100000000000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b101;
            64'b0010000000000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b101;
            64'b0001000000000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000100000000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b101;
            64'b0000010000000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000001000000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000100000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000010000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b101;
            64'b0000000001000000000000000000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000100000000000000000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000010000000000000000000000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000001000000000000000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000000100000000000000000000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000010000000000000000000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000001000000000000000000000000000000000000000000000000: n1059_o <= 3'b010;
            64'b0000000000000000100000000000000000000000000000000000000000000000: n1059_o <= 3'b101;
            64'b0000000000000000010000000000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000000000001000000000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000000000000100000000000000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000010000000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000000000000001000000000000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000100000000000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000010000000000000000000000000000000000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000001000000000000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000000000000000000100000000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000010000000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000001000000000000000000000000000000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000100000000000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000010000000000000000000000000000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000001000000000000000000000000000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000100000000000000000000000000000000: n1059_o <= 3'b001;
            64'b0000000000000000000000000000000010000000000000000000000000000000: n1059_o <= 3'b101;
            64'b0000000000000000000000000000000001000000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000000000000000000000000000100000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000000000000000000000000000010000000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000001000000000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000000000000000000000000000000100000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000000010000000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000000001000000000000000000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000100000000000000000000000: n1059_o <= 3'b100;
            64'b0000000000000000000000000000000000000000010000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000000000001000000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000000000000100000000000000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000000010000000000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000000000000001000000000000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000000000100000000000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000000000010000000000000000: n1059_o <= 3'b001;
            64'b0000000000000000000000000000000000000000000000001000000000000000: n1059_o <= 3'b100;
            64'b0000000000000000000000000000000000000000000000000100000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000000000000000000010000000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000000000000000000001000000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000000000000000100000000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000000000000000000000010000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000000000000000001000000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000000000000000000100000000: n1059_o <= 3'b001;
            64'b0000000000000000000000000000000000000000000000000000000010000000: n1059_o <= 3'b011;
            64'b0000000000000000000000000000000000000000000000000000000001000000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000000000000000000000100000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000000000000000000000010000: n1059_o <= 3'b001;
            64'b0000000000000000000000000000000000000000000000000000000000001000: n1059_o <= 3'b010;
            64'b0000000000000000000000000000000000000000000000000000000000000100: n1059_o <= 3'b001;
            64'b0000000000000000000000000000000000000000000000000000000000000010: n1059_o <= 3'b001;
            64'b0000000000000000000000000000000000000000000000000000000000000001: n1059_o <= 3'b000;
            default: n1059_o <= 3'bXXX;
        endcase
endmodule

module smallmulttablep3x3r6xuyu_f300_uid9
    (input clk,
        input rst,
        input[5:0] x,
        output[5:0] y);
    wire[5:0] tableout;
    wire n671_o;
    wire n674_o;
    wire n677_o;
    wire n680_o;
    wire n683_o;
    wire n686_o;
    wire n689_o;
    wire n692_o;
    wire n695_o;
    wire n698_o;
    wire n701_o;
    wire n704_o;
    wire n707_o;
    wire n710_o;
    wire n713_o;
    wire n716_o;
    wire n719_o;
    wire n722_o;
    wire n725_o;
    wire n728_o;
    wire n731_o;
    wire n734_o;
    wire n737_o;
    wire n740_o;
    wire n743_o;
    wire n746_o;
    wire n749_o;
    wire n752_o;
    wire n755_o;
    wire n758_o;
    wire n761_o;
    wire n764_o;
    wire n767_o;
    wire n770_o;
    wire n773_o;
    wire n776_o;
    wire n779_o;
    wire n782_o;
    wire n785_o;
    wire n788_o;
    wire n791_o;
    wire n794_o;
    wire n797_o;
    wire n800_o;
    wire n803_o;
    wire n806_o;
    wire n809_o;
    wire n812_o;
    wire n815_o;
    wire n818_o;
    wire n821_o;
    wire n824_o;
    wire n827_o;
    wire n830_o;
    wire n833_o;
    wire n836_o;
    wire n839_o;
    wire n842_o;
    wire n845_o;
    wire n848_o;
    wire n851_o;
    wire n854_o;
    wire n857_o;
    wire n860_o;
    wire[63:0] n862_o;
    reg[5:0] n863_o;
    assign y = tableout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:17:8  */
    assign tableout = n863_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:25:13  */
    assign n671_o = x == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:26:13  */
    assign n674_o = x == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:27:13  */
    assign n677_o = x == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:28:13  */
    assign n680_o = x == 6'b000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:29:13  */
    assign n683_o = x == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:30:13  */
    assign n686_o = x == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:31:13  */
    assign n689_o = x == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:32:13  */
    assign n692_o = x == 6'b000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:33:13  */
    assign n695_o = x == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:34:13  */
    assign n698_o = x == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:35:13  */
    assign n701_o = x == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:36:13  */
    assign n704_o = x == 6'b001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:37:13  */
    assign n707_o = x == 6'b001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:38:13  */
    assign n710_o = x == 6'b001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:39:13  */
    assign n713_o = x == 6'b001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:40:13  */
    assign n716_o = x == 6'b001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:41:13  */
    assign n719_o = x == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:42:13  */
    assign n722_o = x == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:43:13  */
    assign n725_o = x == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:44:13  */
    assign n728_o = x == 6'b010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:45:13  */
    assign n731_o = x == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:46:13  */
    assign n734_o = x == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:47:13  */
    assign n737_o = x == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:48:13  */
    assign n740_o = x == 6'b010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:49:13  */
    assign n743_o = x == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:50:13  */
    assign n746_o = x == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:51:13  */
    assign n749_o = x == 6'b011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:52:13  */
    assign n752_o = x == 6'b011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:53:13  */
    assign n755_o = x == 6'b011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:54:13  */
    assign n758_o = x == 6'b011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:55:13  */
    assign n761_o = x == 6'b011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:56:13  */
    assign n764_o = x == 6'b011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:57:13  */
    assign n767_o = x == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:58:13  */
    assign n770_o = x == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:59:13  */
    assign n773_o = x == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:60:13  */
    assign n776_o = x == 6'b100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:61:13  */
    assign n779_o = x == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:62:13  */
    assign n782_o = x == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:63:13  */
    assign n785_o = x == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:64:13  */
    assign n788_o = x == 6'b100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:65:13  */
    assign n791_o = x == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:66:13  */
    assign n794_o = x == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:67:13  */
    assign n797_o = x == 6'b101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:68:13  */
    assign n800_o = x == 6'b101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:69:13  */
    assign n803_o = x == 6'b101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:70:13  */
    assign n806_o = x == 6'b101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:71:13  */
    assign n809_o = x == 6'b101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:72:13  */
    assign n812_o = x == 6'b101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:73:13  */
    assign n815_o = x == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:74:13  */
    assign n818_o = x == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:75:13  */
    assign n821_o = x == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:76:13  */
    assign n824_o = x == 6'b110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:77:13  */
    assign n827_o = x == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:78:13  */
    assign n830_o = x == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:79:13  */
    assign n833_o = x == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:80:13  */
    assign n836_o = x == 6'b110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:81:13  */
    assign n839_o = x == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:82:13  */
    assign n842_o = x == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:83:13  */
    assign n845_o = x == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:84:13  */
    assign n848_o = x == 6'b111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:85:13  */
    assign n851_o = x == 6'b111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:86:13  */
    assign n854_o = x == 6'b111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:87:13  */
    assign n857_o = x == 6'b111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:88:13  */
    assign n860_o = x == 6'b111111;
    assign n862_o = {n860_o, n857_o, n854_o, n851_o, n848_o, n845_o, n842_o, n839_o, n836_o, n833_o, n830_o, n827_o, n824_o, n821_o, n818_o, n815_o, n812_o, n809_o, n806_o, n803_o, n800_o, n797_o, n794_o, n791_o, n788_o, n785_o, n782_o, n779_o, n776_o, n773_o, n770_o, n767_o, n764_o, n761_o, n758_o, n755_o, n752_o, n749_o, n746_o, n743_o, n740_o, n737_o, n734_o, n731_o, n728_o, n725_o, n722_o, n719_o, n716_o, n713_o, n710_o, n707_o, n704_o, n701_o, n698_o, n695_o, n692_o, n689_o, n686_o, n683_o, n680_o, n677_o, n674_o, n671_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:24:3  */
    always @*
        case (n862_o)
            64'b1000000000000000000000000000000000000000000000000000000000000000: n863_o <= 6'b110001;
            64'b0100000000000000000000000000000000000000000000000000000000000000: n863_o <= 6'b101010;
            64'b0010000000000000000000000000000000000000000000000000000000000000: n863_o <= 6'b100011;
            64'b0001000000000000000000000000000000000000000000000000000000000000: n863_o <= 6'b011100;
            64'b0000100000000000000000000000000000000000000000000000000000000000: n863_o <= 6'b010101;
            64'b0000010000000000000000000000000000000000000000000000000000000000: n863_o <= 6'b001110;
            64'b0000001000000000000000000000000000000000000000000000000000000000: n863_o <= 6'b000111;
            64'b0000000100000000000000000000000000000000000000000000000000000000: n863_o <= 6'b000000;
            64'b0000000010000000000000000000000000000000000000000000000000000000: n863_o <= 6'b101010;
            64'b0000000001000000000000000000000000000000000000000000000000000000: n863_o <= 6'b100100;
            64'b0000000000100000000000000000000000000000000000000000000000000000: n863_o <= 6'b011110;
            64'b0000000000010000000000000000000000000000000000000000000000000000: n863_o <= 6'b011000;
            64'b0000000000001000000000000000000000000000000000000000000000000000: n863_o <= 6'b010010;
            64'b0000000000000100000000000000000000000000000000000000000000000000: n863_o <= 6'b001100;
            64'b0000000000000010000000000000000000000000000000000000000000000000: n863_o <= 6'b000110;
            64'b0000000000000001000000000000000000000000000000000000000000000000: n863_o <= 6'b000000;
            64'b0000000000000000100000000000000000000000000000000000000000000000: n863_o <= 6'b100011;
            64'b0000000000000000010000000000000000000000000000000000000000000000: n863_o <= 6'b011110;
            64'b0000000000000000001000000000000000000000000000000000000000000000: n863_o <= 6'b011001;
            64'b0000000000000000000100000000000000000000000000000000000000000000: n863_o <= 6'b010100;
            64'b0000000000000000000010000000000000000000000000000000000000000000: n863_o <= 6'b001111;
            64'b0000000000000000000001000000000000000000000000000000000000000000: n863_o <= 6'b001010;
            64'b0000000000000000000000100000000000000000000000000000000000000000: n863_o <= 6'b000101;
            64'b0000000000000000000000010000000000000000000000000000000000000000: n863_o <= 6'b000000;
            64'b0000000000000000000000001000000000000000000000000000000000000000: n863_o <= 6'b011100;
            64'b0000000000000000000000000100000000000000000000000000000000000000: n863_o <= 6'b011000;
            64'b0000000000000000000000000010000000000000000000000000000000000000: n863_o <= 6'b010100;
            64'b0000000000000000000000000001000000000000000000000000000000000000: n863_o <= 6'b010000;
            64'b0000000000000000000000000000100000000000000000000000000000000000: n863_o <= 6'b001100;
            64'b0000000000000000000000000000010000000000000000000000000000000000: n863_o <= 6'b001000;
            64'b0000000000000000000000000000001000000000000000000000000000000000: n863_o <= 6'b000100;
            64'b0000000000000000000000000000000100000000000000000000000000000000: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000010000000000000000000000000000000: n863_o <= 6'b010101;
            64'b0000000000000000000000000000000001000000000000000000000000000000: n863_o <= 6'b010010;
            64'b0000000000000000000000000000000000100000000000000000000000000000: n863_o <= 6'b001111;
            64'b0000000000000000000000000000000000010000000000000000000000000000: n863_o <= 6'b001100;
            64'b0000000000000000000000000000000000001000000000000000000000000000: n863_o <= 6'b001001;
            64'b0000000000000000000000000000000000000100000000000000000000000000: n863_o <= 6'b000110;
            64'b0000000000000000000000000000000000000010000000000000000000000000: n863_o <= 6'b000011;
            64'b0000000000000000000000000000000000000001000000000000000000000000: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000100000000000000000000000: n863_o <= 6'b001110;
            64'b0000000000000000000000000000000000000000010000000000000000000000: n863_o <= 6'b001100;
            64'b0000000000000000000000000000000000000000001000000000000000000000: n863_o <= 6'b001010;
            64'b0000000000000000000000000000000000000000000100000000000000000000: n863_o <= 6'b001000;
            64'b0000000000000000000000000000000000000000000010000000000000000000: n863_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000001000000000000000000: n863_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000100000000000000000: n863_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000010000000000000000: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000001000000000000000: n863_o <= 6'b000111;
            64'b0000000000000000000000000000000000000000000000000100000000000000: n863_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000000000010000000000000: n863_o <= 6'b000101;
            64'b0000000000000000000000000000000000000000000000000001000000000000: n863_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000000000100000000000: n863_o <= 6'b000011;
            64'b0000000000000000000000000000000000000000000000000000010000000000: n863_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000000000001000000000: n863_o <= 6'b000001;
            64'b0000000000000000000000000000000000000000000000000000000100000000: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000010000000: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000001000000: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000100000: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000010000: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000001000: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000100: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000010: n863_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000001: n863_o <= 6'b000000;
            default: n863_o <= 6'bXXXXXX;
        endcase
endmodule

module intadder_16_f300_uid116
    (input clk,
        input rst,
        input[15:0] x,
        input[15:0] y,
        input cin,
        output[15:0] r);
    wire[15:0] n661_o;
    wire[15:0] n662_o;
    wire[15:0] n663_o;
    assign r = n663_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1420:12  */
    assign n661_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1420:16  */
    assign n662_o = {15'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1420:16  */
    assign n663_o = n661_o+n662_o;
endmodule

module intmultiplier_usingdsp_11_11_22_unsigned_f300_uid4
    (input clk,
        input rst,
        input[10:0] x,
        input[10:0] y,
        output[21:0] r);
    wire[10:0] xx_m5;
    wire[10:0] yy_m5;
    wire[11:0] xp_m5b7;
    wire[11:0] yp_m5b7;
    wire[2:0] x_m5b7_0;
    wire[2:0] x_m5b7_1;
    wire[2:0] x_m5b7_2;
    wire[2:0] x_m5b7_3;
    wire[2:0] y_m5b7_0;
    wire[2:0] y_m5b7_1;
    wire[2:0] y_m5b7_2;
    wire[2:0] y_m5b7_3;
    wire[5:0] y0x0_7_m5;
    wire[5:0] pp7x0y0_m5;
    wire heap_bh6_w0_0;
    wire heap_bh6_w1_0;
    wire heap_bh6_w2_0;
    wire heap_bh6_w3_0;
    wire heap_bh6_w3_0_d1;
    wire[5:0] y0x1_7_m5;
    wire[5:0] pp7x1y0_m5;
    wire heap_bh6_w2_1;
    wire heap_bh6_w3_1;
    wire heap_bh6_w4_0;
    wire heap_bh6_w5_0;
    wire heap_bh6_w6_0;
    wire[5:0] y0x2_7_m5;
    wire[5:0] pp7x2y0_m5;
    wire heap_bh6_w5_1;
    wire heap_bh6_w6_1;
    wire heap_bh6_w7_0;
    wire heap_bh6_w8_0;
    wire heap_bh6_w9_0;
    wire[5:0] y0x3_7_m5;
    wire[5:0] pp7x3y0_m5;
    wire heap_bh6_w8_1;
    wire heap_bh6_w9_1;
    wire heap_bh6_w10_0;
    wire heap_bh6_w11_0;
    wire heap_bh6_w12_0;
    wire[5:0] y1x0_7_m5;
    wire[5:0] pp7x0y1_m5;
    wire heap_bh6_w2_2;
    wire heap_bh6_w3_2;
    wire heap_bh6_w4_1;
    wire heap_bh6_w5_2;
    wire heap_bh6_w6_2;
    wire[5:0] y1x1_7_m5;
    wire[5:0] pp7x1y1_m5;
    wire heap_bh6_w4_2;
    wire heap_bh6_w5_3;
    wire heap_bh6_w6_3;
    wire heap_bh6_w7_1;
    wire heap_bh6_w8_2;
    wire heap_bh6_w9_2;
    wire[5:0] y1x2_7_m5;
    wire[5:0] pp7x2y1_m5;
    wire heap_bh6_w7_2;
    wire heap_bh6_w8_3;
    wire heap_bh6_w9_3;
    wire heap_bh6_w10_1;
    wire heap_bh6_w11_1;
    wire heap_bh6_w12_1;
    wire[5:0] y1x3_7_m5;
    wire[5:0] pp7x3y1_m5;
    wire heap_bh6_w10_2;
    wire heap_bh6_w11_2;
    wire heap_bh6_w12_2;
    wire heap_bh6_w13_0;
    wire heap_bh6_w14_0;
    wire heap_bh6_w15_0;
    wire[5:0] y2x0_7_m5;
    wire[5:0] pp7x0y2_m5;
    wire heap_bh6_w5_4;
    wire heap_bh6_w6_4;
    wire heap_bh6_w7_3;
    wire heap_bh6_w8_4;
    wire heap_bh6_w9_4;
    wire[5:0] y2x1_7_m5;
    wire[5:0] pp7x1y2_m5;
    wire heap_bh6_w7_4;
    wire heap_bh6_w8_5;
    wire heap_bh6_w9_5;
    wire heap_bh6_w10_3;
    wire heap_bh6_w11_3;
    wire heap_bh6_w12_3;
    wire[5:0] y2x2_7_m5;
    wire[5:0] pp7x2y2_m5;
    wire heap_bh6_w10_4;
    wire heap_bh6_w11_4;
    wire heap_bh6_w12_4;
    wire heap_bh6_w13_1;
    wire heap_bh6_w14_1;
    wire heap_bh6_w15_1;
    wire[5:0] y2x3_7_m5;
    wire[5:0] pp7x3y2_m5;
    wire heap_bh6_w13_2;
    wire heap_bh6_w14_2;
    wire heap_bh6_w15_2;
    wire heap_bh6_w16_0;
    wire heap_bh6_w17_0;
    wire heap_bh6_w18_0;
    wire[5:0] y3x0_7_m5;
    wire[5:0] pp7x0y3_m5;
    wire heap_bh6_w8_6;
    wire heap_bh6_w9_6;
    wire heap_bh6_w10_5;
    wire heap_bh6_w11_5;
    wire heap_bh6_w12_5;
    wire[5:0] y3x1_7_m5;
    wire[5:0] pp7x1y3_m5;
    wire heap_bh6_w10_6;
    wire heap_bh6_w11_6;
    wire heap_bh6_w12_6;
    wire heap_bh6_w13_3;
    wire heap_bh6_w14_3;
    wire heap_bh6_w15_3;
    wire[5:0] y3x2_7_m5;
    wire[5:0] pp7x2y3_m5;
    wire heap_bh6_w13_4;
    wire heap_bh6_w14_4;
    wire heap_bh6_w15_4;
    wire heap_bh6_w16_1;
    wire heap_bh6_w17_1;
    wire heap_bh6_w18_1;
    wire[5:0] y3x3_7_m5;
    wire[5:0] pp7x3y3_m5;
    wire heap_bh6_w16_2;
    wire heap_bh6_w17_2;
    wire heap_bh6_w18_2;
    wire heap_bh6_w19_0;
    wire heap_bh6_w20_0;
    wire heap_bh6_w20_0_d1;
    wire heap_bh6_w21_0;
    wire heap_bh6_w21_0_d1;
    wire[1:0] tempr_bh6_0;
    wire[1:0] tempr_bh6_0_d1;
    wire[5:0] compressorin_bh6_0_0;
    wire[2:0] compressorout_bh6_0_0;
    wire heap_bh6_w8_7;
    wire heap_bh6_w9_7;
    wire heap_bh6_w10_7;
    wire[5:0] compressorin_bh6_1_1;
    wire[2:0] compressorout_bh6_1_1;
    wire heap_bh6_w9_8;
    wire heap_bh6_w10_8;
    wire heap_bh6_w11_7;
    wire[5:0] compressorin_bh6_2_2;
    wire[2:0] compressorout_bh6_2_2;
    wire heap_bh6_w10_9;
    wire heap_bh6_w11_8;
    wire heap_bh6_w12_7;
    wire[5:0] compressorin_bh6_3_3;
    wire[2:0] compressorout_bh6_3_3;
    wire heap_bh6_w11_9;
    wire heap_bh6_w12_8;
    wire heap_bh6_w13_5;
    wire[5:0] compressorin_bh6_4_4;
    wire[2:0] compressorout_bh6_4_4;
    wire heap_bh6_w12_9;
    wire heap_bh6_w13_6;
    wire heap_bh6_w14_5;
    wire[3:0] compressorin_bh6_5_5;
    wire compressorin_bh6_5_6;
    wire[2:0] compressorout_bh6_5_5;
    wire heap_bh6_w5_5;
    wire heap_bh6_w5_5_d1;
    wire heap_bh6_w6_5;
    wire heap_bh6_w7_5;
    wire heap_bh6_w7_5_d1;
    wire[3:0] compressorin_bh6_6_7;
    wire compressorin_bh6_6_8;
    wire[2:0] compressorout_bh6_6_6;
    wire heap_bh6_w6_6;
    wire heap_bh6_w7_6;
    wire heap_bh6_w8_8;
    wire[3:0] compressorin_bh6_7_9;
    wire compressorin_bh6_7_10;
    wire[2:0] compressorout_bh6_7_7;
    wire heap_bh6_w7_7;
    wire heap_bh6_w8_9;
    wire heap_bh6_w9_9;
    wire[3:0] compressorin_bh6_8_11;
    wire compressorin_bh6_8_12;
    wire[2:0] compressorout_bh6_8_8;
    wire heap_bh6_w13_7;
    wire heap_bh6_w14_6;
    wire heap_bh6_w15_5;
    wire[3:0] compressorin_bh6_9_13;
    wire compressorin_bh6_9_14;
    wire[2:0] compressorout_bh6_9_9;
    wire heap_bh6_w14_7;
    wire heap_bh6_w15_6;
    wire heap_bh6_w16_3;
    wire[3:0] compressorin_bh6_10_15;
    wire compressorin_bh6_10_16;
    wire[2:0] compressorout_bh6_10_10;
    wire heap_bh6_w15_7;
    wire heap_bh6_w16_4;
    wire heap_bh6_w17_3;
    wire[2:0] compressorin_bh6_11_17;
    wire[1:0] compressorin_bh6_11_18;
    wire[2:0] compressorout_bh6_11_11;
    wire heap_bh6_w2_3;
    wire heap_bh6_w3_3;
    wire heap_bh6_w3_3_d1;
    wire heap_bh6_w4_3;
    wire heap_bh6_w4_3_d1;
    wire[2:0] compressorin_bh6_12_19;
    wire[1:0] compressorin_bh6_12_20;
    wire[2:0] compressorout_bh6_12_12;
    wire heap_bh6_w17_4;
    wire heap_bh6_w18_3;
    wire heap_bh6_w19_1;
    wire[2:0] compressorin_bh6_13_21;
    wire compressorin_bh6_13_22;
    wire[2:0] compressorout_bh6_13_13;
    wire heap_bh6_w4_4;
    wire heap_bh6_w4_4_d1;
    wire heap_bh6_w5_6;
    wire heap_bh6_w5_6_d1;
    wire heap_bh6_w6_7;
    wire tempr_bh6_1;
    wire tempr_bh6_1_d1;
    wire[3:0] compressorin_bh6_14_23;
    wire compressorin_bh6_14_24;
    wire[2:0] compressorout_bh6_14_14;
    wire heap_bh6_w9_10;
    wire heap_bh6_w9_10_d1;
    wire heap_bh6_w10_10;
    wire heap_bh6_w10_10_d1;
    wire heap_bh6_w11_10;
    wire[3:0] compressorin_bh6_15_25;
    wire compressorin_bh6_15_26;
    wire[2:0] compressorout_bh6_15_15;
    wire heap_bh6_w11_11;
    wire heap_bh6_w12_10;
    wire heap_bh6_w13_8;
    wire[3:0] compressorin_bh6_16_27;
    wire compressorin_bh6_16_28;
    wire[2:0] compressorout_bh6_16_16;
    wire heap_bh6_w13_9;
    wire heap_bh6_w14_8;
    wire heap_bh6_w14_8_d1;
    wire heap_bh6_w15_8;
    wire[3:0] compressorin_bh6_17_29;
    wire compressorin_bh6_17_30;
    wire[2:0] compressorout_bh6_17_17;
    wire heap_bh6_w16_5;
    wire heap_bh6_w17_5;
    wire heap_bh6_w18_4;
    wire[2:0] compressorin_bh6_18_31;
    wire[1:0] compressorin_bh6_18_32;
    wire[2:0] compressorout_bh6_18_18;
    wire heap_bh6_w6_8;
    wire heap_bh6_w6_8_d1;
    wire heap_bh6_w7_8;
    wire heap_bh6_w7_8_d1;
    wire heap_bh6_w8_10;
    wire heap_bh6_w8_10_d1;
    wire[2:0] compressorin_bh6_19_33;
    wire[1:0] compressorout_bh6_19_19;
    wire heap_bh6_w8_11;
    wire heap_bh6_w8_11_d1;
    wire heap_bh6_w9_11;
    wire heap_bh6_w9_11_d1;
    wire[2:0] compressorin_bh6_20_34;
    wire[1:0] compressorout_bh6_20_20;
    wire heap_bh6_w10_11;
    wire heap_bh6_w10_11_d1;
    wire heap_bh6_w11_12;
    wire[2:0] compressorin_bh6_21_35;
    wire[1:0] compressorout_bh6_21_21;
    wire heap_bh6_w12_11;
    wire heap_bh6_w13_10;
    wire[2:0] compressorin_bh6_22_36;
    wire[1:0] compressorout_bh6_22_22;
    wire heap_bh6_w15_9;
    wire heap_bh6_w16_6;
    wire[2:0] compressorin_bh6_23_37;
    wire[1:0] compressorin_bh6_23_38;
    wire[2:0] compressorout_bh6_23_23;
    wire heap_bh6_w11_13;
    wire heap_bh6_w11_13_d1;
    wire heap_bh6_w12_12;
    wire heap_bh6_w12_12_d1;
    wire heap_bh6_w13_11;
    wire heap_bh6_w13_11_d1;
    wire[2:0] compressorin_bh6_24_39;
    wire[1:0] compressorin_bh6_24_40;
    wire[2:0] compressorout_bh6_24_24;
    wire heap_bh6_w13_12;
    wire heap_bh6_w13_12_d1;
    wire heap_bh6_w14_9;
    wire heap_bh6_w14_9_d1;
    wire heap_bh6_w15_10;
    wire[2:0] compressorin_bh6_25_41;
    wire[1:0] compressorin_bh6_25_42;
    wire[2:0] compressorout_bh6_25_25;
    wire heap_bh6_w18_5;
    wire heap_bh6_w19_2;
    wire heap_bh6_w19_2_d1;
    wire heap_bh6_w20_1;
    wire heap_bh6_w20_1_d1;
    wire[2:0] compressorin_bh6_26_43;
    wire[1:0] compressorin_bh6_26_44;
    wire[2:0] compressorout_bh6_26_26;
    wire heap_bh6_w15_11;
    wire heap_bh6_w15_11_d1;
    wire heap_bh6_w16_7;
    wire heap_bh6_w16_7_d1;
    wire heap_bh6_w17_6;
    wire[2:0] compressorin_bh6_27_45;
    wire compressorin_bh6_27_46;
    wire[2:0] compressorout_bh6_27_27;
    wire heap_bh6_w17_7;
    wire heap_bh6_w17_7_d1;
    wire heap_bh6_w18_6;
    wire heap_bh6_w18_6_d1;
    wire heap_bh6_w19_3;
    wire heap_bh6_w19_3_d1;
    wire[19:0] finaladderin0_bh6;
    wire[19:0] finaladderin1_bh6;
    wire finaladdercin_bh6;
    wire[19:0] finaladderout_bh6;
    wire[22:0] compressionresult6;
    reg n154_q;
    reg n155_q;
    reg n156_q;
    reg[1:0] n157_q;
    reg n158_q;
    reg n159_q;
    reg n160_q;
    reg n161_q;
    reg n162_q;
    reg n163_q;
    reg n164_q;
    reg n165_q;
    reg n166_q;
    reg n167_q;
    reg n168_q;
    reg n169_q;
    reg n170_q;
    reg n171_q;
    reg n172_q;
    reg n173_q;
    reg n174_q;
    reg n175_q;
    reg n176_q;
    reg n177_q;
    reg n178_q;
    reg n179_q;
    reg n180_q;
    reg n181_q;
    reg n182_q;
    reg n183_q;
    reg n184_q;
    reg n185_q;
    wire[11:0] n187_o;
    wire[11:0] n189_o;
    wire[2:0] n190_o;
    wire[2:0] n191_o;
    wire[2:0] n192_o;
    wire[2:0] n193_o;
    wire[2:0] n194_o;
    wire[2:0] n195_o;
    wire[2:0] n196_o;
    wire[2:0] n197_o;
    wire[5:0] n198_o;
    wire[5:0] pp_m5_7x0y0_tbl_n199;
    wire[5:0] pp_m5_7x0y0_tbl_y;
    wire n202_o;
    wire n203_o;
    wire n204_o;
    wire n205_o;
    wire[5:0] n206_o;
    wire[5:0] pp_m5_7x1y0_tbl_n207;
    wire[5:0] pp_m5_7x1y0_tbl_y;
    wire n210_o;
    wire n211_o;
    wire n212_o;
    wire n213_o;
    wire n214_o;
    wire[5:0] n215_o;
    wire[5:0] pp_m5_7x2y0_tbl_n216;
    wire[5:0] pp_m5_7x2y0_tbl_y;
    wire n219_o;
    wire n220_o;
    wire n221_o;
    wire n222_o;
    wire n223_o;
    wire[5:0] n224_o;
    wire[5:0] pp_m5_7x3y0_tbl_n225;
    wire[5:0] pp_m5_7x3y0_tbl_y;
    wire n228_o;
    wire n229_o;
    wire n230_o;
    wire n231_o;
    wire n232_o;
    wire[5:0] n233_o;
    wire[5:0] pp_m5_7x0y1_tbl_n234;
    wire[5:0] pp_m5_7x0y1_tbl_y;
    wire n237_o;
    wire n238_o;
    wire n239_o;
    wire n240_o;
    wire n241_o;
    wire[5:0] n242_o;
    wire[5:0] pp_m5_7x1y1_tbl_n243;
    wire[5:0] pp_m5_7x1y1_tbl_y;
    wire n246_o;
    wire n247_o;
    wire n248_o;
    wire n249_o;
    wire n250_o;
    wire n251_o;
    wire[5:0] n252_o;
    wire[5:0] pp_m5_7x2y1_tbl_n253;
    wire[5:0] pp_m5_7x2y1_tbl_y;
    wire n256_o;
    wire n257_o;
    wire n258_o;
    wire n259_o;
    wire n260_o;
    wire n261_o;
    wire[5:0] n262_o;
    wire[5:0] pp_m5_7x3y1_tbl_n263;
    wire[5:0] pp_m5_7x3y1_tbl_y;
    wire n266_o;
    wire n267_o;
    wire n268_o;
    wire n269_o;
    wire n270_o;
    wire n271_o;
    wire[5:0] n272_o;
    wire[5:0] pp_m5_7x0y2_tbl_n273;
    wire[5:0] pp_m5_7x0y2_tbl_y;
    wire n276_o;
    wire n277_o;
    wire n278_o;
    wire n279_o;
    wire n280_o;
    wire[5:0] n281_o;
    wire[5:0] pp_m5_7x1y2_tbl_n282;
    wire[5:0] pp_m5_7x1y2_tbl_y;
    wire n285_o;
    wire n286_o;
    wire n287_o;
    wire n288_o;
    wire n289_o;
    wire n290_o;
    wire[5:0] n291_o;
    wire[5:0] pp_m5_7x2y2_tbl_n292;
    wire[5:0] pp_m5_7x2y2_tbl_y;
    wire n295_o;
    wire n296_o;
    wire n297_o;
    wire n298_o;
    wire n299_o;
    wire n300_o;
    wire[5:0] n301_o;
    wire[5:0] pp_m5_7x3y2_tbl_n302;
    wire[5:0] pp_m5_7x3y2_tbl_y;
    wire n305_o;
    wire n306_o;
    wire n307_o;
    wire n308_o;
    wire n309_o;
    wire n310_o;
    wire[5:0] n311_o;
    wire[5:0] pp_m5_7x0y3_tbl_n312;
    wire[5:0] pp_m5_7x0y3_tbl_y;
    wire n315_o;
    wire n316_o;
    wire n317_o;
    wire n318_o;
    wire n319_o;
    wire[5:0] n320_o;
    wire[5:0] pp_m5_7x1y3_tbl_n321;
    wire[5:0] pp_m5_7x1y3_tbl_y;
    wire n324_o;
    wire n325_o;
    wire n326_o;
    wire n327_o;
    wire n328_o;
    wire n329_o;
    wire[5:0] n330_o;
    wire[5:0] pp_m5_7x2y3_tbl_n331;
    wire[5:0] pp_m5_7x2y3_tbl_y;
    wire n334_o;
    wire n335_o;
    wire n336_o;
    wire n337_o;
    wire n338_o;
    wire n339_o;
    wire[5:0] n340_o;
    wire[5:0] pp_m5_7x3y3_tbl_n341;
    wire[5:0] pp_m5_7x3y3_tbl_y;
    wire n344_o;
    wire n345_o;
    wire n346_o;
    wire n347_o;
    wire n348_o;
    wire n349_o;
    wire[1:0] n350_o;
    wire[1:0] n351_o;
    wire[2:0] n352_o;
    wire[3:0] n353_o;
    wire[4:0] n354_o;
    wire[5:0] n355_o;
    wire[2:0] compressor_bh6_0_n356;
    wire[2:0] compressor_bh6_0_r;
    wire n359_o;
    wire n360_o;
    wire n361_o;
    wire[1:0] n362_o;
    wire[2:0] n363_o;
    wire[3:0] n364_o;
    wire[4:0] n365_o;
    wire[5:0] n366_o;
    wire[2:0] compressor_bh6_1_n367;
    wire[2:0] compressor_bh6_1_r;
    wire n370_o;
    wire n371_o;
    wire n372_o;
    wire[1:0] n373_o;
    wire[2:0] n374_o;
    wire[3:0] n375_o;
    wire[4:0] n376_o;
    wire[5:0] n377_o;
    wire[2:0] compressor_bh6_2_n378;
    wire[2:0] compressor_bh6_2_r;
    wire n381_o;
    wire n382_o;
    wire n383_o;
    wire[1:0] n384_o;
    wire[2:0] n385_o;
    wire[3:0] n386_o;
    wire[4:0] n387_o;
    wire[5:0] n388_o;
    wire[2:0] compressor_bh6_3_n389;
    wire[2:0] compressor_bh6_3_r;
    wire n392_o;
    wire n393_o;
    wire n394_o;
    wire[1:0] n395_o;
    wire[2:0] n396_o;
    wire[3:0] n397_o;
    wire[4:0] n398_o;
    wire[5:0] n399_o;
    wire[2:0] compressor_bh6_4_n400;
    wire[2:0] compressor_bh6_4_r;
    wire n403_o;
    wire n404_o;
    wire n405_o;
    wire[1:0] n406_o;
    wire[2:0] n407_o;
    wire[3:0] n408_o;
    wire[2:0] compressor_bh6_5_n409;
    wire[2:0] compressor_bh6_5_r;
    wire n412_o;
    wire n413_o;
    wire n414_o;
    wire[1:0] n415_o;
    wire[2:0] n416_o;
    wire[3:0] n417_o;
    wire[2:0] compressor_bh6_6_n418;
    wire[2:0] compressor_bh6_6_r;
    wire n421_o;
    wire n422_o;
    wire n423_o;
    wire[1:0] n424_o;
    wire[2:0] n425_o;
    wire[3:0] n426_o;
    wire[2:0] compressor_bh6_7_n427;
    wire[2:0] compressor_bh6_7_r;
    wire n430_o;
    wire n431_o;
    wire n432_o;
    wire[1:0] n433_o;
    wire[2:0] n434_o;
    wire[3:0] n435_o;
    wire[2:0] compressor_bh6_8_n436;
    wire[2:0] compressor_bh6_8_r;
    wire n439_o;
    wire n440_o;
    wire n441_o;
    wire[1:0] n442_o;
    wire[2:0] n443_o;
    wire[3:0] n444_o;
    wire[2:0] compressor_bh6_9_n445;
    wire[2:0] compressor_bh6_9_r;
    wire n448_o;
    wire n449_o;
    wire n450_o;
    wire[1:0] n451_o;
    wire[2:0] n452_o;
    wire[3:0] n453_o;
    wire[2:0] compressor_bh6_10_n454;
    wire[2:0] compressor_bh6_10_r;
    wire n457_o;
    wire n458_o;
    wire n459_o;
    wire[1:0] n460_o;
    wire[2:0] n461_o;
    wire[1:0] n462_o;
    wire[2:0] compressor_bh6_11_n463;
    wire[2:0] compressor_bh6_11_r;
    wire n466_o;
    wire n467_o;
    wire n468_o;
    wire[1:0] n469_o;
    wire[2:0] n470_o;
    wire[1:0] n471_o;
    wire[2:0] compressor_bh6_12_n472;
    wire[2:0] compressor_bh6_12_r;
    wire n475_o;
    wire n476_o;
    wire n477_o;
    wire[1:0] n478_o;
    wire[2:0] n479_o;
    wire[2:0] compressor_bh6_13_n480;
    wire[2:0] compressor_bh6_13_r;
    wire n483_o;
    wire n484_o;
    wire n485_o;
    wire[1:0] n486_o;
    wire[2:0] n487_o;
    wire[3:0] n488_o;
    wire[2:0] compressor_bh6_14_n489;
    wire[2:0] compressor_bh6_14_r;
    wire n492_o;
    wire n493_o;
    wire n494_o;
    wire[1:0] n495_o;
    wire[2:0] n496_o;
    wire[3:0] n497_o;
    wire[2:0] compressor_bh6_15_n498;
    wire[2:0] compressor_bh6_15_r;
    wire n501_o;
    wire n502_o;
    wire n503_o;
    wire[1:0] n504_o;
    wire[2:0] n505_o;
    wire[3:0] n506_o;
    wire[2:0] compressor_bh6_16_n507;
    wire[2:0] compressor_bh6_16_r;
    wire n510_o;
    wire n511_o;
    wire n512_o;
    wire[1:0] n513_o;
    wire[2:0] n514_o;
    wire[3:0] n515_o;
    wire[2:0] compressor_bh6_17_n516;
    wire[2:0] compressor_bh6_17_r;
    wire n519_o;
    wire n520_o;
    wire n521_o;
    wire[1:0] n522_o;
    wire[2:0] n523_o;
    wire[1:0] n524_o;
    wire[2:0] compressor_bh6_18_n525;
    wire[2:0] compressor_bh6_18_r;
    wire n528_o;
    wire n529_o;
    wire n530_o;
    wire[1:0] n531_o;
    wire[2:0] n532_o;
    wire[1:0] compressor_bh6_19_n533;
    wire[1:0] compressor_bh6_19_r;
    wire n536_o;
    wire n537_o;
    wire[1:0] n538_o;
    wire[2:0] n539_o;
    wire[1:0] compressor_bh6_20_n540;
    wire[1:0] compressor_bh6_20_r;
    wire n543_o;
    wire n544_o;
    wire[1:0] n545_o;
    wire[2:0] n546_o;
    wire[1:0] compressor_bh6_21_n547;
    wire[1:0] compressor_bh6_21_r;
    wire n550_o;
    wire n551_o;
    wire[1:0] n552_o;
    wire[2:0] n553_o;
    wire[1:0] compressor_bh6_22_n554;
    wire[1:0] compressor_bh6_22_r;
    wire n557_o;
    wire n558_o;
    wire[1:0] n559_o;
    wire[2:0] n560_o;
    wire[1:0] n561_o;
    wire[2:0] compressor_bh6_23_n562;
    wire[2:0] compressor_bh6_23_r;
    wire n565_o;
    wire n566_o;
    wire n567_o;
    wire[1:0] n568_o;
    wire[2:0] n569_o;
    wire[1:0] n570_o;
    wire[2:0] compressor_bh6_24_n571;
    wire[2:0] compressor_bh6_24_r;
    wire n574_o;
    wire n575_o;
    wire n576_o;
    wire[1:0] n577_o;
    wire[2:0] n578_o;
    wire[1:0] n579_o;
    wire[2:0] compressor_bh6_25_n580;
    wire[2:0] compressor_bh6_25_r;
    wire n583_o;
    wire n584_o;
    wire n585_o;
    wire[1:0] n586_o;
    wire[2:0] n587_o;
    wire[1:0] n588_o;
    wire[2:0] compressor_bh6_26_n589;
    wire[2:0] compressor_bh6_26_r;
    wire n592_o;
    wire n593_o;
    wire n594_o;
    wire[1:0] n595_o;
    wire[2:0] n596_o;
    wire[2:0] compressor_bh6_27_n597;
    wire[2:0] compressor_bh6_27_r;
    wire n600_o;
    wire n601_o;
    wire n602_o;
    wire[1:0] n604_o;
    wire[2:0] n605_o;
    wire[3:0] n606_o;
    wire[4:0] n607_o;
    wire[5:0] n608_o;
    wire[6:0] n609_o;
    wire[7:0] n610_o;
    wire[8:0] n611_o;
    wire[9:0] n612_o;
    wire[10:0] n613_o;
    wire[11:0] n614_o;
    wire[12:0] n615_o;
    wire[13:0] n616_o;
    wire[14:0] n617_o;
    wire[15:0] n618_o;
    wire[16:0] n619_o;
    wire[17:0] n620_o;
    wire[18:0] n621_o;
    wire[19:0] n622_o;
    wire[2:0] n624_o;
    wire[3:0] n625_o;
    wire[4:0] n627_o;
    wire[5:0] n629_o;
    wire[6:0] n631_o;
    wire[7:0] n633_o;
    wire[8:0] n634_o;
    wire[9:0] n635_o;
    wire[10:0] n637_o;
    wire[11:0] n639_o;
    wire[12:0] n640_o;
    wire[13:0] n641_o;
    wire[14:0] n642_o;
    wire[15:0] n643_o;
    wire[16:0] n645_o;
    wire[17:0] n646_o;
    wire[18:0] n647_o;
    wire[19:0] n648_o;
    wire[19:0] adder_final6_0_n650;
    wire[19:0] adder_final6_0_r;
    wire[20:0] n653_o;
    wire[22:0] n654_o;
    wire[21:0] n655_o;
    assign r = n655_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:839:20  */
    assign xx_m5 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:840:20  */
    assign yy_m5 = y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:501:8  */
    assign xp_m5b7 = n187_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:502:8  */
    assign yp_m5b7 = n189_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:503:8  */
    assign x_m5b7_0 = n190_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:504:8  */
    assign x_m5b7_1 = n191_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:505:8  */
    assign x_m5b7_2 = n192_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:506:8  */
    assign x_m5b7_3 = n193_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:507:8  */
    assign y_m5b7_0 = n194_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:508:8  */
    assign y_m5b7_1 = n195_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:509:8  */
    assign y_m5b7_2 = n196_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:510:8  */
    assign y_m5b7_3 = n197_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:511:8  */
    assign y0x0_7_m5 = n198_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:512:8  */
    assign pp7x0y0_m5 = pp_m5_7x0y0_tbl_n199; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:513:8  */
    assign heap_bh6_w0_0 = n202_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:514:8  */
    assign heap_bh6_w1_0 = n203_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:515:8  */
    assign heap_bh6_w2_0 = n204_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:516:8  */
    assign heap_bh6_w3_0 = n205_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:516:23  */
    assign heap_bh6_w3_0_d1 = n154_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:517:8  */
    assign y0x1_7_m5 = n206_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:518:8  */
    assign pp7x1y0_m5 = pp_m5_7x1y0_tbl_n207; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:519:8  */
    assign heap_bh6_w2_1 = n210_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:520:8  */
    assign heap_bh6_w3_1 = n211_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:521:8  */
    assign heap_bh6_w4_0 = n212_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:522:8  */
    assign heap_bh6_w5_0 = n213_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:523:8  */
    assign heap_bh6_w6_0 = n214_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:524:8  */
    assign y0x2_7_m5 = n215_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:525:8  */
    assign pp7x2y0_m5 = pp_m5_7x2y0_tbl_n216; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:526:8  */
    assign heap_bh6_w5_1 = n219_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:527:8  */
    assign heap_bh6_w6_1 = n220_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:528:8  */
    assign heap_bh6_w7_0 = n221_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:529:8  */
    assign heap_bh6_w8_0 = n222_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:530:8  */
    assign heap_bh6_w9_0 = n223_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:531:8  */
    assign y0x3_7_m5 = n224_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:532:8  */
    assign pp7x3y0_m5 = pp_m5_7x3y0_tbl_n225; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:533:8  */
    assign heap_bh6_w8_1 = n228_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:534:8  */
    assign heap_bh6_w9_1 = n229_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:535:8  */
    assign heap_bh6_w10_0 = n230_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:536:8  */
    assign heap_bh6_w11_0 = n231_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:537:8  */
    assign heap_bh6_w12_0 = n232_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:538:8  */
    assign y1x0_7_m5 = n233_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:539:8  */
    assign pp7x0y1_m5 = pp_m5_7x0y1_tbl_n234; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:540:8  */
    assign heap_bh6_w2_2 = n237_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:541:8  */
    assign heap_bh6_w3_2 = n238_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:542:8  */
    assign heap_bh6_w4_1 = n239_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:543:8  */
    assign heap_bh6_w5_2 = n240_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:544:8  */
    assign heap_bh6_w6_2 = n241_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:545:8  */
    assign y1x1_7_m5 = n242_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:546:8  */
    assign pp7x1y1_m5 = pp_m5_7x1y1_tbl_n243; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:547:8  */
    assign heap_bh6_w4_2 = n246_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:548:8  */
    assign heap_bh6_w5_3 = n247_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:549:8  */
    assign heap_bh6_w6_3 = n248_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:550:8  */
    assign heap_bh6_w7_1 = n249_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:551:8  */
    assign heap_bh6_w8_2 = n250_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:552:8  */
    assign heap_bh6_w9_2 = n251_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:553:8  */
    assign y1x2_7_m5 = n252_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:554:8  */
    assign pp7x2y1_m5 = pp_m5_7x2y1_tbl_n253; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:555:8  */
    assign heap_bh6_w7_2 = n256_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:556:8  */
    assign heap_bh6_w8_3 = n257_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:557:8  */
    assign heap_bh6_w9_3 = n258_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:558:8  */
    assign heap_bh6_w10_1 = n259_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:559:8  */
    assign heap_bh6_w11_1 = n260_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:560:8  */
    assign heap_bh6_w12_1 = n261_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:561:8  */
    assign y1x3_7_m5 = n262_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:562:8  */
    assign pp7x3y1_m5 = pp_m5_7x3y1_tbl_n263; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:563:8  */
    assign heap_bh6_w10_2 = n266_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:564:8  */
    assign heap_bh6_w11_2 = n267_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:565:8  */
    assign heap_bh6_w12_2 = n268_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:566:8  */
    assign heap_bh6_w13_0 = n269_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:567:8  */
    assign heap_bh6_w14_0 = n270_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:568:8  */
    assign heap_bh6_w15_0 = n271_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:569:8  */
    assign y2x0_7_m5 = n272_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:570:8  */
    assign pp7x0y2_m5 = pp_m5_7x0y2_tbl_n273; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:571:8  */
    assign heap_bh6_w5_4 = n276_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:572:8  */
    assign heap_bh6_w6_4 = n277_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:573:8  */
    assign heap_bh6_w7_3 = n278_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:574:8  */
    assign heap_bh6_w8_4 = n279_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:575:8  */
    assign heap_bh6_w9_4 = n280_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:576:8  */
    assign y2x1_7_m5 = n281_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:577:8  */
    assign pp7x1y2_m5 = pp_m5_7x1y2_tbl_n282; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:578:8  */
    assign heap_bh6_w7_4 = n285_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:579:8  */
    assign heap_bh6_w8_5 = n286_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:580:8  */
    assign heap_bh6_w9_5 = n287_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:581:8  */
    assign heap_bh6_w10_3 = n288_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:582:8  */
    assign heap_bh6_w11_3 = n289_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:583:8  */
    assign heap_bh6_w12_3 = n290_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:584:8  */
    assign y2x2_7_m5 = n291_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:585:8  */
    assign pp7x2y2_m5 = pp_m5_7x2y2_tbl_n292; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:586:8  */
    assign heap_bh6_w10_4 = n295_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:587:8  */
    assign heap_bh6_w11_4 = n296_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:588:8  */
    assign heap_bh6_w12_4 = n297_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:589:8  */
    assign heap_bh6_w13_1 = n298_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:590:8  */
    assign heap_bh6_w14_1 = n299_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:591:8  */
    assign heap_bh6_w15_1 = n300_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:592:8  */
    assign y2x3_7_m5 = n301_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:593:8  */
    assign pp7x3y2_m5 = pp_m5_7x3y2_tbl_n302; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:594:8  */
    assign heap_bh6_w13_2 = n305_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:595:8  */
    assign heap_bh6_w14_2 = n306_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:596:8  */
    assign heap_bh6_w15_2 = n307_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:597:8  */
    assign heap_bh6_w16_0 = n308_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:598:8  */
    assign heap_bh6_w17_0 = n309_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:599:8  */
    assign heap_bh6_w18_0 = n310_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:600:8  */
    assign y3x0_7_m5 = n311_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:601:8  */
    assign pp7x0y3_m5 = pp_m5_7x0y3_tbl_n312; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:602:8  */
    assign heap_bh6_w8_6 = n315_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:603:8  */
    assign heap_bh6_w9_6 = n316_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:604:8  */
    assign heap_bh6_w10_5 = n317_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:605:8  */
    assign heap_bh6_w11_5 = n318_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:606:8  */
    assign heap_bh6_w12_5 = n319_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:607:8  */
    assign y3x1_7_m5 = n320_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:608:8  */
    assign pp7x1y3_m5 = pp_m5_7x1y3_tbl_n321; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:609:8  */
    assign heap_bh6_w10_6 = n324_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:610:8  */
    assign heap_bh6_w11_6 = n325_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:611:8  */
    assign heap_bh6_w12_6 = n326_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:612:8  */
    assign heap_bh6_w13_3 = n327_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:613:8  */
    assign heap_bh6_w14_3 = n328_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:614:8  */
    assign heap_bh6_w15_3 = n329_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:615:8  */
    assign y3x2_7_m5 = n330_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:616:8  */
    assign pp7x2y3_m5 = pp_m5_7x2y3_tbl_n331; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:617:8  */
    assign heap_bh6_w13_4 = n334_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:618:8  */
    assign heap_bh6_w14_4 = n335_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:619:8  */
    assign heap_bh6_w15_4 = n336_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:620:8  */
    assign heap_bh6_w16_1 = n337_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:621:8  */
    assign heap_bh6_w17_1 = n338_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:622:8  */
    assign heap_bh6_w18_1 = n339_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:623:8  */
    assign y3x3_7_m5 = n340_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:624:8  */
    assign pp7x3y3_m5 = pp_m5_7x3y3_tbl_n341; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:625:8  */
    assign heap_bh6_w16_2 = n344_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:626:8  */
    assign heap_bh6_w17_2 = n345_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:627:8  */
    assign heap_bh6_w18_2 = n346_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:628:8  */
    assign heap_bh6_w19_0 = n347_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:629:8  */
    assign heap_bh6_w20_0 = n348_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:629:24  */
    assign heap_bh6_w20_0_d1 = n155_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:630:8  */
    assign heap_bh6_w21_0 = n349_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:630:24  */
    assign heap_bh6_w21_0_d1 = n156_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:631:8  */
    assign tempr_bh6_0 = n350_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:631:21  */
    assign tempr_bh6_0_d1 = n157_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:632:8  */
    assign compressorin_bh6_0_0 = n355_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:633:8  */
    assign compressorout_bh6_0_0 = compressor_bh6_0_n356; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:634:8  */
    assign heap_bh6_w8_7 = n359_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:635:8  */
    assign heap_bh6_w9_7 = n360_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:636:8  */
    assign heap_bh6_w10_7 = n361_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:637:8  */
    assign compressorin_bh6_1_1 = n366_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:638:8  */
    assign compressorout_bh6_1_1 = compressor_bh6_1_n367; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:639:8  */
    assign heap_bh6_w9_8 = n370_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:640:8  */
    assign heap_bh6_w10_8 = n371_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:641:8  */
    assign heap_bh6_w11_7 = n372_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:642:8  */
    assign compressorin_bh6_2_2 = n377_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:643:8  */
    assign compressorout_bh6_2_2 = compressor_bh6_2_n378; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:644:8  */
    assign heap_bh6_w10_9 = n381_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:645:8  */
    assign heap_bh6_w11_8 = n382_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:646:8  */
    assign heap_bh6_w12_7 = n383_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:647:8  */
    assign compressorin_bh6_3_3 = n388_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:648:8  */
    assign compressorout_bh6_3_3 = compressor_bh6_3_n389; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:649:8  */
    assign heap_bh6_w11_9 = n392_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:650:8  */
    assign heap_bh6_w12_8 = n393_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:651:8  */
    assign heap_bh6_w13_5 = n394_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:652:8  */
    assign compressorin_bh6_4_4 = n399_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:653:8  */
    assign compressorout_bh6_4_4 = compressor_bh6_4_n400; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:654:8  */
    assign heap_bh6_w12_9 = n403_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:655:8  */
    assign heap_bh6_w13_6 = n404_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:656:8  */
    assign heap_bh6_w14_5 = n405_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:657:8  */
    assign compressorin_bh6_5_5 = n408_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:658:8  */
    assign compressorin_bh6_5_6 = heap_bh6_w6_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:659:8  */
    assign compressorout_bh6_5_5 = compressor_bh6_5_n409; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:660:8  */
    assign heap_bh6_w5_5 = n412_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:660:23  */
    assign heap_bh6_w5_5_d1 = n158_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:661:8  */
    assign heap_bh6_w6_5 = n413_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:662:8  */
    assign heap_bh6_w7_5 = n414_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:662:23  */
    assign heap_bh6_w7_5_d1 = n159_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:663:8  */
    assign compressorin_bh6_6_7 = n417_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:664:8  */
    assign compressorin_bh6_6_8 = heap_bh6_w7_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:665:8  */
    assign compressorout_bh6_6_6 = compressor_bh6_6_n418; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:666:8  */
    assign heap_bh6_w6_6 = n421_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:667:8  */
    assign heap_bh6_w7_6 = n422_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:668:8  */
    assign heap_bh6_w8_8 = n423_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:669:8  */
    assign compressorin_bh6_7_9 = n426_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:670:8  */
    assign compressorin_bh6_7_10 = heap_bh6_w8_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:671:8  */
    assign compressorout_bh6_7_7 = compressor_bh6_7_n427; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:672:8  */
    assign heap_bh6_w7_7 = n430_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:673:8  */
    assign heap_bh6_w8_9 = n431_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:674:8  */
    assign heap_bh6_w9_9 = n432_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:675:8  */
    assign compressorin_bh6_8_11 = n435_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:676:8  */
    assign compressorin_bh6_8_12 = heap_bh6_w14_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:677:8  */
    assign compressorout_bh6_8_8 = compressor_bh6_8_n436; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:678:8  */
    assign heap_bh6_w13_7 = n439_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:679:8  */
    assign heap_bh6_w14_6 = n440_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:680:8  */
    assign heap_bh6_w15_5 = n441_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:681:8  */
    assign compressorin_bh6_9_13 = n444_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:682:8  */
    assign compressorin_bh6_9_14 = heap_bh6_w15_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:683:8  */
    assign compressorout_bh6_9_9 = compressor_bh6_9_n445; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:684:8  */
    assign heap_bh6_w14_7 = n448_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:685:8  */
    assign heap_bh6_w15_6 = n449_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:686:8  */
    assign heap_bh6_w16_3 = n450_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:687:8  */
    assign compressorin_bh6_10_15 = n453_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:688:8  */
    assign compressorin_bh6_10_16 = heap_bh6_w16_2; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:689:8  */
    assign compressorout_bh6_10_10 = compressor_bh6_10_n454; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:690:8  */
    assign heap_bh6_w15_7 = n457_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:691:8  */
    assign heap_bh6_w16_4 = n458_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:692:8  */
    assign heap_bh6_w17_3 = n459_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:693:8  */
    assign compressorin_bh6_11_17 = n461_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:694:8  */
    assign compressorin_bh6_11_18 = n462_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:695:8  */
    assign compressorout_bh6_11_11 = compressor_bh6_11_n463; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:696:8  */
    assign heap_bh6_w2_3 = n466_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:697:8  */
    assign heap_bh6_w3_3 = n467_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:697:23  */
    assign heap_bh6_w3_3_d1 = n160_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:698:8  */
    assign heap_bh6_w4_3 = n468_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:698:23  */
    assign heap_bh6_w4_3_d1 = n161_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:699:8  */
    assign compressorin_bh6_12_19 = n470_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:700:8  */
    assign compressorin_bh6_12_20 = n471_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:701:8  */
    assign compressorout_bh6_12_12 = compressor_bh6_12_n472; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:702:8  */
    assign heap_bh6_w17_4 = n475_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:703:8  */
    assign heap_bh6_w18_3 = n476_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:704:8  */
    assign heap_bh6_w19_1 = n477_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:705:8  */
    assign compressorin_bh6_13_21 = n479_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:706:8  */
    assign compressorin_bh6_13_22 = heap_bh6_w5_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:707:8  */
    assign compressorout_bh6_13_13 = compressor_bh6_13_n480; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:708:8  */
    assign heap_bh6_w4_4 = n483_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:708:23  */
    assign heap_bh6_w4_4_d1 = n162_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:709:8  */
    assign heap_bh6_w5_6 = n484_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:709:23  */
    assign heap_bh6_w5_6_d1 = n163_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:710:8  */
    assign heap_bh6_w6_7 = n485_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:711:8  */
    assign tempr_bh6_1 = heap_bh6_w2_3; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:711:21  */
    assign tempr_bh6_1_d1 = n164_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:712:8  */
    assign compressorin_bh6_14_23 = n488_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:713:8  */
    assign compressorin_bh6_14_24 = heap_bh6_w10_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:714:8  */
    assign compressorout_bh6_14_14 = compressor_bh6_14_n489; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:715:8  */
    assign heap_bh6_w9_10 = n492_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:715:24  */
    assign heap_bh6_w9_10_d1 = n165_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:716:8  */
    assign heap_bh6_w10_10 = n493_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:716:25  */
    assign heap_bh6_w10_10_d1 = n166_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:717:8  */
    assign heap_bh6_w11_10 = n494_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:718:8  */
    assign compressorin_bh6_15_25 = n497_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:719:8  */
    assign compressorin_bh6_15_26 = heap_bh6_w12_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:720:8  */
    assign compressorout_bh6_15_15 = compressor_bh6_15_n498; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:721:8  */
    assign heap_bh6_w11_11 = n501_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:722:8  */
    assign heap_bh6_w12_10 = n502_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:723:8  */
    assign heap_bh6_w13_8 = n503_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:724:8  */
    assign compressorin_bh6_16_27 = n506_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:725:8  */
    assign compressorin_bh6_16_28 = heap_bh6_w14_7; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:726:8  */
    assign compressorout_bh6_16_16 = compressor_bh6_16_n507; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:727:8  */
    assign heap_bh6_w13_9 = n510_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:728:8  */
    assign heap_bh6_w14_8 = n511_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:728:24  */
    assign heap_bh6_w14_8_d1 = n167_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:729:8  */
    assign heap_bh6_w15_8 = n512_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:730:8  */
    assign compressorin_bh6_17_29 = n515_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:731:8  */
    assign compressorin_bh6_17_30 = heap_bh6_w17_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:732:8  */
    assign compressorout_bh6_17_17 = compressor_bh6_17_n516; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:733:8  */
    assign heap_bh6_w16_5 = n519_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:734:8  */
    assign heap_bh6_w17_5 = n520_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:735:8  */
    assign heap_bh6_w18_4 = n521_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:736:8  */
    assign compressorin_bh6_18_31 = n523_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:737:8  */
    assign compressorin_bh6_18_32 = n524_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:738:8  */
    assign compressorout_bh6_18_18 = compressor_bh6_18_n525; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:739:8  */
    assign heap_bh6_w6_8 = n528_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:739:23  */
    assign heap_bh6_w6_8_d1 = n168_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:740:8  */
    assign heap_bh6_w7_8 = n529_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:740:23  */
    assign heap_bh6_w7_8_d1 = n169_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:741:8  */
    assign heap_bh6_w8_10 = n530_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:741:24  */
    assign heap_bh6_w8_10_d1 = n170_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:742:8  */
    assign compressorin_bh6_19_33 = n532_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:743:8  */
    assign compressorout_bh6_19_19 = compressor_bh6_19_n533; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:744:8  */
    assign heap_bh6_w8_11 = n536_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:744:24  */
    assign heap_bh6_w8_11_d1 = n171_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:745:8  */
    assign heap_bh6_w9_11 = n537_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:745:24  */
    assign heap_bh6_w9_11_d1 = n172_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:746:8  */
    assign compressorin_bh6_20_34 = n539_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:747:8  */
    assign compressorout_bh6_20_20 = compressor_bh6_20_n540; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:748:8  */
    assign heap_bh6_w10_11 = n543_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:748:25  */
    assign heap_bh6_w10_11_d1 = n173_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:749:8  */
    assign heap_bh6_w11_12 = n544_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:750:8  */
    assign compressorin_bh6_21_35 = n546_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:751:8  */
    assign compressorout_bh6_21_21 = compressor_bh6_21_n547; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:752:8  */
    assign heap_bh6_w12_11 = n550_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:753:8  */
    assign heap_bh6_w13_10 = n551_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:754:8  */
    assign compressorin_bh6_22_36 = n553_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:755:8  */
    assign compressorout_bh6_22_22 = compressor_bh6_22_n554; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:756:8  */
    assign heap_bh6_w15_9 = n557_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:757:8  */
    assign heap_bh6_w16_6 = n558_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:758:8  */
    assign compressorin_bh6_23_37 = n560_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:759:8  */
    assign compressorin_bh6_23_38 = n561_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:760:8  */
    assign compressorout_bh6_23_23 = compressor_bh6_23_n562; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:761:8  */
    assign heap_bh6_w11_13 = n565_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:761:25  */
    assign heap_bh6_w11_13_d1 = n174_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:762:8  */
    assign heap_bh6_w12_12 = n566_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:762:25  */
    assign heap_bh6_w12_12_d1 = n175_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:763:8  */
    assign heap_bh6_w13_11 = n567_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:763:25  */
    assign heap_bh6_w13_11_d1 = n176_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:764:8  */
    assign compressorin_bh6_24_39 = n569_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:765:8  */
    assign compressorin_bh6_24_40 = n570_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:766:8  */
    assign compressorout_bh6_24_24 = compressor_bh6_24_n571; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:767:8  */
    assign heap_bh6_w13_12 = n574_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:767:25  */
    assign heap_bh6_w13_12_d1 = n177_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:768:8  */
    assign heap_bh6_w14_9 = n575_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:768:24  */
    assign heap_bh6_w14_9_d1 = n178_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:769:8  */
    assign heap_bh6_w15_10 = n576_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:770:8  */
    assign compressorin_bh6_25_41 = n578_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:771:8  */
    assign compressorin_bh6_25_42 = n579_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:772:8  */
    assign compressorout_bh6_25_25 = compressor_bh6_25_n580; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:773:8  */
    assign heap_bh6_w18_5 = n583_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:774:8  */
    assign heap_bh6_w19_2 = n584_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:774:24  */
    assign heap_bh6_w19_2_d1 = n179_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:775:8  */
    assign heap_bh6_w20_1 = n585_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:775:24  */
    assign heap_bh6_w20_1_d1 = n180_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:776:8  */
    assign compressorin_bh6_26_43 = n587_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:777:8  */
    assign compressorin_bh6_26_44 = n588_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:778:8  */
    assign compressorout_bh6_26_26 = compressor_bh6_26_n589; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:779:8  */
    assign heap_bh6_w15_11 = n592_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:779:25  */
    assign heap_bh6_w15_11_d1 = n181_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:780:8  */
    assign heap_bh6_w16_7 = n593_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:780:24  */
    assign heap_bh6_w16_7_d1 = n182_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:781:8  */
    assign heap_bh6_w17_6 = n594_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:782:8  */
    assign compressorin_bh6_27_45 = n596_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:783:8  */
    assign compressorin_bh6_27_46 = heap_bh6_w18_5; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:784:8  */
    assign compressorout_bh6_27_27 = compressor_bh6_27_n597; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:785:8  */
    assign heap_bh6_w17_7 = n600_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:785:24  */
    assign heap_bh6_w17_7_d1 = n183_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:786:8  */
    assign heap_bh6_w18_6 = n601_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:786:24  */
    assign heap_bh6_w18_6_d1 = n184_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:787:8  */
    assign heap_bh6_w19_3 = n602_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:787:24  */
    assign heap_bh6_w19_3_d1 = n185_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:788:8  */
    assign finaladderin0_bh6 = n622_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:789:8  */
    assign finaladderin1_bh6 = n648_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:790:8  */
    assign finaladdercin_bh6 = 1'b0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:791:8  */
    assign finaladderout_bh6 = adder_final6_0_n650; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:792:8  */
    assign compressionresult6 = n654_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n154_q <= heap_bh6_w3_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n155_q <= heap_bh6_w20_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n156_q <= heap_bh6_w21_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n157_q <= tempr_bh6_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n158_q <= heap_bh6_w5_5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n159_q <= heap_bh6_w7_5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n160_q <= heap_bh6_w3_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n161_q <= heap_bh6_w4_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n162_q <= heap_bh6_w4_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n163_q <= heap_bh6_w5_6;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n164_q <= tempr_bh6_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n165_q <= heap_bh6_w9_10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n166_q <= heap_bh6_w10_10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n167_q <= heap_bh6_w14_8;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n168_q <= heap_bh6_w6_8;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n169_q <= heap_bh6_w7_8;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n170_q <= heap_bh6_w8_10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n171_q <= heap_bh6_w8_11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n172_q <= heap_bh6_w9_11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n173_q <= heap_bh6_w10_11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n174_q <= heap_bh6_w11_13;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n175_q <= heap_bh6_w12_12;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n176_q <= heap_bh6_w13_11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n177_q <= heap_bh6_w13_12;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n178_q <= heap_bh6_w14_9;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n179_q <= heap_bh6_w19_2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n180_q <= heap_bh6_w20_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n181_q <= heap_bh6_w15_11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n182_q <= heap_bh6_w16_7;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n183_q <= heap_bh6_w17_7;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n184_q <= heap_bh6_w18_6;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:800:10  */
    always @(posedge clk)
        n185_q <= heap_bh6_w19_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:839:34  */
    assign n187_o = {xx_m5, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:840:34  */
    assign n189_o = {yy_m5, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:841:23  */
    assign n190_o = xp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:842:23  */
    assign n191_o = xp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:843:23  */
    assign n192_o = xp_m5b7[8:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:844:23  */
    assign n193_o = xp_m5b7[11:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:845:23  */
    assign n194_o = yp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:846:23  */
    assign n195_o = yp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:847:23  */
    assign n196_o = yp_m5b7[8:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:848:23  */
    assign n197_o = yp_m5b7[11:9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:851:26  */
    assign n198_o = {y_m5b7_0, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:856:23  */
    assign pp_m5_7x0y0_tbl_n199 = pp_m5_7x0y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:852:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x0_7_m5),
        .y(pp_m5_7x0y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:858:31  */
    assign n202_o = pp7x0y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:859:31  */
    assign n203_o = pp7x0y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:860:31  */
    assign n204_o = pp7x0y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:861:31  */
    assign n205_o = pp7x0y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:863:26  */
    assign n206_o = {y_m5b7_0, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:868:23  */
    assign pp_m5_7x1y0_tbl_n207 = pp_m5_7x1y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:864:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x1_7_m5),
        .y(pp_m5_7x1y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:870:31  */
    assign n210_o = pp7x1y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:871:31  */
    assign n211_o = pp7x1y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:872:31  */
    assign n212_o = pp7x1y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:873:31  */
    assign n213_o = pp7x1y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:874:31  */
    assign n214_o = pp7x1y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:876:26  */
    assign n215_o = {y_m5b7_0, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:881:23  */
    assign pp_m5_7x2y0_tbl_n216 = pp_m5_7x2y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:877:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x2_7_m5),
        .y(pp_m5_7x2y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:883:31  */
    assign n219_o = pp7x2y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:884:31  */
    assign n220_o = pp7x2y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:885:31  */
    assign n221_o = pp7x2y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:886:31  */
    assign n222_o = pp7x2y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:887:31  */
    assign n223_o = pp7x2y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:889:26  */
    assign n224_o = {y_m5b7_0, x_m5b7_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:894:23  */
    assign pp_m5_7x3y0_tbl_n225 = pp_m5_7x3y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:890:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x3y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x3_7_m5),
        .y(pp_m5_7x3y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:896:31  */
    assign n228_o = pp7x3y0_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:897:31  */
    assign n229_o = pp7x3y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:898:32  */
    assign n230_o = pp7x3y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:899:32  */
    assign n231_o = pp7x3y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:900:32  */
    assign n232_o = pp7x3y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:903:26  */
    assign n233_o = {y_m5b7_1, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:908:23  */
    assign pp_m5_7x0y1_tbl_n234 = pp_m5_7x0y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:904:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x0_7_m5),
        .y(pp_m5_7x0y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:910:31  */
    assign n237_o = pp7x0y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:911:31  */
    assign n238_o = pp7x0y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:912:31  */
    assign n239_o = pp7x0y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:913:31  */
    assign n240_o = pp7x0y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:914:31  */
    assign n241_o = pp7x0y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:916:26  */
    assign n242_o = {y_m5b7_1, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:921:23  */
    assign pp_m5_7x1y1_tbl_n243 = pp_m5_7x1y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:917:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x1_7_m5),
        .y(pp_m5_7x1y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:923:31  */
    assign n246_o = pp7x1y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:924:31  */
    assign n247_o = pp7x1y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:925:31  */
    assign n248_o = pp7x1y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:926:31  */
    assign n249_o = pp7x1y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:927:31  */
    assign n250_o = pp7x1y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:928:31  */
    assign n251_o = pp7x1y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:930:26  */
    assign n252_o = {y_m5b7_1, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:935:23  */
    assign pp_m5_7x2y1_tbl_n253 = pp_m5_7x2y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:931:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x2_7_m5),
        .y(pp_m5_7x2y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:937:31  */
    assign n256_o = pp7x2y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:938:31  */
    assign n257_o = pp7x2y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:939:31  */
    assign n258_o = pp7x2y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:940:32  */
    assign n259_o = pp7x2y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:941:32  */
    assign n260_o = pp7x2y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:942:32  */
    assign n261_o = pp7x2y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:944:26  */
    assign n262_o = {y_m5b7_1, x_m5b7_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:949:23  */
    assign pp_m5_7x3y1_tbl_n263 = pp_m5_7x3y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:945:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x3y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x3_7_m5),
        .y(pp_m5_7x3y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:951:32  */
    assign n266_o = pp7x3y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:952:32  */
    assign n267_o = pp7x3y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:953:32  */
    assign n268_o = pp7x3y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:954:32  */
    assign n269_o = pp7x3y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:955:32  */
    assign n270_o = pp7x3y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:956:32  */
    assign n271_o = pp7x3y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:959:26  */
    assign n272_o = {y_m5b7_2, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:964:23  */
    assign pp_m5_7x0y2_tbl_n273 = pp_m5_7x0y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:960:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x0_7_m5),
        .y(pp_m5_7x0y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:966:31  */
    assign n276_o = pp7x0y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:967:31  */
    assign n277_o = pp7x0y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:968:31  */
    assign n278_o = pp7x0y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:969:31  */
    assign n279_o = pp7x0y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:970:31  */
    assign n280_o = pp7x0y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:972:26  */
    assign n281_o = {y_m5b7_2, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:977:23  */
    assign pp_m5_7x1y2_tbl_n282 = pp_m5_7x1y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:973:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x1_7_m5),
        .y(pp_m5_7x1y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:979:31  */
    assign n285_o = pp7x1y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:980:31  */
    assign n286_o = pp7x1y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:981:31  */
    assign n287_o = pp7x1y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:982:32  */
    assign n288_o = pp7x1y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:983:32  */
    assign n289_o = pp7x1y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:984:32  */
    assign n290_o = pp7x1y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:986:26  */
    assign n291_o = {y_m5b7_2, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:991:23  */
    assign pp_m5_7x2y2_tbl_n292 = pp_m5_7x2y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:987:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x2_7_m5),
        .y(pp_m5_7x2y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:993:32  */
    assign n295_o = pp7x2y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:994:32  */
    assign n296_o = pp7x2y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:995:32  */
    assign n297_o = pp7x2y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:996:32  */
    assign n298_o = pp7x2y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:997:32  */
    assign n299_o = pp7x2y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:998:32  */
    assign n300_o = pp7x2y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1000:26  */
    assign n301_o = {y_m5b7_2, x_m5b7_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1005:23  */
    assign pp_m5_7x3y2_tbl_n302 = pp_m5_7x3y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1001:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x3y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x3_7_m5),
        .y(pp_m5_7x3y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1007:32  */
    assign n305_o = pp7x3y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1008:32  */
    assign n306_o = pp7x3y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1009:32  */
    assign n307_o = pp7x3y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1010:32  */
    assign n308_o = pp7x3y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1011:32  */
    assign n309_o = pp7x3y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1012:32  */
    assign n310_o = pp7x3y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1015:26  */
    assign n311_o = {y_m5b7_3, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1020:23  */
    assign pp_m5_7x0y3_tbl_n312 = pp_m5_7x0y3_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1016:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y3_tbl(
        .clk(clk),
        .rst(rst),
        .x(y3x0_7_m5),
        .y(pp_m5_7x0y3_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1022:31  */
    assign n315_o = pp7x0y3_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1023:31  */
    assign n316_o = pp7x0y3_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1024:32  */
    assign n317_o = pp7x0y3_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1025:32  */
    assign n318_o = pp7x0y3_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1026:32  */
    assign n319_o = pp7x0y3_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1028:26  */
    assign n320_o = {y_m5b7_3, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1033:23  */
    assign pp_m5_7x1y3_tbl_n321 = pp_m5_7x1y3_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1029:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y3_tbl(
        .clk(clk),
        .rst(rst),
        .x(y3x1_7_m5),
        .y(pp_m5_7x1y3_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1035:32  */
    assign n324_o = pp7x1y3_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1036:32  */
    assign n325_o = pp7x1y3_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1037:32  */
    assign n326_o = pp7x1y3_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1038:32  */
    assign n327_o = pp7x1y3_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1039:32  */
    assign n328_o = pp7x1y3_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1040:32  */
    assign n329_o = pp7x1y3_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1042:26  */
    assign n330_o = {y_m5b7_3, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1047:23  */
    assign pp_m5_7x2y3_tbl_n331 = pp_m5_7x2y3_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1043:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y3_tbl(
        .clk(clk),
        .rst(rst),
        .x(y3x2_7_m5),
        .y(pp_m5_7x2y3_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1049:32  */
    assign n334_o = pp7x2y3_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1050:32  */
    assign n335_o = pp7x2y3_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1051:32  */
    assign n336_o = pp7x2y3_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1052:32  */
    assign n337_o = pp7x2y3_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1053:32  */
    assign n338_o = pp7x2y3_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1054:32  */
    assign n339_o = pp7x2y3_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1056:26  */
    assign n340_o = {y_m5b7_3, x_m5b7_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1061:23  */
    assign pp_m5_7x3y3_tbl_n341 = pp_m5_7x3y3_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1057:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x3y3_tbl(
        .clk(clk),
        .rst(rst),
        .x(y3x3_7_m5),
        .y(pp_m5_7x3y3_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1063:32  */
    assign n344_o = pp7x3y3_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1064:32  */
    assign n345_o = pp7x3y3_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1065:32  */
    assign n346_o = pp7x3y3_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1066:32  */
    assign n347_o = pp7x3y3_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1067:32  */
    assign n348_o = pp7x3y3_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1068:32  */
    assign n349_o = pp7x3y3_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1080:33  */
    assign n350_o = {heap_bh6_w1_0, heap_bh6_w0_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1083:42  */
    assign n351_o = {heap_bh6_w8_6, heap_bh6_w8_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1083:58  */
    assign n352_o = {n351_o, heap_bh6_w8_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1083:74  */
    assign n353_o = {n352_o, heap_bh6_w8_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1083:90  */
    assign n354_o = {n353_o, heap_bh6_w8_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1083:106  */
    assign n355_o = {n354_o, heap_bh6_w8_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1085:23  */
    assign compressor_bh6_0_n356 = compressor_bh6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1084:7  */
    compressor_6_3 compressor_bh6_0(
        .x0(compressorin_bh6_0_0),
        .r(compressor_bh6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1087:42  */
    assign n359_o = compressorout_bh6_0_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1088:42  */
    assign n360_o = compressorout_bh6_0_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1089:43  */
    assign n361_o = compressorout_bh6_0_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1092:42  */
    assign n362_o = {heap_bh6_w9_6, heap_bh6_w9_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1092:58  */
    assign n363_o = {n362_o, heap_bh6_w9_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1092:74  */
    assign n364_o = {n363_o, heap_bh6_w9_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1092:90  */
    assign n365_o = {n364_o, heap_bh6_w9_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1092:106  */
    assign n366_o = {n365_o, heap_bh6_w9_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1094:23  */
    assign compressor_bh6_1_n367 = compressor_bh6_1_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1093:7  */
    compressor_6_3 compressor_bh6_1(
        .x0(compressorin_bh6_1_1),
        .r(compressor_bh6_1_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1096:42  */
    assign n370_o = compressorout_bh6_1_1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1097:43  */
    assign n371_o = compressorout_bh6_1_1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1098:43  */
    assign n372_o = compressorout_bh6_1_1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1101:43  */
    assign n373_o = {heap_bh6_w10_6, heap_bh6_w10_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1101:60  */
    assign n374_o = {n373_o, heap_bh6_w10_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1101:77  */
    assign n375_o = {n374_o, heap_bh6_w10_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1101:94  */
    assign n376_o = {n375_o, heap_bh6_w10_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1101:111  */
    assign n377_o = {n376_o, heap_bh6_w10_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1103:23  */
    assign compressor_bh6_2_n378 = compressor_bh6_2_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1102:7  */
    compressor_6_3 compressor_bh6_2(
        .x0(compressorin_bh6_2_2),
        .r(compressor_bh6_2_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1105:43  */
    assign n381_o = compressorout_bh6_2_2[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1106:43  */
    assign n382_o = compressorout_bh6_2_2[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1107:43  */
    assign n383_o = compressorout_bh6_2_2[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1110:43  */
    assign n384_o = {heap_bh6_w11_6, heap_bh6_w11_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1110:60  */
    assign n385_o = {n384_o, heap_bh6_w11_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1110:77  */
    assign n386_o = {n385_o, heap_bh6_w11_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1110:94  */
    assign n387_o = {n386_o, heap_bh6_w11_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1110:111  */
    assign n388_o = {n387_o, heap_bh6_w11_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1112:23  */
    assign compressor_bh6_3_n389 = compressor_bh6_3_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1111:7  */
    compressor_6_3 compressor_bh6_3(
        .x0(compressorin_bh6_3_3),
        .r(compressor_bh6_3_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1114:43  */
    assign n392_o = compressorout_bh6_3_3[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1115:43  */
    assign n393_o = compressorout_bh6_3_3[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1116:43  */
    assign n394_o = compressorout_bh6_3_3[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1119:43  */
    assign n395_o = {heap_bh6_w12_6, heap_bh6_w12_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1119:60  */
    assign n396_o = {n395_o, heap_bh6_w12_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1119:77  */
    assign n397_o = {n396_o, heap_bh6_w12_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1119:94  */
    assign n398_o = {n397_o, heap_bh6_w12_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1119:111  */
    assign n399_o = {n398_o, heap_bh6_w12_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1121:23  */
    assign compressor_bh6_4_n400 = compressor_bh6_4_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1120:7  */
    compressor_6_3 compressor_bh6_4(
        .x0(compressorin_bh6_4_4),
        .r(compressor_bh6_4_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1123:43  */
    assign n403_o = compressorout_bh6_4_4[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1124:43  */
    assign n404_o = compressorout_bh6_4_4[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1125:43  */
    assign n405_o = compressorout_bh6_4_4[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1128:42  */
    assign n406_o = {heap_bh6_w5_4, heap_bh6_w5_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1128:58  */
    assign n407_o = {n406_o, heap_bh6_w5_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1128:74  */
    assign n408_o = {n407_o, heap_bh6_w5_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1131:23  */
    assign compressor_bh6_5_n409 = compressor_bh6_5_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1130:7  */
    compressor_14_3 compressor_bh6_5(
        .x0(compressorin_bh6_5_5),
        .x1(compressorin_bh6_5_6),
        .r(compressor_bh6_5_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1134:42  */
    assign n412_o = compressorout_bh6_5_5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1135:42  */
    assign n413_o = compressorout_bh6_5_5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1136:42  */
    assign n414_o = compressorout_bh6_5_5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1139:42  */
    assign n415_o = {heap_bh6_w6_3, heap_bh6_w6_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1139:58  */
    assign n416_o = {n415_o, heap_bh6_w6_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1139:74  */
    assign n417_o = {n416_o, heap_bh6_w6_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1142:23  */
    assign compressor_bh6_6_n418 = compressor_bh6_6_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1141:7  */
    compressor_14_3 compressor_bh6_6(
        .x0(compressorin_bh6_6_7),
        .x1(compressorin_bh6_6_8),
        .r(compressor_bh6_6_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1145:42  */
    assign n421_o = compressorout_bh6_6_6[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1146:42  */
    assign n422_o = compressorout_bh6_6_6[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1147:42  */
    assign n423_o = compressorout_bh6_6_6[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1150:42  */
    assign n424_o = {heap_bh6_w7_3, heap_bh6_w7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1150:58  */
    assign n425_o = {n424_o, heap_bh6_w7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1150:74  */
    assign n426_o = {n425_o, heap_bh6_w7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1153:23  */
    assign compressor_bh6_7_n427 = compressor_bh6_7_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1152:7  */
    compressor_14_3 compressor_bh6_7(
        .x0(compressorin_bh6_7_9),
        .x1(compressorin_bh6_7_10),
        .r(compressor_bh6_7_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1156:42  */
    assign n430_o = compressorout_bh6_7_7[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1157:42  */
    assign n431_o = compressorout_bh6_7_7[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1158:42  */
    assign n432_o = compressorout_bh6_7_7[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1161:44  */
    assign n433_o = {heap_bh6_w13_4, heap_bh6_w13_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1161:61  */
    assign n434_o = {n433_o, heap_bh6_w13_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1161:78  */
    assign n435_o = {n434_o, heap_bh6_w13_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1164:23  */
    assign compressor_bh6_8_n436 = compressor_bh6_8_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1163:7  */
    compressor_14_3 compressor_bh6_8(
        .x0(compressorin_bh6_8_11),
        .x1(compressorin_bh6_8_12),
        .r(compressor_bh6_8_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1167:43  */
    assign n439_o = compressorout_bh6_8_8[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1168:43  */
    assign n440_o = compressorout_bh6_8_8[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1169:43  */
    assign n441_o = compressorout_bh6_8_8[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1172:44  */
    assign n442_o = {heap_bh6_w14_3, heap_bh6_w14_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1172:61  */
    assign n443_o = {n442_o, heap_bh6_w14_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1172:78  */
    assign n444_o = {n443_o, heap_bh6_w14_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1175:23  */
    assign compressor_bh6_9_n445 = compressor_bh6_9_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1174:7  */
    compressor_14_3 compressor_bh6_9(
        .x0(compressorin_bh6_9_13),
        .x1(compressorin_bh6_9_14),
        .r(compressor_bh6_9_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1178:43  */
    assign n448_o = compressorout_bh6_9_9[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1179:43  */
    assign n449_o = compressorout_bh6_9_9[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1180:43  */
    assign n450_o = compressorout_bh6_9_9[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1183:45  */
    assign n451_o = {heap_bh6_w15_3, heap_bh6_w15_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1183:62  */
    assign n452_o = {n451_o, heap_bh6_w15_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1183:79  */
    assign n453_o = {n452_o, heap_bh6_w15_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1186:23  */
    assign compressor_bh6_10_n454 = compressor_bh6_10_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1185:7  */
    compressor_14_3 compressor_bh6_10(
        .x0(compressorin_bh6_10_15),
        .x1(compressorin_bh6_10_16),
        .r(compressor_bh6_10_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1189:45  */
    assign n457_o = compressorout_bh6_10_10[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1190:45  */
    assign n458_o = compressorout_bh6_10_10[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1191:45  */
    assign n459_o = compressorout_bh6_10_10[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1194:44  */
    assign n460_o = {heap_bh6_w2_2, heap_bh6_w2_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1194:60  */
    assign n461_o = {n460_o, heap_bh6_w2_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1195:44  */
    assign n462_o = {heap_bh6_w3_2, heap_bh6_w3_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1197:23  */
    assign compressor_bh6_11_n463 = compressor_bh6_11_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1196:7  */
    compressor_23_3 compressor_bh6_11(
        .x0(compressorin_bh6_11_17),
        .x1(compressorin_bh6_11_18),
        .r(compressor_bh6_11_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1200:44  */
    assign n466_o = compressorout_bh6_11_11[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1201:44  */
    assign n467_o = compressorout_bh6_11_11[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1202:44  */
    assign n468_o = compressorout_bh6_11_11[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1205:45  */
    assign n469_o = {heap_bh6_w17_2, heap_bh6_w17_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1205:62  */
    assign n470_o = {n469_o, heap_bh6_w17_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1206:45  */
    assign n471_o = {heap_bh6_w18_2, heap_bh6_w18_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1208:23  */
    assign compressor_bh6_12_n472 = compressor_bh6_12_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1207:7  */
    compressor_23_3 compressor_bh6_12(
        .x0(compressorin_bh6_12_19),
        .x1(compressorin_bh6_12_20),
        .r(compressor_bh6_12_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1211:45  */
    assign n475_o = compressorout_bh6_12_12[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1212:45  */
    assign n476_o = compressorout_bh6_12_12[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1213:45  */
    assign n477_o = compressorout_bh6_12_12[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1216:44  */
    assign n478_o = {heap_bh6_w4_2, heap_bh6_w4_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1216:60  */
    assign n479_o = {n478_o, heap_bh6_w4_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1219:23  */
    assign compressor_bh6_13_n480 = compressor_bh6_13_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1218:7  */
    compressor_13_3 compressor_bh6_13(
        .x0(compressorin_bh6_13_21),
        .x1(compressorin_bh6_13_22),
        .r(compressor_bh6_13_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1222:44  */
    assign n483_o = compressorout_bh6_13_13[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1223:44  */
    assign n484_o = compressorout_bh6_13_13[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1224:44  */
    assign n485_o = compressorout_bh6_13_13[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1229:44  */
    assign n486_o = {heap_bh6_w9_0, heap_bh6_w9_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1229:60  */
    assign n487_o = {n486_o, heap_bh6_w9_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1229:76  */
    assign n488_o = {n487_o, heap_bh6_w9_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1232:23  */
    assign compressor_bh6_14_n489 = compressor_bh6_14_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1231:7  */
    compressor_14_3 compressor_bh6_14(
        .x0(compressorin_bh6_14_23),
        .x1(compressorin_bh6_14_24),
        .r(compressor_bh6_14_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1235:45  */
    assign n492_o = compressorout_bh6_14_14[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1236:46  */
    assign n493_o = compressorout_bh6_14_14[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1237:46  */
    assign n494_o = compressorout_bh6_14_14[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1240:45  */
    assign n495_o = {heap_bh6_w11_0, heap_bh6_w11_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1240:62  */
    assign n496_o = {n495_o, heap_bh6_w11_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1240:79  */
    assign n497_o = {n496_o, heap_bh6_w11_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1243:23  */
    assign compressor_bh6_15_n498 = compressor_bh6_15_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1242:7  */
    compressor_14_3 compressor_bh6_15(
        .x0(compressorin_bh6_15_25),
        .x1(compressorin_bh6_15_26),
        .r(compressor_bh6_15_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1246:46  */
    assign n501_o = compressorout_bh6_15_15[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1247:46  */
    assign n502_o = compressorout_bh6_15_15[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1248:45  */
    assign n503_o = compressorout_bh6_15_15[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1251:45  */
    assign n504_o = {heap_bh6_w13_0, heap_bh6_w13_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1251:62  */
    assign n505_o = {n504_o, heap_bh6_w13_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1251:79  */
    assign n506_o = {n505_o, heap_bh6_w13_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1254:23  */
    assign compressor_bh6_16_n507 = compressor_bh6_16_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1253:7  */
    compressor_14_3 compressor_bh6_16(
        .x0(compressorin_bh6_16_27),
        .x1(compressorin_bh6_16_28),
        .r(compressor_bh6_16_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1257:45  */
    assign n510_o = compressorout_bh6_16_16[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1258:45  */
    assign n511_o = compressorout_bh6_16_16[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1259:45  */
    assign n512_o = compressorout_bh6_16_16[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1262:45  */
    assign n513_o = {heap_bh6_w16_1, heap_bh6_w16_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1262:62  */
    assign n514_o = {n513_o, heap_bh6_w16_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1262:79  */
    assign n515_o = {n514_o, heap_bh6_w16_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1265:23  */
    assign compressor_bh6_17_n516 = compressor_bh6_17_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1264:7  */
    compressor_14_3 compressor_bh6_17(
        .x0(compressorin_bh6_17_29),
        .x1(compressorin_bh6_17_30),
        .r(compressor_bh6_17_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1268:45  */
    assign n519_o = compressorout_bh6_17_17[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1269:45  */
    assign n520_o = compressorout_bh6_17_17[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1270:45  */
    assign n521_o = compressorout_bh6_17_17[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1273:44  */
    assign n522_o = {heap_bh6_w6_7, heap_bh6_w6_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1273:60  */
    assign n523_o = {n522_o, heap_bh6_w6_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1274:44  */
    assign n524_o = {heap_bh6_w7_7, heap_bh6_w7_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1276:23  */
    assign compressor_bh6_18_n525 = compressor_bh6_18_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1275:7  */
    compressor_23_3 compressor_bh6_18(
        .x0(compressorin_bh6_18_31),
        .x1(compressorin_bh6_18_32),
        .r(compressor_bh6_18_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1279:44  */
    assign n528_o = compressorout_bh6_18_18[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1280:44  */
    assign n529_o = compressorout_bh6_18_18[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1281:45  */
    assign n530_o = compressorout_bh6_18_18[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1284:44  */
    assign n531_o = {heap_bh6_w8_9, heap_bh6_w8_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1284:60  */
    assign n532_o = {n531_o, heap_bh6_w8_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1286:23  */
    assign compressor_bh6_19_n533 = compressor_bh6_19_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1285:7  */
    compressor_3_2 compressor_bh6_19(
        .x0(compressorin_bh6_19_33),
        .r(compressor_bh6_19_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1288:45  */
    assign n536_o = compressorout_bh6_19_19[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1289:45  */
    assign n537_o = compressorout_bh6_19_19[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1292:45  */
    assign n538_o = {heap_bh6_w10_9, heap_bh6_w10_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1292:62  */
    assign n539_o = {n538_o, heap_bh6_w10_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1294:23  */
    assign compressor_bh6_20_n540 = compressor_bh6_20_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1293:7  */
    compressor_3_2 compressor_bh6_20(
        .x0(compressorin_bh6_20_34),
        .r(compressor_bh6_20_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1296:46  */
    assign n543_o = compressorout_bh6_20_20[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1297:46  */
    assign n544_o = compressorout_bh6_20_20[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1300:45  */
    assign n545_o = {heap_bh6_w12_9, heap_bh6_w12_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1300:62  */
    assign n546_o = {n545_o, heap_bh6_w12_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1302:23  */
    assign compressor_bh6_21_n547 = compressor_bh6_21_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1301:7  */
    compressor_3_2 compressor_bh6_21(
        .x0(compressorin_bh6_21_35),
        .r(compressor_bh6_21_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1304:46  */
    assign n550_o = compressorout_bh6_21_21[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1305:46  */
    assign n551_o = compressorout_bh6_21_21[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1308:45  */
    assign n552_o = {heap_bh6_w15_7, heap_bh6_w15_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1308:62  */
    assign n553_o = {n552_o, heap_bh6_w15_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1310:23  */
    assign compressor_bh6_22_n554 = compressor_bh6_22_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1309:7  */
    compressor_3_2 compressor_bh6_22(
        .x0(compressorin_bh6_22_36),
        .r(compressor_bh6_22_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1312:45  */
    assign n557_o = compressorout_bh6_22_22[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1313:45  */
    assign n558_o = compressorout_bh6_22_22[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1316:46  */
    assign n559_o = {heap_bh6_w11_12, heap_bh6_w11_11};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1316:64  */
    assign n560_o = {n559_o, heap_bh6_w11_10};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1317:46  */
    assign n561_o = {heap_bh6_w12_11, heap_bh6_w12_10};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1319:23  */
    assign compressor_bh6_23_n562 = compressor_bh6_23_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1318:7  */
    compressor_23_3 compressor_bh6_23(
        .x0(compressorin_bh6_23_37),
        .x1(compressorin_bh6_23_38),
        .r(compressor_bh6_23_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1322:46  */
    assign n565_o = compressorout_bh6_23_23[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1323:46  */
    assign n566_o = compressorout_bh6_23_23[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1324:46  */
    assign n567_o = compressorout_bh6_23_23[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1327:46  */
    assign n568_o = {heap_bh6_w13_10, heap_bh6_w13_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1327:63  */
    assign n569_o = {n568_o, heap_bh6_w13_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1328:45  */
    assign n570_o = {heap_bh6_w14_6, heap_bh6_w14_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1330:23  */
    assign compressor_bh6_24_n571 = compressor_bh6_24_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1329:7  */
    compressor_23_3 compressor_bh6_24(
        .x0(compressorin_bh6_24_39),
        .x1(compressorin_bh6_24_40),
        .r(compressor_bh6_24_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1333:46  */
    assign n574_o = compressorout_bh6_24_24[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1334:45  */
    assign n575_o = compressorout_bh6_24_24[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1335:46  */
    assign n576_o = compressorout_bh6_24_24[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1338:45  */
    assign n577_o = {heap_bh6_w18_0, heap_bh6_w18_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1338:62  */
    assign n578_o = {n577_o, heap_bh6_w18_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1339:45  */
    assign n579_o = {heap_bh6_w19_0, heap_bh6_w19_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1341:23  */
    assign compressor_bh6_25_n580 = compressor_bh6_25_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1340:7  */
    compressor_23_3 compressor_bh6_25(
        .x0(compressorin_bh6_25_41),
        .x1(compressorin_bh6_25_42),
        .r(compressor_bh6_25_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1344:45  */
    assign n583_o = compressorout_bh6_25_25[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1345:45  */
    assign n584_o = compressorout_bh6_25_25[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1346:45  */
    assign n585_o = compressorout_bh6_25_25[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1349:45  */
    assign n586_o = {heap_bh6_w15_9, heap_bh6_w15_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1349:62  */
    assign n587_o = {n586_o, heap_bh6_w15_10};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1350:45  */
    assign n588_o = {heap_bh6_w16_6, heap_bh6_w16_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1352:23  */
    assign compressor_bh6_26_n589 = compressor_bh6_26_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1351:7  */
    compressor_23_3 compressor_bh6_26(
        .x0(compressorin_bh6_26_43),
        .x1(compressorin_bh6_26_44),
        .r(compressor_bh6_26_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1355:46  */
    assign n592_o = compressorout_bh6_26_26[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1356:45  */
    assign n593_o = compressorout_bh6_26_26[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1357:45  */
    assign n594_o = compressorout_bh6_26_26[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1360:45  */
    assign n595_o = {heap_bh6_w17_3, heap_bh6_w17_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1360:62  */
    assign n596_o = {n595_o, heap_bh6_w17_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1363:23  */
    assign compressor_bh6_27_n597 = compressor_bh6_27_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1362:7  */
    compressor_13_3 compressor_bh6_27(
        .x0(compressorin_bh6_27_45),
        .x1(compressorin_bh6_27_46),
        .r(compressor_bh6_27_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1366:45  */
    assign n600_o = compressorout_bh6_27_27[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1367:45  */
    assign n601_o = compressorout_bh6_27_27[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1368:45  */
    assign n602_o = compressorout_bh6_27_27[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:29  */
    assign n604_o = {1'b0, heap_bh6_w21_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:49  */
    assign n605_o = {n604_o, heap_bh6_w20_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:69  */
    assign n606_o = {n605_o, heap_bh6_w19_2_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:89  */
    assign n607_o = {n606_o, heap_bh6_w18_6_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:109  */
    assign n608_o = {n607_o, heap_bh6_w17_7_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:129  */
    assign n609_o = {n608_o, heap_bh6_w16_7_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:149  */
    assign n610_o = {n609_o, heap_bh6_w15_11_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:170  */
    assign n611_o = {n610_o, heap_bh6_w14_8_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:190  */
    assign n612_o = {n611_o, heap_bh6_w13_12_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:211  */
    assign n613_o = {n612_o, heap_bh6_w12_12_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:232  */
    assign n614_o = {n613_o, heap_bh6_w11_13_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:253  */
    assign n615_o = {n614_o, heap_bh6_w10_11_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:274  */
    assign n616_o = {n615_o, heap_bh6_w9_11_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:294  */
    assign n617_o = {n616_o, heap_bh6_w8_11_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:314  */
    assign n618_o = {n617_o, heap_bh6_w7_5_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:333  */
    assign n619_o = {n618_o, heap_bh6_w6_8_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:352  */
    assign n620_o = {n619_o, heap_bh6_w5_6_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:371  */
    assign n621_o = {n620_o, heap_bh6_w4_4_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1371:390  */
    assign n622_o = {n621_o, heap_bh6_w3_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:35  */
    assign n624_o = {2'b00, heap_bh6_w20_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:55  */
    assign n625_o = {n624_o, heap_bh6_w19_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:75  */
    assign n627_o = {n625_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:81  */
    assign n629_o = {n627_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:87  */
    assign n631_o = {n629_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:93  */
    assign n633_o = {n631_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:99  */
    assign n634_o = {n633_o, heap_bh6_w14_9_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:119  */
    assign n635_o = {n634_o, heap_bh6_w13_11_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:140  */
    assign n637_o = {n635_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:146  */
    assign n639_o = {n637_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:152  */
    assign n640_o = {n639_o, heap_bh6_w10_10_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:173  */
    assign n641_o = {n640_o, heap_bh6_w9_10_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:193  */
    assign n642_o = {n641_o, heap_bh6_w8_10_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:213  */
    assign n643_o = {n642_o, heap_bh6_w7_8_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:232  */
    assign n645_o = {n643_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:238  */
    assign n646_o = {n645_o, heap_bh6_w5_5_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:257  */
    assign n647_o = {n646_o, heap_bh6_w4_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1372:276  */
    assign n648_o = {n647_o, heap_bh6_w3_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1378:23  */
    assign adder_final6_0_n650 = adder_final6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1374:7  */
    intadder_20_f300_uid106 adder_final6_0(
        .clk(clk),
        .rst(rst),
        .x(finaladderin0_bh6),
        .y(finaladderin1_bh6),
        .cin(finaladdercin_bh6),
        .r(adder_final6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1382:44  */
    assign n653_o = {finaladderout_bh6, tempr_bh6_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1382:61  */
    assign n654_o = {n653_o, tempr_bh6_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1384:27  */
    assign n655_o = compressionresult6[21:0];
endmodule

module fmul
    (input clk,
        input rst,
        input[16:0] X,
        input[16:0] Y,
        output[16:0] R);
    wire sign;
    wire sign_d1;
    wire[3:0] expx;
    wire[3:0] expy;
    wire[5:0] expsumpresub;
    wire[5:0] bias;
    wire[5:0] expsum;
    wire[5:0] expsum_d1;
    wire[10:0] sigx;
    wire[10:0] sigy;
    wire[21:0] sigprod;
    wire[3:0] excsel;
    wire[1:0] exc;
    wire[1:0] exc_d1;
    wire norm;
    wire[5:0] exppostnorm;
    wire[21:0] sigprodext;
    wire[15:0] expsig;
    wire sticky;
    wire guard;
    wire round;
    wire[15:0] expsigpostround;
    wire[1:0] excpostnorm;
    wire[1:0] finalexc;
    reg n8_q;
    reg[5:0] n9_q;
    reg[1:0] n10_q;
    wire n11_o;
    wire n12_o;
    wire n13_o;
    wire[3:0] n14_o;
    wire[3:0] n15_o;
    wire[5:0] n17_o;
    wire[5:0] n19_o;
    wire[5:0] n20_o;
    wire[5:0] n22_o;
    wire[9:0] n23_o;
    wire[10:0] n25_o;
    wire[9:0] n26_o;
    wire[10:0] n28_o;
    wire[21:0] significandmultiplication_n29;
    wire[21:0] significandmultiplication_r;
    wire[1:0] n32_o;
    wire[1:0] n33_o;
    wire[3:0] n34_o;
    wire n37_o;
    wire n39_o;
    wire n40_o;
    wire n42_o;
    wire n43_o;
    wire n46_o;
    wire n49_o;
    wire n51_o;
    wire n52_o;
    wire n54_o;
    wire n55_o;
    wire[2:0] n57_o;
    reg[1:0] n58_o;
    wire n59_o;
    wire[5:0] n61_o;
    wire[5:0] n62_o;
    wire[20:0] n63_o;
    wire[21:0] n65_o;
    wire[21:0] n66_o;
    wire[19:0] n67_o;
    wire[21:0] n69_o;
    wire[9:0] n70_o;
    wire[15:0] n71_o;
    wire n72_o;
    wire[10:0] n74_o;
    wire n76_o;
    wire n77_o;
    wire n79_o;
    wire n80_o;
    wire n81_o;
    wire n82_o;
    wire n83_o;
    wire n84_o;
    localparam [15:0] n85_o = 16'b0000000000000000;
    wire[15:0] roundingadder_n86;
    wire[15:0] roundingadder_r;
    wire[1:0] n89_o;
    wire n92_o;
    wire n95_o;
    wire n98_o;
    wire n100_o;
    wire n101_o;
    wire[2:0] n103_o;
    reg[1:0] n104_o;
    wire n106_o;
    wire n108_o;
    wire n109_o;
    wire n111_o;
    wire n112_o;
    reg[1:0] n113_o;
    wire[2:0] n114_o;
    wire[13:0] n115_o;
    wire[16:0] n116_o;
    assign R = n116_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1463:8  */
    assign sign = n13_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1463:14  */
    assign sign_d1 = n8_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1464:8  */
    assign expx = n14_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1465:8  */
    assign expy = n15_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1466:8  */
    assign expsumpresub = n20_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1467:8  */
    assign bias = 6'b000111; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1468:8  */
    assign expsum = n22_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1468:16  */
    assign expsum_d1 = n9_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1469:8  */
    assign sigx = n25_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1470:8  */
    assign sigy = n28_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1471:8  */
    assign sigprod = significandmultiplication_n29; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1472:8  */
    assign excsel = n34_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1473:8  */
    assign exc = n58_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1473:13  */
    assign exc_d1 = n10_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1474:8  */
    assign norm = n59_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1475:8  */
    assign exppostnorm = n62_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1476:8  */
    assign sigprodext = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1477:8  */
    assign expsig = n71_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1478:8  */
    assign sticky = n72_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1479:8  */
    assign guard = n77_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1480:8  */
    assign round = n84_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1481:8  */
    assign expsigpostround = roundingadder_n86; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1482:8  */
    assign excpostnorm = n104_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1483:8  */
    assign finalexc = n113_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1487:10  */
    always @(posedge clk)
        n8_q <= sign;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1487:10  */
    always @(posedge clk)
        n9_q <= expsum;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1487:10  */
    always @(posedge clk)
        n10_q <= exc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1493:13  */
    assign n11_o = X[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1493:23  */
    assign n12_o = Y[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1493:18  */
    assign n13_o = n11_o ^ n12_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1494:13  */
    assign n14_o = X[13:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1495:13  */
    assign n15_o = Y[13:10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1496:26  */
    assign n17_o = {2'b00, expx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1496:42  */
    assign n19_o = {2'b00, expy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1496:34  */
    assign n20_o = n17_o+n19_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1498:27  */
    assign n22_o = expsumpresub-bias;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1500:19  */
    assign n23_o = X[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1500:16  */
    assign n25_o = {1'b1, n23_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1501:19  */
    assign n26_o = Y[9:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1501:16  */
    assign n28_o = {1'b1, n26_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1505:23  */
    assign significandmultiplication_n29 = significandmultiplication_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1502:4  */
    intmultiplier_usingdsp_11_11_22_unsigned_f300_uid4 significandmultiplication(
        .clk(clk),
        .rst(rst),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1510:15  */
    assign n32_o = X[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1510:33  */
    assign n33_o = Y[16:15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1510:30  */
    assign n34_o = {n32_o, n33_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1512:16  */
    assign n37_o = excsel == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1512:29  */
    assign n39_o = excsel == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1512:29  */
    assign n40_o = n37_o | n39_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1512:38  */
    assign n42_o = excsel == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1512:38  */
    assign n43_o = n40_o | n42_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1513:16  */
    assign n46_o = excsel == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1514:16  */
    assign n49_o = excsel == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1514:28  */
    assign n51_o = excsel == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1514:28  */
    assign n52_o = n49_o | n51_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1514:37  */
    assign n54_o = excsel == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1514:37  */
    assign n55_o = n52_o | n54_o;
    assign n57_o = {n55_o, n46_o, n43_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1511:4  */
    always @*
        case (n57_o)
            3'b100: n58_o <= 2'b10;
            3'b010: n58_o <= 2'b01;
            3'b001: n58_o <= 2'b00;
            default: n58_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1517:19  */
    assign n59_o = sigprod[21];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1519:40  */
    assign n61_o = {5'b00000, norm};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1519:29  */
    assign n62_o = expsum_d1+n61_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1522:25  */
    assign n63_o = sigprod[20:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1522:39  */
    assign n65_o = {n63_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1522:45  */
    assign n66_o = norm ? n65_o : n69_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1523:33  */
    assign n67_o = sigprod[19:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1523:47  */
    assign n69_o = {n67_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1524:38  */
    assign n70_o = sigprodext[21:12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1524:26  */
    assign n71_o = {exppostnorm, n70_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1525:24  */
    assign n72_o = sigprodext[11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1526:32  */
    assign n74_o = sigprodext[10:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1526:45  */
    assign n76_o = n74_o == 11'b00000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1526:17  */
    assign n77_o = n76_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1527:51  */
    assign n79_o = sigprodext[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1527:37  */
    assign n80_o = ~n79_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1527:33  */
    assign n81_o = guard & n80_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1527:72  */
    assign n82_o = sigprodext[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1527:58  */
    assign n83_o = n81_o | n82_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1527:20  */
    assign n84_o = sticky & n83_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1532:23  */
    assign roundingadder_n86 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1528:7  */
    intadder_16_f300_uid116 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expsig),
        .y(n85_o),
        .cin(round),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1535:24  */
    assign n89_o = expsigpostround[15:14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1536:26  */
    assign n92_o = n89_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1537:49  */
    assign n95_o = n89_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1538:49  */
    assign n98_o = n89_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1538:58  */
    assign n100_o = n89_o == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1538:58  */
    assign n101_o = n98_o | n100_o;
    assign n103_o = {n101_o, n95_o, n92_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1535:4  */
    always @*
        case (n103_o)
            3'b100: n104_o <= 2'b00;
            3'b010: n104_o <= 2'b10;
            3'b001: n104_o <= 2'b01;
            default: n104_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1541:23  */
    assign n106_o = exc_d1 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1541:33  */
    assign n108_o = exc_d1 == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1541:33  */
    assign n109_o = n106_o | n108_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1541:38  */
    assign n111_o = exc_d1 == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1541:38  */
    assign n112_o = n109_o | n111_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1540:4  */
    always @*
        case (n112_o)
            1'b1: n113_o <= exc_d1;
            default: n113_o <= excpostnorm;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1543:18  */
    assign n114_o = {finalexc, sign_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1543:45  */
    assign n115_o = expsigpostround[13:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_4_10.vhdl:1543:28  */
    assign n116_o = {n114_o, n115_o};
endmodule

