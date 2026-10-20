// Práctica Arreglos bidimensionales - Ejercicio 5
// Diseñar el algoritmo para multiplicar matrices.
ALGORITMO Ejercicio5
	DEFINIR matriz_a, matriz_b, matriz_c COMO ENTERO;
	DEFINIR filas_a, columnas_a, filas_b, columnas_b COMO ENTERO;
	DEFINIR filas_c, columnas_c COMO ENTERO;
	DEFINIR limite COMO ENTERO;
	DEFINIR i, j, k COMO ENTERO;
	DEFINIR validezTamanio, posibleMultiplicar COMO LOGICO;
	HACER
		ESCRIBIR SIN SALTAR "Ingrese la cantidad de filas que tendrá la matriz A:";
		LEER filas_a;
		ESCRIBIR SIN SALTAR "Ingrese la cantidad de columnas que tendrá la matriz A:";
		LEER columnas_a;
		validezTamanio <- (filas_a > 0) Y (columnas_a > 0);
	HASTA QUE (validezTamanio)
	HACER
		ESCRIBIR SIN SALTAR "Ingrese la cantidad de filas que tendrá la matriz B:";
		LEER filas_b;
		ESCRIBIR SIN SALTAR "Ingrese la cantidad de columnas que tendrá la matriz B:";
		LEER columnas_b;
		validezTamanio <- (filas_b > 0) Y (columnas_b > 0);
	HASTA QUE (validezTamanio)
	posibleMultiplicar <- (columnas_a = filas_b);
	SI (posibleMultiplicar) ENTONCES
		DIMENSION matriz_a[filas_a, columnas_a];
		DIMENSION matriz_b[filas_b, columnas_b];
		DIMENSION matriz_c[filas_a, columnas_b];
		PARA i <- 0 HASTA (filas_a - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas_a - 1) CON PASO 1 HACER
				matriz_a[i, j] <- ALEATORIO(-20, 20);
			FINPARA
		FINPARA
		ESCRIBIR "Matriz A:";
		PARA i <- 0 HASTA (filas_a - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas_a - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_a[i, j], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
		PARA i <- 0 HASTA (filas_b - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas_b - 1) CON PASO 1 HACER
				matriz_b[i, j] <- ALEATORIO(-20, 20);
			FINPARA
		FINPARA
		ESCRIBIR "Matriz B:";
		PARA i <- 0 HASTA (filas_b - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas_b - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_b[i, j], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
		PARA i <- 0 HASTA (filas_a - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas_b - 1) CON PASO 1 HACER
				matriz_c[i, j] <- 0;
			FINPARA
		FINPARA
		limite <- TRUNC((columnas_a + filas_b) / 2);
		PARA i <- 0 HASTA (filas_a - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas_b - 1) CON PASO 1 HACER
				PARA k <- 0 HASTA (limite - 1) CON PASO 1 HACER
					matriz_c[i, j] <- matriz_c[i, j] + (matriz_a[i, k] * matriz_b[k, j]);
				FINPARA
			FINPARA
		FINPARA
		ESCRIBIR "Matriz Resultado:";
		PARA i <- 0 HASTA (filas_a - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas_b - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_c[i, j], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
	SINO
		ESCRIBIR "No es posible multiplicar: La cantidad de columnas de A es distinta de la cantidad de filas de B.";
	FINSI
FINALGORITMO