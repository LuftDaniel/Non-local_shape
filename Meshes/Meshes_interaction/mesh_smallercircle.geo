// Gmsh project created on Sun Apr 29 18:25:09 2018
eps = 0.2;

Point(1) = {0.0, 0.0, 0.0, 1.0};
Point(2) = {1.0, 0.0, 0.0, 1.0};
Point(3) = {0.0, 1.0, 0.0, 1.0};
Point(4) = {1.0, 1.0, 0.0, 1.0};
Point(5) = {0.5, 0.35, 0.0, 1.0};
Point(6) = {0.5, 0.5, 0.0, 1.0};
Point(7) = {0.5, 0.65, 0.0, 1.0};

Point(8) = {0.0-eps, 0.0-eps, 0.0, 1.0};
Point(9) = {1.0+eps , 0.0-eps, 0.0, 1.0};
Point(10) = {0.0-eps, 1.0+eps, 0.0, 1.0};
Point(11) = {1.0+eps, 1.0+eps, 0.0, 1.0};

Line(1) = {1, 2};
Line(2) = {2, 4};
Line(3) = {4, 3};
Line(4) = {3, 1};

Line(7) = {8, 9};
Line(8) = {9, 11};
Line(9) = {10, 11};
Line(10) = {10, 8};

Circle(5) = {5, 6, 7};
Circle(6) = {7, 6, 5};

Line Loop(1) = {1, 2, 3, 4};
Line Loop(2) = {5, 6};
Line Loop(3) = {7, 8, 9, 10};

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

Plane Surface(1) = {1, 2};
Plane Surface(2) = {2, 3};
Plane Surface(3) = {3};

Physical Surface(1) = {1};
Physical Surface(2) = {2};
Physical Surface(3) = {3};

