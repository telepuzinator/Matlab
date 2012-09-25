%Определение позиции объекта
%Вход - num=номер позиции по заданию, obj=тип объекта (0-кнопка,1-не кнопка)
function pos=getObjectPosition(num,obj)
if obj == 0
    switch num
        case 0, pos = [0.45 0.8 0.1 0.05];
        case 1, pos = [0.45 0.5 0.1 0.05];
        case 2, pos = [0.45 0.2 0.1 0.05];
        case 4, pos = [0.45 0.8 0.1 0.05];
    end
else
    switch num
        case 0, pos = [0.07 0.55 0.35 0.35];
        case 1, pos = [0.58 0.55 0.35 0.35];
        case 2, pos = [0.07 0.1 0.35 0.35];
        case 3, pos = [0.58 0.1 0.35 0.35];
    end
end