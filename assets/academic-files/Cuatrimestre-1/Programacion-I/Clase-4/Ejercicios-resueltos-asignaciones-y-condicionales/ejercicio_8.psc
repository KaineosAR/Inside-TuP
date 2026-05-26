Algoritmo ejercicio_8
	// Según la edad de un socio ingresada, mostrar por pantalla alguna de las siguientes leyendas:
	// menor si la edad es menor o igual a 12   
	// cadete si la edad está comprendida entre 13 y 18  
	// juvenil si la edad es mayor que 18 y no supera los 26  
	// mayor en el caso que no cumpla ninguna de las condiciones anteriores
	Definir edad Como Entero;
	Definir msg Como Caracter;
	
	Escribir "Ingresar edad";
	Leer edad;
	
	Si edad <= 12 Entonces 
		msg = "menor";
	SiNo
		Si edad <= 18 Entonces
			msg = "cadete";
		SiNo
			Si edad <= 26 Entonces
				msg = "juvenil";
			SiNo
				msg = "mayor";
			FinSi
		FinSi
	FinSi
	
	Escribir "La persona es: ",msg;
FinAlgoritmo