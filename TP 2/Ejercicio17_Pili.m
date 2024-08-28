%% Ejercicio 17, TP 2:
%%Genere 2 vectores X e Y desde -5 hasta 5 con espaciamiento conveniente.
%%Utilice la funci�n meshgrid para mapear X e Y en dos nuevas matrices
%%bidimensionales llamadas X e Y. Empleando estas nuevas matrices, genere
%%la superficie: Z = sen(raizcuadrada(x^2 + y^2))

x = linspace(-5, 5, 1000);
y = linspace(-5, 5, 1000);

[X, Y] = meshgrid(x, y);


%% a) mediante mesh, genere un gr�fico 3D de Z
Z = sin(sqrt(X.^2 + Y.^2)); 
H1 = figure;
mesh(X, Y, Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Superficie Z mediante mesh');

%% b)Use la funci�on de graficaci�n surf para crear una superficie 3D de Z
H2 = figure(2);
surf(X, Y, Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Superficie Z mediante surf')

%% c) modifique su gr�fica de superficie con un sombreado interpolado.
H3 = figure(3);
surf(X, Y, Z);
shading interp; %%sombreado interpolado
colormap(bone);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Superficie Z con sombreado interpolado');

%% d)Genere una gr�fica de contorno de Z
H4 = figure(4);
contour(X,Y,Z, 20);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Superficie Z con contorno')

%% e)Genere una combinaci�n de gr�ficas de superficie y contorno de Z
H5 = figure(5);
surf(X,Y,Z);
hold on;
contour3(X,Y,Z,20,'k'); %%grafico de contorno encima de la superficie
shading interp;
colormap(bone);
colorbar;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Superficie Z con surf y con contorno');
hold off;



