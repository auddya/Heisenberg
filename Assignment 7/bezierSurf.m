function [Q] = bezierSurf(P, nr, nc, snr, snc)
% return points on the surface.
% compute points on bezier surface defined by control points P
% P control points, in matrix format: {size(nr*nc) of P} * {dimension of P}
% nr number of rows of control points
% nc number of colums of control points
% snr the number of points need to be computed in row
% snc the number of points need to be computed in column
% Q points lying on the bezier surface

i = 1;
for u=0:(1/(snr-1)):1
    for v=0:(1/(snc-1)):1
    Q(i,:) = deCasteljauSurf(P,nr, nc, u, v);
    i = i + 1;
    end
end
