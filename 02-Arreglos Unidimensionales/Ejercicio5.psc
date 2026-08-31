// Arreglos unidimensionales, Ejercicio 5
// Diseñar el algoritmo tal que dado un arreglo unidimensional de enteros
// positivos encontrar la cantidad números primos.
Algoritmo Ejercicio5
	Definir vector, n Como Entero;
	Definir i, j Como Entero;
	Definir c_primos Como Entero;
	Definir primo Como Logico;
	
	Escribir "Ingrese la cantidad de indices del vector";
	Leer n;
	
	Dimension vector[n];
	c_primos <- 0;
	
	Escribir "Poblando su vector.";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector[i] <- Aleatorio(1, 100);
		Escribir Sin Saltar "Índice: ", i;
		Escribir ", Valor: ", vector[i];
	FinPara
	
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		j <- 2;
		Si (vector[i] >= 2) Entonces
			primo <- Verdadero;
			Mientras (j <= RC(vector[i]) Y primo) Hacer
				Si (vector[i] MOD j = 0) Entonces
					primo <- Falso;
				SiNo
					j <- j + 1;
				FinSi
			FinMientras
			Si (primo) Entonces
				c_primos <- c_primos + 1;
			FinSi
		FinSi
	FinPara
	
	Escribir "De un total de ", n, " índices, ", c_primos, " son primos";
FinAlgoritmo
