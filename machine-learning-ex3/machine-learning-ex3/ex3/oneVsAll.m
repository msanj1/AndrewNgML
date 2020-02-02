function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%ONEVSALL trains multiple logistic regression classifiers and returns all
%the classifiers in a matrix all_theta, where the i-th row of all_theta 
%corresponds to the classifier for label i
%   [all_theta] = ONEVSALL(X, y, num_labels, lambda) trains num_labels
%   logistic regression classifiers and returns each of these classifiers
%   in a matrix all_theta, where the i-th row of all_theta corresponds 
%   to the classifier for label i

% Some useful variables
m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the following code to train num_labels
%               logistic regression classifiers with regularization
%               parameter lambda. 
%
% Hint: theta(:) will return a column vector.
%
% Hint: You can use y == c to obtain a vector of 1's and 0's that tell you
%       whether the ground truth is true/false for this class.
%
% Note: For this assignment, we recommend using fmincg to optimize the cost
%       function. It is okay to use a for-loop (for c = 1:num_labels) to
%       loop over the different classes.
%
%       fmincg works similarly to fminunc, but is more efficient when we
%       are dealing with large number of parameters.
%
% Example Code for fmincg:
%
%     % Set Initial theta
%     initial_theta = zeros(n + 1, 1);
%     
%     % Set options for fminunc
%     options = optimset('GradObj', 'on', 'MaxIter', 50);
% 
%     % Run fmincg to obtain the optimal theta
%     % This function will return theta and the cost 
%     [theta] = ...
%         fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
%                 initial_theta, options);
%



for i = 1:num_labels
  current_theta = all_theta(i,:)'; %current theta
  current_index = i - 1;
 
  if(current_index == 0)
    current_y = y == 01;
  else
    current_y = y == i;
  endif 
  
  %fprintf('label is %f \n', i);
  %fprintf('current theta is %f \n', current_theta);
  %fprintf('size of X is %f \n', size(X));
  %fprintf('size of theta is %f \n', size(current_theta));
  %fprintf('size of y is %f \n', size(current_y));
  
  
  %lrCostFunction(current_theta,X,current_y);
  options = optimset('GradObj','on','MaxIter',50);
  [theta_result,j_result,exit_flag] = fmincg(@(t)(lrCostFunction(t,X,current_y,lambda)),
    current_theta,options);
	
   %fprintf('calculated theta is %f \n', size(theta_result));
   %fprintf('calculated cost is %f \n', j_result);
   %fprintf('exit_flag is %f \n', exit_flag);
   
   all_theta(i,:) = theta_result';
endfor








% =========================================================================


end
