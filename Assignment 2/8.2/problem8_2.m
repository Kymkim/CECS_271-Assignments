%{
Name: Omar and Oliver
Assignment 2: Problem 8.2
Date: 09/19/23
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Calculate digits of pi
Last Update: 09/21/2023
%}

    % PART A:
    sum = 0;

    % calculating the digits of pi using a thousand terms of the formula:
    % 1 - 1/3 + 1/5...

for n = [0:17500]
    
    sum = sum + ((-1)^n / (2*n + 1));

end

    % since the previous calculation calculates pi/4 
    % we must multiply the sum by 4 to get pi

    sum = sum*4


    % PART B:
    
    sum = 0;

    % calculating the digits of pi using a thousand terms of the formula: 
    % 1/3x5 + 1/5*7

for n = [0:3550]

    sum = sum + (1/(((4*n)+1)*(4*(n+1)-1)));

end
    % since the previous calculations calculates pi/8
    % we must multiply the sum by 8 to get pi

    sum = sum * 8


    % PART C:

    sum = 0;
    
    % calculate arc tan of 1/8
    arctan = my_arc_tan(1/8);
    
    % multiply arctan(1/8) by six and store it in sum.
    sum = 6 .* arctan;
    
    % calculate arctan(1/57)
    arctan = my_arc_tan(1/57);
    
    % multiply arctan(1/57) by 2 and add it to sum.
    sum = sum + (2 .* arctan);

    % calculate arctan(1/239)
    arctan = my_arc_tan(1/239);
    
    % add arctan(1/239) to sum.
    sum = sum + arctan;
    
    % since we calculated pi/4, we must multiply by 4 to get pi.
    sum = sum * 4

    % PART D:

    % vectorizing parts A and B
    
    % create a 2 vectors one of length 17500 and the other of length 3550
    vect0 = [1:17500];
    vect1 = [1:3550];
    % from part A, but with slight modification:

    sum = 0;

for n = [0:17500]
    
    sum = sum + ((-1)^n / (2*n + 1));
    vect0(n+1) = sum;

end

    % from part B, butt with slight modification:

    sum = 0;

for n = [0:3550]

    sum = sum + (1/(((4*n)+1)*(4*(n+1)-1)));
    vect1(n+1) = sum;

end

disp(vect0);
disp(vect1);


    %function to calculate arctan
function myAtan = my_arc_tan(x)
    myAtan = 0;
for n = [0:1000]

    myAtan = myAtan + ((-1)^(n) .* ((x.^((2*n)+1))./((2*n)+1)));

end
end

