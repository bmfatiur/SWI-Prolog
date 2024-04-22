is_integer(0).
is_integer(X):- is_integer(Y),X is Y+1.


% Output:
% is_integer(2).
% true .




% When you query is_integer(5)., Prolog tries to find whether 5 is an integer according to the defined rules.
% Prolog first looks for a rule that directly matches is_integer(5). It doesn't find any such rule.
% Then, Prolog looks for a rule that matches the head is_integer(X), where X can be any value, including 5.
% It finds the recursive rule is_integer(X) :- is_integer(Y), X is Y + 1. This rule states that X is an integer if there exists some integer Y such that X is one greater than Y.
% Prolog tries to satisfy is_integer(Y) by finding a value for Y such that Y is an integer.
% Prolog recursively searches for an integer Y such that Y + 1 equals 5.
% It finds that Y equals 4, as 4 + 1 equals 5.
% Now, Prolog checks if 4 is an integer. It finds is_integer(0). in the base case, which defines 0 as an integer.
% Prolog recursively checks if 4 is an integer by decrementing it. It eventually reaches 0, satisfying the base case.
% Since 0 is an integer, Prolog concludes that 4 is an integer.
% Having found that 4 is an integer, and since 5 is one greater than 4, Prolog concludes that 5 is also an integer.
% Prolog returns true, indicating that 5 is an integer according to the defined rule.
% In summary, Prolog determines that 5 is an integer by recursively checking if its predecessor is an integer, until it reaches the base case of 0. Since 5 is one greater than 4, and 4 is determined to be an integer, Prolog concludes that 5 is an integer as well.