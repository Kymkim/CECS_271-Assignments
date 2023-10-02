% Define the function
f = @(x) x^3- 4*x^2 + 1;
df = @(x) 3*x^2 - 8*x;

% Set the bounds and parameters
x0 = 0.5;
tol = 1e-6;
maxIter = 10;

% Call the bisection method
[root, fx, x] = newraph(f, df, x0, tol, maxIter)

% Display the results
disp('Root: ');
disp(root);
disp('f(x) Values: ');
disp(fx);
disp('Apsproximating values of the root: ');
disp(x);