%% 1
tspan = [0 10];
x0 = 4;
k = 3/5;
[t,x] = ode45(@(t,x) -k*x, tspan, x0);
plot(t,x)

%% 2
y = dsolve('Dy = -k*y');
k = 3/5;
C2 = 4;
subs(y);
y1 = eval(y);
plot(t,y1)

err = immse(x,y1)

%% 3
SOL = ode45(@(t,x) -k*x, tspan, x0);
steps = SOL.x;
for i = 1:11
    stepsize(i) = steps(i+1) - steps(i);
end

stepsize(12) = 0;
plot(steps, stepsize)


