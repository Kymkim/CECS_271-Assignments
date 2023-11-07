function a = newtonInter(x, y)
a = zeros(1,size(y,2));
a(1) = y(1);
delta = zeros(1,size(y,2)-1);

for c = 2:(size(y,2))
    delta(1,c-1) = (y(1,c)-y(1,c-1))./(x(1,c)-x(1,c-1));
end

a(1,2) = delta(1,1);
X_SIZE = size(x);
DE_SIZE = size(delta);
temp = delta;
for c = 3:X_SIZE(1,2)

    for s = (c-1):DE_SIZE(1,2)
        delta(1,s) = (temp(1,s)-temp(1,(s-1)))/(x(1,s+1)-x(1,s-c+2));
    end
    temp = delta;
    a(1,c) = delta(1,c-1);
end
end

