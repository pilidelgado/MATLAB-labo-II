%% Ejercicio 6, TP 2:
%%Cuando el interés se compone continuamente, la siguiente ecuación
%%representa el crecimiento de los ahorros: P = P0*e^(r*t), donde
%%P es el saldo actual, P0 el inicial, r es la constante de crecimiento (en
%%fracción decimal) y t es el tiempo invertido.

%%Determinar el dinero en su cuenta al final del año si se invierten 10.000
%%dolares al 8% anual (0.08) durante 30 años --> tabla
%%Crear una figura con 4 subgráficos. En las abscisas graficar tiempo y en
%%las ordenadas el saldo. 

P0 = 10000; %%saldo inicial
r = 0.08; %%constante de crecimiento (%8 anual)
t = 0:30; %%tiempo en años, de 0 a 30 años

P = P0 * exp(r*t); %%saldo final

%% a) P como función de t en coordenadas rectangulares
subplot(2,2,1);
plot(t, P, 'b-', 'LineWidth', 2); 
xlabel('tiempo en años');
ylabel('saldo P [$]');
grid; 

%% b) P como función de t, con escala logarítima en t
subplot(2,2,2);
semilogx(t, P, 'r-', 'LineWidth', 2); %%escala logarítima en x (t), escala lineal en y (P $)
xlabel('tiempo en años');
ylabel('saldo P [$]');
grid;

%% c) P como función de t, con escala logarítima en t
subplot(2,2,3);
semilogy(t, P, 'm-', 'LineWidth', 2); %%escala logarítima en y (P $), escala lineal en x (t)
xlabel('tiempo en años');
ylabel('saldo P [$]');
grid;

%% d) P como función de t, con escala logaritima en ambos ejes
subplot(2,2,4);
loglog(t, P, 'c-', 'LineWidth', 2); %%escala logarítima en y (P $)y en x (t)
xlabel('tiempo en años');
ylabel('saldo P [$]');
grid;

