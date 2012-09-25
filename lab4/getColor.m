%Получаем цвет по номеру
function color=getColor(num)
switch num
    case 0, color=[0 0 1];      %Синий
    case 1, color=[0 1 0];      %Зелёный
    case 2, color=[1 0 0];      %Красный
    case 3, color=[.26 .66 1];  %Голубой
    case 4, color=[.59 .3 0];   %Коричневый
    case 5, color=[.5 .5 .5];   %Серый
    case 6, color=[.55 0 1];    %Фиолетовый
    case 7, color=[1 .75 .8];   %Розовый
    case 8, color=[1 1 1];      %Белый
end