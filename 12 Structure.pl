owns(john,wonder).
owns(may,alienist).
owns(john,book(wonder,palacio)).
owns(mary,book(alienist,carr)).
owns(john,book(wonder,author(raquel,palacio))).
owns(mary,book(alienist,author(caleb,carr))).


% Output:
% ?- owns(john,book(X,author(Y,palacio))).
% X = wonder,
% Y = raquel.

% ?- owns(john,book(_,author(_,palacio))).
% true.

% ?- owns(john,book(_,author(_,carr))).
% false.