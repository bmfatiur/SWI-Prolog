list_length(L, Length):-list_acumulation(L,0,Length).
list_acumulation([],N,N).
list_acumulation([H|T],N,Length):-N1 is N+1, list_acumulation(T,N1,Length).


% Output:
% ?- list_length([],N).
% N = 0.

% ?- list_length([1],N).
% N = 1.

% ?- list_length([2,4,1,7,3,0,7],N).
% N = 7.

% ?- list_length([2,4,1,7,3,0,7,null,hi],N).
% N = 9.