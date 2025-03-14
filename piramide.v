module piramide(clk_25, Px, Py, i, centro_x, centro_y, rombo1, rombo2, rombo3, rombo4, rombo5, rombo6, rombo7, rombo8,rombo9, rombo10, rombo11,rombo12, rombo13, rombo14, rombo15, rombo16, rombo17, rombo18, rombo19, rombo20, rombo21, lost, ganar, sync_h, sync_v, r, g, b);
input clk_25;
input [9:0] Px, Py, i, centro_x, centro_y;
input rombo1, rombo2, rombo3, rombo4, rombo5, rombo6, rombo7, rombo8,rombo9, rombo10, rombo11,rombo12, rombo13, rombo14, rombo15, rombo16, rombo17, rombo18, rombo19, rombo20, rombo21;
input lost, ganar;
output reg sync_h, sync_v;
output reg [3:0] r, g, b;
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

always @(posedge clk_25) begin
    if (Px >= 0 && Px <= 96) begin
        sync_h = 1;
    end else begin
        sync_h = 0;
    end

    if (Py >= 0 && Py <= 2) begin 
        sync_v = 1;
    end else begin
        sync_v = 0;
    end
	if((((Px-centro_x)*(Px-centro_x))+((Py-centro_y)*(Py-centro_y))<100)) begin
		r = 15;
		g = 0;
		b = 0;
		end
 /*Rombos*/
	 /*rombo1*/
	else if(Py >= ya && Py < yb && Px >= (x-i) && Px <= (x+i)) begin
		if(rombo1 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
		
	else if(Py >= yb && Py < yc && Px >= ((x-20) + i) && Px <= ((x+20) - i)) begin
		if(rombo1 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end

	 /*rombo2*/
	else if(Py>=yc && Py < yd && Px >= (oa-i) && Px <= (oa+i)) begin
		if(rombo2 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yd && Py < ye && Px >= ((oa-20) + i) && Px <= ((oa+20) - i)) begin
		if(rombo2 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	
	 /*rombo3*/
	else if(Py>=yc && Py < yd && Px >= (xa-i) && Px <= (xa+i)) begin
		if(rombo3 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yd && Py < ye && Px >= ((xa-20) + i) && Px <= ((xa+20) - i)) begin
		if(rombo3 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	
	/*rombo4*/
	else if(Py>=ye && Py < yf && Px >= (ob-i) && Px <= (ob+i)) begin
		if(rombo4 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	 else if(Py >= yf && Py < yg && Px >= ((ob-20) + i) && Px <= ((ob+20) - i)) begin
		if(rombo4 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
		
	/*rombo5*/
	else if(Py>=ye && Py < yf && Px >= (x-i) && Px <= (x+i)) begin
		if(rombo5 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	 else if(Py >= yf && Py < yg && Px >= ((x-20) + i) && Px <= ((x+20) - i)) begin
		if(rombo5 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
		
	/*rombo6*/
	else if(Py>=ye && Py < yf && Px >= (xb-i) && Px <= (xb+i)) begin
		if(rombo6 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yf && Py < yg && Px >= ((xb-20) + i) && Px <= ((xb+20) - i)) begin
		if(rombo6 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
		
	/*rombo7*/
	else if(Py>=yg && Py < yh && Px >= (oc-i) && Px <= (oc+i)) begin
		if(rombo7 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yh && Py < yi && Px >= ((oc-20) + i) && Px <= ((oc+20) - i)) begin
		if(rombo7 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
		
	/*rombo8*/
	else if(Py>=yg && Py < yh && Px >= (oa-i) && Px <= (oa+i)) begin
		if(rombo8 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yh && Py < yi && Px >= ((oa-20) + i) && Px <= ((oa+20) - i)) begin
		if(rombo8 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo9*/
	else if(Py>=yg && Py < yh && Px >= (xa-i) && Px <= (xa+i)) begin
		if(rombo9 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yh && Py < yi && Px >= ((xa-20) + i) && Px <= ((xa+20) - i)) begin
		if(rombo9 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo10*/
	else if(Py>=yg && Py < yh && Px >= (xc-i) && Px <= (xc+i)) begin
		if(rombo10 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yh && Py < yi && Px >= ((xc-20) + i) && Px <= ((xc+20) - i)) begin
		if(rombo10 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo11*/
	else if(Py>=yi && Py < yj && Px >= (od-i) && Px <= (od+i)) begin
		if(rombo11 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yj && Py < yk && Px >= ((od-20) + i) && Px <= ((od+20) - i)) begin
		if(rombo11 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo12*/
	else if(Py>=yi && Py < yj && Px >= (ob-i) && Px <= (ob+i)) begin
		if(rombo12 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yj && Py < yk && Px >= ((ob-20) + i) && Px <= ((ob+20) - i)) begin
		if(rombo12 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	
	/*rombo13*/
	else if(Py>=yi && Py < yj && Px >= (x-i) && Px <= (x+i)) begin
		if(rombo13 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yj && Py < yk && Px >= ((x-20) + i) && Px <= ((x+20) - i)) begin
		if(rombo13 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo14*/
	else if(Py>=yi && Py < yj && Px >= (xb-i) && Px <= (xb+i)) begin
		if(rombo14 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yj && Py < yk && Px >= ((xb-20) + i) && Px <= ((xb+20) - i)) begin
		if(rombo14 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo15*/
	else if(Py>=yi && Py < yj && Px >= (xd-i) && Px <= (xd+i)) begin
		if(rombo15 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yj && Py < yk && Px >= ((xd-20) + i) && Px <= ((xd+20) - i)) begin
		if(rombo15 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo16*/
	else if(Py>=yk && Py < yl && Px >= (oe-i) && Px <= (oe+i)) begin
		if(rombo16 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yl && Py < ym && Px >= ((oe-20) + i) && Px <= ((oe+20) - i)) begin
		if(rombo16 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo17*/
	else if(Py>=yk && Py < yl && Px >= (oc-i) && Px <= (oc+i)) begin
		if(rombo17 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yl && Py < ym && Px >= ((oc-20) + i) && Px <= ((oc+20) - i)) begin
		if(rombo17 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo18*/
	else if(Py>=yk && Py < yl && Px >= (oa-i) && Px <= (oa+i)) begin
		if(rombo18 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yl && Py < ym && Px >= ((oa-20) + i) && Px <= ((oa+20) - i)) begin
		if(rombo18 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo19*/
	else if(Py>=yk && Py < yl && Px >= (xa-i) && Px <= (xa+i)) begin
		if(rombo19 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yl && Py < ym && Px >= ((xa-20) + i) && Px <= ((xa+20) - i)) begin
		if(rombo19 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo20*/
	else if(Py>=yk && Py < yl && Px >= (xc-i) && Px <= (xc+i)) begin
		if(rombo20 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yl && Py < ym && Px >= ((xc-20) + i) && Px <= ((xc+20) - i)) begin
		if(rombo20 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	/*rombo21*/
	else if(Py>=yk && Py < yl && Px >= (xe-i) && Px <= (xe+i)) begin
		if(rombo21 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
	else if(Py >= yl && Py < ym && Px >= ((xe-20) + i) && Px <= ((xe+20) - i)) begin
		if(rombo21 ==0) begin
			r = 0;
			g = 15;
			b = 15;
			end
		else begin
			r = 0;
			g = 0;
			b = 15;
			end
		end
/*Lado izquierdo*/
	else if(Py > yb && Py < yd && Px<x && Px >= oa) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yd && Py < yf && Px<oa && Px >= ob) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yd && Py < yf && Px<xa && Px >= x) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yf && Py < yh && Px<ob && Px >= oc) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yf && Py < yh && Px<x && Px >= oa) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yf && Py < yh && Px<xb && Px >= xa) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yh && Py < yj && Px<oc && Px >= od) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yh && Py < yj && Px<oa && Px >= ob) begin
		r = 10;
		g = 10;
		b = 10;
		end

	else if(Py > yh && Py < yj && Px<xa && Px >= x) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yh && Py < yj && Px<xc && Px >= xb) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yj && Py < yl && Px<od && Px >= oe) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yj && Py < yl && Px<ob && Px >= oc) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yj && Py < yl && Px<x && Px >= oa) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yj && Py < yl && Px<xb && Px >= xa) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yj && Py < yl && Px<xd && Px >= xc) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yl && Py < ym && Px<oe && Px >= of) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yl && Py < ym && Px<oc && Px >= od) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yl && Py < ym && Px<oa && Px >= ob) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yl && Py < ym && Px<xa && Px >= x) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yl && Py < ym && Px<xc && Px >= xb) begin
		r = 10;
		g = 10;
		b = 10;
		end
	else if(Py > yl && Py < ym && Px<xe && Px >= xd) begin
		r = 10;
		g = 10;
		b = 10;
		end
/*Lado derecho*/
	else if(Py > yb && Py < yd && Px<=xa && Px >= x) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yd && Py < yf && Px<=x && Px >= oa) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yd && Py < yf && Px<=xb && Px >= xa) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yf && Py < yh && Px<=oa && Px >= ob) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yf && Py < yh && Px<=xa && Px >= x) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yf && Py < yh && Px<=xc && Px >= xb) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yh && Py < yj && Px<=ob && Px >= oc) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yh && Py < yj && Px<=x && Px >= oa) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yh && Py < yj && Px<=xb && Px >= xa) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yh && Py < yj && Px<=xd && Px >= xc) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yj && Py < yl && Px<=oc && Px >= od) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yj && Py < yl && Px<=oa && Px >= ob) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yj && Py < yl && Px<=xa && Px >= x) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yj && Py < yl && Px<=xc && Px >= xb) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yj && Py < yl && Px<=xe && Px >= xd) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yl && Py < ym && Px<od && Px >= oe) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yl && Py < ym && Px<ob && Px >= oc) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yl && Py < ym && Px<x && Px >= oa) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yl && Py < ym && Px<xb && Px >= xa) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yl && Py < ym && Px<xd && Px >= xc) begin
		r = 5;
		g = 5;
		b = 5;
		end
	else if(Py > yl && Py < ym && Px<xf && Px >= xe) begin
		r = 5;
		g = 5;
		b = 5;
		end
	//dibujar ganar
	//w
	else if(Px>= oe && Px<= od && Py>380 && Py<460 && ganar==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px>= oc && Px<= ob && Py>400 && Py<460 && ganar==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px>= oa && Px<= x && Py>380 && Py<460 && ganar==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px> od && Px< oc && Py>440 && Py<460 && ganar==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px> ob && Px< oa && Py>440 && Py<460 && ganar==1) begin
		r=15;
		g=15;
		b=15;
		end
	//i
	else if(Px>= (x+10) && Px<= (xb-10) && Py>380 && Py<460 && ganar==1) begin
		r=15;
		g=15;
		b=15;
		end
	//n
	else if(Px>= xb && Px<= xc && Py>380 && Py<460 && ganar==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px>= xd && Px<= xe && Py>380 && Py<460 && ganar==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px> xc && Px< xd && Py>380 && Py<400 && ganar==1) begin
		r=15;
		g=15;
		b=15;
		end
	//lost
	//l
	else if(Px>= of && Px<= oe && Py>380 && Py<460 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	
	//o
	else if(Px>= od && Px<= oc && Py>380 && Py<460 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px>= ob && Px<= oa && Py>380 && Py<460 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px> oc && Px< ob && Py>380 && Py<400 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px> oc && Px< ob && Py>440 && Py<460 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	//s
	else if(Px>= x && Px<= xb && Py>380 && Py<390 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px>= x && Px<= xb && Py>410 && Py<420 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px> x && Px<= xb && Py>450 && Py<=460 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px>= x && Px<=(x+10) && Py>=390 && Py<=410 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px>= (xb-10) && Px<= xb && Py>410&& Py<=450 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	//t
	else if(Px>= xc && Px<= xf && Py>380 && Py<400 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	else if(Px>= xd && Px<= xe && Py>=400 && Py<460 && lost==1) begin
		r=15;
		g=15;
		b=15;
		end
	
	else begin
		r=0;
		g=0;
		b=0;
		end
	end
endmodule