function output=PCA(input,D)
% input is a N*M matrix (M>D)
% We implement a PCA function projecting each row of PCA to D-dimensional
% space
   instanceNum=size(input,1);
   featureNum=size(input,2);
   %normalize
   featureMean=mean(input);
   featureSTD=std(input,1);
   featureMeanNormalizer=ones(instanceNum,1)*featureMean;
   featureSTDNormalizer=ones(instanceNum,1)*featureSTD;
   input=(input-featureMeanNormalizer)./featureSTDNormalizer;
   %calculate covariance matrix
   cov=input'*input/instanceNum;
   %for eigVec and eigValue, each column is a eigvector and a eigvalue
   [eigVec,eigValue]=eig(cov);
   %chose D biggest eigenvector and corresponding values
   eigValTab=zeros(featureNum,2);
   for i=1:featureNum
       eigValTab(i,1)=eigValue(i,i);
       eigValTab(i,2)=i;
   end
   eigValTab=sortrows(eigValTab);
   output=zeros(instanceNum,D);
   for i=1:D
       chosenEigInduce=eigValTab(featureNum+1-i,2);
       chosenEigVector=eigVec(:,chosenEigInduce);
       output(:,i)=input*chosenEigVector;
   end
   %normalizer output
   featureMean=mean(output);
   featureSTD=std(output,1);
   featureMeanNormalizer=ones(instanceNum,1)*featureMean;
   featureSTDNormalizer=ones(instanceNum,1)*featureSTD;
   output=(output-featureMeanNormalizer)./featureSTDNormalizer;
end