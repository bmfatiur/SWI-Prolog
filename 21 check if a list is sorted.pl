is_sorted([]).
is_sorted([_]).
is_sorted([X,Y|T]):-X=<Y, is_sorted([Y|T]).




% Output:
% ?- is_sorted([1,2,3,4,5,6,8,9]).
% true ;
% false.

% ?- is_sorted([9,6,4,2]).
% false.

% ?- is_sorted([]).
% true.

% ?- is_sorted([6]).
% true ;
% false.