%% Check for membership if X is a member, cut and fail
not_member(X,Y):-
	member(X,Y),!,fail.

%%  Check all different
all_differentCheck([]).
all_differentCheck([X|T]):-
	not_member(X,T),
	all_differentCheck(T).
%% Fill 3x3 box
check3x3([],[],[]).
check3x3([T1, T2, T3|H1],[T4,T5,T6|H2],[T7,T8,T9|H3]):-
	all_differentCheck([T1,T2,T3,T4,T5,T6,T7,T8,T9]),
	check3x3(H1,H2,H3).
%% Fill columns
checkColumn([],[],[],[],[],[],[],[],[]).
checkColumn([X1|H1],[X2|H2],[X3|H3],[X4|H4],[X5|H5],[X6|H6],[X7|H7],[X8|H8],[X9|H9]):-
	all_differentCheck([X1,X2,X3,X4,X5,X6,X7,X8,X9]),
	checkColumn(H1,H2,H3,H4,H5,H6,H7,H8,H9).
%% Try adding these numbers to each row
domain(L) :-
	member(1, L),
    member(2, L),
    member(3, L),
    member(4, L),
    member(5, L),
    member(6, L),
    member(7, L),
    member(8, L),
    member(9, L),
	!.
checkRow(H):-
	len(H,0,9),
	domain(H),
	format('~d ~d ~d | ~d ~d ~d | ~d ~d ~d \n',H).
%%	Calculates the length of a list
len([],X,X).
len([_|T],X,Y):-
	X1 is X+1,
	len(T,X1,Y),
	!.
print_sudoku([],[],[],[],[],[],[],[],[]).
print_sudoku([X1|H1],[X2|H2],[X3|H3],[X4|H4],[X5|H5],[X6|H6],[X7|H7],[X8|H8],[X9|H9]):-
	format('~d ~d ~d | ~d ~d ~d | ~d ~d ~d \n',[X1,X2,X3,X4,X5,X6,X7,X8,X9]),
	print_sudoku(H1,H2,H3,H4,H5,H6,H7,H8,H9).

sudoku([]).
sudoku(A,B,C,D,E,F,G,H,I):-
	checkRow(A),
	checkRow(B),
	checkRow(C),
	checkRow(D),
	checkRow(E),
	checkRow(F),
	checkRow(G),
	checkRow(H),
	checkRow(I),
	checkColumn(A,B,C,D,E,F,G,H,I),
	check3x3(A,B,C),
	check3x3(D,E,F),
	check3x3(G,H,I),
	print_sudoku(A,B,C,D,E,F,G,H,I).
herald:-
    sudoku([7,_,_,_,4,3,_,_,_],
           [_,1,_,7,_,_,6,_,_],
           [_,4,_,_,1,_,_,_,2],
           [_,_,_,_,_,_,4,1,_],
           [_,_,7,1,_,9,5,_,_],
           [_,6,5,_,_,_,_,_,_],
           [2,_,_,_,6,_,_,8,_],
           [_,_,4,_,_,8,_,9,_],
           [_,_,_,9,2,_,_,_,6]).

