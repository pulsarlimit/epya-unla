// Práctica de Arreglos Unidimensionales, Ejercicio 5
// Crear un algoritmo que inicialice dos vectores (vector1 y vector2) de dimensión 10 con valores aleatorios
// del 1 al 10 y declare un tercer vector (vectorSuma), el cual se completará con la suma de ambos vectores,
// posición a posición. Ejemplo: vectorSuma en el índice 0 debe contener la suma de vector1 en el índice 0 mas
// vector2 en el incide 0. Mostrar por pantalla el vector1, el vector2 y el vectorSuma.
Algoritmo Ejercicio5
	Definir vector1, vector2, vectorSuma Como Entero;
	Definir n, i Como Entero;
	n <- 10;
	Dimension vector1[n], vector2[n], vectorSuma[n];
	Escribir "| Índice | Vector 1 | Vector 2 | Vector Suma |";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector1[i] <- Aleatorio(1, 10);
		vector2[i] <- Aleatorio(1, 10);
		vectorSuma[i] <- vector1[i] + vector2[i];
		Escribir Sin Saltar "|   ", i ,"    |";
		Escribir Sin Saltar "     ", vector1[i], "    |";
		Escribir Sin Saltar "     ", vector2[i], "    |";
		Escribir "      ", vectorSuma[i], "      |";
	FinPara
FinAlgoritmo