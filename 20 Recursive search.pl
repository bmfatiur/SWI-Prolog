member(X, [X|_]).
member(X,[_|Y]):-member(X,Y).



% Output:
% ?- member(harry,[adam,kerry,harry,john]).
% true ;
% false.

% ?- member(harry,[adam,kerry,harry,john,harry]).
% true ;
% true ;
% false.

% ?- member(harry,[adam,kerry,harry,john,oliver]).
% true ;
% false.