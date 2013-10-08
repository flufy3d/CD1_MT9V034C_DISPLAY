//------------------------------------------------- 
module an( 
						  input            iCLK, 
						  input            iRST_N, 
						  input      [4:1] iKEY,  
							//output	reg			[4:1] oKEY,				  
						  output  reg	 [15:0] X_CNT, 
						  output  reg	 [15:0] Y_CNT				  
);   

reg [4:1] key_samp1, key_samp1_locked; 


parameter	X_CNT_HALF	=	16'd16;//16'd720;
parameter	Y_CNT_HALF	=	16'd0;//16'd540;
parameter	STEP_ADD		=	16'd2;


always @ (posedge iCLK, negedge iRST_N) 
begin 
  if(!iRST_N)  
    key_samp1 <= 4'hF; 
  else          
    key_samp1 <= iKEY; 
end 

always @ (posedge iCLK, negedge iRST_N) 
begin 
  if(!iRST_N)  
    key_samp1_locked <= 4'hF; 
  else          
    key_samp1_locked <= key_samp1; 
end 

wire [4:1] key_changed1; 
assign key_changed1 = key_samp1_locked & (~key_samp1);  
//-------------------------------------- 

reg [15:0] cnt; 
always @ (posedge iCLK, negedge iRST_N) 
begin 
  if(!iRST_N) 
    cnt <= 16'h0; 
  else if(key_changed1) 
    cnt <= 16'h0; 
  else 
    cnt <= cnt + 1'b1; 
end 
//-------------------------------------- 

reg [4:1] key_samp2, key_samp2_locked; 
always @ (posedge iCLK, negedge iRST_N) 
begin 
  if(!iRST_N) 
    key_samp2 <= 4'hF; 
  else if(cnt == 16'hFFFF)            // 0xFFFFF/50M = 20.9715ms 
    key_samp2 <= iKEY; 
end 

always @ (posedge iCLK, negedge iRST_N) 
begin 
  if(!iRST_N) 
    key_samp2_locked <= 4'hF; 
  else 
    key_samp2_locked <= key_samp2; 
end 
//-------------------------------------- 

wire [4:1] key_changed2; 
assign key_changed2 = key_samp2_locked & (~key_samp2);  
//-------------------------------------- 

always @ (posedge iCLK, negedge iRST_N) 
begin 
  if(!iRST_N) 
  begin
	 X_CNT	 <= X_CNT_HALF;
	 Y_CNT	 <= Y_CNT_HALF;
  end
  else 
  begin 
    if(key_changed2[1]||key_roll[1]) 
	 begin
	  if(X_CNT < X_CNT_HALF*2-2)X_CNT	<=	X_CNT	+	STEP_ADD;
	 end

    if(key_changed2[2]||key_roll[2]) 
    begin
	  if(X_CNT > 2)X_CNT	<=	X_CNT	-	STEP_ADD;
	 end
       
    if(key_changed2[3]||key_roll[3]) 
    begin
	  if(Y_CNT < Y_CNT_HALF*2-2)Y_CNT	<=	Y_CNT	+	STEP_ADD;
	 end
       
    if(key_changed2[4]||key_roll[4]) 
    begin
	  if(Y_CNT > 2)Y_CNT	<=	Y_CNT	-	STEP_ADD;
	 end
  end 
end 
//-------------------------------------- 
reg [25:0] 	key_press_cnt; 
reg [17:0]	key_press_cnt_full;
reg [4:1]	key_roll;
always @ (posedge iCLK, negedge iRST_N) 
begin 
  if(!iRST_N) 
  begin
	 key_press_cnt	<=	0;
	 key_roll<=0;
	 key_press_cnt_full	<=	0;
  end
  else 
  begin 
    if((iKEY!=4'b1111)) 
	 begin
	  if(!key_press_cnt[25])key_press_cnt	<=	key_press_cnt +1;
	 end
	 else if((iKEY==4'b1111))key_press_cnt	<=0;
    
	 if(key_press_cnt[25]) key_press_cnt_full	<=key_press_cnt_full +1;
	 if(key_press_cnt_full==2)key_roll	<=	~iKEY;
	 else	key_roll	<=0;
	 
  end 
end 
endmodule  
