function [Q] = bezierCurve(P, n)
% computer points on bezier curve defined by control points P
% P control points, in matrix format: {size of P} * {dimension of P}
% n the number of points need to be computed
% isPlot  1 for plot, 0 for non plot
% Q points lying on the bezier curve
i = 1;
for u=0:(1/(n-1)):1
    Q(i,:) = deCasteljau(P, u);
    i = i + 1;
end
