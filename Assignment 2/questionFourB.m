% This program draws the letter "B" defined in quadratic or linear Bezier
% curves.
% It applies an affine transformation on the letter.

clear all, close all;
n = 50;  % number of point on each Bezier curve

styleP = ':bs';
styleQ = 'r'; %'-b'
stylenP = ':bs';
stylenQ = 'r';

DrawOldLetter = true;
DrawNewLetter = true;

h = figure;
hold on;

% control points for contour 1
% Outer D
P1 = [-21.210, 31.722, 0
    -16.046, 31.722, 0
    -10.882, 31.722, 0];
P2 = [-16.046, 31.722, 0
    -10.882, 31.722, 0
    -7.385, 31.722, 0];
P3 = [-10.882, 31.722, 0
    -7.385, 31.722, 0
    -5.545, 31.292,0];
P4 = [-7.385, 31.722, 0
    -5.545, 31.292, 0
    -2.968, 30.699, 0];
P5 = [-5.545, 31.292, 0
    -2.968, 30.699, 0
    -1.148, 29.145, 0];
P6 = [-2.968, 30.699, 0
    -1.148, 29.145, 0
    1.224, 27.141, 0];
P7 = [-1.148, 29.145, 0
    1.224, 27.141, 0
    2.458, 23.974, 0];
P8 = [1.224, 27.141, 0
    2.458, 23.974, 0
    3.576, 20.904, 0];
P9 = [2.458, 23.974, 0
    3.576, 20.904, 0
    3.576, 16.895, 0];
P10 = [3.576, 20.904, 0
    3.576, 16.895, 0
    3.576, 13.480, 0];
P11 = [3.576, 16.895, 0
    3.576, 13.480, 0
    2.787, 10.931, 0];
P12 = [3.576, 13.480, 0
    2.787, 10.931, 0
    1.981, 8.204, 0];
P13 = [2.787, 10.931, 0
    1.981, 8.204, 0
    0.733, 6.476, 0];
P14 = [1.981, 8.204, 0
    0.733, 6.476, 0
    -0.514, 4.748, 0];
P15 = [0.733, 6.476, 0
    -0.514, 4.748, 0
    -1.997, 3.756, 0];
P16 = [-0.514, 4.748, 0
    -1.997, 3.756, 0
    -3.480, 2.765, 0];
P17 = [-1.997, 3.756, 0
    -3.480, 2.765, 0
    -5.576, 2.253, 0];
P18 = [-3.480, 2.765, 0
    -5.576, 2.253, 0
    -7.672, 1.742, 0];
P19 = [-5.576, 2.253, 0
    -7.672, 1.742, 0
    -10.392, 1.742, 0];
P20 = [-7.672, 1.742, 0
    -10.392, 1.742, 0
    -15.801, 1.742, 0];
P21 = [-10.392, 1.742, 0
    -15.801, 1.742, 0
    -21.210, 1.742, 0];
P22 = [-15.801, 1.742, 0
    -21.210, 1.742, 0
    -21.210, 16.732, 0];
P23 = [-21.210, 1.742, 0
    -21.210, 16.732, 0
    -21.210, 31.722,0];
    
    
% control points for contour 2
% Inner ring of D 

Q1 = [-17.242, 28.184, 0
    -14.093, 28.184, 0
    -10.944, 28.184, 0];
Q2 = [-14.093, 28.184, 0
    -10.944, 28.184, 0
    -7.406, 28.184, 0];
Q3 = [-10.944, 28.184, 0
    -7.406, 28.184, 0
    -5.811, 27.570, 0];
Q4 = [-7.406, 28.184, 0
    -5.811, 27.570, 0
    -3.602, 26.711, 0];
Q5 = [-5.811, 27.570, 0
    -3.602, 26.711, 0
    -2.058, 24.186, 0];
Q6 = [-3.602, 26.711, 0
    -2.058, 24.186, 0
    -0.514, 21.660, 0];
Q7 = [-2.058, 24.186, 0
    -0.514, 21.660, 0
    -0.514, 16.957, 0];
Q8 = [-0.514, 21.660, 0
    -0.514, 16.957, 0
    -0.514, 13.562, 0];
Q9 = [-0.514, 16.957, 0
    -0.514, 13.562, 0
    -1.302, 11.180, 0];
Q10 = [ -0.514, 13.562, 0
    -1.302, 11.180, 0
    -2.089, 8.797, 0];
