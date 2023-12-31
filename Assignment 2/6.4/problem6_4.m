%{
Name: Assignment 2: Problem 6.4
Date: 09/18/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: A script that solves a linear equation that demonstrates ill
conditioning
Last updated: 09/20/2023
%}

%Using left division to show x = 2 and y = 3.
A = [1 5.000; 1.5 7.501];
B = [17.0; 25.503];
x = A \ B;
disp(['Solution for the system of A and B x = ', num2str(x(1)), ' y = ', num2str(x(2))])

%Computing the residual. 
% Residual = coefficient*solution - actual value
residual = norm(A * x - B);
disp(['Residual: ', num2str(residual)])
disp("===================================================================") %Line for seperation    


%Testing 25.501
disp("Testing 25.501:");
B(2) = 25.501;
x = A \ B;
disp(['Solution for the system of A and B x = ', num2str(x(1)), ' y = ', num2str(x(2))]);
residual = norm(A * x - B);
disp(['Residual: ', num2str(residual)]);
disp("===================================================================")   

%Testing 25.502
disp("Testing 25.502:");
B(2) = 25.502;
x = A \ B;
disp(['Solution for the system of A and B x = ', num2str(x(1)), ' y = ', num2str(x(2))]);
residual = norm(A * x - B);
disp(['Residual: ', num2str(residual)]);
disp("===================================================================")

%Testing 25.504
disp("Testing 25.504:");
B(2) = 25.504;
x = A \ B;
disp(['Solution for the system of A and B x = ', num2str(x(1)), ' y = ', num2str(x(2))]);
residual = norm(A * x - B);
disp(['Residual: ', num2str(residual)]);
disp("===================================================================")

%Checking for ill conditioning
determiant = det(A);
condition = rcond(A);
disp(['Condition: ', num2str(condition)]);
disp(['Determiant: ', num2str(determiant)]);
disp('Both rcond and det are extremely small or close to zero')
disp('This is indicative of ill conditioning')
disp("===================================================================")

%Sensitivity Analysis. Testing with 1% change per iteration until 10%
p = 0.01;
while(p <= 0.1)
    disp("Testing with " + num2str(p*100) + "% change");
    p_A = A + (A * p);
    p_x = p_A\B;
    disp(['Solution for the system of A and B x = ', num2str(p_x(1)), ' y = ', num2str(p_x(2))]);
    residual = norm(p_A * p_x - B);
    disp(['Residual: ', num2str(residual)]);
    p = p + 0.01;
    disp("===================================================================")
end
    




