%Вывод поверхности Xm(a,V)

a=0:180;
V=a;
[a,V] = meshgrid(a,V);
xm = V.*V.*cos(a*pi/180).*sin(a*pi/180)/4.9;
mesh(a,V,xm);
axis auto
xlabel('Угол');
ylabel('Скорость');
zlabel('дальность');