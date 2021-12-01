# False Position
## This algorithm will use the False Position method to find the root of a function

* **Inputs:**
    1. func = name of function; 
    2. xl, xu = lower and upper guesses;
    3. es = desired relative error (default = 0.0001%);
    4. maxit = maximum allowable iterations (default = 200)
* **Outputs:**
    1. root = real root;
    2. fx = function value at root;
    3. ea = approximate relative error (%);
    4. iter = number of iterations
