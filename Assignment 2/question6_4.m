%{
Name: Omar and Oliver
Assignment 2: Problem 6.4
Date: 09/19/23
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Confirm ill conditioning
Last Update: 09/19/2023
%}


A = [1, 5;1.5,7.501];
b = [17;25.503];

x = A\b

r = (A*x)-b

% rcond(x)

% det(x)

b = [17; 25.501];

x = A\b

r = (A*x) - b

% rcond(x)

% det(x)

b = [17; 25.502];

x = A\b

r = (A*x) - b

% rcond(x)

% det(x)

b = [17; 25.504];

x = A\b

r = (A*x) - b

% rcond(x)

% det(x)

% Yes, these results confirm ill conditioning, as these small changes are
% causing a large variance in the values of x and y.