// Arreglos unidimensionales, Ejercicio 4
// Diseñar el algoritmo y la prueba de escritorio tal que dado un arreglo unidimensional de entero
// positivos encontrar la cantidad números pares.
Algoritmo Ejercicio4
	Definir vector Como Entero;
	Definir indices Como Entero;
	Definir contador Como Entero;
	Definir indicesPares Como Entero;
	
	Escribir "Ingrese la cantidad de índices que tendrá el vector:";
	Leer indices;
	
	indicesPares <- 0;
	Dimension vector[indices];
	
	Para contador <- 0 Hasta indices - 1 Con Paso 1 Hacer
		Escribir "Ingrese un valor para el índice ", contador, ":";
		Hacer
			Leer vector[contador];
			Si (vector[contador] < 1) Entonces
				Escribir "Solo se pueden ingresar valores positivos";
				Escribir "Ingrese un valor para el índice ", contador, ":";
			FinSi
		Hasta Que (vector[contador] > 0)
		Si (vector[contador] MOD 2 = 0) Entonces
			indicesPares <- indicesPares + 1;
		FinSi
	FinPara
	
	Escribir "En el vector de ", indices, " indices, solo ", indicesPares, " contienen valores pares";
FinAlgoritmo