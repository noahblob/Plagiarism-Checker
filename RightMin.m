% The Rightmin.m function takes an array input and finds the minimum 
% numerical value from the array, at the rightmost position, then returns
% this minimum value and the position as two separate outputs
% Inputs:
% array = A 1D array of values
% Outputs:
% minimum = The rightmost minimum value
% pos = Position of the rightmost minimum
% Author: Noah Hagar-Dent
% Last Edited: 09/09/2022
function [minimum, pos] = RightMin(array)

% Assigns minimum and position values
[minimum,pos] = min(array);

% Iterates through the length of the input array
for i=1:length(array)
    % Checks if the current minimum found is the rightmost minimum
    if array(i) == minimum && i ~= pos
        % If not, reassign the position to that of the rightmost minimum
        pos = i;
    end
end

end