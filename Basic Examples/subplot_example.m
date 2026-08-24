% Piggybacking off of figure_example
% This is for subplots usage

clc, clearvars, close all

x = linspace(-pi, pi);

y1=sin(x*3);
y2=cos(x*3);
y3=(x*3).*sin(x);

figure(1)
subplot(1,3,1) % creates an array size of 1x3, currently focused on 1
plot(x, y1, '--b')
grid on

subplot(1,3,2) % focused on 2
plot(x,y2,'--r')
grid on

subplot(1,3,3) % focused on 3
plot(x,y3,'--m')
grid on