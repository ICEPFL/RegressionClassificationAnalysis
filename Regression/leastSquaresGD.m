% -------------- leastSquaresGD (GRADIENT DESCENT) -----------------
% Function: beta = leastSquaresGD(y,tX)
% Purpose : calculate the regression parameter beta using GD
% Input   : y      --- the target vector of the given data set
%           tX     --- the N-by-(D+1) matrix constructed from data
%           alpha  --- the GD step size
% Output  : beta   --- parameter beta optimizing the cost
% -------------- C. LIU & M. ZHAO ----------------------------------

function beta = leastSquaresGD(y,tX,alpha)
    
    featureNum  = size(tX,2);   
    instanceNum = size(tX,1);
    
    beta    = rand(featureNum,1);   
    maxIter = 10000;

    for i = 1:maxIter     
        
        gradient = -tX' * (y - tX * beta) ./ instanceNum;
        %For very small gradients, the model converages and break the loop
        
        if gradient' * gradient < 1e-5 % maybe we can switch to convergence of error?
        
            meg  = sprintf('run %d times to converage',i);
        
%             disp(meg);
        
            break;
        
        end
        
        beta = beta - alpha * gradient;        
        loss = computeCostLeastSquare(y,tX,beta);
        
%         disp('loss');
%         disp(loss);
    end
    
%     disp('Gradient Decent Ends!\n');
end

