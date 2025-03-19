module ALU(
    input  [31:0] data1,     
    input  [31:0] data2,      
    input  [3:0] op,  
    output reg [31:0] dataOut
);

    always @(*) begin
        case (op)
            4'b0000: dataOut = data1 & data2;		   
            4'b0001: dataOut = data1 | data2;      
            4'b0010: dataOut = data1 + data2;      
            4'b0110: dataOut = data1 - data2;        
			4'b0111: dataOut = data1 < data2 ? 1 : 0;
			4'b1100: dataOut = ~(data1 | data2);
            default: dataOut = 32'b0;     
        endcase
    end

endmodule

// ARITM = opcode, Registerdestino, Rsource1, Rsource2
// Sw = opcode, x. Dirección, dato1
