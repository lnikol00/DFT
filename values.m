clc;
clear all;
close all;

fg=input('Enter number of fg = ');
t=0:1/fg:1-1/fg;
f1=100;
f2=200;
x=input('Enter the sequance = ');
N = length(x);
X=myDFT(x,N);
X=fftshift(X);
fr=linspace(-fg/2,fg/2,N);

subplot(2,1,1)
stem(fr,abs(X))
xlabel('\bf\fontsize{15} Frequency[Hz]')
ylabel('\bf\fontsize{15} Magnitude')
title('\bf\fontsize{20} Magnitude Plot')

subplot(2,1,2)
stem(fr,angle(X))
xlabel('\bf\fontsize{15} Frequency[Hz]')
ylabel('\bf\fontsize{15} Phase')
title('\bf\fontsize{20} Phase Plot')



