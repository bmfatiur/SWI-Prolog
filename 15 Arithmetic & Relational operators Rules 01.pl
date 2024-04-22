regins(ram,1900,1950).
regins(mike,1951,1970).
regins(dilsan,1971,1985).
regins(ravi,1986,2010).

ruler(X,Y):-regins(X,A,B),
            Y>=A,
            Y=<B.

% Output:
% ?- ruler(X,1970).
% X = mike ;
% false.

% ?- ruler(X,1900).
% X = ram ;
% false.

% ?- ruler(X,1899).
% false.