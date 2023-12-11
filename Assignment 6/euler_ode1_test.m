%{
Name: Euler Method First Order Test
Date: 12/10/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Tests and compares y' + 2y = 2 - e^(-4x), y(0) = 1 using Euler's
Method
Last updated: 12/10/2023
%}

% euler_ode1_test.m

% Given differential equation: y' + 2y = 2 - e^(-4x), y(0) = 1
f = @(x, y) 2 - exp(-4*x) - 2*y;

% Parameters
x_start = 0;
x_end = 5;

% Number of steps for Euler's method
N_values = [20, 40, 50, 70];

% Plot Euler's method solutions for different N values
figure;
hold on;

for i = 1:length(N_values)
    N = N_values(i);
    [x_euler, y_euler] = euler_ode1(f, x_start, x_end, 1, N);
    plot(x_euler, y_euler, 'o-', 'DisplayName', sprintf('Euler N=%d', N));
end

hold off;
xlabel('x');
ylabel('y');
title('Euler''s Method Solutions');
legend('Location', 'Northwest');
grid on;
