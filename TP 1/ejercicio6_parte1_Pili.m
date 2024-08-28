%% Ejercicio 6, TP 1 (impulsos discretos y escalones discretos, a-h)
%%Generar y graficar las siguientes señales y continuas

H1 = figure(1);
set(H1, 'NumberTitle', 'off', 'Menubar', 'none', 'name', 'Ejercicio #6. LPII. Deltas de Kronecker', 'position', [100 30 1200 750]);

%% a) x[n] = d[n], -20 ? n ? 20 
%%subplot divide la ventana del gráfico en una cuadrícula de subgráficos:
%%la figura se divide en una cuadrícula de 2 filas y 2 columnas (4 subg. El
%%1 indica que este gráfico estará en la posición 1 de esa cuadrícula
subplot(2, 4, 1) 

%%se define un vector n que va desde -20 a 20
n = - 20:20;

%%se crea un vector del mismo tamaño que n ("size(n)") lleno de ceros. 
x = zeros(size(n));

%%asigna el valor 1 al número 21 del vector x (corresponde al valor de x donde n es el 0, el punto medio de n)
x(21) = 1;

%%crea gráficos de secuencias discretas. Grafica el vector x en función de
%%mn
stem(n, x)

%%pongo nombres a los ejes y pongo cuadrícula
grid
xlabel('n')
ylabel('x_a [n]')


%% b) x[n] = 0.9*d[n-5], 0?n?20
subplot(2,4,2)
n = 0:20;
x = zeros(size(n));
x(6) = 0.9; %%el numero que multiplica d se iguala a la posición que resta a n (es 5, pero como en matlab todo empieza en 1, se usa 6)
stem(n, x)
grid
xlabel('n')
ylabel('x_b [n]')

%% c) x[n] = 1.5[n-333], 300 ? n  ? 350
subplot(2, 4, 3)
n = 300:350;
x = zeros(size(n));
x(334 - n(1)) = 1.5; %%n(1)=300. Entonces, 334 - n(1) es 34
stem(n,x)
grid
xlabel('n')
ylabel('x_c [n]')

%% d) x[n] = 4.5*d[n + 7], -10 ? n ? 51
subplot(2,4,4)
n = -10:51;
x = zeros(size(n));
x(4) = 4.5; %%la posicion 4 es igual a -10+4-1 = -7
stem(n,x)
grid
xlabel('n')
ylabel('x_d [n]')

%% e) x[n] = u[n], -10?n?20
subplot(2,4,5)
n = -10:20;
x = double(n>=0); %%representa el escalón unitario. Es un vector lógico donde los valores son 1 cuando n es mayor a 0, y 0 cuando n es menor
%%double convierte el vector lógico en un vector de tipo numérico,
%%necesario para stem.
stem(n,x)
grid
xlabel('n')
ylabel('x_e [n]')

%% f) x[n] = u[n - 5], 0? n ?35
subplot(2,4,6)
n = 0:35;
x = double(n >= 5); %%escalón unitario desplazado, 1 para n mayores iguales a 5, cero para n menores a 5
stem(n,x)
grid
xlabel('n')
ylabel('x_f [n]')

%% g) x[n] = u[n + 7], -70 ? n ? 0
subplot(2,4,7)
n = -70:0;
x = double (n >= -7);
stem(n,x)
grid
xlabel('n')
ylabel('x_g [n]')

%% h) x[n] = 3u[-n + 15], -30 ? n ? 20
subplot(2,4,8)
n = -30:20;
x = 3 * double(n <= 15);
stem(n,x)
grid
xlabel('n')
ylabel('x_h [n]')