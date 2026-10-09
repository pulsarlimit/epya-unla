Algoritmo selectsort
	DEFINIR array, n, i, j COMO ENTERO;
	DEFINIR tries COMO ENTERO;
	DEFINIR ar_index, ar_swap COMO ENTERO;
	DEFINIR valid_size, has_tries_left COMO LOGICO;
	tries <- 3;
	HACER
		ESCRIBIR SIN SALTAR "Dimensión del vector? ";
		LEER n;
		valid_size <- (n > 0);
		SI NO(valid_size) ENTONCES
			tries <- tries - 1;
			has_tries_left <- (tries > 0);
			ESCRIBIR "ERROR: Usted ingreso una dimensión invalida para el vector.";
			SI (has_tries_left) ENTONCES
				ESCRIBIR "Le quedan ", tries, " intentos.";
			SINO
				ESCRIBIR "Ya no le quedan intentos.";
			FINSI
		FINSI
	HASTA QUE (valid_size O NO(has_tries_left))
	SI (valid_size) ENTONCES
		DIMENSION array[n];
		PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
			ESCRIBIR SIN SALTAR "vector[", i, "]? ";
			LEER array[i];
		FINPARA
		ESCRIBIR SIN SALTAR "Entrada: Vector ";
		PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
			SI (i = 0) ENTONCES
				ESCRIBIR SIN SALTAR "{", array[i], ", ";
			SINO
				SI (i < (n - 1)) ENTONCES
					ESCRIBIR SIN SALTAR array[i], ", ";
				SINO
					ESCRIBIR array[i], "}";
				FINSI
			FINSI
		FINPARA
		PARA i <- 0 HASTA (n - 2) CON PASO 1 HACER
			ar_index <- i;
			PARA j <- (i + 1) HASTA (n - 1) CON PASO 1 HACER
				SI (array[i] > array[j]) ENTONCES
					ESCRIBIR "Cambio (", array[i], ", ", array[j], ")";
					ar_index <- j;
					ar_swap <- array[i];
					array[i] <- array[j];
					array[j] <- ar_swap;
				FINSI
			FINPARA
			ESCRIBIR SIN SALTAR "Vector después de la pasada ", (i + 1), " ";
			ESCRIBIR SIN SALTAR "está ordenado ascendente hasta ||: { ";
			PARA j <- 0 HASTA (n - 1) CON PASO 1 HACER
				SI (j < (n - 1)) ENTONCES
					SI (array[j] = array[i]) ENTONCES
						ESCRIBIR SIN SALTAR array[j], ",||";
					SINO
						ESCRIBIR SIN SALTAR array[j], ",";
					FINSI
				SINO
						ESCRIBIR array[j], "}";
				FINSI
			FINPARA
		FINPARA
		ESCRIBIR SIN SALTAR "Vector ordenado ascendente por Selección: ";
		PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
			SI (i = 0) ENTONCES
				ESCRIBIR SIN SALTAR "{", array[i], ", ";
			SINO
				SI (i < (n - 1)) ENTONCES
					ESCRIBIR SIN SALTAR array[i], ", ";
				SINO
					ESCRIBIR array[i], "}";
				FINSI
			FINSI
		FINPARA
	SINO
		ESCRIBIR "-- ERROR: No ingreso una dimensión valida, se termina el programa. -- ";
	FINSI
FINALGORITMO