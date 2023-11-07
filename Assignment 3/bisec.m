%{
Name: Bisection Method
Date: 10/01/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Solves the root using bisection method
Last updated: 10/01/2023
%}

function [root, err, x] = bisec(f,a,b,tol,maxIter)
    %Initializing variables
    err = zeros(maxIter,1)
    x = zeros(maxIter,1)
    disp(err)

    %Check if f(a) and f(b) have different signs.

    if sign(f(a)) == sign(f(b))
        err("Invalid A and B. Pick different A or B.")
    end

    %Bisection Method Implementation
    for iter = 1:maxIter
        %Generate estimation and measure error
        x(iter) = (b+a)/2;
        err(iter) = abs((b-a)/2);

        %If found witihin the tolerance
        if err(iter) < tol
            root = x(iter);
            return
        end
        
        %Check Estimates
        if (f(x(iter)) > 0)
            b = x(iter)
        elseif (f(x(iter)) < 0)
            a = x(iter)
        else
           root = x(iter);
           return;
        end
    end
    
    %Runs when we ran out of iterations
    root = x(iter)
end

