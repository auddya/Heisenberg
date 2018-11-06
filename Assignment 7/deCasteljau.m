function [Q] = deCasteljau(P, u)
% computer point with paremeter value u on bezier curve defined by control points P
% P control points, in matrix format: {size of P} * {dimension of P}
% dimension of P is 2 or 3
% u parameter with value [0 1]
% Q point lying on the bezier curve
% input: P: control points P; u:  parameter value 
% output: Q: the Bezier curve point at u
% example: >> 
%       P = [0 0; 1 2; 3 5; 4,4; 5 0];
% call:  Q=deCasteljau(P, 0.5)
% output:Q =
%   2.6875    3.3750

% m: # of control points; m = the degree of the curve +1
[m, n] = size(P);  
% if m <= 2 
%     err('please specify more than 2 control points');
% end

if u < 0 | u > 1
    err('u must be in range from 0 to 1');
end

for i=1:(m-1)
    for j=1:(m-i) % the array index in Matlab starts with 1, not 0.
        P(j,:) = (1-u)*P(j,:) + u*P(j+1,:); 
        % ':' meaning for all the columns: x, y, z
    end
end

Q=P(1,:);