ALGORITMO SELECTSORT
	// Variables
	DEFINIR array, n COMO ENTERO;
	DEFINIR i, j COMO ENTERO;
	DEFINIR min_element, swap COMO ENTERO;
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
	PARA i <- 0 HASTA (n - 2) CON PASO 1 HACER
		min_element <- i;
		PARA j <- (i + 1) HASTA (n - 1) CON PASO 1 HACER
			SI (array[i] > array[j]) ENTONCES
				min_element <- j;
				swap <- array[i];
				array[i] <- array[j];
				array[j] <- swap;
			FINSI
		FINPARA
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
		SI (array[i] > 9) O (array[i] < 0) ENTONCES
			ESCRIBIR SIN SALTAR "|";
			ESCRIBIR SIN SALTAR array[i];
		SINO
			ESCRIBIR SIN SALTAR "|0";
			ESCRIBIR SIN SALTAR array[i];
		FINSI
	FINPARA
	ESCRIBIR "|";			
FINALGORITMO