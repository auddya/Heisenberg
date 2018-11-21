% Copyright: Xiaoping Qian @ UW-Madison

testNurbsSurf;  % it creates a variable "nrbs".
fileStl = 'test.stl';

[tri,vtx]=buildTriVtx(nrbs,[10,10]); % triangulate NURBS
writeSTL(fileStl,'y',tri,vtx,'mode','ascii'); % write STL
[vtx,tri]=readSTL(fileStl,'y');% read STL file
