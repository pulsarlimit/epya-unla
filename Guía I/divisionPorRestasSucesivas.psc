// Estructura Mientras, Ejercicio 3
Algoritmo divisionPorRestasSucesivas
	Definir dividendo Como Entero;
	Definir divisor Como Entero;
	Definir cociente Como Entero;
	Definir dividendoAbsoluto Como Entero;
	Definir divisorAbsoluto Como Entero;
	
	Escribir "Ingrese el dividendo:";
	Leer dividendo;
	Escribir "Ingrese el divisor (divisor != 0):";
	Leer divisor;
	
	Mientras (divisor = 0) Hacer
		Escribir "Ingrese el divisor (divisor != 0):";
		Leer divisor;
	FinMientras
	
	dividendoAbsoluto <- ABS(dividendo);
	divisorAbsoluto <- ABS(divisor);
	cociente <- 0;
	
	Mientras (dividendoAbsoluto >= divisorAbsoluto) Hacer
		dividendoAbsoluto <- dividendoAbsoluto - divisorAbsoluto;
		cociente <- cociente + 1;
	FinMientras
	
	Si (dividendo = 0) Entonces
		Escribir "Cero dividido cualquier número que no sea 0 (R - {0}), da 0.";
	FinSi
	Si (divisor < 0 Y dividendo < 0) Entonces
		Escribir dividendo, " dividido ", divisor, " da: ", cociente, " con ", dividendoAbsoluto, " de resto";
	FinSi
	Si (divisor < 0 Y dividendo > 0) Entonces
		Escribir dividendo, " dividido ", divisor, " da: ", -cociente, " con ", -dividendoAbsoluto, " de resto";
	FinSi
	Si (divisor > 0 Y dividendo > 0) Entonces
		Escribir dividendo, " dividido ", divisor, " da: ", cociente, " con ", dividendoAbsoluto, " de resto";
	FinSi
	Si (divisor > 0 Y dividendo < 0) Entonces
		Escribir dividendo, " dividido ", divisor, " da: ", -cociente, " con ", dividendoAbsoluto, " de resto";
	FinSi
FinAlgoritmo