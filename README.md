# Proyecto de clase
Práctica para explicar el proceso de trabajo colaborativo a partir del enlace entre un proyecto iniciado en Matlab y el control de versiones en GitHub.
## Descripción del proyecto
El proyecto consiste en la generación de dos conjuntos de datos a partir de una distribución Gaussiana, en donde el usuario provee información sobre la media y desviación estándar de las distribuciones a considerar, así como la cantidad de muestras que serán generadas en la aplicación.
### Las variables definidas son:
| Variable | Descripción | Restricción |
| -------- | ----------- | ----------- |
| mu_1 | Media del conjunto del conjunto 1 | -inf < mu_1 < inf |
| s_1 | Desviación estándar del conjunto 1 | s_1 >= 0 |
| n_1 | Tamaño del vector del conjunto 1 | n >= 5 |
| mu_2 | Media del conjunto del conjunto 2 | -inf < mu_1 < inf |
| s_2 | Desviación estándar del conjunto 2 | s_1 >= 0 |
| n_2 | Tamaño del vector del conjunto 2 | n >= 5 |
## El flujo de datos
Para el desarrollo de proyecto se considera la integración de tres funciones:
* Generate
* Calculate
* Graphic

Las cuales están integradas dentro de un código principal.
## Ejecutar en Matlab Online
[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=DaniMtzAg/Analisis_Gauss)
