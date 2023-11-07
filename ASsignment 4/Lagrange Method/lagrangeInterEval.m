function val = lagrangeInterEval(x, y, xi)
val = 0;

    for c = 1:sizeof(x)
        Lj = lagrangeInter(c, x, xi);
        temp = 1;
        for s = 1:sizeof(Lj)
            temp = temp*Lj(s);
        end
        val = val + (y(c)*temp);
    end

end