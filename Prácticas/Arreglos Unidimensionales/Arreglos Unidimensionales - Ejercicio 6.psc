// Práctica de Arreglos Unidimensionales, Ejercicio 6
// Crear un algoritmo que declare un vector de dimensión N (ingresada por el usuario), inicialice la primera
// posición del vector en 1 y luego complete el resto de las posiciones del vector con la suma de los valores de
// los elementos anteriores.
Algoritmo Ejercicio6
	Definir vector, n, i Como Entero;
	Escribir "Ingrese la cantidad de Índices que poseéra el vector:";
	Leer n;
	Dimension vector[n];
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Si (i > 0) Entonces
			vector[i] <- vector[i] + vector[i - 1];
		SiNo
			vector[i] <- 1;
		FinSi
	FinPara
FinAlgoritmo