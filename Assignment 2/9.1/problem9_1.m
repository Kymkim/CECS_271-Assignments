%{
Name: Omar and Oliver
Assignment 2: Problem 9.1
Date: 09/21/23
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Plot a logistical model of the US population from 1970 to 2000
Last Update: 09/21/2023
%}

% Generate a vector of 211 (0-210) elements

P = [0:210];

for t = [1790:2000]

% set the t - 1789th element of the P vector to the fromula from the book
% such that when t = 1790 (first element) we access the first element of P

P(t-1789) = 197273000/(1 + (exp((-0.03134)*(t-1913.25))));

end

% Generate a vector of 211 elements from 1790 to 2000

t = [1790:2000];

% Plot t as the x-axis, P as the y-axis and use the circle to plot them

plot(t, P, 'o');

% Label the x-axis as "year," label the y-axis as "Population"
% title the graph "Logistical Population Model of the US from 1970-2000"

xlabel("Year");
ylabel("Population")
title("Logistical Population Model of the US from 1970-2000");
