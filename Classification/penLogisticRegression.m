% -------------- penLogisticRegression (GRADIENT DESCENT) -----------
% Function: beta = penLogisticRegression(y,tX,alpha,lambda)
% Purpose : calculate the regression parameter beta using GD method
%           penalty is included.
% Input   : y      --- the target vector of the given data set
%           tX     --- the N-by-(D+1) matrix constructed from data
%           alpha  --- the GD step size
%           lambda --- the penalty factor
% Output  : beta   --- parameter beta optimizing the cost
% -------------- C. LIU & M. ZHAO ----------------------------------

function beta = penLogisticRegression(y,tX,alpha,lambda)
    
    featureNum = size(tX,2);
    
    beta  = rand(featureNum,1);
    
    maxIter = 100000;
    
    for i = 1:maxIter
    
        gradient = tX' * (sigmoid(tX * beta) - y) + lambda * (beta); %TBD
    
        if gradient' * gradient < 1e-5
    
            meg = sprintf('Penalty Logistic Regression Converages at Iteration %d\n',i);
    
            disp(meg);
    
            break
        end
    
        beta = beta - alpha * gradient;
    
    end
    
    meg = sprintf('Penalty Logistic Regression Ends\n');
    
    disp(meg);
end

