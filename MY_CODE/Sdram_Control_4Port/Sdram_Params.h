// Address Space Parameters

`define COLSTART        0
`define COLSIZE         9
`define ROWSTART        9          
`define ROWSIZE         12
`define BANKSTART       21
`define BANKSIZE        2

// Address and Data Bus Sizes

`define  ASIZE           24      // total address width of the SDRAM
`define  DSIZE           32      // Width of data bus to SDRAMS

//parameter	INIT_PER	=	100;		//	For Simulation

//	Controller Parameter
////////////	200 MHz	///////////////
/*
parameter	INIT_PER		=	48000;
parameter	REF_PER		=	2048;
parameter	SC_CL			=	3;
parameter	SC_RCD		=	3;
parameter	SC_RRD		=	7;
parameter	SC_PM			=	1;
parameter	SC_BL			=	1;
*/
////////////	166 MHz	///////////////

parameter	INIT_PER		=	40000;
parameter	REF_PER		=	1536;
parameter	SC_CL			=	3;
parameter	SC_RCD		=	3;
parameter	SC_RRD		=	7;
parameter	SC_PM			=	1;
parameter	SC_BL			=	1;

////////////	133 MHz	///////////////
/*
parameter	INIT_PER		=	32000;
parameter	REF_PER		=	1536;
parameter	SC_CL			=	3;
parameter	SC_RCD		=	3;
parameter	SC_RRD		=	7;
parameter	SC_PM			=	1;
parameter	SC_BL			=	1;
*/
/*
////////////	100 MHz	///////////////
parameter	INIT_PER		=	24000;
parameter	REF_PER		=	1024;
parameter	SC_CL			=	3;
parameter	SC_RCD		=	3;
parameter	SC_RRD		=	7;
parameter	SC_PM			=	1;
parameter	SC_BL			=	1;
*/
///////////////////////////////////////
//	SDRAM Parameter
parameter	SDR_BL	=	(SC_PM == 1)?	3'b111	:
								(SC_BL == 1)?	3'b000	:
								(SC_BL == 2)?	3'b001	:
								(SC_BL == 4)?	3'b010	:
													3'b011	;
parameter	SDR_BT		=	1'b0;	//	Sequential
								//1'b1;	//	Interteave
								
parameter	SDR_CL		=	(SC_CL == 2)?	3'b10:
											3'b11;
 	
