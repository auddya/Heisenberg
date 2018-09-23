clear all
close all 
clc
u = [0.2 0.5 0.8];
for i=1:size(u,2)
    c = (1 - u(i))^4.*[0 ; 0] + 4*(1 - u(i))^3.*u(i).*[1;2] + 6*(1 - u(i))^2.*u(i)^2.*[3 ; 5] + 4*(1 - u(i)).*u(i)^3.*[4 ; 4] + u(i)^4.*[5 ; 0];
    X = sprintf('Value of Bezier curve at u=%d is %d and %d',u(i),c(1,:),c(2,:));
    disp(X)
end 