// Practica de Arreglos Unidimensionales, Ejercicio Extra 1
// Leer 10 enteros, almacenarlos en un vector y determinar en que posicion
// del vector esta el mayor numero leido.
Algoritmo EjercicioE_1
	Definir vector, n, i Como Entero;
	Definir num_mayor, num_mayor_pos Como Entero;
	n <- 10;	Dimension vector[n];
	Escribir "Llene su vector con numeros enteros:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Leer vector[i];
	FinPara // Se guardan los enteros ingresados en el vector.
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Si (i = 0) Entonces
			num_mayor <- vector[i];
			num_mayor_pos <- i;
		SiNo Si (num_mayor < vector[i]) Entonces
				num_mayor <- vector[i];
				num_mayor_pos <- i;
			FinSi
		FinSi
	FinPara // Se determina el indice que tiene el mayor valor asignado.
	Borrar Pantalla;
	Escribir "Se muestran los contenidos de su vector:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir "vector[", i, "] = ", vector[i];
	FinPara // Se muestran los valores del vector.
	Escribir "El mayor numero ingresado es: ", num_mayor;
	Escribir "Se encontraba en el indice: ", num_mayor_pos;
FinAlgoritmo