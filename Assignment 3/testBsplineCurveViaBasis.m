
% B-spline curve via basis function

clear all;close all;

% %define control points
% P=[0 0; 1 2; 2 5; 3 0; 4 -1; 5 5; 6 -3];
% %define order
% order = 4;
% %define knot vector
% knots = [1 2 3 4 5 6 7 8 9 10 11];

P =[0 1; 1.5 0.7; 3 .85; 3.5 1.2; 5 1.1; 7.5 1.3];
order = 3;
knots = [0 0 0 1 2 3 4 4 4];




n = 20; % number of points per knot interval for display

figure(1);
hold on;

[m,d] = size(P);   %get number of control points m
k = order;

%b-splinbe parameter domain  is t(k) - t(m+1)
for i=(k):(m)   
    L = i;  % knot span
    c = zeros(n,d);
    for j=1:k
        A(j,:) = P(L-k+j,:);  %control points that affect the curve segment
    end
    
    step = (knots(i+1)-knots(i))/(n-1);   %parameter increment step
    l = 1;
    
    for u=knots(i):step:(knots(i+1))      %evaluate n points in the knot span
        N=Basisfuns(u, knots, L-1, order);
        c(l,:) = N*A;
        l  = l+1;
    end
    
    
    %do plot of control polygon
    plot(c(:,1),c(:,2),'b-',  'linewidth',2);
%    plot(c(1,1),c(1,2),'m*',  'linewidth',2); % plot the 1st end point of each knot segment
end

%axis equal;
plot(P(:,1),P(:,2),'r-o', 'linewidth',1,'MarkerFaceColor', 'r', 'MarkerSize',14);
