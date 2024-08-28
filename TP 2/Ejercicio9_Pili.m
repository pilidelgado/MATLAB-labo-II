%% Ejercicio 9, TP 2:
%%Sea el siguiente conjunto de valores G = [...], que representa la
%%distribución de calificaciones finales en un curso de ingeniería, se
%%pide:

%% a) ordene los datos y cree un gráfico de barras para las calificaciones
G = [68, 83, 61, 70, 75, 82, 57, 5, 76, 85, 62, 71, 96, 78, 76, 68, 72, 75, 83, 93];
G_ordenado = sort(G); %%ordena de menor a mayor
subplot(2,1,1);
barh(G_ordenado, 'FaceColor', 'magenta', 'BarWidth', 0.5); %%gráfico de barras horizontal
grid
xlabel('valor de las calificaciones');
ylabel('cantidad de alumnos');
title('grafico de barras para calificaciones');

%% b) genere un histograma de las calificaciones
subplot(2,1,2);
histogram(G_ordenado, 'FaceColor', 'magenta', 'FaceAlpha', 0.7); %%histograma
grid
xlabel('valor de las calificaciones');
ylabel('frecuencia');
title('histograma de calificaciones');