// Práctica Arreglos bidimensionales - Ejercicio 7
// Desarrollar un algoritmo que inicialice una matriz de 2 filas y 10 columnas
// con valores aleatorios entre 0 y 10 y revise si el valor de la fila 1
// coincide con el valor de la fila 2 (en la misma columna). En caso de que
// coincidan, setear ambos valores en 0. Imprimir la matriz luego de la
// revisión.
// En esta versión si los valores coinciden y son iguales a cero se reemplazan por -1.
ALGORITMO Ejercicio7
	DEFINIR matriz, filas, columnas COMO ENTERO;
	DEFINIR i, j COMO ENTERO;
	DEFINIR filasIguales COMO LOGICO;
	filas <- 2;
	columnas <- 10;
	DIMENSION matriz[filas, columnas];
	PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
			matriz[i, j] <- ALEATORIO(0, 10);
		FINPARA
	FINPARA
	ESCRIBIR "Matriz Original:";
	PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
			ESCRIBIR SIN SALTAR matriz[i, j], " ";
		FINPARA 
		ESCRIBIR "";
	FINPARA
	PARA i <- 0 HASTA (filas - 2) CON PASO 1 HACER
		PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
			SI (matriz[i, j] = matriz[i + 1, j]) ENTONCES
				SI (matriz[i, j] = 0) ENTONCES
					matriz[i, j] <- -1;
					matriz[i + 1, j] <- -1;
				SINO
					matriz[i, j] <- 0;
					matriz[i + 1, j] <- 0;
				FINSI
			FINSI
		FINPARA
	FINPARA
	ESCRIBIR "Matriz Modificada:";
	PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
			ESCRIBIR SIN SALTAR matriz[i, j], " ";
		FINPARA
		ESCRIBIR "";
	FINPARA
FINALGORITMO
// Version para columnas
//	PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
//		PARA j <- 0 HASTA (columnas - 2) CON PASO 1 HACER
//			SI (matriz[i, j] = matriz[i, j + 1]) ENTONCES
//				SI (matriz[i, j] = 0) ENTONCES
//					matriz[i, j] <- -1;
//					matriz[i, j + 1] <- -1;
//				SINO
//					matriz[i, j] <- 0;
//					matriz[i, j + 1] <- 0;
//				FINSI
//			FINSI
//		FINPARA
//	FINPARA