% -------------- Ridge regression function --------------------
% Function: beta = ridgeRegression(y,tX,lambda)
% Purpose : calculate the ridgeRegression parameter beta
% Input   : y 	   --- the target vector of the given data set
%			tX     --- the N-by-(D+1) matrix of data
%			lambda --- the penalize parameter
% Output  : beta   --- ridgeRegression optimal parameter beta
% -------------- C. LIU & M. ZHAO -----------------------------

function beta = ridgeRegression(y,tX,lambda)
   
   featureNum = size(tX,2);
   
   I = eye(featureNum - 1);

   I = [zeros(1,featureNum - 1);I];

   I = [zeros(featureNum,1),I];
   
   beta = (tX' * tX + lambda * I) \ tX' * y;

end



% or equivalently using the following function 
% function beta = ridgeRegression(y,tX,lambda)

% lambda_matrix = lambda .* eye(size(tX,2));

% lambda_matrix(:,1) = 0;
% lambda_matrix(1,:) = 0;

% beta = (tX' * tX + lambda_matrix) \ tX' * y;

% end