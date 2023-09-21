%{
Name: Omar and Oliver
Assignment 2: Problem 9.4
Date: 09/21/23
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Model of sunflower seeds position
Last Update: 09/21/2023
%}

% since the problem did not provide a number of seeds to plot
% I will 1500 seeds since sunflowers tend to have between 1-2 thousand
% seeds.

% set d, the angle of divergence to 137.5
% we can easily change the angle of divergence by changing d.

d = 137.51; 

% create a vector of 1500 elements

r = [1:t];

for n = [1:t]
    
    % distance formula according to the problem
    r(n) = sqrt(n);

end

theta = [1:t];

for n = [0:(t-1)]

    % divergence formula according to the problem
    theta(n+1) = (pi*d*n)/180;

end

% use a polar graph to plot the data

polarplot(theta,r, 'o')

% title the graph "Sunflower seeds model"

title("Sunflower Seeds Model");
