%% Ejercicio 4, TP 3:
%%Dadas las siguientes matrices, calcule sus autovalores y arme la matriz
%%B de la misma manera matricial como lo visto en Ec. Diferenciales

%% a)
A = [-3 0 0; 0 3 -2; 0 1 1];
%%calculo los autovectores de A
[P, x] = eig(A);
%%inversa de los autovectores
inv_P = inv(P);

B = inv_P * A * P;
disp(B);

%% b)
A = [1 -1 0 0; 1 1 0 0; 0 0 3 -2; 0 0 1 1];
%%calculo los autovectores de A
[P, x] = eig(A);
%%inversa de los autovectores
B = inv(P) * A * P;
disp(B);

%% c)
A = [1 0 0; 1 2 0; 1 0 -1];
%%calculo los autovectores de A
[P, x] = eig(A);
%%inversa de los autovectores
B = inv(P) * A * P;
disp(B);

%% d)
A = [1 0 0; 0 2 0 ; 0 0 3];
%%calculo los autovectores de A
[P, x] = eig(A);
%%inversa de los autovectores
B = inv(P) * A * P;
disp(B);




