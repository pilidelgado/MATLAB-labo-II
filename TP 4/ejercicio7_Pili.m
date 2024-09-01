%% Ejercicio 7, TP 4:
% 6 resortes con diferentes constantes elásticas y longitudes iniciales sin
% deformación se conectan en serie como se indica en la figura. El punto
% final B se desplza hasta que la distancia entre los puntos A y B es de L
% = 1.5m. Se pide:

%% a) demostrar que las ecuaciones de equilibrio de cada mov de los resortes desde su
%% long inicial sin deformación estaán dadas por: matrizA * X = matrizB

%% NO SÉ SI ESTÁ BIEN EL INCISO A
syms k1 k2 k3 k4 k5 k6

A = [k1+k2, -k2, 0, 0, 0; -k2, k2+k3, -k3, 0, 0; 0, -k3, k3+k4, -k4, 0; 0, 0, -k4, k4+k5, -k5; 0, 0, 0, -k5, k5+k6];

syms l1 l2 l3 l4 l5 l6
B = [k1*l1 - k2*l2; k2*l2 - k3*l3; k3*l3 - k4*l4; k4*l4 - k5*l5; k5*l5 - k6*l6];

syms x1 x2 x3 x4 x5
x = [x1; x2; x3; x4; x5];

Ax = A * x;
disp('Producto A*x:');
disp(Ax);

chequeo = simplify(Ax == B);
disp('Ax es igual a B?:');
disp(chequeo);


%% b) Considerando las siguientes constantes elásticas y longitudes sin deformación de
%% cada uno de los resortes, calcule las deformaciones de cada uno de ellos (las x)

k1 = 8;
k2 = 15;
k3 = 9;
k4 = 10;
k5 = 18;
k6 = 18;

l1 = 0.18;
l2 = 0.22;
l3 = 0.26;
l4 = 0.19;
l5 = 0.15;
l6 = 0.30;

A2 = [k1+k2, -k2, 0, 0, 0; -k2, k2+k3, -k3, 0, 0; 0, -k3, k3+k4, -k4, 0; 0, 0, -k4, k4+k5, -k5; 0, 0, 0, -k5, k5+k6];
B2 = [k1*l1 - k2*l2; k2*l2 - k3*l3; k3*l3 - k4*l4; k4*l4 - k5*l5; k5*l5 - k6*l6];


%Metodos:
X = linsolve(A2, B2);
disp('Por linsolve:');
disp(X);

X = inv(A2)*B2;
disp('Por inv(A)*B:');
disp(X);

X = A2 \ B2;
disp('Por A\B:');
disp(X);
