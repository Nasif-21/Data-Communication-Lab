fs=5000;
a1=10;
a2=3;
a3=4;
f1=2;
f2=3;
f3=12;
t=(0:0.01125/fs:1);
x1 = a1*cos(2*pi*f1*t);
x2 = a2*sin(2*pi*f2*t);
x3 = a3*cos(2*pi*f3*t);
signal_x = x1 + x2 + x3;

n=3;
L =(2^n);
delta=(max(signal_x)-min(signal_x))/(L-1);
xq = min(signal_x)+(round((signal_x-min(signal_x))/delta)).*delta;
plot(t,signal_x)
xlim([0.11,0.178])
ylim([-2.6,2.6])
legend('Original signal','Quantized signal');





