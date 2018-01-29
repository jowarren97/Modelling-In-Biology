clc;
clear all;

syms x 

figure

for r = -1:1:3
    subplot(5, 1,r+2)
    f(x) = r*x*(1-x) - 2*x;
    ezplot(f, [-2 2 -2 2])
    pause(0.5)
end
