function Lj = lagrangeInter(j, x,  xi)

    Lj = zeros(sizeof(x));

    for c = 1:sizeof(x)
        if c == j
        Lj(c) = 0; 
        else
        Lj(c) = (xi - x(c))/(x(j) - x(c));
        end

    end

end