% Example for plotting equations on a graph and manipulating those graphs
% given the func. y = -(x-3)^2 + 10

% Note, there is a lot of functionality within the figure window that
% can't be explained through code, so try it out for yourself.
% Therefore, these are relatively simple looking graphs.

clc, clearvars, close all

x = linspace(-10, 10);

% All variations of y we plan on graphing
y1 = (-(x-3).^2) + 10;
y2 = (-(x-3).^2) + 15;
y3 = (-(x-5).^2) + 10;

% Visualized data in MATLAB is done through 'figures'
% Figures have no visible data in them until plotted on using inputs and
% outputs.
% Once the figure() func. runs, any commands that alter that figure will go
% specifically on that figure. Running plot() will override the last plot.

figure(1) % this just specifies that we're working with fig. 1

% plots y1 over x, anything in the third input changes the look of the
% plot, in this case it plots red stars.
% Check docs for all of the customization, because there is A LOT.
plot(x,y1,'r*')

xlabel('x'), ylabel('y'), title('Y vs. X - Sample Graph') % all the labels
grid on % adds a grid to the figure

hold on % this holds on the current figure, allowing for more plots
plot(x,y2,'b*')

hold on
plot(x,y3,"g*")

legend('Y1, Y2, Y3') % in sequential order - still modifying fig. 1

% xlim([]) changes domain (x-limits)
% ylim([]) changes range (y-limits)