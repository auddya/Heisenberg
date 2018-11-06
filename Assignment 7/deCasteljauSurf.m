function [Q] = deCasteljauSurf(P, nr, nc, u, v)
%P bezier control points with format [p0; p1; p2;....p(nr*nc)]
%every p(i) is of form (x, y, z) or (x, y)
%nr number of rows
%nc number of columns
%u  u-parameter value
%v  v-parameter value

for i=0:(nr-1)  %do decasteljau on every row in v-dir
    PR = P((i*nc+1):(i+1)*nc,:);  % i-th row CPs
    QR(i+1,:) = deCasteljau(PR, v);
end
Q = deCasteljau(QR, u);  %do decastlejau in u-dir


