// Estructura Si, Ejercicio 9
Algoritmo practica_XV_orden_ascendente
	Definir a Como Entero;
	Definir b Como Entero;
	Definir c Como Entero;
	Definir aux Como Entero;
	Escribir "Ingrese el valor de a:";
	Leer a;
	Escribir "Ingrese el valor de b:";
	Leer b;
	Escribir "Ingrese el valor de c:";
	Leer c;
	Si (a > b) Entonces
		aux <- a;
		a <- b;
		b <- aux;
	FinSi
	Si (a > c) Entonces
		aux <- a;
		a <- c;
		c <- aux;
	FinSi
	Si (b > c) Entonces
		aux <- c;
		c <- b;
		b <- aux;
	FinSi
	Escribir a, "-", b, "-", c;
FinAlgoritmo
	