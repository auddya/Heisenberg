clear all
close all 
u = 0.5;
c = 0;
for i = 0:4
    b = (factorial(4)/(factorial(i)*factorial(4 - i))* (0.5^i).*((1-0.5).^(4 - i)));
    X = sprintf('The value of polynomial B%d at u=0.5 is %d',i,b);
    disp(X)
    c = c+b;
end 
Y = sprintf('Sum of polynomial is %d',c);
disp(Y)