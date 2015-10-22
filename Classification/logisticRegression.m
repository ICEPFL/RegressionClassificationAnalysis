% -------------- logisticRegression (GRADIENT DESCENT) ------------
% Function: beta = logisticRegression(y,tX,alpha)
% Purpose : calculate the regression parameter beta using GD method
% Input   : y      --- the target vector of the given data set
%           tX     --- the N-by-(D+1) matrix constructed from data
%           alpha  --- the GD step size
% Output  : beta   --- parameter beta optimizing the cost
% -------------- C. LIU & M. ZHAO ---------------------------------
function beta = logisticRegression(y,tX,alpha)
    
    featureNum = size(tX,2);
    beta       = rand(featureNum,1);
    
    maxIter = 100000;
    
    for i = 1:maxIter
        
        gradient = tX' * (sigmoid(tX * beta) - y);
        %Very small gradient show the converage of the model
        
        if gradient' * gradient < 1e-5
        
            meg  = sprintf('Logisitic Regression Converges at Iteration %d\n',i);
        
            disp(meg);
        
            break
        end
        
        beta = beta - alpha * gradient;
    end
    
    meg = sprintf('Logistic Regression Ends\n');
    
    disp(meg);
end

