# Prolog
           [7,_,_,_,4,3,_,_,_],
           [_,1,_,7,_,_,6,_,_],
           [_,4,_,_,1,_,_,_,2],
           [_,_,_,_,_,_,4,1,_],
           [_,_,7,1,_,9,5,_,_],
           [_,6,5,_,_,_,_,_,_],
           [2,_,_,_,6,_,_,8,_],
           [_,_,4,_,_,8,_,9,_],
           [_,_,_,9,2,_,_,_,6]
This application uses backtracking algorithm to solve sudoku. The sample problem given has the solution shown below. The sample problem can be run using the call:
         
  ?>herald.

7 1 2 | 5 4 3 | 6 8 9 
2 1 3 | 7 4 5 | 6 8 9 
3 4 5 | 6 1 7 | 8 9 2 
2 3 5 | 6 7 8 | 4 1 9 
2 3 7 | 1 4 9 | 5 6 8 
1 6 5 | 2 3 4 | 7 8 9 
2 1 3 | 4 6 5 | 7 8 9 
1 2 4 | 3 5 8 | 6 9 7 
1 3 4 | 9 2 5 | 7 8 6 

To solve other problems using this implementation run:
  ?>sudoku(R1,R2,R3,R4,R5,R6,R7,R8,R9)
Where Rn is the nth row of 9*9 sudoku you want to solve and Rn is a list of size 9.
