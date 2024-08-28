%% Ejercicio 14, TP 2:
%%Teniendo en cuenta que la posici�n vertical en tiro oblicuo est� dada por
%%y(t)..., el c�lculo de la velocidad vertical ser� v(t) = v0*sen(tita) -
%%g*t
%%Para un intervalo temporal de 0 a 20 segundos, calcule y grafique la
%%distancia vertical en funci�n del tiempo, y en el mismo gr�fico la
%%velocidad vertical en funci�n del tiempo, pero use ejes de ordenadas
%%separados para cada gr�fica.

%%determino los valores de los par�metros
tita = pi/3;
g = 9.81;
v0 = 100;
t = linspace(0,20, 1000);

%%determino las f�rmulas dadas
posY = v0 * sin(tita)*t - 1/2*g*(t.^2);
velY = v0*sin(tita) - g * t;

%%genero los gr�ficos
yyaxis left;
plot(t,posY, 'm-', 'LineWidth', 2);
xlabel('tiempo [s]');
ylabel('distancia vertical [m]');

yyaxis right;
plot(t, velY, 'b-', 'LineWidth', 2);
ylabel('velocidad [m/s]');
