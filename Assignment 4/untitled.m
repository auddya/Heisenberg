function bezier(n)
close all;
nplot = 100;

figure(1);
hold on; box on;
set(gca,'Fontsize',16);
title('Choose 1 st control points');

t = linspace(0,1,nplot);
	
for i = 1:n	
	title(['Choose ',num2str(i),' th. control point']);
	p(i,:) = ginput(1);
	hold off;
	plot(p(:,1),p(:,2),'k-','LineWidth',2);
	axis([0 1 0 1]);
	hold on; box on;
	[X,Y,p_bez] = CASTELJAU(0,1,p,t);
	plot(p_bez(:,1),p_bez(:,2),'b-','LineWidth',4);
	plot(p(:,1),p(:,2),'ro','MarkerSize',10,'MarkerFaceColor','r');
end

title(['Bezier-curve with ',num2str(n),' control points']);