Q11 = [-1.302, 11.180, 0
    -2.089, 8.797, 0
    -3.567, 7.614, 0];
Q12 = [-2.089, 8.797, 0
    -3.567, 7.614, 0
    -4.392, 6.377, 0];
Q13 = [-3.567, 7.614, 0
    -4.392, 6.377, 0
    -6.189, 5.832, 0];
Q14 = [-4.392, 6.377, 0
    -6.189, 5.832, 0
    -7.876, 5.280, 0];
Q15 = [-6.189, 5.832, 0
    -7.876, 5.280, 0
    -10.841, 5.280, 0];
Q16 = [-7.876, 5.280, 0
    -10.841, 5.280, 0
    -14.042, 5.280, 0];
Q17 = [-10.841, 5.280, 0
    -14.042, 5.280, 0
    -17.242, 5.280, 0];
Q18 = [-14.042, 5.280, 0
    -17.242, 5.280, 0
    -17.242, 16.732, 0];
Q19 = [-17.242, 5.280, 0
    -17.242, 16.732, 0
    -17.242, 28.184, 0];

%contour points for contour 3
%Outer ring of A

M1 = [17.252, 31.722, 0
    21.531, 31.722, 0
    33.801, 1.742, 0];
M2 = [21.531, 31.722, 0
    33.801, 1.742, 0
    29.281, 1.742, 0];
M3 = [33.801, 1.742, 0
    29.281, 1.742, 0
    25.784, 10.822, 0];
M4 = [29.281, 1.742, 0
    25.784, 10.822, 0
    13.248, 10.822, 0];
M5 = [25.784, 10.822, 0
    13.248, 10.822, 0
    9.956, 1.742, 0];
M6 = [13.248, 10.822, 0
    9.956, 1.742, 0
    5.743 1.742, 0];
M7 = [9.956, 1.742, 0
    5.743 1.742, 0
    17.257, 31.722 0];

%contour points for contour 4
%Inner ring of B

N1 = [19.302, 28.572, 0
    20.153, 26.177, 0
    21.428, 22.356, 0];
N2 = [20.153, 26.177, 0
    21.428, 22.356, 0
    22.993, 18.264, 0];
N3 = [ 21.428, 22.356, 0
    22.993, 18.264, 0
    24.557, 14.053, 0];
N4 = [22.993, 18.264, 0
    24.557, 14.053, 0
    19.475, 14.053, 0];
N5 = [24.557, 14.053, 0
    19.475, 14.053, 0
    14.394, 14.053, 0];
N6 = [19.475, 14.053, 0
    14.394, 14.053, 0
    16.040, 18.450, 0];
N7 = [14.394, 14.053, 0
    16.040, 18.450, 0
    17.686, 22.846, 0];
N8 = [16.040, 18.450, 0
    17.686, 22.846, 0
    19.997, 26.139, 0];
N9 = [17.686, 22.846, 0
    19.997, 26.139, 0
    19.302, 28.572, 0];

