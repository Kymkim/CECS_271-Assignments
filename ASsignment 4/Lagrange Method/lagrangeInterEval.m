function val = lagrangeInterEval(x, y, xi)
val = 0;

    for c = 1:size(x,2)
        Lj = lagrangeInter(c, x, xi);
        temp = 1;
        for s = 1:size(Lj,2)
            temp = temp*Lj(1,s);
        end
        val = val + (y(1,c)*temp);
    end

end
