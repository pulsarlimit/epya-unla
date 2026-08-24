// Arreglos unidimensionales, Ejercicio 3
// Diseñar el algoritmo y la prueba de escritorio tal que dado un arreglo unidimensional de entero
// positivos encontrar el número menor y la posición que se encuentra.
Algoritmo menorDelVector
	Definir vector Como Entero;
	Definir indices Como Entero;
	Definir contador Como Entero;
	Definir indiceMenorValor Como Entero;
	Definir cualIndice Como Entero;
	
	Escribir "Ingrese la cantidad de índices que tendrá el vector:";
	Leer indices;
	
	// indiceMenorValor <- 2 ^ 16;
	// Los enteros en PseInt son de 16 bits 
	indiceMenorValor <- 0;
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
		Si (contador = 0) Entonces
			indiceMenorValor <- vector[contador];
			cualIndice <- contador;
		FinSi
		Si (vector[contador] < indiceMenorValor) Entonces
			indiceMenorValor <- vector[contador];
			cualIndice <- contador;
		FinSi
	FinPara
	
	Escribir "El índice ", cualIndice, " contiene el valor más pequeño, que es ", indiceMenorValor;	
FinAlgoritmo