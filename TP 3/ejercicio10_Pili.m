%% Ejercicio 10, TP 3:
%%Encuentre las soluciones de la ecuación x*sen(x) = 1/2 en los entornos de
%%2, 4 y 6 mediante una función miembro conveniente en Matlab

syms x
f = x*sin(x) == 1/2;
%%raíces de f(x) cerca de 2:
x = fzero(@(x) x*sin(x)-1/2, 2);
disp(x);

%%raíces de f(x) cerca de 4:
x = fzero(@(x) x*sin(x)-1/2, 4);
disp(x);

%%raíces de f(x) cerca de 6:
x = fzero(@(x) x*sin(x)-1/2, 6);
disp(x);
