%% Ejercicio 9, TP 4:
% La imagen muestra 3 reactores unidos por conductos de transmisión de
% flujo másico. Como se muestra, la tasa de transferencia de químicos a
% través de cada conducto es igual al flujo (Q) multiplicado por la
% concentración del reactor donde se origina (c). Si el sistema está en
% estado estacionario, la transferencia de entrada a cada reactor igualará
% a la transferencia de salida. Se pide:

%% a) Encontrar las ecuaciones de balance de masa para cada reactor
%defino las variables con los datos dados en la imagen:
Q33 = 120; %m^3/s
Q13 = 40;
Q12 = 90;
Q23 = 60;
Q21 = 30;
Fm1 = 500; Fm3 = 500; %mg/s

%Las ecuaciones son:
disp('Q');
%% b) Resolver el sistema de ecuaciones anterior mediante todas las técnicas lineales presentadas
%defino las matrices
A = [Q12+Q13 -Q21 0; -Q12 Q21+Q23 0; Q13 Q23 -Q33];
B = [Fm1; 0; Fm3];

disp('Por linsolve:');
U = linsolve(A, B);
disp(U);

disp('Por A\B:');
U = A\B;
disp(U);

disp('Por inv(A)*B:');
U = inv(A)*B;
disp(U);

disp('Por matemática simbólica:');
syms c1 c2 c3;
ecs = [(Q12+Q13)*c1-Q21*c2==Fm1; -Q12*c1+(Q21+Q23)*c2==0; Q13*c1+Q23*c2-Q33*c3==-Fm3];
sol = solve(ecs, [c1, c2, c3]);
disp('c1:');
disp(sol.c1);
disp('c2:');
disp(sol.c2);
disp('c3:');
disp(sol.c3);



