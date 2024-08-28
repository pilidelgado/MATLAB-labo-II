%% Ejercicio 6, TP 1: rampas discretas y exponenciales reales discretas (i-n)

%% i) x[n] = 2r[n-7], 0?n?50
%%la función es 0 cuando n es menor a 7, aumenta linealmente con n a partir
%%de n = 7. Como está multiplicada por 2 (2r), se amplifica la pendiente de

subplot(2,3,1)
n = 0:50;
%%crea el vector x, que representa la rampa desplazada y escalada.
%%si n es menor a 7, entonces n-7 es negativo, y max devuelve 0; si n es
%%mayor/igual a 7, entonces n-7 es positivo o cero, y max devolverá n-7
x = 2 * max(0, n - 7);
stem(n,x)
grid
xlabel('n')
ylabel('f_i [n]')


%% j) x[n] = 5r[n], 0?n?30
subplot(2,3,2)
n = 0:30;
x = 5 * max(0, n); %% o sino, x = 5*n
stem(n,x)
grid
xlabel('n')
ylabel('f_j [n]')

%% k) x[n] = a^n, a = 1/2 con 0?n?20. 
subplot(2,3,3)
n = 0:20;
a = 1/2;
x = a.^n;
stem(n,x);
grid
xlabel('n')
ylabel('f_k [n]')

%% l) x[n] = a^n-4*u[n-4], a = 1/2, con 0?n?20
subplot(2,3,4)
n = 0:20;
a = 1/2;
x = (a.^(n-4)) .*(n >= 4); %%el primer paréntesis calcula (1/2)^n-4. el segundo paréntesis genera el escalón unitario u[n-4] (0 para n menor a 4, y 1 para mayores/iguales a 4
stem(n,x)
grid
xlabel('n');
ylabel('f_l [n]');

%% m) x[n] = -a^-n u[-n], a = 2, con -5 ? n ? 0
subplot(2,3,5)
n = -5:0;
a = 2;
x = -a.^(-n) .*(n <= 0);
stem(n,x)
grid
xlabel('n');
ylabel('f_m [n]');

%% n) x[n] = 3e^-0.2n u[n]
%%es una señal que decae exponencialmente con n, escalada por un factor de 3
subplot(2,3,6)
n = 0:20; %%el rango lo elijo yo
x = 3* exp(-0.2 * n).*(n >= 0); %%el primer parentesis con exp calcula e^-0.2n. Lo otro genera el escalon unitario que es 1 para n mayor/igual a 0
stem(n,x)
grid
xlabel('n');
ylabel('f_n [n]');
