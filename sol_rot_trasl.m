%Solution for the rot and trasl problem giving paramfun the ref vector of
%the farolas and farolasprev and setting the x vector as: x(1)
%x-displacement, x(2) y-displacement, x(3) angle of rotation
ref=[1 1 1 1;2 2 2 0];
fun = @(x)paramfun(x,ref);
x0=[2,0,1];
sol=fsolve(fun,x0)







