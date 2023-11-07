% Define the original function f(x)
f = @(x) x./(x.^4 + 1);

x_values = -2:0.01:2;
y_actual = f(x_values);

n_points = 11;
random = randperm(length(x_values), n_points);
x_points = x_values(random);
y_points = f(x_points);

inter = newtonInterEval(x_points, y_points, x_values);

figure;

% Plot the 5 randomly picked points and their interpolation
plot(x_values, y_actual, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Actual Function');
hold on;
plot(x_points, y_points, 'ro', 'MarkerSize', 8, 'DisplayName', 'Picked Points');
plot(x_values, inter, 'g--', 'LineWidth', 1.5, 'DisplayName', 'Interpolation');
xlabel('x');
ylabel('f(x)');
legend;
grid on;

% Show the plots
sgtitle('Newtonian Interpolation for f(x) = x/(x^4 + 1)');
