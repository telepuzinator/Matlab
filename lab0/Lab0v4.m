X1=[0 0 1 1];
Y1=[16 14 16 14];
X2=[2 2.5 3.5 3; 4 3.5 2.5 3];
Y2=[14 15 15 16];
X3=[5 5.5 6.5 6; 7 6.5 5.5 6];
Y3=[14 15 15 16];
c=0;
while c < 24,
    plot(X1 + c,Y1,'r',X2 + c,Y2,'r',X3 + c,Y3,'r')
    axis([0 30 0 30])
    c = c + 1;
    pause(0.1);
end