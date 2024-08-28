%% Ejercicio 7, TP 3:
%%Realice la multiplicación de los siguientes polinomios P(x), Q(x)

%% a)
P = [2 0 -3 4];
Q = [0 1 -2 0];
res_1 = conv(P, Q);
disp(res_1);

%% b)
P = [1 -2 3 5 2];
Q = [0 1 -2 3 -5];
res_2 = conv(P,Q);
disp(res_2);

%% c)
P = [2j 0 -3j 4+2i];
Q = [0 4+2j -2j 0];
res_3 = conv(P, Q);
disp(res_3);