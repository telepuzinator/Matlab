%Callback - ������ ���� ���� ������� ��� ������������
function popup_menu_Callback(source,eventdata)
% Determine the selected data set.
str = get(source, 'String');
val = get(source,'Value');
% Set current data to the selected data set.
switch str{val};
    case '�����', set(gca,'Color',getColor(0));
    case '������', set(gca,'Color',getColor(1));
    case '�������', set(gca,'Color',getColor(2));
    case '�������', set(gca,'Color',getColor(3));
    case '����������', set(gca,'Color',getColor(4));
    case '�����', set(gca,'Color',getColor(5));
    case '����������', set(gca,'Color',getColor(6));
    case '�������', set(gca,'Color',getColor(7));
    case '�����', set(gca,'Color',getColor(8));
end