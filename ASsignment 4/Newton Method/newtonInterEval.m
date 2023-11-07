function val = newtonInterEval (x, y, xi)

b_values = newtonInter(x,y);

temp = zeros(size(x,2), size(xi,2));

for i = 1:length(x)
    for j = 1:length(xi)
       if(i == 1)
       temp(i,j) = 1;
       else
           temp(i,j) = xi(j) - x(i-1); % generate a table of the coefficients
       end
    end
end

val = zeros(1,size(xi,2));
multi = ones(1,length(xi));

for i = 1:length(x)
    for j = 1:length(xi)
        multi(j) = multi(j) * temp(i,j);
    end
    val = val + b_values(i)*multi;
end

end

