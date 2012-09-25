%Вывод поверхности Xm(a,V)

a=0:180;
V=a;
[a,V] = meshgrid(a,V);
ym = V.^2 .* sin(a*pi/180).^2/19.6;
mesh(a,V,ym);
axis auto
xlabel('Угол');
ylabel('Скорость');
zlabel('дальность');