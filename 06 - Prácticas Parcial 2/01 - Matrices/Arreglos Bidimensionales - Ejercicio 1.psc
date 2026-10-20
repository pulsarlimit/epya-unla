// Práctica Arreglos bidimensionales - Ejercicio 1
// Diseñar el algoritmo para obtener la matriz transpuesta.
// Sea A una matriz de dimensión n*m, denotamos al elemento de la fila i y columna j como A(i, j), siendo i < m y j < n.
// Entonces, se define la matriz traspuesta de A como la matriz T de dimensión mxn tal que T(j, i) = A(i, j) , siendo i < m y j < n.
ALGORITMO Ejercicio1
	DEFINIR matriz_a, matriz_t COMO ENTERO;
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
		DIMENSION matriz_t[columnas, filas];
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
				matriz_a[i, j] <- ALEATORIO(-20,20);
			FINPARA
		FINPARA
		ESCRIBIR "Matriz Original:";
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_a[i,j], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
		ESCRIBIR "Matriz Transpuesta:";
		PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
			PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
				matriz_t[j, i] <- matriz_a[i, j];
			FINPARA
		FINPARA
		PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
			PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_t[j, i], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
	FINSI
FINALGORITMO