%% Ejercicio 7, TP 2:

%%De acuerdo con la ley de Moore, el n�mero de transitores por pulgada
%%cuadrada en un circuito integrado semiconductor se duplica cada 18 meses
%%(1.5 a�os). En 1965, la tecnolog�a permit�a integrar 30 transitores por
%%pulgada cuadrada. La ley dice que la densidad es: 
%%d(t) = 30 * 2^(t/1,5), con t en a�os

%% a) siendo t = 0 el a�o 1965, y t = 60 el a�o 2025. Usar este modelo para calcular el n�mero
%%de transitores por pulgada cuadrada desde el a�o 0 al 60. Mostrar el
%%resultado en una tabla de tiempos y densidades de transitores, con un
%%intervalo de tiempo de 1.5 a�os

t = 0:1.5:60; %%a�os de 0 a 60, con intervalos de 1.5
d = 30 * 2.^(t/1.5);

tabla_resultados = table(t', d', 'VariableNames', {'AnioDesde1965', 'DensidadTransistores'});
disp(tabla_resultados);

%% b) Utilizando subplot, graficar los datos de manera lineal, semilog en abscisa, semilog en ordenada y log-log.
subplot(2,2,1);
plot(t, d, 'm-', 'LineWidth', 2);
grid
xlabel('tiempo en a�os');
ylabel('densidad por pulgada cuadrada');
title('Ley de Moore de forma lineal');

subplot(2,2,2);
semilogx(t, d, 'c-', 'LineWidth', 2);
grid;
xlabel('tiempo en a�os con escala logar�tmica');
ylabel('densidad por pulgada cuadrada');
title('Ley de Moore con X en escala logar�tmica');

subplot(2,2,3);
semilogy(t, d, 'g-', 'LineWidth', 2);
grid;
xlabel('tiempo en a�os');
ylabel('densidad por pulgada cuadrada con escala logar�tmica');
title('Ley de Moore con Y en escala logar�tmica');

subplot(2,2,4);
loglog(t, d, 'c-', 'LineWidth', 2);
grid;
xlabel('tiempo en a�os con escala logar�tmica');
ylabel('densidad por pulgada cuadrada con escala logar�tmica');
title('Ley de Moore con X e Y en escala logar�tmica');

