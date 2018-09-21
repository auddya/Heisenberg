clear all
close all 
figure(1); cla;
colorstring = 'kbmgr';
u = 0:0.01:1;
for i = 0:4
    b = (factorial(4)/(factorial(i)*factorial(4 - i))* (u.^i).*((1-u).^(4 - i)));
    plot(u,b,'Color',colorstring(i+1))
    xlabel("X axis")
    ylabel("Y axis")
    hold on
    X = sprintf('The maximum value of polynomial B%d is %d',i,max(b));
    disp(X)
    Y = sprintf('The minimum value of polynomial B%d is %d',i,min(b));
    disp(Y)
end 
legend("B0","B1","B2","B3","B4");
hold off
