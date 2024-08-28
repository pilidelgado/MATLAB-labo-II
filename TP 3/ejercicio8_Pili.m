%% Ejercicio 8, TP 3:
%%Realice el cociente de los siguientes polinomios, P(x) y Q(x)

%% a)
P = [2 0 -3 4];
Q = [1 -2 0];
[C, R] = deconv(P, Q);
disp(C);

%% b)
P = [1 -2 3 5 2];
Q = [1 -2 3 -5];
[C, R] = deconv(P, Q);
disp(C);

%% c)
P = [2j 0 -3j 4+2i];
Q = [4+2j -2j 0];
[C, R] = deconv(P, Q);
disp(C);
