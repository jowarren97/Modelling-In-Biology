%Algorithmic Implementation of Deterministic Euler Method

clear all;

%% h = 0.01
h = 0.01;
tstart = 0;
tend = 10;

[xdata1, tdata1] = euler_method(tstart, tend, 5, h, 0.25);

for i = 1:1:(tend-tstart)/h + 1
    y1(i) = 5*exp(-0.25*(i-1)*h);
end

err = immse(xdata1,y1)

plot(tdata1, xdata1, tdata1, y1)

%%  h = 0.001
h = 0.001;
tstart = 0;
tend = 10;

[xdata2, tdata2] = euler_method(tstart, tend, 5, h, 0.25);

for i = 1:1:(tend-tstart)/h + 1
    y2(i) = 5*exp(-0.25*(i-1)*h);
end

err = immse(xdata2,y2)

plot(tdata2, xdata2, tdata2, y2)
