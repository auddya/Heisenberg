%Question One - Part B of 1.1

theta = 0:pi/10:2*pi;
x = 5 + 5*cos(theta);
y = 3 + 3*sin(theta);
plot(x,y,'r:o')
xlabel("X axis")
ylabel("Y axis")
title("Plotting 20 points on an ellipse")
plot(x,y,'m')