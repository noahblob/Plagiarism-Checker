% The Kgram.m function takes a positive integer k and a string as an input 
% and outputs a 1xn cell array of k-grams, where each element is k 
% characters long.
% Inputs:
% k = A positive integer greater than 0
% string = A string of characters
% Outputs:
% cell_array = A 1xn cell array of k-grams
% Author: Noah Hagar-Dent
% Last Edited: 09/09/2022
function [cell_array] = Kgram(k, string)
% Initialize variable n (cell array size) by calculating the number of
% k-grams that there should be
n = length(string) - k + 1;

% Initialize size of cell_array
cell_array = cell(1,n);

% Check if k is greater than the length of the input string
if k > length(string)
    % If so, cell_array output will be the input string
    cell_array{1} = string;
end

% Loop that iterates n times
for i=1:n
    % If k greater than the length of input string
    if k > length(string)
        % Then set the output cell to the input string
        cell_array{i} = string;
    % Otherwise
    else
        % Set the ith spot in the output cell to a k-gram
        cell_array{i} = string(i:k);
        % Update the value of k
        k = k + 1;
    end
end

end