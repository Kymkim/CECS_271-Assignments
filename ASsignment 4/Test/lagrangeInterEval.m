function val = lagrangeInterEval(x, y, xi)
    
    % Initialize the value to be returned
    val = 0;
    
    % Calculate the Lagrange interpolation using the Lagrange coefficients
    for j = 1:length(x)
        Lj = lagrangeInter(j, x, xi);
        val = val + y(j) * Lj;
    end
end