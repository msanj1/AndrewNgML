a = [
1,2;
4,5
];

b = [
1,2;
0,2
];

%identity matrix 2x2
i = eye(2);


mult_ai = a * i;

mult_ia = i * a;

mult_ab = a * b;

mult_ba = b * a;

%inverse of a matrix
inv_a = pinv(a);

% transpose 
transp_a = a';

mult_ainva = a * pinv(a);