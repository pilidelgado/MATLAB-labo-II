%% Ejercicio 3, TP 2:
%%La distancia que recorre un proyectil en un tiro oblicuo puede dividirse
%%en horizontal y vertical (dos funciones). 

%% a) suponga que el proyectil se dispara con un ángulo de salida de 0 = pi/4, y una velocidad inicial
%%v0 = 100 m/s. Grafique las distancias recorridas desde 0 a 20 segundos.
%%Agregar títulos y etiquetas

t = linspace(0, 20, 40);
v0 = 100;
tita = pi/4;
g = 9.81;

distX = v0 * cos(tita) * t ;
distY = v0 * sin(tita) * t - 1/2*g*(t.^2);

H1 = figure(1);
set(H1,'NumberTitle','off','Menubar','none','name','Ejercicio #3. LPII','position',[150 50 1200 750]);
plot(t, distX, 'm--', t, distY, 'b-.', 'LineWidth', 2.5);
grid;
xlabel('tiempo [s]');
ylabel('metros [m]');
title('distancia vertical y horizontal recorrida');

%% b)En una nueva figura, grafique y(t) como función de x(t)
H2 = figure(2);
set(H2,'NumberTitle','off','Menubar','none','name','Ejercicio #3. LPII. Tiro oblicuo. y(t) como función de x(t)','position',[150 50 1200 750]);
plot(distX, distY, 'm', 'LineWidth', 2);
grid;
xlabel('x(t) [m]');
ylabel(' y(t) [m]');
title('posición vertical en función de posición horizontal');


%% c) calcule 3 nuevos vectores para cada una de las distancias verticales (y1, y2, y3) y horizontales (x1, x2, x3) para los ángulos de lanzamiento (pi/2, pi/4, pi/6).
%%realice en una misma figura y como función de x. Las líneas deben ser
%%sólidas, rayadas y punteadas. Debe indicar en el gráfico una leyenda para
%%cada angulo de salida.

titas = [pi/2 pi/4 pi/6];
xs = zeros(3, length(t));
ys = zeros(3, length(t));

for k = 1:3 %% bucle que itera desde k=1 hasta k=3. 
    xs(k, :) =  v0 * cos(titas(k)) * t ; %% (k, :). se almacena el resultado en la fila k de la matriz xs. : indica que se guarda el resultado en todas las columnas de la fila k
    ys(k, :) = v0 * sin(titas(k)) * t - 1/2*g*(t.^2);
end
%%con el for, puedo acceder a cada valor de tita y de las matrices xs/ys,
%%que se crearon nulas para allí guardar los resultados y almacenar luego
%%lo calculado en el bucle.

H3 = figure(3);
set(H3, 'NumberTitle', 'off', 'Menubar', 'none', 'name', 'Ejercicio #3. LPII. Tiro oblicuo', 'position', [150 50 1200 750]);
plot(xs(1,:), ys(1,:), '-k', 'LineWidth', 2);
hold on
plot(xs(2,:),ys(2,:),'--r','LineWidth',2)
plot(xs(3,:),ys(3,:),':b','LineWidth',2)

grid
legend('\theta_1 = pi/2','\theta_2 = pi/4','\theta_3 = pi/6') %%cuadradito con aclaraciones arriba a la derecha
xlabel('x(t) (m)')
ylabel('y(t) (m)')
title('Distintos ángulos de salida en tiro oblicuo')

hold off



