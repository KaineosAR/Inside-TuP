Algoritmo ejercicio_6
	// Ejercicio 6° - Dada un número entero de la forma (AAAAMMDD), que representa una fecha valida mostrar
	// el día, mes y año que representa.
	Definir fecha, dia, mes, año Como Entero;
	
	Escribir "Introducir AAAAMMDD";
	Leer fecha;
	
	año = trunc(fecha / 10000);
	mes = trunc((fecha % 10000) / 100);
	dia = fecha % 100;
	
	Escribir "Resultados:";
	Escribir "Día: ",dia;
	Escribir "Mes: ",mes;
	Escribir "Año: ",año;
FinAlgoritmo