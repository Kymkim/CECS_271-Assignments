function val = newtonInterEval (x, y, xi)

a_inter = newtonInter(x, y);
coe = zeros(size(a_inter));
coe(1) = 1;
A_SIZE = size(a_inter);
for c = 2:A_SIZE(1,2)
    coe(1,c) = xi - x(1,c);
end
val = 0;
multi = 0;
for c = 1:size(a_inter,2)
    multi = multi * coe(1,c);
    val = val + (a_inter(1,c)*multi);
end

end

