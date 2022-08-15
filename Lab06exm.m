close all;
clc;
x=[1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 0 1 ] ;
f=3;
fs=5000;
p=0;
sed=1;
nx=length(x);
i=1;



for i= 1:3:nx
t=p*sed:1/fs:(p+1)*sed;

  if x(i)==0 && x(i+1)== 0 && x(i+2)==0; %000
     ask=1*sin(2*pi*f*t);% a sin (2* pi* f*t-phase)
     fsk=sin(2*pi*1*t);
     psk=sin(2*pi*f*t-0);
  elseif x(i)==0 && x(i+1)== 0 && x(i+2)==1;  %001
     ask=1*sin(2*pi*f*t);
     fsk=sin(2*pi*2*t);
     psk=sin(2*pi*f*t-(pi/4));
  elseif x(i)==0 && x(i+1)== 1 && x(i+2)==0; %010
     ask=2*sin(2*pi*f*t);  
     fsk=sin(2*pi*3*t);
     psk=sin(2*pi*f*t-(3*pi/2));
  elseif x(i)==0 && x(i+1)== 1 && x(i+2)==1;
     ask=3*sin(2*pi*f*t);
     fsk=sin(2*pi*4*t);
     psk=sin(2*pi*f*t-(pi/2));
  elseif x(i)==1 && x(i+1)== 0 && x(i+2)==0;
     ask=4*sin(2*pi*f*t);
     fsk=sin(2*pi*5*t);
     psk=sin(2*pi*f*t+(pi/4));
  elseif x(i)==1 && x(i+1)== 0 && x(i+2)==1;
     ask=5*sin(2*pi*f*t);
     fsk=sin(2*pi*6*t);
     psk=sin(2*pi*f*t+(pi/2));
  elseif x(i)==1 && x(i+1)== 1 && x(i+2)==0;
     ask=6*sin(2*pi*f*t);
     fsk=sin(2*pi*7*t);
     psk=sin(2*pi*f*t-pi);
else
     ask=7*sin(2*pi*f*t);
     fsk=sin(2*pi*8*t);
     psk=sin(2*pi*f*t+(3*pi/4));
end
p=p+1;
subplot(3,1,1);
plot(t,ask);
hold on;
grid on;
axis([1 10 -7 7]);
title('Amplitude Shift Key')
subplot(3,1,2);
plot(t,fsk);
hold on;
grid on;
axis([1 10 -1 1]);
title('Frequency Shift Key')
subplot(3,1,3);
plot(t,psk);
hold on;
grid on;
axis([1 10 -1 1]);
title('Phase Shift Key')
end