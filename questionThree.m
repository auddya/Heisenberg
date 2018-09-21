%Question Three - 2.2

n = 100;
m = 1/(n-1);
t = 0:m:1;
x = -6*t.^3 + 9*t.^2 + t;
y = -4*t.^2 + 4*t;
plot(x,y,'r')
xlabel("X axis")
ylabel("Y axis")