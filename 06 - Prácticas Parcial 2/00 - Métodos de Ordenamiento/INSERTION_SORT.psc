ALGORITMO INSERTION_SORT
	DEFINIR array, n COMO ENTERO;
	DEFINIR i, j COMO ENTERO;
	DEFINIR key COMO ENTERO;
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
		ESCRIBIR SIN SALTAR "|0";
		ESCRIBIR SIN SALTAR i;
	FINPARA
	ESCRIBIR "|";
	ESCRIBIR SIN SALTAR "|-v";
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		SI (array[i] > 9) O (array[i] < 0) ENTONCES
			ESCRIBIR SIN SALTAR "|";
			ESCRIBIR SIN SALTAR array[i];
		SINO
			ESCRIBIR SIN SALTAR "|0";
			ESCRIBIR SIN SALTAR array[i];
		FINSI
	FINPARA
	ESCRIBIR "|";
	// Processing
FINALGORITMO