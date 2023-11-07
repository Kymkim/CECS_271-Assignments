%{
    Name: Function Tester
    Date: 10/12/2023
    Class: CECS 271
    Instructor: Minhthong Nguyen
    Purpose: Tests all of the function using the formula  @(x) sin(x) + 0.5*log(x);
    Last updated: 10/01/2023a
%}

%Function and the derrivative
f = @(x) sin(x) + 0.5*log(x);
df = @(x) cos(x) + 0.5*(1/x);

% Bisection Method
a_bisection = 0.1;
b_bisection = 2;
tolerance_bisection = 1e-6;
maxIter_bisection = 10;

disp('Bisection Method:')
[root_bisection, err_bisection, x_bisection] = bisec(f, a_bisection, b_bisection, tolerance_bisection, maxIter_bisection);

disp('Iter     Approximate Root       Error');
disp('------------------------------------');
for iter = 1:length(x_bisection)
    fprintf('%3d       %12.8f       %12.8f\n', iter, x_bisection(iter), err_bisection(iter));
end

disp(['True root (fzero): ' num2str(fzero(f, [a_bisection, b_bisection]))]);
disp(['Approximate root (bisection): ' num2str(root_bisection)]);
disp(' ');

% Newton-Raphson Method
x0_newton = 0.5;
tolerance_newton = 1e-6;
maxIter_newton = 10;

disp('Newton-Raphson Method:')
[root_newton, fx_newton, x_newton] = newraph(f, df, x0_newton, tolerance_newton, maxIter_newton);

disp('Iter     Approximate Root       f(Approx. Root)');
disp('----------------------------------------------');
for iter = 1:length(x_newton)
    fprintf('%3d       %12.8f       %12.8f\n', iter, x_newton(iter), fx_newton(iter));
end

disp(['True root (fzero): ' num2str(fzero(f, x0_newton))]);
disp(['Approximate root (Newton-Raphson): ' num2str(root_newton)]);
disp(' ');

% Secant Method
x0_secant = 0.1;
x1_secant = 0.5;
tolerance_secant = 1e-6;
maxIter_secant = 10;

disp('Secant Method:')
[root_secant, fx_secant, x_secant] = secant(f, x0_secant, x1_secant, tolerance_secant, maxIter_secant);

disp('Iter     Approximate Root       f(Approx. Root)');
disp('----------------------------------------------');
for iter = 1:length(x_secant)
    fprintf('%3d       %12.8f       %12.8f\n', iter, x_secant(iter), fx_secant(iter));
end

disp(['True root (fzero): ' num2str(fzero(f, [x0_secant, x1_secant]))]);
disp(['Approximate root (Secant): ' num2str(root_secant)]);