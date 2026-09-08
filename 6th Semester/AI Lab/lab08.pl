% Activity 1 Facts
university(ssuet).        % Property
% likes(faheem, icecream).   % Relationship
can_fly(bird).             % Property
off(switch).               % Property
nephew(sara, saima).        % Relationship


% Activity 2 Facts
% father(saleem, aslam).
% mother(dania, aslam).
% brother(aslam, saeed).
% brother(saeed, aslam).
% sister(faiza, ali).
enemy(sana, sumra).

% Activity 3 Facts
fruit(apple).
fruit(orange).
fruit(plum).
fruit(mango).

has(jack, apple).
has(jack, plum).
has(dan, mango).

% Activity 5 - Good Grades
studies_well(faheem).
studies_well(sara).
studies_well(ali).

regular_in_class(faheem).
regular_in_class(ali).

good_grades(Person) :-
    studies_well(Person),
    regular_in_class(Person).

% Activity 6 - Likes and Hates
likes(kashif, music).
likes(kashif, cricket).
likes(saba, chips).
likes(saba, mobile).

hates(kashif, cold_drinks).
hates(saba, driving).
hates(saba, parties).

% Activity 7 - Cricket Team Capabilities
batsman(salman).
batsman(afridi).
batsman(malik).
batsman(shoaib).

bowler(salman).
bowler(afridi).
bowler(malik).
bowler(shoaib).
bowler(tanveer).

fielder(salman).
fielder(afridi).
fielder(shoaib).

% Rule: All-rounder is a player who is a batsman, bowler, and fielder
all_rounder(Player) :-
    batsman(Player),
    bowler(Player),
    fielder(Player).

% Activity 8 Facts
father(saeed, saleem).  % Saeed is the father of Saleem
father(saeed, ali).     % Saeed is the father of Ali
father(saleem, erum).   % Saleem is the father of Erum

mother(saima, saleem).  % Saima is the mother of Saleem
mother(saima, ali).     % Saima is the mother of Ali
mother(erum, kashif).   % Erum is the mother of Kashif
mother(erum, urooj).    % Erum is the mother of Urooj

% Rules

% Grandfather: X is grandfather of Y if X is father of Z and Z is parent of Y
grandfather(X, Y) :-
    father(X, Z),
    (father(Z, Y); mother(Z, Y)).

% Grandmother: X is grandmother of Y if X is mother of Z and Z is parent of Y
grandmother(X, Y) :-
    mother(X, Z),
    (father(Z, Y); mother(Z, Y)).

% Siblings: X and Y have same father and mother but are not the same person
brother(X, Y) :-
    father(F, X), father(F, Y),
    mother(M, X), mother(M, Y),
    X \= Y.

sister(X, Y) :-
    father(F, X), father(F, Y),
    mother(M, X), mother(M, Y),
    X \= Y.

% Direct parent relationships
father_of(X, Y) :- father(X, Y).
mother_of(X, Y) :- mother(X, Y).

% Activity 9
% Starters
starter(soup).
starter(salad).

% Main Course
main_course(rice).
main_course(pizza).
main_course(burger).

% Desert
desert(custard).
desert(ice_cream).

% Hungry: starter and main course
hungry(Item) :-
    starter(Item);
    main_course(Item).

% Very Hungry: starter, main course and desert
very_hungry(Item) :-
    starter(Item);
    main_course(Item);
    desert(Item).

% On Diet: only starter
on_diet(Item) :-
    starter(Item).


% Activity 10
double_number :-
    write('Enter a number: '),
    read(Number),
    Double is Number * 2,
    write('Double is: '),
    write(Double), nl.

% Activity 11
arithmetic_mean :-
    write('Enter first number: '),
    read(A),
    write('Enter second number: '),
    read(B),
    write('Enter third number: '),
    read(C),
    Mean is (A + B + C) / 3,
    write('Arithmetic Mean is: '),
    write(Mean), nl.

% Activity 12
% Addition
add :-
    write('Enter first number: '), read(A),
    write('Enter second number: '), read(B),
    Result is A + B,
    write('Addition: '), write(Result), nl.

% Subtraction
subtract :-
    write('Enter first number: '), read(A),
    write('Enter second number: '), read(B),
    Result is A - B,
    write('Subtraction: '), write(Result), nl.

% Multiplication
multiply :-
    write('Enter first number: '), read(A),
    write('Enter second number: '), read(B),
    Result is A * B,
    write('Multiplication: '), write(Result), nl.

% Division
divide :-
    write('Enter numerator: '), read(A),
    write('Enter denominator: '), read(B),
    (   B =\= 0
    ->  Result is A / B,
        write('Division: '), write(Result), nl
    ;   write('Error: Division by zero is not allowed.'), nl
    ).

% Average of three numbers
average :-
    write('Enter first number: '), read(A),
    write('Enter second number: '), read(B),
    write('Enter third number: '), read(C),
    Avg is (A + B + C) / 3,
    write('Average: '), write(Avg), nl.

% Activity 13
calculator :-
    write('Enter the first number: '), read(A),
    write('Enter the second number: '), read(B),

    Sum is A + B,
    Diff is A - B,
    Prod is A * B,

    (   B =\= 0
    ->  Div is A / B
    ;   Div = 'undefined (division by zero)'
    ),

    Avg is (A + B) / 2,

    nl, write('--- Calculation Results ---'), nl,
    write('Addition: '), write(Sum), nl,
    write('Subtraction: '), write(Diff), nl,
    write('Multiplication: '), write(Prod), nl,
    write('Division: '), write(Div), nl,
    write('Average: '), write(Avg), nl.
