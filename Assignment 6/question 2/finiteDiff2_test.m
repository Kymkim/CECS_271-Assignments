%{
Name: finite difference Method test
Date: 12/12/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Tests and compares x^2 y'' + 4xy' -2y +2log_10 x = 0
Last updated: 12/12/2023
%}
% functions
a = @(x) (4*x)/(x^2);
b = @(x) -2/(x^2);
c = @(x) 2*log10(x)/(x^2);
% parameters
x0 = 1;
y0 = -0.5;
xf = 2;
yf = log10(2);

N_values = [10, 20, 50, 100];

figure;
hold on;
%get and plot graphs
for i = 1:length(N_values)
    N = N_values(i);
    %ax, bx, cx, x0, xf, y0, yf, N
    [x_fd2, y_fd2] = finiteDiff2(a, b, c, x0, xf, y0, yf, N);
    plot(x_fd2, y_fd2, 'o-', 'DisplayName', sprintf('finite Difference N=%d', N));
end

hold off;
xlabel('x');
ylabel('y');
title('Finite Difference Method Solutions');
legend('Location', 'Northwest');
grid on;