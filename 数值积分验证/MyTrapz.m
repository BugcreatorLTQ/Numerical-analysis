function result = MyTrapz(x, y)
%xΪ�Ա������� yΪֵ����
%resultΪ���ֽ��
temp = y(1:end-1)+y(2:end);   %�ϵ׼��µ�
temp = temp.*(x(2:end) - x(1:end-1))/2;   %�˸߳��Զ�
result = sum(temp);   %�ۼӺ�
end