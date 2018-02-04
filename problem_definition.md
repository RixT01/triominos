- fit triominos inside a n x n board
- triominos are L shaped shapes consisting of three 1 x 1 squares
- n = 2^x where x >= 2
- The board is always initialized with a filled square: Can't place a triomino in it


Algorithmic constraints:
- Solve by divide and conquer

Design:
    let's go about comparing this algorithm to the previously done merge sort alrightie?

    merge sort had 2 methods, the main handler which used recursion
    and the merger, which mas purely logic and did "the work"

    in this scenario we can do about the same



    # EDITOR'S NOTE: HERE LIE DAT BOI METHOD

    merge_sort divided in halfs - left and right
    fit_triominos will divide in fourths - 3 clean and 1 tainted

        # EDITOR'S NOTE: DETERMINING WHICH IS TAINTED WILL BE A BITCH, TAKE HEED

    the 3 clean shall be tainted with one triomino, a square per fourth
    so now we have 4 TAINTED fourths
    - now let's play
    we recurse all 4 of the TAINTED fourths
    and from then on it's all uphill baby
    -after the recursion converges, return the list of Triominos

    # EDITOR'S NOTE: HERE LIE DAT BOI'S BASE CASE AHH YISS

    Well, that was hugely an improvement, now let's define our base case:
        - when the side length of our board is 2
        - place a triomino in the last 3 CLEAN squares.

    
    #TODO implement a method that receives the length of the board, a list of triominos and "draws" it
    probably give a name to each triomino based on it's list index Ex. 0 -> x