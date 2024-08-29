%% Ejercicio 16, TP 3:
% Considere la funci�n y = sen(x) con 0 menorigual x menor igual 2pi, y 10
% abscisas de evaluaci�n de la funci�n senoidal. Realice una interpolaci�n
% con 100 puntos de evaluaci�n de abscisa, considerando los siguientes
% esquemas:

%Defino el intervalo y los puntos de evaluaci�n originales
xO = linspace(0, 2*pi, 10);
y = sin(xO);

%Defino los nuevos puntos de evaluaci�n para la interpolaci�n
xI = linspace(0, 2*pi, 100);

%interpolaci�n usando los m�todos pedidos
%% a) Lineal
yLineal = interp1(xO, y, xI, 'linear');

%% b) Nearest
yNearest = interp1(xO, y, xI, 'nearest');

%% c) Pchip
yPchip = interp1(xO, y, xI, 'Pchip');

%% d) Spline c�bica
ySpline = interp1(xO, y, xI, 'spline');


%Gr�ficos
figure;
plot(xO, y, 'ro', 'MarkerSize', 8, 'DisplayName', 'PuntosOriginales');
hold on;

plot(xI, yLineal, 'b--', 'LineWidth', 2, 'DisplayName', 'Interpolaci�n Lineal');
plot(xI, yNearest, 'g-', 'LineWidth', 2, 'DisplayName', 'Interpolaci�n Nearest');
plot(xI, yPchip, 'm-.', 'LineWidth', 2, 'DisplayName', 'Interpolaci�n PCHIP');
plot(xI, ySpline, 'c:', 'LineWidth', 2, 'DisplayName', 'Interpolaci�n Spline C�bica');

xlabel('x');
ylabel('y = sen(x)');
title('Interpolaci�n de la funci�n senoidal con distintos m�todos');
grid on;
legend show;
