
module MT9V034C_DISPLAY	(
	////////////////////	Clock Input	 	////////////////////	 
		CLOCK_27,						//	27 MHz
		CLOCK_50,						//	50 MHz
		////////////////////	Push Button		////////////////////
		KEY,							//	Pushbutton[3:0]
		////////////////////////	LED		////////////////////////
		LED,							//	LED Green[8:0]
		////////////////////////	USB		////////////////////////
		USB_DP,							//	USB
		USB_DN,							//	USB
		////////////////////	SD_Card Interface	////////////////
		SD_DAT,							//	SD Card Data
		SD_CMD,							//	SD Card Command Signal
		SD_CLK,							//	SD Card Clock
		////////////////////	SRAM Interface		////////////////
		SRAM_DQ,							//	SRAM Data bus 16 Bits
		SRAM_ADDR,						//	SRAM Address bus 18 Bits
		SRAM_LB_N,						//	SRAM Low-byte Data Mask
		SRAM_UB_N,						//	SRAM High-byte Data Mask
		SRAM_WE_N,						//	SRAM Write Enable
		SRAM_CE_N,						//	SRAM Chip Enable
		SRAM_OE_N,						//	SRAM Output Enable
		/////////////////////	SDR0 Interface		////////////////
		SDR0_DQ,							//	SDR Data bus 16 Bits
		SDR0_ADDR,						//	SDR Address bus 12 Bits
		SDR0_DQM,						//	SDR Low-byte Data Mask 
		SDR0_WE_N,						//	SDR Write Enable
		SDR0_CAS_N,						//	SDR Column Address Strobe
		SDR0_RAS_N,						//	SDR Row Address Strobe
		SDR0_CS_N,						//	SDR Chip Select
		SDR0_BA,							//	SDR Bank Address 
		SDR0_CLK,						//	SDR Clock
		//	SDR0_CKE,						//	SDR Clock Enable
		/////////////////	EPCS FLASH Interface	////////////////////////
		DCLK,					//	SD Card Data
		nCS,					//	SD Card Data 3
		ASDI,					//	SD Card Command Signal
		DATA,					//	SD Card Clock
		/////////////////////	SDR1 Interface		////////////////
		SDR1_DQ,						//	SDR Data bus 16 Bits
		SDR1_ADDR,						//	SDR Address bus 12 Bits
		SDR1_DQM,						//	SDR Low-byte Data Mask 
		SDR1_WE_N,						//	SDR Write Enable
		SDR1_CAS_N,						//	SDR Column Address Strobe
		SDR1_RAS_N,						//	SDR Row Address Strobe
		SDR1_CS_N,						//	SDR Chip Select
		SDR1_BA,						   //	SDR Bank Address
		SDR1_CLK,						//	SDR Clock
		//	SDR1_CKE,						//	SDR Clock Enable
		////////////////////	GPIO	////////////////////////////
		GPIO0,							//	GPIO Connection 0
		GPIO1,							//	GPIO Connection 0
		GPIO2,							//	GPIO Connection 0
		GPIO3							//	GPIO Connection 1
	);

////////////////////////	Clock Input	 	////////////////////////
input				CLOCK_27;				//	27 MHz
input				CLOCK_50;				//	50 MHz
////////////////////////	Push Button		////////////////////////
input				[3:0]	KEY;					//	Pushbutton[3:0]
output			[3:0]	LED;					//	LED Green[8:0]
////////////////////////	USB		////////////////////////
inout				USB_DP;							//	USB
inout				USB_DN;							//	USB
////////////////////	SD Card Interface	////////////////////////
inout	[3:0] 	SD_DAT;					//	SD Card Data
inout				SD_CMD;					//	SD Card Command Signal
output			SD_CLK;					//	SD Card Clock

