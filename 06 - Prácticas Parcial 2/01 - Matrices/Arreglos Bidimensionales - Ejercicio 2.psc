// Práctica Arreglos bidimensionales - Ejercicio 2
// Diseñar el algoritmo para obtener la matriz sino. La matriz signo es otra matriz
// que se corresponde unívocamente tal que:
// A(i, j) > 0 -> S(i, j) = 1;
// A(i, j) < 0 -> S(i, j) = -1;
// A(i, j) = 0 -> S(i, j) = 0;
ALGORITMO Ejercicio2
	DEFINIR matriz_a, matriz_s COMO ENTERO;
	DEFINIR filas, columnas COMO ENTERO;
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
		DIMENSION matriz_s[filas, columnas];
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
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
				SI (matriz_a[i, j] <> 0) ENTONCES
					SI (matriz_a[i, j] > 0) ENTONCES
						matriz_s[i, j] <- 1;
					SINO
						matriz_s[i, j] <- -1;
					FINSI
				SINO
						matriz_s[i, j] <- 0;
				FINSI
			FINPARA
		FINPARA
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_s[i, j], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
	FINSI		
FINALGORITMO