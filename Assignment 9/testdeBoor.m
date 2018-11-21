
%maybe do not support the knot vector that internal knot 
%has more than 1 multiplicity

%no check on match of number of control points, order and number of
%knots

clear all;close all;

%define control points
%P=[0 0; 1 2; 3 5; 5 0; 7 -1];
P=[0 0;1 0;2 0;4 1;5 2;8 2;9 3];
%define order
order = 4;
%define knot vector
%knots = [0 0 0 0 0.5 1 1 1 1];
knots=[0 0 0 0 .25 .5 .75 1 1 1 1];
    


%define display configuration
n = 40;
%do calculation
Q = bsplineCurve(P, order, knots, n);
%do plot of control polygon
plot(P(:,1),P(:,2),'r-s');
hold on;
%do plot of b-spline curve
plot(Q(:,1),Q(:,2));
hold off