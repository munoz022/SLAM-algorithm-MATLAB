function [incremento]=sol(ref)
fun = @(x)paramfun(x,ref);
x0=[0,0,0];
% Crea un objeto de opciones de optimización
options = optimoptions('lsqnonlin','Display','none');
incremento=lsqnonlin(fun,x0,[-1.5,-0.5,-0.5],[1.5,0.5,0.5],options);
end