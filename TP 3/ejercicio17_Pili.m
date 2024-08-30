%% Ejercicio 17, TP 3:
%Un estudio demográfico realizado en EEUU en décadas desde 1900 a 1990
%arrojaba la siguiente población:
% t = [1900; 1910; 1920; 1930; 1940; 1950; 1960; 1970; 1980; 1990]
%p(t) = [75.99;91.97;105.71;123.21;131.67;150.69;179.32;203.21;226.51;249.63]

%% a) Realice una interpolaciónr por spline cúbicas entre los años 1900 y 2050, considerando una resolución anual
t = (1900:10:1990)';
p = [75.99;91.97;105.71;123.21;131.67;150.69;179.32;203.21;226.51;249.63];

ti = 1900:2050;
pi = interp1(t, p, ti, 'spline');

figure(1);
plot(t, p, 'r*', 'LineWidth', 3);
xlabel('tiempo (años)');
ylabel('población (millones)');
hold on
grid
plot(ti, pi, 'LineWidth', 1.2);
legend('original', 'Spline');
hold off

%% b) ¿Cuál será la población más probable para el año 2030 y 2035?
disp('Población estimada (en millones) en el año 2030:');
p2030 = interp1(t, p, 2030, 'spline');
disp(p2030);

disp('Población estimada (en millones) en el año 2035:');
p2035 = interp1(t, p, 2035, 'spline');
disp(p2035);
