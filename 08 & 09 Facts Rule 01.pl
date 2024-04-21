likes(mary,wine).
likes(bob,beer).
likes(wini,apple).
likes(charlie,wine).

% :- refers if condition
likes(john,X):-likes(X,wine).


% Output:
% ?- likes(john,X).
% X = mary ;
% X = charlie ;
% false.

% ?- likes(john,bob).
% false.

% ?- likes(john,wini).
% false.

% ?- likes(john,mary).
% true.