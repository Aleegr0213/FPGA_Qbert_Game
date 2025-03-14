module avance(clk_25, button1, button2, button3, button4, Px, Py, i, centro_x, centro_y,rombo1, rombo2, rombo3, rombo4, rombo5, rombo6, rombo7, rombo8,rombo9, rombo10, rombo11,rombo12, rombo13, rombo14, rombo15, rombo16, rombo17, rombo18, rombo19, rombo20, rombo21, led, lost, ganar);

input clk_25;
input button1, button2, button3, button4;
output reg[0:9] Px;
output reg[0:9] Py;
output reg[0:9] i;
output reg[9:0] centro_x;
output reg[9:0] centro_y;
output reg rombo1, rombo2, rombo3, rombo4, rombo5, rombo6, rombo7, rombo8, rombo9, rombo10, rombo11, rombo12, rombo13, rombo14, rombo15, rombo16, rombo17, rombo18, rombo19, rombo20, rombo21;  
output reg [0:6] led;
output reg lost, ganar;
reg [2:0] lives; 
reg button1_last;
reg button2_last;
reg button3_last; 
reg button4_last;
reg state;
reg reinicio;
 
/*lado derecho de la piramide*/
parameter x = 464;
parameter xa= 484;
parameter xb= 504;
parameter xc= 524;
parameter xd= 544;
parameter xe= 564;
parameter xf= 584;
/*lado izquierdo*/
parameter oa= 444;
parameter ob= 424;
parameter oc= 404;
parameter od= 384;
parameter oe= 364;
parameter of= 344;

/*niveles*/
parameter ya=100;
parameter yb=120;
parameter yc=140;
parameter yd=160;
parameter ye=180;
parameter yf=200;
parameter yg=220;
parameter yh=240;
parameter yi=260;
parameter yj=280;
parameter yk=300;
parameter yl=320;
parameter ym=340;
initial begin
    Px = 0;
    Py = 0;
    i = 0;
    centro_x = x;
    centro_y = ya;
	 rombo1 = 0;
	 rombo2 = 0;
	 rombo3 = 0;
	 rombo4 = 0;
	 rombo5 = 0;
	 rombo6 = 0;
	 rombo7 = 0;
	 rombo8 = 0;
	 rombo9 = 0;
	 rombo10 = 0;
	 rombo11 = 0;
	 rombo12 = 0;
	 rombo13 = 0;
	 rombo14 = 0;
	 rombo15 = 0;
	 rombo16 = 0;
	 rombo17 = 0;
	 rombo18 = 0;
	 rombo19 = 0;
	 rombo20 = 0;
	 rombo21 = 0;
    button1_last = 1; 
    button2_last = 1;
    button3_last = 1;
    button4_last = 1;
	 state = 0;
	 lives = 5;
	 ganar=0;
	 lost =0;
	 reinicio= 0;
