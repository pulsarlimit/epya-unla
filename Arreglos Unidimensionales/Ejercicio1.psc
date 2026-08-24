// Arreglos unidimensionales, Ejercicio 1
// Diseñar el algoritmo y la prueba de escritorio tal que dado un arreglo unidimensional de entero
// positivos calcular la media.
Algoritmo Ejercicio1
	Definir vector Como Entero;
	Definir indices Como Entero;
	Definir contador Como Entero;
	Definir sumaDelVector Como Entero;
	
	Escribir "Ingrese la cantidad de índices del vector a promediar:";
	Leer indices;
	
	Dimension vector[indices];
	sumaDelVector <- 0;
	
	Para contador <- 0 Hasta indices - 1 Con Paso 1 Hacer
		Escribir "Ingrese el valor del índice ", contador, ":";
		Leer vector[contador];
	FinPara
	
	Para contador <- 0 Hasta indices - 1 Con Paso 1 Hacer
		sumaDelVector <- sumaDelVector + vector[contador];
	FinPara
	
	Escribir "El promedio de los valores contenidos en su vector es de: ", (sumaDelVector / indices);
FinAlgoritmo
