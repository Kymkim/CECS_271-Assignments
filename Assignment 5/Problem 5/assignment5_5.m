f = @(x) x./(x.^4 + 1);

%{
Name: Assignment 5.5
Date: 11/27/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Solves for the integral of x/(x^4+1)
using simpson, trapaezoid and Gauss
Last updated: 11/27/2023
%}

Gauss = 2:5;
Simp = 2:5;
Trap = 2:5;
N = 2:5;
for c = 2:5
    Gauss(c - 1) = nGaussIntegral(f, -2, 2, c);
    if (mod(c,2) == 0)
        Simp(c - 1) = simpsonIntegral(f, -2, 2, c);
    elseif(mod(c,2) == 1)
        Simp(c - 1) = "-";
    end
    Trap(c - 1) = trapezoidalIntegral(f, -2 , 2, c);
end

table = [N', Trap', Simp', Gauss'];
disp('function x/(x^4 + 1)');
disp('      N        Trap     Simp    Gauss');
disp(table);

SimpError = 2:5;
TrapError = 2:5;
GaussError = 2:5;

ExactValue = 0;

for c = 1:4
    if (mod(c,2) == 0)
        SimpError(c) = (ExactValue - Simp(c))./ExactValue;
    elseif(mod(c,2) == 1)
        SimpError(c) = "-";
    end
    TrapError(c) = (ExactValue - Trap(c))./ ExactValue;
    GaussError(c) = (ExactValue - Gauss(c))./ExactValue;
end
Errortable = [N', TrapError', SimpError', GaussError'];
disp('Error Table');
disp('     N  Trap  Simp  Gauss');
disp(Errortable);