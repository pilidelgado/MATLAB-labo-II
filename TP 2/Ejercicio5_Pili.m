%% Ejercicio 5, TP 2:
%%genere un vector de ángulos de 0 a 2pi con varPI = 0.01rad. Genere y
%%grafique las siguientes funciones polares

titas = (0: 0.01 : 2*pi);
subplot(2,2,1);
y1 = 5*sqrt(cos(2*titas));
polarplot(titas, y1);

subplot(2,2,2);
y2 = 10*sin(8*titas);
polarplot(titas, y2);

subplot(2,2,3);
y3 = 5 - 5*sin(titas);
polarplot(titas, y3);

subplot(2,2,4);
titaNuevo = (pi/2 : (4*pi)/5 : 4.8*pi);
y4 = [2 2 2 2 2 2];
polarplot(titaNuevo, y4);
