%{
Name: Assignment 1: Problem 2.25
Date: 09/05/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: A program that displays the interest rate, amount of interest,
balance of a savings account given in exercise  2.25 in Essential MATLAB for
Engineers and Scientists (6th Edition)
Last updated: 09/05/2023
%}


%Prealocating memory to a matrix. Each column contains the month, interest
%rate, amount of interest, and new balance in order from left to right.
grid = zeros(12,4);
balance = 100000;

for month = [1:1:12]
    grid(month,1) = month;

    if balance < 110000
        grid(month,2) = 0.01;
    elseif balance <= 125000
        grid(month,2) = 0.015;
    else
        grid(month,2) = 0.02;
    end
    
    grid(month,3) = grid(month,2) * balance;
    grid(month,4) = grid(month,3) + balance + 1000;
    balance = grid(month,4)
end

format bank
colname = {'Month', 'Interest Rate', 'Amount of Interest', 'New Balance'}
T = array2table(grid, 'VariableNames', colname)

disp(T)



