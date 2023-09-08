%{
Name: Assignment 1: Problem 4.8
Date: 09/06/23
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Calculate the deflection across a beam with a uniform load
Last Update: 09/07/2023
%}

%generate the x-axis data points a vector from 0 to 10  with a step size of 0.1
% a = sqrt(0.1)
% W EI/T^2 = 1 so we don't need to include it


% Formula: num/den + wx*lx
x = 0:0.1:10; 
num = cosh(sqrt(0.1)*(5-x(:)));    
den = cosh(sqrt(0.1)*5);
wx = 0.05*x(:);
lx = 10 - x(:);
y = (num(:)./den(:) - 1) + wx(:).*lx(:);

% Plot the Y vs X graph
plot(x,y)
axis([0 10 0 10]) %
title("Deflection of the Beam across its length")
xlabel("Distance from the hinge (m)")
ylabel("Deflection of the beam (m)")