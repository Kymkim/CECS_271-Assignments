%{
Name: Assignment 2: Problem 6.4
Date: 09/18/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: A script that solves a linear equation that demonstrates ill
conditioning
Last updated: 09/05/2023
%}

%PART A
disp("Part A of Question 6.4")

%Using left division to show x = 2 and y = 3.
A = [1 5.000; 1.5 7.501];
B = [17.0; 25.503];
x = A \ B;
disp(['Solution for the system of A and B x = ', num2str(x(1)), ' y = ', num2str(x(2))])

%Computing the residual. 
% Residual = coefficient*solution - actual value
residual = norm(A * x - B);
disp(['Residual: ', num2str(residual)])

%PART B
disp("Part B of Question 6.4")

%Changing righ-hand side to 25.503 to 25.510
while(B(2) < 25.510)
    B(2) = B(2) + 0.001
    residual = norm(A * x - B);
    condition_estimator = rcond(A);
    determinant_A = det(A);
    disp(['Residual: ', num2str(residual)])
    disp(['Condition Estimator (rcond): ', num2str(condition_estimator)])
    disp(['Determinant of A (det): ', num2str(determinant_A)])
end
