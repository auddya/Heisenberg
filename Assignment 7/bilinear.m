
% This code draws a bilinear surface.
close all;
clear all;

p00 = [0 0 0];
p10 = [5 0 0];
p01 = [0 1 0];
p11 = [1 1 1];
P = [p00 
    p01;  % v first, from 1 to n
     p10 
     p11];
nu=5;  % nu points in u direction
nv=10;  % nv points in v direction
m = 2;
n = 2;
% Each row of P' contains (n times m) x-, y- or z-coordinates 
% P is of dimension 4*3 and P' of 3*4. We want to change 4 into n*m=2*2.
Ps = reshape(P',[size(P,2),n,m]);
for(i = 1:nu)
    for(j=1:nv)
        u = (i-1)/(nu-1);
        v = (j-1)/(nv-1);
        % reshape(Ps(1,:,:),  n,m)': convert Ps(1,:,:) of dimension (1 times n times m)
        % into a matrix of dimension (m times n)
        Xs(i,j) = [1-u u]*reshape(Ps(1,:,:),  n,m)'*[1-v v]';
        Ys(i,j) = [1-u u]*reshape(Ps(2,:,:),  n,m)'*[1-v v]';
        Zs(i,j) = [1-u u]*reshape(Ps(3,:,:),  n,m)'*[1-v v]';
    end
end

hold on;
%mesh(Xs,Ys,Zs);  
h = surf(Xs,Ys,Zs);
h.FaceColor = [0.5 0.5 0.5];
h.EdgeColor = 'interp';
h.LineStyle = '-'; %'none';
plot3(P(:,1), P(:,2),P(:,3),'o',...
                    'MarkerEdgeColor','r',...
                    'MarkerFaceColor','r',...
                     'MarkerSize',10)
view(3);


%% draw constant U -curves
u=0.63;
nv = 20;
for(j=1:nv)
    v = (j-1)/(nv-1);
    % reshape(Ps(1,:,:),  n,m)': convert Ps(1,:,:) of dimension (1 times n times m)
    % into a matrix of dimension (m times n)
    uXs(j) = [1-u u]*reshape(Ps(1,:,:),  n,m)'*[1-v v]';
    uYs(j) = [1-u u]*reshape(Ps(2,:,:),  n,m)'*[1-v v]';
    uZs(j) = [1-u u]*reshape(Ps(3,:,:),  n,m)'*[1-v v]';
end
plot3(uXs, uYs,uZs,'-b',...
                    'linewidth',2);

%% draw constant V -curves
v=0.3;nu = 20;
for(i=1:nv)
    u = (i-1)/(nu-1);
    % reshape(Ps(1,:,:),  n,m)': convert Ps(1,:,:) of dimension (1 times n times m)
    % into a matrix of dimension (m times n)
    vXs(i) = [1-u u]*reshape(Ps(1,:,:),  n,m)'*[1-v v]';
    vYs(i) = [1-u u]*reshape(Ps(2,:,:),  n,m)'*[1-v v]';
    vZs(i) = [1-u u]*reshape(Ps(3,:,:),  n,m)'*[1-v v]';
end
plot3(vXs, vYs,vZs,'-g',...
                    'linewidth',2);


    
xlabel('x');
ylabel('y');
zlabel('z');
axis off;
title('Bilinear surface')
axis off;
%print('-dpdf','-painters','bilinear.pdf')
