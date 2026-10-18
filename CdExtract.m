data = readmatrix("Plant_DEP/d.csv");
Rmach = data(:, 1);
RCd = data(:, 2);

[Rmach_Clean,uniqueser] = unique(Rmach);
RCd_Clean = RCd(uniqueser);
RCd_Clean = filloutliers(RCd_Clean,"pchip","movmedian",5)
% plot(Rmach_Clean,RCd_Clean)


data = readmatrix("Plant_DEP/Airbrake_CD.csv");
RmachAB = data(:, 1);
RCdAB = data(:, 2);

[Rmach_CleanAB,uniqueser] = unique(RmachAB);
RCd_CleanAB = RCdAB(uniqueser);
% RCd_CleanAB = filloutliers(RCd_CleanAB,"pchip","movmedian",5)
% plot(Rmach_CleanAB,RCd_CleanAB)