if DrawOldLetter==true
    Q = bezierCurve(P1, n); bezierCurvePlot(P1, Q, styleP, styleQ); 
    Q = bezierCurve(P2, n); bezierCurvePlot(P2, Q, styleP, styleQ);
    Q = bezierCurve(P3, n); bezierCurvePlot(P3, Q, styleP, styleQ);
    Q = bezierCurve(P4, n); bezierCurvePlot(P4, Q, styleP, styleQ);
    Q = bezierCurve(P5, n); bezierCurvePlot(P5, Q, styleP, styleQ); 
    Q = bezierCurve(P6, n); bezierCurvePlot(P6, Q, styleP, styleQ);
    Q = bezierCurve(P7, n); bezierCurvePlot(P7, Q, styleP, styleQ);
    Q = bezierCurve(P8, n); bezierCurvePlot(P8, Q, styleP, styleQ);
    Q = bezierCurve(P9, n); bezierCurvePlot(P9, Q, styleP, styleQ);

    Q = bezierCurve(M1, n); bezierCurvePlot(M1, Q, styleP, styleQ); 
    Q = bezierCurve(M2, n); bezierCurvePlot(M2, Q, styleP, styleQ);
    Q = bezierCurve(M3, n); bezierCurvePlot(M3, Q, styleP, styleQ);
    Q = bezierCurve(M4, n); bezierCurvePlot(M4, Q, styleP, styleQ);
    Q = bezierCurve(M5, n); bezierCurvePlot(M5, Q, styleP, styleQ); 
    Q = bezierCurve(M6, n); bezierCurvePlot(M6, Q, styleP, styleQ);
    Q = bezierCurve(M7, n); bezierCurvePlot(M7, Q, styleP, styleQ);
    Q = bezierCurve(M8, n); bezierCurvePlot(M8, Q, styleP, styleQ);
    Q = bezierCurve(M9, n); bezierCurvePlot(M9, Q, styleP, styleQ);

    Q = bezierCurve(B1, n); bezierCurvePlot(B1, Q, styleP, styleQ); 
    Q = bezierCurve(B2, n); bezierCurvePlot(B2, Q, styleP, styleQ);
    Q = bezierCurve(B3, n); bezierCurvePlot(B3, Q, styleP, styleQ);
    Q = bezierCurve(B4, n); bezierCurvePlot(B4, Q, styleP, styleQ);
    Q = bezierCurve(B5, n); bezierCurvePlot(B5, Q, styleP, styleQ); 
    Q = bezierCurve(B6, n); bezierCurvePlot(B6, Q, styleP, styleQ);
    Q = bezierCurve(B7, n); bezierCurvePlot(B7, Q, styleP, styleQ);
    Q = bezierCurve(B8, n); bezierCurvePlot(B8, Q, styleP, styleQ);
    Q = bezierCurve(B9, n); bezierCurvePlot(B9, Q, styleP, styleQ);
    Q = bezierCurve(B10, n); bezierCurvePlot(B10, Q, styleP, styleQ); 
    Q = bezierCurve(B11, n); bezierCurvePlot(B11, Q, styleP, styleQ); 
    Q = bezierCurve(B12, n); bezierCurvePlot(B12, Q, styleP, styleQ);
    Q = bezierCurve(B13, n); bezierCurvePlot(B13, Q, styleP, styleQ);
    Q = bezierCurve(B14, n); bezierCurvePlot(B14, Q, styleP, styleQ);
    Q = bezierCurve(B15, n); bezierCurvePlot(B15, Q, styleP, styleQ); 
    Q = bezierCurve(B16, n); bezierCurvePlot(B16, Q, styleP, styleQ);
    Q = bezierCurve(B17, n); bezierCurvePlot(B17, Q, styleP, styleQ);
    Q = bezierCurve(B18, n); bezierCurvePlot(B18, Q, styleP, styleQ);
    Q = bezierCurve(B19, n); bezierCurvePlot(B19, Q, styleP, styleQ);
    Q = bezierCurve(B20, n); bezierCurvePlot(B20, Q, styleP, styleQ); 
    Q = bezierCurve(B21, n); bezierCurvePlot(B21, Q, styleP, styleQ); 
end

% shear transformation
T = [2 2 0
     0 2 0
     0 0 1];
nP1 = P1*T';
nP2 = P2*T';
nP3 = P3*T';
nP4 = P4*T';
nP5 = P5*T';
nP6 = P6*T';
nP7 = P7*T';
nP8 = P8*T';
nP9 = P9*T';

nM1 = M1*T';
nM2 = M2*T';
nM3 = M3*T';
nM4 = M4*T';
nM5 = M5*T';
nM6 = M6*T';
nM7 = M7*T';
nM8 = M8*T';
nM9 = M9*T';

nB1 = B1*T';
nB2 = B2*T';
nB3 = B3*T';
nB4 = B4*T';
nB5 = B5*T';
nB6 = B6*T';
nB7 = B7*T';
nB8 = B8*T';
nB9 = B9*T';
nB10 = B10*T';
nB11 = B11*T';
nB12 = B12*T';
nB13 = B13*T';
nB14 = B14*T';
nB15 = B15*T';
nB16 = B16*T';
nB17 = B17*T';
nB18 = B18*T';
nB19 = B19*T';
nB20 = B20*T';
nB21 = B21*T';

