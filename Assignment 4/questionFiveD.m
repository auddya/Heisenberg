%Question 5.1 (d) 
% Bezier curve with 5 control points denoted by red points
% Bezier curve with 4 control points denoted by yellow points 
% Blue line joins 5 control points
% Brown line joins 4 control points 
% Magenta line represents curve 

P = [0 0; 3/4 6/4; 2 7/2; 13/4 19/4; 4 4]
plot(P(:,1),P(:,2),'o');
hold on
plot(P(:,1),P(:,2));
n = 100; 
i = 1;
for u=0:(1/(n-1)):1
    Q(i,:) = deCasteljau(P, u);
    i = i + 1;
    plot(Q(:,1),Q(:,2),'b')
    hold on
end

P = [0 0; 1 2; 3 5; 4 4]
plot(P(:,1),P(:,2),'+');
hold on
plot(P(:,1),P(:,2));
n = 100; 
i = 1;
for u=0:(1/(n-1)):1
    Q(i,:) = deCasteljau(P, u);
    i = i + 1;
    plot(Q(:,1),Q(:,2),'m') 
    hold on
end

title("Bezier Curve representation with 4 and 5 control points");
xlabel("X Axis");
ylabel("Y Axis");


