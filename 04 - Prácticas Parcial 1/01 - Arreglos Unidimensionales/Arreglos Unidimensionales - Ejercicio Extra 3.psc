// Practica de Arreglos Unidimensionales, Ejercicio Extra 3
// Leer 10 enteros, almacenarlos en un vector y determinar en que posicion
// del vector esta el mayor numero primo leido.
Algoritmo EjercicioE_3
	Definir vector, n, i, j Como Entero;
	Definir num_mayor_pri, num_mayor_pri_pos Como Entero;
	Definir resto Como Real;
	Definir hay_primo, es_primo Como Logico;
	n <- 10; Dimension vector[n];
	Escribir "Llene su vector con numeros enteros:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Leer vector[i];
	FinPara // Se guardan los numeros ingresados en el vector.
	i <- 0;
	hay_primo <- Falso;
	Mientras NO(hay_primo) Y (i <= (n - 1)) Hacer
		j <- 2;
		Mientras (j <= RC(n)) Hacer
			resto <- vector[i] MOD j;
			Si (resto > 0) Y (vector[i] > 1) Entonces
				es_primo <- Verdadero;
			SiNo
				es_primo <- Falso;
			FinSi
			j <- j + 1;
		FinMientras
		Si (es_primo) Entonces
			hay_primo <- Verdadero;
			num_mayor_pri <- vector[i];
			num_mayor_pri_pos <- i;
		FinSi
		i <- i + 1;
	FinMientras
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir "Indice: ", i, " Valor: ", vector[i];
	FinPara
	Si (hay_primo) Entonces
		Para i <- (num_mayor_pri_pos + 1) Hasta (n - 1) Con Paso 1 Hacer
			es_primo <- Falso;
			j <- 2;
			Mientras (j <= RC(n)) Y NO(es_primo) Hacer
				resto <- vector[i] MOD j;
				Si (resto > 0) Y (vector[i] > 1) Entonces
					es_primo <- Verdadero;
				SiNo
					es_primo <- Falso;
				FinSi
				j <- j + 1;
			FinMientras
			Si (es_primo) Y (num_mayor_pri < vector[i]) Entonces
				num_mayor_pri <- vector[i];
				num_mayor_pri_pos <- i;
			FinSi
		FinPara
		Escribir "El mayor numero primo encontrado fue: ", num_mayor_pri;
		Escribir "Se encontraba en el indice: ", num_mayor_pri_pos;
	SiNo
		Escribir "No habia ningun numero primo";
	FinSi
FinAlgoritmo
