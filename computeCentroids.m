function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
% size of X is m*n, so the size of idx is also m*1, moreover, the size of
% centroids is K. So from 1:K, we need to compute the summation of the data
% which belongs to cluster K, and the total number of elements whichi
% belongs to cluster K. And the new centroid is the summation over the
% number.
%
for k = 1:K
    summation = zeros(1,n);
    NumOfElements = 0;

    for i = 1:m
        if(idx(i) == k)
            summation = summation + X(i,:);
            NumOfElements = NumOfElements + 1;
        end
    end

    centroid_k = summation/NumOfElements;
    centroids(k,:) =centroid_k;
end






% =============================================================


end

