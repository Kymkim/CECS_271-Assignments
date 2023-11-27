%{
Name: Simpson Integral
Date: 11/27/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Solves for the integral of f from a to b in N intervals using
simpsons rule
Last updated: 11/27/2023
%}
function val = simpsonIntegral(f,a,b,N)
    %Check if N is even
    if mod(N,2) ~= 0
        error("For Simpsons rule to work. There must be even N intervals")
    end

    h = (b-a)/N;

    %Value of the two endpoints
    val = f(a)+f(b);

    for i = 1:N-1
        x_i = a + i * h;
        if mod(i,2) == 0
            val = val + 2 *f(x_i); %For even indexes
        else
            val = val + 4 *f(x_i); %Odd indexes
        end
    end

    val = h*val/3;
end