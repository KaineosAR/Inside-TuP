Algoritmo ejercicio_2
	// Realizar un programa que informe si un número es PAR o IMPAR. Precondición:No se ingresa Cero.
	Definir num Como Real;
	
	Escribir "Ingrese un número que no sea cero";
	Leer num;
	
	Si num == 0 Entonces
		Escribir "Número invalido: ", num;
	SiNo
		Si num % 2 = 0 Entonces
			Escribir "El número ingresado es par: ",num;
		SiNo
			Escribir "El número ingresado es impar: ",num;
		FinSi
	FinSi
FinAlgoritmo