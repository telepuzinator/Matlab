%������ ������
%���� - t=��� �, h=��� �, parent=����, position=������������ 0:3,
%color=���� ����, gColor=���� �������
function graph=drawPlot(t,h,parent,position,color,gColor)
delete(gca);
xLim=[min(t),max(t)/3];
yLim=[min(h),max(h)+1];

%������ ���
graph=axes('Color',color,'Position',getObjectPosition(position,1),...
    'xLim',xLim,'yLim',yLim);
%������ ������
graph = line('Parent',graph,'XData',t,'YData',h,'Color',gColor);