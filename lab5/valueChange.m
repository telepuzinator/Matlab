%Реакция на изменение данных (а1 и тд)
%Вход - valueType - (seta1,seta2...)
%       sliderType - 1 = editor№1, 2 = editor№2, 3 = slider
function valueChange(valueType,sliderType)
data = get(gcf,'UserData');

%Вычисляем номер контроллера в UserData
switch valueType
    case 'a1'
        num = 4;
    case 'a2'
        num = 7;
    case 'a3'
        num = 10;
    case 'b'
        num = 13;
end

%Запоминаем изменённое значение
%Editor
if sliderType ~= 3,
    editor = data(num + sliderType);
    value = str2num(get(editor,'String'));
%Slider
else
    slider = data(num + sliderType);
    value = get(slider,'Value');
end
if (value > 10), value = 10; end
if (value < -10), value = -10; end
saveValues(valueType,value);

%Меняем значения в соответствующих полях
if data(num+1) ~= 0
    set(data(num+1),'String',num2str(value));
end
if data(num+2) ~= 0
    set(data(num+2),'String',num2str(value));
end
if data(num+3) ~= 0
    set(data(num+3),'Value',value);
end