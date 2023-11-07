function a = newtonInter(x, y)
a = zeros(sizeof(y));
a(1) = y(1);
delta = zeros(sizeof(y)-1);

for c = 1:(sizeof(y)-1)
    delta(c) = (y(c+1)-y(c))/(x(c+1)-x(c));
end

a(2) = delta(1);

for c = 3:sizeof(x)

    for s = (c-1):sizeof(delta)
        delta(s) = (delta(s)-delta(s-1))/(x(s+1)-x(s-c+2));

    end
    a(c) = delta(c-1);
end
end