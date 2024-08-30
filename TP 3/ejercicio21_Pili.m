%% Ejercicio21, TP 3:
%La cantidad de energ�a necesaria para calentar un gas 1 grado cent�grado
%(capacidad cal�rica del gas), depende del gas y de su temperatura. Esta
%relaci�n se modela con polinomios (en la tabla se muestra la CC del di�xido de carbono)

%% a) Realice una aproximaci�n lineal de grado 1, 2, 3 y 4 de la CC

T = [250;300;350;400;450;500;550;600;650;700;750;800;900;1000;1500]; % Temperatura
Cc = [0.791;0.846;0.895;0.939;0.978;1.014;1.046;1.075;1.102;1.126;1.148;1.169;1.204;1.234;1.328];
N = 10e3;

p1 = polyfit(T, Cc, 1);
p2 = polyfit(T, Cc, 2);
p3 = polyfit(T, Cc, 3);
p4 = polyfit(T, Cc, 4);

ATa = (T(length(T)) - T(1))/N;
Ta = T(1):ATa:T(length(T));
Cca1 = polyval(p1, Ta);
Cca2 = polyval(p2, Ta);
Cca3 = polyval(p3, Ta);
Cca4 = polyval(p4, Ta);

kyle = [1.698e-10 -7.957e-7 1.359e-3 5.059e-1];
kyle_ta = polyval(kyle, Ta);

%% b) grafique sus resultados en una sola figura.
H1 = figure(1);
plot(T, Cc, 'b*', 'LineWidth', 3);
xlabel('T (�K)');
ylabel('Capacidad Cal�rica (kJ/kg�K)');
hold on
grid;
plot(Ta, Cca1, 'r', Ta, Cca2, 'k', Ta, Cca3, 'm', Ta, Cca4, 'g');
hold off;
legend('original', 'Cc_1(x)', 'Cc_2(x)','Cc_3(x)','Cc_4(x)');
title('Aproximaci�n por Polinomio de Grado 1,2,3 y 4 de Calentamiento de Gas');

%% c) Calcule luego los errores cometidos cuando se comparan cada una de
%estas aproximaciones con la soluci�n obtenida por Kyle:
% Cp = 1.698x10^-10 * T^3 - 7.957x10^-7*T^2 + 1.359x10^-3*T + 5.059x10^-1
disp('Error cuadr�tico medio con aprox. de grado 1:');
ECM1 =sqrt(sum((kyle_ta - Cca1).^2))/length(kyle_ta);
disp(ECM1);

disp('Error cuadr�tico medio con aprox. de grado 2:');
ECM2 =sqrt(sum((kyle_ta - Cca2).^2))/length(kyle_ta);
disp(ECM2);

disp('Error cuadr�tico medio con aprox. de grado 3:');
ECM3 =sqrt(sum((kyle_ta - Cca3).^2))/length(kyle_ta);
disp(ECM3);

disp('Error cuadr�tico medio con aprox. de grado 4:');
ECM4 =sqrt(sum((kyle_ta - Cca4).^2))/length(kyle_ta);
disp(ECM4);

H2 = figure(2);
plot(T, Cc, 'b*', 'LineWidth', 3);
xlabel('T (�K)');
ylabel('Capacidad Cal�rica (kJ/kg�K)');
hold on
grid
plot(Ta, kyle_ta, 'r', 'LineWidth', 1.5);
title('Nube de puntos vs Ecuaci�n de B. G. Kyle');
hold off

