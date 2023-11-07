function Lj = lagrangeInter(j, x,  xi)

    Lj = zeros(size(x,2));

    for c = 1:size(x,2)
        if c == j
        Lj(1,c) = 0; 
        else
        Lj(1,c) = (xi - x(1,c))/(x(j) - x(1,c));
        end

    end

end
