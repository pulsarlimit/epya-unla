// Práctica Arreglos bidimensionales - Ejercicio 10
// Desarrollar un algoritmo que inicialice una matriz cuadrada de 10x10 de tipo
// CARÁCTER con letras aleatorias y la imprima por pantalla. Luego deberá solicitar
// al usuario el tamaño de la palabra a buscar y guardará cada una de las letras
// en un arreglo de tipo CÁRACTER.
// El algoritmo deberá buscar la palabra ingresada por el usuario en la matriz,
// revisando su aparición de forma HORIZONTAL o VERTICAL.
ALGORITMO Ejercicio10
	DEFINIR letras COMO CARACTER;
	DEFINIR matriz COMO CARACTER;
	DEFINIR filasColumnas COMO ENTERO;
	DEFINIR n COMO ENTERO;
	DEFINIR alfabeto COMO CADENA;
	DEFINIR palabra COMO CARACTER;
	DEFINIR tamanio COMO ENTERO;
	DEFINIR i, j, k COMO ENTERO;
	DEFINIR posPrevia COMO ENTERO;
	DEFINIR encontrada_h, encontrada_v COMO LOGICO;
	alfabeto <- "abcdefghijklmnopqrstuvwxyz";
	n <- LONGITUD(alfabeto);
	filasColumnas <- 10;
	DIMENSION letras[n];
	DIMENSION matriz[filasColumnas, filasColumnas];
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		letras[i] <- MAYUSCULAS(SUBCADENA(alfabeto, i, i));
	FINPARA
	PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			matriz[i, j] <- letras[AZAR(n)];
		FINPARA
	FINPARA
	ESCRIBIR "Sopa de Letras:";
	PARA i <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (filasColumnas - 1) CON PASO 1 HACER
			ESCRIBIR SIN SALTAR matriz[i, j], " ";
		FINPARA
		ESCRIBIR "";
	FINPARA
	ESCRIBIR SIN SALTAR "Ingrese el tamaño de la palabra que quiere buscar:";
	LEER tamanio;
	DIMENSION palabra[tamanio];
	PARA i <- 0 HASTA (tamanio - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR "Ingrese una letra [", (i + 1), "]:";
		LEER palabra[i];
	FINPARA
	PARA i <- 0 HASTA (tamanio - 1) CON PASO 1 HACER
		j <- 0;
		encontrada_h <- FALSO;
		MIENTRAS (j < filasColumnas) Y NO(encontrada_h) HACER
			k <- 0;
			MIENTRAS (k < filasColumnas) Y NO(encontrada_h) HACER
				SI (i = 0) ENTONCES
					SI (palabra[i] = matriz[j, k]) ENTONCES
						posPrevia <- k;
						encontrada_h <- VERDADERO;
					FINSI
				SINO
					SI (palabra[i] = matriz[j, k] Y (k - 1) = posPrevia) ENTONCES
						posPrevia <- k;
						encontrada_h <- VERDADERO;
					FINSI
				FINSI
				k <- k + 1;
			FINMIENTRAS
			j <- j + 1;
		FINMIENTRAS
	FINPARA
	PARA i <- 0 HASTA (tamanio - 1) CON PASO 1 HACER
		j <- 0;
		encontrada_v <- FALSO;
		MIENTRAS (j < filasColumnas) Y NO(encontrada_v) HACER
			k <- 0;
			MIENTRAS (k < filasColumnas) Y NO(encontrada_v) HACER
				SI (i = 0) ENTONCES
					SI (palabra[i] = matriz[k, j]) ENTONCES
						encontrada_v <- VERDADERO;
						posPrevia <- k;
					FINSI
				SINO
					SI (palabra[i] = matriz[k, j]) Y ((k - 1) = posPrevia) ENTONCES
						posPrevia <- k;
						encontrada_v <- VERDADERO;
					FINSI
				FINSI
				k <- k + 1;
			FINMIENTRAS
			j <- j + 1;
		FINMIENTRAS
	FINPARA
	ESCRIBIR SIN SALTAR "La palabra ";
	PARA i <- 0 HASTA (tamanio - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR palabra[i];
	FINPARA
	SI (encontrada_h) ENTONCES
		ESCRIBIR SIN SALTAR " fue encontrada de forma HORIZONTAL";
	SINO
		ESCRIBIR SIN SALTAR " no fue encontrada de forma HORIZONTAL";
	FINSI
	SI (encontrada_v) ENTONCES
		ESCRIBIR SIN SALTAR " y de forma VERTICAL";
	SINO
		ESCRIBIR SIN SALTAR " y no de forma VERTICAL";
	FINSI
	ESCRIBIR "";
FINALGORITMO