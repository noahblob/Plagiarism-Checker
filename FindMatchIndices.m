% The FindMatchIndices.m function takes two non-empty 1D arrays as input 
% and returns a 1D array containing a list of index positions in array 1 of 
% values that are also found in array 2.
% Inputs:
% array1 = First 1D array
% array2 = Second 1D array
% Outputs:
% posArray = Array of matching index positions across array1 and array2
% Author: Noah Hagar-Dent
% Last Edited: 09/09/2022
function [posArray] = FindMatchIndices(array1,array2)
% Intialize variable posArray as an empty array in case no matches are
% found
posArray = [];

% Intialize a variable counter as a counter
counter = 1;

% Loop through the length of array1
for i=1:length(array1)
    % Loop through the length of array2
    for j=1:length(array2)
        % Check i'th index in array1 against changing j'th index in array2
        if array1(i) == array2(j)
            % Once they are equal, add i to posArray
            posArray(counter) = i;
            % update counter
            counter = counter + 1;
            % break out of this for loop to iterate i to next number, which
            % will now check the second element of array1 against all of
            % array2
            break
        end
    end
end
end