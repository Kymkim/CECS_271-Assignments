%{
Name: newtonInter
Date: 11/07/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Find the "b" terms of newtons divided difference method
Last updated: 11/07/2023
%}

function a = newtonInter(x, y)

a = zeros(1,size(y,2)); % create a vector of zeros of length y
a(1) = y(1); %set the first item equivalent to y0
delta = zeros(1,size(y,2)-1); %define a delta vector

for c = 2:(size(y,2))
    delta(1,c-1) = (y(1,c)-y(1,c-1))./(x(1,c)-x(1,c-1)); %input yh-yl/xh-xl
end                                                      %as data points of
                                                         %of delta h= high
a(1,2) = delta(1,1);%set the second element of a = first of delta; l = low
temp = delta; % save the current values of delta in temp
for c = 3:size(x,2) % iterate from 3 to the length of x

    for s = (c-1):size(delta,2) %iterate from c-1 to the end of delta
        delta(1,s) = (temp(1,s)-temp(1,(s-1)))/(x(1,s+1)-x(1,s-c+2));
    end %delta's s'th element = the cur temp - prev temp / cur x - prev c
    temp = delta; % set delta to temp
    a(1,c) = delta(1,c-1); % make the cth item of a = the c-1 item of delta
end
end
