likes(mary,chocolate).
likes(mary,wine).
likes(mary,burger).
likes(john,wine).
likes(john,mary).
likes(john,burger).

% output:
% AND=,
% OR=;
% ?- likes(mary,john),likes(john,mary).
% false.

% ?- likes(mary,X),likes(john,X).
% X = wine ;
% X = burger.

% ?- likes(mary,X),likes(john,X).
% X = wine .
