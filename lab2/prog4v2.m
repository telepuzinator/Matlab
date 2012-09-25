%¬ыводит разницу в дн€х между введЄнной датой и текущей

t2 = date;
dt=str2num(t2(1:2));
mt=month2num(t2(4:6));
gt=str2num(t2(8:11));

dr = input('¬ведите день');
mr = input('¬ведите мес€ц (1 : 12)');
gr = input('¬ведите год yyyy');
if dr < 0 || dr > 31 || mr <= 0 || mr > 12 || gr > gt
    disp('введите правильно пожалуйста')
else
    %365.25 - среднее число дней в году
    mr = mr + gr * 12;
    dr = dr + mr * (365.25 / 12);
    mt = mt + gt * 12;
    dt = dt + mt * (365.25 / 12);
    
    kd = dt - dr;    
    disp(round(kd))
end