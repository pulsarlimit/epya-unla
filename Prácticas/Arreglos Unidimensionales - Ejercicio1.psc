// Prýctica de Arreglos Unidimensionales, Ejercicio 1
// Crear un algoritmo que inicialice un vector de dimensiýn 10 con valores aleatorios del 1 al 10 y solicite al
// usuario el ingreso de un nýmero del 1 al 10. El algoritmo debe calcular la probabilidad de ocurrencia del
// nýmero ingresado, segýn los valores cargados en el arreglo.
Algoritmo Ejercicio1
	Definir vector, n Como Entero;
	Definir i, cantNum, num Como Entero;
	Definir prob Como Real;
	Escribir "Ingrese un nýmero del 1 al 10 para saber su probabilidad de ocurrencia en el vector:";
	Leer num;
	n <- 10;
	cantNum <- 0;
	Dimension vector[n];
	Escribir "Poblando su vector";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		vector[i] <- Aleatorio(1, 10);
		Escribir "ýndice: ", i, " Valor asignado: ", vector[i];
	FinPara
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Si (vector[i] = num) Entonces
			cantNum <- cantNum + 1;
		FinSi
	FinPara
	prob <- cantNum / n;
	Escribir "La probabilidad de ocurrencia del numero ingresado fue de: ", prob, " (", (prob * 100), "%)";
FinAlgoritmo