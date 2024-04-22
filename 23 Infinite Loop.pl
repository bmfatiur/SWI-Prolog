person(adam).
person(X):-person(Y),mother(X,Y).




% Output:
% ?- person(adam).
% true .
% Otherwise, it will be infinite loop