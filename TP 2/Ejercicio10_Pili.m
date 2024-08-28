%% Ejercicio 10, TP 2:
%%En el conjunto de datos del ejercicio anterior, hay 5 grupos de datos: A
%%= 2, B = 4, C = 8, D = 4, E = 2.

%% a) genere un gráfico de torta de esta distribución y sus leyendas asociadas con el comando legend
G = [2 4 8 4 2]; 
Categorias = {'A','B','C','D','E'};

subplot(1,2,1);
pie(G)
lgd = legend(Categorias);
title('Grafico de torta de la distribución dada');

%% b) genere un gráfico de torta tridimensional con los datos
subplot(1,2,2);
pie3(G)
title('Grafico tridimensional de torta de la distribución dada');