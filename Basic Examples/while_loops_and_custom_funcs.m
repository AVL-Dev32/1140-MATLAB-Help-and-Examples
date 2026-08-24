% Example for while loops and custom functions.

clc, clearvars, close all

z = 100;

% A while loop needs a condition to continue to run. Make sure to keep
% the condition in-bounds, otherwise, the function will run infinitely

% This specific while loop continues to decrease until z is less than or
% equal to 75. If the decrement statement wasn't there, it would go on
% infinitely.
while z > 75
    disp(sqrt(z))
    z = z - 1;
end

disp('Loop Ended')

% We could also make this into our own function.
% For more complicated computations, it makes more sense to bundle the
% statements into neat functions that we can call later.
% IMPORTANT: MATLAB will only recognize custom functions THAT ARE IN THE
% SAME FOLDER as this script.
% Please open example_function to see documentation.

z = 100; % sets this back to 100

example_function(z) % runs the custom example function