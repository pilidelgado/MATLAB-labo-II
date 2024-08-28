%% Ejercio 2, TP 1.
%% La acidez de las soluciones se mide en términos del pH, que se define en términos
%%del logaritmo en base 10 de la concentración. Cree una tabla de conversión de concentración a pH con una concentración inicial de 0.001
%%mol/litro a 100 mol/litro con 5000 intervalos. Realice un grafico respectivo de pH en función de la concentración.

%% defino los parámetros:
Ci = 0.001; %%concentración inicial
Cf = 100; %%concentración final
Int = 5000; %%intervalos pedidos

%% calculo la variación de concentración
Acidez = (Cf - Ci) / Int; 

%% creo el vector de concentraciones, en forma de columna

Conc = (Ci:Acidez:Cf)';

%% calculo el pH: calcula el pH para cada valor de la concentración 
pH = log10(Conc);

%% creo una tabla con las concentraciones y su pH
Tabla_pH = table(Conc, pH)

%% configuro la figura (tabla)
H1 = figure(1); 
set(H1, 'NumberTitle','off','Menubar','none','name','Ejercicio #2. LPII. Concentración de PH de las Soluciones','position',[100 30 1200 750]);
plot(Tabla_pH.Conc, Tabla_pH.pH, 'r', 'LineWidth', 1.5) %% r indica que será color roja, y el resto que la linea va a ser de 1.5 de grosor

grid %%añade una cuadrícula
xlabel('Conc.(mol/litro)') %%añado las etiquetas del eje y y el eje x
ylabel('pH')
title('pH y concentración')