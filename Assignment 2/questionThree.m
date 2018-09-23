
clear all
close all
u =[0.2 0.5 0.8];
d = 4; %degree of the polynomial
c = size(u,2);
for j=1:c
P =[0,0; 1,2; 3,5; 4,4; 5,0];
  for r=1:d
    for i=1:(d+1-r) % the array index in Matlab starts with 1, not 0.
        P(i,:) = (1-u(j))*P(i,:) + u(j)*P(i+1,:);
    end
  end
  fprintf('Value of the Bezier curve point at u=%d is given as %i,%i \n',u(j),P(1,:))
end 