////////////////////////	SRAM Interface	////////////////////////
inout	[15:0]	SRAM_DQ;				//	SRAM Data bus 16 Bits
output[18:0]	SRAM_ADDR;				//	SRAM Address bus 18 Bits
output			SRAM_LB_N;				   //	SRAM Data Mask 
output			SRAM_UB_N;				   //	SRAM Data Mask 
output			SRAM_WE_N;				//	SRAM Write Enable
output			SRAM_CE_N;				//	SRAM Chip Enable
output			SRAM_OE_N;				//	SRAM Output Enable
///////////////////////		SDR0 Interface	////////////////////////
inout	[31:0]	SDR0_DQ;				//	SDR Data bus 32 Bits
output[11:0]	SDR0_ADDR;				//	SDR Address bus 12 Bits
output[3:0]		SDR0_DQM;				//	SDR Data Mask 
output			SDR0_WE_N;				//	SDR Write Enable
output			SDR0_CAS_N;				//	SDR Column Address Strobe
output			SDR0_RAS_N;				//	SDR Row Address Strobe
output			SDR0_CS_N;				//	SDR Chip Select
output[1:0]		SDR0_BA;				//	SDR Bank Address
output			SDR0_CLK;				//	SDR Clock
//output			SDR0_CKE;				//	SDR Clock Enable
///////////////////////		SDR1 Interface	////////////////////////
inout	[31:0]	SDR1_DQ;				//	SDR Data bus 32 Bits
output[11:0]	SDR1_ADDR;				//	SDR Address bus 12 Bits
output[3:0]		SDR1_DQM;				//	SDR  Data Mask 
output			SDR1_WE_N;				//	SDR Write Enable
output			SDR1_CAS_N;				//	SDR Column Address Strobe
output			SDR1_RAS_N;				//	SDR Row Address Strobe
output			SDR1_CS_N;				//	SDR Chip Select
output[1:0]		SDR1_BA;				   //	SDR Bank Address
output			SDR1_CLK;				//	SDR Clock
//output			SDR1_CKE;				//	SDR Clock Enable
////////////////////	EPCS FLASH Interface	////////////////////////
output			DCLK;					//	SD Card Data
output			nCS;					//	SD Card Data 3
output			ASDI;					//	SD Card Command Signal
input				DATA;					//	SD Card Clock
////////////////////////	GPIO	////////////////////////////////
inout	[29:0]	GPIO0;					//	GPIO Connection 0
inout	[29:0]	GPIO1;					//	GPIO Connection 0
inout	[35:0]	GPIO2;					//	GPIO Connection 1
inout	[35:0]	GPIO3;					//	GPIO Connection 1

//	CMOS
wire	[9:0]	CMOS_DATA;

wire			CMOS_FVAL;
wire			CMOS_LVAL;
wire			CMOS_PIXCLK;
reg			CMOS_XCLK;

wire	[31:0]	Read_DATA;
wire			VGA_CTRL_CLK;
wire			AUD_CTRL_CLK;

wire			DLY_RST_0;
wire			DLY_RST_1;
wire			DLY_RST_2;
wire			Read;
reg		[9:0]	rCMOS_DATA;
reg				rCMOS_LVAL;
reg				rCMOS_FVAL;

wire 			SDRAM_BUSY;
wire			Image_Read;
wire	[31:0]Image_Read_Data;
wire			Image_Write;
wire			Image_Write_CLK;
wire	[31:0]Image_Write_Data;

wire			CLOCK_18_4;
reg			CLOCK_25;
wire			CLOCK_20;
wire			CLOCK_65;
wire			CLOCK_108;
wire			CLOCK_100;
wire			CLOCK_125;


//	For Sensor MT9V034C in GPIO2 LEFT Side
assign	CMOS_DATA[0]	=	GPIO2[19];
assign	CMOS_DATA[1]	=	GPIO2[20];
assign	CMOS_DATA[2]	=	GPIO2[21];
assign	CMOS_DATA[3]	=	GPIO2[16];
assign	CMOS_DATA[4]	=	GPIO2[15];
assign	CMOS_DATA[5]	=	GPIO2[1];
assign	CMOS_DATA[6]	=	GPIO2[0];
assign	CMOS_DATA[7]	=	GPIO2[3];
assign	CMOS_DATA[8]	=	GPIO2[2];
assign	CMOS_DATA[9]	=	GPIO2[8];

