
% This code draws a parabolic cone surface.
close all;
clear all;


nu=30;  % nu points in u direction
nv=20;  % nv points in v direction

for(i = 1:nu)
    for(j=1:nv)
        u = (i-1)/(nu-1);
        v = (j-1)/(nv-1);
        Xs(i,j) = u*(2-v);
        Ys(i,j) = 2*(u^2-1)*(2-v);
        Zs(i,j) = 2*v;
    end
end

hold on;
%mesh(Xs,Ys,Zs);  
h = surf(Xs,Ys,Zs);
h.FaceColor = [0.5 0.5 0.5];
h.EdgeColor = 'green'; % 'interp'
h.LineStyle = '-'; %'none';
view(3);

u = linspace(0,1,nu);
v = linspace(0,1,nv);
F1u = 1- 3*u.^2 + 2*u.^3;
F2u = 3*u.^2 - 2*u.^3;
F3u = u - 2*u.^2 + u.^3;
F4u = -u.^2 + u.^3;
F1v = 1- 3*v.^2 + 2*v.^3;
F2v = 3*v.^2 - 2*v.^3;
F3v = v - 2*v.^2 + v.^3;
F4v = -v.^2 + v.^3;

B = [ 0 -4 0; 0 -2 2; 0 2 2; 0 2 2; % row first
       2 0 0; 1 0 2; -1 0 2; -1 0 2;
       2 0 0; 1 0 0; -1 0 0; -1 0 0;
       2 8 0; 1 4 0; -1 -4 0; -1 -4 0];
FergusonB = [ 2 -4 0; 0 -2 2; 0 2 2; 0 2 2; % row first
       2 0 0; 1 0 2; -1 0 2; -1 0 2;
       2 0 0; 1 0 0; 0 0 0; 0 0 0;
       2 8 0; 1 4 0; 0 0 0; 0 0 0];
B = FergusonB;
   
Bs = reshape(B',[size(B,2),4, 4]) ;  
Xs = [F1u(:) F2u(:) F3u(:) F4u(:)]*reshape(Bs(1,:,:),  4,4)'...
        *[F1v(:) F2v(:) F3v(:) F4v(:)]';   
Ys = [F1u(:) F2u(:) F3u(:) F4u(:)]*reshape(Bs(2,:,:),  4,4)'...
        *[F1v(:) F2v(:) F3v(:) F4v(:)]';   
Zs = [F1u(:) F2u(:) F3u(:) F4u(:)]*reshape(Bs(3,:,:),  4,4)'...
        *[F1v(:) F2v(:) F3v(:) F4v(:)]';   
    
h = surf(Xs,Ys,Zs);
h.FaceColor = [0.5 0.5 0.5];
h.EdgeColor = 'blue'; % 'interp'

xlabel('x');
ylabel('y');
zlabel('z');
set(gca,'FontSize',20)    
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
axis on;
%title('Bicubic surface');
%print('-dpdf','-painters','ferguson1.pdf')
