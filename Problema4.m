%%---------------------------------------------------------------------------
function [ dxdy ] = ODE4( x,y )
%Función para Definir una Ecuación Diferencial (ODE)
%   Resolver ODEs con las condiciones iniciales. Obtenga la solución 
%   sin ayuda de sofware  y después compare resultados con MATLAB

%Ecuación Difrencial
dxdy = exp(x)/(2*y);

end


%%---------------------------------------------------------------------------
function [ x,y ] = CallODE4( )
    
tspan = [0 10];

y0 = 1;

[x, y ]= ode113(@ODE4,tspan,y0);

plot(x,y)

end
