clear all, close all;
hold off;
axis([-30 30 -30 30])

n = 100;
id = 2; % id-th point to be updated.
button = 1;
num = 0
P = [];
P1 = [];
while sum(button) <=1 %num < 1 % sum(button) <=1   % read ginputs until a mouse right-button occurs
   [x,y,button] = ginput(1)  % click w/ left-button
   p1 = [x, y];  % record clicked position
   P1 = [P1; p1];
   if size(P1,1)>1
    Q = bezierCurve(P1, n);
    bezierCurvePlot(P1, Q, '-rs','b');
   else
    plot(P1(:,1),P1(:,2),'rs', 'linewidth',2);
   end
   axis([-10 10 -10 10])
   hold off;
   
   num = num+1
end
 
set(gca,'FontSize',20)    
%title('Bezier curve');
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
zlabel('z','FontSize',20);

hold on;
%grid on;
axis off