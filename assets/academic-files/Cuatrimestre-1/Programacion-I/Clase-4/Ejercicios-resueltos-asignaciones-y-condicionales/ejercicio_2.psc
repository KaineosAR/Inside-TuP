Algoritmo ejercicio_2
	// Dado tres valores determinar e imprimir una leyenda informando si "Forman triangulo" o "No forman triangulo".
    // Tener en cuenta el teorema de desigualdad de los triángulos: En todo triángulo la suma de 
	// las longitudes de dos lados cualesquiera es siempre mayor a la longitud del lado restante.
	Definir sideOne, sideTwo, sideThree, total Como Real;
	
	Escribir "Ingresar lado uno";
	Leer sideOne;
	Escribir "Ingresar lado dos";
	Leer sideTwo;
	Escribir "Ingresar lado tres";
	Leer sideThree;
	
	Si ((sideOne + sideTwo) > sideThree) Y ((sideOne + sideThree) > sideTwo) Y ((sideThree + sideTwo) > sideOne) Entonces
		Escribir "Forman triángulo";
	SiNo
		Escribir "No forman triángulo";
	FinSi
FinAlgoritmo