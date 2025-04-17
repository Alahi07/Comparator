// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] A,B;
  wire A_grt_B, A_less_B, A_eq_B;
  comparator uut(
    .A(A),
    .B(B),
    .A_grt_B(A_grt_B),
    .A_less_B(A_less_B),
    .A_eq_B(A_eq_B)
  );
  initial begin
    $monitor("Time= %0t | A=%0t | B= %0t|A_grt_B=%0t | A_less_B = %0t | A_eq_B = %0t ", $time, A,B, A_grt_B, A_less_B, A_eq_B);
    A=4'b0000; B=4'b0000; #5;
    A=4'b0000; B=4'b0001; #5;
    A=4'b1110; B=4'b1100; #5;
    A=4'b0011; B=4'b1111; #5;
    $finish;
    
  end
endmodule
