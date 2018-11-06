

 Pc = [0 0 0; 0 2 2; 0 4 0; % v first, u=0
       3 0 3; 3 2 5; 3 4 3;
       6 0 3; 6 2 5; 6 4 3;
       9 0 0; 9 2 2; 9 4 0];  % Example problem

P = Pc;

m = 4; n = 3;
nP = reshape(P',[size(P,2),n, m]) ;
Xnm = reshape(nP(1,:,:),n,m);
Ynm = reshape(nP(2,:,:),n,m);
Znm = reshape(nP(3,:,:),n,m);

% Su
Bud = [-4/9 0 1/3 1/9]*3;
Bv = [1/4; 1/2; 1/4];
Su = [Bud*Xnm'*Bv Bud*Ynm'*Bv Bud*Znm'*Bv]

% Suv
Bvd = [-1; 0; 1];
Suv = [Bud*Xnm'*Bvd Bud*Ynm'*Bvd Bud*Znm'*Bvd]

% % Method 1
% % along u first
% u=1/3;
% Q1 = deCasteljau([Xnm(1,:); Ynm(1,:); Znm(1,:)]', u)
% Q2 = deCasteljau([Xnm(2,:); Ynm(2,:); Znm(2,:)]', u)
% Q3 = deCasteljau([Xnm(3,:); Ynm(3,:); Znm(3,:)]', u)
% % then along v
% v = 1/2;
% s = deCasteljau([Q1; Q2; Q3], v)
% 
% % Method 2
% % along v first
% v=1/2;
% Xmn = Xnm'; Ymn = Ynm'; Zmn = Znm';
% Q1 = deCasteljau([Xmn(1,:); Ymn(1,:); Zmn(1,:)]', v)
% Q2 = deCasteljau([Xmn(2,:); Ymn(2,:); Zmn(2,:)]', v)
% Q3 = deCasteljau([Xmn(3,:); Ymn(3,:); Zmn(3,:)]', v)
% Q4 = deCasteljau([Xmn(4,:); Ymn(4,:); Zmn(4,:)]', v)
% % then along v
% u = 1/3;
% s = deCasteljau([Q1; Q2; Q3; Q4], u)

