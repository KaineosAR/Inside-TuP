Algoritmo ejercicio_4
	// Número de la suerte: Realizar un algoritmo que evalúe si un número ingresado por el usuario es número de la suerte. 
	// Para ser número de la suerte, el número debe ser positivo, impar, y múltiplo de 3. 
	// También si el número es 20 o 80 es número de la suerte. 
	// Se solicita que esta lógica se encuentre en un solo condicional.
	Definir num Como Entero;
	
	Escribir "Ingresar número entero"; // El módulo (%) no acepta laburar con números reales
	Leer num;
	
	Si ((num > 0) Y (num % 2 <> 0) Y (num % 3 = 0)) O (num == 20) O (num == 80) Entonces
		Escribir "El número ingresado es de la suerte: ",num;
	SiNo
		Escribir "El número ingresado no es de la suerte: ",num;
	FinSi
FinAlgoritmo