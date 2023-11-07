function Lj = lagrangeInter(j, x, xi)
    
    % Initialize the Lagrange coefficient
    Lj = 1;
    
    % Calculate the Lagrange coefficient using element-wise multiplication
    for k = 1:length(x)
        if k ~= j
            Lj = Lj .* (xi - x(k)) / (x(j) - x(k));
        end
    end
end
