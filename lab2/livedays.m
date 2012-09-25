%Выводит разницу в днях между введённой датой и текущей
%Вход - dr - день, mr - месяц 1-12, gr - год
%Вывод - kd - количество прожитых дней

function kd=livedays(dr,mr,gr)
t2 = date;
dt=str2num(t2(1:2));
mt=month2num(t2(4:6));
gt=str2num(t2(8:11));

if dr < 0 || dr > 31 || mr <= 0 || mr > 12 || gr > gt
    disp('введите правильно пожалуйста')
else
    %365.25 - среднее число дней в году
    mr = mr + gr * 12;
    dr = dr + mr * (365.25 / 12);
    mt = mt + gt * 12;
    dt = dt + mt * (365.25 / 12);
    
    kd = round(dt - dr);
end