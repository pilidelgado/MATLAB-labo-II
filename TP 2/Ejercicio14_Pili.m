%% Ejercicio 14, TP 2:
%%Teniendo en cuenta que la posición vertical en tiro oblicuo está dada por
%%y(t)..., el cálculo de la velocidad vertical será v(t) = v0*sen(tita) -
%%g*t
%%Para un intervalo temporal de 0 a 20 segundos, calcule y grafique la
%%distancia vertical en función del tiempo, y en el mismo gráfico la
%%velocidad vertical en función del tiempo, pero use ejes de ordenadas
%%separados para cada gráfica.

%%determino los valores de los parámetros
tita = pi/3;
g = 9.81;
v0 = 100;
t = linspace(0,20, 1000);

%%determino las fórmulas dadas
posY = v0 * sin(tita)*t - 1/2*g*(t.^2);
velY = v0*sin(tita) - g * t;

%%genero los gráficos
yyaxis left;
plot(t,posY, 'm-', 'LineWidth', 2);
xlabel('tiempo [s]');
ylabel('distancia vertical [m]');

yyaxis right;
plot(t, velY, 'b-', 'LineWidth', 2);
ylabel('velocidad [m/s]');
