 %% Ejercicio 1, TP 3:
%%Genere una matriz de números aleatorios de 5x5 distribuidos uniformemente entre [0,10]
%%Calcular su determinante, rango, inversa, transpuesta, traza, autovalores, autovectores y valores singulares


A = rand(5,5); %%Creo la matriz
A = A * 10; %%ajusto el rango para que vaya de 0 a 10

det_A = det(A); %%determinante de A
rango_A = rank(A); %%rango de A
inv_A =inv(A); %%inversa de A
B = A'; %%transpuesta de A
traza_A = trace(A); %%traza de A
[autovect, autoval] = eig(A); %%autovectores y autovalores de A
valsing_A = svd(A); %%valores singulares

%%imprimo todos los valores
disp(A);
disp(det_A);
disp(rango_A);
disp(inv_A);
disp(B);
disp(traza_A);
disp(autovect); 
disp(autoval);
disp(valsing_A);