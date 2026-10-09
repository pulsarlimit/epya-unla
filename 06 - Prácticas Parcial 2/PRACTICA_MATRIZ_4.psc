ALGORITMO PRACTICA_MATRIZ_4
	// Variables
	DEFINIR matrix, n, m COMO ENTERO;
	DEFINIR array, l COMO ENTERO;
	DEFINIR array2, array3, array4 COMO ENTERO;
	DEFINIR h, i, j, k COMO ENTERO;
	DEFINIR swap, jump COMO ENTERO;
	DEFINIR index COMO ENTERO;
	DEFINIR ordered COMO LOGICO;
	// Input
	n <- 5; // Rows
	m <- 5; // Columns
	l <- (n * m); // Indexes
	DIMENSION matrix[n, m];
	DIMENSION array[l];
	DIMENSION array2[l];
	DIMENSION array3[l];
	DIMENSION array4[l];
	PARA h <- 0 HASTA (n - 1) CON PASO 1 Hacer
		PARA i <- 0 HASTA (m - 1) CON PASO 1 Hacer
			matrix[h, i] <- ALEATORIO(0, 50);
		FINPARA
	FINPARA
	// Output
	ESCRIBIR "Matriz:";
	PARA h <- 0 HASTA (n - 1) CON PASO 1 Hacer
		PARA i <- 0 HASTA (m - 1) CON PASO 1 Hacer
			ESCRIBIR SIN SALTAR matrix[h, i], " ";
		FINPARA
		ESCRIBIR "";
	FINPARA
	// Processing
	j <- 0;
	PARA h <- 0 HASTA (n - 1) CON PASO 1 HACER
		PARA i <- 0 HASTA (m - 1) CON PASO 1 HACER
			array[j] <- matrix[h, i];
			array2[j] <- matrix[h, i];
			array3[j] <- matrix[h, i];
			array4[j] <- matrix[h, i];
			j <- j + 1;
		FINPARA
	FINPARA
	ESCRIBIR "Vector:";
	PARA j <- 0 HASTA (l - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR array[j], " ";
	FINPARA
	ESCRIBIR "";
	ESCRIBIR "Vector 2:";
	PARA j <- 0 HASTA (l - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR array2[j], " ";
	FINPARA
	ESCRIBIR "";
	ESCRIBIR "Vector 3:";
	PARA j <- 0 HASTA (l - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR array3[j], " ";
	FINPARA
	ESCRIBIR "";
	ESCRIBIR "Vector 4:";
	PARA j <- 0 HASTA (l - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR array4[j], " ";
	FINPARA
	ESCRIBIR "";
	// Shellsort
	jump <- TRUNC(l / 2);
	j <- 0;
	MIENTRAS (j <= (l - 1)) Y (jump <> 0) HACER
		PARA k <- 0 HASTA ((l - 1) - jump) CON PASO 1 HACER
			SI (array[k] > array[k + jump]) ENTONCES
				swap <- array[k];
				array[k] <- array[k + jump];
				array[k + jump] <- swap;
			FINSI
		FINPARA
		j <- j + 1;
		jump <- TRUNC((l - j) / 2);
	FINMIENTRAS
	ESCRIBIR "Vector:";
	PARA j <- 0 HASTA (l - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR array[j], " ";
	FINPARA
	ESCRIBIR "";
	// Bubblesort
	j <- 1;
	ordered <- FALSO;
	MIENTRAS (j <= (l - 1)) Y NO(ordered) HACER
		j <- j + 1;
		ordered <- VERDADERO;
		PARA k <- 0 HASTA ((l - 1) - j) CON PASO 1 HACER
			SI (array2[k] > array2[k + 1]) ENTONCES
				swap <- array2[k];
				array2[k] <- array2[k + 1];
				array2[k + 1] <- swap;
				ordered <- FALSO;
			FINSI
		FINPARA
	FINMIENTRAS
	ESCRIBIR "Vector 2:";
	PARA j <- 0 HASTA (l - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR array2[j], " ";
	FINPARA
	ESCRIBIR "";
	// Selectsort
	PARA j <- 0 HASTA (l - 2) CON PASO 1 HACER
		index <- j;
		PARA k <- (j + 1) HASTA (l - 1) CON PASO 1 HACER
			SI (array3[index] > array3[k]) ENTONCES
				index <- k;
			FINSI
		FINPARA
		swap <- array3[index];
		array3[index] <-	array3[j];
		array3[j] <- swap;
	FINPARA
	ESCRIBIR "Vector 3:";
	PARA j <- 0 HASTA (l - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR array3[j], " ";
	FINPARA
	ESCRIBIR "";
	// Insertion sort
	PARA j <- 0 HASTA (l - 2) CON PASO 1 HACER
		PARA k <- j HASTA (0) CON PASO -1 HACER
			SI (array4[k] > array4[k + 1]) ENTONCES
				swap <- array4[k];
				array4[k] <- array4[k + 1];
				array4[k + 1] <- swap;
			FINSI
		FINPARA
	FINPARA
	ESCRIBIR "Vector 4:";
	PARA j <- 0 HASTA (l - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR array4[j], " ";
	FINPARA
	ESCRIBIR "";
	j <- 0;
	PARA h <- 0 HASTA (n - 1) CON PASO 1 HACER
		PARA i <- 0 HASTA (m - 1) CON PASO 1 HACER
			matrix[h, i] <- array[j];
			j <- j + 1;
		FINPARA
	FINPARA
	ESCRIBIR "Matriz:";
	PARA h <- 0 HASTA (n - 1) CON PASO 1 Hacer
		PARA i <- 0 HASTA (m - 1) CON PASO 1 Hacer
			ESCRIBIR SIN SALTAR matrix[h, i], " ";
		FINPARA
		ESCRIBIR "";
	FINPARA
FINALGORITMO
