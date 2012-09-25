%Callback - меняем цвет фона графика при переключении
function popup_menu_Callback(source,eventdata)
% Determine the selected data set.
str = get(source, 'String');
val = get(source,'Value');
% Set current data to the selected data set.
switch str{val};
    case 'Синий', set(gca,'Color',getColor(0));
    case 'Зелёный', set(gca,'Color',getColor(1));
    case 'Красный', set(gca,'Color',getColor(2));
    case 'Голубой', set(gca,'Color',getColor(3));
    case 'Коричневый', set(gca,'Color',getColor(4));
    case 'Серый', set(gca,'Color',getColor(5));
    case 'Фиолетовый', set(gca,'Color',getColor(6));
    case 'Розовый', set(gca,'Color',getColor(7));
    case 'Белый', set(gca,'Color',getColor(8));
end