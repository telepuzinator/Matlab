%��������� ���� � ��� �� �����
%���� - ��� �����
%����� - names = ������ ���, dates - ������ ���

function [names, dates]=readDatesFromFile(filename)
names=''; dates='';
file=fopen(filename,'r');
f = fscanf(file,'%s');

j=1; %����� ��������
k=0; %���� ������� �����
n=0; %������� �����

group=''; %�������� ������ ������
name='';  %�������� �����
data='';  %�������� ��� ��������

for i=1:length(f)
    if f(i)=='.'
        n = n + 1;
    end
    switch n
        case {0,1} %��������� ������ � ���
            if size(group) < 4
                %��������� ������
                group=[group,f(i)];
            else
                %��������� - � ���
                name = [name,f(i)];
                k = 2;
            end
        case {2,3,4} %��������� ����
            if k > 0
                %��������� ������� �����
                if k == 1 
                    name = [name,' '];
                end
                name = [name,f(i)];               
                k = k - 1;
            elseif size(data) < 10
                %������� - ����
                data = [data,f(i)];
                if length(data) == 10
                    name = [group,' ',name];
                    names(j,1:length(name)) = name;
                    dates(j,1:10) = data;
                    
                    n=0;
                    j = j + 1;
                    group=''; name=''; data='';
                end
            end
    end
end
fclose(file);