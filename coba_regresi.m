x=[85319 159426 190991 148508 34412 43133 85575 57352 127977 29387];
y=[6 11.25 13.5 10.5 2.4 3 6 4 9 2];

square=x*x';
d=x*y';
sx=sum(x);
sy=sum(y);
N=5;

a=(N*d-sx*sy)/(N*square-sx^2);

b=(square*sy-sx*d)/(N*square-sx^2);
a
b

xx=0:25;
yy=a*xx+b;

plot(x,y,'o',xx,yy)
axis([0 1000000 0 15])
title('data pengamatan')
xlabel('x')
ylabel('y')