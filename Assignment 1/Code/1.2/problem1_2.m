%{
Name: Assignemt 1: Problem 1.2
Date: 09/04/2023
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: In Section 1.2.5 of the text a script is given for an animation of the Mexican
hat problem. Type this into the editor, save it and execute it. Once you
nish debugging it and it executes successfully try modifying it. (a) Change
the maximum value of n from 3 to 4 and execute the script. (b) Change
the time delay in the pause function from 0.05 to 0.1. (c) Change the
z=sin(r.*n)./r; command line to z=cos(r.*n); and execute the script.
Last updated: 09/05/2023
%}

[x y ] = meshgrid(-8 : 0.5 : 8);
r = sqrt(x.^2 + y.^2) + eps;
for n=-4:0.05:4;
    z=sin(r.*n)./r;
    surf(z), view(-37, 38), axis([0,40,0,40,-4,4]);
    pause(0.05);
end




