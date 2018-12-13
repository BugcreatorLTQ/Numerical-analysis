function Y = MyLagrange(x, y, X)
% x y 为已知点的坐标
% X 为要求的点的X坐标
% 返回点X 对应的值Y
Y = 0;
for ii = 1:length(x)
    x_i = [1:ii-1, ii+1:length(x)];
    % up 的最后一项为每项系数的分子
    up = prod(X - x(x_i));
    % down 的最后一项为每项系数的分母
    down = prod(x(ii) - x(x_i));
    % 计算系数与y(ii)相乘后连加即为插值结果
    Y = Y + up(end)/down(end)*y(ii);
end
end