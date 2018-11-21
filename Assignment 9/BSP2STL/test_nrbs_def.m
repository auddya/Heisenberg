% XQ: this code gives two examples of defining NURBS surfaces.

surf = 2; %1, 2, or 3.

if surf==1
% surface 1
    CPs = [0 0 10 1; 
        10 0 0 1; 
        20 0 0 1; 
        30 0 10 1;  % 1st row (u=0: v=0 to v=1)
         -10 10 15 1; 
         10 10 0 1; 
         20 10 0 1; 
         40 10 18 1;  % 2nd row
         0 20 10 1; 
         10 20 0 1; 
         20 20 0 1; 
         30 20 10 1  % u=1: v=0 to 1
         ];  % v first in Control point list

    knotsU = [0,0,0,1,1,1];
    knotsV = [0,0,0,0,1,1,1,1];
    k1= 3;  % order in u
    k2 = 4;  % order in v
    ncp_u = 3;  % number of CP in u
    ncp_v = 4;  % number o CP in v
    cph=[CPs(:,1:3).*CPs(:,4), CPs(:,4)]; % turn into homogneous coorinates
    tCP = reshape(cph',[4,ncp_v,ncp_u]);
    CPs_d3 = permute(tCP,[1,3,2]); % change it to u first by switching 3rd dimension w/ 2nd dimension
end

if surf==2
% surface 2
    CPs = [0 4 0 1; 1 5 1 1; 3 4 3 1; 4 6 5 1; 7 8 3 1;  %v=0, u=0:1
         -1 3 4 1; 1.5 3.5 2 1; 3 3 2 1; 5 4 3 1; 6 5 4 1;
         0 2 3 1; 1 3 0 1; 3 2 4 1; 4 3 7 1; 7 3 7 1;
         0 0 0 1; 2 1 -1 1; 4 0 3 1; 5 -1 5 1; 8 -2 4 1 %v=1, u=0:1
         ];  % u first in CP list
    %number of lows and columns
    ncp_u = 5
    ncp_v = 4
    % order of b-spline in u and v direction
    k1 = 3;
    k2 = 3;
    %kont vector in u and v direction
    knotsU = [0 0 0 0.33 0.66 1 1 1];
    knotsV = [0 0 0 0.5 1 1 1];
    cph=[CPs(:,1:3).*CPs(:,4), CPs(:,4)]; % turn into homogneous coorinates
    CPs_d3 = reshape(cph',[4,ncp_u,ncp_v]); % assume CPs are stored in u-first
end

if surf==3
% surface 3
    CPs= [ 
        50     0    10     1
        40     0    20     1
        40     0    45     1
        50     0    55     1
        50     0    70     1
        34     0   105     1
        55     5    10     1
        45     5    20     1
        45     5    45     1
        55     5    55     1
        55     5    70     1
        39     5   105     1];
    ncp_u = 6;
    ncp_v = 2;
    k1 = 4;
    k2 = 2;
    knotsU = [0 0 0 0 0.33 0.66 1 1 1 1];
    knotsV = [0 0 1 1];
    cph=[CPs(:,1:3).*CPs(:,4), CPs(:,4)]; % turn into homogneous coorinates
    CPs_d3 = reshape(cph',[4,ncp_u,ncp_v]); % assume CPs are stored in u-first
end

nrbs.type   = 'Surface';
nrbs.number = [ncp_u, ncp_v];
nrbs.coefs = CPs_d3;  % CPs in homogeneous coordinates
nrbs.knots = {knotsU knotsV};
nrbs.order = [k1 k2];
    
plotNrbs(nrbs);    



   