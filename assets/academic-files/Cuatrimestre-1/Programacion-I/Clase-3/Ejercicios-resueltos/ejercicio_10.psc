Algoritmo ejercicio_10
	// Ejercicio 10° - Se desea calcular su sueldo mensual para lo cual sabe que se aplica la siguiente fórmula:
	// Sueldo Neto + Salario Familiar + Antigüedad
	// El salario familiar es un monto fijo por cada hijo (fijar uno a elección), y la antigüedad un monto fijo por
	// cada año trabajado.
	Definir salaryNet, salaryFam, antique, salaryMonthly, salaryAnnual, hijos Como Real;
	salaryFam = 91218;
	salaryAnnual = 20070925;
	
	Escribir "Insertar sueldo neto";
	Leer salaryNet;
	Escribir "Insertar antigüedad";
	Leer antique;
	Escribir "Insertar hijos";
	Leer hijos;
	
	salaryMonthly = salaryNet + (salaryFam * hijos) + (antique * salaryAnnual);
	Escribir "Sueldo mensual: ",salaryMonthly;
FinAlgoritmo