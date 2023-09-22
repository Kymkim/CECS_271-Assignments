%{
Name: Assignment 2: Problem 7.5
Date: 09/20/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Used for testing expTaylorEstimate.m from e^0 to e^10
Last updated: 09/20/2023
%}

for x = 0:10
    estimate = expTaylorEstimate(x);
    actual = exp(x);
    disp("Actual: " + num2str(actual));
    disp("Estimate: " + num2str(estimate))
    disp("Error: " + num2str(abs(estimate - actual)));
    disp("===========================================")
end
 
 % A function that returns the Taylor estimation of e^x with 1e-6m

 function estimate = expTaylorEstimate(x)
    estimate = 0;
    n = 0;
    while true
        term = (x^n) / factorial(n);
        if abs(term) < 1e-6
            break;  % Stop when the term is smaller than the desired error
        end
        estimate = estimate + term;
        n = n + 1;
    end
end