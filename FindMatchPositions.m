% The FindMatchPositions.m function compares two fingerprints and
% determines which positions in fingerprint 1 have a value that is also
% found in string 2, and which positions in fingerprint 2 have a value that
% is also found in string 1.
% Inputs:
% fp1 = a 2D array representing a fingerprint for string 1
% fp2 = a 2D array representing a fingerprint for string 2
% Outputs:
% indexpos1 = a 1D row array containing a list of index positions in string 
%             1 of all values that are also found in string 2   
% indexpos2 = a 1D row array containing a list of index positions in string 
%             2 of all values that are also found in string 2
function [indexpos1,indexpos2] = FindMatchPositions(fp1,fp2)
% Assign indexpos1 and indexpos2 to the positions of matching indices 
% across both input fingerprints using FindMatchIndices
indexpos1 = FindMatchIndices(fp1(1,:),fp2(1,:));
indexpos2 = FindMatchIndices(fp2(1,:),fp1(1,:));

% Iterate through the new indexpos1 array
for i=1:length(indexpos1)
    % Update indexpos1 array to be the indexes from the fingerprint 1
    indexpos1(i) = fp1(2,indexpos1(i));
end

% Iterate through the new indexpos2 array
for i=1:length(indexpos2)
    % update indexpos2 array to be the new indexes from the fingerprint 2
    indexpos2(i) = fp2(2,indexpos2(i));
end

end