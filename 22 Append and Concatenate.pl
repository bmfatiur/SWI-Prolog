append([],L,L).
append([H|T],L,[H|L1]):-append(T,L,L1).


% Output:
% ?- append([1,a,b],[2,c,d],X).
% X = [1, a, b, 2, c, d].