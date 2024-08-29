 %% Ejercicio 15, TP 3:
 %Encuentre un polinomio aproximador de segundo grado que pasa por los
 %puntos (-1,4), (0,2) y (1,6). Grafique la nube de puntos y el polinomio
 %interpolador en una misma figura
 
 x = -1:1;
 y = [4 2 6];
 
%busco los coeficientes del polinomio de interpolación de segundo grado
coef = polyfit(x, y, 2); %donde 2 es el grado 
 
%genero los puntos para graficar la parábola
xfit = linspace(-2,2,100); %intervalo para la grafica
yfit = polyval(coef, xfit); %evaluación del polinomio en los puntos anteriores

figure;
plot(x,y,'ro', 'MarkerSize', 8, 'LineWidth', 2); %nube de puntos
hold on;
plot(xfit, yfit, 'b-', 'LineWidth', 2); %polinomio interpolador
xlabel('x');
ylabel('y');
title('Interpolación de un polinomio de segundo grado');
legend('Puntos dados', 'Polinomio interpolador');
grid on;
