module #parameter(WIDTH=8,DEPTH=16) fifo1(clk,data_in,data_out,rst_n);
  input clk,rst_n,[WIDTH-1:0]data_in;
  output [WIDTH-1:0]data_out;
  reg [WIDTH-1:0]ram[DEPTH-1:0];
  integer i;
  always@(posedge clk or negedge rst_n)
    if(rst_n)
      begin
        data_out<=0;
      end
  else begin
    for(i=0;i<DEPTH,i++)
      ram[i]<=data_in;
  end
endmodule
