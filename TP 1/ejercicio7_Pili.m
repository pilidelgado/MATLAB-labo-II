%% Ejercicio 7, TP 1
L = 1000; %%longitud deseada
A = 8; %%valor pico, amplitud m�xima de la se�al
P = 24; %%cantidad de per�odos en la longitud
fs = 10000; %%frecuencia de muestreo en Hz

f = P * fs / L; %%frecuencia de la se�al

t = (0:L-1) / fs; %%vector de tiempo

senal_sierra = A * sawtooth(2*pi*f*t); %%2*pi convierte la frecuencia de la se�al de ciclos por segundo (Hz) a radianes por segundo; f define cu�ntos ciclos completos ocurren por segundo; t define en qu� instantes se eval�a la se�al

senal_cuadrada = A * square(2*pi*f*t);

subplot(2,1,1);
plot(t, senal_sierra, 'b', 'LineWidth', 1.5);
grid;
xlabel('tiempo [s]');
ylabel('amplitud');

subplot(2,1,2);
plot(t, senal_cuadrada, 'r', 'LineWidth', 1.5);
grid;
xlabel('tiempo [s]');
ylabel('amplitud');