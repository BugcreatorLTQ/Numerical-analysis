clear;
clc;
A = rand(3)
b = rand(3, 1)
x0 = rand(3, 1)
true_val = A\b
val = GaussSeidel(A, b, x0)