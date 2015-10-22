% ---------------------- meanRegression ---------------------------
% The most naive regression method, one parameter model beta0
% Function: beta = meanRegression(y,tX)
% Purpose : calculate the regression parameter beta 
% Input   : y 	   --- the target vector of the given data set
%			tX     --- the N-by-(D+1) matrix constructed from data
% Output  : beta   --- parameter beta optimizing the cost
% -------------- C. LIU & M. ZHAO ---------------------------------

function beta = meanRegression(y_train)

beta = mean(y_train);

end




