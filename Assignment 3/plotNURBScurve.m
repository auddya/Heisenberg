function plotNURBScurve(degree, ctrlPts, weights, knotvector, linestyle, res)
% % % plot NURBS curve

disp(['degree ', num2str(degree)]);
disp('weights');
disp(weights');
disp('control points...');
disp(ctrlPts);
disp('knotvector');
disp(knotvector);



Ph = ctrlPts.*repmat(weights,1,size(ctrlPts,2));
Ph = [Ph weights];
[Qh] = bsplineCurve(Ph, degree+1, knotvector, res);
Q = Qh(:,1:end-1)./repmat(Qh(:,end),1,size(Qh,2)-1);
plot3(Q(:,1),Q(:,2),Q(:,3),linestyle,'Linewidth',2);
