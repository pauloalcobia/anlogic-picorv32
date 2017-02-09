/************************************************************\
 **  Copyright (c) 2011/2017 Anlogic, Inc.
 **  All Right Reserved.
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	/home/rgwan/anlogic/picorv32_demo/al_ip/regfile.v
 ** Date	:	09 02 2017
 ** TD version	:	3.0.987
\************************************************************/

`timescale 1ns / 1ps

module regfile_dp ( 
	doa, dia, addra, cea, clka, wea, rsta, 
	dob, dib, addrb, ceb, clkb, web, rstb 
);

	output [31:0] doa;
	output [31:0] dob;


	input  [31:0] dia;
	input  [31:0] dib;
	input  [4:0] addra;
	input  [4:0] addrb;
	input  cea;
	input  ceb;
	input  clka;
	input  clkb;
	input  wea;
	input  web;
	input  rsta;
	input  rstb;




	AL_LOGIC_BRAM #( .DATA_WIDTH_A(32),
				.DATA_WIDTH_B(32),
				.ADDR_WIDTH_A(5),
				.ADDR_WIDTH_B(5),
				.DATA_DEPTH_A(32),
				.DATA_DEPTH_B(32),
				.MODE("DP"),
				.REGMODE_A("NOREG"),
				.REGMODE_B("NOREG"),
				.WRITEMODE_A("NORMAL"),
				.WRITEMODE_B("NORMAL"),
				.RESETMODE("SYNC"),
				.IMPLEMENT("9K"),
				.INIT_FILE("zero.mif"))
			inst(
				.dia(dia),
				.dib(dib),
				.addra(addra),
				.addrb(addrb),
				.cea(cea),
				.ceb(ceb),
				.ocea(1'b0),
				.oceb(1'b0),
				.clka(clka),
				.clkb(clkb),
				.wea(wea),
				.web(web),
				.rsta(rsta),
				.rstb(rstb),
				.doa(doa),
				.dob(dob));


endmodule