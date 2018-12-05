clear;
clc;
A = [...
    10 7 8 7
    7 8 6 5
    8 6 10 9
    7 5 9 10
    ];
B = [32 23 33 31]';
disp('solution one');
re = A\B
disp('solution two');
[L, U] = lu(A)
temp = L\B;
re = U\temp
disp('solution three');
C = chol(A)
temp = C'\B;
re = C\temp
