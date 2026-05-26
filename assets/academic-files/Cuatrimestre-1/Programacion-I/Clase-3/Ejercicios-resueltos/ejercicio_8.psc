Algoritmo ejercicio_8
	// Ejercicio 8° - Dada una cantidad de segundos informar por pantalla el mismo valor pero en horas.
	// Ejemplo: 4860000 milisegundos son 1,35 horas
	// Fórmula = Milisegundos / 3.600.000;
	Definir seg Como Real;
	
	Escribir "Ingresar segundos";
	Leer seg;
	
	seg = seg / 360000;
	
	Escribir "Resultado en horas: ",seg;
FinAlgoritmo