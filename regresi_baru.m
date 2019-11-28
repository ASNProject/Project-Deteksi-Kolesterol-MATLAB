x = [85319 159426 190991 148508 34412];
y = [6 11.25 13.5 10.5 2.4];
X=x*x';
XY=x*y';
Sx=sum(x);
Sy=sum(y);
N=5;
a=(X*Sy-Sx*XY)/(N*X-Sx^2);
b=(N*XY-Sx*Sy)/(N*X-Sx^2);
a
b
xx=0:25;
yy=a+b*xx;
plot(x,y,'o',xx,yy)
axis([0 25 0 15])
fprintf('Y=[%2.4f]+[%2.4f]x\n',a,b)