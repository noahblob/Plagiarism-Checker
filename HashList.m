% The HasList.m function calculates the hash31 value for every string 
% stored in a cell array to generate a sequence of hashed values (integers).
% Inputs:
% string_array = a 1xn cell array where each element of the array is a 
%                string
% Outputs:
% hash_array = a 1xn array containing hash values for the corresponding
%              elements of the cell array
% Author: Noah Hagar-Dent
% Last Edited: 09/09/2022
function [hash_array] = HashList(string_array)
% Initialize the size of the output hash array
hash_array = zeros(1,length(string_array));

% Loop through the elements of string_array
for i=1:length(string_array)
    % Calculate the has value for each character in string_array and assign
    % these to the hash_array
    hash_array(i) = Hash31(string_array{i});
end

end