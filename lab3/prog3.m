%��������� ��������� ���������� �������� ���� ��� ���� ��������� �� �����,
%���������� ������� ����� �������� ����, ������� �������� ��������, �������
%�������� � �������� ������ ����� 7000 ���� �� ��� �������� (������� �
%������), ����� � ���� ����� �������� ����, ���������� �� �������� � ��
%7000. *_*

[names,dates]=readDatesFromFile('dr_3k_11.txt');

groupMid = 0;
daysLived = zeros(length(dates),1); 
for i=1:length(dates)
    daysLived(i,1) = livedays(dates(i,:), date); %������ �������� ���� ��� �������
    groupMid = groupMid + daysLived(i,1);        %������� �� ������
end
groupMid = round(groupMid / length(dates));  %������� �� ������

midStudent = 0; %C���� ������� �������
diff = inf;     %������� � ���� �� �������
diffToMid = zeros(length(daysLived),1); %������ ���������� �� ��������

closestTo7k = 0; %������� � �������� ����� ������ 7000 ���� � ������� (������ 2011�)
diff2 = inf; %������� � ���� � 7000
diffTo7k = zeros(length(dates),1); %������ ���������� �� 7000
for i=1:length(daysLived)
    %������� ������ ���������� �� ��������
    diffToMid(i,1) = daysLived(i,1) - groupMid;
    %������� ������ �������� ��������
    if diff > abs(diffToMid(i,1))
        diff = abs(diffToMid(i,1));
        midStudent = i;
    end
    
    %������� ������ ���������� �� 7�
    diffTo7k(i,1) = 7000 - livedays(dates(i,:), '01-Oct-2011');
    
    %������� ��������� �� � 7000
    if diffTo7k(i,1) > 0 && diffTo7k(i,1) < diff2
        diff2 = diffTo7k(i,1);
        closestTo7k = i;
    end
end

%����� �����������
for i=1:length(daysLived)
    disp([names(i,:),' ',dates(i,:),' ������ ', num2str(daysLived(i,1))])
end
disp('������� ����� �������� ���� �� ������:')
disp(num2str(groupMid))
disp('�������� ������ ���������� � �������� �������: ')
disp([names(midStudent,:),' ',num2str(daysLived(midStudent,1))])
if closestTo7k == 0 
    disp('���� ���������� � 7000')
else
    disp('��������� � 7000 ���� � ������� 2011 - ')
    disp([names(closestTo7k,:),' ',num2str(daysLived(closestTo7k,1))])
end

writeDatesToFile(names,daysLived,diffToMid,diffTo7k);