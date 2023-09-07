%{
Name: Omar and Oliver
Assignment 1: Problem 4.8
Date: 09/06/23
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Calculate the deflection across a beam with a uniform load
Last Update: 09/07/2023
%}

x = 0:0.1:10; %generate the x-axis data points a vector from 0 to 10 
                %with a step size of 0.1
% a = sqrt(0.1)
% W EI/T^2 = 1 so we don't need to include it

num = cosh(sqrt(0.1)*(5-x(:))); %numerator of the formula
den = cosh(sqrt(0.1)*5); %denominator of the formula
wx = 0.05*x(:); %the multiplication of Wx/2T
lx = 10 - x(:); %the subtraction of L-10

y = (num(:)./den(:) - 1) + wx(:).*lx(:); %the final formula:
                                         % num/den + wx*lx

plot(x,y) %plot the y vs x graph
axis([0 10 0 10]) %rescale the axis
title("Deflection of the Beam across its length") %title the graph
xlabel("Distance from the hinge (m)") %title the x-axis
ylabel("Deflection of the beam (m)") %title the y-axis