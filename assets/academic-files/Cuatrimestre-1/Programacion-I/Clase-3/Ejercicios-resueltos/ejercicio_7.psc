Algoritmo ejercicio_7
	// Ejercicio 7° - A partir de un valor entero ingresado por teclado, se pide informar:
	// a) La quinta parte de dicho valor
	// b) El resto de la división por 5
	// c) La séptima parte del resultado del punto a)
	Definir num, quinta, resto, septima Como Real;
	
	Escribir "Ingresar número entero";
	Leer num;
	quinta = num / 5;
	resto = num % 5;
	septima = quinta / 7;
	
	Escribir "Resultados:";
	Escribir "Quinta parte: ",quinta;
	Escribir "Resto: ",resto;
	Escribir "Séptima parte: ",septima;
FinAlgoritmo