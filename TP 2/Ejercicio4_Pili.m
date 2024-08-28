%% Tp 2, ejercicio 4:
%%Genere un vector de ángulos de 0 a 2pi con la resolución apropiada, de
%%manera tal de poder generar en forma polar las funciones indicadas. Todas
%%van dentro de la misma figura

tita = linspace(0, 2*pi, 100);
subplot(2,2,1);
y1 = sin(2*tita) .* cos(2*tita); %%el operador .* hace que la multiplicación se realice elemento por elemento
polarplot(tita, y1, 'm', 'lineWidth', 2);
title('r = sen(2?)cos(2?)')

subplot(2,2,2);
y2 = sin(tita);
polarplot(tita, y2, 'r', 'lineWidth', 2);
title('r = sen(?)')

subplot (2,2,3);
y3 = exp(tita/5);
polarplot(tita, y3, 'b', 'lineWidth', 2);
title('r = e^?/5')

subplot(2,2,4);
y4 = sinh(tita);
polarplot(tita, y4, 'g', 'lineWidth', 2);
title('r = senh(?)')

