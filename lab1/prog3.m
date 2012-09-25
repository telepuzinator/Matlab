%Вывод поверхности tk(a,V)

a=0:180;
V=a;
[a,V] = meshgrid(a,V);
Tk= V.*sin(a*pi/180)/4.9;
mesh(a,V,Tk);
axis auto
xlabel('Угол');
ylabel('Скорость');
zlabel('Время');