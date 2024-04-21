theif(wini).
theif(john).
theif(william).

likes(wini,ball).
likes(william,shoe).
likes(john,snow).
likes(john,dollar).

may_steal(john,X):-theif(john),likes(john,X).

% Output:
% - may_steal(john,X).
% X = snow ;
% X = dollar.

% ?- may_steal(john,juwellery).
% false.

% ?- may_steal(john,ball).
% false.