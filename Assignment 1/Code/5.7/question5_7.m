%{
Name: Omar and Oliver
Assignment 1: Problem 5.7
Date: 09/06/23
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Calculate the cost of electricity used per residence
Last Update: 09/07/2023
%}


res = [200; 500; 700; 1000; 1500];

cost  = calculateElectricityCost(res);

report = [res, cost]

function cost = calculateElectricityCost(x)

s = size(x);
cost = [1:1:size(x)];
for c = 1:size(x)
   if(x(c) <= 500)
       cost(c) = x(c)*.02 + 5;
   elseif(x(c) <= 1000)
       cost(c) = 15 + ((x(c)-500)*.05);
   else
       cost(c) = 40 + ((x(c)-1000)*.1);
   end  
end

cost = cost';
end
