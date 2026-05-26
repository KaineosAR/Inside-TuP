Algoritmo ejercicio_1
	// Solicitar al usuario que ingrese 3 notas y calcular el promedio e informarlo por pantalla de la siguiente forma:   
	// Si es menor a 4, mostrar Insuficiente  
	// Si está entre 4 y 6 mostrar Regular  
	// Si está entre 6 y 8 mostrar Bien  
	// Si está entre 8 y 9 mostrar Muy Bien  
	// Si está entre 9 y 10 mostrar Sobresaliente
	Definir noteOne, noteTwo, noteThree, average Como Real;
	Definir qualification Como Caracter;
	
	Escribir "Ingresar nota uno (1-10)";
	Leer noteOne;
	Escribir "Ingresar nota dos (1-10)";
	Leer noteTwo;
	Escribir "Ingresar nota tres (1-10)";
	Leer noteThree;
	
	Si (noteOne >= 1 Y noteOne <= 10) Y (noteTwo >= 1 Y noteTwo <= 10) Y (noteThree >= 1 Y noteThree <= 10) Entonces
		average = Redon((noteOne + noteTwo + noteThree) / 3);
		Si average < 4 Entonces
			qualification = "Insuficiente";
		SiNo
			Si average < 6 Entonces
				qualification = "Regular";
			SiNo
				Si average < 8 Entonces
					qualification = "Bien";
				SiNo
					Si average < 9 Entonces
						qualification = "Muy bien";
					SiNo
						qualification = "Sobresaliente";
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "Calificación: ",qualification;
		Escribir "Promedio: ",average;
		
	SiNo
		Escribir "Alguna o todas las notas ingresadas son inválidas";
	FinSi	
FinAlgoritmo