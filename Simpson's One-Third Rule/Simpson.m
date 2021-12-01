function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable  x
%   y = the vector of function values with respect to x    f(x)
% Outputs:
%   I = the numerical integral calculated

 

%Check size of inputs
m = length(x); 
n = length(y);


% Errors/Warning
if nargin<2
    msg('TWO INPUTS REQUIRED')
    error('msg')
end
if m ~= n
    msg('Inputs are not equal in length')
    error('msg')
end
if m>=3 && m<6
    if x(2)-x(1) ~= x(3)-x(2)
        msg('NOT EQUALLY SPACED')
        error('msg')
    end 
elseif m>6
    if x(2)-x(1) ~= x(6)-x(5)
        msg ('NOT EQUALLY SPACED')
        error('msg')
    end
end


% 1st SECTION
% If 2 points, Trap Rule
% If 3 points, 1/3 Rule
% If 4 points, 3/8 rule

if n == 2
    I = (x(2)-x(1))*((y(1)+y(2))/2)
    warning('TRAP RULE USED')

elseif n == 3
    I = (x(3)-x(1))*((y(1)+4*y(2)+y(3))/6)
    
elseif n == 4
    I = (x(4)-x(1))*((y(1)+3*y(2)+3*y(3)+y(4))/8)

end


% 2nd SECTION
%Use the rules in combination with each other

% SET UP ODD AND EVEN TERMS
if n>4

h = ((b-a)/k);

e = sum(y(2:2:end-1));
o = sum(y(3:2:end-2));

%EVEN INTERVALS
if rem(m, 2) ~= 0 
       
    I = (h/(3))*(y(1)+4*e+2*o+y(end))
    
% ODD INTERVALS
    elseif rem(m, 2) == 0
        I = (h/(3))*(y(1)+4*e+2*o+y(end))+(h/2)*(y(n-1)+y(end))
            warning('TRAP RULE WILL BE USED')
end
end


end      