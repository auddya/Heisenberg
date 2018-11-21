
clear all; close all;

%control points
P = [0 0 0; 0 10 0; 0 20 5; 0 30 15; 0 40 10; 0 50 5; 0 60 0;  % v first
    10,0,0; 10 10 10; 10 20 20; 10 30 20; 10 40 30; 10 50 15; 10 60 5;
    20 0 0; 20 10 30; 20 20 40; 20 30 35; 20 40 35; 20 50 15; 20 60 10;
    30 0 0; 30 10 25; 30 20 45; 30 30 40; 30 40 35; 30 50 25; 30 60 15;
    40 0 0; 40 10 15; 40 20 35; 40 30 45; 40 40 50; 40 50 30; 40 60 20;
    50 0 0; 50 10 15; 50 20 30; 50 30 35; 50 40 40; 50 50 25; 50 60 15;
    60 0 0; 60 10 5; 60 20 15; 60 30 25; 60 40 20; 60 50 15; 60 60 5;
];
%number of rows and columns
nr = 7;
nc = 7;

% order of b-spline in u and v direction
orderu = 4;
orderv = 4;

%kont vector in u and v direction
knotsu = [0 0 0 0 1 2 3 4 4 4 4]/4.;
knotsv = [0 0 0 0 1 2 3 4 4 4 4]/4.;

%sample points number
snr = 10;
snc = 10;


bsplineSurf2IGES(knotsu, knotsv, orderu, orderv,...
        nr, nc, P, 'eg_77.igs')