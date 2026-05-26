Algoritmo ejercicio_2
	// Ejercicio 2° - Solicitar al usuario que ingrese 3 notas y calcular el promedio e informarlo por pantalla
	Definir notaUno, notaDos, notaTres, result Como Real;
	
	Escribir "Escribir nota 1°";
	Leer notaUno;
	Escribir "Escribir nota 2°";
	Leer notaDos;
	Escribir "Escribir nota 3°";
	Leer notaTres;
	
	result = (notaUno + notaDos + notaTres) / 3;
	
	Escribir "Resultado:";
	Escribir "El promedio de las 3 notas es: ",result;
FinAlgoritmo