%{
Name: Assignment 1: Problem 2.25
Date: 09/05/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: A program that displays the interest rate, amount of interest,
balance of a savings account given in exercise  2.25 in Essential MATLABfor
Engineers and Scientists (6th Edition)
Last updated: 09/05/2023
%}

%{
Prealocating memory, initial variables, and format
A = balance
R = Interest Rate
AR = Amount of Interest

s: the number of
the month, the interest rate, the amount of interest, and the new balance.

%}

format bank
clear all
A = zeros(1,12);    
R = zeros(1,12);
AR = zeros(1,12);

A(1) = 100000;      % Inital Balance and rates
AR(1) = 0;
R(1) = 0;
    
for m = [1:1:12]
    if A <= 110000
        R(m+1) = 0.01;
        AR(m+1) = (A(m)*R(m));
        A(m+1) = A(m) + AR(m) + 1000;
    elseif A <= 125000
        R(m) = 0.015;
        AR(m) = (A(m)*R(m));
        A(m+1) = A(m) + AR(m) + 1000;
    else
        R(m) = 0.02;
        AR(m) = (A(m)*R(m));
        A(m+1) = A(m) + AR(m) + 1000;
    end
end

disp(A);
disp(AR);
disp(R);

%T = table([1:12]',R(2:13)',AR',A');



