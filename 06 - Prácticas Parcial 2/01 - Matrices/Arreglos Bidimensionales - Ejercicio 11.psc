ALGORITMO Ejercicio11
	DEFINIR matriz, filasColumnas COMO ENTERO;
	DEFINIR valorUsuario COMO ENTERO;
	DEFINIR i, j, k COMO ENTERO;
	DEFINIR ingresoValido COMO LOGICO;
	DEFINIR minkm, maxkm COMO ENTERO;
	DEFINIR arreglo, n COMO ENTERO;
	DEFINIR amplitud, maxAmplitud, ciudadMaxAmplitud COMO ENTERO;
	filasColumnas <- 4;
	n <- filasColumnas;
	DIMENSION arreglo[n];
	DIMENSION matriz[filasColumnas, filasColumnas];
	PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			SI (i = 3 Y i = j) ENTONCES
				ESCRIBIR "PUNTO 1 (CARGA DE LA MATRIZ)";
			SINO
				//matriz[i, j] <- ALEATORIO(0, 300);
				LEER matriz[i, j];
			FINSI			
		FINPARA
	FINPARA
	HACER
		ESCRIBIR "Ingrese el kilómetro para la posición final (fila 4, columna 4) [0 a 300]:";
		LEER valorUsuario;
		ingresoValido <- (valorUsuario >= 0) Y (valorUsuario <= 300); 
		SI NO(ingresoValido) ENTONCES
			ESCRIBIR "ERROR: el valor debe estar comprendido entre 0 y 300.";
		FINSI
	HASTA QUE (ingresoValido)
	SI (ingresoValido) ENTONCES
		matriz[3, 3] <- valorUsuario;
		ESCRIBIR "Matriz de kilómetros resultante (columnas = ciudades):";
		PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz[i, j], "  ";
			FINPARA
			ESCRIBIR "";
		FINPARA
		ESCRIBIR "PUNTO 2 (DETERMINACIÓN DE EXTREMOS POR CIUDAD)";
		k <- 0;
		PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
				SI (i = 0) ENTONCES
					minkm <- matriz[i, j];
					maxkm <- matriz[i, j];
				SINO
					SI (minkm > matriz[i, j]) ENTONCES
						minkm <- matriz[i, j];
					FINSI	
					SI (maxkm < matriz[i, j]) ENTONCES
						maxkm <- matriz[i, j];
					FINSI
				FINSI
			FINPARA
			amplitud <- maxkm - minkm;
			arreglo[j] <- amplitud;
			ESCRIBIR "Ciudad ", (j + 1), " -> kilómetro mínimo: ", minkm, ", kilómetro máximo: ", maxkm, "."; 
		FINPARA
		ESCRIBIR "PUNTO 3 (CÁLCULO DE AMPLITUDES POR CIUDAD)";
		PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
				ESCRIBIR "Ciudad ", (i + 1), " -> amplitud (max-min):", arreglo[i], ".";
		FINPARA
		ESCRIBIR "PUNTO 4 (CIUDAD CON MAYOR AMPLITUD ENTRE SUS PUEBLOS)";
		PARA i <- 0 HASTA (filasColumnas - 2) CON PASO 1 HACER
			PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
				amplitud
			FINPARA
		FINPARA
		ESCRIBIR "La ciudad con mayor amplitud entre todos sus pueblos es la ciudad ", ciudadMaxAmplitud;
		ESCRIBIR " (considerada la más grande) con una amplitud intra-pueblos de  
	FINSI
FINALGORITMO