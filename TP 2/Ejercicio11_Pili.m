%% Ejercicio 11, TP 2:
%%Usar la funcion randn para crear 1000 valores de una distribución normal
%%de datos aleatorios. La misma debe tener un valor medio de 70 y un desvío
%%estándar de 3.5. Genere luego un histograma del conjunto de datos
%%calculado y superponga en la misma gráfica la representación exacta de
%%una densidad de probabilidad gaussiana con el valor meido y el desvío
%%dados. Repetir el análisis con 10.000 valores y 100.000 valores

VM = 70;
SD = 3.5;

data_1000 = VM + SD * randn(1000,1);
data_10000 = VM + SD * randn(10000,1);
data_100000 = VM + SD * randn(100000,1);


subplot(3,1,1);
histogram(data_1000, 'Normalization', 'pdf');
hold on;
x = linspace(min(data_1000), max(data_1000), 100); 
y =(1/(SD * sqrt(2*pi))) * exp(-0.5 * ((x - VM)/SD).^2);
plot(x, y, 'r', 'LineWidth', 2);
xlabel('valor');
ylabel('densidad de probabilidad');
legend('Histograma', 'gaussiana teórica');
title('Histograma de 1000 variables aleatorias');

subplot(3,1,2);
histogram(data_10000, 'Normalization', 'pdf');
hold on;
x = linspace(min(data_10000), max(data_10000), 100); 
y =(1/(SD * sqrt(2*pi))) * exp(-0.5 * ((x - VM)/SD).^2);
plot(x, y, 'g', 'LineWidth', 2);
xlabel('valor');
ylabel('densidad de probabilidad');
legend('Histograma', 'gaussiana teórica');
title('Histograma de 10000 variables aleatorias');

subplot(3,1,3);
histogram(data_100000,'Normalization', 'pdf');
hold on;
x = linspace(min(data_100000), max(data_100000), 100); 
y =(1/(SD * sqrt(2*pi))) * exp(-0.5 * ((x - VM)/SD).^2);
plot(x, y, 'b', 'LineWidth', 2);
xlabel('valor');
ylabel('densidad de probabilidad');
legend('Histograma', 'gaussiana teórica');
title('Histograma de 100000 variables aleatorias');



