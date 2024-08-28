%% Ejercicio 12, TP 2:
%%En la tabla dada se observa el inventario de una máquina en una distribuidora industrial. Realizar un gráfico de barras con los datos

A2022 = [2345,4363,3212,4565,8776,7679,6532,2376,2238,4509,5643,1137]';
A2023 = [2343,5766,4534,4719,3422,2200,3454,7865,6543,4508,2312,4566]';
Meses = {'Ene';'Feb';'Mar';'Abr';'Mao';'Jun';'Jul';'Ago';'Sep';'Oct';'Nov';'Dic'};

%%%%% Generación de la Tabla %%%%%
Tabla = table(Meses,A2022,A2023)
TabGBar = [A2022';A2023']; %%matriz que tiene los datos a graficar. Son datos fila

H1=figure(1);
set(H1,'NumberTitle','off','Menubar','none','name','Ejercicio 12. LPII. Distribución Anual de Máquinas Herramientas','position',[20 30 1500 750]);

bar([2022 2023],TabGBar) 

grid;
legend(Meses)
xlabel('Años de análisis')
ylabel('#Cantidad')
title('Distribución Anual de Máquinas Herramientas')
