Algoritmo ejercicio_1
	// Realizar un programa que informe si un número es POSITIVO o NEGATIVO.
	definir num Como Real;
	
	Escribir "Ingrese un número";
	Leer num;
	
	Si num > 0 Entonces
		Escribir "El número ingresado es positivo: ",num;
	SiNo
		Si num < 0 Entonces
			Escribir "El número ingresado es negativo: ",num;
		Sino
			Escribir "El número ingresado no es ni positivo ni negativo, es: ", num;
		FinSi
	Fin Si
FinAlgoritmo