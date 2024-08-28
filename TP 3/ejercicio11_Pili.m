%% Ejercicio 11, TP 3:
%%Resuelva las siguientes ecuaciones:

%% a) ?(1 ? x) + ?(1 + x) = a
syms a x
f = sqrt(1-x) + sqrt(1+x) == a;
sol = solve(f, x);
disp(sol);

%% b) x^4 + 1 = 0;
coef = [1 0 0 0 1];
sol = roots(coef);
disp(sol);

%% c) sist. de ecuaciones: cosh(x)*e^x = y, y = senh(x)
f = @(vars) [cosh(vars(1)) * exp(vars(1)) - vars(2); vars(2) - sinh(vars(1))];
inicio = [0,0];
sol = fsolve(f, inicio);
disp(sol);