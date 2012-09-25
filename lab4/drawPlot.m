%Рисуем график
%Вход - t=ось Х, h=ось У, parent=окно, position=расположение 0:3,
%color=цвет фона, gColor=Цвет графика
function graph=drawPlot(t,h,parent,position,color,gColor)
delete(gca);
xLim=[min(t),max(t)/3];
yLim=[min(h),max(h)+1];

%Рисуем оси
graph=axes('Color',color,'Position',getObjectPosition(position,1),...
    'xLim',xLim,'yLim',yLim);
%Рисуем график
graph = line('Parent',graph,'XData',t,'YData',h,'Color',gColor);