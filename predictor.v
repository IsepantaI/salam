module predictor(input wire request, result, clk, taken, output reg prediction);
    reg [1:0] state =0;
// Your code

    always @(posedge clk)       
    begin
        if(request==1)
        begin
            if(state<=1)
                prediction=0;
            else
                prediction=1;
        end
        if(result==1)
        begin
            if(taken==0)
                state = state == 0? 0:state-1;
            else
                state = state ==3? 3:state+1;
        end
    end

endmodule
