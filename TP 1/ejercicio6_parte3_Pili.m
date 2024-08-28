%% Ejercicio 6, TP 1: exponenciales complejas discretas, senoidales discretas, periódicas (o-z)

%%o y p no me sale
%% q) x[n] = sen(pi/17*n), -20  ? n ? 20
subplot(5, 2, 1);
n = -20:20;
x = sin(pi/17 * n);
stem (n,x);
grid
xlabel('n');
ylabel('f_o [n]');


%% r)x[n] = 1,1^n *cos(pi/11*n + pi/4), 0?n?30
subplot(5,2,2);
n = 0:30;
x = 1.1.^n .*cos((pi/11)*n + pi/4);
stem(n,x);
grid
xlabel('n');
ylabel('f_r [n]');


%% s)1,1^n *cos(pi/2*n + pi/6), 0?n?30
subplot(5,2,3);
n = 0:30;
x = 1.1.^n .*cos((pi/2)*n + pi/6); 
stem(n,x)
grid
xlabel('n');
ylabel('f_s [n]');

%% t)0.9^n*cos(pi/11 * n), -20?n?10
subplot(5,2,4);
n = -20:10;
x = 0.9.^n.*cos((pi/11)*n);
stem(n,x);
grid
xlabel('n');
ylabel('f_t [n]');

%% u) sen(pi*n), 0?n?30
subplot(5,2,5);
n = 0:30;
x = sin(pi*n);
stem(n,x)
grid
xlabel('n');
ylabel('f_u [n]');

%% v) x[n] = sen(pi/2 * n), 0?n?30
subplot(5,2,6);
n = 0:30;
x = sin((pi/2)*n);
stem(n,x)
grid
xlabel('n');
ylabel('f_v [n]');

%% w) x[n] = cos(pi/raiz(23))*n), 0?n?100
subplot(5,2,7)
n = 0:100;
x = cos((pi/sqrt(23))*n);
stem(n,x)
grid
xlabel('n');
ylabel('f_w [n]');

%% x) x[n] = 4*e^(-0.05)*sen(0.1*pi*n + pi/4), 0?n?100
subplot(5,2,8)
n = 0:100;
x = 4 * exp(-0.05) * sin(0.1*pi*n + pi/4);
stem(n,x)
grid
xlabel('n');
ylabel('f_x [n]');

%% y) x(t) = 3*sen(2*pi*ft - pi/4), con f = 30 Hz, muestreada con una frecuencia de muestreo de fs = 1000 Hz
subplot(5,2,9)
f0 = 30;
t = 0: 1/1000 :1; %%vector de tiempo desde 0 hasta 1, con intervalos de 1/fs
x = 3 * sin(2*pi*f0*t - pi/4); 
grid
xlabel('n');
ylabel('f_y [n]');

%%me falta o, p y z








