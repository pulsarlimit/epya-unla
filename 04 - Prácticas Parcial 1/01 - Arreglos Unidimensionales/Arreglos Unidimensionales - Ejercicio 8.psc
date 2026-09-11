// Practica de Arreglos Unidimensionales, Ejercicio 8
// Desarrollar un algoritmo que inicialice un vector de 10 posiciones con valores aleatorios, lo imprima por
// pantalla y le pida al usuario un indice del vector (de 0 a 9). El algoritmo debera recorrer el vector y eliminar el
// valor que haya en el indice, moviendo hacia la izquierda todos los valores desde el indice borrado hasta el
// final del vector. La ultima posicion del vector se completara con 0.
Algoritmo Ejercicio8
	Definir vector, n, vector_previo Como Entero;
	Definir i Como Entero;
	Definir elim_ind Como Entero;
	Escribir "Ingrese la cantidad de indices que tendra su vector:";
	n <- 10; Dimension vector[n], vector_previo[n];
	Escribir "Poblando su vector con valores aleatorios:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector[i] <- Aleatorio(1, 10);
		vector_previo[i] <- vector[i]; // Se guardan los valores en otro vector para su posterior comparacion.
	FinPara
	Escribir "Se muestran los contenidos de su vector:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir "Indice: ", i, ", Valor asignado: ", vector[i];
	FinPara
	Escribir "Presione Enter para continuar..."; Esperar Tecla;
	Borrar Pantalla;
	Escribir "Elija un indice entre ", 0, " y ", (n - 1), ", ese indice sera borrado:";
	Hacer
		Leer elim_ind;
	Hasta Que ((elim_ind >= 0) Y (elim_ind <= n - 1)) // No se "acepta" la entrada hasta que este entre 0 y (n - 1).
	Borrar Pantalla;
	Escribir "Borrando...";
	Para i <- elim_ind Hasta (n - 1) Con Paso 1 Hacer
		Si (i < (n - 1)) Entonces
			vector[i] <- vector[i + 1];
		SiNo
			vector[i] <- 0;
		FinSi
	FinPara // Se borra moviendo los valores a la izquierda.
	Escribir "Borrado, presione Enter para continuar..."; Esperar Tecla;
	Borrar Pantalla;
	Escribir "Se muestran los contenidos del vector y sus cambios:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Si (vector[i] = vector_previo[i]) Entonces
			Escribir "Indice: ", i, ", Valor: ", vector[i], ", Sin Cambios";
		SiNo
			Escribir "Indice: ", i, ", Valor: ", vector[i], ", Valor Anterior: ", vector_previo[i];
		FinSi
	FinPara // Se muestra los valores del vector comparando para mostrar si hubo cambios.
FinAlgoritmo
