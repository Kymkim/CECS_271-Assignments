%{
Name: Finite difference method
Date: 12/12/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Solves ordinary differential equation using finite diff method
Last updated: 12/12/2023
%}

function [x, y] = finiteDiff2(ax, bx, cx, x0, xf, y0, yf, N)
    
    height = (xf - x0)/N;
    x = x0:height:xf;
    y = zeros(1, N);
    
    sol_mat = zeros(N+1, N+1);
    sol_mat(1,1) = 1;
    c = zeros(1, N+1);
    y(1) = y0;

    c(1) = cx(x0);

    for i = 2:(N+1)
        c(i) = cx(x(i));
        if(i == N+1) %if at the last i, do sol_mat(i,i) = yf
           y(i) = yf;
           sol_mat(i,i) = 1;
        else %set up the coefficients
           sol_mat(i, i-1) = 1/(height^2) - ax(x(i))/(2*height);
           sol_mat(i, i) = -2/(height^2) + bx(x(i));
           sol_mat(i, i + 1) = 1/(height^2) + ax(x(i))/(2*height);
        end
    end

    y = linsolve(sol_mat, y');


end