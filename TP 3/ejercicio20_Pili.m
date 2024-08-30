%% Ejercicio 19, TP 3:
%Se tienen los valores muestra de una superificie bidimensional (tabla)
%Realice una interpolaci�n bidimensional por spline, con una resoluci�n en
%R2 de 0.01. Graficar en una misma figura las muestras de la superficie y
%la superficie interpolada

%declaro los datos originales
x = [1, 2, 3, 4];
y = [2, 4, 6];
z = [7 15 22 30; 54 109 164 218; 403 807 1210 1614];

%datos nuevos para la interpolaci�n (0.01)
xq = 1:0.01:4; %eje x con resoluci�n pedida
yq = 2:0.01:6; %eje y con resoluci�n pedida
[XQ, YQ] = meshgrid(xq, yq);
zq = interp2(x, y, z, XQ, YQ, 'cubic');

%grafico los datos originales y la superficie interpolada
figure;
surf(x, y, z, 'FaceAlpha', 1); %datos originales con transparencia
hold on;
surf(xq, yq, zq); %superficie interpolada
xlabel('x');
ylabel('y');
zlabel('z');
title('Interpolaci�n bidimensional por spline c�bica');
legend('Datos originales', 'Superficie interpolada'); 

