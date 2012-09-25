%Выводит разницу в днях между введённой датой и текущей
%Вход - Дата в формате dd.mm.yyyy
%Вывод - kd - количество прожитых дней

function kd=livedays(t1,t2)
dr=str2num(t1(1:2));
mr=str2num(t1(4:5));
gr=str2num(t1(7:10));

dt=str2num(t2(1:2));
mt=month2num(t2(4:6));
gt=str2num(t2(8:11));


%365.25 - среднее число дней в году
mr = mr + gr * 12;
dr = dr + mr * (365.25 / 12);
mt = mt + gt * 12;
dt = dt + mt * (365.25 / 12);
    
kd = round(dt - dr);