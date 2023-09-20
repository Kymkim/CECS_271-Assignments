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