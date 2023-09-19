%{
Name: Omar and Oliver
Assignment 2: Problem 6.4
Date: 09/19/23
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Calculate digits of pi
Last Update: 09/19/2023
%}

sum = 0;

for n = [0:1000]
    
    sum = sum + ((-1)^n / (2*n + 1));
    %f = ((-1)^n / (2*n + 1))

end

sum = sum*4
%disp(sum)
sum = 0;
for n = [0:2:2000]

    sum = sum + (1/((2*n+1)*(2*(n+1)+1)));

end
sum = sum * 8

% PART C AND D ARE MISSING
% WILL WORK ON THEM LATER!