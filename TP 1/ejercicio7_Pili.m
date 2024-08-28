%% Ejercicio 7, TP 1
L = 1000; %%longitud deseada
A = 8; %%valor pico, amplitud máxima de la señal
P = 24; %%cantidad de períodos en la longitud
fs = 10000; %%frecuencia de muestreo en Hz

f = P * fs / L; %%frecuencia de la señal

t = (0:L-1) / fs; %%vector de tiempo

senal_sierra = A * sawtooth(2*pi*f*t); %%2*pi convierte la frecuencia de la señal de ciclos por segundo (Hz) a radianes por segundo; f define cuántos ciclos completos ocurren por segundo; t define en qué instantes se evalúa la señal

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