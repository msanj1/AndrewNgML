function [error_train, error_val] = ...
    learningCurve(X, y, Xval, yval, lambda)
%LEARNINGCURVE Generates the train and cross validation set errors needed 
%to plot a learning curve
%   [error_train, error_val] = ...
%       LEARNINGCURVE(X, y, Xval, yval, lambda) returns the train and
%       cross validation set errors for a learning curve. In particular, 
%       it returns two vectors of the same length - error_train and 
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).
%
%   In this function, you will compute the train and test errors for
%   dataset sizes from 1 up to m. In practice, when working with larger
%   datasets, you might want to do this in larger intervals.
%

% Number of training examples
m = size(X, 1);

% You need to return these values correctly
error_train = zeros(m, 1);
error_val   = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return training errors in 
%               error_train and the cross validation errors in error_val. 
%               i.e., error_train(i) and 
%               error_val(i) should give you the errors
%               obtained after training on i examples.
%
% Note: You should evaluate the training error on the first i training
%       examples (i.e., X(1:i, :) and y(1:i)).
%
%       For the cross-validation error, you should instead evaluate on
%       the _entire_ cross validation set (Xval and yval).
%
% Note: If you are using your cost function (linearRegCostFunction)
%       to compute the training and cross validation error, you should 
%       call the function with the lambda argument set to 0. 
%       Do note that you will still need to use lambda when running
%       the training to obtain the theta parameters.
%
% Hint: You can loop over the examples with the following:
%
%       for i = 1:m
%           % Compute train/cross validation errors using training examples 
%           % X(1:i, :) and y(1:i), storing the result in 
%           % error_train(i) and error_val(i)
%           ....
%           
%       end
%

% ---------------------- Sample Solution ----------------------


  
error_train_all = zeros(m, 50);
error_val_all  = zeros(m, 50);
for d = 1:50
  random_training_indices = randperm(length(X))';
  Xts = X(random_training_indices,:);
  yts = y(random_training_indices,:);

  random_cross_validation_indices = randperm(length(Xval))';
  Xvalt = Xval(random_cross_validation_indices,:);
  yvalt = yval(random_cross_validation_indices,:);
  
  for i = 1:m
    
    Xt = Xts(1:i,:);
    yt = yts(1:i);
    %Xcv = Xval(1:i,:);
    %ycv = yval(1:i,:);
    thetas = trainLinearReg(Xt,yt,lambda);
    %printf('Xt=%f.\n',Xt);
    %fprintf('yt=%f.\n',yt);
    %error_train(i) = linearRegCostFunction(Xt,yt,thetas,0);
    %error_val(i) = linearRegCostFunction(Xval,yval,thetas,0);
    %fprintf('error_train=%f.\n',error_train(i));
    
    error_train_all(i,d) = linearRegCostFunction(Xt,yt,thetas,0);
    error_val_all(i,d) = linearRegCostFunction(Xvalt,yvalt,thetas,0);
    %fprintf('error_train=%f.\n',error_train(i));
  end

end

error_train = mean(error_train_all,2);
error_val = mean(error_val_all,2);



% -------------------------------------------------------------

% =========================================================================

end
