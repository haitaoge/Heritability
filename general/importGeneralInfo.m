%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /Users/Aurina/GoogleDrive/Genetics_connectome/Heritability/data/general/general_info.xlsx
%    Worksheet: general_info
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2018/03/12 18:17:13

%% Import the data
function generalinfo = importGeneralInfo(filename)
[~, ~, raw] = xlsread(filename,'general_info');
raw = raw(2:end,[1:2,5:8,19:20]);
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};
cellVectors = raw(:,[3,4]);
raw = raw(:,[1,2,5,6,7,8]);

%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % Find non-numeric cells
raw(R) = {NaN}; % Replace non-numeric cells

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Create table
generalinfo = table;

%% Allocate imported array to column variable names
generalinfo.Subject = data(:,1);
generalinfo.Age_in_Yrs = data(:,2);
generalinfo.ZygosityGT = cellVectors(:,1);
generalinfo.Family_ID = cellVectors(:,2);
generalinfo.Mother_ID = data(:,3);
generalinfo.Father_ID = data(:,4);
generalinfo.Height = data(:,5);
generalinfo.Weight = data(:,6);

%% Clear temporary variables
clearvars data raw cellVectors R;
end