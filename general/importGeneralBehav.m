%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /Users/Aurina/GoogleDrive/Genetics_connectome/Heritability/data/general/general_info_behavioural.xlsx
%    Worksheet: general_info_behavioural
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2018/03/13 16:10:56

%% Import the data
function [subject,gender] = importGeneralBehav(filename2)

[~, ~, raw] = xlsread(filename2,'general_info_behavioural');
raw = raw(2:end,[1,4]);
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};
cellVectors = raw(:,2);
raw = raw(:,1);

%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % Find non-numeric cells
raw(R) = {NaN}; % Replace non-numeric cells

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
subject = data(:,1);
gender = cellVectors(:,1);

%% Clear temporary variables
clearvars data raw cellVectors R;

end