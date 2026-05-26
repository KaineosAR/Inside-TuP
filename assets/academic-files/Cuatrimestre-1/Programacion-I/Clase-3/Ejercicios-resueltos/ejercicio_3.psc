Algoritmo ejercicio_3
	// Ejercicio 3° - Dada la longitud de un lado de un cuadrado calcular e informar por pantalla: 
	// a) El perímetro del cuadrado - P = lado + l + l + l o 4 * l
	// b) El área del cuadrado - A = lado * lado o l**2
	Definir perim, area Como Entero;
	
	Escribir "Ingresar lado del cuadrado";
	Leer perim;
	
	// area arriba pq si la mando abajo uso el valor de perim * 4 y no el original
	area = perim * perim;
	perim = perim * 4;
	
	Escribir "Resultados:";
	Escribir "Perímetro = ",perim;
	Escribir "Área = ",area;
FinAlgoritmo