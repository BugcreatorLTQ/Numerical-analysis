clear;
clc;
%ʵ��һ����֤
%��֤int
syms x y
y = exp(x).*x.^(-1/3);
result_int = int(y,1,10)
%��֤trapz
clear;
x = 1:0.01:10;
y = demo_function(x);
result_trapz = trapz(x, y)
%��֤quad
result_quad = quad(@demo_function,1,10)

%ʵ������㷨
%��֤MyTrapz
x = 1:0.01:10;
y = exp(x);
demo_trapz = trapz(x, y)
demo_mytrapz = MyTrapz(x, y)