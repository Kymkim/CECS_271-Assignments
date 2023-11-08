%{
Name: newtonInter
Date: 11/07/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Use the "b" terms of newton to evaluate the function at xi
Last updated: 11/07/2023
%}

function val = newtonInterEval (x, y, xi)

b_values = newtonInter(x,y); %get the b terms

temp = zeros(size(x,2), size(xi,2));

for i = 1:length(x)
    for j = 1:length(xi)
       if(i == 1)
       temp(i,j) = 1; %if it's the first item don't multiply it by anything
       else
           temp(i,j) = xi(j) - x(i-1);%generate a table of the coefficients
       end
    end
end

val = zeros(1,size(xi,2));
multi = ones(1,length(xi));

for i = 1:length(x)
    for j = 1:length(xi)
        multi(j) = multi(j) * temp(i,j);%multiply multiply by the new xi-xj
    end
    val = val + b_values(i)*multi; %add the multiplied values to val
end

end
