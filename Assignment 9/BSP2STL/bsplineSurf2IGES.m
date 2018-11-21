function bsplineSurf2IGES(knots_u, knots_v, orderu, orderv,...
        ncp_u, ncp_v, P, iges_file_name)
% assume P is array of CP: v first, has 3 coordinates for each point
% knotsu, knots v have superfluous knots. Knots needs to be normalized to
% [0,1]. 
% orderu=degree +1

DisplayNURBS = true;

CPs = P;
if size(P,2)==3
    CPs(:,4) = 1.;  % add unit weight
end
% knots_u = [0 0 0 0 1 2 3 4 4 4 4]/4.;
% knots_v = [0 0 0 0 1 2 3 4 4 4 4]/4.;
k1 = orderu;
k2 = orderv;
% ncp_u = 7;
% ncp_v = 7;

cph=[CPs(:,1:3).*CPs(:,4), CPs(:,4)]; % turn into homogneous coorinates
tCP = reshape(cph',[4,ncp_v,ncp_u]);
CPs_d3 = permute(tCP,[1,3,2]); % change it to u first by switching 3rd dimension w/ 2nd dimension

if DisplayNURBS == true
    nrbs.type   = 'Surface';
    nrbs.number = [ncp_u, ncp_v];
    nrbs.coefs = CPs_d3;  % CPs in homogeneous coordinates
    nrbs.knots = {knots_u knots_v};
    nrbs.order = [k1 k2];
    plotNrbs(nrbs); 
    %print('-dpdf','-painters','extrusion1.pdf')
end

%iges_file_name = 'test2.igs';
nrbs_Spink.form='B-NURBS';
nrbs_Spink.dim = 4;
nrbs_Spink.number = [ncp_u, ncp_v];
nrbs_Spink.coefs = CPs_d3;  % CPs in homogeneous coordinates
nrbs_Spink.knots = {knots_u knots_v};
nrbs_Spink.order = [k1 k2];
NrbsSrf2IGES(nrbs_Spink,iges_file_name,'./');
disp(iges_file_name);

end