if DrawNewLetter == true
    Q = bezierCurve(nP1, n); bezierCurvePlot(nP1, Q, stylenP, stylenQ); 
    Q = bezierCurve(nP2, n); bezierCurvePlot(nP2, Q, stylenP, stylenQ);
    Q = bezierCurve(nP3, n); bezierCurvePlot(nP3, Q, stylenP, stylenQ);
    Q = bezierCurve(nP4, n); bezierCurvePlot(nP4, Q, stylenP, stylenQ);
    Q = bezierCurve(nP5, n); bezierCurvePlot(nP5, Q, stylenP, stylenQ); 
    Q = bezierCurve(nP6, n); bezierCurvePlot(nP6, Q, stylenP, stylenQ);
    Q = bezierCurve(nP7, n); bezierCurvePlot(nP7, Q, stylenP, stylenQ);
    Q = bezierCurve(nP8, n); bezierCurvePlot(nP8, Q, stylenP, stylenQ);
    Q = bezierCurve(nP9, n); bezierCurvePlot(nP9, Q, stylenP, stylenQ);


    Q = bezierCurve(nM1, n); bezierCurvePlot(nM1, Q, stylenP, stylenQ); 
    Q = bezierCurve(nM2, n); bezierCurvePlot(nM2, Q, stylenP, stylenQ);
    Q = bezierCurve(nM3, n); bezierCurvePlot(nM3, Q, stylenP, stylenQ);
    Q = bezierCurve(nM4, n); bezierCurvePlot(nM4, Q, stylenP, stylenQ);
    Q = bezierCurve(nM5, n); bezierCurvePlot(nM5, Q, stylenP, stylenQ); 
    Q = bezierCurve(nM6, n); bezierCurvePlot(nM6, Q, stylenP, stylenQ);
    Q = bezierCurve(nM7, n); bezierCurvePlot(nM7, Q, stylenP, stylenQ);
    Q = bezierCurve(nM8, n); bezierCurvePlot(nM8, Q, stylenP, stylenQ);
    Q = bezierCurve(nM9, n); bezierCurvePlot(nM9, Q, stylenP, stylenQ);


    Q = bezierCurve(nB1, n); bezierCurvePlot(nB1, Q, stylenP, stylenQ); 
    Q = bezierCurve(nB2, n); bezierCurvePlot(nB2, Q, stylenP, stylenQ);
    Q = bezierCurve(nB3, n); bezierCurvePlot(nB3, Q, stylenP, stylenQ);
    Q = bezierCurve(nB4, n); bezierCurvePlot(nB4, Q, stylenP, stylenQ);
    Q = bezierCurve(nB5, n); bezierCurvePlot(nB5, Q, stylenP, stylenQ); 
    Q = bezierCurve(nB6, n); bezierCurvePlot(nB6, Q, stylenP, stylenQ);
    Q = bezierCurve(nB7, n); bezierCurvePlot(nB7, Q, stylenP, stylenQ);
    Q = bezierCurve(nB8, n); bezierCurvePlot(nB8, Q, stylenP, stylenQ);
    Q = bezierCurve(nB9, n); bezierCurvePlot(nB9, Q, stylenP, stylenQ);
    Q = bezierCurve(nB10, n); bezierCurvePlot(nB10, Q, stylenP, stylenQ); 
    Q = bezierCurve(nB11, n); bezierCurvePlot(nB11, Q, stylenP, stylenQ); 
    Q = bezierCurve(nB12, n); bezierCurvePlot(nB12, Q, stylenP, stylenQ);
    Q = bezierCurve(nB13, n); bezierCurvePlot(nB13, Q, stylenP, stylenQ);
    Q = bezierCurve(nB14, n); bezierCurvePlot(nB14, Q, stylenP, stylenQ);
    Q = bezierCurve(nB15, n); bezierCurvePlot(nB15, Q, stylenP, stylenQ); 
    Q = bezierCurve(nB16, n); bezierCurvePlot(nB16, Q, stylenP, stylenQ);
    Q = bezierCurve(nB17, n); bezierCurvePlot(nB17, Q, stylenP, stylenQ);
    Q = bezierCurve(nB18, n); bezierCurvePlot(nB18, Q, stylenP, stylenQ);
    Q = bezierCurve(nB19, n); bezierCurvePlot(nB19, Q, stylenP, stylenQ);
    Q = bezierCurve(nB20, n); bezierCurvePlot(nB20, Q, stylenP, stylenQ); 
    Q = bezierCurve(nB21, n); bezierCurvePlot(nB21, Q, stylenP, stylenQ); 
end
    
set(gca,'FontSize',20)    
title('Bezier B');
xlabel('x','FontSize',20);
ylabel('y','FontSize',20);
zlabel('z','FontSize',20);

%grid on;
axis equal
axis on
%saveTightFigure(h, 'letterBs.pdf')