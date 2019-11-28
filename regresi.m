T=[29387 34412 43133 57352 85575 127977 148508 159426 190991];
V=[2 2.4 3 4 6 9 10.5 11.25 13.5];
%p=polyfit(T,V,2);
%x=linspace(29387,190991,200);
%y=polyval(p,T);
%plot(T,V,'k-',T,y,'k*')
%p
p = polyfit(T,V,1)
r = polyfit(T,V,2)

yi = linspace(1,10);
s = polyval(p,yi);
subplot(1,2,1);
plot(T,V,'-o',yi,s,':')

xi = linspace(1,10);
z = polyval(r,xi);
subplot(1,2,2);
plot(T,V,'-o',xi,z,':')
