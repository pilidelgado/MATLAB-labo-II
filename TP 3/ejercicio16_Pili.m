%% Ejercicio 16, TP 3:
% Considere la función y = sen(x) con 0 menorigual x menor igual 2pi, y 10
% abscisas de evaluación de la función senoidal. Realice una interpolación
% con 100 puntos de evaluación de abscisa, considerando los siguientes
% esquemas:

%Defino el intervalo y los puntos de evaluación originales
xO = linspace(0, 2*pi, 10);
y = sin(xO);

%Defino los nuevos puntos de evaluación para la interpolación
xI = linspace(0, 2*pi, 100);

%interpolación usando los métodos pedidos
%% a) Lineal
yLineal = interp1(xO, y, xI, 'linear');

%% b) Nearest
yNearest = interp1(xO, y, xI, 'nearest');

%% c) Pchip
yPchip = interp1(xO, y, xI, 'Pchip');

%% d) Spline cúbica
ySpline = interp1(xO, y, xI, 'spline');


%Gráficos
figure;
plot(xO, y, 'ro', 'MarkerSize', 8, 'DisplayName', 'PuntosOriginales');
hold on;

plot(xI, yLineal, 'b--', 'LineWidth', 2, 'DisplayName', 'Interpolación Lineal');
plot(xI, yNearest, 'g-', 'LineWidth', 2, 'DisplayName', 'Interpolación Nearest');
plot(xI, yPchip, 'm-.', 'LineWidth', 2, 'DisplayName', 'Interpolación PCHIP');
plot(xI, ySpline, 'c:', 'LineWidth', 2, 'DisplayName', 'Interpolación Spline Cúbica');

xlabel('x');
ylabel('y = sen(x)');
title('Interpolación de la función senoidal con distintos métodos');
grid on;
legend show;
