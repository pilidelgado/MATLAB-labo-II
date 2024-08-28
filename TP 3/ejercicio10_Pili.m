%% Ejercicio 10, TP 3:
%%Encuentre las soluciones de la ecuaci�n x*sen(x) = 1/2 en los entornos de
%%2, 4 y 6 mediante una funci�n miembro conveniente en Matlab

syms x
f = x*sin(x) == 1/2;
%%ra�ces de f(x) cerca de 2:
x = fzero(@(x) x*sin(x)-1/2, 2);
disp(x);

%%ra�ces de f(x) cerca de 4:
x = fzero(@(x) x*sin(x)-1/2, 4);
disp(x);

%%ra�ces de f(x) cerca de 6:
x = fzero(@(x) x*sin(x)-1/2, 6);
disp(x);
