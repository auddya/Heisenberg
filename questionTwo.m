%Question Two - 2.1

k = [0.5 1 1.5 2];
figure(1); cla;
colorstring = 'kbgr';
u = 0:0.01:1;
for i = 1:size(k,2)
p = [4 4 0;24 4 0;0.8320*k(i) 0.5547*k(i) 0;0.8320 -0.5547 0];
for j = 1:size(u,2)
g = [u(j)^3 u(j)^2 u(j) 1];
A = [2 -2 1 1; -3 3 -2 -1; 0 0 1 0; 1 0 0 0];
x(j) = g*A*p(:,1);
y(j) = g*A*p(:,2);
end
plot(x,y, 'Color', colorstring(i))
xlabel("X axis")
ylabel("Y axis")
hold on
end
legend("k = 0.5","k = 1","k = 1.5","k = 2")
hold off