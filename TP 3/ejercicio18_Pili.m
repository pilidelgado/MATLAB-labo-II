%% Ejercicio 18, TP 3:
% Se muestra un conjunto de temperaturas medidas en la cabeza de cilindros
% de pistón de un motor que se encuentra a prueba. Las temperaturas son las
% siguientes (tabla). Realizar una aprox. polinomial de grados 1, 2, 3 y 4.
% Graficar los resultados en una misma figura, teniendo en cuenta las etiquetas y
% leyendas. Calcular el error cuadrático medio cometido en cada
% aproximación ¿Cúal es la mejor?


t = [0 1 2 3 4 5];
temp = [0 20 60 68 77 110];
t_fit = linspace(0, 5, 100); %100 puntos para una curva suave

% Ajuste de polinomios de grados 1, 2, 3 y 4
p1 = polyfit(t, temp, 1);
p2 = polyfit(t, temp, 2);
p3 = polyfit(t, temp, 3);
p4 = polyfit(t, temp, 4);

% Evaluación de los polinomios ajustados en los puntos de t_fit
y1 = polyval(p1, t_fit);
y2 = polyval(p2, t_fit);
y3 = polyval(p3, t_fit);
y4 = polyval(p4, t_fit);

% Gráfico de los resultados
plot(t, temp, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
hold on;
plot(t_fit, y1, 'b-', 'LineWidth', 2, 'DisplayName', 'Polinomio de grado 1');
plot(t_fit, y2, 'g--', 'LineWidth', 2, 'DisplayName', 'Polinomio de grado 2');
plot(t_fit, y3, 'm-.', 'LineWidth', 2, 'DisplayName', 'Polinomio de grado 3');
plot(t_fit, y4, 'c:', 'LineWidth', 2, 'DisplayName', 'Polinomio de grado 4');

xlabel('tiempo (s)');
ylabel('temperatura (F)');
title('Aproximaciones polimoniales a los datos dados');
legend('Datos originales', 'Polinomio grado 1', 'Polinomio grado 2', 'Polinomio grado 3', 'Polinomio grado 4', 'Location', 'best');
grid on;

%% Cálculo del error cuadrático medio de c/aproximación
y1_O = polyval(p1, t);
y2_O = polyval(p2, t);
y3_O = polyval(p3, t);
y4_O = polyval(p4, t);

ECM1 = mean((temp - y1_O).^2);
ECM2 = mean((temp - y2_O).^2);
ECM3 = mean((temp - y3_O).^2);
ECM4 = mean((temp - y4_O).^2);

fprintf('Error cuadrático medio para cada grado: ');
fprintf('Grado 1: %.2f', ECM1);
fprintf('Grado 2: %.2f', ECM2);
fprintf('Grado 3: %.2f', ECM3);
fprintf('Grado 4: %.2f', ECM4);


%El polinomio con menor ECM será el que tenga mejor aproximación. En este
%caso, es el polinomio de grado 4 (también se puede ver en el gráfico)

