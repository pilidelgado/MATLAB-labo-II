%% Ejercicio 18, TP 2:
%%Genere 2 vectores X e Y desde -2 a 2 con espaciamiento de 0.2. Utilice la
%%funcion meshgrid para mapear X e Y en dos nuevas matrices bidimensionales
%%llamadas X e Y. Empleando estas matrices, genere la superficie dada.

x = (-2: 0.2: 2);
y = x;

[X,Y] = meshgrid(x,y);

Z = sin(sqrt(X.^2 + Y.^2));

%% a) Mediante mesh, genere un gr�fico 3D de Z
figure;
mesh(x,y,Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Gr�fico 3D con mesh de Z(x,y)');

%% b) Use la funci�n de graficaci�n surf para crear una superficie 3D de Z
figure(2);
surf(x,y,Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Gr�fico 3D con surf de Z(x,y)');

 %% c)Genere una gr�fica de contorno de Z
figure(3);
contour(x,y,Z);
colormap prism;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Gr�fico 3D con contorno de Z(x,y)');
 
%% d) Genere una combinaci�n de gr�ficas de superficie y contorno de Z
figure(4);
surfc(x,y,Z);
rotate3d;
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Gr�fico 3D con contorno y superficie de Z(x,y)');

%% e) Realice un gr�fico en pseudocolor de Z
figure(5)
contour(x,y,Z);
[a,b,c] = peaks;
pcolor(a,b,c);
shading interp
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Gr�fico 3D en pesudocolor interpolado de Z(x,y)');



 
 
 
 
