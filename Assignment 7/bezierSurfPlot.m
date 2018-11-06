function bezierSurfPlot(P, Q, nl, nc, snl, snc)
% plot the given control points P and points Q on beizer curve
% P control points
% Q points on bezier curve
% nr number of rows of control points
% nc number of columns of control points
% snl number of sampled points in u-dir
% snc number of sampled points in v-dir

hold on;
%plot control points
for i=0:(nl-1)
     PL = P((i*nc+1):(i+1)*nc,:);
     plot3(PL(:,1),PL(:,2),PL(:,3),'-ro', 'linewidth',2,'MarkerFaceColor', 'r', 'MarkerSize',8);
     hold on;
end

for i=0:(nc-1)
     k = (i+1):nc:(nc*nl);
     PL = P(k,:);
     plot3(PL(:,1),PL(:,2),PL(:,3),'-b', 'linewidth',2);
end

%plot surface points
% for i=0:(snl-1)
%      QL = Q((i*snc+1):(i+1)*snc,:);
%      plot3(QL(:,1),QL(:,2),QL(:,3),'-g');
%      hold on;
% end
% 
% for i=0:(snc-1)
%      k = (i+1):snc:(snc*snl);
%      QL = Q(k,:);
%      plot3(QL(:,1),QL(:,2),QL(:,3),'-g');
% end

%figure(2);

[r,c] = size(Q);
out   = (reshape(Q,[snc,snl, c]));
 p = surf(out(:,:,1),out(:,:,2), out(:,:,3));
 
% style 1 
%  p.EdgeColor=0.1*[1 1 1 ];
%  p.FaceAlpha=.75;
%  p.FaceColor='green';

 % style 2
p.FaceColor = [0.5 0.5 0.75];
p.FaceAlpha=.75; %0.75 %.75;
p.EdgeColor = 'green'; %'interp';
p.LineStyle = '-'; %'none';'



hold off;
