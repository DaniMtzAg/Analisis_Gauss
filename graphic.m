function [] = graphic(rvar1,rvar2)
%
%GRAPHIC es una función para graficar el histograma, pdf y cdf de 2
%arreglos numéricos proporcionados:
%
%       graphic(X1,X2)

close all
%rvar1 = 1000+sqrt(100)*randn(1,1000); %descomentar linea para probar funcion graphic
%rvar2 = 100+sqrt(10)*randn(1,1000); %descomentarlinea para probar funcion graphic

    %%Graficos de rvar1

%variables auxiliares para la creacion del histograma
n = length(rvar1);
k = round(1 +3.32*log(n));
minimo = min(rvar1); 
maximo = max(rvar1);
rango = maximo-minimo;
A = rango/k;
%grafica histograma
subplot(2,3,1)
h = histogram(rvar1, k,'FaceColor','m');
title('Histograma')
ylabel('Frecuencia')
%calcular cdf
pdf = h.Values;
x = minimo+A/2:A:maximo-A/2;
cdf(1) = pdf(1);
for i = 2:k
    cdf(i) = cdf(i-1)+pdf(i) ;
end
%grafico pdf
subplot(2,3,2)
plot(x, pdf,'.-m')
title('Función de densidad de probabilidad')
ylabel('Densidad')
%grafico cdf
subplot(2,3,3)
plot(x, cdf, '.-m')
title('Función de distribución acumulada')
ylabel('Frecuencia acumulada')

    %%Graficos de rvar2

%variables auxiliares para la creacion del histograma
pdf,cdf = []; %reiniciar variables para ser reutilizadas
n = length(rvar2);
k = round(1 +3.32*log(n));
minimo = min(rvar2);
maximo = max(rvar2);
rango = maximo-minimo;
A = rango/k;
%grafica histograma
subplot(2,3,4)
h = histogram(rvar2, k);
title('Histograma')
ylabel('Frecuencia')
%calcular cdf
pdf = h.Values;
x = minimo+A/2:A:maximo-A/2;
cdf(1) = pdf(1);
for i = 2:k
    cdf(i) = cdf(i-1)+pdf(i);
end
%grafico pdf
subplot(2,3,5)
plot(x, pdf,'.-')
title('Función de densidad de probabilidad')
ylabel('Densidad')
%grafico cdf
subplot(2,3,6)
plot(x, cdf,'.-')
set(gcf,'position',[60,50,1420,700])
title('Función de distribución acumulada')
ylabel('Frecuencia acumulada')

%Titulo de la figura subplot
sgtitle('GRÁFICOS DE LOS 2 CONJUNTOS DE DATOS GENERADOS');

end

