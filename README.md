# calculator-v2
INFO 498B - Project 3

Requirements:

1. Build a calculator
 - create four functions for add, subtract, multiply, divide = each does the expected thing
 - create a function that expects one of them along with two Ints = In other words, a generic "math operation" function. It should then take the two Ints and pass them to the function and return the result

2. Array fun
 - create two new functions for add/mul = instead of taking two Ints, take an array of Ints and return the result of (adding/multiplying) all of the elements
 - create two new functions (count, avg) that take an array of Ints = again, operate on the array and return the result, refactor all four down to another "generic math operation" approach like in the previous part

3. Points
 - use tuples to represent x/y point pairs
 - create two functions for adding and subtracting points
   - (1,2) + (3,4) = (4,6) and (1,2) - (3,4) = (-2,-2)

 - now use Dictionaries to represent points ("x" is the x coordinate, "y" is the y coordinate)
 - create two functions for adding and subtracting points
   - (1,2) + (3,4) = (4,6) and (1,2) - (3,4) = (-2,-2)
 - handle dictionaries without "x" or "y" without crashing
 - handle dictionaries with Double values without crashing

Extra Credit
 - rewrite the calculator