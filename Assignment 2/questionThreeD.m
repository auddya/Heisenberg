%adding [0,0] at the end or [5,0] at the beginning closes the curve
%In this example [0,0] has been used to close the curve 
clear all
close all 
clc
u = 0:0.01:1;
for i=1:size(u,2)
    c = (1 - u(i))^5.*[0 ; 0] + 5*(1 - u(i))^4.*u(i).*[1;2] + 10*(1 - u(i))^3.*u(i)^2.*[3 ; 5] + 10*(1 - u(i))^2.*u(i)^3.*[4 ; 4] + 5*(1 - u(i))*u(i)^4.*[5 ; 0] + u(i)^5.*[0 ; 0];
    %X = sprintf('Value of Bezier curve at u=%d is %d and %d',u(i),c(1,:),c(2,:));
    plot(c(1,:),c(2,:),'-*r')
    hold on
end 