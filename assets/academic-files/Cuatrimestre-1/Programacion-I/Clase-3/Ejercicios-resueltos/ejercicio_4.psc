Algoritmo ejercicio_4
	// Ejercicio 4° - Dado el radio de un círculo calcular e informar:
	// a) El área del círculo (se obtiene multiplicando el radio al cuadrado por el número Pi)
	// b) El perímetro del círculo (se obtiene multiplicando el diámetro por el número Pi)
	Definir radio, diame Como Entero; // Podrían ser Reales, posible optimización
	Definir area, perim Como Real;
	
	Escribir "Ingresar radio del círculo";
	Leer radio;
	Escribir "Ingresar diámetro del círculo";
	Leer diame;
	
	area = PI * radio^2;
	perim = PI * diame;
	
	Escribir "Resutados:";
	Escribir "Área = ",area;
	Escribir "Perímetro = ",perim;
FinAlgoritmo