function [rvar1,rvar2,error] = generate()

% GENERATE Se utiliza para generar dos vectores de datos para 
% variables aleatorias con distribución Gaussiana.
% Los datos de entrada son media, varianza y tammaño de la muestra
% para cada variable. Las restricciones para los parámetros de
% configuración son:
% -inf < media < inf
% varianza > 0
% número de muestras >= 5, únicamente valores enteros.
%% Proceso de solicitud de datos por parte del usuario
m1 = input("Capture la media para la variable 1: ");
v1 = input("Capture la varianza para la variable 1: ");
n1 = input("Capture el tamaño de la muestra para la variable 1: ");
m2 = input("Capture la media para la variable 2: ");
v2 = input("Capture la varianza para la variable 2: ");
n2 = input("Capture el tamaño de la muestra para la variable 2: ");
% A continuación se verificará la validez de los valores de la varianza
if v1 <= 0 || v2 <= 0
    error = true;
    rvar1 = 0;
    rvar2 = 0;
    disp ("La varianza debe ser mayor que cero.")
elseif n1 < 5 || n2 < 5
    error = true;
    rvar1 = 0;
    rvar2 = 0;
    disp ("El tamaño de la muestra debe ser mayor que 5.")
else
    error = false;
    rvar1 = m1 + sqrt(v1)*randn(1,n1);
    rvar2 = m2 + sqrt(v2)*randn(1,n2);
end




