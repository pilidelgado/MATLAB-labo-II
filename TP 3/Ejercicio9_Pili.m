%% Ejercicio 9, TP 3:
%%Encontrar las raices del polinomio dado, mediante las instrucciones roots
%%y solve

P = [2 11 12 -9];

resp_1 = roots(P);
disp(resp_1);

syms x;
P_s = 2*x^3 + 11 * x^2 + 12*x - 9;
resp_2 = solve(P_s, x);
disp(resp_2);
