function F = root2d( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    F(1) = 1/(0.3*(1+x(2)^4)) - x(1);
    F(2) = 1/(0.3*(1+x(1)^4)) - x(2);
end

