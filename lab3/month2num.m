%перевод мес€ца в число
function mt=month2num(month)
if month== 'Jan'
    mt=1;
elseif month == 'Feb'
    mt=2;
elseif month == 'Mar'
    mt=3;
elseif month == 'Apr'
    mt=4;
elseif month == 'May'
    mt=5;
elseif month == 'Jun'
    mt=6;
elseif month == 'Jul'
    mt=7;
elseif month == 'Aug'
    mt=8;
elseif month == 'Sep'
    mt=9;
elseif month == 'Oct'
    mt=10;
elseif month == 'Nov'
    mt=11;
elseif month == 'Dec'
    mt=12;
else 
    mt=1;
end