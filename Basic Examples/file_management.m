%% Sample for file management.

% Prints to the console the current working directory
pwd

% Changes the current working directory to the valid input dir.
dir '/.'

% Saves and loads .mat files
save('example_file.mat')
load(pwd + '/example_file.mat')