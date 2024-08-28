%% Ejercicio 5, TP 3:
%%segun la tabla dada:
%% a)genere la estructura de datos
metal = char('Aluminio', 'Cobre', 'Hierro', 'Molibdeno', 'Cobalto');
simbolo = char('Al', 'Cu', 'Fe', 'Mo', 'Co');
num_atom = [13;29;26;42;27];
peso_atom = [26.98;63.55;55.85;95.94;58.93];
densidad = [2.71;8.94;7.87;10.22;8.9];
est_crist = char('FCC', 'FCC', 'BCC', 'BCC', 'HCP');

tabla = table(metal, simbolo, num_atom, peso_atom, densidad, est_crist);
disp(tabla);

%% b)extraer lo siguiente:
%%Nombre, peso atómico y estructura del cuarto elemento de la lista
resp_1 = [tabla(4,1) tabla(4,3) tabla(4,6)]; %% (fila, columna)
disp(resp_1);
%%Nombre de todos los elementos almacenados en la lista
resp_2 = tabla.metal; %% o tabla(:, 1), todas las filas de la columna 1
disp(resp_2);
%%Peso atómico promedio de todos los elementos de la lista
resp_3 = mean(tabla.peso_atom); %%hace el promedio. 
disp(resp_3);
