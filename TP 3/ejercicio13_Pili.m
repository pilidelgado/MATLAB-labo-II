%% Ejercicio 13, TP 3:
%%Dadas las siguientes expresiones racionales de cociente de polinomios, se
%%pide

%% a) Descomponer cada cociente en sus residuos, polos y términos directos
% residuos: coeficientes que acompañan a las fracciones parciales
% polos: raíces del denominador de c/función
% términos directos: términos que no son parte de las fracciones parciales

syms s

num1 = 20;
den1 = [1 0 100]; % coeficientes de s^2 + 100
[r1, p1, k1] = residue(num1, den1);
disp('residuos, polos y términos directos de H1(s):');
disp(r1); disp(p1); disp(k1);

num2 = [1 1]; %coeficientes de s + 1
den2 = [1 5 6]; %coeficientes de s^2 + 5s + 6
[r2, p2, k2] = residue(num2, den2);
disp('residuos, polos y términos directos de H2(s):');
disp(r2); disp(p2); disp(k2);

num3 = [1 0 -1 1]; %coeficientes de s^3 - s + 1
den3 = conv([1 0 0], [1 -1]); %coeficientes de s^2 * (s - 1)
[r3, p3, k3] = residue(num3, den3);
disp('residuos, polos y términos directos de H3(s):');
disp(r3); disp(p3); disp(k3);

num4 = [1 -1 1]; %coeficientes de s^2 * (s-1)
den4 = [1 2 1]; %coeficientes de (s + 1)^2
[r4, p4, k4] = residue(num4, den4);
disp('residuos, polos y términos directos de H4(s):');
disp(r4); disp(p4); disp(k4);

num5 = [1 0 1 0 1]; %coeficientes de s^4 + s^2 + 1
den5 = [1 -1 0 0]; %coeficientes de (s-1)^3
[r5, p5, k5] = residue(num5, den5);
disp('residuos, polos y términos directos de H5(s):');
disp(r5); disp(p5); disp(k5);


%% c) Verifique lo obtenido mediante comandos de Matlab
%convierto cada función de transferencia en fracciones parciales
%sumo las fracciones parciales para verificar que se reconstruye la
%expresión original

H1_parcial = sum(r1 ./ (s-p1)) + poly2sym(k1, s); %fracc. parcial de H1
H1_original = num1 / poly2sym(den1, s); %función original de H1
res1 = simplify(H1_parcial - H1_original); %debe ser 0 para que coincidan
disp('comprobación:');
disp(res1);

H2_parcial = sum(r2 ./ (s-p2)) + poly2sym(k2, s); %reconstruye la expresión a partir de sus residuos y polos
H2_original = num2 / poly2sym(den2, s); %poly2sym convierte un vector de coeficientes polinómicos en una expresión simbólica
res2 = simplify(H2_parcial - H2_original); %verifica la diferencia entre la función original y la reconstruida. 
disp('comprobación:');
disp(res2);

H3_parcial = sum(r3 ./ (s-p3)) + poly2sym(k3, s); 
H3_original = num3 / poly2sym(den3, s); 
res3 = simplify(H3_parcial - H3_original);
disp('comprobación:');
disp(res3);

H4_parcial = sum(r4 ./ (s-p4)) + poly2sym(k4, s); 
H4_original = num4 / poly2sym(den4, s); 
res4 = simplify(H4_parcial - H4_original); 
disp('comprobación:');
disp(res4);

H5_parcial = sum(r5 ./ (s-p5)) + poly2sym(k5, s); 
H5_original = num5 / poly2sym(den5, s); 
res5 = simplify(H5_parcial - H5_original);
disp('comprobación:');
disp(res5);


%% d) Con lo obtenido en el inciso anterior, calcule los ceros y polos de los cocientes de polinomios
ceros_H1 = roots([num1]); 
polos_H1 = roots(den1); 
disp('Polos y ceros de H1: ');
disp(polos_H1); disp(ceros_H1);

ceros_H2 = roots([num2]); 
polos_H2 = roots(den2); 
disp('Polos y ceros de H2: ');
disp(polos_H2); disp(ceros_H2);

ceros_H3 = roots([num3]); 
polos_H3 = roots(den3); 
disp('Polos y ceros de H3: ');
disp(polos_H3); disp(ceros_H3);

ceros_H4 = roots([num4]); 
polos_H4 = roots(den4); 
disp('Polos y ceros de H4: ');
disp(polos_H4); disp(ceros_H4);

ceros_H5 = roots([num5]); 
polos_H5 = roots(den5); 
disp('Polos y ceros de H5: ');
disp(polos_H5); disp(ceros_H5);

