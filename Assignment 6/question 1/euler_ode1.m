%{
Name: Euler Method First Order
Date: 12/10/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Solves irst order ordinary differential equation
y  = f(x, y) using Euler s method
Last updated: 12/10/2023
%}

function [x, y] = euler_ode1(f, x_start, x_end, y_start, N)
    % Initialize vectors to store x and y values
    x = linspace(x_start, x_end, N+1);
    y = zeros(1, N+1);
    
    % Set initial condition
    y(1) = y_start;
    
    % Step size
    h = (x_end - x_start) / N;
    
    % Euler's method iteration
    for i = 1:N
        % Update y using Euler's method
        y(i+1) = y(i) + h * f(x(i), y(i));
    end
end