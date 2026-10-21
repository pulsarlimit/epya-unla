// Práctica Arreglos bidimensionales - Ejercicio 6
// Desarrollar un algoritmo que inicialice una matriz
// de 4 filas y 5 columnas con valores aleatorios entre
// 0 y 10 y defina dos vectores:
// paresEnFilas: Para guardar lla cantidad de números
//               en cada fila.
// imparesEnColumnas: Para guardar la cantidad de números
//                    impares en cada columna.
// Imprimir por pantalla la matriz y los dos vectores
// cargados.
ALGORITMO Ejercicio6
	DEFINIR matriz, filas, columnas COMO ENTERO;
	DEFINIR paresEnFilas, pares COMO ENTERO;
	DEFINIR imparesEnColumnas, impares COMO ENTERO;
	DEFINIR i, j COMO ENTERO;
	pares <- 0;
	impares <- 0;
	filas <- 4;
	columnas <- 5;
	DIMENSION matriz[filas, columnas];
	DIMENSION paresEnFilas[filas];
	DIMENSION imparesEnColumnas[columnas];
	PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
			matriz[i, j] <- ALEATORIO(0, 10);
		FINPARA
	FINPARA
	PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
			SI (matriz[i, j] MOD 2 = 0) ENTONCES
				pares <- pares + 1;
			FINSI
		FINPARA
		paresEnFilas[i]<- pares;
		pares <- 0;
	FINPARA
	PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
		PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
			SI (matriz[i, j] MOD 2 <> 0) ENTONCES
				impares <- impares + 1;
			FINSI
		FINPARA
		imparesEnColumnas[j] <- impares;
		impares <- 0;
	FINPARA
	ESCRIBIR "Matriz:";
	PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
		PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
			ESCRIBIR SIN SALTAR matriz[i, j], " ";
		FINPARA
		ESCRIBIR "";
	FINPARA
	ESCRIBIR "Vector con la cantidad de pares en cada fila:";
	PARA i <- 0 HASTA (filas - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR paresEnFilas[i], " ";
	FINPARA
	ESCRIBIR "";
	ESCRIBIR "Vector con la cantidad de impares en cada columna:";
	PARA j <- 0 HASTA (columnas - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR imparesEnColumnas[j], " ";
	FINPARA
	ESCRIBIR "";
FINALGORITMO