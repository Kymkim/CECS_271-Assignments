import lagrangeInterEval.*
import lagrangeInter.*
import newtonInterEval.*
import newtonInter.*

x = [-2: 0.01 : 2];
y = zeros(size(x));
a = size(x);
for c = 1:a(2)
   y(1,c) = (x(1,c))/((x(1,c))^4 + 1);
end

random_points = randperm(size(x,2), 5);

x_points = zeros(5);
y_points = zeros(5);

for c = 1:5
    x_points(1,c) = x(1,random_points(1,c));
    y_points(1,c) = y(1,random_points(1,c));
end

d = newtonInterEval(x_points, y_points, 0.2)
d = lagrangeInterEval(x_points, y_points, 0.2)

