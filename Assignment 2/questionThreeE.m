%adding [2.5,0] at the beginning and [2.5,0] at the ended smoothens the curve
%and ensures C1 and G1 continuity
%In this example [0,0] has been used to close the curve 
clear all
close all 
clc
u = 0:0.01:1;
for i=1:size(u,2)
    c = (1 - u(i))^6.*[2.5 ; 0] + 6*(1 - u(i))^5.*u(i).*[0;0] + 15*(1 - u(i))^4.*u(i)^2.*[1;2] + 20*(1 - u(i))^3.*u(i)^3.*[3 ; 5] + 15*(1 - u(i))^2.*u(i)^4.*[4 ; 4] + 5*(1 - u(i))*u(i)^5.*[5 ; 0] + u(i)^6.*[2.5 ; 0];
    %X = sprintf('Value of Bezier curve at u=%d is %d and %d',u(i),c(1,:),c(2,:));
    plot(c(1,:),c(2,:),'-*r')
    hold on
end 