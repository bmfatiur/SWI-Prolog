sum([],0).
sum([H|T],S):-sum(T,S1),S is S1+H.


% Output:
% ?- sum([1,2,3],Sum).
% Sum = 6.

% ?- sum([1,2,3,4],Sum).
% Sum = 10.