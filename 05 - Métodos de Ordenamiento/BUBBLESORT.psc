ALGORITMO BUBBLESORT
	DEFINIR array, n COMO ENTERO;
	DEFINIR i, j COMO ENTERO;
	DEFINIR swap, swaps_made COMO ENTERO;
	DEFINIR changes COMO LOGICO;
	// Input
	ESCRIBIR SIN SALTAR "Dimensión del vector? ";
	LEER n;
	DIMENSION array[n];
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR "vector[", i, "]? ";
		LEER array[i];
	FINPARA
	// Output
	ESCRIBIR "|-------Vector-------|";
	ESCRIBIR SIN SALTAR "|-i";
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR "|";
		ESCRIBIR SIN SALTAR "0";
		ESCRIBIR SIN SALTAR i;
	FINPARA
	ESCRIBIR "|";
	ESCRIBIR SIN SALTAR "|-v";
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		SI (array[i] > 9) O (array[i] < 0) Entonces
			ESCRIBIR SIN SALTAR "|";
			ESCRIBIR SIN SALTAR array[i];
		SINO
			ESCRIBIR SIN SALTAR "|";
			ESCRIBIR SIN SALTAR "0";
			ESCRIBIR SIN SALTAR array[i];
		FINSI
	FINPARA
	ESCRIBIR "|";
	// Processing
	changes <- VERDADERO;
	i <- 1;
	MIENTRAS (i <= (n - 1)) Y (changes) HACER
		swaps_made <- 0;
		PARA j <- 0 HASTA (n - i - 1) CON PASO 1 HACER
			SI (array[j] > array[j + 1]) ENTONCES
				swap <- array[j + 1];
				array[j + 1] <- array[j];
				array[j] <- swap;
				swaps_made <- swaps_made + 1;
			FINSI
		FINPARA
		SI (swaps_made = 0) ENTONCES
			changes <- FALSO;
		FINSI
	FINMIENTRAS
	// Processed Output
	ESCRIBIR "|-------Vector-------|";
	ESCRIBIR SIN SALTAR "|-i";
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR "|";
		ESCRIBIR SIN SALTAR "0";
		ESCRIBIR SIN SALTAR i;
	FINPARA
	ESCRIBIR "|";
	ESCRIBIR SIN SALTAR "|-v";
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		SI (array[i] > 9) O (array[i] < 0) Entonces
			ESCRIBIR SIN SALTAR "|";
			ESCRIBIR SIN SALTAR array[i];
		SINO
			ESCRIBIR SIN SALTAR "|";
			ESCRIBIR SIN SALTAR "0";
			ESCRIBIR SIN SALTAR array[i];
		FINSI
	FINPARA
	ESCRIBIR "|";
FINALGORITMO