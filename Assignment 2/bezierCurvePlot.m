function bezierCurvePlot(P, Q, sP, sQ)
% plot the given control points P and points Q on beizer curve
% P control points
% Q points on bezier curve
% style for P and style for Q: sP, sQ

dim = length(P(1,:));
if dim == 2;
    plot(Q(:,1),Q(:,2),sQ, 'linewidth',2);
    hold on;
    plot(P(:,1),P(:,2),sP, 'linewidth',2,'MarkerFaceColor', 'r', 'MarkerSize',14);
    %hold off;
else 
    if dim == 3    
        plot(P(:,1),P(:,2),sP, 'linewidth',2);
        hold on;
        plot(Q(:,1),Q(:,2),sQ, 'linewidth',2);
        %hold off;
    end
end