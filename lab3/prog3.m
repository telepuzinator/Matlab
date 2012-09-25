%Программа вычисляет количество прожитых дней для всех студентов из файла,
%определяет среднее число прожитых дней, находит среднего студента, находит
%студента у которого первым будет 7000 дней со дня рождения (начиная с
%ноября), вывод в файл числа прожитых дней, отклонения от среднего и от
%7000. *_*

[names,dates]=readDatesFromFile('dr_3k_11.txt');

groupMid = 0;
daysLived = zeros(length(dates),1); 
for i=1:length(dates)
    daysLived(i,1) = livedays(dates(i,:), date); %массив прожитых дней для каждого
    groupMid = groupMid + daysLived(i,1);        %Среднее по группе
end
groupMid = round(groupMid / length(dates));  %Среднее по группе

midStudent = 0; %Cамый средний студент
diff = inf;     %Разница в днях со средним
diffToMid = zeros(length(daysLived),1); %Массив отклонения от среднего

closestTo7k = 0; %Студент у которого будет первым 7000 дней с октября (видимо 2011г)
diff2 = inf; %Разница в днях с 7000
diffTo7k = zeros(length(dates),1); %Массив отклонения от 7000
for i=1:length(daysLived)
    %Создаем массив отклонения от среднего
    diffToMid(i,1) = daysLived(i,1) - groupMid;
    %Находим самого среднего студента
    if diff > abs(diffToMid(i,1))
        diff = abs(diffToMid(i,1));
        midStudent = i;
    end
    
    %Создаем массив отклонения от 7к
    diffTo7k(i,1) = 7000 - livedays(dates(i,:), '01-Oct-2011');
    
    %Находим ближайшее др к 7000
    if diffTo7k(i,1) > 0 && diffTo7k(i,1) < diff2
        diff2 = diffTo7k(i,1);
        closestTo7k = i;
    end
end

%Вывод результатов
for i=1:length(daysLived)
    disp([names(i,:),' ',dates(i,:),' прожил ', num2str(daysLived(i,1))])
end
disp('Среднее число прожитых дней по группе:')
disp(num2str(groupMid))
disp('Наиболее близко подходящий к среднему студент: ')
disp([names(midStudent,:),' ',num2str(daysLived(midStudent,1))])
if closestTo7k == 0 
    disp('Нету ближайшего к 7000')
else
    disp('Ближайший к 7000 дней с октября 2011 - ')
    disp([names(closestTo7k,:),' ',num2str(daysLived(closestTo7k,1))])
end

writeDatesToFile(names,daysLived,diffToMid,diffTo7k);