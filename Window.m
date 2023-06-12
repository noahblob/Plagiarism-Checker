% The Window.m function takes a 1D array of integer values and creates a 
% 2D array of windows for a specified window size w
% Inputs:
% w = The window size
% int_arrray = A 1D array of integers
% Outputs:
% window = a 2D array of integer values where each row of the array is a
%          window containing w integer values.
% Name: Noah Hagar-Dent
% Last Edited: 09/09/2022
function [window] = Window(w,int_array)
% Initialize the number of rows to iterate through when filling the window
rows = length(int_array) - w + 1;

% In the case w is greater than length of the input array, output = input
if w > length(int_array)
    window = int_array;
    return
end

% Iterate through the number of rows
for i=1:rows
    % Iterate through the window width specified (w)
    for j=1:w
        % Assign each position in the window to values from the input array
        window(i,j) = int_array(j);
    end
    % Update the integer arrow so all values are one to the left, so that
    % the concurrent window starts from the next value in the array
    int_array = circshift(int_array,-1);
end

end