# MECH105-Algorithms
These are the numerical method algorithms I created for MECH105, CSU Fall 2021.

The Algorithms:

1. **False Position**- This algorithm will use the False Position method to find the root of the function.
  * **Inputs:**
   func = name of function; 
    xl, xu = lower and upper guesses;
    es = desired relative error (default = 0.0001%);
    maxit = maximum allowable iterations (default = 200)
  * **Outputs:**
   root = real root;
    fx = function value at root;
    ea = approximate relative error (%);
    iter = number of iterations

2. **LU Factorization with Partial Pivoting**- This algorithm will use LU Decomposition with Partial Pivoting to solve a system of equations.  
 * **Inputs:**
	 A = coefficient matrix
 * **Outputs:**
	L = lower triangular matrix;
	 U = upper triangular matrix;
   P = the permutation matrix

3. **Simpson's 1/3 Rule**- This algorithm will calculate the numerical value of an integral using the Simpson's 1/3 Rule
 * **Inputs:**
   x = the vector of equally spaced independent variable;
    y = the vector of function values with respect to x;    
 * **Outputs:**
  I = the numerical integral calculated

