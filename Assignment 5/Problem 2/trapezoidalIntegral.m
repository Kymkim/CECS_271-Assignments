%{
Name: Trapezoidal Integral
Date: 11/27/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Solves for the integral of f from a to b in N intervals using
trapezoidal rule
Last updated: 11/27/2023
%}
function val = trapezoidalIntegral(f,a,b,N)
    %Width of each trapezoid
    delta_x = (b-a)/N;

    val = f(a)/2;

    val = 0;

    for i = 1:N-1
        x_i = a + i*delta_x;
        val = val + f(x_i);
    end

    val = val + f(b)/2;

    val = delta_x*val;
end