module Qbert(sync_v, sync_h, r, g, b, clk_50, led, button1, button2, button3, button4);

output sync_v, sync_h;
output [0:3] r, g, b;
output [0:6] led;
input clk_50;
input button1, button2, button3, button4;
wire clk_25;
wire [0:9]Px,Py, i, centro_x, centro_y;
wire rombo1, rombo2, rombo3, rombo4, rombo5, rombo6, rombo7, rombo8,rombo9, rombo10, rombo11,rombo12, rombo13, rombo14, rombo15;
wire [0:2] lives;
wire lost, ganar;


Clk25(clk_50, clk_25);
avance(clk_25, button1, button2, button3, button4, Px, Py, i, centro_x, centro_y,rombo1, rombo2, rombo3, rombo4, rombo5, rombo6, rombo7, rombo8,rombo9, rombo10, rombo11,rombo12, rombo13, rombo14, rombo15, rombo16, rombo17, rombo18, rombo19, rombo20, rombo21, led, lost, ganar);
piramide(clk_25, Px, Py, i, centro_x, centro_y, rombo1, rombo2, rombo3, rombo4, rombo5, rombo6, rombo7, rombo8,rombo9, rombo10, rombo11,rombo12, rombo13, rombo14, rombo15, rombo16, rombo17, rombo18, rombo19, rombo20, rombo21, lost, ganar, sync_h, sync_v, r, g, b);
endmodule