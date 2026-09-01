// Práctica de Arreglos Unidimensionales, Ejercicio 3
// Crear un algoritmo que inicialice un vector de dimensión 10 con valores aleatorios del 1 al 10 y calcule el
// promedio de los valores del vector. Luego se recorrerá el arreglo y se mostrará todos los valores que superen
// el valor promedio.
Algoritmo Ejercicio3
	Definir vector, n , i Como Entero;
	Definir acum, prom Como Real;
	n <- 10;
	Dimension vector[n];
	acum <- 0;
	Escribir "Poblando su vector";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector[i] <- Aleatorio(1, 10);
		Escribir "Índice: ", i, ", Valor asignado: ", vector[i];
		acum <- acum + vector[i];
	FinPara
	prom <- acum / n;
	Escribir "El promedio de los valores de cada índice del vector es de: ", prom;
	Escribir "Se mostrarán los índices que contienen valores mayores al promedio";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Si (vector[i] > prom) Entonces
			Escribir "Índice: ", i, ", Valor asignado: ", vector[i];
		FinSi
	FinPara
FinAlgoritmo