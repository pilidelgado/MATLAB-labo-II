%% Ejercicio 13, TP 2:
%%En el ejercicio 3 se trabajó con tiro oblicuo. Para un intervalo temporal
%%de 0 a 20 segundos, grafique la distancia horizontal x(t) en función del
%%tiempo y en el mismo gráfico la distancia vertical y(t), pero use ejes de
%%ordenadas separados para cada gráfica. Se repiten los valores dados en el
%%ejercicio 3

%%determino valores dados
v0 = 100;
tita = pi/4;
g = 9.81;
t = linspace(0, 20, 100);

%%determino ecuaciones
posX = v0 * cos(tita) * t;
posY = v0 * sin(tita) * t - 1/2 * g * (t.^2);

yyaxis left; %%pone los valores de la distancia horizontal a la izquierda
plot(t, posX, 'b', 'LineWidth', 2);
xlabel('Tiempo [s]'); %%el tiempo es el mismo para ambos, va abajo
ylabel('Distancia horizontal [m]');

yyaxis right; %%pone los valores de la distancia vertical a la derecha
plot(t, posY, 'r', 'LineWidth', 2);
ylabel('Distancia vertical [m]');

title('Tiro oblicuo: distancia horizontal y vertical');