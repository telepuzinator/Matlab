%Получение имен и дат из файла
%Вход - имя файла
%Вывод - names = массив имён, dates - массив дат

function [names, dates]=readDatesFromFile(filename)
names=''; dates='';
file=fopen(filename,'r');
f = fscanf(file,'%s');

j=1; %Номер студента
k=0; %флаг остатка имени
n=0; %Каунтер точек

group=''; %Хранение номера группы
name='';  %Хранение имени
data='';  %Хранение дня рождения

for i=1:length(f)
    if f(i)=='.'
        n = n + 1;
    end
    switch n
        case {0,1} %Считываем группу и имя
            if size(group) < 4
                %Считываем группу
                group=[group,f(i)];
            else
                %Остальное - в имя
                name = [name,f(i)];
                k = 2;
            end
        case {2,3,4} %Считываем дату
            if k > 0
                %Считываем остаток имени
                if k == 1 
                    name = [name,' '];
                end
                name = [name,f(i)];               
                k = k - 1;
            elseif size(data) < 10
                %Остаток - дата
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