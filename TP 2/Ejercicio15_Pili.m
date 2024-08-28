%% Ejercicio 15, TP 2:
%%La deformaci�n de muchos metales cambia sus propiedades f�sicas. En el
%%trabajo en fr�o, el metal se deforma lentamente. Los siguientes datos
%%tabulan tanto la fuerza como la ductilidad de un metal que se trabaj� en
%%fr�o a diferentes grados (tabla). Graficar este conjunto de datos con eje
%%primario y secundario de ordenadas.

%%escribo los datos dados
porcentaje = [10 15 20 25 30 40 50 60 68];
fuerza = [275 310 340 360 375 390 400 407 410];
ductilidad = [43 30 23 17 12 7 4 3 2];

%%primer eje
yyaxis left;
plot(porcentaje, fuerza, 'b', 'LineWidth', 2);
ylabel('Fuerza producida [MPa]');
xlabel('Porcentaje de trabajo en fr�o [%]');

%%segundo eje
yyaxis right;
plot(porcentaje, ductilidad, 'm', 'LineWidth', 2);
ylabel('Ductilidad');

title('Relaci�n entre fuerza producida y ductilidad con trabajo en fr�o');
