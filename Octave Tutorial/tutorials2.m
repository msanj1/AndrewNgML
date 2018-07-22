%size(A)

%SZ = size(A);

%size(A,1); %%dimensions

V = [1 2 3 4];

V = [1 2;3 2;4 2]

length(V); %%longest dimensions

%pwd

%load %%filename

%who %%shows all variables in the namespace

%whos

%clear %%variable name removes a variable from the namespace

D = V(1:2) %%selects the data from the first column

%save hello.mat D %%saves a matrix

%%save hello.mat D -ascii


A = [1 2;3 4;5 6]

A(3,2)

A(2,:) %all elements at row 2

A([1 3],:) %all ements at index 1 and 3

 A(:,2) = [10;10;10]
 
 A = [A, [100;101;103]] %appended a 3 x 1 vector

 A(:)
 
 A = [1 2; 3 4;5 6]
 
 B = [11 12;13 14;15 16]
 
 C = [A B] %concatenate matrices
 
 C = [A;B] %concatenate but add to bottom
 