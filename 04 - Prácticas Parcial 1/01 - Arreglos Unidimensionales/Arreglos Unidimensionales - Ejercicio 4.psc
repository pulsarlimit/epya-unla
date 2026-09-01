// Práctica de Arreglos Unidimensionales, Ejercicio 4
// Crear un algoritmo que inicialice un vector de dimensión 4 de tipo caracter y contenga los siguientes
// caracteres: U, N, L, a. Luego debe mostrar por pantalla el siguiente texto: "Yo estudio en la UNLa", donde
// UNLa estará definido letra a letra utilizando los elementos del vector.
Algoritmo Ejercicio4
	Definir vector Como Caracter;
	Definir n, i Como Entero;
	Definir estudio, universidad Como Cadena;
	estudio <- "Yo estudio en la ";
	//	Escribir "Ingrese las siglas de la universidad en la que estudia:";
	//	Leer universidad;
	universidad <- "UNLa";
	n <- Longitud(universidad);
	Dimension vector[n];
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector[i] <- SubCadena(universidad, i, i);
	FinPara
	Escribir Sin Saltar estudio;
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir Sin Saltar vector[i];
		Si (i = n - 1) Entonces
			Escribir "";
		FinSi
	FinPara
FinAlgoritmo