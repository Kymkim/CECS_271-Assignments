function val = newtonInterEval (x, y, xi)

a = newtonInter(x,y);
coe = zeros(sizeof(a));
coe(1) = 1;
for c = 2:sizeof(a)
    coe(c) = xi - x(c);
end
val = 0;
multi = 0;
for c = 1:sizeof(a)
    multi = multi * coe(c);
    val = val + (a(c)*multi(c));
end

end