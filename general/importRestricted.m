%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /Users/Aurina/GoogleDrive/Genetics_connectome/Heritability/data/general/general_info_restricted.xlsx
%    Worksheet: general_info
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2018/10/03 20:25:46
function generalinforestricted = importRestricted(filename)
%% Import the data
[~, ~, raw] = xlsread(filename,'general_info');
raw = raw(2:end,:);
raw(cellfun(@(x) ~isempty(x) && isnumeric(x) && isnan(x),raw)) = {''};
cellVectors = raw(:,[3,4,5,6,9,10,11,32,34,36,38,42,43,44,109,110,114,115,116,117,118,119,120,121,201]);
raw = raw(:,[1,2,7,8,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,33,35,37,39,40,41,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,111,112,113,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200]);

%% Replace non-numeric cells with NaN
R = cellfun(@(x) ~isnumeric(x) && ~islogical(x),raw); % Find non-numeric cells
raw(R) = {NaN}; % Replace non-numeric cells

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Create table
generalinforestricted = table;

%% Allocate imported array to column variable names
generalinforestricted.Subject = data(:,1);
generalinforestricted.Age_in_Yrs = data(:,2);
generalinforestricted.HasGT = cellVectors(:,1);
generalinforestricted.ZygositySR = cellVectors(:,2);
generalinforestricted.ZygosityGT = cellVectors(:,3);
generalinforestricted.Family_ID = cellVectors(:,4);
generalinforestricted.Mother_ID = data(:,3);
generalinforestricted.Father_ID = data(:,4);
generalinforestricted.TestRetestInterval = cellVectors(:,5);
generalinforestricted.Race = cellVectors(:,6);
generalinforestricted.Ethnicity = cellVectors(:,7);
generalinforestricted.Handedness = data(:,5);
generalinforestricted.SSAGA_Employ = data(:,6);
generalinforestricted.SSAGA_Income = data(:,7);
generalinforestricted.SSAGA_Educ = data(:,8);
generalinforestricted.SSAGA_InSchool = data(:,9);
generalinforestricted.SSAGA_Rlshp = data(:,10);
generalinforestricted.SSAGA_MOBorn = data(:,11);
generalinforestricted.Height = data(:,12);
generalinforestricted.Weight = data(:,13);
generalinforestricted.BMI = data(:,14);
generalinforestricted.SSAGA_BMICat = data(:,15);
generalinforestricted.SSAGA_BMICatHeaviest = data(:,16);
generalinforestricted.Blood_Drawn = data(:,17);
generalinforestricted.Hematocrit_1 = data(:,18);
generalinforestricted.Hematocrit_2 = data(:,19);
generalinforestricted.BPSystolic = data(:,20);
generalinforestricted.BPDiastolic = data(:,21);
generalinforestricted.ThyroidHormone = data(:,22);
generalinforestricted.HbA1C = data(:,23);
generalinforestricted.Hypothyroidism = data(:,24);
generalinforestricted.Hypothyroidism_Onset = cellVectors(:,8);
generalinforestricted.Hyperthyroidism = data(:,25);
generalinforestricted.Hyperthyroidism_Onset = cellVectors(:,9);
generalinforestricted.OtherEndocrn_Prob = data(:,26);
generalinforestricted.OtherEndocrine_ProbOnset = cellVectors(:,10);
generalinforestricted.Menstrual_RegCycles = data(:,27);
generalinforestricted.Menstrual_Explain = cellVectors(:,11);
generalinforestricted.Menstrual_AgeBegan = data(:,28);
generalinforestricted.Menstrual_CycleLength = data(:,29);
generalinforestricted.Menstrual_DaysSinceLast = data(:,30);
generalinforestricted.Menstrual_AgeIrreg = cellVectors(:,12);
generalinforestricted.Menstrual_AgeStop = cellVectors(:,13);
generalinforestricted.Menstrual_MonthsSinceStop = cellVectors(:,14);
generalinforestricted.Menstrual_UsingBirthControl = data(:,31);
generalinforestricted.Menstrual_BirthControlCode = data(:,32);
generalinforestricted.FamHist_Moth_Scz = data(:,33);
generalinforestricted.FamHist_Fath_Scz = data(:,34);
generalinforestricted.FamHist_Moth_Dep = data(:,35);
generalinforestricted.FamHist_Fath_Dep = data(:,36);
generalinforestricted.FamHist_Moth_BP = data(:,37);
generalinforestricted.FamHist_Fath_BP = data(:,38);
generalinforestricted.FamHist_Moth_Anx = data(:,39);
generalinforestricted.FamHist_Fath_Anx = data(:,40);
generalinforestricted.FamHist_Moth_DrgAlc = data(:,41);
generalinforestricted.FamHist_Fath_DrgAlc = data(:,42);
generalinforestricted.FamHist_Moth_Alz = data(:,43);
generalinforestricted.FamHist_Fath_Alz = data(:,44);
generalinforestricted.FamHist_Moth_PD = data(:,45);
generalinforestricted.FamHist_Fath_PD = data(:,46);
generalinforestricted.FamHist_Moth_TS = data(:,47);
generalinforestricted.FamHist_Fath_TS = data(:,48);
generalinforestricted.FamHist_Moth_None = data(:,49);
generalinforestricted.FamHist_Fath_None = data(:,50);
generalinforestricted.ASR_Anxd_Raw = data(:,51);
generalinforestricted.ASR_Anxd_Pct = data(:,52);
generalinforestricted.ASR_Witd_Raw = data(:,53);
generalinforestricted.ASR_Witd_Pct = data(:,54);
generalinforestricted.ASR_Soma_Raw = data(:,55);
generalinforestricted.ASR_Soma_Pct = data(:,56);
generalinforestricted.ASR_Thot_Raw = data(:,57);
generalinforestricted.ASR_Thot_Pct = data(:,58);
generalinforestricted.ASR_Attn_Raw = data(:,59);
generalinforestricted.ASR_Attn_Pct = data(:,60);
generalinforestricted.ASR_Aggr_Raw = data(:,61);
generalinforestricted.ASR_Aggr_Pct = data(:,62);
generalinforestricted.ASR_Rule_Raw = data(:,63);
generalinforestricted.ASR_Rule_Pct = data(:,64);
generalinforestricted.ASR_Intr_Raw = data(:,65);
generalinforestricted.ASR_Intr_Pct = data(:,66);
generalinforestricted.ASR_Oth_Raw = data(:,67);
generalinforestricted.ASR_Crit_Raw = data(:,68);
generalinforestricted.ASR_Intn_Raw = data(:,69);
generalinforestricted.ASR_Intn_T = data(:,70);
generalinforestricted.ASR_Extn_Raw = data(:,71);
generalinforestricted.ASR_Extn_T = data(:,72);
generalinforestricted.ASR_TAO_Sum = data(:,73);
generalinforestricted.ASR_Totp_Raw = data(:,74);
generalinforestricted.ASR_Totp_T = data(:,75);
generalinforestricted.DSM_Depr_Raw = data(:,76);
generalinforestricted.DSM_Depr_Pct = data(:,77);
generalinforestricted.DSM_Anxi_Raw = data(:,78);
generalinforestricted.DSM_Anxi_Pct = data(:,79);
generalinforestricted.DSM_Somp_Raw = data(:,80);
generalinforestricted.DSM_Somp_Pct = data(:,81);
generalinforestricted.DSM_Avoid_Raw = data(:,82);
generalinforestricted.DSM_Avoid_Pct = data(:,83);
generalinforestricted.DSM_Adh_Raw = data(:,84);
generalinforestricted.DSM_Adh_Pct = data(:,85);
generalinforestricted.DSM_Inat_Raw = data(:,86);
generalinforestricted.DSM_Hype_Raw = data(:,87);
generalinforestricted.DSM_Antis_Raw = data(:,88);
generalinforestricted.DSM_Antis_Pct = data(:,89);
generalinforestricted.SSAGA_ChildhoodConduct = data(:,90);
generalinforestricted.SSAGA_PanicDisorder = data(:,91);
generalinforestricted.SSAGA_Agoraphobia = data(:,92);
generalinforestricted.SSAGA_Depressive_Ep = data(:,93);
generalinforestricted.SSAGA_Depressive_Sx = data(:,94);
generalinforestricted.Color_Vision = cellVectors(:,15);
generalinforestricted.Eye = cellVectors(:,16);
generalinforestricted.EVA_Num = data(:,95);
generalinforestricted.EVA_Denom = data(:,96);
generalinforestricted.Correction = data(:,97);
generalinforestricted.Breathalyzer_Over_05 = cellVectors(:,17);
generalinforestricted.Breathalyzer_Over_08 = cellVectors(:,18);
generalinforestricted.Cocaine = cellVectors(:,19);
generalinforestricted.THC = cellVectors(:,20);
generalinforestricted.Opiates = cellVectors(:,21);
generalinforestricted.Amphetamines = cellVectors(:,22);
generalinforestricted.MethAmphetamine = cellVectors(:,23);
generalinforestricted.Oxycontin = cellVectors(:,24);
generalinforestricted.Total_Drinks_7days = data(:,98);
generalinforestricted.Num_Days_Drank_7days = data(:,99);
generalinforestricted.Avg_Weekday_Drinks_7days = data(:,100);
generalinforestricted.Avg_Weekend_Drinks_7days = data(:,101);
generalinforestricted.Total_Beer_Wine_Cooler_7days = data(:,102);
generalinforestricted.Avg_Weekday_Beer_Wine_Cooler_7days = data(:,103);
generalinforestricted.Avg_Weekend_Beer_Wine_Cooler_7days = data(:,104);
generalinforestricted.Total_Malt_Liquor_7days = data(:,105);
generalinforestricted.Avg_Weekday_Malt_Liquor_7days = data(:,106);
generalinforestricted.Avg_Weekend_Malt_Liquor_7days = data(:,107);
generalinforestricted.Total_Wine_7days = data(:,108);
generalinforestricted.Avg_Weekday_Wine_7days = data(:,109);
generalinforestricted.Avg_Weekend_Wine_7days = data(:,110);
generalinforestricted.Total_Hard_Liquor_7days = data(:,111);
generalinforestricted.Avg_Weekday_Hard_Liquor_7days = data(:,112);
generalinforestricted.Avg_Weekend_Hard_Liquor_7days = data(:,113);
generalinforestricted.Total_Other_Alc_7days = data(:,114);
generalinforestricted.Avg_Weekday_Other_Alc_7days = data(:,115);
generalinforestricted.Avg_Weekend_Other_Alc_7days = data(:,116);
generalinforestricted.SSAGA_Alc_D4_Dp_Sx = data(:,117);
generalinforestricted.SSAGA_Alc_D4_Ab_Dx = data(:,118);
generalinforestricted.SSAGA_Alc_D4_Ab_Sx = data(:,119);
generalinforestricted.SSAGA_Alc_D4_Dp_Dx = data(:,120);
generalinforestricted.SSAGA_Alc_12_Drinks_Per_Day = data(:,121);
generalinforestricted.SSAGA_Alc_12_Frq = data(:,122);
generalinforestricted.SSAGA_Alc_12_Frq_5plus = data(:,123);
generalinforestricted.SSAGA_Alc_12_Frq_Drk = data(:,124);
generalinforestricted.SSAGA_Alc_12_Max_Drinks = data(:,125);
generalinforestricted.SSAGA_Alc_Age_1st_Use = data(:,126);
generalinforestricted.SSAGA_Alc_Hvy_Drinks_Per_Day = data(:,127);
generalinforestricted.SSAGA_Alc_Hvy_Frq = data(:,128);
generalinforestricted.SSAGA_Alc_Hvy_Frq_5plus = data(:,129);
generalinforestricted.SSAGA_Alc_Hvy_Frq_Drk = data(:,130);
generalinforestricted.SSAGA_Alc_Hvy_Max_Drinks = data(:,131);
generalinforestricted.Total_Any_Tobacco_7days = data(:,132);
generalinforestricted.Times_Used_Any_Tobacco_Today = data(:,133);
generalinforestricted.Num_Days_Used_Any_Tobacco_7days = data(:,134);
generalinforestricted.Avg_Weekday_Any_Tobacco_7days = data(:,135);
generalinforestricted.Avg_Weekend_Any_Tobacco_7days = data(:,136);
generalinforestricted.Total_Cigarettes_7days = data(:,137);
generalinforestricted.Avg_Weekday_Cigarettes_7days = data(:,138);
generalinforestricted.Avg_Weekend_Cigarettes_7days = data(:,139);
generalinforestricted.Total_Cigars_7days = data(:,140);
generalinforestricted.Avg_Weekday_Cigars_7days = data(:,141);
generalinforestricted.Avg_Weekend_Cigars_7days = data(:,142);
generalinforestricted.Total_Pipes_7days = data(:,143);
generalinforestricted.Avg_Weekday_Pipes_7days = data(:,144);
generalinforestricted.Avg_Weekend_Pipes_7days = data(:,145);
generalinforestricted.Total_Chew_7days = data(:,146);
generalinforestricted.Avg_Weekday_Chew_7days = data(:,147);
generalinforestricted.Avg_Weekend_Chew_7days = data(:,148);
generalinforestricted.Total_Snuff_7days = data(:,149);
generalinforestricted.Avg_Weekday_Snuff_7days = data(:,150);
generalinforestricted.Avg_Weekend_Snuff_7days = data(:,151);
generalinforestricted.Total_Other_Tobacco_7days = data(:,152);
generalinforestricted.Avg_Weekday_Other_Tobacco_7days = data(:,153);
generalinforestricted.Avg_Weekend_Other_Tobacco_7days = data(:,154);
generalinforestricted.SSAGA_FTND_Score = data(:,155);
generalinforestricted.SSAGA_HSI_Score = data(:,156);
generalinforestricted.SSAGA_TB_Age_1st_Cig = data(:,157);
generalinforestricted.SSAGA_TB_DSM_Difficulty_Quitting = data(:,158);
generalinforestricted.SSAGA_TB_DSM_Tolerance = data(:,159);
generalinforestricted.SSAGA_TB_DSM_Withdrawal = data(:,160);
generalinforestricted.SSAGA_TB_Hvy_CPD = data(:,161);
generalinforestricted.SSAGA_TB_Max_Cigs = data(:,162);
generalinforestricted.SSAGA_TB_Reg_CPD = data(:,163);
generalinforestricted.SSAGA_TB_Smoking_History = data(:,164);
generalinforestricted.SSAGA_TB_Still_Smoking = data(:,165);
generalinforestricted.SSAGA_TB_Yrs_Since_Quit = data(:,166);
generalinforestricted.SSAGA_TB_Yrs_Smoked = data(:,167);
generalinforestricted.SSAGA_Times_Used_Illicits = data(:,168);
generalinforestricted.SSAGA_Times_Used_Cocaine = data(:,169);
generalinforestricted.SSAGA_Times_Used_Hallucinogens = data(:,170);
generalinforestricted.SSAGA_Times_Used_Opiates = data(:,171);
generalinforestricted.SSAGA_Times_Used_Sedatives = data(:,172);
generalinforestricted.SSAGA_Times_Used_Stimulants = data(:,173);
generalinforestricted.SSAGA_Mj_Use = data(:,174);
generalinforestricted.SSAGA_Mj_Ab_Dep = data(:,175);
generalinforestricted.SSAGA_Mj_Age_1st_Use = data(:,176);
generalinforestricted.SSAGA_Mj_Times_Used = cellVectors(:,25);

%% Clear temporary variables
clearvars data raw cellVectors R;
end