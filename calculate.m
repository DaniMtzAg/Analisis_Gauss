function [media1, media2, varianza1, varianza2,cova_1, cova2, error_cuadratico, desv, std1, std2] = calculate() %CALCULATE Calcula los estimadores puntuales de las 
[rvar1, rvar2] = generate();

%Calculo de la media y varianza para la variable 1: 
media1 = mean(rvar1) 
varianza1 = var(rvar1)

%Calculo de la media y varianza para la variable 2: 
media2 = mean(rvar2) 
varianza2 = var(rvar2)

% Calculo covarianza
cova_1 = cov(rvar1) 
cova2 = cov(rvar2)

std1= std( rvar1); 
std2= std( rvar2);

%Calculo del error cuadratico : 
error_cuadratico = sqrt(mean((rvar1 - media1) .^ 2) * mean((rvar2 - media2) .^ 2));
end
