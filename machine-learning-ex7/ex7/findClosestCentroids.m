function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1:size(X,1)
  x = X(i, :);
  min_dist = -1;
  curr_best = -1;
  for j = 1:size(centroids, 1)
    c = centroids(j, :);
    curr_dist = 0;
    for k = 1:length(c);
      curr_dist += (x(k)-c(k))^2;
    endfor
    if curr_best == -1 || curr_dist < min_dist
      curr_best = j;
      min_dist = curr_dist;
    endif
  endfor
  idx(i) = curr_best;
endfor





% =============================================================

end

