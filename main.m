% Programa para la ejecución del proyecto de Análisis.

% Variable para mantener la ejecución del programa.
continuar = 0;

% Mensaje de Inicio del programa.
fprintf ('En el siguiente programa, se podrá llevar a cabo un Análisis de Gauss para dos muestras Poblacionales.\n')
fprintf ('Primero, se solicitará las variables de interés, y posteriormente, se llevará a cabo el cálculo de los estimadores puntuales y la generación de gráficos.\n')
fprintf ('Presione cualquier tecla para comenzar.\n\n')
pause

while continuar == 0
    clc
    clear all
    
    [rvar1, rvar2, stat1, stat2, error] = generate;
    
    while error == 1
        fprintf ('Los valores asignados no han sido correctos. Favor de revisar el warning proporcionado y presionar cualquier tecla para volver a comenzar.\n');
        pause
        clc
        clear all
        [rvar1, rvar2, stat1, stat2, error] = generate;
        
    end

    calculate (rvar1, rvar2, stat1, stat2)
    graphic (rvar1, rvar2, stat1, stat2)
    
    continuar = input ('¿Desear realizar nuevamente una prueba? Teclee "0" para confirmar, ó "1" para salir del programa.\n');

end

