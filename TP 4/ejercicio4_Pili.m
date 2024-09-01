%% Ejercicio 4, TP 4:
% Una empresa alimenticia fabrica cinco tipos de mix de cereales en
% paquetes de 1kg con la composición y costo que se muestra en la tabla. Se
% desea conocer el costo por kg de cada uno de los ingredientes.

%x1 = mani, x2 = copos de arroz, x3 = almendras, x4 = chips de choc., x5 =
%castañas

A = [0.2 0.2 0.2 0.2 0.2; 0.35 0.15 0.35 0 0.15; 0.1 0.3 0.1 0.1 0.4; 0 0.3 0.1 0.4 0.2; 0.15 0.3 0.2 0.35 0];
B = [10900; 11325; 10850; 10450; 9650];

X = linsolve(A,B);
disp('El costo por kg de cada ingrediente es:')
disp(['Mani: $', num2str(X(1))])
disp(['Copos de arroz: $', num2str(X(2))])
disp(['Almendras: $', num2str(X(3))])
disp(['Chips de chocolate: $', num2str(X(4))])
disp(['Castañas: $', num2str(X(5))])