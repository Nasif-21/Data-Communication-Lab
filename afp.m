close all;
clc;
f=1.5; %frequency
a=1.5; %amplitute
p=0;   %phase
a1=0;
a2=1;
a3=2;
a4=3;
a5=4;
a6=5;
a7=6;
a8=7;

bs=[001100000011011000110001];
nx=size(bs,2);
bl=length(bs);
pd=2;
fs=5000;
for i=1:3:bl
    t=(i-1)/3*pd:1/(fs):(i+2)/3*pd;
   % t=1:0.001:i+1;
    if bs(i)==0 && bs(i+1)==0 &&bs(i+2)==0
    ask=a1*sin(2*pi*f*t);
    elseif bs(i)==0 && bs(i+1)==0 &&bs(i+2)==1
    ask=a2*sin(2*pi*f*t);
    elseif bs(i)==0 && bs(i+1)==1 &&bs(i+2)==1
    ask=a3*sin(2*pi*f*t);
    elseif bs(i)==1 && bs(i+1)==0 &&bs(i+2)==0
    ask=a4*sin(2*pi*f*t);
    else
    ask=a5*sin(2*pi*f*t);
    
    end
end
    subplot(3,1,1);
    plot(t,ask,'Linewidth',1.5)
    xlabel('Time')
    ylabel('Amplitude')
    title('8-ASK')
    hold on

    
        


