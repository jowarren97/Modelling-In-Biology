function dxdt = cw4system(t,x,a,b,g)
    dxdt = zeros(2,1);
    
%     a = 1;
%     b = 1;
%     g = 0.3;
    
    dxdt(1) = (a/(1+x(2)^4))-g*x(1);
    dxdt(2) = (b/(1+x(1)^4))-g*x(2);
end

