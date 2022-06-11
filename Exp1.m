k1=2;
k2=3;
j1=(11*pi)/90;
j2=pi/6;
t=0:0.1001:4;
x1=k1*cos(2*pi*(11*t)+j1);
x2=k2*cos(2*pi*(11*t)+j2);
%plot(t,x1)
%xlabel2('Time');
%ylabel('Amplitute');
title('x1=k1*cos(2*pi*(11*t)+j1);')
plot(t,x2)
title('x2=k2*cos(2*pi*(11*t)+j2);')
x3=x1+x2;
%plot(t,x3)
%title('x3=x1+x2')
subplot(3,1,1)
plot(t,x1)
title('x1=k1*cos(2*pi*(11*t)+j1);')
%xlabel1=('Time');
%ylabel1=('Amplitute');

subplot(3,1,2)
plot(t,x2)
xlabel2=('Time');
ylabel2=('Amplitute');
title('x2=k2*cos(2*pi*(11*t)+j2);')
subplot(3,1,3)
plot(t,x3)
xlabel3=('Time');
ylabel3=('Amplitute');
title('x3=x1+x2')




