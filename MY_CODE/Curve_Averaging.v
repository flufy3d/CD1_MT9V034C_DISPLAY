
module  Curve_Averaging (
					iDVAL	,
					iRed	,
					iGreen,
					iBlue	,
					
					oRed	,
					oGreen,
					oBlue	,
					oDVAL	,

					iCLK	,
					iRST_N	);
					
parameter	DATA_WIDTH	=	10;

input		[DATA_WIDTH-1:0]	iRed;
input		[DATA_WIDTH-1:0]	iGreen;
input		[DATA_WIDTH-1:0]	iBlue;
input								iDVAL;

output			reg				oDVAL;
output	 [DATA_WIDTH-1:0]	oRed;
output	 [DATA_WIDTH-1:0]	oGreen;
output	 [DATA_WIDTH-1:0]	oBlue;

reg	 [DATA_WIDTH+9:0]	mRed;
reg	 [DATA_WIDTH+9:0]	mGreen;
reg	 [DATA_WIDTH+9:0]	mBlue;

input			iCLK;
input			iRST_N;

reg			mDVAL;

/*
//Bypass it
assign	oRed		=	iRed;
assign	oGreen	=	iGreen;
assign	oBlue		=	iBlue;
*/


assign	oRed		=	mRed[DATA_WIDTH+9]	?	0:	mRed	[DATA_WIDTH+8:DATA_WIDTH-1];
assign	oGreen	=	mGreen[DATA_WIDTH+9]	?	0:	mGreen[DATA_WIDTH+8:DATA_WIDTH-1];
assign	oBlue		=	mBlue[DATA_WIDTH+9]	?	0:	mBlue	[DATA_WIDTH+8:DATA_WIDTH-1];

always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	begin
			oDVAL		<=	0;
		mRed		<=	0;
		mGreen	<=	0;
		mBlue		<=	0;
	end
	else	
	begin
		oDVAL		<=	iDVAL;
		mRed		<=	500*(iRed	-10);
		mGreen	<=	420*(iGreen	-30);
		mBlue		<=	500*(iBlue	-10);
		
	end
end


endmodule
