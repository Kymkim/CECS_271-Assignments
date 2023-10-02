% Define the function
f = @(x) 10*x^2 + x^3;

% Set the bounds and parameters
a = -12;
b = 0;
tol = 1e-6;
maxIter = 10;

% Call the bisection method
[root, err, x] = bisec(f, a, b, tol, maxIter);

% Display the results
disp('Root: ');
disp(root);
disp('Approximating errors: ');
disp(err);
disp('Apsproximating values of the root: ');
disp(x);