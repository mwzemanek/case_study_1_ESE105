%case study 1 script
load("COVIDbyCounty.mat");
CNTY_CENSUS(:,"DIVISION")
cv = cvpartition(size(CNTY_CENSUS(:,"DIVISION")),'HoldOut',1);
idx = cv.test;
dataTrain = CNTY_COVID(~idx,:);
dataTest  = CNTY_COVID(idx,:);

figure
plot(dataTrain')
figure
plot(dataTest')

[C, indx] = kmeans(CNTY_COVID, 9, 'Distance', 'correlation');
figure
plot(indx')




% Separate to training and test data


%scatter plots
