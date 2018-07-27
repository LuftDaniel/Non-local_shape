// Gmsh project created on Sun Apr 29 18:25:09 2018
eps = 0.2;

Point(1) = {0.0, 0.0, 0.0, 1.0};
Point(2) = {1.0, 0.0, 0.0, 1.0};
Point(3) = {0.0, 1.0, 0.0, 1.0};
Point(4) = {1.0, 1.0, 0.0, 1.0};
Point(5) = {0.5, 0.2, 0.0, 1.0};
Point(6) = {0.5, 0.5, 0.0, 1.0};
Point(7) = {0.5, 0.8, 0.0, 1.0};
Point(8) = {0.5, 0.3, 0.0, 1.0};
Point(9) = {0.5, 0.4, 0.0, 1.0};
Point(10) = {0.5, 0.6, 0.0, 1.0};
Point(11) = {0.5, 0.7, 0.0, 1.0};

Point(12) = {0.0-eps, 0.0-eps, 0.0, 1.0};
Point(13) = {1.0+eps , 0.0-eps, 0.0, 1.0};
Point(14) = {0.0-eps, 1.0+eps, 0.0, 1.0};
Point(15) = {1.0+eps, 1.0+eps, 0.0, 1.0};

Line(1) = {1, 2};
Line(2) = {2, 4};
Line(3) = {4, 3};
Line(4) = {3, 1};

Line(9) = {12, 13};
Line(10) = {13, 15};
Line(11) = {14, 15};
Line(12) = {12, 14};

Circle(5) = {5, 6, 7};
Circle(6) = {9, 8, 5};
Circle(7) = {9, 6, 10};
Circle(8) = {7, 11, 10};

Line Loop(1) = {1, 2, 3, 4};
Line Loop(2) = {5, 6, 7, 8, 9, 10, 11};
Line Loop(3) = {12, 13, 14, 15};

Physical Line(1) = {1};
Physical Line(2) = {2};
Physical Line(3) = {3};
Physical Line(4) = {4};
Physical Line(5) = {5};
Physical Line(6) = {6};
Physical Line(7) = {7};
Physical Line(8) = {8};
Physical Line(9) = {9};
Physical Line(10) = {10};
Physical Line(11) = {11};
Physical Line(12) = {12};

Plane Surface(1) = {1, 2};
Plane Surface(2) = {2, 3};
Plane Surface(3) = {3};

Physical Surface(1) = {1};
Physical Surface(2) = {2};
Physical Surface(3) = {3};

