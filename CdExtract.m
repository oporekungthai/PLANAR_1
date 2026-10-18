data = readmatrix("Plant_DEP/d.csv");
Rmach = data(:, 1);
RCd = data(:, 2);

[Rmach_Clean,uniqueser] = unique(Rmach);
RCd_Clean = RCd(uniqueser);
RCd_Clean = filloutliers(RCd_Clean,"pchip","movmedian",5)
plot(Rmach_Clean,RCd_Clean)