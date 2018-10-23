
%maybe do not support the knot vector that internal knot 
%has more than 1 multiplicity

%no check on match of number of control points, order and number of
%knots

clear all;close all;

%define control points
%P=[0 0; 1 2; 3 5; 5 0; 7 -1];
%define order
%define knot vector
%knots = [0 0 0 0 0.5 1 1 1 1];
%u=0.2;
%L=4; % u=0.2 is between u4=0 and u5=0.5


P=[10,15,20; 20,25,5; 40,25,0; 60,5,0; 80,15,-5;
    80,30,-10; 90,45,-10; 115,40,-5; 125,15,0];
order = 4;
knots = [0 0 0 1 2 3 4 5 6 6 6];

% P=[0 0;1 0;2 0;4 1;5 2;8 2;9 3];
% order = 4;
% knots=[0 0 0 0 .25 .5 .75 1 1 1 1];
% u=0.6;
% L= 6;



% P=[0, 1; 1.5, 0.7; 3, .85; 3.5, 1.2; 5, 1.1; 7.5, 1.3];
% order = 3;
% knots = [0 0 0 1 2 3 4 4 4];
% u = 2.5
%L = 5;
% L = findspan(size(P,1),order-1,u,knots)
% 
% Q = deBoor(order, knots, P, u, L)


%define display configuration
n = 40;
%do calculation
Q = bsplineCurve(P, order, knots, n);
%do plot of control polygon
plot(P(:,1),P(:,2),'r-o', 'linewidth',1,'MarkerFaceColor', 'r', 'MarkerSize',14);
hold on;
%do plot of b-spline curve
plot(Q(:,1),Q(:,2),'-b', 'linewidth',2);
hold off