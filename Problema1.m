%%---------------------------------------------------------------------------
function [ dtdy ] = ODE1( t,y )
%Función para Definir una Ecuación Diferencial (ODE)
%   Resolver ODEs con las condiciones iniciales. Obtenga la solución 
%   sin ayuda de sofware  y después compare resultados con MATLAB

%Ecuación Diferencial
dtdy = t/y;

end

%%---------------------------------------------------------------------------
function [ t,y ] = CallODE1( )
    
tspan = [0 10];

y0 = 1;

[t, y ]= ode113(@ODE1,tspan,y0);

plot(t,y)

end
