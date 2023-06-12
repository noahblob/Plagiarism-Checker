% SimilarityScore.m function calculates a similarity score as a decimal by
% taking a list of matched positions in a string and determining what
% proportion of characters in a string matched.
% Inputs:
% indices = A 1D array of indices of matched positions
% k = the length of each match
% tlength = total string length that was converted into k-grams
% Outputs:
% percent = percentage of the string that matched
% Author: Noah Hagar-Dent
% Last Edited: 09/09/2022
function [percent] = SimilarityScore(indices,k,tlength)
% Initialize an array of positions used to calculate percent at end
pos = zeros(1,tlength);

% Loop through the length of the matched indices
for i=1:length(indices)
    % Set highlighted matched parts from the string of tlength into 1's in 
    % the pos array 
    pos(indices(i):indices(i)+(k-1)) = 1;
end

% Calculate the percentage of the string that matched by adding up the the
% number of 1s in pos array, and dividing by the length of pos array
percent = length(pos(pos==1))/(length(pos));

end