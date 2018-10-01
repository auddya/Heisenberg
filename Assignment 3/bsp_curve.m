 function [P]=bsp_curve(bs) 
 % The input is a char array contains bs_curve information
 % input is char array,so we need to convert it into float parameter.
 % Output is a BS_curve

 % the following convert char parameter to float variable parameter
 [m n]=size(bs);
 
 % parameter Index i0, scan the parameter from the first char.
   i0=1; 
for i=1:m
    %read every line of the char array
    temp=bs(i,:);
    % one parameter start location
    j=1; 
    for i1=2:70
        %temp(i1) == 44 means comma, indicate parameter data end
        if temp(i1) == 44 
            jj=1;
            %read one parameter data
            for j1=j:i1-1  
                a(jj)=temp(j1);jj=jj+1;
            end
            %record next parameter data start location
            j=i1+1; 
            % convert the parameter data we got into double data
             P(i0) = str2num(a);
             clear a;
            i0=i0+1;
            
        end
    end
end

for i=j:70
    % temp(i)==59 means semicolon, indicate all parameter end
    if temp(i)==59 
        j2=i;
    end
end

% jj=1;
% for i=j:j2
%     a(jj)=temp(j1);jj=jj+1;
% end
% % convert it into double data
% P(i0) = str2num(a);
%above get the bs_curve parameter



k = P(3)+1; % order of the curve
N = P(2);   % controll point =N+1
for i=1:N+k+1 % n+k+1 get the knot vector
    t(i)=P(i+7);
end

% control point start location, begin to read control point
offset=8+N+k+1+N; 
for i=1:N+1
    cp(i,1)=P(offset+(i-1)*3+1);
    cp(i,2)=P(offset+(i-1)*3+2);
    cp(i,3)=P(offset+(i-1)*3+3);
end

weights = ones(size(cp,1),1);
plotNURBScurve(k-1, cp, weights, t, 'b-', 50);
plot3(cp(:,1),cp(:,2),cp(:,3),'ro-','Markerface','r');
axis equal tight

        
        