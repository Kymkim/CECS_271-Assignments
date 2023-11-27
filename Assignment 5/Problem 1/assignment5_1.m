f = @(x) x.*cos(x) - sin(x);

stepsize = 1:7;
stepsize(1) = 0.2;
%present - prev / present
for c = 2:7
    stepsize(c) = stepsize(c-1) * 0.1;
end
FdirValues = 1:7;
BdirValues = 1:7;
CdirValues = 1:7;
Fapprox = 0:6;
Bapprox = 0:6;
Capprox = 0:6;

for c = 1:7
    FdirValues(c) = fdd(f, stepsize(c), pi/8);
    BdirValues(c) = bdd(f, stepsize(c), pi/8);
    CdirValues(c) = cdd(f, stepsize(c), pi/8);
end

for c = 2:7
    Fapprox(c) = (FdirValues(c) - FdirValues(c-1)) / FdirValues(c);
    Bapprox(c) = (BdirValues(c) - BdirValues(c-1)) / BdirValues(c);
    Capprox(c) = (CdirValues(c) - CdirValues(c-1)) / CdirValues(c);
end

forwardFinal = [stepsize',FdirValues',Fapprox'];
backwardFinal = [stepsize',BdirValues',Bapprox'];
centralFinal = [stepsize',CdirValues',Capprox'];
disp('Forward difference method')
disp(forwardFinal)
disp('--------------------------')
disp('Backward difference method')
disp(backwardFinal)
disp('--------------------------')
disp('Central difference method')
disp(centralFinal)

%{
f = the function input
ss = step size
pn = points
%}
function val = fdd(f, ss, p) %forward divided difference function

val = (f((p+ss)) - f(p))/ss;

end

function val = bdd(f,ss,p) %backward divided difference function

val = (f(p) - f(p-ss))/ss;

end

function val = cdd(f,ss,p) %central divided difference function

val = (f(p+ss) - f(p-ss))/(2.*ss);

end
