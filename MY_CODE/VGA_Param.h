

//*************************640*480@60Hz*25MHz**********************************************
//	Horizontal Parameter	( Pixel )

parameter	H_SYNC_CYC	=	96;
parameter	H_SYNC_BACK	=	45+3;
parameter	H_SYNC_ACT	=	640;	//	646
parameter	H_SYNC_FRONT=	13+3;
parameter	H_SYNC_TOTAL=	800;
//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	2;
parameter	V_SYNC_BACK	=	30+2;
parameter	V_SYNC_ACT	=	480;	//	484
parameter	V_SYNC_FRONT=	9+2;
parameter	V_SYNC_TOTAL=	525;
//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;

/*
//*******************XGA(1024*768)@60Hz desired clock 65M*******64.8********************************/
			/*
//	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	136;
parameter	H_SYNC_BACK	=	160;//45+3;
parameter	H_SYNC_ACT	=	1024;//640;
parameter	H_SYNC_FRONT=	24;//13+3;
parameter	H_SYNC_TOTAL=	1344;
					//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	6;
parameter	V_SYNC_BACK	=  29;//30+2;
parameter	V_SYNC_ACT	=	768;
parameter	V_SYNC_FRONT=	3;//9+2;
parameter	V_SYNC_TOTAL=	806;
					//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;
*/
//*************************SVGA(800*600)@60Hz desired clock 40M*Actually 38M************************************//
/*
					//	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	128;
parameter	H_SYNC_BACK	=	88;//45+3;
parameter	H_SYNC_ACT	=	800;//640;
parameter	H_SYNC_FRONT=	40;//13+3;
parameter	H_SYNC_TOTAL=	1056;
					//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	4;
parameter	V_SYNC_BACK	=	23;//30+2;
parameter	V_SYNC_ACT	=	600;
parameter	V_SYNC_FRONT=	1;//9+2;
parameter	V_SYNC_TOTAL=	628;
					//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;
*/

//*************************640*480@60Hz*25MHz**********************************************
//	Horizontal Parameter	( Pixel )
/*
parameter	H_SYNC_CYC	=	96;
parameter	H_SYNC_BACK	=	45+3;
parameter	H_SYNC_ACT	=	640;	//	646
parameter	H_SYNC_FRONT=	13+3;
parameter	H_SYNC_TOTAL=	800;
//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	2;
parameter	V_SYNC_BACK	=	30+2;
parameter	V_SYNC_ACT	=	480;	//	484
parameter	V_SYNC_FRONT=	9+2;
parameter	V_SYNC_TOTAL=	525;
//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;

*/
//*************************SVGA(800*600)@60Hz desired clock 40M****************************//
/*			//	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	128;
parameter	H_SYNC_BACK	=	88;//45+3;
parameter	H_SYNC_ACT	=	800;//640;
parameter	H_SYNC_FRONT=	40;//13+3;
parameter	H_SYNC_TOTAL=	1056;
					//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	4;
parameter	V_SYNC_BACK	=	23;//30+2;
parameter	V_SYNC_ACT	=	600;
parameter	V_SYNC_FRONT=	1;//9+2;
parameter	V_SYNC_TOTAL=	628;
					//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;
*/

//*************************640*480@60Hz*25MHz**********************************************
//	Horizontal Parameter	( Pixel )
/*
parameter	H_SYNC_CYC	=	96;
parameter	H_SYNC_BACK	=	45+3;
parameter	H_SYNC_ACT	=	640;	//	646
parameter	H_SYNC_FRONT=	13+3;
parameter	H_SYNC_TOTAL=	800;
//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	2;
parameter	V_SYNC_BACK	=	30+2;
parameter	V_SYNC_ACT	=	480;	//	484
parameter	V_SYNC_FRONT=	9+2;
parameter	V_SYNC_TOTAL=	525;
//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;

*/

//*************************SVGA(800*600)@60Hz desired clock 40M****************************//
/*			//	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	128;
parameter	H_SYNC_BACK	=	88;//45+3;
parameter	H_SYNC_ACT	=	800;//640;
parameter	H_SYNC_FRONT=	40;//13+3;
parameter	H_SYNC_TOTAL=	1056;
					//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	4;
parameter	V_SYNC_BACK	=	23;//30+2;
parameter	V_SYNC_ACT	=	600;
parameter	V_SYNC_FRONT=	1;//9+2;
parameter	V_SYNC_TOTAL=	628;
					//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;

*/
/************************SXGA(1280*1024)@60Hz**108M********************************/
/*
//	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	112;//96;
parameter	H_SYNC_BACK	=	248;//45+3;
parameter	H_SYNC_ACT	=	1280;//640;
parameter	H_SYNC_FRONT=	48;//13+3;
parameter	H_SYNC_TOTAL=	1688;//960;//1184;//1440;//800;
//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	3;//2;
parameter	V_SYNC_BACK	=	38;//30+2;
parameter	V_SYNC_ACT	=	1024;//480;//600;//768;//1024;//480;
parameter	V_SYNC_FRONT=	1;//9+2;
parameter	V_SYNC_TOTAL=	1066;//525;//645;//813;//1069;//525;
//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;//360
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;//41
*/
/*************************SVGA(800*600)@72Hz*************************************/
/*
//	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	112;//96;
parameter	H_SYNC_BACK	=	248;//45+3;
parameter	H_SYNC_ACT	=	1280;//640;
parameter	H_SYNC_FRONT=	48;//13+3;
parameter	H_SYNC_TOTAL=	1688;//960;//1184;//1440;//800;
//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	3;//2;
parameter	V_SYNC_BACK	=	38;//30+2;
parameter	V_SYNC_ACT	=	1024;//480;//600;//768;//1024;//480;
parameter	V_SYNC_FRONT=	1;//9+2;
parameter	V_SYNC_TOTAL=	1066;//525;//645;//813;//1069;//525;
//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;//360
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;//41
*/
/*************************VGA(640*480)@85Hz*************************************/
/*
//	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	112;//96;
parameter	H_SYNC_BACK	=	248;//45+3;
parameter	H_SYNC_ACT	=	1280;//640;
parameter	H_SYNC_FRONT=	48;//13+3;
parameter	H_SYNC_TOTAL=	1688;//960;//1184;//1440;//800;
//	Virtical Parameter		( Line )
parameter	V_SYNC_CYC	=	3;//2;
parameter	V_SYNC_BACK	=	38;//30+2;
parameter	V_SYNC_ACT	=	1024;//480;//600;//768;//1024;//480;
parameter	V_SYNC_FRONT=	1;//9+2;
parameter	V_SYNC_TOTAL=	1066;//525;//645;//813;//1069;//525;
//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;//360
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;//41
*/
