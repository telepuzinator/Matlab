%Запись результатов в файл в формате Имя: <имя> прожил: <дни> сред: <дни>
%от 7000: <дни>
%Вход - массив имён, прожитых дней, разницы со средним, разницы с 7к
%Выход - 0 если запись успешна, -1 если не удалось записать
function result=writeDatesToFile(names,daysLived,diffToMid,diffTo7k)
output = fopen('out.txt','w+');

if output >= 0
    %Файл открыт
    for i=1:length(names)
        str = ['Имя: ',names(i,:),' прожил: ',num2str(daysLived(i,:)),' сред: '];
        fprintf(output,'%s%6d%s%6d\r\n',str,diffToMid(i,:),' от 7000: ',diffTo7k(i,:));
    end
    result = 0;
else
    result = -1;
end
fclose(output);