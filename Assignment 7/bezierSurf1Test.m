clear all, close all;

% control points A for a degree 3 * 2 patch
 P =  [0 0 0; 0 2 2; 0 4 0;
       3 0 3; 3 2 5; 3 4 3;
       6 0 3; 6 2 5; 6 4 3;
       9 0 0; 9 2 2; 9 4 0];  % Example problem
 nr = 4;
 nc = 3;
 
% surface evaluation
u = 1/3.; v = 1/2.;
tQ = deCasteljauSurf(P,nr, nc, u, v)


%number of sampled points
snr = 25; % number of sampled points in row (in u direction)
snc = 15; % number of sampled points in col (in v direction)
hold on;
Q = bezierSurf(P, nr, nc, snr, snc);
%plot the surface
bezierSurfPlot(P, Q, nr, nc, snr, snc);
view(3);

axis off;
