population(china,100).
population(india,85).
population(usa,30).
population(germany,9).

area(china,10).
area(india,4).
area(usa,12).
area(germany,2).


density(X,Y):-population(X,Population),
                area(X,Area),
                Y is Population/Area.


% Output:
% ?- density(china,X).
% X = 10.

% ?- density(usa,X).
% X = 2.5.

% ?- density(germany,X).
% X = 4.5.

% ?- density(X,Y).
% X = china,
% Y = 10 ;
% X = india,
% Y = 21.25 ;
% X = usa,
% Y = 2.5 ;
% X = germany,
% Y = 4.5.