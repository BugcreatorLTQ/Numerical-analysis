function Y = MyLagrange(x, y, X)
% x y Ϊ��֪�������
% X ΪҪ��ĵ��X����
% ���ص�X ��Ӧ��ֵY
Y = 0;
for ii = 1:length(x)
    x_i = [1:ii-1, ii+1:length(x)];
    % up �����һ��Ϊÿ��ϵ���ķ���
    up = prod(X - x(x_i));
    % down �����һ��Ϊÿ��ϵ���ķ�ĸ
    down = prod(x(ii) - x(x_i));
    % ����ϵ����y(ii)��˺����Ӽ�Ϊ��ֵ���
    Y = Y + up(end)/down(end)*y(ii);
end
end