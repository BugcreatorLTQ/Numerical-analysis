clear;
clc;
x0 = [1, 1.7321, 3, 9, 27, 81];
y0 = [0, 0.5, 1, 2, 3, 4];

true_val = log(10)/log(3)

inter_val = interp1(x0, y0,10,'spline')

lagra_val = MyLagrange(x0, y0, 10)

x0 = 2;
while true
    x = x0 - (3^x0 - 10)/(x0*3^(x0-1));
    if abs(x-x0) < 1e-3
        break;
    end
    x0 = x;
end
ND_val = x