%% Ejercicio 3, TP 4:
%En la imagen se observa un circuito eléctrico pasivo compuesto solamente
%por resistores y fuentes de alimentación continuas. Las ecuaciones de
%malla que rigen su comportamiento físico están dadas por:
%9.5i1 ? 2.5i2 ? 2i4 = 12; ?2.5i1 + 11i2 ? 3.5i3 ? 5i5 = ?16; ?3.5i2 +
%15.5i3 ? 4i5 = 14; ?2i1 + 7i4 ? 3i5 = 10;?5i2 ? 4i3 ? 3i4 + 12i5 = ?30

%Encuentre cada una de las corrientes de malla mediante diferentes
%funciones MatLab

A = [9.5 -2.5 0 -2 0; -2.5 11 -3.5 0 -5; 0 -3.5 15.5 0 -4; -2 0 0 7 -3; 0 -5 -1 -3 12];
B = [12; -15; 14; 10; -30];

disp('Por linsolve:');
X1 = linsolve(A,B)

disp('Por X = A\B:');
X2 = A\B

disp('Por X = inv(A)*B:');
X3 = inv(A)*B

disp('Por matemática simbólica:');
syms i1 i2 i3 i4 i5;
ec = [9.5*i1-2.5*i2-2*i4==12;-2.5*i1+11*i2-3.5*i3-5*i5==-16;-3.5*i2+15.5*i3-4*i5==14;-2*i1+7*i4-3*i5==10;-5*i2-4*i3-3*i4+12*i5==-30];
sol = solve(ec, [i1 i2 i3 i4 i5]); 

I1 = sol.i1
I2 = sol.i2
I3 = sol.i3
I4 = sol.i4
I5 = sol.i5
