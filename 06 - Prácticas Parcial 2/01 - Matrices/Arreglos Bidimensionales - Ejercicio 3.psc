// Práctica Arreglos bidimensionales - Ejercicio 3
// Diseñar un algoritmo para multiplicar un escalar por una matriz.
ALGORITMO Ejercicio3
	DEFINIR matriz_a, matriz_b COMO ENTERO;
	DEFINIR filas, columnas COMO ENTERO;
	DEFINIR escalar COMO ENTERO;
	DEFINIR i, j COMO ENTERO;
	DEFINIR validezTamanio COMO LOGICO;
	HACER
		ESCRIBIR SIN SALTAR "Ingrese la cantidad de filas que tendrá la matriz original:";
		LEER filas;
		ESCRIBIR SIN SALTAR "Ingrese la cantidad de columnas que tendrá la matriz original:";
		LEER columnas;
		validezTamanio <- (filas > 0) Y (columnas > 0);
	HASTA QUE (validezTamanio)
	SI (validezTamanio) ENTONCES
		DIMENSION matriz_a[filas, columnas];
		DIMENSION matriz_b[filas, columnas];
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
				matriz_a[i, j] <- ALEATORIO(-20, 20);
			FINPARA
		FINPARA
		ESCRIBIR "Matriz Original:";
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_a[i, j], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
		ESCRIBIR SIN SALTAR "Ingrese el escalar por el que se multiplicará la matriz:";
		LEER escalar;
			PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
				PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
					matriz_b[i, j] <- matriz_a[i, j] * escalar;
				FINPARA
			FINPARA
			SI (escalar <> 0) ENTONCES
				ESCRIBIR "Matriz multiplicada por ", escalar, ":";
			SINO
				ESCRIBIR "Matriz nula:";
			FINSI
			PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
				PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
					ESCRIBIR SIN SALTAR matriz_b[i, j], " ";
				FINPARA
				ESCRIBIR "";
			FINPARA
	FINSI
FINALGORITMO