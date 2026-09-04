// Practica de Arreglos Unidimensionales, Ejercicio 9
// Desarrollar un algoritmo que inicialice un vector de 10 posiciones con valores aleatorios (de 1 a 10) y lo
// imprima por pantalla. El algoritmo debera recorrer el vector y según el numero de cada posicion se deben
// mostrar igual numero de asteriscos.
Algoritmo Ejercicio9
	Definir vector, n Como Entero;
	Definir i, j Como Entero;
	Escribir "Ingrese la cantidad de indices que tendra el vector:";
	Leer n; Dimension vector[n];
	Escribir "Poblando el vector y generando su histograma simultaneamente:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector[i] <- Aleatorio(1, 10);
		Escribir Sin Saltar "v[", i, "] = ", vector[i];
		Para j <- 0 Hasta vector[i] Con Paso 1 Hacer
				Escribir Sin Saltar " *";
			FinPara
		Escribir "";
	FinPara
FinAlgoritmo	