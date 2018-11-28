function result = MyTrapz(x, y)
%x为自变量序列 y为值序列
%result为积分结果
temp = y(1:end-1)+y(2:end);   %上底加下底
temp = temp.*(x(2:end) - x(1:end-1))/2;   %乘高除以二
result = sum(temp);   %累加和
end