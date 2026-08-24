% Example using randoms, if statements, loops, and calculation time
% This will be split into mutliple sections with different goals.
% Click into one of the sections to run it only (ctrl + enter)

%% If Statements

clc, clearvars, close all

% Generate 10 random values from 1 to 5. Count the number of 3's.

% Generates random numbers using the randi algorithm (1x10, max = 5)
rand = randi(5, 1, 10)

% To check whether a specific index is equal to 3
rand(3) == 3

% Check the entire array for 3's and count how many exist
num3 = sum(rand == 3)

% If 3 occurs 3 or more times, print 'wow!'
% If statement: starts with 'if', always closes with 'end'
if num3 >= 3
    disp('wow!')
end

%% For Loops

clc, clearvars, close all

% Generates random numbers using the randi algorithm (1x10, max = 5)
rand = randi(5, 1, 10)

% Amount of 3's (we need this for later)
num3 = 0;

% Runs a for loop starting at i = 1 up to the length of rand (10)
% Increments num3 for every 3 in rand
for i = 1:length(rand)
    % This is called a nested-if statement since its in another statement
    if rand(i) == 3
        num3 = num3 + 1
    end
end

% If 3 occurs 3 or more times, print 'wow!'
if num3 >= 3
    disp('wow!')
end

%% Trying with 10,000,000 values

clc, clearvars, close all

% Make sure to suppress these commands because these values are huge!
rand = randi(5, 1, 10000000);

num3 = sum(rand == 3)

% Start a time calculation with tic, end it with toc. Useful to see
% computational time/load. Tic can also be stored as a variable.

tic

% If number of 3's takes up more than 20% of the values, print 'wow!'
if num3 >= 0.2*length(rand)
    disp('wow!')
end

toc

% Try writing out the for-loop for this 3rd-section and see which method
% is faster.