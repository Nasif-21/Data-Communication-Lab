clc
clear all
close all
fs=4001;
t=0:1/fs:1-1/fs;
AM1=16;
AM2=19;
fm1=15;
fm2=16;
m1=AM1*cos(2*pi*fm1*t); %signal 1
m2=AM2*cos(2*pi*fm2*t); %signal 2
Cm1=1;
fc1=100;
c1=CM1*cos(2*pi*fc1*t); %carrier signal
Cm2=1;
fc2=200;
c2=CM2*cos(2*pi*fc1*t);
x=(m1).*Cm1+(m2).*Cm2;
figure
subplot(2,1,1)
plot(t,m1)
xlabel('Time')
ylabel('Amplitute')
ylim([-AM1,AM1])

%fourier analysis

M1=abs(fftshift(fft(m1)))/(fs/2);
M2=abs(fftshift(fft(m2)))/(fs/2);
X=abs(fftshift(fft(x)))/(fs/2);
f=fs/2*linespace(-1,1,fs);

%frq domain draw:
subplot(2,1,1)
stem(f,M1);
xlabel('Frequency')
ylabel('Amplitute')
axis([-20,20,0,30])
subplot(2,1,2)
stem(f,M2);
xlabel('Frequency')
ylabel('Amplitute')
axis([-20,20,0,30])

%band pass filter
[num1,den1]=butter(5,[(fc1-fm1-5)/(fs/2),(fc1+fm1+5)/(fs/2)]);
bpf1=filter(num1,den1,x);
[num2,den2]=butter(5,[(fc2-fm2+6)/(fs/2),(fc2+fm2+6)/(fs/2)]);
bpf2=filter(num2,den2,x);
z1=2*bpf1*c1;
z2=2*bpf2*c2;

%reverse process in reciver side
[num3,den3]=butter(5,(fm1+5)/(fs/2));
[num4,den4]=butter(5,(fm2+5)/(fs/2));

rec1=[num3,den3,z1];
rec2=[num4,den4,z4];
figure
subplot(4,1,1)
plot(t,rec1)
xlabel('time')
ylabel('amplitude')
title('received signal 1 in time domain')
ylim([-Am1 Am1])
subplot(4,1,2)
plot(t,rec2)
xlabel('time')
ylabel('amplitude')
title('received signal 2 in time domain')

%recive in frq domain

R1=abs(fftshift(fft(rec1)))/fs/2;
R2=abs(fftshift(fft(rec2)))/fs/2;

figure
subplot(4,1,1)
stem(f,R1)
xlabel('frequency')
ylabel('amplitude')
title('received signal 1 in frequency domain')
xlim([-20 20])
subplot(4,1,2)
stem(f,R2)
xlabel('frequency')
ylabel('amplitude')
title('received signal 2 in frequency domain')
xlim([-20 20])










