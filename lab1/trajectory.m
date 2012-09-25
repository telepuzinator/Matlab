%Функция рассчета траектории
%Вход - начальный угол в градусах, начальная скорость
%Выход - t = время полёта
%   x и y = координаты
function [t,x,y]=trajectory(a,V)
deg2radian=pi/180;
g=9.8;

a = a*deg2radian;
if (V*sin(a)) < 0
    a = 0;
end

Tk=V*sin(a)/4.9;

t=0:0.1:Tk;
x = V * cos(a) * t;
y = V * sin(a) * t - g * (t.^2) /2;