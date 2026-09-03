// Practica de Arreglos Unidimensionales, Ejercicio 6
// Crear un algoritmo que declare un vector de dimension N (ingresada por el usuario), inicialice la primera
// posicion del vector en 1 y luego complete el resto de las posiciones del vector con la suma de los valores de
// los elementos anteriores.
Algoritmo Ejercicio6
	Definir vector, n Como Entero;
	Definir i, j Como Entero;
	Definir suma Como Entero;
	Escribir "Ingrese la cantidad de indices que tendra el vector:";
	Leer n; Dimension vector[n];
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		suma <- 0;
		Si No(i > 1) Entonces
			vector[i] <- 1; // Le asigna el valor 1 a los indices 1 y 0
		SiNo
			Para j <- 0 Hasta (i - 1) Con Paso 1 Hacer
				suma <- suma + vector[j];
			FinPara
			vector[i] <- suma;
		FinSi
	FinPara
	Escribir "Los valores contenidos en el vector:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir "Indice: ", i, ", Valor asignado: ", vector[i];
	FinPara
FinAlgoritmo
