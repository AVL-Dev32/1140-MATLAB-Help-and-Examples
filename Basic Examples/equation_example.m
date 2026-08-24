% Some example problems that can be solved with MATLAB

clc, clearvars, close all

x = linspace(0, 5); % 100 evenly spaced values 0 - 5
% Make sure that the '.' is there for element-wise operation
y = (-(x-3).^2) + 10;

% Makes lines between all elements in x and y, looks like a smooth line.
% '*' as the final arg. shows just the points.
plot(x,y);

% The mathematical maximum and minimum (not theoretical)
max(y)
min(y)

% max() actually returns the index at which the max lies, so in this case
% we are assigning two values to their respective variables (order matters)
[max_val, i] = max(y)

x_max_val = x(i) % the x-value where y is at its max (i as index)

% Alternatively, if you wanted to make a function with respects to a
% variable, use y = @(x) [...] notation, called an anonymous function.
% This essentially works like f(x) notation.