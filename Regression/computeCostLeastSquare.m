% -------------- Compute MSE error -------------------------------
% Function: cost = computeCostLeastSquare(y,tX,beta)
% Purpose : calculate the cost between target and calculated model
% Input   : y 	   --- the target vector of the given data set
%			tX     --- the N-by-(D+1) matrix of data
%			beta   --- parameter beta when obtained optimal
% Output  : cost   --- differences between target and calculated
% -------------- C. LIU & M. ZHAO --------------------------------


% this function may need to be expanded such as huber?

function cost = computeCostLeastSquare(y,tX,beta)
    
    error 	    = y - tX * beta;
    
    instanceNum = size(tX,1);
    
    cost        = error' * error ./ (2 * instanceNum);

end