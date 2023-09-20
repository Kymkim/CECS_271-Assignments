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
 