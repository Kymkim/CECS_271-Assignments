%{
Name: Taylor Estimate For e^x
Date: 09/20/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: A function that returns the Taylor estimation of e^x with 1e-6m
accuracy
Last updated: 09/20/2023
%}

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