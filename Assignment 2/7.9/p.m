%{
Name: Legendre Polynomial
Date: 09/20/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: A function that uses recursion to calculate the Legendre
polynomial of order n
Last updated: 09/20/2023
%}

function poly = p(n,x)
    %This utilizes the fact that p(n,x) when n = 0 and  n = 1 are given to
    %us. Botn n=0 and n=1 will serve as a "stopping" point for the
    %recursion. This is done by calculating pn-1 and pn-2 when recursing
    %till it reaches the point such that n=0 or n=1
    if (n == 0)
        poly = 1;
        return
    elseif (n == 1)
        poly = x;
        return
    else
        poly = ((2 * n - 1) * x * p(n - 1, x) - (n - 1) * p(n - 2, x)) / n;
        return 
    end
        
end