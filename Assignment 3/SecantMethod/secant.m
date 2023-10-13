%{
Name: Assignment 3: Secant Algo
Date: 10/11/23
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: using the secant method to find the root of a function
Last updated: 10/11/23
%}

function [root, fx, x] = secant(f, x0, x1, tol, maxIter) %define the function
    
    fx = zeros(maxIter+2, 1); %crerate a fx vector with 2 extra slots than maxIter
    x = zeros(maxIter+2, 1); %crerate a x vector with 2 extra slots than maxIter
    x(1) = x0; % set the first element in x to be x0
    x(2) = x1; % set the second element in x to be x1
    fx(1) = f(x(1)); %set the first element in fx to be f(x0)
    fx(2) = f(x(2)); %set the second element in fx to be f(x1)
    
    for i = 1:maxIter % while we have not done the max iterations
    x(i+2) = (x(i+1) - (((fx(i+1))*(x(i+1)-x(i)))/(fx(i+1)-fx(i)))); % the next x element formula
    fx(i+2) = f(x(i+2)); % the value of the function at the next x element
    
    ctol = abs(((x(i+2)-x(i+1))/(x(i+2)))); %set the current tolerance 


    if fx(i+2) == 0 %if the function evaluates at 0 then we are done
        root = x(i+2);
        break
    end
    if ctol < tol %if the current tolerance is less than required tolerance we are done
        root = x(i+2);
        break
    end
    root = x(maxIter+2); %set rool = current x
    end
end
