% Video Reference: https://www.youtube.com/watch?v=7f50sQYjNRA

% This whole script is just learning the basics from the tutorial above.
% To see what each command does, just remove the ';' to unsuppress the 
% output.

% Run >>help $funcname to get all the information about a function.
% Alternatively, >>doc $funcname will take you to the nice documentation.

% Do this for every new script 
% (adding the comma allows for multiline exec.)
clc, clearvars

% 1x10 double horizontal array increasing by one to ten
x = 1:10;

% Transposes the array into a vertical array (10x1)
x';

% Linspace creates a 13x$ sized matrix of evenly spaced values,
% in this case, it's creating a matrix that is 13x6 which increments
% integers from 0 to 100 inclusive, running it 101 times.
% The default size is 100.
test_linspace = linspace(0, 100, 101);

% Creates a vector, each value is separated by a space or commas
y = [12 50 -8 -100];

% 2x2 matrix, where rows are created with the use of a ';'
A = [1 3; 2 -10];

% Follows the rule of Linear Algebra -- meaning that 2 is added to every 
% value in A
A + 2;

% When doing multiplication, two arrays of same size cannot be multiplied
% together:
%   A * A   -> error
%   A * A'  -> follows the conventions of Linear Algebra

% When attempting to do Element-Operations, use a '.'
% This will concur with the rules of Linear Algebra.
A.^2;

% Creates a matrix filled with zeros or ones
B = zeros(3, 1);
C = ones(5,8);

% Creates an identity matrix of size 3x3 (ones on the diagonal)
id = eye(3);

% Create a vector which increases from 1 to 10 incremented by 2
% start:inc:end (upper bound is always floored -> will not go over $end)
D = 1:2:10;

% Get at index value (first value index = 1 -> E(0) => OOB)
E = [5 3 4.2; 8 9 0];
E(2,2) % returns 9
E(2,2) + E(1,2) % returns 12
E(1, end) % returns 4.2
E(1,1) = 100; % 5 -> 100
E(1,:) % returns all values in specific rows (or vice versa)
E(2, 1:2) % returns all values between a range