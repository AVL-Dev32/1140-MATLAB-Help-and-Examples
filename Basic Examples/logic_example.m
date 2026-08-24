% Logic example
% Problem: What percent of y-values are greater than 0.8 for x=0 to x=10
% given y = sin(x)?

% In MATLAB, data-type "Logical" is basically a binary, where 0 = false
% and 1 = true. Logicals can be stored in the same way that any other
% vector or matrix would be, but their values are constrained to 1's and 
% 0's. All logical operators can be found in the MATLAB docs.
% It's important to note that a vector or matrix won't necessarily become
% a logical type unless explicitly defined as such with a logical operator.
% Keep this in mind so to not mix-types.

clc, clearvars, close all

% Increasing percision by increasing the number of x-values
x = linspace(0,10,100000);
y = sin(x);

% The value we're checking against
% Always try to use variables instead of hard-coding
threshold = 0.8; 

% Just an example plot to visualize what we're trying to do
plot(x, y, '.')
hold on

% Plots a horizontal line to visualize the points above y = 0.8
plot([0, 10], [threshold, threshold], '--r')

% Logical array filled by all of the y-values that are greater than 0.8
result = y > threshold;

% Number of values > 0.8 / length of y = percent of y-values > 0.8
% Sum of a logical array just gives the number of positive cases
percent = (sum(result) / length(y)) * 100

