% The StripString.m takes a string of characters as input, and strips out
% all whitespace and unprintable characters from the string, as well as
% converts all uppercase letters in the string to lowercase
% Inputs:
% string = A string of characters
% Outputs:
% stripped = An array of characters with unprintable characters stripped 
%            out and uppercase characters converted to lowercase.
% Author: Noah Hagar-Dent
% Last Edited: 09/09/2022
function [stripped] = StripString(string)
% Initialize the stripped string as an empty array in the case that an
% empty character array is input
stripped = '';

% A loop which iterates through the entire string
for i=1:length(string)
    % Check if the character in position i in the input string is printable
    if string(i)+0 >= 33 && string(i)+0 <= 126
        % If character is printable, add it to stripped string
        stripped = append(stripped,lower(string(i)));
    end
end

end