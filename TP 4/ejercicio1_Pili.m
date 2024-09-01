%% Ejercicio 1, TP 4:
% Resuelva cada uno de los siguientes sistemas de ecuaciones lineales,
% mediante diferentes funciones de matlab. Analizar ventajas y desventajas
% de cada una. 

%% a) Encuentre la parábola y = c2x^2 + c1x + c0, que pasa por (1,4),(2,7) y (3,14)
%defino los puntos
x = [1 2 3];
y = [4 7 14];

%cada fila de A representa una ecuación para un punto específico
A = [1 1 1; 4 2 1; 9 3 1];
%B contiene los valores de y correspondientes a cada punto
B = [4; 7; 14];

CP2 = polyfit(x,y,2); %ajusta el polinomio de grado 2 a los puntos dados; devuelve sus coeficientes
ejeX = x(1):0.01:x(3); %se crea un vector que va desde el primer valor de x hasta el último, para graficar una curva suave
PG2 = polyval(CP2, ejeX); %evalua el polinomio en los puntos del eje x, para graficarlo

H1 = figure(1);
plot(x, y, 'b*', 'LineWidth', 5); %grafico los puntos dados
grid
xlabel('x');
ylabel('y');
title('Parábola que pasa por 3 puntos:');
hold on
plot(ejeX, PG2, 'r', 'LineWidth', 1);
hold off

%diferentes formas:
disp('Por polyfit:');
X = CP2' %contiene los coeficientes calculador por polyfit
disp('Por linsolve:');
X = linsolve(A,B) %resuelve un sistema de ecuaciones lineales directamente
disp('Por X = A\B:')
X = A\B
disp('Por X = inv(A)*B:');
X = inv(A)*B %forma concisa de resolver el sist. de ecuaciones lineales
disp('Por matemática simbólica:')
syms c2 c1 c0
f_inc = [c2 + c1 + c0 == 4; 4*c2+2*c1+c0 == 7; 9*c2+3*c1+c0 == 14]; %a partir de la forma de la parábola, reemplazo los valores de x y de y con los puntos dados
X = solve(f_inc, [c2, c1, c0]);%usa solve para resolver simbólicamente el sistema

x0 = X.c0
x1 = X.c1
x2 = X.c2

%% b)Encuentre el polinomio cúbico y = c3x^3 + c2x^2 + c1x + c0 que pasa por (0,0), (1,1), (2,2), (3,2)
%puntos dados:
x = [0 1 2 3];
y = [0 1 2 2];

A = [1 1 1; 8 4 2; 27 9 3];
B = [1;2;2];

%Coeficientes del polinomio de grado 3:
CP3 = polyfit(x,y,3);
ejeX = x(1):0.01:x(4); %valores de x para el gráfico
PG3 = polyval(CP3, ejeX); %polinomio para el gráfico

%gráfico
H2 = figure(2);
plot(x,y, 'b*', 'LineWidth', 5); %grafico los puntos
grid
xlabel('x');
ylabel('y');
title('Polinomio de grado 3 que pasa por 4 puntos');
hold on
plot(ejeX, PG3, 'r', 'LineWidth', 1); %grafico el polinomio
hold off

%diferenres formas:
disp('Por polyfit:')
X = CP3'
disp('Por linsolve:')
X = linsolve(A,B)
X(4) = 0
disp('Por X = A\B:')
X = A\B
X(4) = 0;
disp('Por X = inv(A)*B:')
X = inv(A)*B
X(4) = 0;
disp('Por matemática simbólica:')
syms c3 c2 c1 c0
f_inc = [c0 == 0; c3+c2+c1+c0 == 1; 8*c3+4*c2+2*c1+c0==2; 27*c3+9*c2+3*c1+c0 ==2];
X = solve(f_inc, [c3, c2, c1 c0]);
x0 = X.c0
x1 = X.c1
x2 = X.c2
x3 = X.c3

%% c) (sistema en pdf)
A = [1 2 0 -1; 2 3 -1 0; 0 4 2 -5; 5 5 2 -4];
B = [9;9;26;32];

disp('Por linsolve:');
X = linsolve(A,B)
disp('Por x = A/B:')
X = A\B
disp('Por X = inv(A)*B:')
X = inv(A)*B
disp('Por matemática simbólica:')
syms x1 x2 x3 x4
f_inc = [x1+2*x2-x4==9;2*x1+3*x2-x3==9;4*x2+2*x3-5*x4==26;5*x1+5*x2+2*x3-4*x4==32];
X = solve(f_inc, [x1, x2, x3, x4]);
x1 = X.x1
x2 = X.x2
x3 = X.x3
x4 = X.x4


