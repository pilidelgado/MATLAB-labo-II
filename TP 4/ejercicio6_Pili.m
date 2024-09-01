%% Ejercicio 6, TP 4:
%% NO LO ENTIENDO, CHEQUEAR DESPUÉS

% La ecuación de una circunferencia centrada en (x0, y0) y con radio r en
% coordenadas cartesianas está dada por: (x - x0)^2 + (y - y0)^2 = r^2
% Encuentre la ecuación de la recta que pasa por (-1, 3.2), (-8, 4) y
% (-6.5, -9.3). Grafique el resultado con el resaltado de los 3 puntos
% dados.

%Datos de los puntos dados
x = [-1 -8 -6.5];
y = [3.2 4 -9.3];

syms x0 y0 r;

ec = (x' - x0).^2 + (y' - y0).^2 == r^2;

res = solve(ec);

disp('x0'); disp(double(res.x));
disp('y0'); disp(double(res.y));
disp('r'); disp(double(res.r));

grafX = -20:20;
grafY = -20:20;

x0 = double(res.x(1));
y0 = double(res.y(1));
r = double(res.r(2));





