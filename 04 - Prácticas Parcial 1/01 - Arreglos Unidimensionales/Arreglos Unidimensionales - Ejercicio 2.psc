// Práctica de Arreglos Unidimensionales, Ejercicio 2
// Crear un algoritmo que inicialice un vector de dimensión 10 con valores aleatorios del 1 al 10 y solicite al
// usuario 2 números del 0 al 9. El algoritmo debe mostrar el vector inicializado, invertir los valores de los índices
// indicados por el usuario, y volver a mostrar el arreglo con los valores intercambiados.
Algoritmo Ejercicio2
	Definir vector, n, i Como Entero;
	Definir num1, num2, aux Como Entero;
	n <- 10;
	Dimension vector[n];
	Escribir "Poblando su vector";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector[i] <- Aleatorio(1, 10);
		Escribir "Índice: ", i, ", Valor asignado: ", vector[i];
	FinPara
	Escribir "Ingrese dos números del 0 al 9 para intercambiar los índices correspondientes en el vector:";
	Leer num1, num2;
	aux <- vector[num1];
	vector[num1] <- vector[num2];
	vector[num2] <- aux;
	Escribir "Los índices que usted indicó fueron invertidos";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir "Índice: ", i, ", Valor asignado: ", vector[i];
	FinPara
FinAlgoritmo
