clear all;
xsum = 0;

figure(1)
hold on
for i = 0:20
    [x,t] = euler_method_randn(0, 10, 6, 0.01, 3/16, 0.2);
    plot(t,x)
    
    xsum = xsum + x;
end

xav = xsum/20;
hold off

figure(2)
[x1,t1] = euler_method_randn(0, 10, 6, 0.01, 3/16, 0);
plot(t1,x1, t1,xav)

immse(xav,x1)

%% 
figure(3)
[x2,t2] = euler_method_randn(0, 100, 0, 0.01, 3/16, 0.1);
plot(t2,x2)

figure(4)
hist(x2, 50)

mean(x2)
std(x2)
    
%% 
figure(5)
[x3,t3] = euler_method_randn(0, 100, 0, 0.01, 3/16, 5);
plot(t3,x3)

figure(6)
hist(x3, 50)

mean(x3)
std(x3)
