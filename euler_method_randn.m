function [ xdata, tdata ] = euler_method_randn( tstart, tend, xstart, h, k , sigma)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
        
    xdata(1) = xstart;
    tdata(1) = tstart;
    
    for i = 1:1:(tend-tstart)/h
        xdata(i+1) = xdata(i) + h*(-k*xdata(i)) + sigma*randn*sqrt(h);
        tdata(i+1) = tdata(i) + h;
    end 
   
end

