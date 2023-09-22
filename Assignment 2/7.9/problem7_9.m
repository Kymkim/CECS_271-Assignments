%{
Name: Assignment 2: Problem 7.9
Date: 09/20/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Used for testing p.m from e^0 to e^10
Last updated: 09/20/2023
%}

n = 2

for x = 1:10
    l = p(n,x);
    p2 = (3*(x)^2-1)/2;
    disp("Using p(x,n) function: " + num2str(l));
    disp("Using (3x^2 - 1)/2: " + num2str(p2));
    disp("============================================================")
end

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
        