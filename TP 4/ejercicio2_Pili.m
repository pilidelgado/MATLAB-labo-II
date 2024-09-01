%% Ejercicio 2, TP 4:
% Resuelva los siguientes sistemas tridiagonales con distintas herramientas
% de solución lineal de ecuaciones:

%% a)
A = [1 1 0 0; 2 3 -1 0; 0 4 2 -5; 0 0 2 -4];
B = [9; 9; 26; 32];

disp('Por linsolve:')
X = linsolve(A, B)

disp('Por X = A\B:')
X = A\B

disp('Por X = inv(A)*B:')
X = inv(A)*B

disp('Por matemática simbólica:')
syms x1 x2 x3 x4
ec = [x1+2*x2==9; 2*x1+3*x2-1*x3==9; 4*x2+2*x3-5*x4==26; 2*x3-4*x4==32];
X = solve(ec)

%% b) matrizA * X = matrizB
A = [1 -2 0 0 0; 2 4 -1 0 0; 0 4 1 2 0; 0 0 2 -1 3; 0 0 0 1 -2];
B = [2; 5; 8; -3; 1];
disp('Por linsolve:')
X2 = linsolve(A, B)

disp('Por X = A\B:')
X2 = A\B

disp('Por X = inv(A)*B:')
X2 = inv(A)*B

disp('Por matemática simbólica:');
syms x1 x2 x3 x4 x5
ec = [x1 - 2*x2 == 2; 2*x1 + 4*x2 - x3 == 5; 4*x2 + x3 + 2*x4 == 8; 2*x3 - x4 + 3*x5 == -3; x4 - 2*x5 == 1];
sol = solve(ec,[x1, x2, x3, x4, x5]);

sol1 = sol.x1
sol2 = sol.x2
sol3 = sol.x3
sol4 = sol.x4
sol5 = sol.x5

%% c) matrizA * X = matrizB
A = [1 -1 0 0 0; -2 -2 -2 0 0; 0 3 -3 3 0; 0 0 2 -2 2; 0 0 0 -1 1];
B = [1; 1; 1; 1; 1];
disp('Por linsolve:');
X3 = linsolve(A, B)

disp('Por X = A\B:')
X3 = A\B

disp('Por X = inv(A)*B:')
X3 = inv(A)*B

disp('Por matemática simbólica:');
syms x1 x2 x3 x4 x5
ec = [x1-1*x2==1; -2*x1-2*x2-2*x3==1; 3*x2-3*x3+3*x4==1; 2*x3-2*x4+2*x5==1; -1*x4+x5==1];
sol = solve(ec,[x1, x2, x3, x4, x5]);

sol1 = sol.x1
sol2 = sol.x2
sol3 = sol.x3
sol4 = sol.x4
sol5 = sol.x5


