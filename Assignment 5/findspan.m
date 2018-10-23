%%% =================== find knot span =================
% U: knots
% n: number of CP minus 1; that is, p0, p1, ..., p_n
% p: degree
% u: u value
% return the span, starting from u_0. 
% Date: Oct 14, 2018
function s = findspan(n,p,u,U)
if u < U(p) || u > U(n+p-1)
    print "error in u value wrt knots"
    u
    U
    return;
end
if (u==U(n+p-1))  % XQ 
    s=n; 
    return,  
end
low = p;
high = n + 1;
mid = floor((low + high) / 2);
while (u < U(mid+1) || u >= U(mid+2))
    if (u < U(mid+1))
        high = mid;
    else
        low = mid;
    end
    mid = floor((low + high) / 2);
end
s = mid;

s= s+1; % XQ. For Matlab, we should add one to the return value.