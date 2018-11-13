clear all;
close all;
u = 0:0.01:1;
y = 0*(1 - u).^3 + 0.5522*3.*u.*(1-u).^2 + 1*3*(1-u).*u.^2 + 1*u.^3;
x = 1*(1 - u).^3 + 1*3.*u.*(1-u).^2 + 0.5522*3*(1 - u).*u.^2 + 0*u.^3;
c = cos(u*pi/2);
d = sin(u*pi/2);
z = sqrt((x -c).^2 + (y - d).^2);
disp('The maximum value of discrepancy')
max(z)
for i=1:length(z)
    if (z(i) == max(z))
        break;
    end
end
disp('The value of u at which max discrepancy occurs')
u(i)