// Practica de Arreglos Unidimensionales, Ejercicio Extra 3
// Leer 10 enteros, almacenarlos en un vector y determinar en que posicion
// del vector esta el mayor numero primo leido.
Algoritmo EjercicioE_3
	Definir vector, n, i, j Como Entero;
	Definir num_mayor_pri, num_mayor_pri_pos Como Entero;
	Definir es_primo Como Logico;
	n <- 10; Dimension vector[n];
	num_mayor_pri <- 0;
	Escribir "Llene su vector con numeros enteros:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Leer vector[i];
	FinPara // Se guardan los numeros ingresados en el vector.
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		es_primo <- Verdadero;
		j <- 2;
		Si (vector[i] > 1) Entonces
			Mientras es_primo Y (j <= RC(vector[i])) Hacer
				Si (vector[i] MOD j = 0) Entonces
					es_primo <- Falso;
				FinSi
				j <- j + 1;
			FinMientras
		SiNo
			es_primo <- Falso;
		FinSi // Se determina si el numero es mayor a 1, si no lo es se determina no primo por defecto.
		Si es_primo Y (num_mayor_pri = 0) Entonces
			num_mayor_pri <- vector[i];
			num_mayor_pri_pos <- i;
		SiNo Si es_primo Y (num_mayor_pri < vector[i]) Entonces
				num_mayor_pri <- vector[i];
				num_mayor_pri_pos <- i;
			FinSi
		FinSi // Se determina el mayor numero primo
	FinPara
	Borrar Pantalla;
	Escribir "Se muestran los contenidos de su vector:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir "vector[", i, "] = ", vector[i];
	FinPara
	Si (num_mayor_pri = 0) Entonces
		Escribir "No habia numeros primos";
	SiNo
		Escribir "El mayor numero primo ingresado fue: ", num_mayor_pri;
		Escribir "Se encontraba en el indice: ", num_mayor_pri_pos;
	FinSi // Si num_mayor_pri es 0 se toma que no habia primos.
FinAlgoritmo