% ---------------------- featurePolify -------------------------------
% Function: tXpoly = featurePolify(X,degree)
% Purpose : given X_train, generate tXPoly is the feature transformed
%           matrix, with dimention N-by-(degree)
% Input   : X      --- the given training data set X_train        
%           degree --- the order of polynomial degree
% Output  : tXPoly --- the N-by-(degree) matrix 
% -------------- C. LIU & M. ZHAO ------------------------------------

function tXPoly = featurePolify(X,degree)
% build matrix Phi for polynomial regression of a given degree

    for k = 1:degree

        tXPoly(:,k) = sum(X.^k,2);
    
    end
    
end

