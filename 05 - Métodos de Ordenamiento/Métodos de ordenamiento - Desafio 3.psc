// Metodos de ordenamiento, Desafío 3 - Insertion sort
ALGORITMO Desafio3
	DEFINIR vector, n COMO ENTERO;
	DEFINIR i, j COMO ENTERO;
	DEFINIR ordenado, swap COMO ENTERO;
	DEFINIR intentos COMO ENTERO;
	DEFINIR dimension_invalida, quedan_intentos COMO LOGICO;
	DEFINIR usr_choice COMO ENTERO;
	intentos <- 3;
	Hacer
		ESCRIBIR SIN SALTAR "Dimensión del vector? ";
		LEER N;
		dimension_invalida <- (n < 1);
		SI dimension_invalida ENTONCES
			intentos <- intentos - 1;
			quedan_intentos <- (intentos > 0);
			ESCRIBIR "ERROR: ", n, " no se puede usar como dimensión del vector.";
			SI (quedan_intentos) ENTONCES
				ESCRIBIR "Le quedan ", intentos, " intentos.";
			SiNo
				ESCRIBIR "Ya no tiene más intentos.";
			FinSi
		FinSI
	Hasta Que NO(dimension_invalida) O NO(quedan_intentos)
	
	SI NO(dimension_invalida) Entonces
		DIMENSION vector[n];
		ESCRIBIR "1) Inicializar el vector por consola.";
		ESCRIBIR "2) Inicializar el vector con valores aleatorios entre 0 y 9.";
		LEER usr_choice;
		SEGUN usr_choice HACER
			1: 
				PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
					ESCRIBIR SIN SALTAR "vector[", i, "]? ";;
					LEER vector[i];
			    FinPara
			2:
				ESCRIBIR "Inicializando su vector.";
				PARA i <- 0 HASTA (n - 1) CON PASO 1 Hacer
					vector[i] <- ALEATORIO(0, 9);
				FinPara
			De Otro Modo:
				ESCRIBIR "ERROR: OPCIÓN INCORRECTA";
		FINSEGUN
		PARA i <- 0 HASTA (n - 1) CON PASO 1 Hacer
			SI (i = 0) Entonces
				ESCRIBIR SIN SALTAR "Vector: {", vector[i], ", ";
			SiNo
				SI (i < (n - 1))
					ESCRIBIR SIN SALTAR vector[i], ", ";
				SiNo
					ESCRIBIR vector[i], "}";
				FinSi
			FinSi
		FinPara
		// Insertion sort?
		PARA i <- 0 HASTA (n - 2) CON PASO 1 HACER
			SI (i = 0) Entonces
				ESCRIBIR "INICIO: tomamos ordenado hasta el elemento ", vector[i];
				PARA j <- 0 HASTA (n - 1) CON PASO 1 Hacer
					SI (j = 0) ENTONCES
						ESCRIBIR SIN SALTAR "{", vector[j], ",|| ";
					SiNo
						SI (j < (n - 1)) Entonces
							ESCRIBIR SIN SALTAR vector[j], ", ";
						SiNo
							ESCRIBIR vector[j], "}";
						FinSi
					FINSI
				FinPara
			SiNo
				ESCRIBIR "Elemento a insertar a la izquierda (ordenada): ", vector[i + 1];
				PARA j <- i - 1 HASTA (0) CON PASO -1 HACER
					SI (vector[j + 1] < vector[j])
						swap <- vector[j + 1];
						vector[j + 1] <- vector[j];
						vector[j] <- swap;
					FinSi
				FinPara
				PARA j <- 0 HASTA (n - 1) CON PASO 1 Hacer
					SI (j = 0) ENTONCES
						ESCRIBIR SIN SALTAR "{", vector[j], ",|| ";
					SiNo
						SI (j < (n - 1)) Entonces
							ESCRIBIR SIN SALTAR vector[j], ", ";
						SiNo
							ESCRIBIR vector[j], "}";
						FinSi
					FINSI
				FinPara
			FinSi
		FinPara
	FinSi
	
	
	
FINALGORITMO