clear;close all;clc;

load('Macau_regression.mat');

trainInstanceNum=size(X_train,1);
featureNum=size(X_train,2);

featureMean=mean(X_train);
featureSTD=std(X_train,1);
featureMeanNormalizer=ones(trainInstanceNum,1)*featureMean;
featureSTDNormalizer=ones(trainInstanceNum,1)*featureSTD;
X_train=(X_train-featureMeanNormalizer)./featureSTDNormalizer;

costVec=zeros(1,featureNum);
timeVec=zeros(1,featureNum);

for i=1:featureNum
    compressedData=PCA(X_train,i);
    SX_train=[ones(trainInstanceNum,1) compressedData];
    tic;
    beta=leastSquaresGD(y_train,SX_train,0.1);
    timeVec(i)=toc;
    costVec(i)=computeCostLeastSquare(y_train,SX_train,beta);
    disp(i);
end

figure;
subplot(1,2,1);
plot(timeVec);
subplot(1,2,2);
plot(costVec);
