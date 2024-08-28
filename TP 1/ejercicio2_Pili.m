%% Ejercio 2, TP 1.
%% La acidez de las soluciones se mide en t�rminos del pH, que se define en t�rminos
%%del logaritmo en base 10 de la concentraci�n. Cree una tabla de conversi�n de concentraci�n a pH con una concentraci�n inicial de 0.001
%%mol/litro a 100 mol/litro con 5000 intervalos. Realice un grafico respectivo de pH en funci�n de la concentraci�n.

%% defino los par�metros:
Ci = 0.001; %%concentraci�n inicial
Cf = 100; %%concentraci�n final
Int = 5000; %%intervalos pedidos

%% calculo la variaci�n de concentraci�n
Acidez = (Cf - Ci) / Int; 

%% creo el vector de concentraciones, en forma de columna

Conc = (Ci:Acidez:Cf)';

%% calculo el pH: calcula el pH para cada valor de la concentraci�n 
pH = log10(Conc);

%% creo una tabla con las concentraciones y su pH
Tabla_pH = table(Conc, pH)

%% configuro la figura (tabla)
H1 = figure(1); 
set(H1, 'NumberTitle','off','Menubar','none','name','Ejercicio #2. LPII. Concentraci�n de PH de las Soluciones','position',[100 30 1200 750]);
plot(Tabla_pH.Conc, Tabla_pH.pH, 'r', 'LineWidth', 1.5) %% r indica que ser� color roja, y el resto que la linea va a ser de 1.5 de grosor

grid %%a�ade una cuadr�cula
xlabel('Conc.(mol/litro)') %%a�ado las etiquetas del eje y y el eje x
ylabel('pH')
title('pH y concentraci�n')