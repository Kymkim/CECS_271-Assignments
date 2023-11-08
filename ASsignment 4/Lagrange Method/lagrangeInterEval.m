%{
Name: newtonInter
Date: 11/07/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Given the multiplication terms find the value at xi
Last updated: 11/07/2023
%}
function val = lagrangeInterEval(x, y, xi)
    
    % Initialize the value to be returned
    val = 0;
    
    % Calculate the Lagrange interpolation using the Lagrange coefficients
    for j = 1:length(x)
        Lj = lagrangeInter(j, x, xi);
        val = val + y(j) * Lj;
    end
end
