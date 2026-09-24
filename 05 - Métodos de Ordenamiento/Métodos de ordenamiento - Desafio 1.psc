// Métodos de ordenamiento, Desafio 1 - Bubblesort
ALGORITMO Desafio1
	DEFINIR vector, n COMO ENTERO;
	DEFINIR i, j, k COMO ENTERO;
	DEFINIR intento, permuta, sin_cambios COMO ENTERO; intento <- 1;
	DEFINIR dimension_valida, sin_permutaciones COMO LOGICO;
	HACER
		ESCRIBIR SIN SALTAR "Dimensión del vector? "; LEER n;
		SI (n < 1) ENTONCES // No se aceptan dimensiones erróneas
			ESCRIBIR "ERROR: Dimensión menor a 1, le quedan ", (3 - intento), " intentos";
			intento <- intento + 1;
		FINSI
	HASTA QUE (n >= 1) O (intento > 3)
	dimension_valida <- (intento < 3);
	SI (dimension_valida) ENTONCES
		DIMENSION vector[n];
		PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
			ESCRIBIR SIN SALTAR "vector[", i, "]? "; LEER vector[i];
		FINPARA
		ESCRIBIR SIN SALTAR "Entrada: Vector: {";
		PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
			SI (i < (n - 1)) ENTONCES
				ESCRIBIR SIN SALTAR vector[i], ",";
			SINO
				ESCRIBIR vector[i], "}";
			FINSI
		FINPARA
		i <- 0;
		sin_permutaciones <- FALSO;
		MIENTRAS i < (n - 1) Y NO(sin_permutaciones) HACER
			sin_cambios <- 0;
			ESCRIBIR (i + 1), "º Iteración se compara desde la posición ", 0, " hasta la ", (n - 1 - i);
			PARA j <- 0 HASTA (n - 2 - i) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR "Compara el ", (j + 1), "º elemento con el ", j "º ";
				ESCRIBIR SIN SALTAR "Si (", vector[j + 1], "<", vector[j], ") ";
				SI (vector[j] > vector[j + 1]) ENTONCES
					permuta <- vector[j];
					vector[j] <- vector[j + 1];
					vector[j + 1] <- permuta;
					ESCRIBIR "SI entonces Cambio (", vector[j], ",", vector[j + 1], ")";
				SINO
					ESCRIBIR "NO";
					sin_cambios <- sin_cambios + 1;
				FINSI
			FINPARA
			SI (sin_cambios = (n - 1 - i)) ENTONCES
				sin_permutaciones <- VERDADERO;
				ESCRIBIR "No hubo cambios por lo tanto ya está ordenado";
				ESCRIBIR SIN SALTAR "Vector ordenado ascendente por método Burbuja: {";
			SINO
				sin_permutaciones <- FAlSO;
				ESCRIBIR SIN SALTAR "Vector: {";
			FINSI
			PARA k <- 0 HASTA (n - 1) CON PASO 1 HACER
				SI (k < (n - 1)) ENTONCES
					ESCRIBIR SIN SALTAR vector[k], ",";
				SINO
					ESCRIBIR vector[k], "}";
				FINSI
			FINPARA
			i <- i + 1;
		FINMIENTRAS
	SINO
		ESCRIBIR "-- ERROR, FIN DEL PROGRAMA --";
	FINSI
FINALGORITMO