%% Ejercicio 6, TP 3:
%%realice las siguientes operaciones vectoriales entre los vectores a, b y
%%c

%%vectores dados:
A = [1 2 3];
B = [4 5 6];
C = [-1 2 -2];

%%A . B - prod punto
resp_1 = dot(A, B);
disp(resp_1);

%%A x B - prod cruz
resp_2 = cross(A,B);
disp(resp_2);

%%(A x B) . C 
resp_3 = dot(cross(A, B), C); 
disp(resp_3);

%%A . A
resp_4 = dot(A, A);
disp(resp_4);

%%(A x B) x C
resp_5 = cross(cross(A,B), C);
disp(resp_5);



