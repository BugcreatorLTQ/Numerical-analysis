clear;
clc;
A = [...
    12  -3  3
    -18 3   -1
    1   1   1
    ];
b = [15, -15, 6]';
Solve = MySolve(A, b)
true_solve = A\b
Det = MyDet(A)
true_Det = det(A)