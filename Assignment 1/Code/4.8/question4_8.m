x = [0:0.1:10];
% a = sqrt(0.1)
% W EI/T^2 = 1

num = cosh(sqrt(0.1)*(5-x(:)));
den = cosh(sqrt(0.1)*5);
wx = 0.05*x(:);
lx = 10 - x(:);

y = (num(:)./den(:) - 1) + wx(:).*lx(:);


plot(x,y)
axis([0 10 0 10])