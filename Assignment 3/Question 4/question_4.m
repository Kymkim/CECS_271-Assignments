%{
Name: question_4.m
Date: 10/12/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Compare the different methods of solving for a root
Last updated: 10/12/2023
%}

f = @(x) sin(x) + 0.5*log(x);
df = @(x) cos(x) + 0.5*(1/x);


[b1, err, x] = bisec(f,4.6,1.85,1e-6,10);
disp("ROOT 1 Bisection:")
disp(b1);
z = [x];
disp("x iterations");
disp(z);

[b2, err, x] = bisec(f,4.6,7.9,1e-6,10);
disp("ROOT 2 Bisection:")
disp(b2);
z = [x];
disp("x iterations");
disp(z);


[nr1, fx, x] = newraph(f, df, 3, 1e-6,10);
disp("ROOT 1 Newton:")
disp(nr1);
z = [x, fx];
disp("x,fx");
disp(z);


[nr2, fx, x] = newraph(f, df, 7.5, 1e-6,10);
disp("ROOT 2 Newton:")
disp(nr2);
z = [x, fx];
disp("x,fx");
disp(z);



[sec1, fx, x] = secant(f, 2, 3, 1e-6, 10);
disp("ROOT 1 Secant:")
disp(sec1);
z = [x, fx];
disp("x,fx");
disp(z);


[sec2, fx, x] = secant(f, 7.5, 6, 1e-6, 10);
disp("ROOT 2 Secant:")
disp(sec2);
z = [x, fx];
disp("x,fx");
disp(z);

truex2 = fzero(f, 7.5);
truex1 = fzero(f, 3);
disp("true error 1 Bisection");
disp("true value:")
disp(truex1);
disp("Bisection root 1:")
disp(b1);
error = truex1 - b1
disp(" ");

disp("true error 2 Bisection");
disp("true value:")
disp(truex2);
disp("Bisection root 2:")
disp(b2);
error = truex2 - b2
disp(" ");

disp("true error 1 Newton");
disp("true value:")
disp(truex1);
disp("Newton root 1:")
disp(nr1);
error = truex1 - nr1
disp(" ");

disp("true error 2 Newton");
disp("true value:")
disp(truex2);
disp("Newton root 2:")
disp(nr2);
error = truex2 - nr2
disp(" ");

disp("true error 1 Secant");
disp("true value:")
disp(truex1);
disp("Secant root 1:")
disp(sec1);
error = truex1 - sec1
disp(" ");

disp("true error 2 Secant");
disp("true value:")
disp(truex1);
disp("Secant root 2:")
disp(sec1);
error = truex2 - sec2

function [root, fx, x] = newraph(f, df, x0, tol, maxIter)

    % Initialization
    fx = zeros(maxIter, 1);
    x = zeros(maxIter, 1);
    
    x(1) = x0;
    fx(1) = f(x(1));

    % Attempt to solve for Newton-Raphson Method
    for iter = 2:maxIter
        x(iter) = x(iter-1) - (f(x(iter-1)) / df(x(iter-1)));
        fx(iter) = f(x(iter));

        if abs((x(iter) - x(iter-1)) / 2) < tol
            root = x(iter);
            return;
        end
    end
    
    % Runs once maxIter completed.
    root = x(maxIter);
end


function [root, err, x] = bisec(f,a,b,tol,maxIter)
    %Initializing variables
    err = zeros(maxIter,1);
    x = zeros(maxIter,1);
    %disp(err)

    %Check if f(a) and f(b) have different signs.

    if sign(f(a)) == sign(f(b))
        err("Invalid A and B. Pick different A or B.")
    end

    %Bisection Method Implementation
    for iter = 1:maxIter
        %Generate estimation and measure error
        x(iter) = (b+a)/2;
        err(iter) = abs((b-a)/2);

        %If found witihin the tolerance
        if err(iter) < tol
            root = x(iter);
            return
        end
        
        %Check Estimates
        if (f(x(iter)) > 0)
            b = x(iter);
        elseif (f(x(iter)) < 0)
            a = x(iter);
        else
           root = x(iter);
           return;
        end
    end
    
    %Runs when we ran out of iterations
    root = x(iter);
end

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
    if ctol < tol %if the current tolerance is less than required tolerance we're done
        root = x(i+2);
        break
    end
    root = x(maxIter+2); %set rool = current x
    end

end