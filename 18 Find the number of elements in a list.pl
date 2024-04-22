size([],0).
size([_|T], N):-size(T,N1), N is N1+1.


% Output:
% ?- size([1,2,3,4],N).
% N = 4.

% ?- size([bob,cob,bed],N).
% N = 3.