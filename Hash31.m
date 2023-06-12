% The Hash31.m function calculates the hash value corresponding to an array
% of values input.
% Inputs:
% array = A 1D array of characters or integers
% Outputs:
% hash = The calculated hash value
% Author: Noah Hagar-Dent
% Last Edited: 19/08/2022
function [hash] = Hash31(array)
% Initialise the value of the hash in the case that the input array is
% empty
hash = 0;

% Initialise the hash size variable
hashsize = 2^20;

% Start a loop that iterates through 1 greater than the length of the input
% array
for i=1:length(array)+1
    if i <= length(array)
        % Reassign values for the hash number based on values in the array
        hash = array(i) + 31*hash;
    end
    % Once incremented through entire a array, find the remainder of h
    % after dividing by hashsize, and return this as the output
    hash = mod(hash,hashsize);
end

end