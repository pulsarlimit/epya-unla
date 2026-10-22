// Práctica Arreglos bidimensionales - Ejercicio 9
// Desarrollar un algoritmo que inicialice una matriz cuadrada de 5x5
// con valores aleatorios entre 0 y 50, la imprima por pantalla y luego
// la ordene siguiendo estos pasos:
// A. Transformar a la matriz en un arreglo de 25 posiciones.
// B. Ordenar el arreglo con cualquiera de los métodos de ordenamiento.
// C. Volver a transformar el arreglo en matriz.
// Una vez ordenada, imprimir la matriz por pantalla.
ALGORITMO Ejercicio9
	DEFINIR matriz, filasColumnas COMO ENTERO;
	DEFINIR arreglo, n COMO ENTERO;
	DEFINIR i, j , k COMO ENTERO;
	DEFINIR permuta COMO ENTERO;
	DEFINIR cambios COMO LOGICO;
	filasColumnas <- 5;
	n <- filasColumnas ^ 2;
	DIMENSION matriz[filasColumnas, filasColumnas];
	DIMENSION arreglo[n];
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
	k <- 0;
	PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			arreglo[k] <- matriz[i, j];
			k <- k + 1;
		FINPARA
	FINPARA
	// Insertion sort
	PARA i <- 0 HASTA (n - 2) CON PASO 1 HACER
		j <- i;
		cambios <- VERDADERO;
		MIENTRAS (j > -1) Y (cambios) HACER
			SI (arreglo[j] > arreglo[j + 1]) ENTONCES
				permuta <- arreglo[j + 1];
				arreglo[j + 1] <- arreglo[j];
				arreglo[j] <- permuta;
			SINO
				cambios <- FALSO;
			FINSI
			j <- j - 1;
		FINMIENTRAS
	FINPARA
	k <- 0;
	PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			matriz[i, j] <- arreglo[k];
			k <- k + 1;
		FINPARA
	FINPARA
	ESCRIBIR "Matriz Ordenada:";
	PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			ESCRIBIR SIN SALTAR matriz[i, j], " ";
		FINPARA
		ESCRIBIR "";
	FINPARA
FINALGORITMO