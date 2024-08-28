%% Ejercicio 8, TP 2:
%%Muchos fenómenos físicos se pueden describir mediante la ecuación de
%%Arrhenius. Por ejemplo, las constantes de tasa de reacción para
%%reacciones químicas se modelan como: k = k0*e^-(Q/RT), donde
%%k0 es una constante con unidades que dependen de la reacción, Q es la
%%energía de activación (J/mol), R es la constante del gas ideal (J/mol°K)
%%y T es la temperatura en grados Kelvin

%%Para cierta reacción, los valores son: Q = 1000 J/mol; k0 = 10s^-1, R =
%%8.314 J/mol°K. La temperatura varía entre 300 y 1000°K. Graficar:

T = 300:1000; %%temperatura de 300 a 1000 °K
Q = 1000;
R = 8.314;
k0 = 10; 

k = k0*exp(-(Q./(R*T)));
%% a) representación rectangular de k en función de T
subplot(2,1,1);
plot(T, k, 'm-', 'LineWidth', 2);
grid;
xlabel('temperatura [K]');
ylabel('constante k [s^-1]');
title('k en función de T');

%% b) representación en log de base 10 para k en el eje de las ordenadas, y 1/T para el eje de abscisas
subplot(2,1,2);
plot(1./T, log10(k), 'm-', 'LineWidth', 2);
grid;
xlabel('1/T [K^-1]');
ylabel('log10(k)');
title('log10 en función de 1/T');


