function [z_final] = example_function(z_initial)

% This is a custom function, I will explain each part one-by-one
% "function" is the header
% "[]" is what is returned when the function completes, therefore, these
%    variables MUST be defined inside the function. Leave empty if the
%    function doesn't return anything.
% "example_function" this is the name of the function which you would refer
%    to in other scripts. THIS MUST BE EXACTLY THE SAME NAME AS THE NAME
%    OF THIS SAVED SCRIPT.
% "()" this is where all of the input variables would be put into. If there
%    are no inputs required, leave empty.
% For both inputs and outputs, separating arguments is the same as any
% other way that's already been shown in these examples.

% Set our working variable, z, to z_initial - which is the input arg.
z = z_initial;

% z will continue to decrease until it is less than or greater than half of
% z_initial, our input argument
while z > z_initial/2
    z = z - 1;
end

% IMPORTANT: Set the output variable, z_final, to the value of z after the
% while loop has ended.
z_final = z;

end