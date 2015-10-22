% -------------- leastSquares (ANALYTICAL METHOD) -----------------
% this code comes from the EPFL PCML 2015 LAB. 
% Function: beta = leastSquares(y,tX)
% Purpose : calculate the regression parameter beta 
% Input   : y 	   --- the target vector of the given data set
%			tX     --- the N-by-(D+1) matrix constructed from data
% Output  : beta   --- parameter beta optimizing the cost
% -------------- C. LIU & M. ZHAO ---------------------------------

function beta = leastSquares(y,tX)
    
    beta = (tX' * tX) \ (tX' * y);

end

