f = @(x) x.^2;  % Define the function to integrate
a = 0;          % Lower limit
b = 1;          % Upper limit
N = 100;        % Number of trapezoids

result = trapezoidalIntegral(f, a, b, N);
disp("Trapezoidal Rule: " + result);
result = simpsonIntegral(f, a, b, N);
disp("Simpson's Rule: " + result);
result = nGaussIntegral(f, a, b, 4);
disp("Gaussian Integration: " + result);