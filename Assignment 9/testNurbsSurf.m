% Copyright: Xiaoping Qian @ UW-Madison


CPs = [0 2 4 1; 0 3 2 2; 0 2 0 1; % v first
       2 3 4 2; 2 4 2 6; 2 3 0 2;
       4 2 4 1; 4 3 2 2; 4 2 0 1
    ];  
knots_u = [0 0 0 1 1 1];
knots_v = [0 0 0 1 1 1];
k1 = 3;
k2 = 3;
ncp_u = 3;
ncp_v = 3;

cph=[CPs(:,1:3).*CPs(:,4), CPs(:,4)]; % turn into homogneous coorinates
tCP = reshape(cph',[4,ncp_v,ncp_u]);
CPs_d3 = permute(tCP,[1,3,2]); % change it to u first by switching 3rd dimension w/ 2nd dimension

nrbs.type   = 'Surface';
nrbs.number = [ncp_u, ncp_v];
nrbs.coefs = CPs_d3;  % CPs in homogeneous coordinates
nrbs.knots = {knots_u knots_v};
nrbs.order = [k1 k2];
    
plotNrbs(nrbs); 
%print('-dpdf','-painters','test1.pdf')

