// Práctica Estructura Mientras, Ejercicio 1
Algoritmo Ejercicio1
	Definir num_ingresado Como Entero;
	Definir min, max Como Entero;
	Definir entrada_valida Como Logico;
	Escribir "Ingrese números del 1 al 10, puede parar el programa ingresando -1:";
	Hacer
		Leer num_ingresado;
		Si (num_ingresado < -1 O num_ingresado > 10 O num_ingresado = 0) Entonces
			Escribir "El rango de números permitidos es del 1 al 10";
			entrada_valida <- falso;
		SiNo
			entrada_valida <- verdadero;
		FinSi
	Hasta Que (entrada_valida)
	Si (num_ingresado <> -1) Entonces
		min <- num_ingresado;
		max <- num_ingresado;
	SiNo
		min <- 0;
		max <- 0;
	FinSi
	Mientras (num_ingresado <> -1) Hacer
		Si (min > num_ingresado) Entonces
			min <- num_ingresado;
		FinSi
		Si (max < num_ingresado) Entonces
			max <- num_ingresado;
		FinSi
		Hacer
			Leer num_ingresado;
			Si (num_ingresado < -1 O num_ingresado > 10 O num_ingresado = 0) Entonces
				Escribir "El rango de números permitidos es del 1 al 10";
				entrada_valida <- Falso;
			SiNo
				entrada_valida <- Verdadero;
			FinSi
		Hasta Que (entrada_valida)
	FinMientras
	Borrar Pantalla;
	Escribir "El número más pequeño ingresado fue: ", min;
	Escribir "El número más grande ingresado fue: ", max;
FinAlgoritmo
