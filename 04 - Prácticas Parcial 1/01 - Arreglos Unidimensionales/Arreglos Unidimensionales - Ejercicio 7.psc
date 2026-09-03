// Practica de Arreglos Unidimensionales, Ejercicio 7
// Desarrollar un algoritmo que inicialice un vector de 10 posiciones con valores aleatorios, lo imprima por
// pantalla y le pida al usuario un numero a buscar en el vector. El algoritmo debera recorrer el vector y
// reemplazar todas las apariciones del numero buscado por 0.
Algoritmo Ejercicio7
	Definir vector, n Como Entero;
	Definir i Como Entero;
	Definir num_buscar, cant_enc Como Entero;
	Escribir "Ingrese la cantidad de indices que tendra el vector:";
	Leer n; Dimension vector[n];
	cant_enc <- 0;
	Escribir "Poblando su vector:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector[i] <- Aleatorio(1, 10);
		Escribir "Indice: ", i, ", Valor asignado: ", vector[i];
	FinPara
	Escribir "Ingrese un numero a buscar y reemplazar por 0:";
	Leer num_buscar; Borrar Pantalla;
	Escribir "Buscando...";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Si (vector[i] = num_buscar) Entonces
			vector[i] <- 0;
			cant_enc <- cant_enc + 1;
			Escribir "Encontre ", num_buscar, " en el indice ", i;
		FinSi
	FinPara
	Escribir num_buscar, " aparecio ", cant_enc, " veces";
	Escribir "Presione Enter para continuar...";
	Esperar Tecla;
	Borrar Pantalla;
	Escribir "El estado actual del vector:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir "Indice: ", i, ", Valor asignado: ", vector[i];
	FinPara
FinAlgoritmo