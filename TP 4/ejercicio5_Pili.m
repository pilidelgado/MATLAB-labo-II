%% Ejercicio 5, TP 4:
%%En la imagen se observa un cojunto de 3 masas, m1 = 2kg, m2 = 3kg y m3 =
%%1.5kg sostenidas por resortes de constantes el�sticas k1 = 20N/m, k2 = 25
%N/m, k3 = 20N/m y k4 = 15N/m. Se cuelga el sistema y se lo va soltando muy
%lentamente, hasta que la deformaci�n de los resortes desde sus longitudes
%iniciales equilibran los pesos de las masas. Verifique que las ecuaciones
%de equilibrio de los resortes est�n dadas por: (sist de ecuaciones)
% Encuentre los desplazamientos relativos de cada masa cuando la
% deformaci�n de los resortes alcanzan el equilibrio (u1, u2 y u3)


%declaro masas, constantes el�sticas y gravedad
m1 = 2;
m2 = 3;
m3 = 1.5;

k1 = 30;
k2 = 25;
k3 = 20;
k4 = 15;

g = 9.81;


%resuelvo el sistema lineal con distintos m�todos:
A = [k1+k2+k3 -k3 0; -k3 k3+k4 -k4; 0 -k4 k4];
B = [m1*g; m2*g; m3*g];

disp('Por linsolve:');
X = linsolve(A,B)

disp('Por X = A\B:')
X2 = A\B

disp('Por X = inv(A)*B:')
X3 = inv(A)*B

disp('Por matem�tica simb�lica:');
syms u1 u2 u3
ec = [(k1+k2+k3)*u1-k3*u2==m1*g; -k3*u1+(k3+k4)*u2-k4*u3==m2*g; -k4*u2+k4*u3==m3*g];
sol = solve(ec, [u1, u2, u3]);
u1 = sol.u1
u2 = sol.u2
u3 = sol.u3


