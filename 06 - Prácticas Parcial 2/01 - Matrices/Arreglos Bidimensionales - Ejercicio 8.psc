// Práctica de Arreglos bidimensionales - Ejercicio 8
// Desarrollar un algoritmo que inicialice una matriz cuadrada de 10x10 con
// valores aleatorios entre 0 y 50, la imprima por pantalla y le pida al usuario
// 5 valores a buscar en la matriz, los cuales deberá cargar en un arreglo.
// El algoritmo deberá recorrer la matriz y buscar cada uno de los números
// que indicó el usuario, completando un nuevo vector de valores lógicos,
// de igual tamaño que el vector de números a buscar, indicando
// VERDADERO o FALSO si cada número buscado es encontrado en la matriz.
ALGORITMO Ejercicio8
	DEFINIR matriz, filasColumnas COMO ENTERO;
	DEFINIR numerosBuscados, n COMO ENTERO;
	DEFINIR numerosEncontrados COMO LOGICO;
	DEFINIR i, j, k COMO ENTERO;
	DEFINIR encontrado COMO LOGICO;
	filasColumnas <- 10;
	n <- 5;
	DIMENSION matriz[filasColumnas, filasColumnas];
	DIMENSION numerosBuscados[n];
	DIMENSION numerosEncontrados[n];
	PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			matriz[i, j] <- ALEATORIO(0, 50);
		FINPARA
	FINPARA
	ESCRIBIR "Matriz Original:";
	PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			ESCRIBIR SIN SALTAR matriz[i, j], " ";
		FINPARA
		ESCRIBIR "";
	FINPARA
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR "Ingrese un número a buscar en la matriz [", i, "]:";
		LEER numerosBuscados[i];
	FINPARA
	BORRAR PANTALLA;
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		j <- 0;
		encontrado <- FALSO;
		MIENTRAS (j < filasColumnas) Y NO(encontrado) HACER
			k <- 0;
			ESCRIBIR "Buscando ", numerosBuscados[i], " en la fila ", j ,".";
			MIENTRAS (k < filasColumnas) Y NO(encontrado) HACER
				SI (matriz[j, k] = numerosBuscados[i]) ENTONCES
					encontrado <- VERDADERO;
					numerosEncontrados[i] <- encontrado;
				FINSI
				k <- k + 1;
			FINMIENTRAS
		j <- j + 1;
		FINMIENTRAS
		SI NO(encontrado) ENTONCES
			numerosEncontrados[i] <- encontrado;
		FINSI
	FINPARA
	ESCRIBIR "PRESIONE UNA TECLA PARA CONTINUAR";
	ESPERAR TECLA;
	BORRAR PANTALLA;
	ESCRIBIR "Números buscados:";
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR numerosBuscados[i], " ";
	FINPARA
	ESCRIBIR "";
	ESCRIBIR "¿Fueron encontrados?:";
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		SI (numerosEncontrados[i]) ENTONCES
			ESCRIBIR SIN SALTAR "V ";
		SINO
			ESCRIBIR SIN SALTAR "F ";
		FINSI
	FINPARA
	ESCRIBIR "";
FINALGORITMO