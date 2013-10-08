
module  GamaCOR (
					//Host side
					wrdata,
					wraddress,
					wrclock,
					write,
					//Input side
					iDVAL	,
					iRed	,
					iGreen,
					iBlue	,
					//Output side
					oRed	,
					oGreen,
					oBlue	,
					oDVAL	,

					iCLK	,
					iRST_N	);
					
parameter	DATA_WIDTH	=	10;

					//Host side
input		[DATA_WIDTH-1:0]	wrdata;
input 	[DATA_WIDTH+1:0]	wraddress;
input					wrclock;
input					write;
					
input		[DATA_WIDTH-1:0]	iRed;
input		[DATA_WIDTH-1:0]	iGreen;
input		[DATA_WIDTH-1:0]	iBlue;
input								iDVAL;

output							oDVAL;
output	 [DATA_WIDTH-1:0]	oRed;
output	 [DATA_WIDTH-1:0]	oGreen;
output	 [DATA_WIDTH-1:0]	oBlue;


input			iCLK;
input			iRST_N;

assign	oDVAL		=	iDVAL;

/*
//Bypass
assign	oRed		=	iRed;
assign	oGreen	=	iGreen;
assign	oBlue		=	iBlue;
*/

GamaRAM	RAM_R	(//Write side
					.data				(wrdata),
					.wraddress		(wraddress[DATA_WIDTH-1:0]),
					.wrclock			(wrclock),
					.wren				((wraddress[DATA_WIDTH+1:DATA_WIDTH]==1)?1:0),
					//Read side
					.rdaddress		(iRed),
					.rdclock			(iCLK),
					.q					(oRed)
				);
GamaRAM	RAM_G	(//Write side
					.data				(wrdata),
					.wraddress		(wraddress[DATA_WIDTH-1:0]),
					.wrclock			(wrclock),
					.wren				((wraddress[DATA_WIDTH+1:DATA_WIDTH]==2)?1:0),
					//Read side
					.rdaddress		(iGreen),
					.rdclock			(iCLK),
					.q					(oGreen)
				);
GamaRAM	RAM_B	(//Write side
					.data				(wrdata),
					.wraddress		(wraddress[DATA_WIDTH-1:0]),
					.wrclock			(wrclock),
					.wren				((wraddress[DATA_WIDTH+1:DATA_WIDTH]==3)?1:0),
					//Read side
					.rdaddress		(iBlue),
					.rdclock			(iCLK),
					.q					(oBlue)
				);
			

endmodule
