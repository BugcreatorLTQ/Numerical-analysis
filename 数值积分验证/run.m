clear;
clc;
%实验一：验证
%验证int
syms x y
y = exp(x).*x.^(-1/3);
result_int = int(y,1,10)
%验证trapz
clear;
x = 1:0.01:10;
y = demo_function(x);
result_trapz = trapz(x, y)
%验证quad
result_quad = quad(@demo_function,1,10)

%实验二：算法
%验证MyTrapz
x = 1:0.01:10;
y = exp(x);
demo_trapz = trapz(x, y)
demo_mytrapz = MyTrapz(x, y)