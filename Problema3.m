%%---------------------------------------------------------------------------
function [ dtdy ] = ODE3( t,y )
%Función para Definir una Ecuación Diferencial (ODE)
%   Resolver ODEs con las condiciones iniciales. Obtenga la solución 
%   sin ayuda de sofware  y después compare resultados con MATLAB

%Ecuación Difrencial
dtdy = exp(2*y)*sin(t);

end

%%---------------------------------------------------------------------------
function [ t,y ] = CallODE3( )
    
tspan = [0 1.5];

y0 = 0;

[t, y ]= ode113(@ODE3,tspan,y0);

plot(t,y)

end
