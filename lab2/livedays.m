%������� ������� � ���� ����� �������� ����� � �������
%���� - dr - ����, mr - ����� 1-12, gr - ���
%����� - kd - ���������� �������� ����

function kd=livedays(dr,mr,gr)
t2 = date;
dt=str2num(t2(1:2));
mt=month2num(t2(4:6));
gt=str2num(t2(8:11));

if dr < 0 || dr > 31 || mr <= 0 || mr > 12 || gr > gt
    disp('������� ��������� ����������')
else
    %365.25 - ������� ����� ���� � ����
    mr = mr + gr * 12;
    dr = dr + mr * (365.25 / 12);
    mt = mt + gt * 12;
    dt = dt + mt * (365.25 / 12);
    
    kd = round(dt - dr);
end