%Сохраняет значение в UserData 
%Вход = name - имя значения, value - значение
function saveValues(name, value)
data = get(gcf,'UserData');

switch name
    case 'a1'
        data(1) = value;
    case 'a2'
        data(2) = value;
    case 'a3'
        data(3) = value;
    case 'b'
        data(4) = value;
    case 'all'
        data = value;
end
set(gcf,'UserData',data);