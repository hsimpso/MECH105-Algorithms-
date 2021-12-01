function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxit)
 %Inputs:
   %func = name of function; 
   %xl, xu = lower and upper guesses;
   %es = desired relative error (default = 0.0001%);
   %maxit = maximum allowable iterations (default = 200)
 %Outputs:
   %root = real root;
   %fx = function value at root;
   %ea = approximate relative error (%);
   %iter = number of iterations

if nargin<3,error('Not enough input arguments'),end
test = func(xl)*func(xu);
if test>0,error('No sign change'),end %(-*-=+,+*+=+; Must be negative to show sign change;-*+=-)
if nargin<4||isempty(es), es=0.0001;end
if nargin<5||isempty(maxit), maxit=200;end
iter=0; xr=xl; ea=100;
while ea>es||iter<maxit
    xrold=xr;
    xr=(xu)-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    iter=iter+1;
    if xr~=0,ea=abs((xr-xrold)/xr)*100;end
    test = func(xl)*func(xr);
    if test<0
        xu=xr;
    elseif test>0
        xl=xr;
    else
        ea=0;
    end
end
root=xr;fx=func(xr);
end %Make sure to input the function with @(x)

