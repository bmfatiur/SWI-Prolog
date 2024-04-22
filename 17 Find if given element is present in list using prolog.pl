member(X, [X|_] ).
member(X, [_|T] ):- member(X,T).




% Output:
% ?- member(3,[1,2,3,4]).
% true ;
% false.

% ?- member(3,[1,2,7,4]).
% false.
















% Find if given element is present in list using prolog


% % Base case: If the element is the head of the list, it is present
% member(X, [X|_]).
% % Recursive case: Check if the element is present in the tail of the list
% member(X, [_|T]) :- member(X, T).
% You can use this predicate by querying like this:

% prolog
% Copy code
% ?- member(3, [1, 2, 3, 4, 5]).
% true.

% ?- member(9, [1, 2, 3, 4, 5]).
% false.
% This will return true if the element is present in the list and false otherwise.






% member(X, [X|_]).
% This line defines the base case of the member/2 predicate. It says that an element X is a member of a list if X is the head (first element) of that list. Here's a breakdown of each part:

% member(X, ...) is the head of the rule, indicating that X is a member of some list.
% [X|_] is the pattern that matches lists. [X|_] matches any list whose head is X and whose tail can be anything (represented by _, an anonymous variable indicating "anything" which we're not interested in).
% So, in simple terms, member(X, [X|_]) states that X is a member of a list if it is the head of that list.

% For example:

% member(1, [1, 2, 3]) would succeed because 1 is the head of the list [1, 2, 3].
% member(2, [1, 2, 3]) would fail because 2 is not the head of the list [1, 2, 3].
% The other part of the member/2 predicate handles the recursive case where X may be a member of the tail of the list.





% member(X, [_|T]) :- member(X, T).
% This line defines the recursive case of the member/2 predicate. It states that an element X is a member of a list if it is a member of the tail of that list. Here's a breakdown:

% member(X, [_|T]) is the head of the rule, indicating that X is a member of some list if it is a member of the tail of that list.
% [_|T] is a pattern that matches lists. [_|T] matches any list whose head can be anything (represented by _, an anonymous variable indicating "anything" which we're not interested in), and whose tail is T.
% So, in simple terms, member(X, [_|T]) :- member(X, T) states that X is a member of a list if it is a member of the tail T of that list.

% This line of code represents the recursive step in Prolog. It checks if X is a member of the tail T of the list. If it is, then X is also a member of the original list.

% For example:

% member(3, [1, 2, 3, 4, 5]) would succeed because 3 is a member of the tail [2, 3, 4, 5].
% member(9, [1, 2, 3, 4, 5]) would fail because 9 is not a member of the tail [2, 3, 4, 5].
% This recursive rule allows Prolog to iteratively search through the list until it finds the element or exhausts the list.







% In Prolog, when you call member(3, [1, 2, 3, 4, 5]), Prolog evaluates whether 3 is a member of the list [1, 2, 3, 4, 5]. Here's how the evaluation proceeds:

% Prolog first checks the base case of the member/2 predicate: member(X, [X|_]). Since the head of the list [1, 2, 3, 4, 5] is 1, it doesn't match 3, so Prolog moves on to the recursive case.
% In the recursive case, member(X, [_|T]) :- member(X, T), Prolog matches the list [1, 2, 3, 4, 5] with the pattern [_|T], where the head of the list is ignored (_) and the tail is T (which is [2, 3, 4, 5] in this case).
% Prolog then recursively calls member(3, [2, 3, 4, 5]), effectively checking if 3 is a member of the list [2, 3, 4, 5].
% Prolog repeats the process. Since the head of [2, 3, 4, 5] is not 3, it goes to the next step.
% Prolog now matches [2, 3, 4, 5] with the pattern [_|T], where the head is 2 and the tail is [3, 4, 5].
% Prolog recursively calls member(3, [3, 4, 5]).
% Now, 3 matches with the head of the list [3, 4, 5], satisfying the base case of member/2, and the query succeeds.
% So, in summary, the member(3, [1, 2, 3, 4, 5]) call succeeds because Prolog recursively searches through the list until it finds 3.