%{
Name: Newton-Raphson Method
Date: 10/02/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Solves the root using Newton-Raphson Method
Last updated: 10/02/2023
%}

function [root, fx, x] = newraph(f, df, x0, tol, maxIter)

    % Initialization
    fx = zeros(maxIter, 1);
    x = zeros(maxIter, 1);
    
    x(1) = x0;
    fx(1) = f(x(1));

    % Attempt to solve for Newton-Raphson Method
    for iter = 2:maxIter
        x(iter) = x(iter-1) - (f(x(iter-1)) / df(x(iter-1)));
        fx(iter) = f(x(iter));

        if abs((x(iter) - x(iter-1)) / 2) < tol
            root = x(iter);
            return;
        end
    end
    
    % Runs once maxIter completed.
    root = x(maxIter);
end