assign	CMOS_FVAL		=	GPIO2[10];
assign	CMOS_LVAL		=	GPIO2[9];
assign	CMOS_PIXCLK		=	GPIO2[18];

assign	GPIO2[17]		=	CLOCK_27;//CMOS MCLK OUTPUT

//-----------------------------------------//
/*
//	For Sensor MT9V034C in GPIO3
assign	CMOS_DATA[0]	=	GPIO3[19];
assign	CMOS_DATA[1]	=	GPIO3[20];
assign	CMOS_DATA[2]	=	GPIO3[21];
assign	CMOS_DATA[3]	=	GPIO3[16];
assign	CMOS_DATA[4]	=	GPIO3[15];
assign	CMOS_DATA[5]	=	GPIO3[1];
assign	CMOS_DATA[6]	=	GPIO3[0];
assign	CMOS_DATA[7]	=	GPIO3[3];
assign	CMOS_DATA[8]	=	GPIO3[2];
assign	CMOS_DATA[9]	=	GPIO3[8];

assign	CMOS_FVAL		=	GPIO3[10];
assign	CMOS_LVAL		=	GPIO3[9];
assign	CMOS_PIXCLK		=	GPIO3[18];

assign	GPIO3[17]		=	CLOCK_27;//CMOS MCLK OUTPUT

*/
always@(posedge CMOS_PIXCLK)
begin
	rCMOS_DATA	<=	CMOS_DATA;
	rCMOS_LVAL	<=	CMOS_LVAL;
	rCMOS_FVAL	<=	CMOS_FVAL;
end

wire	[9:0]		mCMOS_DATA;
wire				mCMOS_DVAL;
wire				wSYNC;
wire	[15:0]	X_Cont;
wire	[15:0]	Y_Cont;
wire	[15:0]	TX_Cont;
wire	[15:0]	TY_Cont;
wire	[31:0]	Frame_Cont;

