Algoritmo ejercicio_5
	// Ejercicio 5° - Dados una terna de números naturales que representan al día, al mes y al año de una determinada
	// fecha informarla como un solo número natural de 8 dígitos con la forma (AAAAMMDD).
	// Fórmula: Año * 10000 + Mes * 100 + Día
	Definir dia, mes, año, final Como Entero;
	
	Escribir "Introducir día";
	Leer dia;
	Escribir "Introducir mes";
	Leer mes;
	Escribir "Introducir año";
	Leer año;
	
	final = (año * 10000) + (mes * 100) + dia;
	
	Escribir "Resultado en AAAAMMDD: ",final;
FinAlgoritmo