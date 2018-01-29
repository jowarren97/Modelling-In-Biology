clear all;
clc;


a = 1;
b = 1;
g = 0.3;
%% q1

t = [0:0.01:200];
[t,x] = ode45(@(t,x)cw4system(t,x,a,b,g),t,[1; 2]);

figure
plot(t,x(:,1),'-',t,x(:,2),'--')
xlabel('time')
ylabel('concentration')
legend('x(t)','y(t)')

[t,x] = ode45(@(t,x)cw4system(t,x,a,b,g),t,[2; 1]);

figure
plot(t,x(:,1),'-',t,x(:,2),'--')
xlabel('time')
ylabel('concentration')
legend('x(t)','y(t)')

%% q2

figure
yp1 = [0:0.01:10];
xp1 = a./g./(1 + yp1.^4);
xp2 = [0:0.01:10];
yp2 = b./g./(1 + xp2.^4);

plot(xp1,yp1,'r','linewidth',2),hold
plot(xp2,yp2,'b','linewidth',2)

% syms x1;
% syms x2;
% eqns = [1/(0.3*(1+x2^4)) - x1 == 0, 1/(0.3*(1+x1^4)) - x2 == 0]
% S = solve(eqns, [x1, x2])

fun = @root2d
x0 = [0,0];
xsol1 = fsolve(fun,x0)

x0 = [1,2];
xsol2 = fsolve(fun,x0)

x0 = [2,1];
xsol3 = fsolve(fun,x0)

%% q3
x0 = [2,1];
[t,x] = ode45(@(t,x)cw4system(t,x,a,b,g),t,x0);
plot(x(:,1),x(:,2), 'k')
plot(x(1,1),x(1,2),'ko')

x0 = [1,2];
[t,x] = ode45(@(t,x)cw4system(t,x,a,b,g),t,x0);
plot(x(:,1),x(:,2), 'k')
plot(x(1,1),x(1,2),'ko')

axis([0 4 0 4])
xlabel('Concentration x')
ylabel('Concentration y')
title('Nullclines and phase plane')

%% q4

for i=1:20
    x0 = rand(1,2);
    [t,x] = ode45(@(t,x)cw4system(t,x,a,b,g),t,x0);
    plot(x(:,1),x(:,2), 'k')
    plot(x(1,1),x(1,2),'ko')
end

%% q5
a = 0.4;
b = 1;
figure
for i=1:20
    x0 = rand(1,2);
    [t,x] = ode45(@(t,x)cw4system(t,x,a,b,g),t,x0);
    plot(x(:,1),x(:,2), 'k')
    plot(x(1,1),x(1,2),'ko')
end
title('a=0.4,b=1');

a = 0.4;
b = 1;
figure
for i=1:20
    x0 = rand(1,2);
    [t,x] = ode45(@(t,x)cw4system(t,x,a,b,g),t,x0);
    plot(x(:,1),x(:,2), 'k')
    plot(x(1,1),x(1,2),'ko')
end
title('a=0.8,b=4')


