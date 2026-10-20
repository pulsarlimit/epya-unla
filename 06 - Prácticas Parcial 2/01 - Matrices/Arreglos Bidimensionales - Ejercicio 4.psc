// Práctica Arreglos bidimensionales - Ejercicio 4
// Diseñar un algoritmo para sumar o restar matrices.
ALGORITMO Ejercicio4
	DEFINIR matriz_a, matriz_b, matriz_c COMO ENTERO;
	DEFINIR filas, columnas COMO ENTERO;
	DEFINIR i, j COMO ENTERO;
	DEFINIR validezTamanio COMO LOGICO;
	DEFINIR opcionUsuario COMO ENTERO;
	DEFINIR opcionValida COMO LOGICO;
	HACER
		ESCRIBIR SIN SALTAR "Ingrese la cantidad de filas que tendrán la matriz A y la matriz B:";
		LEER filas;
		ESCRIBIR SIN SALTAR "Ingrese la cantidad de columnas que tendrán la matriz A y la matriz B:";
		LEER columnas;
		validezTamanio <- (filas > 0) Y (columnas > 0);
	HASTA QUE (validezTamanio)
	SI (validezTamanio) ENTONCES
		DIMENSION matriz_a[filas, columnas];
		DIMENSION matriz_b[filas, columnas];
		DIMENSION matriz_c[filas, columnas];
		ESCRIBIR "Si quiere llenar manualmente la matriz A, ingrese 0.";
		ESCRIBIR "Si quiere llenar aleatoriamente la matriz A, ingrese 1.";
		HACER
			ESCRIBIR SIN SALTAR "Su elección:";
			LEER opcionUsuario;
			opcionValida <- (opcionUsuario > -1) Y (opcionUsuario < 2);
			SEGUN opcionUsuario HACER
				0:
					PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
						PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
							ESCRIBIR SIN SALTAR "matriz_a[", i, ", ", j, "] = ";
							LEER matriz_a[i, j];
						FINPARA
					FINPARA
				1:
					PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
						PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
							matriz_a[i, j] <- ALEATORIO(-20 , 20);
						FINPARA
					FINPARA
				DE OTRO MODO:
					ESCRIBIR opcionUsuario, " no es una opción correcta.";
			FINSEGUN
		HASTA QUE (opcionValida)
		ESCRIBIR "Si quiere llenar manualmente la matriz B, ingrese 0.";
		ESCRIBIR "Si quiere llenar aleatoriamente la matriz B, ingrese 1.";
		HACER
			ESCRIBIR SIN SALTAR "Su elección:";
			LEER opcionUsuario;
			opcionValida <- (opcionUsuario > -1) Y (opcionUsuario < 2);
			SEGUN opcionUsuario HACER
				0:
					PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
						PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
							ESCRIBIR SIN SALTAR "matriz_b[", i, ", ", j, "] = ";
							LEER matriz_b[i, j];
						FINPARA
					FINPARA
				1:
					PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
						PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
							matriz_b[i, j] <- ALEATORIO(-20, 20);
						FINPARA
					FINPARA
				DE OTRO MODO:
					ESCRIBIR opcionUsuario, " no es una opción correcta.";
			FINSEGUN
		HASTA QUE (opcionValida) 
		LIMPIAR PANTALLA;
		ESCRIBIR "Matriz A:";
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_a[i, j], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
		ESCRIBIR "Matriz B:";
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_b[i, j], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
		ESCRIBIR "Si quiere sumar la matriz A y la matriz B, ingrese 0.";
		ESCRIBIR "Si quiere restar la matriz B a la matriz A (A - B), ingrese 1.";
		ESCRIBIR "Si quiere restar la matriz A a la matriz B (B - A), ingrese 2.";
		HACER
			ESCRIBIR SIN SALTAR "Su elección:";
			LEER opcionUsuario;
			opcionValida <- (opcionUsuario > -1) Y (opcionUsuario < 3);
			SEGUN opcionUsuario HACER
				0:
					PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
						PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
							matriz_c[i, j] <- matriz_a[i, j] + matriz_a[i, j];
						FINPARA
					FINPARA
				1:
					PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
						PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
							matriz_c[i, j] <- matriz_a[i, j] - matriz_b[i, j];
						FINPARA
					FINPARA
				2:
					PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
						PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
							matriz_c[i, j] <- matriz_b[i, j] - matriz_a[i, j];
						FINPARA
					FINPARA
				DE OTRO MODO:
					ESCRIBIR opcionUsuario, " no es una opción correcta.";				
			FINSEGUN
		HASTA QUE (opcionValida)
		ESCRIBIR "Matriz Resultado:";
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
				ESCRIBIR SIN SALTAR matriz_c[i, j], " ";
			FINPARA
			ESCRIBIR "";
		FINPARA
	FINSI
FINALGORITMO