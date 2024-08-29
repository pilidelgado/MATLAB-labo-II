%% Ejercicio 14, TP 3: 
%Para los siguientes pares de valores, se pide explorar las diferentes
%técnicas de interpolación de la función interp1, usando una resolución de
%abscisas de 0.01. Grafique todas dentro de una misma figura y con leyendas
%respectivas:

%los valores son: (-3, -1), (-2, -1), (-1,-1), (0,0), (1,1), (2,1), (3,1)
x = -3:3;
y = [-1 -1 -1 0 1 1 1];
N = 1000;
axi = (3 - (-3))/N;
xi = -3:axi:3;

%% a) linear
ya = interp1(x, y, xi, 'linear');
%% b) Nearest
yb = interp1(x, y, xi, 'nearest');
%% c) Next
yc = interp1(x, y, xi, 'next');
%% d) previous
yd = interp1(x, y, xi, 'previous');


H1 = figure(1);
plot(x,y,'b*', 'LineWidth', 3);
xlabel('x');
ylabel('y(x)');
hold on
grid
plot(xi, ya, 'r', xi, yb, 'k', xi, yc, 'm', xi, yd, 'g');
legend('original', 'lineal', 'nearest', 'next', 'previous');
hold off


%% e) Pchip
ye = interp1(x, y, xi, 'pchip');
%% f) Cubic
yf = interp1(x, y, xi, 'cubic');
%% g) Makima
yg = interp1(x, y, xi, 'makima');
%% h) Spline
yh = interp1(x, y, xi, 'spline');


H2 = figure(2);
plot(x,y,'b*', 'LineWidth', 3);
xlabel('x');
ylabel('y(x)');
hold on
grid
plot(xi, ye, 'r', xi, yf, 'k', xi, yg, 'm', xi, yh, 'g');
hold off
legend('original', 'pchip', 'cubic', 'makima', 'spline');


