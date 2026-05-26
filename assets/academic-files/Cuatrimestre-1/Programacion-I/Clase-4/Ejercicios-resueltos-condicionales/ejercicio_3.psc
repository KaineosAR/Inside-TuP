Algoritmo ejercicio_3
	// Realizar un programa que informe el precio a abonar total de una cuenta con dos productos.
	// Si la suma de ambos productos es mayor a  $ 10.000, el producto de menor valor debe tener un 30% de descuento.
	Definir productOne, productTwo, total, newTotal Como Real;
	
	Escribir "Ingresar el precio del primer producto";
	Leer productOne;
	Escribir "Ingresar el precio del segundo producto";
	Leer productTwo;
	Escribir "Si la suma de ambos precios es mayor a 10000 se le va a aplicar un descuento del 30% al producto de menor valor.";
	
	total = productOne + productTwo;
	Si total <= 10000 Entonces
		Escribir "No hay descuento, total a abonar menor o igual a 10000.";
		Escribir "El total a abonar es de: $",total; 
	SiNo
		Escribir "Hay descuento, total a abonar mayor a 10000.";
		Si productOne > productTwo Entonces
			newTotal = productOne + (productTwo * 0.70);
			Escribir "Descuento de 30% aplicado al precio del segundo producto.";
		SiNo
			newTotal = productTwo + (productOne * 0.70);
			Escribir "Descuento de 30% aplicado al precio del primer producto.";
		FinSi
		Escribir "Total a abonar: $",newTotal;
	FinSi
FinAlgoritmo