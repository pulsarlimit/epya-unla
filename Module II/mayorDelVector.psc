// Arreglos unidimensionales, Ejercicio 2
Algoritmo mayorDelVector
	Definir vector Como Entero;
	Definir indices Como Entero;
	Definir contador Como Entero;
	Definir indiceMayorValor Como Entero;
	Definir cualIndice Como Entero;
	
	Escribir "Ingrese la cantidad de índices que tendrá el vector:";
	Leer indices;
	
	indiceMayorValor <- 0;
	cualIndice <- 0;
	Dimension vector[indices];
	
	Para contador <- 0 Hasta indices - 1 Con Paso 1 Hacer
		Escribir "Ingrese un valor para el índice ", contador, ":";
		Hacer
			Leer vector[contador];
			Si vector[contador] < 1 Entonces
				Escribir "Solo se pueden ingresar valores positivos";
				Escribir "Ingrese un valor para el índice ", contador, ":";
			FinSi
		Hasta Que (vector[contador] > 0)
		Si vector[contador] > indiceMayorValor Entonces
			indiceMayorValor <- vector[contador];
			cualIndice <- contador;
		FinSi
	FinPara
	
	Escribir "El índice ", cualIndice, " contiene el mayor valor, que es ", indiceMayorValor;
FinAlgoritmo