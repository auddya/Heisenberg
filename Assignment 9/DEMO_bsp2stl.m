function DEMO_bsp2stl

close all
fileNbs='femurProximal.nbs'; % NURBS file
fileStl='femurProximal.stl'; % STL file

nrbs=readNbs(fileNbs,'y'); % load NURBS
[tri,vtx]=buildTriVtx(nrbs,[40,40]); % triangulate NURBS
writeSTL(fileStl,'y',tri,vtx,'mode','ascii'); % write STL
[vtx,tri]=readSTL(fileStl,'y');% read STL file

eps;
