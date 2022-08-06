module intadder_66_f300_uid138
    (input clk,
        input rst,
        input[65:0] x,
        input[65:0] y,
        input cin,
        output[65:0] r);
    wire[65:0] n1726_o;
    wire[65:0] n1727_o;
    wire[65:0] n1728_o;
    assign r = n1728_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:337:12  */
    assign n1726_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:337:16  */
    assign n1727_o = {65'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:337:16  */
    assign n1728_o = n1726_o+n1727_o;
endmodule

module compressor_3_2
    (input[2:0] x0,
        output[1:0] r);
    wire[2:0] x;
    wire n1696_o;
    wire n1699_o;
    wire n1702_o;
    wire n1705_o;
    wire n1708_o;
    wire n1711_o;
    wire n1714_o;
    wire n1717_o;
    wire[7:0] n1719_o;
    reg[1:0] n1720_o;
    assign r = n1720_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:288:8  */
    assign x = x0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:292:12  */
    assign n1696_o = x == 3'b000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:293:12  */
    assign n1699_o = x == 3'b001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:294:12  */
    assign n1702_o = x == 3'b010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:295:12  */
    assign n1705_o = x == 3'b011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:296:12  */
    assign n1708_o = x == 3'b100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:297:12  */
    assign n1711_o = x == 3'b101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:298:12  */
    assign n1714_o = x == 3'b110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:299:12  */
    assign n1717_o = x == 3'b111;
    assign n1719_o = {n1717_o, n1714_o, n1711_o, n1708_o, n1705_o, n1702_o, n1699_o, n1696_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:291:4  */
    always @*
        case (n1719_o)
            8'b10000000: n1720_o <= 2'b11;
            8'b01000000: n1720_o <= 2'b10;
            8'b00100000: n1720_o <= 2'b10;
            8'b00010000: n1720_o <= 2'b01;
            8'b00001000: n1720_o <= 2'b10;
            8'b00000100: n1720_o <= 2'b01;
            8'b00000010: n1720_o <= 2'b01;
            8'b00000001: n1720_o <= 2'b00;
            default: n1720_o <= 2'bXX;
        endcase
endmodule

module compressor_13_3
    (input[2:0] x0,
        input x1,
        output[2:0] r);
    wire[3:0] x;
    wire[3:0] n1641_o;
    wire n1644_o;
    wire n1647_o;
    wire n1650_o;
    wire n1653_o;
    wire n1656_o;
    wire n1659_o;
    wire n1662_o;
    wire n1665_o;
    wire n1668_o;
    wire n1671_o;
    wire n1674_o;
    wire n1677_o;
    wire n1680_o;
    wire n1683_o;
    wire n1686_o;
    wire n1689_o;
    wire[15:0] n1691_o;
    reg[2:0] n1692_o;
    assign r = n1692_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:242:8  */
    assign x = n1641_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:244:11  */
    assign n1641_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:246:13  */
    assign n1644_o = x == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:247:13  */
    assign n1647_o = x == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:248:13  */
    assign n1650_o = x == 4'b0010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:249:13  */
    assign n1653_o = x == 4'b0011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:250:13  */
    assign n1656_o = x == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:251:13  */
    assign n1659_o = x == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:252:13  */
    assign n1662_o = x == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:253:13  */
    assign n1665_o = x == 4'b0111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:254:13  */
    assign n1668_o = x == 4'b1000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:255:13  */
    assign n1671_o = x == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:256:13  */
    assign n1674_o = x == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:257:13  */
    assign n1677_o = x == 4'b1011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:258:13  */
    assign n1680_o = x == 4'b1100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:259:13  */
    assign n1683_o = x == 4'b1101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:260:13  */
    assign n1686_o = x == 4'b1110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:261:13  */
    assign n1689_o = x == 4'b1111;
    assign n1691_o = {n1689_o, n1686_o, n1683_o, n1680_o, n1677_o, n1674_o, n1671_o, n1668_o, n1665_o, n1662_o, n1659_o, n1656_o, n1653_o, n1650_o, n1647_o, n1644_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:245:4  */
    always @*
        case (n1691_o)
            16'b1000000000000000: n1692_o <= 3'b101;
            16'b0100000000000000: n1692_o <= 3'b100;
            16'b0010000000000000: n1692_o <= 3'b100;
            16'b0001000000000000: n1692_o <= 3'b011;
            16'b0000100000000000: n1692_o <= 3'b100;
            16'b0000010000000000: n1692_o <= 3'b011;
            16'b0000001000000000: n1692_o <= 3'b011;
            16'b0000000100000000: n1692_o <= 3'b010;
            16'b0000000010000000: n1692_o <= 3'b011;
            16'b0000000001000000: n1692_o <= 3'b010;
            16'b0000000000100000: n1692_o <= 3'b010;
            16'b0000000000010000: n1692_o <= 3'b001;
            16'b0000000000001000: n1692_o <= 3'b010;
            16'b0000000000000100: n1692_o <= 3'b001;
            16'b0000000000000010: n1692_o <= 3'b001;
            16'b0000000000000001: n1692_o <= 3'b000;
            default: n1692_o <= 3'bXXX;
        endcase
endmodule

module compressor_23_3
    (input[2:0] x0,
        input[1:0] x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n1540_o;
    wire n1543_o;
    wire n1546_o;
    wire n1549_o;
    wire n1552_o;
    wire n1555_o;
    wire n1558_o;
    wire n1561_o;
    wire n1564_o;
    wire n1567_o;
    wire n1570_o;
    wire n1573_o;
    wire n1576_o;
    wire n1579_o;
    wire n1582_o;
    wire n1585_o;
    wire n1588_o;
    wire n1591_o;
    wire n1594_o;
    wire n1597_o;
    wire n1600_o;
    wire n1603_o;
    wire n1606_o;
    wire n1609_o;
    wire n1612_o;
    wire n1615_o;
    wire n1618_o;
    wire n1621_o;
    wire n1624_o;
    wire n1627_o;
    wire n1630_o;
    wire n1633_o;
    wire n1636_o;
    wire[31:0] n1638_o;
    reg[2:0] n1639_o;
    assign r = n1639_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:179:8  */
    assign x = n1540_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:181:11  */
    assign n1540_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:183:13  */
    assign n1543_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:184:13  */
    assign n1546_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:185:13  */
    assign n1549_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:186:13  */
    assign n1552_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:187:13  */
    assign n1555_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:188:13  */
    assign n1558_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:189:13  */
    assign n1561_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:190:13  */
    assign n1564_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:191:13  */
    assign n1567_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:192:13  */
    assign n1570_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:193:13  */
    assign n1573_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:194:13  */
    assign n1576_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:195:13  */
    assign n1579_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:196:13  */
    assign n1582_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:197:13  */
    assign n1585_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:198:13  */
    assign n1588_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:199:13  */
    assign n1591_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:200:13  */
    assign n1594_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:201:13  */
    assign n1597_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:202:13  */
    assign n1600_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:203:13  */
    assign n1603_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:204:13  */
    assign n1606_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:205:13  */
    assign n1609_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:206:13  */
    assign n1612_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:207:13  */
    assign n1615_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:208:13  */
    assign n1618_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:209:13  */
    assign n1621_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:210:13  */
    assign n1624_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:211:13  */
    assign n1627_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:212:13  */
    assign n1630_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:213:13  */
    assign n1633_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:214:13  */
    assign n1636_o = x == 5'b11111;
    assign n1638_o = {n1636_o, n1633_o, n1630_o, n1627_o, n1624_o, n1621_o, n1618_o, n1615_o, n1612_o, n1609_o, n1606_o, n1603_o, n1600_o, n1597_o, n1594_o, n1591_o, n1588_o, n1585_o, n1582_o, n1579_o, n1576_o, n1573_o, n1570_o, n1567_o, n1564_o, n1561_o, n1558_o, n1555_o, n1552_o, n1549_o, n1546_o, n1543_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:182:4  */
    always @*
        case (n1638_o)
            32'b10000000000000000000000000000000: n1639_o <= 3'b111;
            32'b01000000000000000000000000000000: n1639_o <= 3'b110;
            32'b00100000000000000000000000000000: n1639_o <= 3'b110;
            32'b00010000000000000000000000000000: n1639_o <= 3'b101;
            32'b00001000000000000000000000000000: n1639_o <= 3'b110;
            32'b00000100000000000000000000000000: n1639_o <= 3'b101;
            32'b00000010000000000000000000000000: n1639_o <= 3'b101;
            32'b00000001000000000000000000000000: n1639_o <= 3'b100;
            32'b00000000100000000000000000000000: n1639_o <= 3'b101;
            32'b00000000010000000000000000000000: n1639_o <= 3'b100;
            32'b00000000001000000000000000000000: n1639_o <= 3'b100;
            32'b00000000000100000000000000000000: n1639_o <= 3'b011;
            32'b00000000000010000000000000000000: n1639_o <= 3'b100;
            32'b00000000000001000000000000000000: n1639_o <= 3'b011;
            32'b00000000000000100000000000000000: n1639_o <= 3'b011;
            32'b00000000000000010000000000000000: n1639_o <= 3'b010;
            32'b00000000000000001000000000000000: n1639_o <= 3'b101;
            32'b00000000000000000100000000000000: n1639_o <= 3'b100;
            32'b00000000000000000010000000000000: n1639_o <= 3'b100;
            32'b00000000000000000001000000000000: n1639_o <= 3'b011;
            32'b00000000000000000000100000000000: n1639_o <= 3'b100;
            32'b00000000000000000000010000000000: n1639_o <= 3'b011;
            32'b00000000000000000000001000000000: n1639_o <= 3'b011;
            32'b00000000000000000000000100000000: n1639_o <= 3'b010;
            32'b00000000000000000000000010000000: n1639_o <= 3'b011;
            32'b00000000000000000000000001000000: n1639_o <= 3'b010;
            32'b00000000000000000000000000100000: n1639_o <= 3'b010;
            32'b00000000000000000000000000010000: n1639_o <= 3'b001;
            32'b00000000000000000000000000001000: n1639_o <= 3'b010;
            32'b00000000000000000000000000000100: n1639_o <= 3'b001;
            32'b00000000000000000000000000000010: n1639_o <= 3'b001;
            32'b00000000000000000000000000000001: n1639_o <= 3'b000;
            default: n1639_o <= 3'bXXX;
        endcase
endmodule

module compressor_14_3
    (input[3:0] x0,
        input x1,
        output[2:0] r);
    wire[4:0] x;
    wire[4:0] n1439_o;
    wire n1442_o;
    wire n1445_o;
    wire n1448_o;
    wire n1451_o;
    wire n1454_o;
    wire n1457_o;
    wire n1460_o;
    wire n1463_o;
    wire n1466_o;
    wire n1469_o;
    wire n1472_o;
    wire n1475_o;
    wire n1478_o;
    wire n1481_o;
    wire n1484_o;
    wire n1487_o;
    wire n1490_o;
    wire n1493_o;
    wire n1496_o;
    wire n1499_o;
    wire n1502_o;
    wire n1505_o;
    wire n1508_o;
    wire n1511_o;
    wire n1514_o;
    wire n1517_o;
    wire n1520_o;
    wire n1523_o;
    wire n1526_o;
    wire n1529_o;
    wire n1532_o;
    wire n1535_o;
    wire[31:0] n1537_o;
    reg[2:0] n1538_o;
    assign r = n1538_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:116:8  */
    assign x = n1439_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:118:11  */
    assign n1439_o = {x1, x0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:120:13  */
    assign n1442_o = x == 5'b00000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:121:13  */
    assign n1445_o = x == 5'b00001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:122:13  */
    assign n1448_o = x == 5'b00010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:123:13  */
    assign n1451_o = x == 5'b00011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:124:13  */
    assign n1454_o = x == 5'b00100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:125:13  */
    assign n1457_o = x == 5'b00101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:126:13  */
    assign n1460_o = x == 5'b00110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:127:13  */
    assign n1463_o = x == 5'b00111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:128:13  */
    assign n1466_o = x == 5'b01000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:129:13  */
    assign n1469_o = x == 5'b01001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:130:13  */
    assign n1472_o = x == 5'b01010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:131:13  */
    assign n1475_o = x == 5'b01011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:132:13  */
    assign n1478_o = x == 5'b01100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:133:13  */
    assign n1481_o = x == 5'b01101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:134:13  */
    assign n1484_o = x == 5'b01110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:135:13  */
    assign n1487_o = x == 5'b01111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:136:13  */
    assign n1490_o = x == 5'b10000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:137:13  */
    assign n1493_o = x == 5'b10001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:138:13  */
    assign n1496_o = x == 5'b10010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:139:13  */
    assign n1499_o = x == 5'b10011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:140:13  */
    assign n1502_o = x == 5'b10100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:141:13  */
    assign n1505_o = x == 5'b10101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:142:13  */
    assign n1508_o = x == 5'b10110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:143:13  */
    assign n1511_o = x == 5'b10111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:144:13  */
    assign n1514_o = x == 5'b11000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:145:13  */
    assign n1517_o = x == 5'b11001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:146:13  */
    assign n1520_o = x == 5'b11010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:147:13  */
    assign n1523_o = x == 5'b11011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:148:13  */
    assign n1526_o = x == 5'b11100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:149:13  */
    assign n1529_o = x == 5'b11101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:150:13  */
    assign n1532_o = x == 5'b11110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:151:13  */
    assign n1535_o = x == 5'b11111;
    assign n1537_o = {n1535_o, n1532_o, n1529_o, n1526_o, n1523_o, n1520_o, n1517_o, n1514_o, n1511_o, n1508_o, n1505_o, n1502_o, n1499_o, n1496_o, n1493_o, n1490_o, n1487_o, n1484_o, n1481_o, n1478_o, n1475_o, n1472_o, n1469_o, n1466_o, n1463_o, n1460_o, n1457_o, n1454_o, n1451_o, n1448_o, n1445_o, n1442_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:119:4  */
    always @*
        case (n1537_o)
            32'b10000000000000000000000000000000: n1538_o <= 3'b110;
            32'b01000000000000000000000000000000: n1538_o <= 3'b101;
            32'b00100000000000000000000000000000: n1538_o <= 3'b101;
            32'b00010000000000000000000000000000: n1538_o <= 3'b100;
            32'b00001000000000000000000000000000: n1538_o <= 3'b101;
            32'b00000100000000000000000000000000: n1538_o <= 3'b100;
            32'b00000010000000000000000000000000: n1538_o <= 3'b100;
            32'b00000001000000000000000000000000: n1538_o <= 3'b011;
            32'b00000000100000000000000000000000: n1538_o <= 3'b101;
            32'b00000000010000000000000000000000: n1538_o <= 3'b100;
            32'b00000000001000000000000000000000: n1538_o <= 3'b100;
            32'b00000000000100000000000000000000: n1538_o <= 3'b011;
            32'b00000000000010000000000000000000: n1538_o <= 3'b100;
            32'b00000000000001000000000000000000: n1538_o <= 3'b011;
            32'b00000000000000100000000000000000: n1538_o <= 3'b011;
            32'b00000000000000010000000000000000: n1538_o <= 3'b010;
            32'b00000000000000001000000000000000: n1538_o <= 3'b100;
            32'b00000000000000000100000000000000: n1538_o <= 3'b011;
            32'b00000000000000000010000000000000: n1538_o <= 3'b011;
            32'b00000000000000000001000000000000: n1538_o <= 3'b010;
            32'b00000000000000000000100000000000: n1538_o <= 3'b011;
            32'b00000000000000000000010000000000: n1538_o <= 3'b010;
            32'b00000000000000000000001000000000: n1538_o <= 3'b010;
            32'b00000000000000000000000100000000: n1538_o <= 3'b001;
            32'b00000000000000000000000010000000: n1538_o <= 3'b011;
            32'b00000000000000000000000001000000: n1538_o <= 3'b010;
            32'b00000000000000000000000000100000: n1538_o <= 3'b010;
            32'b00000000000000000000000000010000: n1538_o <= 3'b001;
            32'b00000000000000000000000000001000: n1538_o <= 3'b010;
            32'b00000000000000000000000000000100: n1538_o <= 3'b001;
            32'b00000000000000000000000000000010: n1538_o <= 3'b001;
            32'b00000000000000000000000000000001: n1538_o <= 3'b000;
            default: n1538_o <= 3'bXXX;
        endcase
endmodule

module smallmulttablep3x3r6xuyu_f300_uid9
    (input clk,
        input rst,
        input[5:0] x,
        output[5:0] y);
    wire[5:0] tableout;
    wire n1245_o;
    wire n1248_o;
    wire n1251_o;
    wire n1254_o;
    wire n1257_o;
    wire n1260_o;
    wire n1263_o;
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
    wire n1314_o;
    wire n1317_o;
    wire n1320_o;
    wire n1323_o;
    wire n1326_o;
    wire n1329_o;
    wire n1332_o;
    wire n1335_o;
    wire n1338_o;
    wire n1341_o;
    wire n1344_o;
    wire n1347_o;
    wire n1350_o;
    wire n1353_o;
    wire n1356_o;
    wire n1359_o;
    wire n1362_o;
    wire n1365_o;
    wire n1368_o;
    wire n1371_o;
    wire n1374_o;
    wire n1377_o;
    wire n1380_o;
    wire n1383_o;
    wire n1386_o;
    wire n1389_o;
    wire n1392_o;
    wire n1395_o;
    wire n1398_o;
    wire n1401_o;
    wire n1404_o;
    wire n1407_o;
    wire n1410_o;
    wire n1413_o;
    wire n1416_o;
    wire n1419_o;
    wire n1422_o;
    wire n1425_o;
    wire n1428_o;
    wire n1431_o;
    wire n1434_o;
    wire[63:0] n1436_o;
    reg[5:0] n1437_o;
    assign y = tableout;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:17:8  */
    assign tableout = n1437_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:25:13  */
    assign n1245_o = x == 6'b000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:26:13  */
    assign n1248_o = x == 6'b000001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:27:13  */
    assign n1251_o = x == 6'b000010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:28:13  */
    assign n1254_o = x == 6'b000011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:29:13  */
    assign n1257_o = x == 6'b000100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:30:13  */
    assign n1260_o = x == 6'b000101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:31:13  */
    assign n1263_o = x == 6'b000110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:32:13  */
    assign n1266_o = x == 6'b000111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:33:13  */
    assign n1269_o = x == 6'b001000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:34:13  */
    assign n1272_o = x == 6'b001001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:35:13  */
    assign n1275_o = x == 6'b001010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:36:13  */
    assign n1278_o = x == 6'b001011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:37:13  */
    assign n1281_o = x == 6'b001100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:38:13  */
    assign n1284_o = x == 6'b001101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:39:13  */
    assign n1287_o = x == 6'b001110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:40:13  */
    assign n1290_o = x == 6'b001111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:41:13  */
    assign n1293_o = x == 6'b010000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:42:13  */
    assign n1296_o = x == 6'b010001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:43:13  */
    assign n1299_o = x == 6'b010010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:44:13  */
    assign n1302_o = x == 6'b010011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:45:13  */
    assign n1305_o = x == 6'b010100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:46:13  */
    assign n1308_o = x == 6'b010101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:47:13  */
    assign n1311_o = x == 6'b010110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:48:13  */
    assign n1314_o = x == 6'b010111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:49:13  */
    assign n1317_o = x == 6'b011000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:50:13  */
    assign n1320_o = x == 6'b011001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:51:13  */
    assign n1323_o = x == 6'b011010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:52:13  */
    assign n1326_o = x == 6'b011011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:53:13  */
    assign n1329_o = x == 6'b011100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:54:13  */
    assign n1332_o = x == 6'b011101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:55:13  */
    assign n1335_o = x == 6'b011110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:56:13  */
    assign n1338_o = x == 6'b011111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:57:13  */
    assign n1341_o = x == 6'b100000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:58:13  */
    assign n1344_o = x == 6'b100001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:59:13  */
    assign n1347_o = x == 6'b100010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:60:13  */
    assign n1350_o = x == 6'b100011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:61:13  */
    assign n1353_o = x == 6'b100100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:62:13  */
    assign n1356_o = x == 6'b100101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:63:13  */
    assign n1359_o = x == 6'b100110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:64:13  */
    assign n1362_o = x == 6'b100111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:65:13  */
    assign n1365_o = x == 6'b101000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:66:13  */
    assign n1368_o = x == 6'b101001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:67:13  */
    assign n1371_o = x == 6'b101010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:68:13  */
    assign n1374_o = x == 6'b101011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:69:13  */
    assign n1377_o = x == 6'b101100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:70:13  */
    assign n1380_o = x == 6'b101101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:71:13  */
    assign n1383_o = x == 6'b101110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:72:13  */
    assign n1386_o = x == 6'b101111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:73:13  */
    assign n1389_o = x == 6'b110000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:74:13  */
    assign n1392_o = x == 6'b110001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:75:13  */
    assign n1395_o = x == 6'b110010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:76:13  */
    assign n1398_o = x == 6'b110011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:77:13  */
    assign n1401_o = x == 6'b110100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:78:13  */
    assign n1404_o = x == 6'b110101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:79:13  */
    assign n1407_o = x == 6'b110110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:80:13  */
    assign n1410_o = x == 6'b110111;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:81:13  */
    assign n1413_o = x == 6'b111000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:82:13  */
    assign n1416_o = x == 6'b111001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:83:13  */
    assign n1419_o = x == 6'b111010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:84:13  */
    assign n1422_o = x == 6'b111011;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:85:13  */
    assign n1425_o = x == 6'b111100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:86:13  */
    assign n1428_o = x == 6'b111101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:87:13  */
    assign n1431_o = x == 6'b111110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:88:13  */
    assign n1434_o = x == 6'b111111;
    assign n1436_o = {n1434_o, n1431_o, n1428_o, n1425_o, n1422_o, n1419_o, n1416_o, n1413_o, n1410_o, n1407_o, n1404_o, n1401_o, n1398_o, n1395_o, n1392_o, n1389_o, n1386_o, n1383_o, n1380_o, n1377_o, n1374_o, n1371_o, n1368_o, n1365_o, n1362_o, n1359_o, n1356_o, n1353_o, n1350_o, n1347_o, n1344_o, n1341_o, n1338_o, n1335_o, n1332_o, n1329_o, n1326_o, n1323_o, n1320_o, n1317_o, n1314_o, n1311_o, n1308_o, n1305_o, n1302_o, n1299_o, n1296_o, n1293_o, n1290_o, n1287_o, n1284_o, n1281_o, n1278_o, n1275_o, n1272_o, n1269_o, n1266_o, n1263_o, n1260_o, n1257_o, n1254_o, n1251_o, n1248_o, n1245_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:24:3  */
    always @*
        case (n1436_o)
            64'b1000000000000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b110001;
            64'b0100000000000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b101010;
            64'b0010000000000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b100011;
            64'b0001000000000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b011100;
            64'b0000100000000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b010101;
            64'b0000010000000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b001110;
            64'b0000001000000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b000111;
            64'b0000000100000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b000000;
            64'b0000000010000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b101010;
            64'b0000000001000000000000000000000000000000000000000000000000000000: n1437_o <= 6'b100100;
            64'b0000000000100000000000000000000000000000000000000000000000000000: n1437_o <= 6'b011110;
            64'b0000000000010000000000000000000000000000000000000000000000000000: n1437_o <= 6'b011000;
            64'b0000000000001000000000000000000000000000000000000000000000000000: n1437_o <= 6'b010010;
            64'b0000000000000100000000000000000000000000000000000000000000000000: n1437_o <= 6'b001100;
            64'b0000000000000010000000000000000000000000000000000000000000000000: n1437_o <= 6'b000110;
            64'b0000000000000001000000000000000000000000000000000000000000000000: n1437_o <= 6'b000000;
            64'b0000000000000000100000000000000000000000000000000000000000000000: n1437_o <= 6'b100011;
            64'b0000000000000000010000000000000000000000000000000000000000000000: n1437_o <= 6'b011110;
            64'b0000000000000000001000000000000000000000000000000000000000000000: n1437_o <= 6'b011001;
            64'b0000000000000000000100000000000000000000000000000000000000000000: n1437_o <= 6'b010100;
            64'b0000000000000000000010000000000000000000000000000000000000000000: n1437_o <= 6'b001111;
            64'b0000000000000000000001000000000000000000000000000000000000000000: n1437_o <= 6'b001010;
            64'b0000000000000000000000100000000000000000000000000000000000000000: n1437_o <= 6'b000101;
            64'b0000000000000000000000010000000000000000000000000000000000000000: n1437_o <= 6'b000000;
            64'b0000000000000000000000001000000000000000000000000000000000000000: n1437_o <= 6'b011100;
            64'b0000000000000000000000000100000000000000000000000000000000000000: n1437_o <= 6'b011000;
            64'b0000000000000000000000000010000000000000000000000000000000000000: n1437_o <= 6'b010100;
            64'b0000000000000000000000000001000000000000000000000000000000000000: n1437_o <= 6'b010000;
            64'b0000000000000000000000000000100000000000000000000000000000000000: n1437_o <= 6'b001100;
            64'b0000000000000000000000000000010000000000000000000000000000000000: n1437_o <= 6'b001000;
            64'b0000000000000000000000000000001000000000000000000000000000000000: n1437_o <= 6'b000100;
            64'b0000000000000000000000000000000100000000000000000000000000000000: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000010000000000000000000000000000000: n1437_o <= 6'b010101;
            64'b0000000000000000000000000000000001000000000000000000000000000000: n1437_o <= 6'b010010;
            64'b0000000000000000000000000000000000100000000000000000000000000000: n1437_o <= 6'b001111;
            64'b0000000000000000000000000000000000010000000000000000000000000000: n1437_o <= 6'b001100;
            64'b0000000000000000000000000000000000001000000000000000000000000000: n1437_o <= 6'b001001;
            64'b0000000000000000000000000000000000000100000000000000000000000000: n1437_o <= 6'b000110;
            64'b0000000000000000000000000000000000000010000000000000000000000000: n1437_o <= 6'b000011;
            64'b0000000000000000000000000000000000000001000000000000000000000000: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000100000000000000000000000: n1437_o <= 6'b001110;
            64'b0000000000000000000000000000000000000000010000000000000000000000: n1437_o <= 6'b001100;
            64'b0000000000000000000000000000000000000000001000000000000000000000: n1437_o <= 6'b001010;
            64'b0000000000000000000000000000000000000000000100000000000000000000: n1437_o <= 6'b001000;
            64'b0000000000000000000000000000000000000000000010000000000000000000: n1437_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000001000000000000000000: n1437_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000100000000000000000: n1437_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000010000000000000000: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000001000000000000000: n1437_o <= 6'b000111;
            64'b0000000000000000000000000000000000000000000000000100000000000000: n1437_o <= 6'b000110;
            64'b0000000000000000000000000000000000000000000000000010000000000000: n1437_o <= 6'b000101;
            64'b0000000000000000000000000000000000000000000000000001000000000000: n1437_o <= 6'b000100;
            64'b0000000000000000000000000000000000000000000000000000100000000000: n1437_o <= 6'b000011;
            64'b0000000000000000000000000000000000000000000000000000010000000000: n1437_o <= 6'b000010;
            64'b0000000000000000000000000000000000000000000000000000001000000000: n1437_o <= 6'b000001;
            64'b0000000000000000000000000000000000000000000000000000000100000000: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000010000000: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000001000000: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000100000: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000010000: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000001000: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000100: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000010: n1437_o <= 6'b000000;
            64'b0000000000000000000000000000000000000000000000000000000000000001: n1437_o <= 6'b000000;
            default: n1437_o <= 6'bXXXXXX;
        endcase
endmodule

module intadder_52_f300_uid148
    (input clk,
        input rst,
        input[51:0] x,
        input[51:0] y,
        input cin,
        output[51:0] r);
    wire[51:0] n1235_o;
    wire[51:0] n1236_o;
    wire[51:0] n1237_o;
    assign r = n1237_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1983:12  */
    assign n1235_o = x+y;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1983:16  */
    assign n1236_o = {51'b0, cin};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1983:16  */
    assign n1237_o = n1235_o+n1236_o;
endmodule

module intmultiplier_usingdsp_41_41_82_unsigned_f300_uid4
    (input clk,
        input rst,
        input[40:0] x,
        input[40:0] y,
        output[81:0] r);
    wire[40:0] xx_m5;
    wire[40:0] yy_m5;
    wire[8:0] xp_m5b7;
    wire[8:0] yp_m5b7;
    wire[2:0] x_m5b7_0;
    wire[2:0] x_m5b7_1;
    wire[2:0] x_m5b7_2;
    wire[2:0] y_m5b7_0;
    wire[2:0] y_m5b7_1;
    wire[2:0] y_m5b7_2;
    wire[5:0] y0x0_7_m5;
    wire[5:0] pp7x0y0_m5;
    wire heap_bh6_w34_0;
    wire heap_bh6_w35_0;
    wire[5:0] y0x1_7_m5;
    wire[5:0] pp7x1y0_m5;
    wire heap_bh6_w35_1;
    wire heap_bh6_w36_0;
    wire heap_bh6_w37_0;
    wire heap_bh6_w38_0;
    wire[5:0] y0x2_7_m5;
    wire[5:0] pp7x2y0_m5;
    wire heap_bh6_w38_1;
    wire heap_bh6_w39_0;
    wire heap_bh6_w40_0;
    wire heap_bh6_w41_0;
    wire[5:0] y1x0_7_m5;
    wire[5:0] pp7x0y1_m5;
    wire heap_bh6_w35_2;
    wire heap_bh6_w36_1;
    wire heap_bh6_w37_1;
    wire heap_bh6_w38_2;
    wire[5:0] y1x1_7_m5;
    wire[5:0] pp7x1y1_m5;
    wire heap_bh6_w36_2;
    wire heap_bh6_w37_2;
    wire heap_bh6_w38_3;
    wire heap_bh6_w39_1;
    wire heap_bh6_w40_1;
    wire heap_bh6_w41_1;
    wire[5:0] y1x2_7_m5;
    wire[5:0] pp7x2y1_m5;
    wire heap_bh6_w39_2;
    wire heap_bh6_w40_2;
    wire heap_bh6_w41_2;
    wire heap_bh6_w42_0;
    wire heap_bh6_w43_0;
    wire heap_bh6_w44_0;
    wire[5:0] y2x0_7_m5;
    wire[5:0] pp7x0y2_m5;
    wire heap_bh6_w38_4;
    wire heap_bh6_w39_3;
    wire heap_bh6_w40_3;
    wire heap_bh6_w41_3;
    wire[5:0] y2x1_7_m5;
    wire[5:0] pp7x1y2_m5;
    wire heap_bh6_w39_4;
    wire heap_bh6_w40_4;
    wire heap_bh6_w41_4;
    wire heap_bh6_w42_1;
    wire heap_bh6_w43_1;
    wire heap_bh6_w44_1;
    wire[5:0] y2x2_7_m5;
    wire[5:0] pp7x2y2_m5;
    wire heap_bh6_w42_2;
    wire heap_bh6_w43_2;
    wire heap_bh6_w44_2;
    wire heap_bh6_w45_0;
    wire heap_bh6_w46_0;
    wire heap_bh6_w47_0;
    wire[40:0] dsp_bh6_ch0_0;
    wire heap_bh6_w40_5;
    wire heap_bh6_w39_5;
    wire heap_bh6_w38_5;
    wire heap_bh6_w37_3;
    wire heap_bh6_w36_3;
    wire heap_bh6_w35_3;
    wire heap_bh6_w34_1;
    wire heap_bh6_w33_0;
    wire heap_bh6_w33_0_d1;
    wire heap_bh6_w32_0;
    wire heap_bh6_w31_0;
    wire heap_bh6_w31_0_d1;
    wire heap_bh6_w30_0;
    wire heap_bh6_w29_0;
    wire heap_bh6_w29_0_d1;
    wire heap_bh6_w28_0;
    wire heap_bh6_w27_0;
    wire heap_bh6_w27_0_d1;
    wire heap_bh6_w26_0;
    wire heap_bh6_w25_0;
    wire heap_bh6_w25_0_d1;
    wire heap_bh6_w24_0;
    wire heap_bh6_w23_0;
    wire heap_bh6_w23_0_d1;
    wire heap_bh6_w22_0;
    wire heap_bh6_w22_0_d1;
    wire heap_bh6_w21_0;
    wire heap_bh6_w21_0_d1;
    wire heap_bh6_w20_0;
    wire heap_bh6_w20_0_d1;
    wire heap_bh6_w19_0;
    wire heap_bh6_w19_0_d1;
    wire heap_bh6_w18_0;
    wire heap_bh6_w18_0_d1;
    wire heap_bh6_w17_0;
    wire heap_bh6_w17_0_d1;
    wire heap_bh6_w16_0;
    wire heap_bh6_w15_0;
    wire heap_bh6_w14_0;
    wire heap_bh6_w13_0;
    wire heap_bh6_w12_0;
    wire heap_bh6_w11_0;
    wire heap_bh6_w10_0;
    wire heap_bh6_w9_0;
    wire heap_bh6_w8_0;
    wire heap_bh6_w7_0;
    wire heap_bh6_w6_0;
    wire heap_bh6_w5_0;
    wire heap_bh6_w4_0;
    wire heap_bh6_w3_0;
    wire heap_bh6_w2_0;
    wire heap_bh6_w1_0;
    wire heap_bh6_w0_0;
    wire[40:0] dsp_bh6_ch1_0;
    wire heap_bh6_w64_0;
    wire heap_bh6_w64_0_d1;
    wire heap_bh6_w63_0;
    wire heap_bh6_w63_0_d1;
    wire heap_bh6_w62_0;
    wire heap_bh6_w61_0;
    wire heap_bh6_w60_0;
    wire heap_bh6_w59_0;
    wire heap_bh6_w58_0;
    wire heap_bh6_w57_0;
    wire heap_bh6_w56_0;
    wire heap_bh6_w56_0_d1;
    wire heap_bh6_w55_0;
    wire heap_bh6_w54_0;
    wire heap_bh6_w54_0_d1;
    wire heap_bh6_w53_0;
    wire heap_bh6_w52_0;
    wire heap_bh6_w52_0_d1;
    wire heap_bh6_w51_0;
    wire heap_bh6_w50_0;
    wire heap_bh6_w49_0;
    wire heap_bh6_w48_0;
    wire heap_bh6_w47_1;
    wire heap_bh6_w46_1;
    wire heap_bh6_w45_1;
    wire heap_bh6_w44_3;
    wire heap_bh6_w43_3;
    wire heap_bh6_w42_3;
    wire heap_bh6_w41_5;
    wire heap_bh6_w40_6;
    wire heap_bh6_w39_6;
    wire heap_bh6_w38_6;
    wire heap_bh6_w37_4;
    wire heap_bh6_w36_4;
    wire heap_bh6_w35_4;
    wire heap_bh6_w34_2;
    wire heap_bh6_w33_1;
    wire heap_bh6_w32_1;
    wire heap_bh6_w31_1;
    wire heap_bh6_w30_1;
    wire heap_bh6_w29_1;
    wire heap_bh6_w28_1;
    wire heap_bh6_w27_1;
    wire heap_bh6_w26_1;
    wire heap_bh6_w25_1;
    wire heap_bh6_w24_1;
    wire[40:0] dsp_bh6_ch2_0;
    wire heap_bh6_w81_0;
    wire heap_bh6_w81_0_d1;
    wire heap_bh6_w80_0;
    wire heap_bh6_w80_0_d1;
    wire heap_bh6_w79_0;
    wire heap_bh6_w79_0_d1;
    wire heap_bh6_w78_0;
    wire heap_bh6_w78_0_d1;
    wire heap_bh6_w77_0;
    wire heap_bh6_w77_0_d1;
    wire heap_bh6_w76_0;
    wire heap_bh6_w76_0_d1;
    wire heap_bh6_w75_0;
    wire heap_bh6_w75_0_d1;
    wire heap_bh6_w74_0;
    wire heap_bh6_w74_0_d1;
    wire heap_bh6_w73_0;
    wire heap_bh6_w73_0_d1;
    wire heap_bh6_w72_0;
    wire heap_bh6_w72_0_d1;
    wire heap_bh6_w71_0;
    wire heap_bh6_w71_0_d1;
    wire heap_bh6_w70_0;
    wire heap_bh6_w70_0_d1;
    wire heap_bh6_w69_0;
    wire heap_bh6_w69_0_d1;
    wire heap_bh6_w68_0;
    wire heap_bh6_w68_0_d1;
    wire heap_bh6_w67_0;
    wire heap_bh6_w67_0_d1;
    wire heap_bh6_w66_0;
    wire heap_bh6_w66_0_d1;
    wire heap_bh6_w65_0;
    wire heap_bh6_w65_0_d1;
    wire heap_bh6_w64_1;
    wire heap_bh6_w64_1_d1;
    wire heap_bh6_w63_1;
    wire heap_bh6_w63_1_d1;
    wire heap_bh6_w62_1;
    wire heap_bh6_w61_1;
    wire heap_bh6_w60_1;
    wire heap_bh6_w59_1;
    wire heap_bh6_w58_1;
    wire heap_bh6_w57_1;
    wire heap_bh6_w56_1;
    wire heap_bh6_w55_1;
    wire heap_bh6_w54_1;
    wire heap_bh6_w53_1;
    wire heap_bh6_w52_1;
    wire heap_bh6_w51_1;
    wire heap_bh6_w50_1;
    wire heap_bh6_w49_1;
    wire heap_bh6_w48_1;
    wire heap_bh6_w47_2;
    wire heap_bh6_w46_2;
    wire heap_bh6_w45_2;
    wire heap_bh6_w44_4;
    wire heap_bh6_w43_4;
    wire heap_bh6_w42_4;
    wire heap_bh6_w41_6;
    wire[40:0] dsp_bh6_ch3_0;
    wire heap_bh6_w57_2;
    wire heap_bh6_w56_2;
    wire heap_bh6_w55_2;
    wire heap_bh6_w54_2;
    wire heap_bh6_w53_2;
    wire heap_bh6_w52_2;
    wire heap_bh6_w51_2;
    wire heap_bh6_w50_2;
    wire heap_bh6_w49_2;
    wire heap_bh6_w48_2;
    wire heap_bh6_w47_3;
    wire heap_bh6_w46_3;
    wire heap_bh6_w45_3;
    wire heap_bh6_w44_5;
    wire heap_bh6_w43_5;
    wire heap_bh6_w42_5;
    wire heap_bh6_w41_7;
    wire heap_bh6_w40_7;
    wire heap_bh6_w39_7;
    wire heap_bh6_w38_7;
    wire heap_bh6_w37_5;
    wire heap_bh6_w36_5;
    wire heap_bh6_w35_5;
    wire heap_bh6_w34_3;
    wire heap_bh6_w33_2;
    wire heap_bh6_w32_2;
    wire heap_bh6_w31_2;
    wire heap_bh6_w30_2;
    wire heap_bh6_w29_2;
    wire heap_bh6_w28_2;
    wire heap_bh6_w27_2;
    wire heap_bh6_w26_2;
    wire heap_bh6_w25_2;
    wire heap_bh6_w24_2;
    wire heap_bh6_w23_1;
    wire heap_bh6_w23_1_d1;
    wire heap_bh6_w22_1;
    wire heap_bh6_w22_1_d1;
    wire heap_bh6_w21_1;
    wire heap_bh6_w21_1_d1;
    wire heap_bh6_w20_1;
    wire heap_bh6_w20_1_d1;
    wire heap_bh6_w19_1;
    wire heap_bh6_w19_1_d1;
    wire heap_bh6_w18_1;
    wire heap_bh6_w18_1_d1;
    wire heap_bh6_w17_1;
    wire heap_bh6_w17_1_d1;
    wire[16:0] tempr_bh6_0;
    wire[16:0] tempr_bh6_0_d1;
    wire[3:0] compressorin_bh6_0_0;
    wire compressorin_bh6_0_1;
    wire[2:0] compressorout_bh6_0_0;
    wire heap_bh6_w38_8;
    wire heap_bh6_w39_8;
    wire heap_bh6_w40_8;
    wire[3:0] compressorin_bh6_1_2;
    wire compressorin_bh6_1_3;
    wire[2:0] compressorout_bh6_1_1;
    wire heap_bh6_w39_9;
    wire heap_bh6_w40_9;
    wire heap_bh6_w41_8;
    wire[3:0] compressorin_bh6_2_4;
    wire compressorin_bh6_2_5;
    wire[2:0] compressorout_bh6_2_2;
    wire heap_bh6_w40_10;
    wire heap_bh6_w41_9;
    wire heap_bh6_w42_6;
    wire[3:0] compressorin_bh6_3_6;
    wire compressorin_bh6_3_7;
    wire[2:0] compressorout_bh6_3_3;
    wire heap_bh6_w41_10;
    wire heap_bh6_w42_7;
    wire heap_bh6_w43_6;
    wire[2:0] compressorin_bh6_4_8;
    wire[1:0] compressorin_bh6_4_9;
    wire[2:0] compressorout_bh6_4_4;
    wire heap_bh6_w35_6;
    wire heap_bh6_w36_6;
    wire heap_bh6_w37_6;
    wire[2:0] compressorin_bh6_5_10;
    wire[1:0] compressorin_bh6_5_11;
    wire[2:0] compressorout_bh6_5_5;
    wire heap_bh6_w43_7;
    wire heap_bh6_w44_6;
    wire heap_bh6_w45_4;
    wire[2:0] compressorin_bh6_6_12;
    wire compressorin_bh6_6_13;
    wire[2:0] compressorout_bh6_6_6;
    wire heap_bh6_w37_7;
    wire heap_bh6_w38_9;
    wire heap_bh6_w39_10;
    wire[3:0] compressorin_bh6_7_14;
    wire compressorin_bh6_7_15;
    wire[2:0] compressorout_bh6_7_7;
    wire heap_bh6_w42_8;
    wire heap_bh6_w43_8;
    wire heap_bh6_w44_7;
    wire[2:0] compressorin_bh6_8_16;
    wire[1:0] compressorin_bh6_8_17;
    wire[2:0] compressorout_bh6_8_8;
    wire heap_bh6_w39_11;
    wire heap_bh6_w40_11;
    wire heap_bh6_w41_11;
    wire[2:0] compressorin_bh6_9_18;
    wire[1:0] compressorout_bh6_9_9;
    wire heap_bh6_w41_12;
    wire heap_bh6_w42_9;
    wire[2:0] compressorin_bh6_10_19;
    wire[1:0] compressorin_bh6_10_20;
    wire[2:0] compressorout_bh6_10_10;
    wire heap_bh6_w44_8;
    wire heap_bh6_w45_5;
    wire heap_bh6_w46_4;
    wire[3:0] compressorin_bh6_11_21;
    wire compressorin_bh6_11_22;
    wire[2:0] compressorout_bh6_11_11;
    wire heap_bh6_w34_4;
    wire heap_bh6_w34_4_d1;
    wire heap_bh6_w35_7;
    wire heap_bh6_w35_7_d1;
    wire heap_bh6_w36_7;
    wire[3:0] compressorin_bh6_12_23;
    wire compressorin_bh6_12_24;
    wire[2:0] compressorout_bh6_12_12;
    wire heap_bh6_w36_8;
    wire heap_bh6_w37_8;
    wire heap_bh6_w37_8_d1;
    wire heap_bh6_w38_10;
    wire[3:0] compressorin_bh6_13_25;
    wire compressorin_bh6_13_26;
    wire[2:0] compressorout_bh6_13_13;
    wire heap_bh6_w37_9;
    wire heap_bh6_w38_11;
    wire heap_bh6_w39_12;
    wire heap_bh6_w39_12_d1;
    wire[3:0] compressorin_bh6_14_27;
    wire compressorin_bh6_14_28;
    wire[2:0] compressorout_bh6_14_14;
    wire heap_bh6_w38_12;
    wire heap_bh6_w39_13;
    wire heap_bh6_w40_12;
    wire[3:0] compressorin_bh6_15_29;
    wire compressorin_bh6_15_30;
    wire[2:0] compressorout_bh6_15_15;
    wire heap_bh6_w40_13;
    wire heap_bh6_w41_13;
    wire heap_bh6_w41_13_d1;
    wire heap_bh6_w42_10;
    wire[3:0] compressorin_bh6_16_31;
    wire compressorin_bh6_16_32;
    wire[2:0] compressorout_bh6_16_16;
    wire heap_bh6_w41_14;
    wire heap_bh6_w42_11;
    wire heap_bh6_w43_9;
    wire heap_bh6_w43_9_d1;
    wire[3:0] compressorin_bh6_17_33;
    wire compressorin_bh6_17_34;
    wire[2:0] compressorout_bh6_17_17;
    wire heap_bh6_w42_12;
    wire heap_bh6_w43_10;
    wire heap_bh6_w44_9;
    wire[3:0] compressorin_bh6_18_35;
    wire compressorin_bh6_18_36;
    wire[2:0] compressorout_bh6_18_18;
    wire heap_bh6_w43_11;
    wire heap_bh6_w44_10;
    wire heap_bh6_w45_6;
    wire heap_bh6_w45_6_d1;
    wire[3:0] compressorin_bh6_19_37;
    wire compressorin_bh6_19_38;
    wire[2:0] compressorout_bh6_19_19;
    wire heap_bh6_w45_7;
    wire heap_bh6_w46_5;
    wire heap_bh6_w47_4;
    wire[3:0] compressorin_bh6_20_39;
    wire compressorin_bh6_20_40;
    wire[2:0] compressorout_bh6_20_20;
    wire heap_bh6_w46_6;
    wire heap_bh6_w47_5;
    wire heap_bh6_w48_3;
    wire heap_bh6_w48_3_d1;
    wire[2:0] compressorin_bh6_21_41;
    wire[1:0] compressorin_bh6_21_42;
    wire[2:0] compressorout_bh6_21_21;
    wire heap_bh6_w24_3;
    wire heap_bh6_w24_3_d1;
    wire heap_bh6_w25_3;
    wire heap_bh6_w25_3_d1;
    wire heap_bh6_w26_3;
    wire heap_bh6_w26_3_d1;
    wire[2:0] compressorin_bh6_22_43;
    wire[1:0] compressorin_bh6_22_44;
    wire[2:0] compressorout_bh6_22_22;
    wire heap_bh6_w26_4;
    wire heap_bh6_w26_4_d1;
    wire heap_bh6_w27_3;
    wire heap_bh6_w27_3_d1;
    wire heap_bh6_w28_3;
    wire heap_bh6_w28_3_d1;
    wire[2:0] compressorin_bh6_23_45;
    wire[1:0] compressorin_bh6_23_46;
    wire[2:0] compressorout_bh6_23_23;
    wire heap_bh6_w28_4;
    wire heap_bh6_w28_4_d1;
    wire heap_bh6_w29_3;
    wire heap_bh6_w29_3_d1;
    wire heap_bh6_w30_3;
    wire heap_bh6_w30_3_d1;
    wire[2:0] compressorin_bh6_24_47;
    wire[1:0] compressorin_bh6_24_48;
    wire[2:0] compressorout_bh6_24_24;
    wire heap_bh6_w30_4;
    wire heap_bh6_w30_4_d1;
    wire heap_bh6_w31_3;
    wire heap_bh6_w31_3_d1;
    wire heap_bh6_w32_3;
    wire heap_bh6_w32_3_d1;
    wire[2:0] compressorin_bh6_25_49;
    wire[1:0] compressorin_bh6_25_50;
    wire[2:0] compressorout_bh6_25_25;
    wire heap_bh6_w32_4;
    wire heap_bh6_w32_4_d1;
    wire heap_bh6_w33_3;
    wire heap_bh6_w33_3_d1;
    wire heap_bh6_w34_5;
    wire heap_bh6_w34_5_d1;
    wire[2:0] compressorin_bh6_26_51;
    wire[1:0] compressorin_bh6_26_52;
    wire[2:0] compressorout_bh6_26_26;
    wire heap_bh6_w47_6;
    wire heap_bh6_w48_4;
    wire heap_bh6_w49_3;
    wire[2:0] compressorin_bh6_27_53;
    wire[1:0] compressorin_bh6_27_54;
    wire[2:0] compressorout_bh6_27_27;
    wire heap_bh6_w49_4;
    wire heap_bh6_w50_3;
    wire heap_bh6_w51_3;
    wire heap_bh6_w51_3_d1;
    wire[2:0] compressorin_bh6_28_55;
    wire[1:0] compressorin_bh6_28_56;
    wire[2:0] compressorout_bh6_28_28;
    wire heap_bh6_w51_4;
    wire heap_bh6_w51_4_d1;
    wire heap_bh6_w52_3;
    wire heap_bh6_w52_3_d1;
    wire heap_bh6_w53_3;
    wire heap_bh6_w53_3_d1;
    wire[2:0] compressorin_bh6_29_57;
    wire[1:0] compressorin_bh6_29_58;
    wire[2:0] compressorout_bh6_29_29;
    wire heap_bh6_w53_4;
    wire heap_bh6_w53_4_d1;
    wire heap_bh6_w54_3;
    wire heap_bh6_w54_3_d1;
    wire heap_bh6_w55_3;
    wire heap_bh6_w55_3_d1;
    wire[2:0] compressorin_bh6_30_59;
    wire[1:0] compressorin_bh6_30_60;
    wire[2:0] compressorout_bh6_30_30;
    wire heap_bh6_w55_4;
    wire heap_bh6_w55_4_d1;
    wire heap_bh6_w56_3;
    wire heap_bh6_w56_3_d1;
    wire heap_bh6_w57_3;
    wire heap_bh6_w57_3_d1;
    wire[2:0] compressorin_bh6_31_61;
    wire[1:0] compressorin_bh6_31_62;
    wire[2:0] compressorout_bh6_31_31;
    wire heap_bh6_w57_4;
    wire heap_bh6_w57_4_d1;
    wire heap_bh6_w58_2;
    wire heap_bh6_w58_2_d1;
    wire heap_bh6_w59_2;
    wire[2:0] compressorin_bh6_32_63;
    wire compressorin_bh6_32_64;
    wire[2:0] compressorout_bh6_32_32;
    wire heap_bh6_w35_8;
    wire heap_bh6_w35_8_d1;
    wire heap_bh6_w36_9;
    wire heap_bh6_w37_10;
    wire[2:0] compressorin_bh6_33_65;
    wire compressorin_bh6_33_66;
    wire[2:0] compressorout_bh6_33_33;
    wire heap_bh6_w39_14;
    wire heap_bh6_w40_14;
    wire heap_bh6_w41_15;
    wire[2:0] compressorin_bh6_34_67;
    wire[1:0] compressorout_bh6_34_34;
    wire heap_bh6_w44_11;
    wire heap_bh6_w45_8;
    wire[2:0] compressorin_bh6_35_68;
    wire[1:0] compressorin_bh6_35_69;
    wire[2:0] compressorout_bh6_35_35;
    wire heap_bh6_w36_10;
    wire heap_bh6_w36_10_d1;
    wire heap_bh6_w37_11;
    wire heap_bh6_w37_11_d1;
    wire heap_bh6_w38_13;
    wire heap_bh6_w38_13_d1;
    wire[2:0] compressorin_bh6_36_70;
    wire[1:0] compressorin_bh6_36_71;
    wire[2:0] compressorout_bh6_36_36;
    wire heap_bh6_w38_14;
    wire heap_bh6_w38_14_d1;
    wire heap_bh6_w39_15;
    wire heap_bh6_w39_15_d1;
    wire heap_bh6_w40_15;
    wire heap_bh6_w40_15_d1;
    wire[2:0] compressorin_bh6_37_72;
    wire[1:0] compressorin_bh6_37_73;
    wire[2:0] compressorout_bh6_37_37;
    wire heap_bh6_w40_16;
    wire heap_bh6_w40_16_d1;
    wire heap_bh6_w41_16;
    wire heap_bh6_w41_16_d1;
    wire heap_bh6_w42_13;
    wire heap_bh6_w42_13_d1;
    wire[2:0] compressorin_bh6_38_74;
    wire[1:0] compressorin_bh6_38_75;
    wire[2:0] compressorout_bh6_38_38;
    wire heap_bh6_w42_14;
    wire heap_bh6_w42_14_d1;
    wire heap_bh6_w43_12;
    wire heap_bh6_w43_12_d1;
    wire heap_bh6_w44_12;
    wire heap_bh6_w44_12_d1;
    wire[2:0] compressorin_bh6_39_76;
    wire[1:0] compressorin_bh6_39_77;
    wire[2:0] compressorout_bh6_39_39;
    wire heap_bh6_w44_13;
    wire heap_bh6_w44_13_d1;
    wire heap_bh6_w45_9;
    wire heap_bh6_w45_9_d1;
    wire heap_bh6_w46_7;
    wire[2:0] compressorin_bh6_40_78;
    wire[1:0] compressorin_bh6_40_79;
    wire[2:0] compressorout_bh6_40_40;
    wire heap_bh6_w47_7;
    wire heap_bh6_w48_5;
    wire heap_bh6_w48_5_d1;
    wire heap_bh6_w49_5;
    wire[2:0] compressorin_bh6_41_80;
    wire[1:0] compressorin_bh6_41_81;
    wire[2:0] compressorout_bh6_41_41;
    wire heap_bh6_w59_3;
    wire heap_bh6_w59_3_d1;
    wire heap_bh6_w60_2;
    wire heap_bh6_w60_2_d1;
    wire heap_bh6_w61_2;
    wire[2:0] compressorin_bh6_42_82;
    wire[1:0] compressorin_bh6_42_83;
    wire[2:0] compressorout_bh6_42_42;
    wire heap_bh6_w49_6;
    wire heap_bh6_w49_6_d1;
    wire heap_bh6_w50_4;
    wire heap_bh6_w50_4_d1;
    wire heap_bh6_w51_5;
    wire heap_bh6_w51_5_d1;
    wire[2:0] compressorin_bh6_43_84;
    wire[1:0] compressorin_bh6_43_85;
    wire[2:0] compressorout_bh6_43_43;
    wire heap_bh6_w61_3;
    wire heap_bh6_w61_3_d1;
    wire heap_bh6_w62_2;
    wire heap_bh6_w62_2_d1;
    wire heap_bh6_w63_2;
    wire heap_bh6_w63_2_d1;
    wire[2:0] compressorin_bh6_44_86;
    wire compressorin_bh6_44_87;
    wire[2:0] compressorout_bh6_44_44;
    wire heap_bh6_w46_8;
    wire heap_bh6_w46_8_d1;
    wire heap_bh6_w47_8;
    wire heap_bh6_w47_8_d1;
    wire heap_bh6_w48_6;
    wire heap_bh6_w48_6_d1;
    wire[2:0] compressorin_bh6_45_88;
    wire[1:0] compressorin_bh6_45_89;
    wire[2:0] compressorout_bh6_45_45;
    wire heap_bh6_w51_6;
    wire heap_bh6_w52_4;
    wire heap_bh6_w53_5;
    wire[2:0] compressorin_bh6_46_90;
    wire[1:0] compressorin_bh6_46_91;
    wire[2:0] compressorout_bh6_46_46;
    wire heap_bh6_w63_3;
    wire heap_bh6_w64_2;
    wire heap_bh6_w65_1;
    wire[2:0] compressorin_bh6_47_92;
    wire compressorin_bh6_47_93;
    wire[2:0] compressorout_bh6_47_47;
    wire heap_bh6_w48_7;
    wire heap_bh6_w49_7;
    wire heap_bh6_w50_5;
    wire[2:0] compressorin_bh6_48_94;
    wire[1:0] compressorin_bh6_48_95;
    wire[2:0] compressorout_bh6_48_48;
    wire heap_bh6_w53_6;
    wire heap_bh6_w54_4;
    wire heap_bh6_w55_5;
    wire[2:0] compressorin_bh6_49_96;
    wire[1:0] compressorin_bh6_49_97;
    wire[2:0] compressorout_bh6_49_49;
    wire heap_bh6_w55_6;
    wire heap_bh6_w56_4;
    wire heap_bh6_w57_5;
    wire[2:0] compressorin_bh6_50_98;
    wire compressorin_bh6_50_99;
    wire[2:0] compressorout_bh6_50_50;
    wire heap_bh6_w57_6;
    wire heap_bh6_w58_3;
    wire heap_bh6_w59_4;
    wire[65:0] finaladderin0_bh6;
    wire[65:0] finaladderin1_bh6;
    wire finaladdercin_bh6;
    wire[65:0] finaladderout_bh6;
    wire[82:0] compressionresult6;
    reg n228_q;
    reg n229_q;
    reg n230_q;
    reg n231_q;
    reg n232_q;
    reg n233_q;
    reg n234_q;
    reg n235_q;
    reg n236_q;
    reg n237_q;
    reg n238_q;
    reg n239_q;
    reg n240_q;
    reg n241_q;
    reg n242_q;
    reg n243_q;
    reg n244_q;
    reg n245_q;
    reg n246_q;
    reg n247_q;
    reg n248_q;
    reg n249_q;
    reg n250_q;
    reg n251_q;
    reg n252_q;
    reg n253_q;
    reg n254_q;
    reg n255_q;
    reg n256_q;
    reg n257_q;
    reg n258_q;
    reg n259_q;
    reg n260_q;
    reg n261_q;
    reg n262_q;
    reg n263_q;
    reg n264_q;
    reg n265_q;
    reg n266_q;
    reg n267_q;
    reg n268_q;
    reg n269_q;
    reg n270_q;
    reg[16:0] n271_q;
    reg n272_q;
    reg n273_q;
    reg n274_q;
    reg n275_q;
    reg n276_q;
    reg n277_q;
    reg n278_q;
    reg n279_q;
    reg n280_q;
    reg n281_q;
    reg n282_q;
    reg n283_q;
    reg n284_q;
    reg n285_q;
    reg n286_q;
    reg n287_q;
    reg n288_q;
    reg n289_q;
    reg n290_q;
    reg n291_q;
    reg n292_q;
    reg n293_q;
    reg n294_q;
    reg n295_q;
    reg n296_q;
    reg n297_q;
    reg n298_q;
    reg n299_q;
    reg n300_q;
    reg n301_q;
    reg n302_q;
    reg n303_q;
    reg n304_q;
    reg n305_q;
    reg n306_q;
    reg n307_q;
    reg n308_q;
    reg n309_q;
    reg n310_q;
    reg n311_q;
    reg n312_q;
    reg n313_q;
    reg n314_q;
    reg n315_q;
    reg n316_q;
    reg n317_q;
    reg n318_q;
    reg n319_q;
    reg n320_q;
    reg n321_q;
    reg n322_q;
    reg n323_q;
    reg n324_q;
    reg n325_q;
    reg n326_q;
    reg n327_q;
    reg n328_q;
    reg n329_q;
    reg n330_q;
    reg n331_q;
    reg n332_q;
    reg n333_q;
    wire[6:0] n334_o;
    wire[8:0] n336_o;
    wire[6:0] n337_o;
    wire[8:0] n339_o;
    wire[2:0] n340_o;
    wire[2:0] n341_o;
    wire[2:0] n342_o;
    wire[2:0] n343_o;
    wire[2:0] n344_o;
    wire[2:0] n345_o;
    wire[5:0] n346_o;
    wire[5:0] pp_m5_7x0y0_tbl_n347;
    wire[5:0] pp_m5_7x0y0_tbl_y;
    wire n350_o;
    wire n351_o;
    wire[5:0] n352_o;
    wire[5:0] pp_m5_7x1y0_tbl_n353;
    wire[5:0] pp_m5_7x1y0_tbl_y;
    wire n356_o;
    wire n357_o;
    wire n358_o;
    wire n359_o;
    wire[5:0] n360_o;
    wire[5:0] pp_m5_7x2y0_tbl_n361;
    wire[5:0] pp_m5_7x2y0_tbl_y;
    wire n364_o;
    wire n365_o;
    wire n366_o;
    wire n367_o;
    wire[5:0] n368_o;
    wire[5:0] pp_m5_7x0y1_tbl_n369;
    wire[5:0] pp_m5_7x0y1_tbl_y;
    wire n372_o;
    wire n373_o;
    wire n374_o;
    wire n375_o;
    wire[5:0] n376_o;
    wire[5:0] pp_m5_7x1y1_tbl_n377;
    wire[5:0] pp_m5_7x1y1_tbl_y;
    wire n380_o;
    wire n381_o;
    wire n382_o;
    wire n383_o;
    wire n384_o;
    wire n385_o;
    wire[5:0] n386_o;
    wire[5:0] pp_m5_7x2y1_tbl_n387;
    wire[5:0] pp_m5_7x2y1_tbl_y;
    wire n390_o;
    wire n391_o;
    wire n392_o;
    wire n393_o;
    wire n394_o;
    wire n395_o;
    wire[5:0] n396_o;
    wire[5:0] pp_m5_7x0y2_tbl_n397;
    wire[5:0] pp_m5_7x0y2_tbl_y;
    wire n400_o;
    wire n401_o;
    wire n402_o;
    wire n403_o;
    wire[5:0] n404_o;
    wire[5:0] pp_m5_7x1y2_tbl_n405;
    wire[5:0] pp_m5_7x1y2_tbl_y;
    wire n408_o;
    wire n409_o;
    wire n410_o;
    wire n411_o;
    wire n412_o;
    wire n413_o;
    wire[5:0] n414_o;
    wire[5:0] pp_m5_7x2y2_tbl_n415;
    wire[5:0] pp_m5_7x2y2_tbl_y;
    wire n418_o;
    wire n419_o;
    wire n420_o;
    wire n421_o;
    wire n422_o;
    wire n423_o;
    wire[23:0] n424_o;
    wire[16:0] n427_o;
    wire[40:0] n430_o;
    wire[40:0] n431_o;
    wire[40:0] n432_o;
    wire n433_o;
    wire n434_o;
    wire n435_o;
    wire n436_o;
    wire n437_o;
    wire n438_o;
    wire n439_o;
    wire n440_o;
    wire n441_o;
    wire n442_o;
    wire n443_o;
    wire n444_o;
    wire n445_o;
    wire n446_o;
    wire n447_o;
    wire n448_o;
    wire n449_o;
    wire n450_o;
    wire n451_o;
    wire n452_o;
    wire n453_o;
    wire n454_o;
    wire n455_o;
    wire n456_o;
    wire n457_o;
    wire n458_o;
    wire n459_o;
    wire n460_o;
    wire n461_o;
    wire n462_o;
    wire n463_o;
    wire n464_o;
    wire n465_o;
    wire n466_o;
    wire n467_o;
    wire n468_o;
    wire n469_o;
    wire n470_o;
    wire n471_o;
    wire n472_o;
    wire n473_o;
    wire[16:0] n474_o;
    wire[23:0] n477_o;
    wire[40:0] n480_o;
    wire[40:0] n481_o;
    wire[40:0] n482_o;
    wire n483_o;
    wire n484_o;
    wire n485_o;
    wire n486_o;
    wire n487_o;
    wire n488_o;
    wire n489_o;
    wire n490_o;
    wire n491_o;
    wire n492_o;
    wire n493_o;
    wire n494_o;
    wire n495_o;
    wire n496_o;
    wire n497_o;
    wire n498_o;
    wire n499_o;
    wire n500_o;
    wire n501_o;
    wire n502_o;
    wire n503_o;
    wire n504_o;
    wire n505_o;
    wire n506_o;
    wire n507_o;
    wire n508_o;
    wire n509_o;
    wire n510_o;
    wire n511_o;
    wire n512_o;
    wire n513_o;
    wire n514_o;
    wire n515_o;
    wire n516_o;
    wire n517_o;
    wire n518_o;
    wire n519_o;
    wire n520_o;
    wire n521_o;
    wire n522_o;
    wire n523_o;
    wire[23:0] n524_o;
    wire[16:0] n527_o;
    wire[40:0] n530_o;
    wire[40:0] n531_o;
    wire[40:0] n532_o;
    wire n533_o;
    wire n534_o;
    wire n535_o;
    wire n536_o;
    wire n537_o;
    wire n538_o;
    wire n539_o;
    wire n540_o;
    wire n541_o;
    wire n542_o;
    wire n543_o;
    wire n544_o;
    wire n545_o;
    wire n546_o;
    wire n547_o;
    wire n548_o;
    wire n549_o;
    wire n550_o;
    wire n551_o;
    wire n552_o;
    wire n553_o;
    wire n554_o;
    wire n555_o;
    wire n556_o;
    wire n557_o;
    wire n558_o;
    wire n559_o;
    wire n560_o;
    wire n561_o;
    wire n562_o;
    wire n563_o;
    wire n564_o;
    wire n565_o;
    wire n566_o;
    wire n567_o;
    wire n568_o;
    wire n569_o;
    wire n570_o;
    wire n571_o;
    wire n572_o;
    wire n573_o;
    wire[16:0] n574_o;
    wire[23:0] n577_o;
    wire[40:0] n580_o;
    wire[40:0] n581_o;
    wire[40:0] n582_o;
    wire n583_o;
    wire n584_o;
    wire n585_o;
    wire n586_o;
    wire n587_o;
    wire n588_o;
    wire n589_o;
    wire n590_o;
    wire n591_o;
    wire n592_o;
    wire n593_o;
    wire n594_o;
    wire n595_o;
    wire n596_o;
    wire n597_o;
    wire n598_o;
    wire n599_o;
    wire n600_o;
    wire n601_o;
    wire n602_o;
    wire n603_o;
    wire n604_o;
    wire n605_o;
    wire n606_o;
    wire n607_o;
    wire n608_o;
    wire n609_o;
    wire n610_o;
    wire n611_o;
    wire n612_o;
    wire n613_o;
    wire n614_o;
    wire n615_o;
    wire n616_o;
    wire n617_o;
    wire n618_o;
    wire n619_o;
    wire n620_o;
    wire n621_o;
    wire n622_o;
    wire n623_o;
    wire[1:0] n624_o;
    wire[2:0] n625_o;
    wire[3:0] n626_o;
    wire[4:0] n627_o;
    wire[5:0] n628_o;
    wire[6:0] n629_o;
    wire[7:0] n630_o;
    wire[8:0] n631_o;
    wire[9:0] n632_o;
    wire[10:0] n633_o;
    wire[11:0] n634_o;
    wire[12:0] n635_o;
    wire[13:0] n636_o;
    wire[14:0] n637_o;
    wire[15:0] n638_o;
    wire[16:0] n639_o;
    wire[1:0] n640_o;
    wire[2:0] n641_o;
    wire[3:0] n642_o;
    wire[2:0] compressor_bh6_0_n643;
    wire[2:0] compressor_bh6_0_r;
    wire n646_o;
    wire n647_o;
    wire n648_o;
    wire[1:0] n649_o;
    wire[2:0] n650_o;
    wire[3:0] n651_o;
    wire[2:0] compressor_bh6_1_n652;
    wire[2:0] compressor_bh6_1_r;
    wire n655_o;
    wire n656_o;
    wire n657_o;
    wire[1:0] n658_o;
    wire[2:0] n659_o;
    wire[3:0] n660_o;
    wire[2:0] compressor_bh6_2_n661;
    wire[2:0] compressor_bh6_2_r;
    wire n664_o;
    wire n665_o;
    wire n666_o;
    wire[1:0] n667_o;
    wire[2:0] n668_o;
    wire[3:0] n669_o;
    wire[2:0] compressor_bh6_3_n670;
    wire[2:0] compressor_bh6_3_r;
    wire n673_o;
    wire n674_o;
    wire n675_o;
    wire[1:0] n676_o;
    wire[2:0] n677_o;
    wire[1:0] n678_o;
    wire[2:0] compressor_bh6_4_n679;
    wire[2:0] compressor_bh6_4_r;
    wire n682_o;
    wire n683_o;
    wire n684_o;
    wire[1:0] n685_o;
    wire[2:0] n686_o;
    wire[1:0] n687_o;
    wire[2:0] compressor_bh6_5_n688;
    wire[2:0] compressor_bh6_5_r;
    wire n691_o;
    wire n692_o;
    wire n693_o;
    wire[1:0] n694_o;
    wire[2:0] n695_o;
    wire[2:0] compressor_bh6_6_n696;
    wire[2:0] compressor_bh6_6_r;
    wire n699_o;
    wire n700_o;
    wire n701_o;
    wire[1:0] n702_o;
    wire[2:0] n703_o;
    wire[3:0] n704_o;
    wire[2:0] compressor_bh6_7_n705;
    wire[2:0] compressor_bh6_7_r;
    wire n708_o;
    wire n709_o;
    wire n710_o;
    wire[1:0] n711_o;
    wire[2:0] n712_o;
    wire[1:0] n713_o;
    wire[2:0] compressor_bh6_8_n714;
    wire[2:0] compressor_bh6_8_r;
    wire n717_o;
    wire n718_o;
    wire n719_o;
    wire[1:0] n720_o;
    wire[2:0] n721_o;
    wire[1:0] compressor_bh6_9_n722;
    wire[1:0] compressor_bh6_9_r;
    wire n725_o;
    wire n726_o;
    wire[1:0] n727_o;
    wire[2:0] n728_o;
    wire[1:0] n729_o;
    wire[2:0] compressor_bh6_10_n730;
    wire[2:0] compressor_bh6_10_r;
    wire n733_o;
    wire n734_o;
    wire n735_o;
    wire[1:0] n736_o;
    wire[2:0] n737_o;
    wire[3:0] n738_o;
    wire[2:0] compressor_bh6_11_n739;
    wire[2:0] compressor_bh6_11_r;
    wire n742_o;
    wire n743_o;
    wire n744_o;
    wire[1:0] n745_o;
    wire[2:0] n746_o;
    wire[3:0] n747_o;
    wire[2:0] compressor_bh6_12_n748;
    wire[2:0] compressor_bh6_12_r;
    wire n751_o;
    wire n752_o;
    wire n753_o;
    wire[1:0] n754_o;
    wire[2:0] n755_o;
    wire[3:0] n756_o;
    wire[2:0] compressor_bh6_13_n757;
    wire[2:0] compressor_bh6_13_r;
    wire n760_o;
    wire n761_o;
    wire n762_o;
    wire[1:0] n763_o;
    wire[2:0] n764_o;
    wire[3:0] n765_o;
    wire[2:0] compressor_bh6_14_n766;
    wire[2:0] compressor_bh6_14_r;
    wire n769_o;
    wire n770_o;
    wire n771_o;
    wire[1:0] n772_o;
    wire[2:0] n773_o;
    wire[3:0] n774_o;
    wire[2:0] compressor_bh6_15_n775;
    wire[2:0] compressor_bh6_15_r;
    wire n778_o;
    wire n779_o;
    wire n780_o;
    wire[1:0] n781_o;
    wire[2:0] n782_o;
    wire[3:0] n783_o;
    wire[2:0] compressor_bh6_16_n784;
    wire[2:0] compressor_bh6_16_r;
    wire n787_o;
    wire n788_o;
    wire n789_o;
    wire[1:0] n790_o;
    wire[2:0] n791_o;
    wire[3:0] n792_o;
    wire[2:0] compressor_bh6_17_n793;
    wire[2:0] compressor_bh6_17_r;
    wire n796_o;
    wire n797_o;
    wire n798_o;
    wire[1:0] n799_o;
    wire[2:0] n800_o;
    wire[3:0] n801_o;
    wire[2:0] compressor_bh6_18_n802;
    wire[2:0] compressor_bh6_18_r;
    wire n805_o;
    wire n806_o;
    wire n807_o;
    wire[1:0] n808_o;
    wire[2:0] n809_o;
    wire[3:0] n810_o;
    wire[2:0] compressor_bh6_19_n811;
    wire[2:0] compressor_bh6_19_r;
    wire n814_o;
    wire n815_o;
    wire n816_o;
    wire[1:0] n817_o;
    wire[2:0] n818_o;
    wire[3:0] n819_o;
    wire[2:0] compressor_bh6_20_n820;
    wire[2:0] compressor_bh6_20_r;
    wire n823_o;
    wire n824_o;
    wire n825_o;
    wire[1:0] n826_o;
    wire[2:0] n827_o;
    wire[1:0] n828_o;
    wire[2:0] compressor_bh6_21_n829;
    wire[2:0] compressor_bh6_21_r;
    wire n832_o;
    wire n833_o;
    wire n834_o;
    wire[1:0] n835_o;
    wire[2:0] n836_o;
    wire[1:0] n837_o;
    wire[2:0] compressor_bh6_22_n838;
    wire[2:0] compressor_bh6_22_r;
    wire n841_o;
    wire n842_o;
    wire n843_o;
    wire[1:0] n844_o;
    wire[2:0] n845_o;
    wire[1:0] n846_o;
    wire[2:0] compressor_bh6_23_n847;
    wire[2:0] compressor_bh6_23_r;
    wire n850_o;
    wire n851_o;
    wire n852_o;
    wire[1:0] n853_o;
    wire[2:0] n854_o;
    wire[1:0] n855_o;
    wire[2:0] compressor_bh6_24_n856;
    wire[2:0] compressor_bh6_24_r;
    wire n859_o;
    wire n860_o;
    wire n861_o;
    wire[1:0] n862_o;
    wire[2:0] n863_o;
    wire[1:0] n864_o;
    wire[2:0] compressor_bh6_25_n865;
    wire[2:0] compressor_bh6_25_r;
    wire n868_o;
    wire n869_o;
    wire n870_o;
    wire[1:0] n871_o;
    wire[2:0] n872_o;
    wire[1:0] n873_o;
    wire[2:0] compressor_bh6_26_n874;
    wire[2:0] compressor_bh6_26_r;
    wire n877_o;
    wire n878_o;
    wire n879_o;
    wire[1:0] n880_o;
    wire[2:0] n881_o;
    wire[1:0] n882_o;
    wire[2:0] compressor_bh6_27_n883;
    wire[2:0] compressor_bh6_27_r;
    wire n886_o;
    wire n887_o;
    wire n888_o;
    wire[1:0] n889_o;
    wire[2:0] n890_o;
    wire[1:0] n891_o;
    wire[2:0] compressor_bh6_28_n892;
    wire[2:0] compressor_bh6_28_r;
    wire n895_o;
    wire n896_o;
    wire n897_o;
    wire[1:0] n898_o;
    wire[2:0] n899_o;
    wire[1:0] n900_o;
    wire[2:0] compressor_bh6_29_n901;
    wire[2:0] compressor_bh6_29_r;
    wire n904_o;
    wire n905_o;
    wire n906_o;
    wire[1:0] n907_o;
    wire[2:0] n908_o;
    wire[1:0] n909_o;
    wire[2:0] compressor_bh6_30_n910;
    wire[2:0] compressor_bh6_30_r;
    wire n913_o;
    wire n914_o;
    wire n915_o;
    wire[1:0] n916_o;
    wire[2:0] n917_o;
    wire[1:0] n918_o;
    wire[2:0] compressor_bh6_31_n919;
    wire[2:0] compressor_bh6_31_r;
    wire n922_o;
    wire n923_o;
    wire n924_o;
    wire[1:0] n925_o;
    wire[2:0] n926_o;
    wire[2:0] compressor_bh6_32_n927;
    wire[2:0] compressor_bh6_32_r;
    wire n930_o;
    wire n931_o;
    wire n932_o;
    wire[1:0] n933_o;
    wire[2:0] n934_o;
    wire[2:0] compressor_bh6_33_n935;
    wire[2:0] compressor_bh6_33_r;
    wire n938_o;
    wire n939_o;
    wire n940_o;
    wire[1:0] n941_o;
    wire[2:0] n942_o;
    wire[1:0] compressor_bh6_34_n943;
    wire[1:0] compressor_bh6_34_r;
    wire n946_o;
    wire n947_o;
    wire[1:0] n948_o;
    wire[2:0] n949_o;
    wire[1:0] n950_o;
    wire[2:0] compressor_bh6_35_n951;
    wire[2:0] compressor_bh6_35_r;
    wire n954_o;
    wire n955_o;
    wire n956_o;
    wire[1:0] n957_o;
    wire[2:0] n958_o;
    wire[1:0] n959_o;
    wire[2:0] compressor_bh6_36_n960;
    wire[2:0] compressor_bh6_36_r;
    wire n963_o;
    wire n964_o;
    wire n965_o;
    wire[1:0] n966_o;
    wire[2:0] n967_o;
    wire[1:0] n968_o;
    wire[2:0] compressor_bh6_37_n969;
    wire[2:0] compressor_bh6_37_r;
    wire n972_o;
    wire n973_o;
    wire n974_o;
    wire[1:0] n975_o;
    wire[2:0] n976_o;
    wire[1:0] n977_o;
    wire[2:0] compressor_bh6_38_n978;
    wire[2:0] compressor_bh6_38_r;
    wire n981_o;
    wire n982_o;
    wire n983_o;
    wire[1:0] n984_o;
    wire[2:0] n985_o;
    wire[1:0] n986_o;
    wire[2:0] compressor_bh6_39_n987;
    wire[2:0] compressor_bh6_39_r;
    wire n990_o;
    wire n991_o;
    wire n992_o;
    wire[1:0] n993_o;
    wire[2:0] n994_o;
    wire[1:0] n995_o;
    wire[2:0] compressor_bh6_40_n996;
    wire[2:0] compressor_bh6_40_r;
    wire n999_o;
    wire n1000_o;
    wire n1001_o;
    wire[1:0] n1002_o;
    wire[2:0] n1003_o;
    wire[1:0] n1004_o;
    wire[2:0] compressor_bh6_41_n1005;
    wire[2:0] compressor_bh6_41_r;
    wire n1008_o;
    wire n1009_o;
    wire n1010_o;
    wire[1:0] n1011_o;
    wire[2:0] n1012_o;
    wire[1:0] n1013_o;
    wire[2:0] compressor_bh6_42_n1014;
    wire[2:0] compressor_bh6_42_r;
    wire n1017_o;
    wire n1018_o;
    wire n1019_o;
    wire[1:0] n1020_o;
    wire[2:0] n1021_o;
    wire[1:0] n1022_o;
    wire[2:0] compressor_bh6_43_n1023;
    wire[2:0] compressor_bh6_43_r;
    wire n1026_o;
    wire n1027_o;
    wire n1028_o;
    wire[1:0] n1029_o;
    wire[2:0] n1030_o;
    wire[2:0] compressor_bh6_44_n1031;
    wire[2:0] compressor_bh6_44_r;
    wire n1034_o;
    wire n1035_o;
    wire n1036_o;
    wire[1:0] n1037_o;
    wire[2:0] n1038_o;
    wire[1:0] n1039_o;
    wire[2:0] compressor_bh6_45_n1040;
    wire[2:0] compressor_bh6_45_r;
    wire n1043_o;
    wire n1044_o;
    wire n1045_o;
    wire[1:0] n1046_o;
    wire[2:0] n1047_o;
    wire[1:0] n1048_o;
    wire[2:0] compressor_bh6_46_n1049;
    wire[2:0] compressor_bh6_46_r;
    wire n1052_o;
    wire n1053_o;
    wire n1054_o;
    wire[1:0] n1055_o;
    wire[2:0] n1056_o;
    wire[2:0] compressor_bh6_47_n1057;
    wire[2:0] compressor_bh6_47_r;
    wire n1060_o;
    wire n1061_o;
    wire n1062_o;
    wire[1:0] n1063_o;
    wire[2:0] n1064_o;
    wire[1:0] n1065_o;
    wire[2:0] compressor_bh6_48_n1066;
    wire[2:0] compressor_bh6_48_r;
    wire n1069_o;
    wire n1070_o;
    wire n1071_o;
    wire[1:0] n1072_o;
    wire[2:0] n1073_o;
    wire[1:0] n1074_o;
    wire[2:0] compressor_bh6_49_n1075;
    wire[2:0] compressor_bh6_49_r;
    wire n1078_o;
    wire n1079_o;
    wire n1080_o;
    wire[1:0] n1081_o;
    wire[2:0] n1082_o;
    wire[2:0] compressor_bh6_50_n1083;
    wire[2:0] compressor_bh6_50_r;
    wire n1086_o;
    wire n1087_o;
    wire n1088_o;
    wire[1:0] n1090_o;
    wire[2:0] n1091_o;
    wire[3:0] n1092_o;
    wire[4:0] n1093_o;
    wire[5:0] n1094_o;
    wire[6:0] n1095_o;
    wire[7:0] n1096_o;
    wire[8:0] n1097_o;
    wire[9:0] n1098_o;
    wire[10:0] n1099_o;
    wire[11:0] n1100_o;
    wire[12:0] n1101_o;
    wire[13:0] n1102_o;
    wire[14:0] n1103_o;
    wire[15:0] n1104_o;
    wire[16:0] n1105_o;
    wire[17:0] n1106_o;
    wire[18:0] n1107_o;
    wire[19:0] n1108_o;
    wire[20:0] n1109_o;
    wire[21:0] n1110_o;
    wire[22:0] n1111_o;
    wire[23:0] n1112_o;
    wire[24:0] n1113_o;
    wire[25:0] n1114_o;
    wire[26:0] n1115_o;
    wire[27:0] n1116_o;
    wire[28:0] n1117_o;
    wire[29:0] n1118_o;
    wire[30:0] n1119_o;
    wire[31:0] n1120_o;
    wire[32:0] n1121_o;
    wire[33:0] n1122_o;
    wire[34:0] n1123_o;
    wire[35:0] n1124_o;
    wire[36:0] n1125_o;
    wire[37:0] n1126_o;
    wire[38:0] n1127_o;
    wire[39:0] n1128_o;
    wire[40:0] n1129_o;
    wire[41:0] n1130_o;
    wire[42:0] n1131_o;
    wire[43:0] n1132_o;
    wire[44:0] n1133_o;
    wire[45:0] n1134_o;
    wire[46:0] n1135_o;
    wire[47:0] n1136_o;
    wire[48:0] n1137_o;
    wire[49:0] n1138_o;
    wire[50:0] n1139_o;
    wire[51:0] n1140_o;
    wire[52:0] n1141_o;
    wire[53:0] n1142_o;
    wire[54:0] n1143_o;
    wire[55:0] n1144_o;
    wire[56:0] n1145_o;
    wire[57:0] n1146_o;
    wire[58:0] n1147_o;
    wire[59:0] n1148_o;
    wire[60:0] n1149_o;
    wire[61:0] n1150_o;
    wire[62:0] n1151_o;
    wire[63:0] n1152_o;
    wire[64:0] n1153_o;
    wire[65:0] n1154_o;
    wire[17:0] n1156_o;
    wire[18:0] n1158_o;
    wire[19:0] n1160_o;
    wire[20:0] n1162_o;
    wire[21:0] n1164_o;
    wire[22:0] n1166_o;
    wire[23:0] n1167_o;
    wire[24:0] n1169_o;
    wire[25:0] n1171_o;
    wire[26:0] n1173_o;
    wire[27:0] n1175_o;
    wire[28:0] n1177_o;
    wire[29:0] n1179_o;
    wire[30:0] n1181_o;
    wire[31:0] n1183_o;
    wire[32:0] n1184_o;
    wire[33:0] n1186_o;
    wire[34:0] n1188_o;
    wire[35:0] n1190_o;
    wire[36:0] n1192_o;
    wire[37:0] n1193_o;
    wire[38:0] n1194_o;
    wire[39:0] n1195_o;
    wire[40:0] n1196_o;
    wire[41:0] n1197_o;
    wire[42:0] n1198_o;
    wire[43:0] n1199_o;
    wire[44:0] n1200_o;
    wire[45:0] n1201_o;
    wire[46:0] n1203_o;
    wire[47:0] n1204_o;
    wire[48:0] n1205_o;
    wire[49:0] n1206_o;
    wire[50:0] n1207_o;
    wire[51:0] n1208_o;
    wire[52:0] n1209_o;
    wire[53:0] n1210_o;
    wire[54:0] n1211_o;
    wire[55:0] n1212_o;
    wire[56:0] n1213_o;
    wire[57:0] n1214_o;
    wire[58:0] n1216_o;
    wire[59:0] n1217_o;
    wire[60:0] n1218_o;
    wire[61:0] n1219_o;
    wire[62:0] n1220_o;
    wire[63:0] n1221_o;
    wire[64:0] n1222_o;
    wire[65:0] n1223_o;
    wire[65:0] adder_final6_0_n1225;
    wire[65:0] adder_final6_0_r;
    wire[82:0] n1228_o;
    wire[81:0] n1229_o;
    assign r = n1229_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:400:8  */
    assign xx_m5 = x; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:401:8  */
    assign yy_m5 = y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:402:8  */
    assign xp_m5b7 = n336_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:403:8  */
    assign yp_m5b7 = n339_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:404:8  */
    assign x_m5b7_0 = n340_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:405:8  */
    assign x_m5b7_1 = n341_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:406:8  */
    assign x_m5b7_2 = n342_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:407:8  */
    assign y_m5b7_0 = n343_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:408:8  */
    assign y_m5b7_1 = n344_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:409:8  */
    assign y_m5b7_2 = n345_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:410:8  */
    assign y0x0_7_m5 = n346_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:411:8  */
    assign pp7x0y0_m5 = pp_m5_7x0y0_tbl_n347; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:412:8  */
    assign heap_bh6_w34_0 = n350_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:413:8  */
    assign heap_bh6_w35_0 = n351_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:414:8  */
    assign y0x1_7_m5 = n352_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:415:8  */
    assign pp7x1y0_m5 = pp_m5_7x1y0_tbl_n353; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:416:8  */
    assign heap_bh6_w35_1 = n356_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:417:8  */
    assign heap_bh6_w36_0 = n357_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:418:8  */
    assign heap_bh6_w37_0 = n358_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:419:8  */
    assign heap_bh6_w38_0 = n359_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:420:8  */
    assign y0x2_7_m5 = n360_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:421:8  */
    assign pp7x2y0_m5 = pp_m5_7x2y0_tbl_n361; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:422:8  */
    assign heap_bh6_w38_1 = n364_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:423:8  */
    assign heap_bh6_w39_0 = n365_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:424:8  */
    assign heap_bh6_w40_0 = n366_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:425:8  */
    assign heap_bh6_w41_0 = n367_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:426:8  */
    assign y1x0_7_m5 = n368_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:427:8  */
    assign pp7x0y1_m5 = pp_m5_7x0y1_tbl_n369; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:428:8  */
    assign heap_bh6_w35_2 = n372_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:429:8  */
    assign heap_bh6_w36_1 = n373_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:430:8  */
    assign heap_bh6_w37_1 = n374_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:431:8  */
    assign heap_bh6_w38_2 = n375_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:432:8  */
    assign y1x1_7_m5 = n376_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:433:8  */
    assign pp7x1y1_m5 = pp_m5_7x1y1_tbl_n377; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:434:8  */
    assign heap_bh6_w36_2 = n380_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:435:8  */
    assign heap_bh6_w37_2 = n381_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:436:8  */
    assign heap_bh6_w38_3 = n382_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:437:8  */
    assign heap_bh6_w39_1 = n383_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:438:8  */
    assign heap_bh6_w40_1 = n384_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:439:8  */
    assign heap_bh6_w41_1 = n385_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:440:8  */
    assign y1x2_7_m5 = n386_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:441:8  */
    assign pp7x2y1_m5 = pp_m5_7x2y1_tbl_n387; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:442:8  */
    assign heap_bh6_w39_2 = n390_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:443:8  */
    assign heap_bh6_w40_2 = n391_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:444:8  */
    assign heap_bh6_w41_2 = n392_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:445:8  */
    assign heap_bh6_w42_0 = n393_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:446:8  */
    assign heap_bh6_w43_0 = n394_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:447:8  */
    assign heap_bh6_w44_0 = n395_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:448:8  */
    assign y2x0_7_m5 = n396_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:449:8  */
    assign pp7x0y2_m5 = pp_m5_7x0y2_tbl_n397; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:450:8  */
    assign heap_bh6_w38_4 = n400_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:451:8  */
    assign heap_bh6_w39_3 = n401_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:452:8  */
    assign heap_bh6_w40_3 = n402_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:453:8  */
    assign heap_bh6_w41_3 = n403_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:454:8  */
    assign y2x1_7_m5 = n404_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:455:8  */
    assign pp7x1y2_m5 = pp_m5_7x1y2_tbl_n405; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:456:8  */
    assign heap_bh6_w39_4 = n408_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:457:8  */
    assign heap_bh6_w40_4 = n409_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:458:8  */
    assign heap_bh6_w41_4 = n410_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:459:8  */
    assign heap_bh6_w42_1 = n411_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:460:8  */
    assign heap_bh6_w43_1 = n412_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:461:8  */
    assign heap_bh6_w44_1 = n413_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:462:8  */
    assign y2x2_7_m5 = n414_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:463:8  */
    assign pp7x2y2_m5 = pp_m5_7x2y2_tbl_n415; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:464:8  */
    assign heap_bh6_w42_2 = n418_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:465:8  */
    assign heap_bh6_w43_2 = n419_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:466:8  */
    assign heap_bh6_w44_2 = n420_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:467:8  */
    assign heap_bh6_w45_0 = n421_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:468:8  */
    assign heap_bh6_w46_0 = n422_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:469:8  */
    assign heap_bh6_w47_0 = n423_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:470:8  */
    assign dsp_bh6_ch0_0 = n432_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:471:8  */
    assign heap_bh6_w40_5 = n433_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:472:8  */
    assign heap_bh6_w39_5 = n434_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:473:8  */
    assign heap_bh6_w38_5 = n435_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:474:8  */
    assign heap_bh6_w37_3 = n436_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:475:8  */
    assign heap_bh6_w36_3 = n437_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:476:8  */
    assign heap_bh6_w35_3 = n438_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:477:8  */
    assign heap_bh6_w34_1 = n439_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:478:8  */
    assign heap_bh6_w33_0 = n440_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:478:24  */
    assign heap_bh6_w33_0_d1 = n228_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:479:8  */
    assign heap_bh6_w32_0 = n441_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:480:8  */
    assign heap_bh6_w31_0 = n442_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:480:24  */
    assign heap_bh6_w31_0_d1 = n229_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:481:8  */
    assign heap_bh6_w30_0 = n443_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:482:8  */
    assign heap_bh6_w29_0 = n444_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:482:24  */
    assign heap_bh6_w29_0_d1 = n230_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:483:8  */
    assign heap_bh6_w28_0 = n445_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:484:8  */
    assign heap_bh6_w27_0 = n446_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:484:24  */
    assign heap_bh6_w27_0_d1 = n231_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:485:8  */
    assign heap_bh6_w26_0 = n447_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:486:8  */
    assign heap_bh6_w25_0 = n448_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:486:24  */
    assign heap_bh6_w25_0_d1 = n232_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:487:8  */
    assign heap_bh6_w24_0 = n449_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:488:8  */
    assign heap_bh6_w23_0 = n450_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:488:24  */
    assign heap_bh6_w23_0_d1 = n233_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:489:8  */
    assign heap_bh6_w22_0 = n451_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:489:24  */
    assign heap_bh6_w22_0_d1 = n234_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:490:8  */
    assign heap_bh6_w21_0 = n452_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:490:24  */
    assign heap_bh6_w21_0_d1 = n235_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:491:8  */
    assign heap_bh6_w20_0 = n453_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:491:24  */
    assign heap_bh6_w20_0_d1 = n236_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:492:8  */
    assign heap_bh6_w19_0 = n454_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:492:24  */
    assign heap_bh6_w19_0_d1 = n237_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:493:8  */
    assign heap_bh6_w18_0 = n455_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:493:24  */
    assign heap_bh6_w18_0_d1 = n238_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:494:8  */
    assign heap_bh6_w17_0 = n456_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:494:24  */
    assign heap_bh6_w17_0_d1 = n239_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:495:8  */
    assign heap_bh6_w16_0 = n457_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:496:8  */
    assign heap_bh6_w15_0 = n458_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:497:8  */
    assign heap_bh6_w14_0 = n459_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:498:8  */
    assign heap_bh6_w13_0 = n460_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:499:8  */
    assign heap_bh6_w12_0 = n461_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:500:8  */
    assign heap_bh6_w11_0 = n462_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:501:8  */
    assign heap_bh6_w10_0 = n463_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:502:8  */
    assign heap_bh6_w9_0 = n464_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:503:8  */
    assign heap_bh6_w8_0 = n465_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:504:8  */
    assign heap_bh6_w7_0 = n466_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:505:8  */
    assign heap_bh6_w6_0 = n467_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:506:8  */
    assign heap_bh6_w5_0 = n468_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:507:8  */
    assign heap_bh6_w4_0 = n469_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:508:8  */
    assign heap_bh6_w3_0 = n470_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:509:8  */
    assign heap_bh6_w2_0 = n471_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:510:8  */
    assign heap_bh6_w1_0 = n472_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:511:8  */
    assign heap_bh6_w0_0 = n473_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:512:8  */
    assign dsp_bh6_ch1_0 = n482_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:513:8  */
    assign heap_bh6_w64_0 = n483_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:513:24  */
    assign heap_bh6_w64_0_d1 = n240_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:514:8  */
    assign heap_bh6_w63_0 = n484_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:514:24  */
    assign heap_bh6_w63_0_d1 = n241_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:515:8  */
    assign heap_bh6_w62_0 = n485_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:516:8  */
    assign heap_bh6_w61_0 = n486_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:517:8  */
    assign heap_bh6_w60_0 = n487_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:518:8  */
    assign heap_bh6_w59_0 = n488_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:519:8  */
    assign heap_bh6_w58_0 = n489_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:520:8  */
    assign heap_bh6_w57_0 = n490_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:521:8  */
    assign heap_bh6_w56_0 = n491_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:521:24  */
    assign heap_bh6_w56_0_d1 = n242_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:522:8  */
    assign heap_bh6_w55_0 = n492_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:523:8  */
    assign heap_bh6_w54_0 = n493_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:523:24  */
    assign heap_bh6_w54_0_d1 = n243_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:524:8  */
    assign heap_bh6_w53_0 = n494_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:525:8  */
    assign heap_bh6_w52_0 = n495_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:525:24  */
    assign heap_bh6_w52_0_d1 = n244_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:526:8  */
    assign heap_bh6_w51_0 = n496_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:527:8  */
    assign heap_bh6_w50_0 = n497_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:528:8  */
    assign heap_bh6_w49_0 = n498_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:529:8  */
    assign heap_bh6_w48_0 = n499_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:530:8  */
    assign heap_bh6_w47_1 = n500_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:531:8  */
    assign heap_bh6_w46_1 = n501_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:532:8  */
    assign heap_bh6_w45_1 = n502_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:533:8  */
    assign heap_bh6_w44_3 = n503_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:534:8  */
    assign heap_bh6_w43_3 = n504_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:535:8  */
    assign heap_bh6_w42_3 = n505_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:536:8  */
    assign heap_bh6_w41_5 = n506_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:537:8  */
    assign heap_bh6_w40_6 = n507_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:538:8  */
    assign heap_bh6_w39_6 = n508_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:539:8  */
    assign heap_bh6_w38_6 = n509_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:540:8  */
    assign heap_bh6_w37_4 = n510_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:541:8  */
    assign heap_bh6_w36_4 = n511_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:542:8  */
    assign heap_bh6_w35_4 = n512_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:543:8  */
    assign heap_bh6_w34_2 = n513_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:544:8  */
    assign heap_bh6_w33_1 = n514_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:545:8  */
    assign heap_bh6_w32_1 = n515_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:546:8  */
    assign heap_bh6_w31_1 = n516_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:547:8  */
    assign heap_bh6_w30_1 = n517_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:548:8  */
    assign heap_bh6_w29_1 = n518_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:549:8  */
    assign heap_bh6_w28_1 = n519_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:550:8  */
    assign heap_bh6_w27_1 = n520_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:551:8  */
    assign heap_bh6_w26_1 = n521_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:552:8  */
    assign heap_bh6_w25_1 = n522_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:553:8  */
    assign heap_bh6_w24_1 = n523_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:554:8  */
    assign dsp_bh6_ch2_0 = n532_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:555:8  */
    assign heap_bh6_w81_0 = n533_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:555:24  */
    assign heap_bh6_w81_0_d1 = n245_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:556:8  */
    assign heap_bh6_w80_0 = n534_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:556:24  */
    assign heap_bh6_w80_0_d1 = n246_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:557:8  */
    assign heap_bh6_w79_0 = n535_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:557:24  */
    assign heap_bh6_w79_0_d1 = n247_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:558:8  */
    assign heap_bh6_w78_0 = n536_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:558:24  */
    assign heap_bh6_w78_0_d1 = n248_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:559:8  */
    assign heap_bh6_w77_0 = n537_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:559:24  */
    assign heap_bh6_w77_0_d1 = n249_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:560:8  */
    assign heap_bh6_w76_0 = n538_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:560:24  */
    assign heap_bh6_w76_0_d1 = n250_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:561:8  */
    assign heap_bh6_w75_0 = n539_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:561:24  */
    assign heap_bh6_w75_0_d1 = n251_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:562:8  */
    assign heap_bh6_w74_0 = n540_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:562:24  */
    assign heap_bh6_w74_0_d1 = n252_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:563:8  */
    assign heap_bh6_w73_0 = n541_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:563:24  */
    assign heap_bh6_w73_0_d1 = n253_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:564:8  */
    assign heap_bh6_w72_0 = n542_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:564:24  */
    assign heap_bh6_w72_0_d1 = n254_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:565:8  */
    assign heap_bh6_w71_0 = n543_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:565:24  */
    assign heap_bh6_w71_0_d1 = n255_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:566:8  */
    assign heap_bh6_w70_0 = n544_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:566:24  */
    assign heap_bh6_w70_0_d1 = n256_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:567:8  */
    assign heap_bh6_w69_0 = n545_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:567:24  */
    assign heap_bh6_w69_0_d1 = n257_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:568:8  */
    assign heap_bh6_w68_0 = n546_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:568:24  */
    assign heap_bh6_w68_0_d1 = n258_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:569:8  */
    assign heap_bh6_w67_0 = n547_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:569:24  */
    assign heap_bh6_w67_0_d1 = n259_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:570:8  */
    assign heap_bh6_w66_0 = n548_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:570:24  */
    assign heap_bh6_w66_0_d1 = n260_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:571:8  */
    assign heap_bh6_w65_0 = n549_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:571:24  */
    assign heap_bh6_w65_0_d1 = n261_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:572:8  */
    assign heap_bh6_w64_1 = n550_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:572:24  */
    assign heap_bh6_w64_1_d1 = n262_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:573:8  */
    assign heap_bh6_w63_1 = n551_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:573:24  */
    assign heap_bh6_w63_1_d1 = n263_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:574:8  */
    assign heap_bh6_w62_1 = n552_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:575:8  */
    assign heap_bh6_w61_1 = n553_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:576:8  */
    assign heap_bh6_w60_1 = n554_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:577:8  */
    assign heap_bh6_w59_1 = n555_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:578:8  */
    assign heap_bh6_w58_1 = n556_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:579:8  */
    assign heap_bh6_w57_1 = n557_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:580:8  */
    assign heap_bh6_w56_1 = n558_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:581:8  */
    assign heap_bh6_w55_1 = n559_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:582:8  */
    assign heap_bh6_w54_1 = n560_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:583:8  */
    assign heap_bh6_w53_1 = n561_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:584:8  */
    assign heap_bh6_w52_1 = n562_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:585:8  */
    assign heap_bh6_w51_1 = n563_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:586:8  */
    assign heap_bh6_w50_1 = n564_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:587:8  */
    assign heap_bh6_w49_1 = n565_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:588:8  */
    assign heap_bh6_w48_1 = n566_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:589:8  */
    assign heap_bh6_w47_2 = n567_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:590:8  */
    assign heap_bh6_w46_2 = n568_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:591:8  */
    assign heap_bh6_w45_2 = n569_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:592:8  */
    assign heap_bh6_w44_4 = n570_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:593:8  */
    assign heap_bh6_w43_4 = n571_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:594:8  */
    assign heap_bh6_w42_4 = n572_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:595:8  */
    assign heap_bh6_w41_6 = n573_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:596:8  */
    assign dsp_bh6_ch3_0 = n582_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:597:8  */
    assign heap_bh6_w57_2 = n583_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:598:8  */
    assign heap_bh6_w56_2 = n584_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:599:8  */
    assign heap_bh6_w55_2 = n585_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:600:8  */
    assign heap_bh6_w54_2 = n586_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:601:8  */
    assign heap_bh6_w53_2 = n587_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:602:8  */
    assign heap_bh6_w52_2 = n588_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:603:8  */
    assign heap_bh6_w51_2 = n589_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:604:8  */
    assign heap_bh6_w50_2 = n590_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:605:8  */
    assign heap_bh6_w49_2 = n591_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:606:8  */
    assign heap_bh6_w48_2 = n592_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:607:8  */
    assign heap_bh6_w47_3 = n593_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:608:8  */
    assign heap_bh6_w46_3 = n594_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:609:8  */
    assign heap_bh6_w45_3 = n595_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:610:8  */
    assign heap_bh6_w44_5 = n596_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:611:8  */
    assign heap_bh6_w43_5 = n597_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:612:8  */
    assign heap_bh6_w42_5 = n598_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:613:8  */
    assign heap_bh6_w41_7 = n599_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:614:8  */
    assign heap_bh6_w40_7 = n600_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:615:8  */
    assign heap_bh6_w39_7 = n601_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:616:8  */
    assign heap_bh6_w38_7 = n602_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:617:8  */
    assign heap_bh6_w37_5 = n603_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:618:8  */
    assign heap_bh6_w36_5 = n604_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:619:8  */
    assign heap_bh6_w35_5 = n605_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:620:8  */
    assign heap_bh6_w34_3 = n606_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:621:8  */
    assign heap_bh6_w33_2 = n607_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:622:8  */
    assign heap_bh6_w32_2 = n608_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:623:8  */
    assign heap_bh6_w31_2 = n609_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:624:8  */
    assign heap_bh6_w30_2 = n610_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:625:8  */
    assign heap_bh6_w29_2 = n611_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:626:8  */
    assign heap_bh6_w28_2 = n612_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:627:8  */
    assign heap_bh6_w27_2 = n613_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:628:8  */
    assign heap_bh6_w26_2 = n614_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:629:8  */
    assign heap_bh6_w25_2 = n615_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:630:8  */
    assign heap_bh6_w24_2 = n616_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:631:8  */
    assign heap_bh6_w23_1 = n617_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:631:24  */
    assign heap_bh6_w23_1_d1 = n264_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:632:8  */
    assign heap_bh6_w22_1 = n618_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:632:24  */
    assign heap_bh6_w22_1_d1 = n265_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:633:8  */
    assign heap_bh6_w21_1 = n619_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:633:24  */
    assign heap_bh6_w21_1_d1 = n266_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:634:8  */
    assign heap_bh6_w20_1 = n620_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:634:24  */
    assign heap_bh6_w20_1_d1 = n267_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:635:8  */
    assign heap_bh6_w19_1 = n621_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:635:24  */
    assign heap_bh6_w19_1_d1 = n268_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:636:8  */
    assign heap_bh6_w18_1 = n622_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:636:24  */
    assign heap_bh6_w18_1_d1 = n269_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:637:8  */
    assign heap_bh6_w17_1 = n623_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:637:24  */
    assign heap_bh6_w17_1_d1 = n270_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:638:8  */
    assign tempr_bh6_0 = n639_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:638:21  */
    assign tempr_bh6_0_d1 = n271_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:639:8  */
    assign compressorin_bh6_0_0 = n642_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:640:8  */
    assign compressorin_bh6_0_1 = heap_bh6_w39_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:641:8  */
    assign compressorout_bh6_0_0 = compressor_bh6_0_n643; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:642:8  */
    assign heap_bh6_w38_8 = n646_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:643:8  */
    assign heap_bh6_w39_8 = n647_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:644:8  */
    assign heap_bh6_w40_8 = n648_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:645:8  */
    assign compressorin_bh6_1_2 = n651_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:646:8  */
    assign compressorin_bh6_1_3 = heap_bh6_w40_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:647:8  */
    assign compressorout_bh6_1_1 = compressor_bh6_1_n652; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:648:8  */
    assign heap_bh6_w39_9 = n655_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:649:8  */
    assign heap_bh6_w40_9 = n656_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:650:8  */
    assign heap_bh6_w41_8 = n657_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:651:8  */
    assign compressorin_bh6_2_4 = n660_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:652:8  */
    assign compressorin_bh6_2_5 = heap_bh6_w41_4; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:653:8  */
    assign compressorout_bh6_2_2 = compressor_bh6_2_n661; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:654:8  */
    assign heap_bh6_w40_10 = n664_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:655:8  */
    assign heap_bh6_w41_9 = n665_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:656:8  */
    assign heap_bh6_w42_6 = n666_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:657:8  */
    assign compressorin_bh6_3_6 = n669_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:658:8  */
    assign compressorin_bh6_3_7 = heap_bh6_w42_2; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:659:8  */
    assign compressorout_bh6_3_3 = compressor_bh6_3_n670; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:660:8  */
    assign heap_bh6_w41_10 = n673_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:661:8  */
    assign heap_bh6_w42_7 = n674_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:662:8  */
    assign heap_bh6_w43_6 = n675_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:663:8  */
    assign compressorin_bh6_4_8 = n677_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:664:8  */
    assign compressorin_bh6_4_9 = n678_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:665:8  */
    assign compressorout_bh6_4_4 = compressor_bh6_4_n679; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:666:8  */
    assign heap_bh6_w35_6 = n682_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:667:8  */
    assign heap_bh6_w36_6 = n683_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:668:8  */
    assign heap_bh6_w37_6 = n684_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:669:8  */
    assign compressorin_bh6_5_10 = n686_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:670:8  */
    assign compressorin_bh6_5_11 = n687_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:671:8  */
    assign compressorout_bh6_5_5 = compressor_bh6_5_n688; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:672:8  */
    assign heap_bh6_w43_7 = n691_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:673:8  */
    assign heap_bh6_w44_6 = n692_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:674:8  */
    assign heap_bh6_w45_4 = n693_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:675:8  */
    assign compressorin_bh6_6_12 = n695_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:676:8  */
    assign compressorin_bh6_6_13 = heap_bh6_w38_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:677:8  */
    assign compressorout_bh6_6_6 = compressor_bh6_6_n696; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:678:8  */
    assign heap_bh6_w37_7 = n699_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:679:8  */
    assign heap_bh6_w38_9 = n700_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:680:8  */
    assign heap_bh6_w39_10 = n701_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:681:8  */
    assign compressorin_bh6_7_14 = n704_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:682:8  */
    assign compressorin_bh6_7_15 = heap_bh6_w43_7; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:683:8  */
    assign compressorout_bh6_7_7 = compressor_bh6_7_n705; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:684:8  */
    assign heap_bh6_w42_8 = n708_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:685:8  */
    assign heap_bh6_w43_8 = n709_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:686:8  */
    assign heap_bh6_w44_7 = n710_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:687:8  */
    assign compressorin_bh6_8_16 = n712_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:688:8  */
    assign compressorin_bh6_8_17 = n713_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:689:8  */
    assign compressorout_bh6_8_8 = compressor_bh6_8_n714; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:690:8  */
    assign heap_bh6_w39_11 = n717_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:691:8  */
    assign heap_bh6_w40_11 = n718_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:692:8  */
    assign heap_bh6_w41_11 = n719_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:693:8  */
    assign compressorin_bh6_9_18 = n721_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:694:8  */
    assign compressorout_bh6_9_9 = compressor_bh6_9_n722; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:695:8  */
    assign heap_bh6_w41_12 = n725_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:696:8  */
    assign heap_bh6_w42_9 = n726_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:697:8  */
    assign compressorin_bh6_10_19 = n728_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:698:8  */
    assign compressorin_bh6_10_20 = n729_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:699:8  */
    assign compressorout_bh6_10_10 = compressor_bh6_10_n730; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:700:8  */
    assign heap_bh6_w44_8 = n733_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:701:8  */
    assign heap_bh6_w45_5 = n734_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:702:8  */
    assign heap_bh6_w46_4 = n735_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:703:8  */
    assign compressorin_bh6_11_21 = n738_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:704:8  */
    assign compressorin_bh6_11_22 = heap_bh6_w35_6; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:705:8  */
    assign compressorout_bh6_11_11 = compressor_bh6_11_n739; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:706:8  */
    assign heap_bh6_w34_4 = n742_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:706:24  */
    assign heap_bh6_w34_4_d1 = n272_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:707:8  */
    assign heap_bh6_w35_7 = n743_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:707:24  */
    assign heap_bh6_w35_7_d1 = n273_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:708:8  */
    assign heap_bh6_w36_7 = n744_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:709:8  */
    assign compressorin_bh6_12_23 = n747_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:710:8  */
    assign compressorin_bh6_12_24 = heap_bh6_w37_7; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:711:8  */
    assign compressorout_bh6_12_12 = compressor_bh6_12_n748; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:712:8  */
    assign heap_bh6_w36_8 = n751_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:713:8  */
    assign heap_bh6_w37_8 = n752_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:713:24  */
    assign heap_bh6_w37_8_d1 = n274_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:714:8  */
    assign heap_bh6_w38_10 = n753_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:715:8  */
    assign compressorin_bh6_13_25 = n756_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:716:8  */
    assign compressorin_bh6_13_26 = heap_bh6_w38_9; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:717:8  */
    assign compressorout_bh6_13_13 = compressor_bh6_13_n757; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:718:8  */
    assign heap_bh6_w37_9 = n760_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:719:8  */
    assign heap_bh6_w38_11 = n761_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:720:8  */
    assign heap_bh6_w39_12 = n762_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:720:25  */
    assign heap_bh6_w39_12_d1 = n275_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:721:8  */
    assign compressorin_bh6_14_27 = n765_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:722:8  */
    assign compressorin_bh6_14_28 = heap_bh6_w39_11; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:723:8  */
    assign compressorout_bh6_14_14 = compressor_bh6_14_n766; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:724:8  */
    assign heap_bh6_w38_12 = n769_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:725:8  */
    assign heap_bh6_w39_13 = n770_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:726:8  */
    assign heap_bh6_w40_12 = n771_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:727:8  */
    assign compressorin_bh6_15_29 = n774_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:728:8  */
    assign compressorin_bh6_15_30 = heap_bh6_w41_12; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:729:8  */
    assign compressorout_bh6_15_15 = compressor_bh6_15_n775; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:730:8  */
    assign heap_bh6_w40_13 = n778_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:731:8  */
    assign heap_bh6_w41_13 = n779_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:731:25  */
    assign heap_bh6_w41_13_d1 = n276_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:732:8  */
    assign heap_bh6_w42_10 = n780_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:733:8  */
    assign compressorin_bh6_16_31 = n783_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:734:8  */
    assign compressorin_bh6_16_32 = heap_bh6_w42_9; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:735:8  */
    assign compressorout_bh6_16_16 = compressor_bh6_16_n784; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:736:8  */
    assign heap_bh6_w41_14 = n787_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:737:8  */
    assign heap_bh6_w42_11 = n788_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:738:8  */
    assign heap_bh6_w43_9 = n789_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:738:24  */
    assign heap_bh6_w43_9_d1 = n277_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:739:8  */
    assign compressorin_bh6_17_33 = n792_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:740:8  */
    assign compressorin_bh6_17_34 = heap_bh6_w43_6; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:741:8  */
    assign compressorout_bh6_17_17 = compressor_bh6_17_n793; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:742:8  */
    assign heap_bh6_w42_12 = n796_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:743:8  */
    assign heap_bh6_w43_10 = n797_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:744:8  */
    assign heap_bh6_w44_9 = n798_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:745:8  */
    assign compressorin_bh6_18_35 = n801_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:746:8  */
    assign compressorin_bh6_18_36 = heap_bh6_w44_8; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:747:8  */
    assign compressorout_bh6_18_18 = compressor_bh6_18_n802; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:748:8  */
    assign heap_bh6_w43_11 = n805_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:749:8  */
    assign heap_bh6_w44_10 = n806_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:750:8  */
    assign heap_bh6_w45_6 = n807_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:750:24  */
    assign heap_bh6_w45_6_d1 = n278_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:751:8  */
    assign compressorin_bh6_19_37 = n810_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:752:8  */
    assign compressorin_bh6_19_38 = heap_bh6_w46_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:753:8  */
    assign compressorout_bh6_19_19 = compressor_bh6_19_n811; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:754:8  */
    assign heap_bh6_w45_7 = n814_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:755:8  */
    assign heap_bh6_w46_5 = n815_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:756:8  */
    assign heap_bh6_w47_4 = n816_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:757:8  */
    assign compressorin_bh6_20_39 = n819_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:758:8  */
    assign compressorin_bh6_20_40 = heap_bh6_w47_0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:759:8  */
    assign compressorout_bh6_20_20 = compressor_bh6_20_n820; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:760:8  */
    assign heap_bh6_w46_6 = n823_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:761:8  */
    assign heap_bh6_w47_5 = n824_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:762:8  */
    assign heap_bh6_w48_3 = n825_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:762:24  */
    assign heap_bh6_w48_3_d1 = n279_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:763:8  */
    assign compressorin_bh6_21_41 = n827_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:764:8  */
    assign compressorin_bh6_21_42 = n828_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:765:8  */
    assign compressorout_bh6_21_21 = compressor_bh6_21_n829; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:766:8  */
    assign heap_bh6_w24_3 = n832_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:766:24  */
    assign heap_bh6_w24_3_d1 = n280_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:767:8  */
    assign heap_bh6_w25_3 = n833_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:767:24  */
    assign heap_bh6_w25_3_d1 = n281_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:768:8  */
    assign heap_bh6_w26_3 = n834_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:768:24  */
    assign heap_bh6_w26_3_d1 = n282_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:769:8  */
    assign compressorin_bh6_22_43 = n836_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:770:8  */
    assign compressorin_bh6_22_44 = n837_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:771:8  */
    assign compressorout_bh6_22_22 = compressor_bh6_22_n838; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:772:8  */
    assign heap_bh6_w26_4 = n841_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:772:24  */
    assign heap_bh6_w26_4_d1 = n283_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:773:8  */
    assign heap_bh6_w27_3 = n842_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:773:24  */
    assign heap_bh6_w27_3_d1 = n284_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:774:8  */
    assign heap_bh6_w28_3 = n843_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:774:24  */
    assign heap_bh6_w28_3_d1 = n285_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:775:8  */
    assign compressorin_bh6_23_45 = n845_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:776:8  */
    assign compressorin_bh6_23_46 = n846_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:777:8  */
    assign compressorout_bh6_23_23 = compressor_bh6_23_n847; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:778:8  */
    assign heap_bh6_w28_4 = n850_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:778:24  */
    assign heap_bh6_w28_4_d1 = n286_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:779:8  */
    assign heap_bh6_w29_3 = n851_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:779:24  */
    assign heap_bh6_w29_3_d1 = n287_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:780:8  */
    assign heap_bh6_w30_3 = n852_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:780:24  */
    assign heap_bh6_w30_3_d1 = n288_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:781:8  */
    assign compressorin_bh6_24_47 = n854_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:782:8  */
    assign compressorin_bh6_24_48 = n855_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:783:8  */
    assign compressorout_bh6_24_24 = compressor_bh6_24_n856; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:784:8  */
    assign heap_bh6_w30_4 = n859_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:784:24  */
    assign heap_bh6_w30_4_d1 = n289_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:785:8  */
    assign heap_bh6_w31_3 = n860_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:785:24  */
    assign heap_bh6_w31_3_d1 = n290_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:786:8  */
    assign heap_bh6_w32_3 = n861_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:786:24  */
    assign heap_bh6_w32_3_d1 = n291_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:787:8  */
    assign compressorin_bh6_25_49 = n863_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:788:8  */
    assign compressorin_bh6_25_50 = n864_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:789:8  */
    assign compressorout_bh6_25_25 = compressor_bh6_25_n865; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:790:8  */
    assign heap_bh6_w32_4 = n868_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:790:24  */
    assign heap_bh6_w32_4_d1 = n292_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:791:8  */
    assign heap_bh6_w33_3 = n869_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:791:24  */
    assign heap_bh6_w33_3_d1 = n293_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:792:8  */
    assign heap_bh6_w34_5 = n870_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:792:24  */
    assign heap_bh6_w34_5_d1 = n294_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:793:8  */
    assign compressorin_bh6_26_51 = n872_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:794:8  */
    assign compressorin_bh6_26_52 = n873_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:795:8  */
    assign compressorout_bh6_26_26 = compressor_bh6_26_n874; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:796:8  */
    assign heap_bh6_w47_6 = n877_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:797:8  */
    assign heap_bh6_w48_4 = n878_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:798:8  */
    assign heap_bh6_w49_3 = n879_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:799:8  */
    assign compressorin_bh6_27_53 = n881_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:800:8  */
    assign compressorin_bh6_27_54 = n882_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:801:8  */
    assign compressorout_bh6_27_27 = compressor_bh6_27_n883; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:802:8  */
    assign heap_bh6_w49_4 = n886_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:803:8  */
    assign heap_bh6_w50_3 = n887_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:804:8  */
    assign heap_bh6_w51_3 = n888_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:804:24  */
    assign heap_bh6_w51_3_d1 = n295_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:805:8  */
    assign compressorin_bh6_28_55 = n890_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:806:8  */
    assign compressorin_bh6_28_56 = n891_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:807:8  */
    assign compressorout_bh6_28_28 = compressor_bh6_28_n892; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:808:8  */
    assign heap_bh6_w51_4 = n895_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:808:24  */
    assign heap_bh6_w51_4_d1 = n296_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:809:8  */
    assign heap_bh6_w52_3 = n896_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:809:24  */
    assign heap_bh6_w52_3_d1 = n297_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:810:8  */
    assign heap_bh6_w53_3 = n897_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:810:24  */
    assign heap_bh6_w53_3_d1 = n298_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:811:8  */
    assign compressorin_bh6_29_57 = n899_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:812:8  */
    assign compressorin_bh6_29_58 = n900_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:813:8  */
    assign compressorout_bh6_29_29 = compressor_bh6_29_n901; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:814:8  */
    assign heap_bh6_w53_4 = n904_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:814:24  */
    assign heap_bh6_w53_4_d1 = n299_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:815:8  */
    assign heap_bh6_w54_3 = n905_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:815:24  */
    assign heap_bh6_w54_3_d1 = n300_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:816:8  */
    assign heap_bh6_w55_3 = n906_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:816:24  */
    assign heap_bh6_w55_3_d1 = n301_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:817:8  */
    assign compressorin_bh6_30_59 = n908_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:818:8  */
    assign compressorin_bh6_30_60 = n909_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:819:8  */
    assign compressorout_bh6_30_30 = compressor_bh6_30_n910; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:820:8  */
    assign heap_bh6_w55_4 = n913_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:820:24  */
    assign heap_bh6_w55_4_d1 = n302_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:821:8  */
    assign heap_bh6_w56_3 = n914_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:821:24  */
    assign heap_bh6_w56_3_d1 = n303_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:822:8  */
    assign heap_bh6_w57_3 = n915_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:822:24  */
    assign heap_bh6_w57_3_d1 = n304_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:823:8  */
    assign compressorin_bh6_31_61 = n917_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:824:8  */
    assign compressorin_bh6_31_62 = n918_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:825:8  */
    assign compressorout_bh6_31_31 = compressor_bh6_31_n919; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:826:8  */
    assign heap_bh6_w57_4 = n922_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:826:24  */
    assign heap_bh6_w57_4_d1 = n305_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:827:8  */
    assign heap_bh6_w58_2 = n923_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:827:24  */
    assign heap_bh6_w58_2_d1 = n306_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:828:8  */
    assign heap_bh6_w59_2 = n924_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:829:8  */
    assign compressorin_bh6_32_63 = n926_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:830:8  */
    assign compressorin_bh6_32_64 = heap_bh6_w36_3; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:831:8  */
    assign compressorout_bh6_32_32 = compressor_bh6_32_n927; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:832:8  */
    assign heap_bh6_w35_8 = n930_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:832:24  */
    assign heap_bh6_w35_8_d1 = n307_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:833:8  */
    assign heap_bh6_w36_9 = n931_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:834:8  */
    assign heap_bh6_w37_10 = n932_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:835:8  */
    assign compressorin_bh6_33_65 = n934_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:836:8  */
    assign compressorin_bh6_33_66 = heap_bh6_w40_5; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:837:8  */
    assign compressorout_bh6_33_33 = compressor_bh6_33_n935; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:838:8  */
    assign heap_bh6_w39_14 = n938_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:839:8  */
    assign heap_bh6_w40_14 = n939_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:840:8  */
    assign heap_bh6_w41_15 = n940_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:841:8  */
    assign compressorin_bh6_34_67 = n942_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:842:8  */
    assign compressorout_bh6_34_34 = compressor_bh6_34_n943; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:843:8  */
    assign heap_bh6_w44_11 = n946_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:844:8  */
    assign heap_bh6_w45_8 = n947_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:845:8  */
    assign compressorin_bh6_35_68 = n949_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:846:8  */
    assign compressorin_bh6_35_69 = n950_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:847:8  */
    assign compressorout_bh6_35_35 = compressor_bh6_35_n951; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:848:8  */
    assign heap_bh6_w36_10 = n954_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:848:25  */
    assign heap_bh6_w36_10_d1 = n308_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:849:8  */
    assign heap_bh6_w37_11 = n955_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:849:25  */
    assign heap_bh6_w37_11_d1 = n309_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:850:8  */
    assign heap_bh6_w38_13 = n956_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:850:25  */
    assign heap_bh6_w38_13_d1 = n310_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:851:8  */
    assign compressorin_bh6_36_70 = n958_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:852:8  */
    assign compressorin_bh6_36_71 = n959_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:853:8  */
    assign compressorout_bh6_36_36 = compressor_bh6_36_n960; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:854:8  */
    assign heap_bh6_w38_14 = n963_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:854:25  */
    assign heap_bh6_w38_14_d1 = n311_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:855:8  */
    assign heap_bh6_w39_15 = n964_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:855:25  */
    assign heap_bh6_w39_15_d1 = n312_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:856:8  */
    assign heap_bh6_w40_15 = n965_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:856:25  */
    assign heap_bh6_w40_15_d1 = n313_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:857:8  */
    assign compressorin_bh6_37_72 = n967_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:858:8  */
    assign compressorin_bh6_37_73 = n968_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:859:8  */
    assign compressorout_bh6_37_37 = compressor_bh6_37_n969; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:860:8  */
    assign heap_bh6_w40_16 = n972_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:860:25  */
    assign heap_bh6_w40_16_d1 = n314_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:861:8  */
    assign heap_bh6_w41_16 = n973_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:861:25  */
    assign heap_bh6_w41_16_d1 = n315_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:862:8  */
    assign heap_bh6_w42_13 = n974_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:862:25  */
    assign heap_bh6_w42_13_d1 = n316_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:863:8  */
    assign compressorin_bh6_38_74 = n976_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:864:8  */
    assign compressorin_bh6_38_75 = n977_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:865:8  */
    assign compressorout_bh6_38_38 = compressor_bh6_38_n978; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:866:8  */
    assign heap_bh6_w42_14 = n981_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:866:25  */
    assign heap_bh6_w42_14_d1 = n317_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:867:8  */
    assign heap_bh6_w43_12 = n982_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:867:25  */
    assign heap_bh6_w43_12_d1 = n318_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:868:8  */
    assign heap_bh6_w44_12 = n983_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:868:25  */
    assign heap_bh6_w44_12_d1 = n319_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:869:8  */
    assign compressorin_bh6_39_76 = n985_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:870:8  */
    assign compressorin_bh6_39_77 = n986_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:871:8  */
    assign compressorout_bh6_39_39 = compressor_bh6_39_n987; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:872:8  */
    assign heap_bh6_w44_13 = n990_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:872:25  */
    assign heap_bh6_w44_13_d1 = n320_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:873:8  */
    assign heap_bh6_w45_9 = n991_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:873:24  */
    assign heap_bh6_w45_9_d1 = n321_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:874:8  */
    assign heap_bh6_w46_7 = n992_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:875:8  */
    assign compressorin_bh6_40_78 = n994_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:876:8  */
    assign compressorin_bh6_40_79 = n995_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:877:8  */
    assign compressorout_bh6_40_40 = compressor_bh6_40_n996; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:878:8  */
    assign heap_bh6_w47_7 = n999_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:879:8  */
    assign heap_bh6_w48_5 = n1000_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:879:24  */
    assign heap_bh6_w48_5_d1 = n322_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:880:8  */
    assign heap_bh6_w49_5 = n1001_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:881:8  */
    assign compressorin_bh6_41_80 = n1003_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:882:8  */
    assign compressorin_bh6_41_81 = n1004_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:883:8  */
    assign compressorout_bh6_41_41 = compressor_bh6_41_n1005; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:884:8  */
    assign heap_bh6_w59_3 = n1008_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:884:24  */
    assign heap_bh6_w59_3_d1 = n323_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:885:8  */
    assign heap_bh6_w60_2 = n1009_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:885:24  */
    assign heap_bh6_w60_2_d1 = n324_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:886:8  */
    assign heap_bh6_w61_2 = n1010_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:887:8  */
    assign compressorin_bh6_42_82 = n1012_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:888:8  */
    assign compressorin_bh6_42_83 = n1013_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:889:8  */
    assign compressorout_bh6_42_42 = compressor_bh6_42_n1014; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:890:8  */
    assign heap_bh6_w49_6 = n1017_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:890:24  */
    assign heap_bh6_w49_6_d1 = n325_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:891:8  */
    assign heap_bh6_w50_4 = n1018_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:891:24  */
    assign heap_bh6_w50_4_d1 = n326_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:892:8  */
    assign heap_bh6_w51_5 = n1019_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:892:24  */
    assign heap_bh6_w51_5_d1 = n327_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:893:8  */
    assign compressorin_bh6_43_84 = n1021_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:894:8  */
    assign compressorin_bh6_43_85 = n1022_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:895:8  */
    assign compressorout_bh6_43_43 = compressor_bh6_43_n1023; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:896:8  */
    assign heap_bh6_w61_3 = n1026_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:896:24  */
    assign heap_bh6_w61_3_d1 = n328_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:897:8  */
    assign heap_bh6_w62_2 = n1027_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:897:24  */
    assign heap_bh6_w62_2_d1 = n329_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:898:8  */
    assign heap_bh6_w63_2 = n1028_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:898:24  */
    assign heap_bh6_w63_2_d1 = n330_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:899:8  */
    assign compressorin_bh6_44_86 = n1030_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:900:8  */
    assign compressorin_bh6_44_87 = heap_bh6_w47_7; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:901:8  */
    assign compressorout_bh6_44_44 = compressor_bh6_44_n1031; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:902:8  */
    assign heap_bh6_w46_8 = n1034_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:902:24  */
    assign heap_bh6_w46_8_d1 = n331_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:903:8  */
    assign heap_bh6_w47_8 = n1035_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:903:24  */
    assign heap_bh6_w47_8_d1 = n332_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:904:8  */
    assign heap_bh6_w48_6 = n1036_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:904:24  */
    assign heap_bh6_w48_6_d1 = n333_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:905:8  */
    assign compressorin_bh6_45_88 = n1038_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:906:8  */
    assign compressorin_bh6_45_89 = n1039_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:907:8  */
    assign compressorout_bh6_45_45 = compressor_bh6_45_n1040; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:908:8  */
    assign heap_bh6_w51_6 = n1043_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:909:8  */
    assign heap_bh6_w52_4 = n1044_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:910:8  */
    assign heap_bh6_w53_5 = n1045_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:911:8  */
    assign compressorin_bh6_46_90 = n1047_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:912:8  */
    assign compressorin_bh6_46_91 = n1048_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:913:8  */
    assign compressorout_bh6_46_46 = compressor_bh6_46_n1049; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:914:8  */
    assign heap_bh6_w63_3 = n1052_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:915:8  */
    assign heap_bh6_w64_2 = n1053_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:916:8  */
    assign heap_bh6_w65_1 = n1054_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:917:8  */
    assign compressorin_bh6_47_92 = n1056_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:918:8  */
    assign compressorin_bh6_47_93 = heap_bh6_w49_6_d1; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:919:8  */
    assign compressorout_bh6_47_47 = compressor_bh6_47_n1057; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:920:8  */
    assign heap_bh6_w48_7 = n1060_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:921:8  */
    assign heap_bh6_w49_7 = n1061_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:922:8  */
    assign heap_bh6_w50_5 = n1062_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:923:8  */
    assign compressorin_bh6_48_94 = n1064_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:924:8  */
    assign compressorin_bh6_48_95 = n1065_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:925:8  */
    assign compressorout_bh6_48_48 = compressor_bh6_48_n1066; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:926:8  */
    assign heap_bh6_w53_6 = n1069_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:927:8  */
    assign heap_bh6_w54_4 = n1070_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:928:8  */
    assign heap_bh6_w55_5 = n1071_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:929:8  */
    assign compressorin_bh6_49_96 = n1073_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:930:8  */
    assign compressorin_bh6_49_97 = n1074_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:931:8  */
    assign compressorout_bh6_49_49 = compressor_bh6_49_n1075; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:932:8  */
    assign heap_bh6_w55_6 = n1078_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:933:8  */
    assign heap_bh6_w56_4 = n1079_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:934:8  */
    assign heap_bh6_w57_5 = n1080_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:935:8  */
    assign compressorin_bh6_50_98 = n1082_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:936:8  */
    assign compressorin_bh6_50_99 = heap_bh6_w58_2_d1; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:937:8  */
    assign compressorout_bh6_50_50 = compressor_bh6_50_n1083; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:938:8  */
    assign heap_bh6_w57_6 = n1086_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:939:8  */
    assign heap_bh6_w58_3 = n1087_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:940:8  */
    assign heap_bh6_w59_4 = n1088_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:941:8  */
    assign finaladderin0_bh6 = n1154_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:942:8  */
    assign finaladderin1_bh6 = n1223_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:943:8  */
    assign finaladdercin_bh6 = 1'b0; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:944:8  */
    assign finaladderout_bh6 = adder_final6_0_n1225; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:945:8  */
    assign compressionresult6 = n1228_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n228_q <= heap_bh6_w33_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n229_q <= heap_bh6_w31_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n230_q <= heap_bh6_w29_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n231_q <= heap_bh6_w27_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n232_q <= heap_bh6_w25_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n233_q <= heap_bh6_w23_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n234_q <= heap_bh6_w22_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n235_q <= heap_bh6_w21_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n236_q <= heap_bh6_w20_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n237_q <= heap_bh6_w19_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n238_q <= heap_bh6_w18_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n239_q <= heap_bh6_w17_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n240_q <= heap_bh6_w64_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n241_q <= heap_bh6_w63_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n242_q <= heap_bh6_w56_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n243_q <= heap_bh6_w54_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n244_q <= heap_bh6_w52_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n245_q <= heap_bh6_w81_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n246_q <= heap_bh6_w80_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n247_q <= heap_bh6_w79_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n248_q <= heap_bh6_w78_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n249_q <= heap_bh6_w77_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n250_q <= heap_bh6_w76_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n251_q <= heap_bh6_w75_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n252_q <= heap_bh6_w74_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n253_q <= heap_bh6_w73_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n254_q <= heap_bh6_w72_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n255_q <= heap_bh6_w71_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n256_q <= heap_bh6_w70_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n257_q <= heap_bh6_w69_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n258_q <= heap_bh6_w68_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n259_q <= heap_bh6_w67_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n260_q <= heap_bh6_w66_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n261_q <= heap_bh6_w65_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n262_q <= heap_bh6_w64_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n263_q <= heap_bh6_w63_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n264_q <= heap_bh6_w23_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n265_q <= heap_bh6_w22_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n266_q <= heap_bh6_w21_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n267_q <= heap_bh6_w20_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n268_q <= heap_bh6_w19_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n269_q <= heap_bh6_w18_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n270_q <= heap_bh6_w17_1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n271_q <= tempr_bh6_0;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n272_q <= heap_bh6_w34_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n273_q <= heap_bh6_w35_7;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n274_q <= heap_bh6_w37_8;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n275_q <= heap_bh6_w39_12;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n276_q <= heap_bh6_w41_13;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n277_q <= heap_bh6_w43_9;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n278_q <= heap_bh6_w45_6;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n279_q <= heap_bh6_w48_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n280_q <= heap_bh6_w24_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n281_q <= heap_bh6_w25_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n282_q <= heap_bh6_w26_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n283_q <= heap_bh6_w26_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n284_q <= heap_bh6_w27_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n285_q <= heap_bh6_w28_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n286_q <= heap_bh6_w28_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n287_q <= heap_bh6_w29_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n288_q <= heap_bh6_w30_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n289_q <= heap_bh6_w30_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n290_q <= heap_bh6_w31_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n291_q <= heap_bh6_w32_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n292_q <= heap_bh6_w32_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n293_q <= heap_bh6_w33_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n294_q <= heap_bh6_w34_5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n295_q <= heap_bh6_w51_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n296_q <= heap_bh6_w51_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n297_q <= heap_bh6_w52_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n298_q <= heap_bh6_w53_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n299_q <= heap_bh6_w53_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n300_q <= heap_bh6_w54_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n301_q <= heap_bh6_w55_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n302_q <= heap_bh6_w55_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n303_q <= heap_bh6_w56_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n304_q <= heap_bh6_w57_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n305_q <= heap_bh6_w57_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n306_q <= heap_bh6_w58_2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n307_q <= heap_bh6_w35_8;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n308_q <= heap_bh6_w36_10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n309_q <= heap_bh6_w37_11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n310_q <= heap_bh6_w38_13;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n311_q <= heap_bh6_w38_14;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n312_q <= heap_bh6_w39_15;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n313_q <= heap_bh6_w40_15;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n314_q <= heap_bh6_w40_16;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n315_q <= heap_bh6_w41_16;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n316_q <= heap_bh6_w42_13;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n317_q <= heap_bh6_w42_14;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n318_q <= heap_bh6_w43_12;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n319_q <= heap_bh6_w44_12;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n320_q <= heap_bh6_w44_13;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n321_q <= heap_bh6_w45_9;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n322_q <= heap_bh6_w48_5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n323_q <= heap_bh6_w59_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n324_q <= heap_bh6_w60_2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n325_q <= heap_bh6_w49_6;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n326_q <= heap_bh6_w50_4;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n327_q <= heap_bh6_w51_5;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n328_q <= heap_bh6_w61_3;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n329_q <= heap_bh6_w62_2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n330_q <= heap_bh6_w63_2;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n331_q <= heap_bh6_w46_8;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n332_q <= heap_bh6_w47_8;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:953:10  */
    always @(posedge clk)
        n333_q <= heap_bh6_w48_6;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1066:20  */
    assign n334_o = xx_m5[23:17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1066:35  */
    assign n336_o = {n334_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1067:20  */
    assign n337_o = yy_m5[23:17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1067:35  */
    assign n339_o = {n337_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1068:23  */
    assign n340_o = xp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1069:23  */
    assign n341_o = xp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1070:23  */
    assign n342_o = xp_m5b7[8:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1071:23  */
    assign n343_o = yp_m5b7[2:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1072:23  */
    assign n344_o = yp_m5b7[5:3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1073:23  */
    assign n345_o = yp_m5b7[8:6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1076:26  */
    assign n346_o = {y_m5b7_0, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1081:23  */
    assign pp_m5_7x0y0_tbl_n347 = pp_m5_7x0y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1077:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x0_7_m5),
        .y(pp_m5_7x0y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1083:32  */
    assign n350_o = pp7x0y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1084:32  */
    assign n351_o = pp7x0y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1086:26  */
    assign n352_o = {y_m5b7_0, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1091:23  */
    assign pp_m5_7x1y0_tbl_n353 = pp_m5_7x1y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1087:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x1_7_m5),
        .y(pp_m5_7x1y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1093:32  */
    assign n356_o = pp7x1y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1094:32  */
    assign n357_o = pp7x1y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1095:32  */
    assign n358_o = pp7x1y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1096:32  */
    assign n359_o = pp7x1y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1098:26  */
    assign n360_o = {y_m5b7_0, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1103:23  */
    assign pp_m5_7x2y0_tbl_n361 = pp_m5_7x2y0_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1099:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y0_tbl(
        .clk(clk),
        .rst(rst),
        .x(y0x2_7_m5),
        .y(pp_m5_7x2y0_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1105:32  */
    assign n364_o = pp7x2y0_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1106:32  */
    assign n365_o = pp7x2y0_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1107:32  */
    assign n366_o = pp7x2y0_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1108:32  */
    assign n367_o = pp7x2y0_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1111:26  */
    assign n368_o = {y_m5b7_1, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1116:23  */
    assign pp_m5_7x0y1_tbl_n369 = pp_m5_7x0y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1112:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x0_7_m5),
        .y(pp_m5_7x0y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1118:32  */
    assign n372_o = pp7x0y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1119:32  */
    assign n373_o = pp7x0y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1120:32  */
    assign n374_o = pp7x0y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1121:32  */
    assign n375_o = pp7x0y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1123:26  */
    assign n376_o = {y_m5b7_1, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1128:23  */
    assign pp_m5_7x1y1_tbl_n377 = pp_m5_7x1y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1124:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x1_7_m5),
        .y(pp_m5_7x1y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1130:32  */
    assign n380_o = pp7x1y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1131:32  */
    assign n381_o = pp7x1y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1132:32  */
    assign n382_o = pp7x1y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1133:32  */
    assign n383_o = pp7x1y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1134:32  */
    assign n384_o = pp7x1y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1135:32  */
    assign n385_o = pp7x1y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1137:26  */
    assign n386_o = {y_m5b7_1, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1142:23  */
    assign pp_m5_7x2y1_tbl_n387 = pp_m5_7x2y1_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1138:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y1_tbl(
        .clk(clk),
        .rst(rst),
        .x(y1x2_7_m5),
        .y(pp_m5_7x2y1_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1144:32  */
    assign n390_o = pp7x2y1_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1145:32  */
    assign n391_o = pp7x2y1_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1146:32  */
    assign n392_o = pp7x2y1_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1147:32  */
    assign n393_o = pp7x2y1_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1148:32  */
    assign n394_o = pp7x2y1_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1149:32  */
    assign n395_o = pp7x2y1_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1152:26  */
    assign n396_o = {y_m5b7_2, x_m5b7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1157:23  */
    assign pp_m5_7x0y2_tbl_n397 = pp_m5_7x0y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1153:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x0y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x0_7_m5),
        .y(pp_m5_7x0y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1159:32  */
    assign n400_o = pp7x0y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1160:32  */
    assign n401_o = pp7x0y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1161:32  */
    assign n402_o = pp7x0y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1162:32  */
    assign n403_o = pp7x0y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1164:26  */
    assign n404_o = {y_m5b7_2, x_m5b7_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1169:23  */
    assign pp_m5_7x1y2_tbl_n405 = pp_m5_7x1y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1165:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x1y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x1_7_m5),
        .y(pp_m5_7x1y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1171:32  */
    assign n408_o = pp7x1y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1172:32  */
    assign n409_o = pp7x1y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1173:32  */
    assign n410_o = pp7x1y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1174:32  */
    assign n411_o = pp7x1y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1175:32  */
    assign n412_o = pp7x1y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1176:32  */
    assign n413_o = pp7x1y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1178:26  */
    assign n414_o = {y_m5b7_2, x_m5b7_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1183:23  */
    assign pp_m5_7x2y2_tbl_n415 = pp_m5_7x2y2_tbl_y; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1179:4  */
    smallmulttablep3x3r6xuyu_f300_uid9 pp_m5_7x2y2_tbl(
        .clk(clk),
        .rst(rst),
        .x(y2x2_7_m5),
        .y(pp_m5_7x2y2_tbl_y));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1185:32  */
    assign n418_o = pp7x2y2_m5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1186:32  */
    assign n419_o = pp7x2y2_m5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1187:32  */
    assign n420_o = pp7x2y2_m5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1188:32  */
    assign n421_o = pp7x2y2_m5[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1189:32  */
    assign n422_o = pp7x2y2_m5[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1190:32  */
    assign n423_o = pp7x2y2_m5[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1196:71  */
    assign n424_o = xx_m5[23:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1196:112  */
    assign n427_o = yy_m5[16:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1196:77  */
    assign n430_o = {17'b0, n424_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1196:77  */
    assign n431_o = {24'b0, n427_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1196:77  */
    assign n432_o = n430_o*n431_o; // smul
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1197:35  */
    assign n433_o = dsp_bh6_ch0_0[40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1198:35  */
    assign n434_o = dsp_bh6_ch0_0[39];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1199:35  */
    assign n435_o = dsp_bh6_ch0_0[38];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1200:35  */
    assign n436_o = dsp_bh6_ch0_0[37];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1201:35  */
    assign n437_o = dsp_bh6_ch0_0[36];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1202:35  */
    assign n438_o = dsp_bh6_ch0_0[35];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1203:35  */
    assign n439_o = dsp_bh6_ch0_0[34];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1204:35  */
    assign n440_o = dsp_bh6_ch0_0[33];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1205:35  */
    assign n441_o = dsp_bh6_ch0_0[32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1206:35  */
    assign n442_o = dsp_bh6_ch0_0[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1207:35  */
    assign n443_o = dsp_bh6_ch0_0[30];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1208:35  */
    assign n444_o = dsp_bh6_ch0_0[29];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1209:35  */
    assign n445_o = dsp_bh6_ch0_0[28];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1210:35  */
    assign n446_o = dsp_bh6_ch0_0[27];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1211:35  */
    assign n447_o = dsp_bh6_ch0_0[26];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1212:35  */
    assign n448_o = dsp_bh6_ch0_0[25];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1213:35  */
    assign n449_o = dsp_bh6_ch0_0[24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1214:35  */
    assign n450_o = dsp_bh6_ch0_0[23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1215:35  */
    assign n451_o = dsp_bh6_ch0_0[22];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1216:35  */
    assign n452_o = dsp_bh6_ch0_0[21];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1217:35  */
    assign n453_o = dsp_bh6_ch0_0[20];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1218:35  */
    assign n454_o = dsp_bh6_ch0_0[19];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1219:35  */
    assign n455_o = dsp_bh6_ch0_0[18];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1220:35  */
    assign n456_o = dsp_bh6_ch0_0[17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1221:35  */
    assign n457_o = dsp_bh6_ch0_0[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1222:35  */
    assign n458_o = dsp_bh6_ch0_0[15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1223:35  */
    assign n459_o = dsp_bh6_ch0_0[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1224:35  */
    assign n460_o = dsp_bh6_ch0_0[13];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1225:35  */
    assign n461_o = dsp_bh6_ch0_0[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1226:35  */
    assign n462_o = dsp_bh6_ch0_0[11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1227:35  */
    assign n463_o = dsp_bh6_ch0_0[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1228:34  */
    assign n464_o = dsp_bh6_ch0_0[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1229:34  */
    assign n465_o = dsp_bh6_ch0_0[8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1230:34  */
    assign n466_o = dsp_bh6_ch0_0[7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1231:34  */
    assign n467_o = dsp_bh6_ch0_0[6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1232:34  */
    assign n468_o = dsp_bh6_ch0_0[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1233:34  */
    assign n469_o = dsp_bh6_ch0_0[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1234:34  */
    assign n470_o = dsp_bh6_ch0_0[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1235:34  */
    assign n471_o = dsp_bh6_ch0_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1236:34  */
    assign n472_o = dsp_bh6_ch0_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1237:34  */
    assign n473_o = dsp_bh6_ch0_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1239:72  */
    assign n474_o = xx_m5[40:24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1239:113  */
    assign n477_o = yy_m5[23:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1239:78  */
    assign n480_o = {24'b0, n474_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1239:78  */
    assign n481_o = {17'b0, n477_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1239:78  */
    assign n482_o = n480_o*n481_o; // smul
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1240:35  */
    assign n483_o = dsp_bh6_ch1_0[40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1241:35  */
    assign n484_o = dsp_bh6_ch1_0[39];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1242:35  */
    assign n485_o = dsp_bh6_ch1_0[38];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1243:35  */
    assign n486_o = dsp_bh6_ch1_0[37];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1244:35  */
    assign n487_o = dsp_bh6_ch1_0[36];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1245:35  */
    assign n488_o = dsp_bh6_ch1_0[35];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1246:35  */
    assign n489_o = dsp_bh6_ch1_0[34];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1247:35  */
    assign n490_o = dsp_bh6_ch1_0[33];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1248:35  */
    assign n491_o = dsp_bh6_ch1_0[32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1249:35  */
    assign n492_o = dsp_bh6_ch1_0[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1250:35  */
    assign n493_o = dsp_bh6_ch1_0[30];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1251:35  */
    assign n494_o = dsp_bh6_ch1_0[29];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1252:35  */
    assign n495_o = dsp_bh6_ch1_0[28];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1253:35  */
    assign n496_o = dsp_bh6_ch1_0[27];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1254:35  */
    assign n497_o = dsp_bh6_ch1_0[26];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1255:35  */
    assign n498_o = dsp_bh6_ch1_0[25];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1256:35  */
    assign n499_o = dsp_bh6_ch1_0[24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1257:35  */
    assign n500_o = dsp_bh6_ch1_0[23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1258:35  */
    assign n501_o = dsp_bh6_ch1_0[22];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1259:35  */
    assign n502_o = dsp_bh6_ch1_0[21];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1260:35  */
    assign n503_o = dsp_bh6_ch1_0[20];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1261:35  */
    assign n504_o = dsp_bh6_ch1_0[19];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1262:35  */
    assign n505_o = dsp_bh6_ch1_0[18];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1263:35  */
    assign n506_o = dsp_bh6_ch1_0[17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1264:35  */
    assign n507_o = dsp_bh6_ch1_0[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1265:35  */
    assign n508_o = dsp_bh6_ch1_0[15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1266:35  */
    assign n509_o = dsp_bh6_ch1_0[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1267:35  */
    assign n510_o = dsp_bh6_ch1_0[13];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1268:35  */
    assign n511_o = dsp_bh6_ch1_0[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1269:35  */
    assign n512_o = dsp_bh6_ch1_0[11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1270:35  */
    assign n513_o = dsp_bh6_ch1_0[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1271:35  */
    assign n514_o = dsp_bh6_ch1_0[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1272:35  */
    assign n515_o = dsp_bh6_ch1_0[8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1273:35  */
    assign n516_o = dsp_bh6_ch1_0[7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1274:35  */
    assign n517_o = dsp_bh6_ch1_0[6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1275:35  */
    assign n518_o = dsp_bh6_ch1_0[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1276:35  */
    assign n519_o = dsp_bh6_ch1_0[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1277:35  */
    assign n520_o = dsp_bh6_ch1_0[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1278:35  */
    assign n521_o = dsp_bh6_ch1_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1279:35  */
    assign n522_o = dsp_bh6_ch1_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1280:35  */
    assign n523_o = dsp_bh6_ch1_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1282:72  */
    assign n524_o = xx_m5[40:17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1282:114  */
    assign n527_o = yy_m5[40:24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1282:78  */
    assign n530_o = {17'b0, n524_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1282:78  */
    assign n531_o = {24'b0, n527_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1282:78  */
    assign n532_o = n530_o*n531_o; // smul
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1283:35  */
    assign n533_o = dsp_bh6_ch2_0[40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1284:35  */
    assign n534_o = dsp_bh6_ch2_0[39];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1285:35  */
    assign n535_o = dsp_bh6_ch2_0[38];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1286:35  */
    assign n536_o = dsp_bh6_ch2_0[37];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1287:35  */
    assign n537_o = dsp_bh6_ch2_0[36];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1288:35  */
    assign n538_o = dsp_bh6_ch2_0[35];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1289:35  */
    assign n539_o = dsp_bh6_ch2_0[34];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1290:35  */
    assign n540_o = dsp_bh6_ch2_0[33];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1291:35  */
    assign n541_o = dsp_bh6_ch2_0[32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1292:35  */
    assign n542_o = dsp_bh6_ch2_0[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1293:35  */
    assign n543_o = dsp_bh6_ch2_0[30];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1294:35  */
    assign n544_o = dsp_bh6_ch2_0[29];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1295:35  */
    assign n545_o = dsp_bh6_ch2_0[28];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1296:35  */
    assign n546_o = dsp_bh6_ch2_0[27];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1297:35  */
    assign n547_o = dsp_bh6_ch2_0[26];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1298:35  */
    assign n548_o = dsp_bh6_ch2_0[25];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1299:35  */
    assign n549_o = dsp_bh6_ch2_0[24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1300:35  */
    assign n550_o = dsp_bh6_ch2_0[23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1301:35  */
    assign n551_o = dsp_bh6_ch2_0[22];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1302:35  */
    assign n552_o = dsp_bh6_ch2_0[21];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1303:35  */
    assign n553_o = dsp_bh6_ch2_0[20];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1304:35  */
    assign n554_o = dsp_bh6_ch2_0[19];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1305:35  */
    assign n555_o = dsp_bh6_ch2_0[18];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1306:35  */
    assign n556_o = dsp_bh6_ch2_0[17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1307:35  */
    assign n557_o = dsp_bh6_ch2_0[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1308:35  */
    assign n558_o = dsp_bh6_ch2_0[15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1309:35  */
    assign n559_o = dsp_bh6_ch2_0[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1310:35  */
    assign n560_o = dsp_bh6_ch2_0[13];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1311:35  */
    assign n561_o = dsp_bh6_ch2_0[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1312:35  */
    assign n562_o = dsp_bh6_ch2_0[11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1313:35  */
    assign n563_o = dsp_bh6_ch2_0[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1314:35  */
    assign n564_o = dsp_bh6_ch2_0[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1315:35  */
    assign n565_o = dsp_bh6_ch2_0[8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1316:35  */
    assign n566_o = dsp_bh6_ch2_0[7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1317:35  */
    assign n567_o = dsp_bh6_ch2_0[6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1318:35  */
    assign n568_o = dsp_bh6_ch2_0[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1319:35  */
    assign n569_o = dsp_bh6_ch2_0[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1320:35  */
    assign n570_o = dsp_bh6_ch2_0[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1321:35  */
    assign n571_o = dsp_bh6_ch2_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1322:35  */
    assign n572_o = dsp_bh6_ch2_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1323:35  */
    assign n573_o = dsp_bh6_ch2_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1325:71  */
    assign n574_o = xx_m5[16:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1325:113  */
    assign n577_o = yy_m5[40:17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1325:77  */
    assign n580_o = {24'b0, n574_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1325:77  */
    assign n581_o = {17'b0, n577_o};  //  uext
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1325:77  */
    assign n582_o = n580_o*n581_o; // smul
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1326:35  */
    assign n583_o = dsp_bh6_ch3_0[40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1327:35  */
    assign n584_o = dsp_bh6_ch3_0[39];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1328:35  */
    assign n585_o = dsp_bh6_ch3_0[38];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1329:35  */
    assign n586_o = dsp_bh6_ch3_0[37];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1330:35  */
    assign n587_o = dsp_bh6_ch3_0[36];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1331:35  */
    assign n588_o = dsp_bh6_ch3_0[35];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1332:35  */
    assign n589_o = dsp_bh6_ch3_0[34];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1333:35  */
    assign n590_o = dsp_bh6_ch3_0[33];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1334:35  */
    assign n591_o = dsp_bh6_ch3_0[32];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1335:35  */
    assign n592_o = dsp_bh6_ch3_0[31];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1336:35  */
    assign n593_o = dsp_bh6_ch3_0[30];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1337:35  */
    assign n594_o = dsp_bh6_ch3_0[29];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1338:35  */
    assign n595_o = dsp_bh6_ch3_0[28];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1339:35  */
    assign n596_o = dsp_bh6_ch3_0[27];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1340:35  */
    assign n597_o = dsp_bh6_ch3_0[26];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1341:35  */
    assign n598_o = dsp_bh6_ch3_0[25];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1342:35  */
    assign n599_o = dsp_bh6_ch3_0[24];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1343:35  */
    assign n600_o = dsp_bh6_ch3_0[23];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1344:35  */
    assign n601_o = dsp_bh6_ch3_0[22];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1345:35  */
    assign n602_o = dsp_bh6_ch3_0[21];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1346:35  */
    assign n603_o = dsp_bh6_ch3_0[20];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1347:35  */
    assign n604_o = dsp_bh6_ch3_0[19];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1348:35  */
    assign n605_o = dsp_bh6_ch3_0[18];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1349:35  */
    assign n606_o = dsp_bh6_ch3_0[17];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1350:35  */
    assign n607_o = dsp_bh6_ch3_0[16];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1351:35  */
    assign n608_o = dsp_bh6_ch3_0[15];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1352:35  */
    assign n609_o = dsp_bh6_ch3_0[14];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1353:35  */
    assign n610_o = dsp_bh6_ch3_0[13];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1354:35  */
    assign n611_o = dsp_bh6_ch3_0[12];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1355:35  */
    assign n612_o = dsp_bh6_ch3_0[11];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1356:35  */
    assign n613_o = dsp_bh6_ch3_0[10];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1357:35  */
    assign n614_o = dsp_bh6_ch3_0[9];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1358:35  */
    assign n615_o = dsp_bh6_ch3_0[8];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1359:35  */
    assign n616_o = dsp_bh6_ch3_0[7];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1360:35  */
    assign n617_o = dsp_bh6_ch3_0[6];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1361:35  */
    assign n618_o = dsp_bh6_ch3_0[5];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1362:35  */
    assign n619_o = dsp_bh6_ch3_0[4];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1363:35  */
    assign n620_o = dsp_bh6_ch3_0[3];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1364:35  */
    assign n621_o = dsp_bh6_ch3_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1365:35  */
    assign n622_o = dsp_bh6_ch3_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1366:35  */
    assign n623_o = dsp_bh6_ch3_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:34  */
    assign n624_o = {heap_bh6_w16_0, heap_bh6_w15_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:51  */
    assign n625_o = {n624_o, heap_bh6_w14_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:68  */
    assign n626_o = {n625_o, heap_bh6_w13_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:85  */
    assign n627_o = {n626_o, heap_bh6_w12_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:102  */
    assign n628_o = {n627_o, heap_bh6_w11_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:119  */
    assign n629_o = {n628_o, heap_bh6_w10_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:136  */
    assign n630_o = {n629_o, heap_bh6_w9_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:152  */
    assign n631_o = {n630_o, heap_bh6_w8_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:168  */
    assign n632_o = {n631_o, heap_bh6_w7_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:184  */
    assign n633_o = {n632_o, heap_bh6_w6_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:200  */
    assign n634_o = {n633_o, heap_bh6_w5_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:216  */
    assign n635_o = {n634_o, heap_bh6_w4_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:232  */
    assign n636_o = {n635_o, heap_bh6_w3_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:248  */
    assign n637_o = {n636_o, heap_bh6_w2_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:264  */
    assign n638_o = {n637_o, heap_bh6_w1_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1374:280  */
    assign n639_o = {n638_o, heap_bh6_w0_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1377:43  */
    assign n640_o = {heap_bh6_w38_4, heap_bh6_w38_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1377:60  */
    assign n641_o = {n640_o, heap_bh6_w38_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1377:77  */
    assign n642_o = {n641_o, heap_bh6_w38_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1380:23  */
    assign compressor_bh6_0_n643 = compressor_bh6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1379:7  */
    compressor_14_3 compressor_bh6_0(
        .x0(compressorin_bh6_0_0),
        .x1(compressorin_bh6_0_1),
        .r(compressor_bh6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1383:43  */
    assign n646_o = compressorout_bh6_0_0[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1384:43  */
    assign n647_o = compressorout_bh6_0_0[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1385:43  */
    assign n648_o = compressorout_bh6_0_0[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1388:43  */
    assign n649_o = {heap_bh6_w39_3, heap_bh6_w39_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1388:60  */
    assign n650_o = {n649_o, heap_bh6_w39_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1388:77  */
    assign n651_o = {n650_o, heap_bh6_w39_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1391:23  */
    assign compressor_bh6_1_n652 = compressor_bh6_1_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1390:7  */
    compressor_14_3 compressor_bh6_1(
        .x0(compressorin_bh6_1_2),
        .x1(compressorin_bh6_1_3),
        .r(compressor_bh6_1_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1394:43  */
    assign n655_o = compressorout_bh6_1_1[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1395:43  */
    assign n656_o = compressorout_bh6_1_1[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1396:43  */
    assign n657_o = compressorout_bh6_1_1[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1399:43  */
    assign n658_o = {heap_bh6_w40_3, heap_bh6_w40_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1399:60  */
    assign n659_o = {n658_o, heap_bh6_w40_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1399:77  */
    assign n660_o = {n659_o, heap_bh6_w40_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1402:23  */
    assign compressor_bh6_2_n661 = compressor_bh6_2_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1401:7  */
    compressor_14_3 compressor_bh6_2(
        .x0(compressorin_bh6_2_4),
        .x1(compressorin_bh6_2_5),
        .r(compressor_bh6_2_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1405:44  */
    assign n664_o = compressorout_bh6_2_2[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1406:43  */
    assign n665_o = compressorout_bh6_2_2[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1407:43  */
    assign n666_o = compressorout_bh6_2_2[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1410:43  */
    assign n667_o = {heap_bh6_w41_3, heap_bh6_w41_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1410:60  */
    assign n668_o = {n667_o, heap_bh6_w41_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1410:77  */
    assign n669_o = {n668_o, heap_bh6_w41_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1413:23  */
    assign compressor_bh6_3_n670 = compressor_bh6_3_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1412:7  */
    compressor_14_3 compressor_bh6_3(
        .x0(compressorin_bh6_3_6),
        .x1(compressorin_bh6_3_7),
        .r(compressor_bh6_3_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1416:44  */
    assign n673_o = compressorout_bh6_3_3[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1417:43  */
    assign n674_o = compressorout_bh6_3_3[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1418:43  */
    assign n675_o = compressorout_bh6_3_3[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1421:43  */
    assign n676_o = {heap_bh6_w35_2, heap_bh6_w35_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1421:60  */
    assign n677_o = {n676_o, heap_bh6_w35_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1422:43  */
    assign n678_o = {heap_bh6_w36_2, heap_bh6_w36_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1424:23  */
    assign compressor_bh6_4_n679 = compressor_bh6_4_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1423:7  */
    compressor_23_3 compressor_bh6_4(
        .x0(compressorin_bh6_4_8),
        .x1(compressorin_bh6_4_9),
        .r(compressor_bh6_4_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1427:43  */
    assign n682_o = compressorout_bh6_4_4[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1428:43  */
    assign n683_o = compressorout_bh6_4_4[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1429:43  */
    assign n684_o = compressorout_bh6_4_4[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1432:44  */
    assign n685_o = {heap_bh6_w43_2, heap_bh6_w43_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1432:61  */
    assign n686_o = {n685_o, heap_bh6_w43_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1433:44  */
    assign n687_o = {heap_bh6_w44_2, heap_bh6_w44_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1435:23  */
    assign compressor_bh6_5_n688 = compressor_bh6_5_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1434:7  */
    compressor_23_3 compressor_bh6_5(
        .x0(compressorin_bh6_5_10),
        .x1(compressorin_bh6_5_11),
        .r(compressor_bh6_5_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1438:43  */
    assign n691_o = compressorout_bh6_5_5[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1439:43  */
    assign n692_o = compressorout_bh6_5_5[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1440:43  */
    assign n693_o = compressorout_bh6_5_5[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1443:44  */
    assign n694_o = {heap_bh6_w37_2, heap_bh6_w37_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1443:61  */
    assign n695_o = {n694_o, heap_bh6_w37_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1446:23  */
    assign compressor_bh6_6_n696 = compressor_bh6_6_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1445:7  */
    compressor_13_3 compressor_bh6_6(
        .x0(compressorin_bh6_6_12),
        .x1(compressorin_bh6_6_13),
        .r(compressor_bh6_6_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1449:43  */
    assign n699_o = compressorout_bh6_6_6[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1450:43  */
    assign n700_o = compressorout_bh6_6_6[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1451:44  */
    assign n701_o = compressorout_bh6_6_6[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1454:44  */
    assign n702_o = {heap_bh6_w42_1, heap_bh6_w42_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1454:61  */
    assign n703_o = {n702_o, heap_bh6_w42_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1454:78  */
    assign n704_o = {n703_o, heap_bh6_w42_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1457:23  */
    assign compressor_bh6_7_n705 = compressor_bh6_7_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1456:7  */
    compressor_14_3 compressor_bh6_7(
        .x0(compressorin_bh6_7_14),
        .x1(compressorin_bh6_7_15),
        .r(compressor_bh6_7_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1460:43  */
    assign n708_o = compressorout_bh6_7_7[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1461:43  */
    assign n709_o = compressorout_bh6_7_7[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1462:43  */
    assign n710_o = compressorout_bh6_7_7[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1465:45  */
    assign n711_o = {heap_bh6_w39_10, heap_bh6_w39_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1465:62  */
    assign n712_o = {n711_o, heap_bh6_w39_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1466:45  */
    assign n713_o = {heap_bh6_w40_10, heap_bh6_w40_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1468:23  */
    assign compressor_bh6_8_n714 = compressor_bh6_8_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1467:7  */
    compressor_23_3 compressor_bh6_8(
        .x0(compressorin_bh6_8_16),
        .x1(compressorin_bh6_8_17),
        .r(compressor_bh6_8_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1471:44  */
    assign n717_o = compressorout_bh6_8_8[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1472:44  */
    assign n718_o = compressorout_bh6_8_8[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1473:44  */
    assign n719_o = compressorout_bh6_8_8[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1476:45  */
    assign n720_o = {heap_bh6_w41_10, heap_bh6_w41_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1476:62  */
    assign n721_o = {n720_o, heap_bh6_w41_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1478:23  */
    assign compressor_bh6_9_n722 = compressor_bh6_9_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1477:7  */
    compressor_3_2 compressor_bh6_9(
        .x0(compressorin_bh6_9_18),
        .r(compressor_bh6_9_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1480:44  */
    assign n725_o = compressorout_bh6_9_9[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1481:43  */
    assign n726_o = compressorout_bh6_9_9[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1484:45  */
    assign n727_o = {heap_bh6_w44_0, heap_bh6_w44_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1484:62  */
    assign n728_o = {n727_o, heap_bh6_w44_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1485:45  */
    assign n729_o = {heap_bh6_w45_0, heap_bh6_w45_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1487:23  */
    assign compressor_bh6_10_n730 = compressor_bh6_10_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1486:7  */
    compressor_23_3 compressor_bh6_10(
        .x0(compressorin_bh6_10_19),
        .x1(compressorin_bh6_10_20),
        .r(compressor_bh6_10_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1490:45  */
    assign n733_o = compressorout_bh6_10_10[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1491:45  */
    assign n734_o = compressorout_bh6_10_10[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1492:45  */
    assign n735_o = compressorout_bh6_10_10[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1495:45  */
    assign n736_o = {heap_bh6_w34_0, heap_bh6_w34_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1495:62  */
    assign n737_o = {n736_o, heap_bh6_w34_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1495:79  */
    assign n738_o = {n737_o, heap_bh6_w34_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1498:23  */
    assign compressor_bh6_11_n739 = compressor_bh6_11_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1497:7  */
    compressor_14_3 compressor_bh6_11(
        .x0(compressorin_bh6_11_21),
        .x1(compressorin_bh6_11_22),
        .r(compressor_bh6_11_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1501:45  */
    assign n742_o = compressorout_bh6_11_11[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1502:45  */
    assign n743_o = compressorout_bh6_11_11[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1503:45  */
    assign n744_o = compressorout_bh6_11_11[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1506:45  */
    assign n745_o = {heap_bh6_w36_0, heap_bh6_w36_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1506:62  */
    assign n746_o = {n745_o, heap_bh6_w36_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1506:79  */
    assign n747_o = {n746_o, heap_bh6_w36_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1509:23  */
    assign compressor_bh6_12_n748 = compressor_bh6_12_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1508:7  */
    compressor_14_3 compressor_bh6_12(
        .x0(compressorin_bh6_12_23),
        .x1(compressorin_bh6_12_24),
        .r(compressor_bh6_12_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1512:45  */
    assign n751_o = compressorout_bh6_12_12[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1513:45  */
    assign n752_o = compressorout_bh6_12_12[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1514:46  */
    assign n753_o = compressorout_bh6_12_12[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1517:45  */
    assign n754_o = {heap_bh6_w37_6, heap_bh6_w37_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1517:62  */
    assign n755_o = {n754_o, heap_bh6_w37_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1517:79  */
    assign n756_o = {n755_o, heap_bh6_w37_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1520:23  */
    assign compressor_bh6_13_n757 = compressor_bh6_13_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1519:7  */
    compressor_14_3 compressor_bh6_13(
        .x0(compressorin_bh6_13_25),
        .x1(compressorin_bh6_13_26),
        .r(compressor_bh6_13_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1523:45  */
    assign n760_o = compressorout_bh6_13_13[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1524:46  */
    assign n761_o = compressorout_bh6_13_13[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1525:46  */
    assign n762_o = compressorout_bh6_13_13[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1528:45  */
    assign n763_o = {heap_bh6_w38_8, heap_bh6_w38_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1528:62  */
    assign n764_o = {n763_o, heap_bh6_w38_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1528:79  */
    assign n765_o = {n764_o, heap_bh6_w38_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1531:23  */
    assign compressor_bh6_14_n766 = compressor_bh6_14_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1530:7  */
    compressor_14_3 compressor_bh6_14(
        .x0(compressorin_bh6_14_27),
        .x1(compressorin_bh6_14_28),
        .r(compressor_bh6_14_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1534:46  */
    assign n769_o = compressorout_bh6_14_14[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1535:46  */
    assign n770_o = compressorout_bh6_14_14[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1536:46  */
    assign n771_o = compressorout_bh6_14_14[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1539:45  */
    assign n772_o = {heap_bh6_w40_8, heap_bh6_w40_11};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1539:63  */
    assign n773_o = {n772_o, heap_bh6_w40_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1539:80  */
    assign n774_o = {n773_o, heap_bh6_w40_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1542:23  */
    assign compressor_bh6_15_n775 = compressor_bh6_15_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1541:7  */
    compressor_14_3 compressor_bh6_15(
        .x0(compressorin_bh6_15_29),
        .x1(compressorin_bh6_15_30),
        .r(compressor_bh6_15_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1545:46  */
    assign n778_o = compressorout_bh6_15_15[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1546:46  */
    assign n779_o = compressorout_bh6_15_15[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1547:46  */
    assign n780_o = compressorout_bh6_15_15[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1550:46  */
    assign n781_o = {heap_bh6_w41_11, heap_bh6_w41_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1550:63  */
    assign n782_o = {n781_o, heap_bh6_w41_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1550:80  */
    assign n783_o = {n782_o, heap_bh6_w41_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1553:23  */
    assign compressor_bh6_16_n784 = compressor_bh6_16_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1552:7  */
    compressor_14_3 compressor_bh6_16(
        .x0(compressorin_bh6_16_31),
        .x1(compressorin_bh6_16_32),
        .r(compressor_bh6_16_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1556:46  */
    assign n787_o = compressorout_bh6_16_16[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1557:46  */
    assign n788_o = compressorout_bh6_16_16[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1558:45  */
    assign n789_o = compressorout_bh6_16_16[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1561:45  */
    assign n790_o = {heap_bh6_w42_8, heap_bh6_w42_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1561:62  */
    assign n791_o = {n790_o, heap_bh6_w42_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1561:79  */
    assign n792_o = {n791_o, heap_bh6_w42_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1564:23  */
    assign compressor_bh6_17_n793 = compressor_bh6_17_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1563:7  */
    compressor_14_3 compressor_bh6_17(
        .x0(compressorin_bh6_17_33),
        .x1(compressorin_bh6_17_34),
        .r(compressor_bh6_17_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1567:46  */
    assign n796_o = compressorout_bh6_17_17[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1568:46  */
    assign n797_o = compressorout_bh6_17_17[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1569:45  */
    assign n798_o = compressorout_bh6_17_17[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1572:45  */
    assign n799_o = {heap_bh6_w43_8, heap_bh6_w43_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1572:62  */
    assign n800_o = {n799_o, heap_bh6_w43_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1572:79  */
    assign n801_o = {n800_o, heap_bh6_w43_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1575:23  */
    assign compressor_bh6_18_n802 = compressor_bh6_18_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1574:7  */
    compressor_14_3 compressor_bh6_18(
        .x0(compressorin_bh6_18_35),
        .x1(compressorin_bh6_18_36),
        .r(compressor_bh6_18_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1578:46  */
    assign n805_o = compressorout_bh6_18_18[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1579:46  */
    assign n806_o = compressorout_bh6_18_18[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1580:45  */
    assign n807_o = compressorout_bh6_18_18[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1583:45  */
    assign n808_o = {heap_bh6_w45_5, heap_bh6_w45_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1583:62  */
    assign n809_o = {n808_o, heap_bh6_w45_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1583:79  */
    assign n810_o = {n809_o, heap_bh6_w45_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1586:23  */
    assign compressor_bh6_19_n811 = compressor_bh6_19_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1585:7  */
    compressor_14_3 compressor_bh6_19(
        .x0(compressorin_bh6_19_37),
        .x1(compressorin_bh6_19_38),
        .r(compressor_bh6_19_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1589:45  */
    assign n814_o = compressorout_bh6_19_19[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1590:45  */
    assign n815_o = compressorout_bh6_19_19[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1591:45  */
    assign n816_o = compressorout_bh6_19_19[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1594:45  */
    assign n817_o = {heap_bh6_w46_4, heap_bh6_w46_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1594:62  */
    assign n818_o = {n817_o, heap_bh6_w46_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1594:79  */
    assign n819_o = {n818_o, heap_bh6_w46_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1597:23  */
    assign compressor_bh6_20_n820 = compressor_bh6_20_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1596:7  */
    compressor_14_3 compressor_bh6_20(
        .x0(compressorin_bh6_20_39),
        .x1(compressorin_bh6_20_40),
        .r(compressor_bh6_20_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1600:45  */
    assign n823_o = compressorout_bh6_20_20[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1601:45  */
    assign n824_o = compressorout_bh6_20_20[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1602:45  */
    assign n825_o = compressorout_bh6_20_20[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1605:45  */
    assign n826_o = {heap_bh6_w24_2, heap_bh6_w24_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1605:62  */
    assign n827_o = {n826_o, heap_bh6_w24_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1606:45  */
    assign n828_o = {heap_bh6_w25_2, heap_bh6_w25_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1608:23  */
    assign compressor_bh6_21_n829 = compressor_bh6_21_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1607:7  */
    compressor_23_3 compressor_bh6_21(
        .x0(compressorin_bh6_21_41),
        .x1(compressorin_bh6_21_42),
        .r(compressor_bh6_21_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1611:45  */
    assign n832_o = compressorout_bh6_21_21[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1612:45  */
    assign n833_o = compressorout_bh6_21_21[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1613:45  */
    assign n834_o = compressorout_bh6_21_21[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1616:45  */
    assign n835_o = {heap_bh6_w26_2, heap_bh6_w26_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1616:62  */
    assign n836_o = {n835_o, heap_bh6_w26_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1617:45  */
    assign n837_o = {heap_bh6_w27_2, heap_bh6_w27_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1619:23  */
    assign compressor_bh6_22_n838 = compressor_bh6_22_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1618:7  */
    compressor_23_3 compressor_bh6_22(
        .x0(compressorin_bh6_22_43),
        .x1(compressorin_bh6_22_44),
        .r(compressor_bh6_22_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1622:45  */
    assign n841_o = compressorout_bh6_22_22[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1623:45  */
    assign n842_o = compressorout_bh6_22_22[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1624:45  */
    assign n843_o = compressorout_bh6_22_22[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1627:45  */
    assign n844_o = {heap_bh6_w28_2, heap_bh6_w28_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1627:62  */
    assign n845_o = {n844_o, heap_bh6_w28_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1628:45  */
    assign n846_o = {heap_bh6_w29_2, heap_bh6_w29_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1630:23  */
    assign compressor_bh6_23_n847 = compressor_bh6_23_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1629:7  */
    compressor_23_3 compressor_bh6_23(
        .x0(compressorin_bh6_23_45),
        .x1(compressorin_bh6_23_46),
        .r(compressor_bh6_23_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1633:45  */
    assign n850_o = compressorout_bh6_23_23[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1634:45  */
    assign n851_o = compressorout_bh6_23_23[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1635:45  */
    assign n852_o = compressorout_bh6_23_23[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1638:45  */
    assign n853_o = {heap_bh6_w30_2, heap_bh6_w30_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1638:62  */
    assign n854_o = {n853_o, heap_bh6_w30_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1639:45  */
    assign n855_o = {heap_bh6_w31_2, heap_bh6_w31_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1641:23  */
    assign compressor_bh6_24_n856 = compressor_bh6_24_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1640:7  */
    compressor_23_3 compressor_bh6_24(
        .x0(compressorin_bh6_24_47),
        .x1(compressorin_bh6_24_48),
        .r(compressor_bh6_24_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1644:45  */
    assign n859_o = compressorout_bh6_24_24[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1645:45  */
    assign n860_o = compressorout_bh6_24_24[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1646:45  */
    assign n861_o = compressorout_bh6_24_24[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1649:45  */
    assign n862_o = {heap_bh6_w32_2, heap_bh6_w32_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1649:62  */
    assign n863_o = {n862_o, heap_bh6_w32_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1650:45  */
    assign n864_o = {heap_bh6_w33_2, heap_bh6_w33_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1652:23  */
    assign compressor_bh6_25_n865 = compressor_bh6_25_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1651:7  */
    compressor_23_3 compressor_bh6_25(
        .x0(compressorin_bh6_25_49),
        .x1(compressorin_bh6_25_50),
        .r(compressor_bh6_25_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1655:45  */
    assign n868_o = compressorout_bh6_25_25[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1656:45  */
    assign n869_o = compressorout_bh6_25_25[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1657:45  */
    assign n870_o = compressorout_bh6_25_25[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1660:45  */
    assign n871_o = {heap_bh6_w47_3, heap_bh6_w47_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1660:62  */
    assign n872_o = {n871_o, heap_bh6_w47_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1661:45  */
    assign n873_o = {heap_bh6_w48_2, heap_bh6_w48_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1663:23  */
    assign compressor_bh6_26_n874 = compressor_bh6_26_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1662:7  */
    compressor_23_3 compressor_bh6_26(
        .x0(compressorin_bh6_26_51),
        .x1(compressorin_bh6_26_52),
        .r(compressor_bh6_26_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1666:45  */
    assign n877_o = compressorout_bh6_26_26[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1667:45  */
    assign n878_o = compressorout_bh6_26_26[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1668:45  */
    assign n879_o = compressorout_bh6_26_26[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1671:45  */
    assign n880_o = {heap_bh6_w49_2, heap_bh6_w49_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1671:62  */
    assign n881_o = {n880_o, heap_bh6_w49_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1672:45  */
    assign n882_o = {heap_bh6_w50_2, heap_bh6_w50_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1674:23  */
    assign compressor_bh6_27_n883 = compressor_bh6_27_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1673:7  */
    compressor_23_3 compressor_bh6_27(
        .x0(compressorin_bh6_27_53),
        .x1(compressorin_bh6_27_54),
        .r(compressor_bh6_27_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1677:45  */
    assign n886_o = compressorout_bh6_27_27[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1678:45  */
    assign n887_o = compressorout_bh6_27_27[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1679:45  */
    assign n888_o = compressorout_bh6_27_27[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1682:45  */
    assign n889_o = {heap_bh6_w51_2, heap_bh6_w51_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1682:62  */
    assign n890_o = {n889_o, heap_bh6_w51_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1683:45  */
    assign n891_o = {heap_bh6_w52_2, heap_bh6_w52_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1685:23  */
    assign compressor_bh6_28_n892 = compressor_bh6_28_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1684:7  */
    compressor_23_3 compressor_bh6_28(
        .x0(compressorin_bh6_28_55),
        .x1(compressorin_bh6_28_56),
        .r(compressor_bh6_28_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1688:45  */
    assign n895_o = compressorout_bh6_28_28[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1689:45  */
    assign n896_o = compressorout_bh6_28_28[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1690:45  */
    assign n897_o = compressorout_bh6_28_28[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1693:45  */
    assign n898_o = {heap_bh6_w53_2, heap_bh6_w53_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1693:62  */
    assign n899_o = {n898_o, heap_bh6_w53_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1694:45  */
    assign n900_o = {heap_bh6_w54_2, heap_bh6_w54_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1696:23  */
    assign compressor_bh6_29_n901 = compressor_bh6_29_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1695:7  */
    compressor_23_3 compressor_bh6_29(
        .x0(compressorin_bh6_29_57),
        .x1(compressorin_bh6_29_58),
        .r(compressor_bh6_29_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1699:45  */
    assign n904_o = compressorout_bh6_29_29[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1700:45  */
    assign n905_o = compressorout_bh6_29_29[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1701:45  */
    assign n906_o = compressorout_bh6_29_29[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1704:45  */
    assign n907_o = {heap_bh6_w55_2, heap_bh6_w55_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1704:62  */
    assign n908_o = {n907_o, heap_bh6_w55_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1705:45  */
    assign n909_o = {heap_bh6_w56_2, heap_bh6_w56_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1707:23  */
    assign compressor_bh6_30_n910 = compressor_bh6_30_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1706:7  */
    compressor_23_3 compressor_bh6_30(
        .x0(compressorin_bh6_30_59),
        .x1(compressorin_bh6_30_60),
        .r(compressor_bh6_30_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1710:45  */
    assign n913_o = compressorout_bh6_30_30[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1711:45  */
    assign n914_o = compressorout_bh6_30_30[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1712:45  */
    assign n915_o = compressorout_bh6_30_30[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1715:45  */
    assign n916_o = {heap_bh6_w57_2, heap_bh6_w57_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1715:62  */
    assign n917_o = {n916_o, heap_bh6_w57_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1716:45  */
    assign n918_o = {heap_bh6_w58_1, heap_bh6_w58_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1718:23  */
    assign compressor_bh6_31_n919 = compressor_bh6_31_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1717:7  */
    compressor_23_3 compressor_bh6_31(
        .x0(compressorin_bh6_31_61),
        .x1(compressorin_bh6_31_62),
        .r(compressor_bh6_31_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1721:45  */
    assign n922_o = compressorout_bh6_31_31[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1722:45  */
    assign n923_o = compressorout_bh6_31_31[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1723:45  */
    assign n924_o = compressorout_bh6_31_31[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1726:45  */
    assign n925_o = {heap_bh6_w35_5, heap_bh6_w35_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1726:62  */
    assign n926_o = {n925_o, heap_bh6_w35_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1729:23  */
    assign compressor_bh6_32_n927 = compressor_bh6_32_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1728:7  */
    compressor_13_3 compressor_bh6_32(
        .x0(compressorin_bh6_32_63),
        .x1(compressorin_bh6_32_64),
        .r(compressor_bh6_32_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1732:45  */
    assign n930_o = compressorout_bh6_32_32[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1733:45  */
    assign n931_o = compressorout_bh6_32_32[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1734:46  */
    assign n932_o = compressorout_bh6_32_32[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1737:45  */
    assign n933_o = {heap_bh6_w39_7, heap_bh6_w39_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1737:62  */
    assign n934_o = {n933_o, heap_bh6_w39_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1740:23  */
    assign compressor_bh6_33_n935 = compressor_bh6_33_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1739:7  */
    compressor_13_3 compressor_bh6_33(
        .x0(compressorin_bh6_33_65),
        .x1(compressorin_bh6_33_66),
        .r(compressor_bh6_33_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1743:46  */
    assign n938_o = compressorout_bh6_33_33[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1744:46  */
    assign n939_o = compressorout_bh6_33_33[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1745:46  */
    assign n940_o = compressorout_bh6_33_33[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1748:45  */
    assign n941_o = {heap_bh6_w44_5, heap_bh6_w44_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1748:62  */
    assign n942_o = {n941_o, heap_bh6_w44_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1750:23  */
    assign compressor_bh6_34_n943 = compressor_bh6_34_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1749:7  */
    compressor_3_2 compressor_bh6_34(
        .x0(compressorin_bh6_34_67),
        .r(compressor_bh6_34_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1752:46  */
    assign n946_o = compressorout_bh6_34_34[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1753:45  */
    assign n947_o = compressorout_bh6_34_34[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1756:45  */
    assign n948_o = {heap_bh6_w36_9, heap_bh6_w36_8};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1756:62  */
    assign n949_o = {n948_o, heap_bh6_w36_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1757:46  */
    assign n950_o = {heap_bh6_w37_10, heap_bh6_w37_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1759:23  */
    assign compressor_bh6_35_n951 = compressor_bh6_35_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1758:7  */
    compressor_23_3 compressor_bh6_35(
        .x0(compressorin_bh6_35_68),
        .x1(compressorin_bh6_35_69),
        .r(compressor_bh6_35_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1762:46  */
    assign n954_o = compressorout_bh6_35_35[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1763:46  */
    assign n955_o = compressorout_bh6_35_35[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1764:46  */
    assign n956_o = compressorout_bh6_35_35[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1767:46  */
    assign n957_o = {heap_bh6_w38_12, heap_bh6_w38_11};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1767:64  */
    assign n958_o = {n957_o, heap_bh6_w38_10};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1768:46  */
    assign n959_o = {heap_bh6_w39_14, heap_bh6_w39_13};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1770:23  */
    assign compressor_bh6_36_n960 = compressor_bh6_36_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1769:7  */
    compressor_23_3 compressor_bh6_36(
        .x0(compressorin_bh6_36_70),
        .x1(compressorin_bh6_36_71),
        .r(compressor_bh6_36_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1773:46  */
    assign n963_o = compressorout_bh6_36_36[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1774:46  */
    assign n964_o = compressorout_bh6_36_36[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1775:46  */
    assign n965_o = compressorout_bh6_36_36[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1778:46  */
    assign n966_o = {heap_bh6_w40_14, heap_bh6_w40_13};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1778:64  */
    assign n967_o = {n966_o, heap_bh6_w40_12};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1779:46  */
    assign n968_o = {heap_bh6_w41_15, heap_bh6_w41_14};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1781:23  */
    assign compressor_bh6_37_n969 = compressor_bh6_37_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1780:7  */
    compressor_23_3 compressor_bh6_37(
        .x0(compressorin_bh6_37_72),
        .x1(compressorin_bh6_37_73),
        .r(compressor_bh6_37_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1784:46  */
    assign n972_o = compressorout_bh6_37_37[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1785:46  */
    assign n973_o = compressorout_bh6_37_37[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1786:46  */
    assign n974_o = compressorout_bh6_37_37[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1789:46  */
    assign n975_o = {heap_bh6_w42_12, heap_bh6_w42_11};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1789:64  */
    assign n976_o = {n975_o, heap_bh6_w42_10};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1790:46  */
    assign n977_o = {heap_bh6_w43_11, heap_bh6_w43_10};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1792:23  */
    assign compressor_bh6_38_n978 = compressor_bh6_38_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1791:7  */
    compressor_23_3 compressor_bh6_38(
        .x0(compressorin_bh6_38_74),
        .x1(compressorin_bh6_38_75),
        .r(compressor_bh6_38_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1795:46  */
    assign n981_o = compressorout_bh6_38_38[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1796:46  */
    assign n982_o = compressorout_bh6_38_38[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1797:46  */
    assign n983_o = compressorout_bh6_38_38[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1800:46  */
    assign n984_o = {heap_bh6_w44_11, heap_bh6_w44_10};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1800:64  */
    assign n985_o = {n984_o, heap_bh6_w44_9};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1801:45  */
    assign n986_o = {heap_bh6_w45_8, heap_bh6_w45_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1803:23  */
    assign compressor_bh6_39_n987 = compressor_bh6_39_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1802:7  */
    compressor_23_3 compressor_bh6_39(
        .x0(compressorin_bh6_39_76),
        .x1(compressorin_bh6_39_77),
        .r(compressor_bh6_39_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1806:46  */
    assign n990_o = compressorout_bh6_39_39[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1807:45  */
    assign n991_o = compressorout_bh6_39_39[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1808:45  */
    assign n992_o = compressorout_bh6_39_39[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1811:45  */
    assign n993_o = {heap_bh6_w47_6, heap_bh6_w47_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1811:62  */
    assign n994_o = {n993_o, heap_bh6_w47_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1812:45  */
    assign n995_o = {heap_bh6_w48_0, heap_bh6_w48_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1814:23  */
    assign compressor_bh6_40_n996 = compressor_bh6_40_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1813:7  */
    compressor_23_3 compressor_bh6_40(
        .x0(compressorin_bh6_40_78),
        .x1(compressorin_bh6_40_79),
        .r(compressor_bh6_40_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1817:45  */
    assign n999_o = compressorout_bh6_40_40[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1818:45  */
    assign n1000_o = compressorout_bh6_40_40[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1819:45  */
    assign n1001_o = compressorout_bh6_40_40[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1822:45  */
    assign n1002_o = {heap_bh6_w59_1, heap_bh6_w59_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1822:62  */
    assign n1003_o = {n1002_o, heap_bh6_w59_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1823:45  */
    assign n1004_o = {heap_bh6_w60_1, heap_bh6_w60_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1825:23  */
    assign compressor_bh6_41_n1005 = compressor_bh6_41_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1824:7  */
    compressor_23_3 compressor_bh6_41(
        .x0(compressorin_bh6_41_80),
        .x1(compressorin_bh6_41_81),
        .r(compressor_bh6_41_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1828:45  */
    assign n1008_o = compressorout_bh6_41_41[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1829:45  */
    assign n1009_o = compressorout_bh6_41_41[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1830:45  */
    assign n1010_o = compressorout_bh6_41_41[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1833:45  */
    assign n1011_o = {heap_bh6_w49_4, heap_bh6_w49_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1833:62  */
    assign n1012_o = {n1011_o, heap_bh6_w49_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1834:45  */
    assign n1013_o = {heap_bh6_w50_0, heap_bh6_w50_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1836:23  */
    assign compressor_bh6_42_n1014 = compressor_bh6_42_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1835:7  */
    compressor_23_3 compressor_bh6_42(
        .x0(compressorin_bh6_42_82),
        .x1(compressorin_bh6_42_83),
        .r(compressor_bh6_42_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1839:45  */
    assign n1017_o = compressorout_bh6_42_42[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1840:45  */
    assign n1018_o = compressorout_bh6_42_42[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1841:45  */
    assign n1019_o = compressorout_bh6_42_42[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1844:45  */
    assign n1020_o = {heap_bh6_w61_1, heap_bh6_w61_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1844:62  */
    assign n1021_o = {n1020_o, heap_bh6_w61_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1845:45  */
    assign n1022_o = {heap_bh6_w62_1, heap_bh6_w62_0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1847:23  */
    assign compressor_bh6_43_n1023 = compressor_bh6_43_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1846:7  */
    compressor_23_3 compressor_bh6_43(
        .x0(compressorin_bh6_43_84),
        .x1(compressorin_bh6_43_85),
        .r(compressor_bh6_43_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1850:45  */
    assign n1026_o = compressorout_bh6_43_43[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1851:45  */
    assign n1027_o = compressorout_bh6_43_43[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1852:45  */
    assign n1028_o = compressorout_bh6_43_43[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1855:45  */
    assign n1029_o = {heap_bh6_w46_6, heap_bh6_w46_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1855:62  */
    assign n1030_o = {n1029_o, heap_bh6_w46_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1858:23  */
    assign compressor_bh6_44_n1031 = compressor_bh6_44_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1857:7  */
    compressor_13_3 compressor_bh6_44(
        .x0(compressorin_bh6_44_86),
        .x1(compressorin_bh6_44_87),
        .r(compressor_bh6_44_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1861:45  */
    assign n1034_o = compressorout_bh6_44_44[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1862:45  */
    assign n1035_o = compressorout_bh6_44_44[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1863:45  */
    assign n1036_o = compressorout_bh6_44_44[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1867:48  */
    assign n1037_o = {heap_bh6_w51_4_d1, heap_bh6_w51_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1867:68  */
    assign n1038_o = {n1037_o, heap_bh6_w51_5_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1868:48  */
    assign n1039_o = {heap_bh6_w52_0_d1, heap_bh6_w52_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1870:23  */
    assign compressor_bh6_45_n1040 = compressor_bh6_45_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1869:7  */
    compressor_23_3 compressor_bh6_45(
        .x0(compressorin_bh6_45_88),
        .x1(compressorin_bh6_45_89),
        .r(compressor_bh6_45_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1873:45  */
    assign n1043_o = compressorout_bh6_45_45[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1874:45  */
    assign n1044_o = compressorout_bh6_45_45[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1875:45  */
    assign n1045_o = compressorout_bh6_45_45[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1879:48  */
    assign n1046_o = {heap_bh6_w63_1_d1, heap_bh6_w63_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1879:68  */
    assign n1047_o = {n1046_o, heap_bh6_w63_2_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1880:48  */
    assign n1048_o = {heap_bh6_w64_1_d1, heap_bh6_w64_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1882:23  */
    assign compressor_bh6_46_n1049 = compressor_bh6_46_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1881:7  */
    compressor_23_3 compressor_bh6_46(
        .x0(compressorin_bh6_46_90),
        .x1(compressorin_bh6_46_91),
        .r(compressor_bh6_46_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1885:45  */
    assign n1052_o = compressorout_bh6_46_46[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1886:45  */
    assign n1053_o = compressorout_bh6_46_46[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1887:45  */
    assign n1054_o = compressorout_bh6_46_46[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1891:48  */
    assign n1055_o = {heap_bh6_w48_3_d1, heap_bh6_w48_5_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1891:68  */
    assign n1056_o = {n1055_o, heap_bh6_w48_6_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1894:23  */
    assign compressor_bh6_47_n1057 = compressor_bh6_47_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1893:7  */
    compressor_13_3 compressor_bh6_47(
        .x0(compressorin_bh6_47_92),
        .x1(compressorin_bh6_47_93),
        .r(compressor_bh6_47_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1897:45  */
    assign n1060_o = compressorout_bh6_47_47[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1898:45  */
    assign n1061_o = compressorout_bh6_47_47[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1899:45  */
    assign n1062_o = compressorout_bh6_47_47[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1902:48  */
    assign n1063_o = {heap_bh6_w53_4_d1, heap_bh6_w53_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1902:68  */
    assign n1064_o = {n1063_o, heap_bh6_w53_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1903:48  */
    assign n1065_o = {heap_bh6_w54_0_d1, heap_bh6_w54_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1905:23  */
    assign compressor_bh6_48_n1066 = compressor_bh6_48_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1904:7  */
    compressor_23_3 compressor_bh6_48(
        .x0(compressorin_bh6_48_94),
        .x1(compressorin_bh6_48_95),
        .r(compressor_bh6_48_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1908:45  */
    assign n1069_o = compressorout_bh6_48_48[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1909:45  */
    assign n1070_o = compressorout_bh6_48_48[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1910:45  */
    assign n1071_o = compressorout_bh6_48_48[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1913:48  */
    assign n1072_o = {heap_bh6_w55_4_d1, heap_bh6_w55_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1913:68  */
    assign n1073_o = {n1072_o, heap_bh6_w55_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1914:48  */
    assign n1074_o = {heap_bh6_w56_0_d1, heap_bh6_w56_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1916:23  */
    assign compressor_bh6_49_n1075 = compressor_bh6_49_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1915:7  */
    compressor_23_3 compressor_bh6_49(
        .x0(compressorin_bh6_49_96),
        .x1(compressorin_bh6_49_97),
        .r(compressor_bh6_49_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1919:45  */
    assign n1078_o = compressorout_bh6_49_49[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1920:45  */
    assign n1079_o = compressorout_bh6_49_49[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1921:45  */
    assign n1080_o = compressorout_bh6_49_49[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1924:48  */
    assign n1081_o = {heap_bh6_w57_4_d1, heap_bh6_w57_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1924:68  */
    assign n1082_o = {n1081_o, heap_bh6_w57_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1927:23  */
    assign compressor_bh6_50_n1083 = compressor_bh6_50_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1926:7  */
    compressor_13_3 compressor_bh6_50(
        .x0(compressorin_bh6_50_98),
        .x1(compressorin_bh6_50_99),
        .r(compressor_bh6_50_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1930:45  */
    assign n1086_o = compressorout_bh6_50_50[0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1931:45  */
    assign n1087_o = compressorout_bh6_50_50[1];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1932:45  */
    assign n1088_o = compressorout_bh6_50_50[2];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:29  */
    assign n1090_o = {1'b0, heap_bh6_w81_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:49  */
    assign n1091_o = {n1090_o, heap_bh6_w80_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:69  */
    assign n1092_o = {n1091_o, heap_bh6_w79_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:89  */
    assign n1093_o = {n1092_o, heap_bh6_w78_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:109  */
    assign n1094_o = {n1093_o, heap_bh6_w77_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:129  */
    assign n1095_o = {n1094_o, heap_bh6_w76_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:149  */
    assign n1096_o = {n1095_o, heap_bh6_w75_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:169  */
    assign n1097_o = {n1096_o, heap_bh6_w74_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:189  */
    assign n1098_o = {n1097_o, heap_bh6_w73_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:209  */
    assign n1099_o = {n1098_o, heap_bh6_w72_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:229  */
    assign n1100_o = {n1099_o, heap_bh6_w71_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:249  */
    assign n1101_o = {n1100_o, heap_bh6_w70_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:269  */
    assign n1102_o = {n1101_o, heap_bh6_w69_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:289  */
    assign n1103_o = {n1102_o, heap_bh6_w68_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:309  */
    assign n1104_o = {n1103_o, heap_bh6_w67_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:329  */
    assign n1105_o = {n1104_o, heap_bh6_w66_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:349  */
    assign n1106_o = {n1105_o, heap_bh6_w65_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:369  */
    assign n1107_o = {n1106_o, heap_bh6_w64_2};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:386  */
    assign n1108_o = {n1107_o, heap_bh6_w63_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:403  */
    assign n1109_o = {n1108_o, heap_bh6_w62_2_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:423  */
    assign n1110_o = {n1109_o, heap_bh6_w61_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:443  */
    assign n1111_o = {n1110_o, heap_bh6_w60_2_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:463  */
    assign n1112_o = {n1111_o, heap_bh6_w59_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:483  */
    assign n1113_o = {n1112_o, heap_bh6_w58_3};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:500  */
    assign n1114_o = {n1113_o, heap_bh6_w57_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:517  */
    assign n1115_o = {n1114_o, heap_bh6_w56_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:534  */
    assign n1116_o = {n1115_o, heap_bh6_w55_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:551  */
    assign n1117_o = {n1116_o, heap_bh6_w54_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:568  */
    assign n1118_o = {n1117_o, heap_bh6_w53_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:585  */
    assign n1119_o = {n1118_o, heap_bh6_w52_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:602  */
    assign n1120_o = {n1119_o, heap_bh6_w51_6};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:619  */
    assign n1121_o = {n1120_o, heap_bh6_w50_4_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:639  */
    assign n1122_o = {n1121_o, heap_bh6_w49_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:656  */
    assign n1123_o = {n1122_o, heap_bh6_w48_7};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:673  */
    assign n1124_o = {n1123_o, heap_bh6_w47_8_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:693  */
    assign n1125_o = {n1124_o, heap_bh6_w46_8_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:713  */
    assign n1126_o = {n1125_o, heap_bh6_w45_6_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:733  */
    assign n1127_o = {n1126_o, heap_bh6_w44_13_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:754  */
    assign n1128_o = {n1127_o, heap_bh6_w43_9_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:774  */
    assign n1129_o = {n1128_o, heap_bh6_w42_14_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:795  */
    assign n1130_o = {n1129_o, heap_bh6_w41_13_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:816  */
    assign n1131_o = {n1130_o, heap_bh6_w40_16_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:837  */
    assign n1132_o = {n1131_o, heap_bh6_w39_12_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:858  */
    assign n1133_o = {n1132_o, heap_bh6_w38_14_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:879  */
    assign n1134_o = {n1133_o, heap_bh6_w37_8_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:899  */
    assign n1135_o = {n1134_o, heap_bh6_w36_10_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:920  */
    assign n1136_o = {n1135_o, heap_bh6_w35_8_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:940  */
    assign n1137_o = {n1136_o, heap_bh6_w34_5_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:960  */
    assign n1138_o = {n1137_o, heap_bh6_w33_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:980  */
    assign n1139_o = {n1138_o, heap_bh6_w32_4_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1000  */
    assign n1140_o = {n1139_o, heap_bh6_w31_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1020  */
    assign n1141_o = {n1140_o, heap_bh6_w30_4_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1040  */
    assign n1142_o = {n1141_o, heap_bh6_w29_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1060  */
    assign n1143_o = {n1142_o, heap_bh6_w28_4_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1080  */
    assign n1144_o = {n1143_o, heap_bh6_w27_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1100  */
    assign n1145_o = {n1144_o, heap_bh6_w26_4_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1120  */
    assign n1146_o = {n1145_o, heap_bh6_w25_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1140  */
    assign n1147_o = {n1146_o, heap_bh6_w24_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1160  */
    assign n1148_o = {n1147_o, heap_bh6_w23_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1180  */
    assign n1149_o = {n1148_o, heap_bh6_w22_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1200  */
    assign n1150_o = {n1149_o, heap_bh6_w21_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1220  */
    assign n1151_o = {n1150_o, heap_bh6_w20_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1240  */
    assign n1152_o = {n1151_o, heap_bh6_w19_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1260  */
    assign n1153_o = {n1152_o, heap_bh6_w18_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1934:1280  */
    assign n1154_o = {n1153_o, heap_bh6_w17_1_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:125  */
    assign n1156_o = {17'b00000000000000000, heap_bh6_w65_1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:142  */
    assign n1158_o = {n1156_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:148  */
    assign n1160_o = {n1158_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:154  */
    assign n1162_o = {n1160_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:160  */
    assign n1164_o = {n1162_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:166  */
    assign n1166_o = {n1164_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:172  */
    assign n1167_o = {n1166_o, heap_bh6_w59_4};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:189  */
    assign n1169_o = {n1167_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:195  */
    assign n1171_o = {n1169_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:201  */
    assign n1173_o = {n1171_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:207  */
    assign n1175_o = {n1173_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:213  */
    assign n1177_o = {n1175_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:219  */
    assign n1179_o = {n1177_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:225  */
    assign n1181_o = {n1179_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:231  */
    assign n1183_o = {n1181_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:237  */
    assign n1184_o = {n1183_o, heap_bh6_w50_5};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:254  */
    assign n1186_o = {n1184_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:260  */
    assign n1188_o = {n1186_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:266  */
    assign n1190_o = {n1188_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:272  */
    assign n1192_o = {n1190_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:278  */
    assign n1193_o = {n1192_o, heap_bh6_w45_9_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:298  */
    assign n1194_o = {n1193_o, heap_bh6_w44_12_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:319  */
    assign n1195_o = {n1194_o, heap_bh6_w43_12_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:340  */
    assign n1196_o = {n1195_o, heap_bh6_w42_13_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:361  */
    assign n1197_o = {n1196_o, heap_bh6_w41_16_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:382  */
    assign n1198_o = {n1197_o, heap_bh6_w40_15_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:403  */
    assign n1199_o = {n1198_o, heap_bh6_w39_15_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:424  */
    assign n1200_o = {n1199_o, heap_bh6_w38_13_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:445  */
    assign n1201_o = {n1200_o, heap_bh6_w37_11_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:466  */
    assign n1203_o = {n1201_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:472  */
    assign n1204_o = {n1203_o, heap_bh6_w35_7_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:492  */
    assign n1205_o = {n1204_o, heap_bh6_w34_4_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:512  */
    assign n1206_o = {n1205_o, heap_bh6_w33_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:532  */
    assign n1207_o = {n1206_o, heap_bh6_w32_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:552  */
    assign n1208_o = {n1207_o, heap_bh6_w31_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:572  */
    assign n1209_o = {n1208_o, heap_bh6_w30_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:592  */
    assign n1210_o = {n1209_o, heap_bh6_w29_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:612  */
    assign n1211_o = {n1210_o, heap_bh6_w28_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:632  */
    assign n1212_o = {n1211_o, heap_bh6_w27_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:652  */
    assign n1213_o = {n1212_o, heap_bh6_w26_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:672  */
    assign n1214_o = {n1213_o, heap_bh6_w25_3_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:692  */
    assign n1216_o = {n1214_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:698  */
    assign n1217_o = {n1216_o, heap_bh6_w23_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:718  */
    assign n1218_o = {n1217_o, heap_bh6_w22_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:738  */
    assign n1219_o = {n1218_o, heap_bh6_w21_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:758  */
    assign n1220_o = {n1219_o, heap_bh6_w20_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:778  */
    assign n1221_o = {n1220_o, heap_bh6_w19_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:798  */
    assign n1222_o = {n1221_o, heap_bh6_w18_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1935:818  */
    assign n1223_o = {n1222_o, heap_bh6_w17_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1941:23  */
    assign adder_final6_0_n1225 = adder_final6_0_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1937:7  */
    intadder_66_f300_uid138 adder_final6_0(
        .clk(clk),
        .rst(rst),
        .x(finaladderin0_bh6),
        .y(finaladderin1_bh6),
        .cin(finaladdercin_bh6),
        .r(adder_final6_0_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1945:44  */
    assign n1228_o = {finaladderout_bh6, tempr_bh6_0_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:1947:27  */
    assign n1229_o = compressionresult6[81:0];
endmodule

module fmul
    (input clk,
        input rst,
        input[52:0] X,
        input[52:0] Y,
        output[52:0] R);
    wire sign;
    wire sign_d1;
    wire[9:0] expx;
    wire[9:0] expy;
    wire[11:0] expsumpresub;
    wire[11:0] bias;
    wire[11:0] expsum;
    wire[11:0] expsum_d1;
    wire[40:0] sigx;
    wire[40:0] sigy;
    wire[81:0] sigprod;
    wire[3:0] excsel;
    wire[1:0] exc;
    wire[1:0] exc_d1;
    wire norm;
    wire[11:0] exppostnorm;
    wire[81:0] sigprodext;
    wire[51:0] expsig;
    wire sticky;
    wire guard;
    wire round;
    wire[51:0] expsigpostround;
    wire[1:0] excpostnorm;
    wire[1:0] finalexc;
    reg n8_q;
    reg[11:0] n9_q;
    reg[1:0] n10_q;
    wire n11_o;
    wire n12_o;
    wire n13_o;
    wire[9:0] n14_o;
    wire[9:0] n15_o;
    wire[11:0] n17_o;
    wire[11:0] n19_o;
    wire[11:0] n20_o;
    wire[11:0] n22_o;
    wire[39:0] n23_o;
    wire[40:0] n25_o;
    wire[39:0] n26_o;
    wire[40:0] n28_o;
    wire[81:0] significandmultiplication_n29;
    wire[81:0] significandmultiplication_r;
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
    wire[11:0] n61_o;
    wire[11:0] n62_o;
    wire[80:0] n63_o;
    wire[81:0] n65_o;
    wire[81:0] n66_o;
    wire[79:0] n67_o;
    wire[81:0] n69_o;
    wire[39:0] n70_o;
    wire[51:0] n71_o;
    wire n72_o;
    wire[40:0] n74_o;
    wire n76_o;
    wire n77_o;
    wire n79_o;
    wire n80_o;
    wire n81_o;
    wire n82_o;
    wire n83_o;
    wire n84_o;
    localparam [51:0] n85_o = 52'b0000000000000000000000000000000000000000000000000000;
    wire[51:0] roundingadder_n86;
    wire[51:0] roundingadder_r;
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
    wire[49:0] n115_o;
    wire[52:0] n116_o;
    assign R = n116_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2026:8  */
    assign sign = n13_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2026:14  */
    assign sign_d1 = n8_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2027:8  */
    assign expx = n14_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2028:8  */
    assign expy = n15_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2029:8  */
    assign expsumpresub = n20_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2030:8  */
    assign bias = 12'b000111111111; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2031:8  */
    assign expsum = n22_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2031:16  */
    assign expsum_d1 = n9_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2032:8  */
    assign sigx = n25_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2033:8  */
    assign sigy = n28_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2034:8  */
    assign sigprod = significandmultiplication_n29; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2035:8  */
    assign excsel = n34_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2036:8  */
    assign exc = n58_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2036:13  */
    assign exc_d1 = n10_q; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2037:8  */
    assign norm = n59_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2038:8  */
    assign exppostnorm = n62_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2039:8  */
    assign sigprodext = n66_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2040:8  */
    assign expsig = n71_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2041:8  */
    assign sticky = n72_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2042:8  */
    assign guard = n77_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2043:8  */
    assign round = n84_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2044:8  */
    assign expsigpostround = roundingadder_n86; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2045:8  */
    assign excpostnorm = n104_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2046:8  */
    assign finalexc = n113_o; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2050:10  */
    always @(posedge clk)
        n8_q <= sign;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2050:10  */
    always @(posedge clk)
        n9_q <= expsum;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2050:10  */
    always @(posedge clk)
        n10_q <= exc;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2056:13  */
    assign n11_o = X[50];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2056:23  */
    assign n12_o = Y[50];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2056:18  */
    assign n13_o = n11_o ^ n12_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2057:13  */
    assign n14_o = X[49:40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2058:13  */
    assign n15_o = Y[49:40];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2059:26  */
    assign n17_o = {2'b00, expx};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2059:42  */
    assign n19_o = {2'b00, expy};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2059:34  */
    assign n20_o = n17_o+n19_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2061:27  */
    assign n22_o = expsumpresub-bias;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2063:19  */
    assign n23_o = X[39:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2063:16  */
    assign n25_o = {1'b1, n23_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2064:19  */
    assign n26_o = Y[39:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2064:16  */
    assign n28_o = {1'b1, n26_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2068:23  */
    assign significandmultiplication_n29 = significandmultiplication_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2065:4  */
    intmultiplier_usingdsp_41_41_82_unsigned_f300_uid4 significandmultiplication(
        .clk(clk),
        .rst(rst),
        .x(sigx),
        .y(sigy),
        .r(significandmultiplication_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2073:15  */
    assign n32_o = X[52:51];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2073:33  */
    assign n33_o = Y[52:51];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2073:30  */
    assign n34_o = {n32_o, n33_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2075:16  */
    assign n37_o = excsel == 4'b0000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2075:29  */
    assign n39_o = excsel == 4'b0001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2075:29  */
    assign n40_o = n37_o | n39_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2075:38  */
    assign n42_o = excsel == 4'b0100;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2075:38  */
    assign n43_o = n40_o | n42_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2076:16  */
    assign n46_o = excsel == 4'b0101;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2077:16  */
    assign n49_o = excsel == 4'b0110;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2077:28  */
    assign n51_o = excsel == 4'b1001;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2077:28  */
    assign n52_o = n49_o | n51_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2077:37  */
    assign n54_o = excsel == 4'b1010;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2077:37  */
    assign n55_o = n52_o | n54_o;
    assign n57_o = {n55_o, n46_o, n43_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2074:4  */
    always @*
        case (n57_o)
            3'b100: n58_o <= 2'b10;
            3'b010: n58_o <= 2'b01;
            3'b001: n58_o <= 2'b00;
            default: n58_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2080:19  */
    assign n59_o = sigprod[81];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2082:46  */
    assign n61_o = {11'b00000000000, norm};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2082:29  */
    assign n62_o = expsum_d1+n61_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2085:25  */
    assign n63_o = sigprod[80:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2085:39  */
    assign n65_o = {n63_o, 1'b0};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2085:45  */
    assign n66_o = norm ? n65_o : n69_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2086:33  */
    assign n67_o = sigprod[79:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2086:47  */
    assign n69_o = {n67_o, 2'b00};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2087:38  */
    assign n70_o = sigprodext[81:42];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2087:26  */
    assign n71_o = {exppostnorm, n70_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2088:24  */
    assign n72_o = sigprodext[41];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2089:32  */
    assign n74_o = sigprodext[40:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2089:45  */
    assign n76_o = n74_o == 41'b00000000000000000000000000000000000000000;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2089:17  */
    assign n77_o = n76_o ? 1'b0 : 1'b1;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2090:51  */
    assign n79_o = sigprodext[42];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2090:37  */
    assign n80_o = ~n79_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2090:33  */
    assign n81_o = guard & n80_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2090:72  */
    assign n82_o = sigprodext[42];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2090:58  */
    assign n83_o = n81_o | n82_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2090:20  */
    assign n84_o = sticky & n83_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2095:23  */
    assign roundingadder_n86 = roundingadder_r; // (signal)
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2091:7  */
    intadder_52_f300_uid148 roundingadder(
        .clk(clk),
        .rst(rst),
        .x(expsig),
        .y(n85_o),
        .cin(round),
        .r(roundingadder_r));
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2098:24  */
    assign n89_o = expsigpostround[51:50];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2099:26  */
    assign n92_o = n89_o == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2100:49  */
    assign n95_o = n89_o == 2'b01;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2101:49  */
    assign n98_o = n89_o == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2101:58  */
    assign n100_o = n89_o == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2101:58  */
    assign n101_o = n98_o | n100_o;
    assign n103_o = {n101_o, n95_o, n92_o};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2098:4  */
    always @*
        case (n103_o)
            3'b100: n104_o <= 2'b00;
            3'b010: n104_o <= 2'b10;
            3'b001: n104_o <= 2'b01;
            default: n104_o <= 2'b11;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2104:23  */
    assign n106_o = exc_d1 == 2'b11;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2104:33  */
    assign n108_o = exc_d1 == 2'b10;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2104:33  */
    assign n109_o = n106_o | n108_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2104:38  */
    assign n111_o = exc_d1 == 2'b00;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2104:38  */
    assign n112_o = n109_o | n111_o;
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2103:4  */
    always @*
        case (n112_o)
            1'b1: n113_o <= exc_d1;
            default: n113_o <= excpostnorm;
        endcase
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2106:18  */
    assign n114_o = {finalexc, sign_d1};
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2106:45  */
    assign n115_o = expsigpostround[49:0];
    /* /Users/mlevental/dev_projects/bragghls/scripts/../bragghls/ip_cores/flopoco_fmul_10_40.vhdl:2106:28  */
    assign n116_o = {n114_o, n115_o};
endmodule

