%������ ����������� � ���� � ������� ���: <���> ������: <���> ����: <���>
%�� 7000: <���>
%���� - ������ ���, �������� ����, ������� �� �������, ������� � 7�
%����� - 0 ���� ������ �������, -1 ���� �� ������� ��������
function result=writeDatesToFile(names,daysLived,diffToMid,diffTo7k)
output = fopen('out.txt','w+');

if output >= 0
    %���� ������
    for i=1:length(names)
        str = ['���: ',names(i,:),' ������: ',num2str(daysLived(i,:)),' ����: '];
        fprintf(output,'%s%6d%s%6d\r\n',str,diffToMid(i,:),' �� 7000: ',diffTo7k(i,:));
    end
    result = 0;
else
    result = -1;
end
fclose(output);