CMOS_Capture	u0	(		
					.iCLK							(CMOS_PIXCLK),
					.iRST_N						(DLY_RST_0),
					
					.iDATA						(rCMOS_DATA),
					.iFVAL						(rCMOS_FVAL),
					.iLVAL						(rCMOS_LVAL),
					.iSTART						(!KEY[3]),
					.iEND							(!KEY[2]),
					.iX_POS						(16'd56),
					.iY_POS						(0),
					
					.oDATA						(mCMOS_DATA),
					.oDVAL						(mCMOS_DVAL),
					.oX_Cont						(X_Cont),
					.oY_Cont						(Y_Cont),
					.oSYNC						(wSYNC)
				);
				
wire				mCMOS_DVAL_d;
RAW2RGB		u10	(	
					.iX_Cont						(X_Cont),
					.iY_Cont						(Y_Cont),
					.iData						(mCMOS_DATA),
					.iDval						(mCMOS_DVAL),
					
					.oRed							(mCMOS_R),
					.oGreen						(mCMOS_G),
					.oBlue						(mCMOS_B),
					.oDval						(mCMOS_DVAL_d),
					
					.iCLK							(CMOS_PIXCLK),
					.iRST_N						(DLY_RST_0)	
				);
wire	[9:0]		mCMOS_R,mCMOS_G,mCMOS_B;		

assign	LED[0]	=	rCMOS_FVAL;
assign	LED[1]	=	rCMOS_LVAL;
/*
GamaCOR 			U23(
					//Input side
					.iDVAL		(mCMOS_DVAL_d),
					.iRed			(mCMOS_R),
					.iGreen		(mCMOS_G),
					.iBlue		(mCMOS_B),
					//Output side
					.oRed			(sCMOS_R),
					.oGreen		(sCMOS_G),
					.oBlue		(sCMOS_B),
					.oDVAL		(sCMOS_DVAL),

					.iCLK			(CMOS_PIXCLK),
					.iRST_N		(DLY_RST_0)
					);
wire	sCMOS_DVAL;
wire	[9:0]	sCMOS_G;
wire	[9:0]	sCMOS_R;
wire	[9:0]	sCMOS_B;
*/

Curve_Averaging 	u111(
							.iDVAL				(mCMOS_DVAL_d),
							.iRed					(mCMOS_R),
							.iGreen				(mCMOS_G),
							.iBlue				(mCMOS_B),
							
							.oRed					(tCMOS_R),
							.oGreen				(tCMOS_G),
							.oBlue				(tCMOS_B),
							.oDVAL				(tCMOS_DVAL),

							.iCLK					(CMOS_PIXCLK),
							.iRST_N				(DLY_RST_0)
							);
							
wire	tCMOS_DVAL;
wire	[9:0]	tCMOS_G;
wire	[9:0]	tCMOS_R;
wire	[9:0]	tCMOS_B;

//VGA_OUT_BUFFER
Sdram_Control_4Port	u8	(	//	HOST Side
						    .REF_CLK				(CLOCK_50),
						    .RESET_N				(1'b1),
							 //.CLK_100OUT			(CLOCK_100),
							 
							//	FIFO Write Side 1
						   .WR1_DATA				({tCMOS_R,tCMOS_G,tCMOS_B}),
							.WR1						(tCMOS_DVAL),
							.WR1_ADDR				(0),
							.WR1_MAX_ADDR			(640*480),
							.WR1_LENGTH				(9'h100),
							.WR1_LOAD				(wSYNC),
							.WR1_CLK					(CMOS_PIXCLK),
								
							//	FIFO Read Side 1
						   .RD1_DATA				({Image_Read_R,Image_Read_G,Image_Read_B}),
				        	.RD1						(VGA_Read_Req),
				        	.RD1_ADDR				(0),
							.RD1_MAX_ADDR			(640*480),
							.RD1_LENGTH				(9'h100),
				        	.RD1_LOAD				(!DLY_RST_0),
							.RD1_CLK					(VGA_CTRL_CLK),
		
							//	SDRAM Side
							 .SA					(SDR1_ADDR),
							 .BA					(SDR1_BA),
							 .CS_N				(SDR1_CS_N),
							 .RAS_N				(SDR1_RAS_N),
							 .CAS_N				(SDR1_CAS_N),
							 .WE_N				(SDR1_WE_N),
							 .DQ					(SDR1_DQ),
							 .DQM					(SDR1_DQM)
							 ,.SDR_CLK			(SDR_CLK)
							 );
assign	SDR1_CLK	=	SDR_CLK;

wire	VGA_Read_Req,VGA_VS;

wire	[9:0]	Image_Read_Mono;
wire	[9:0]	Image_Read_R;
wire	[9:0]	Image_Read_G;
wire	[9:0]	Image_Read_B;

assign 	GPIO0[27]	=	VGA_CTRL_CLK;
assign	GPIO0[28]	=	VGA_VS;

VGA_Controller	u9(	//	Host Side
							.iRed					(Image_Read_R),
							.iGreen				(Image_Read_G),
							.iBlue				(Image_Read_B),
							.oRequest			(VGA_Read_Req),
							
							//	VGA Side
							.oVGA_R									({GPIO1[21],GPIO1[20],GPIO1[23],GPIO1[22],GPIO1[25],
																		  GPIO1[24],GPIO1[27],GPIO1[26],GPIO1[29],GPIO1[28]}),
							.oVGA_G									(GPIO0[15:6]),
							.oVGA_B									(GPIO0[26:17]),
							.oVGA_H_SYNC							(GPIO0[29]),
							.oVGA_V_SYNC							(VGA_VS),
							.oVGA_BLANK								(GPIO0[16]),
							//	Control Signal
							.iCLK										(VGA_CTRL_CLK),
							.iRST_N									(DLY_RST_0)	
						);
					
PLL_VGA				u11(
							.inclk0	(CLOCK_50),
							.c0		(VGA_CTRL_CLK)
							);
														
Reset_Delay			u13(   	
							.iCLK				(CLOCK_50),
							.iRST				(KEY[0]),
							.oRST_0				(DLY_RST_0),
							.oRST_1				(DLY_RST_1),
							.oRST_2				(DLY_RST_2)	
						);
	
endmodule




  