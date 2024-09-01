%% Ejercicio 8, TP 4:
%En la siguiente imagen se observa un sistema traslacional compuesto por 3
%masas y 4 resortes. El sistema comienza su movimiento por energías
%potenciales elásticas almacnadas en cada resorte. Se pide:

%% a) verificar que las ecuaciones de movimiento están dadas por: (ecuaciones)
syms x1(t) x2(t) x3(t) k1 k2 k3 k4 m1 m2 m3

%Defino las ecuaciones de movimiento dadas
ec1 = diff(x1, 2) == -(k1/m1)*x1 + (k2/m1)*(x2 - x1);
ec2 = diff(x2, 2) == -(k2/m2)*(x2 - x1) + (k3/m2)*(x3 - x2);
ec3 = diff(x3, 2) == -(k3/m3)*(x3 - x2) + (k4/m3)*x3;

%Simplifico las ecuaciones
ec1S = simplify(ec1);
ec2S = simplify(ec2);
ec3S = simplify(ec3); 

%Las muestro en pantalla (deben coincidir con las dadas)
disp('Ecuación 1 simplificada:');
disp(ec1S);
disp('Ecuación 2 simplificada:');
disp(ec2S);
disp('Ecuación 3 simplificada:');
disp(ec3S);

%% b) expresar el sistema de ecuaciones anterior en formato matricial, verificando que el mismo cumple un sistema tridiagonal de ecuaciones.
%Defino la matriz de masas y vector de desplazamiento
M = [k1+k2, -k2, 0; -k2, k2+k3, -k3; 0, -k3, k3+k4];
x = [x1; x2; x3];

%Sistema en formato matricial:
A = M * x;
disp('Sistema en formato matricial:');
disp(A);


%% c) siendo k1 = k4 = 10N/m, k2 = k3 = 30N/m, m1 = m2 = m3 = 1kg, y sabiendo que a cierto tiempo
%% específico las posiciones de las masas eran x1 = 5cm, x2 = 4cm y x3 = 3cm, resuelva este sistema
%% tridiagonal matricial para obtener la aceleración de cada una de las masas
%Asigno los valores dados:
k1 = 10; k2 = 30; k3 = 30; k4 = 10;
m1 = 1; m2 = 1; m3 = 1;

%calculo la matriz M pero ahora con valores numéricos
M_numerica = [(k1 + k2)/m1, -k2/m1, 0; -k2/m2, (k2 + k3)/m2, -k3/m2; 0, -k3/m3, (k3+k4)/m3];

%lo mismo con el vector de posiciones iniciales
x_numerico = [0.05; 0.04; 0.03];

%resuelvo el sistema para encontrar las aceleraciones:
Ac = M_numerica * x_numerico;
disp('Aceleraciones de las masas:');
disp(Ac);

