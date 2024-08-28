%% Ejercicio 16, TP 2:
%%Genere un vector x desde 0 a 6pi radianes con una resoluci�n de pi/100.
%%Defina los vectores y y z como: y = x*sen(x), z = x*cos(x)

%% a) Genere gr�ficos rectangulares de Y y Z como funci�n de x
%%gr�fico rectangular = graficos tipicos, de dos ejes
x = linspace(0, 6*pi, 100);
y = x .* sin(x);
z = x .* cos(x);

H1 = figure;
subplot(2,1,1);
plot(x, y, 'm-', 'LineWidth', 2);
title('gr�ficos rectangulares de Y y Z como funci�n de X');
xlabel('x');
ylabel('y(x)');
grid;

subplot(2,1,2);
plot(x, z, 'c', 'LineWidth', 2);
xlabel('x');
ylabel('z(x)');
grid;

%% b)Cree una gr�fica polar de Y y Z
H2 = figure(2);

subplot(2,1,1);
polarplot(x, y, 'm', 'LineWidth', 1.5);
title('gr�ficos polares de Y y Z como funci�n de X');

subplot(2,1,2);
polarplot(x, z, 'c', 'LineWidth', 1.5);
legend('y(x) = xsin(x)', 'z(x) = xcos(x)', 'Location', 'best');

%% c)genere una gr�fica tridimensional de X, Y y Z. Poner t�tulos y etiquetas
H3 = figure(3);

plot3(x, y, z);
title('Gr�fica tridimensional de Y y Z en funci�n de X');
grid;
xlabel('x');
ylabel('y(x)');
zlabel('z(x)');

