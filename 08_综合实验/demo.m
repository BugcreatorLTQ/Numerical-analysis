clear;
clc;
x0 = 100;
while true
    x = x0 - (log(x0)/log(3))/( 1/(log(x0)*log(3)) );
    if abs(x-x0) < 1e-3
        break;
    end
    x0 = x;
end
ND_val = x