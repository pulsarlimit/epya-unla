// Practica de Arreglos Unidimensionales, Ejercicio 8
// Desarrollar un algoritmo que inicialice un vector de 10 posiciones con valores aleatorios, lo imprima por
// pantalla y le pida al usuario un indice del vector (de 0 a 9). El algoritmo debera recorrer el vector y eliminar el
// valor que haya en el indice, moviendo hacia la izquierda todos los valores desde el indice borrado hasta el
// final del vector. La ultima posicion del vector se completara con 0.
Algoritmo Ejercicio8
	Definir vector, n Como Entero;
	Definir i Como Entero;
	Definir elim_ind Como Entero;
	Escribir "Ingrese la cantidad de indices que tendra su vector:";
	Leer n; Dimension vector[n];
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector[i] <- Aleatorio(1, 10);
		Escribir "Indice: ", i, ", Valor asignado: ", vector[i];
	FinPara
	Escribir "Elija un indice entre ", 0, " y ", n - 1, ", ese indice sera borrado:";
	Hacer
		Leer elim_ind;
	Hasta Que ((elim_ind >= 0) Y (elim_ind <= n - 1))
	Borrar Pantalla;
	Escribir "Borrando...";
	 Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		 Si (i < elim_ind) Entonces
			 Escribir "Indice: ", i, ", Valor asignado: ", vector[i];
		 SiNo
			 Si (i < (n - 1)) Entonces
				Escribir Sin Saltar "Indice: ", i, ", Valor previo: ", vector[i];
				vector[i] <- vector[i + 1];
				Escribir ", Valor actual: ", vector[i];
			 SiNo
				Escribir Sin Saltar "Indice: ", i, ", Valor previo: ", vector[i];
				vector[i] <- 0;
				Escribir ", Valor actual: ", vector[i];
			FinSi
		FinSi
	 FinPara
FinAlgoritmo	