%%---------------------------------------------------------------------------
function [ dtdy ] = ODE2( t,y )
%Función para Definir una Ecuación Diferencial (ODE)
%   Resolver ODEs con las condiciones iniciales. Obtenga la solución 
%   sin ayuda de sofware  y después compare resultados con MATLAB

%Definición de Constantes
a = 20;
b = 1;

%Ecuación Difrencial
dtdy = a*y - b*y.^2;

end

%%---------------------------------------------------------------------------
function [ t,y ] = CallODE2( )
    
tspan = [0 1];

y0 = 10;

[t, y ]= ode113(@ODE2,tspan,y0);

plot(t,y)

end
