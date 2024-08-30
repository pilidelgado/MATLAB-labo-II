%% Ejercicio 17, TP 3:
%Un estudio demogr�fico realizado en EEUU en d�cadas desde 1900 a 1990
%arrojaba la siguiente poblaci�n:
% t = [1900; 1910; 1920; 1930; 1940; 1950; 1960; 1970; 1980; 1990]
%p(t) = [75.99;91.97;105.71;123.21;131.67;150.69;179.32;203.21;226.51;249.63]

%% a) Realice una interpolaci�nr por spline c�bicas entre los a�os 1900 y 2050, considerando una resoluci�n anual
t = (1900:10:1990)';
p = [75.99;91.97;105.71;123.21;131.67;150.69;179.32;203.21;226.51;249.63];

ti = 1900:2050;
pi = interp1(t, p, ti, 'spline');

figure(1);
plot(t, p, 'r*', 'LineWidth', 3);
xlabel('tiempo (a�os)');
ylabel('poblaci�n (millones)');
hold on
grid
plot(ti, pi, 'LineWidth', 1.2);
legend('original', 'Spline');
hold off

%% b) �Cu�l ser� la poblaci�n m�s probable para el a�o 2030 y 2035?
disp('Poblaci�n estimada (en millones) en el a�o 2030:');
p2030 = interp1(t, p, 2030, 'spline');
disp(p2030);

disp('Poblaci�n estimada (en millones) en el a�o 2035:');
p2035 = interp1(t, p, 2035, 'spline');
disp(p2035);
