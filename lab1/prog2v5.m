%������� ���������� ���������� ��������
%����� - ������ Ym(a),  ����� �����,
%���������� �����, ����. ������

a0=input('������� ��������� ���� (� ��������)');
v0=input('������� ��������� ��������');
[t,x,y] = trajectory(a0,v0);

v = 0:0.1:180;
ym = v.^2 .* sin(a0*pi/180)^2/19.6;
plot(v,ym)
axis auto
disp(['����� �����: ',num2str(max(t))])
disp(['���������� �����: ',num2str(max(x))])
disp(['������������ ������: ',num2str(max(y))])