% The Fingerprint.m function takes a set of windows and calcualtes a 
% document fingerprint using the winnowing algorithm. It returns the 
% document fingerprint as a 2D array with columns each containing a 
% winnowed value and its corresponding position
% Inputs:
% window = a 2D array window of values
% Outputs:
% fp = a 2 row 2D array representing the fingerprint of a document,
%      consisting of a set of winnowed values (first row) and the relative
%      positions of those values (second row). Therefore each column
%      contains a hash value/position pair.
% Author: Noah Hagar-Dent
% Last Edited: 09/09/2022
function [fp] = Fingerprint(window)

% Initialize variables for the rows and columns in the window 2D array
[rows,cols] = size(window);

% Iterate through the number of rows in the window
for i=1:rows
    % Initialize variables for the current rightmost minimum value and
    % position from the window array
    [mini,pos] = RightMin(window(i,1:cols));

    % Update the position to be representative of the position from the
    % original array rather than the window using a special formula
    pos = pos + i - 1;

    % On the first iteration (i=1), set the first rightmost minimum value
    % and position to first column in the fingerprint output array
    if i == 1
        fp(1,1) = mini;
        fp(2,1) = pos;
        % Initialize a counter variable to iterate through the positions in
        % the fingerprint array for later comparisons
        index = 1;
    % If the latest updated position in the fingerprint array is not
    % equal to the position from the original array rather than the window
    elseif (fp(2,index) ~= pos)
        % First, update the index variable so that the current fingerprint
        % minimum and position is not replaced
        index = index + 1;
        % Assign the next fingerprint minimum and position value to the
        % correct position relative to the original array
        fp(1,index) = mini;
        fp(2,index) = pos;
    end
end
        
end