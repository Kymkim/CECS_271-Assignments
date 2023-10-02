%{
Name: Bisection Method
Date: 10/01/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: USolves the root using bisection method
Last updated: 10/01/2023asdqwe
%}

function [root, err, x] = bisec(f,a,b,tol,maxIter)
    
    %Calculating for the first estimate
    x = (b+a)/2;
    err = b-f;
    iter = 1

    while or((abs(x(iter)) > tol), iter >= maxIter)
        disp(iter)
        if err(iter) > 0
            b = x;
        elseif err(iter) < 0
            a = x;
        else
            break;
        end
        x = [x, (b+a)/2];
        err = [err, b-f];
        iter = iter + 1;
    end

    root = x(iter);
end