end
always @(posedge clk_25) begin
    if ((Py > 100 || Py < 400) && ((Py % 20) == 0)) begin
        i = 0;
    end

    if (Px < 800) begin
        Px = Px + 1;
    end else begin
        Px = 0;
        i = i + 1;
        if (Py < 525) begin
            Py = Py + 1;
        end else begin
            Py = 0;
        end
    end
	 
	 //Botones
	 if (button1 != button1_last) begin
        button1_last = button1;
        if (button1 == 0) begin
            centro_x = centro_x + 20;
            centro_y = centro_y - 40;
        end
    end

    if (button2 != button2_last) begin
        button2_last = button2;
        if (button2 == 0) begin
            centro_x = centro_x + 20;
            centro_y = centro_y + 40;
        end
    end

    if (button3 != button3_last) begin
        button3_last = button3;
        if (button3 == 0) begin
            centro_x = centro_x - 20;
            centro_y = centro_y + 40;
        end
    end

    if (button4 != button4_last) begin
        button4_last = button4;
        if (button4 == 0) begin
            centro_x = centro_x - 20;
            centro_y = centro_y - 40;
        end
    end

	 //vidas
	//rombo1
	 if(centro_x==x && centro_y == yb)begin
		state = 1;
		end
	 //rombo2
	 else if(centro_x==oa && centro_y == yd)begin
		state = 1;
		end
	 //rombo3
	 else if(centro_x==xa && centro_y == yd)begin
		state = 1;
		end
	//rombo4
	else if(centro_x==ob && centro_y == yf)begin
		state = 1;
		end
	//rombo5
	else if(centro_x==x && centro_y == yf)begin
		state = 1;
		end
	//rombo6
	else if(centro_x==xb && centro_y == yf)begin
		state = 1;
		end
	//rombo7
	else if(centro_x==oc && centro_y == yh)begin
		state = 1;
		end
	//rombo8
	else if(centro_x==oa && centro_y == yh)begin
		state = 1;
		end
	//rombo9
	else if(centro_x==xa && centro_y == yh)begin
		state = 1;
		end
	//rombo10
	else if(centro_x==xc && centro_y == yh)begin
		state = 1;
		end
	//rombo11
	else if(centro_x==od && centro_y == yj)begin
		state = 1;
		end
	//rombo12
	else if(centro_x==ob && centro_y == yj)begin
		state = 1;
		end
	//rombo13
	else if(centro_x==x && centro_y == yj)begin
		state = 1;
		end
	//rombo14
	else if(centro_x==xb && centro_y == yj)begin
		state = 1;
		end
	//rombo15
	else if(centro_x==xd && centro_y == yj)begin
		state = 1;
		end
	//rombo16
	else if(centro_x==oe && centro_y == yl)begin
		state = 1;
		end
	//rombo17
	else if(centro_x==oc && centro_y == yl)begin
		state = 1;
		end
	//rombo18
	else if(centro_x==oa && centro_y == yl)begin
		state = 1;
		end
	//rombo19
	else if(centro_x==xa && centro_y == yl)begin
		state = 1;
		end
	//rombo20
	else if(centro_x==xc && centro_y == yl)begin
		state = 1;
		end
	//rombo21
	else if(centro_x==xe && centro_y == yl)begin
		state = 1;
		end
	else begin
		state = 0;
		end

	//colisiones
	//rombo1
	 if(centro_x==x && centro_y == yb)begin
		rombo1 = 1;
		end
	 else begin
		rombo1 = rombo1;
		end
	 
	 //rombo2
	 if(centro_x==oa && centro_y == yd)begin
		rombo2 = 1;
		end
	 else begin
		rombo2 = rombo2;
		end

	 //rombo3
	 if(centro_x==xa && centro_y == yd)begin
		rombo3 = 1;
		end
	 else begin
		rombo3 = rombo3;
		end
		
	//rombo4
	if(centro_x==ob && centro_y == yf)begin
		rombo4 = 1;
		end
	 else begin
		rombo4 = rombo4;
		end
	
	//rombo5
	if(centro_x==x && centro_y == yf)begin
		rombo5 = 1;
		end
	else begin
		rombo5 = rombo5;
		end

	//rombo6
	if(centro_x==xb && centro_y == yf)begin
		rombo6 = 1;
		end
	else begin
		rombo6 = rombo6;
		end
	 
	//rombo7
	if(centro_x==oc && centro_y == yh)begin
		rombo7 = 1;
		end
	else begin
		rombo7 = rombo7;
		end
	 
	//rombo8
	if(centro_x==oa && centro_y == yh)begin
		rombo8 = 1;
		end
	else begin
		rombo8 = rombo8;
		end
		
	//rombo9
	if(centro_x==xa && centro_y == yh)begin
		rombo9 = 1;
		end
	else begin
		rombo9 = rombo9;
		end
	
	//rombo10
	if(centro_x==xc && centro_y == yh)begin
		rombo10 = 1;
		end
	else begin
		rombo10 = rombo10;
		end
	
	//rombo11
	if(centro_x==od && centro_y == yj)begin
		rombo11 = 1;
		end
	else begin
		rombo11 = rombo11;
		end
	 
	//rombo12
	if(centro_x==ob && centro_y == yj)begin
		rombo12 = 1;
		end
	else begin
		rombo12 = rombo12;
		end
		
	//rombo13
	if(centro_x==x && centro_y == yj)begin
		rombo13 = 1;
		end
	else begin
		rombo13 = rombo13;
		end
		
	//rombo14
	if(centro_x==xb && centro_y == yj)begin
		rombo14 = 1;
		end
	else begin
		rombo14 = rombo14;
		end
	
	//rombo15
	if(centro_x==xd && centro_y == yj)begin
		rombo15 = 1;
		end
	else begin
		rombo15 = rombo15;
		end
	 
	//rombo16
	if(centro_x==oe && centro_y == yl)begin
		rombo16 = 1;
		end
	else begin
		rombo16 = rombo16;
		end
	
	//rombo17
	if(centro_x==oc && centro_y == yl)begin
		rombo17 = 1;
		end
	else begin
		rombo17 = rombo17;
		end
	 
	//rombo18
	if(centro_x==oa && centro_y == yl)begin
		rombo18 = 1;
		end
	else begin
		rombo18 = rombo18;
		end
	 
	//rombo19
	if(centro_x==xa && centro_y == yl)begin
		rombo19 = 1;
		end
	else begin
		rombo19 = rombo19;
		end
	
	//rombo20
	if(centro_x==xc && centro_y == yl)begin
		rombo20 = 1;
		end
	else begin
		rombo20 = rombo20;
		end
	
	//rombo21
	if(centro_x==xe && centro_y == yl)begin
		rombo21 = 1;
		end
	else begin
		rombo21 = rombo21;
		end
		
	if(state == 0)begin
		lives = lives-1;
		centro_x = x;
		centro_y = yb;
		end
	else begin
		lives= lives;
		end
	
	if (lives < 1) begin
       led = 7'b0000001; // Vida = 0
		 lost = 1;
		 reinicio =1;
    end
    else if (lives == 1) begin
      led = 7'b1001111; // Vida = 1
		lost = 0;
    end
    else if (lives == 2) begin
      led = 7'b0010010; // Vida = 2
		lost = 0;
    end
    else if (lives == 3) begin
      led = 7'b0000110; // Vida = 3
		lost = 0;
		else if (lives == 5) begin
      led = 7'b0000110; // Vida = 3
		lost = 0;
		end
    end
    else begin
      led = 7'b11111111;
    end
	 if(rombo1==1 && rombo2==1 && rombo3==1 && rombo4==1 && rombo5==1 && rombo6==1 && rombo7==1 && rombo8==1 && rombo9==1 
		 && rombo10==1 && rombo11==1 && rombo12==1 && rombo13==1 && rombo14==1 && rombo15==1 && rombo16==1 && rombo17==1 
		 && rombo18==1 && rombo19==1 && rombo20==1 && rombo21==1 && lives!=0)begin
		 ganar = 1;
		 reinicio=1;
		 end

	 end
endmodule