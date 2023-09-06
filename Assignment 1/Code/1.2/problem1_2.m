%{
Name: Assignment 1: Problem 1.2
Date: 09/04/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: In this problem, we are tasked to modify the scipt given in 
Section 1.2.5 in order to learn various functionalities in MATLAB such as using 
for loops, pause, and math functions.
Last updated: 09/05/2023
%}

%Code provided in Section 1.2.5
[x y ] = meshgrid(-8 : 0.5 : 8);
r = sqrt(x.^2 + y.^2) + eps;

% Modefied per instructions in part A
% for n=-3:0.05:3;
for n=-4:0.05:4;

    %Modefied per instructions in part C
    %z=sin(r.*n)./r; 
    z=cos(r.*n);

    surf(z), view(-37, 38), axis([0,40,0,40,-4,4]);

    % Modefided based on instructions in part B
    %pause(0.05)
    pause(0.1);                           
end







