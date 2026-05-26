Algoritmo ejercicio_5
	// Realizar un programa que solicite dos números al usuario.
    // Luego que le consulte qué operación desea realizar sobre esos números, pudiendo ser: 
    // 1: Suma, 2: Resta, 3: Multiplicación y 4: División. 
	// En función de la selección del usuario, se debe devolver el resultado. 
	// Si el usuario elige otra opción, se debe dar el mensaje de que la opción no es válida.
	Definir numOne, numTwo, total Como Real;
	Definir operation Como Caracter;
	Definir flag Como Logico;
	flag = Verdadero;
	
	Escribir "Ingrese el primer número";
	Leer numOne;
	Escribir "Ingrese el segundo número";
	Leer numTwo;
	Escribir "Ingrese operador (+, -, *, /)";
	Leer operation;
	
	Segun operation Hacer
		"+":
			total = numOne + numTwo;
			Escribir "Operación elegida: Suma";
		"-":
			total = numOne - numTwo;
			Escribir "Operación elegida: Resta";
		"*":
			total = numOne * numTwo;
			Escribir "Operación elegida: Multiplicación";
		"/":
			Si numTwo == 0 Entonces
				flag = Falso;
				Escribir "Operación no válida, el segundo número ingresado es 0 y PSeInt no lo permite";
			SiNo
				total = numOne / numTwo;
				Escribir "Operación elegida: División";
			FinSi
		De Otro Modo:
			flag = Falso;
			Escribir "Operación no válida";
	Fin Segun
	
	Si flag Entonces
		Escribir "Resultado: ",total;
	FinSi
FinAlgoritmo