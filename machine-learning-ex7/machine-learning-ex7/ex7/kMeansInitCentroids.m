function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should return this values correctly
centroids = zeros(K, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should set centroids to randomly chosen examples from
%               the dataset X
%

X_unq = unique(X,'rows');

randidx = randperm(size(X_unq,1)); %create a random permuation of number numbers 1 - size(X,1)

centroids = X_unq(randidx(1:K),:); %pick the first K centroids





% =============================================================

end

