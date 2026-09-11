// Practica de Arreglos Unidimensionales, Ejercicio Extra 3
// Leer 10 enteros, almacenarlos en un vector y determinar en que posicion
// del vector esta el mayor numero primo leido.
Algoritmo EjercicioE_3
	Definir vector, n, i, j Como Entero;
	Definir num_mayor_pri, num_mayor_pri_pos Como Entero;
	Definir resto Como Real;
	Definir hay_primos, es_primo Como Logico;
	n <- 10; Dimension vector[n];
	Escribir "Llene su vector con numeros enteros:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Leer vector[i];
	FinPara // Se guardan los numeros ingresados en el vector.
	Borrar Pantalla;
	i <- 0; hay_primos <- Falso;	
	Escribir "Comprobando si hay numeros primos dentro del vector...";
	Mientras NO(hay_primos) Y (i <= (n - 1)) Hacer
		j <- 2;
		es_primo <- Verdadero;
		Si (vector[i] > 1) Entonces
			Mientras (j <= RC(vector[i])) Y es_primo Hacer
				resto <- vector[i] MOD j;
				Si (resto = 0) Entonces
					es_primo <- Falso;
				FinSi
				j <- j + 1;
			FinMientras
		SiNo
			es_primo <- Falso;
		FinSi
		Si (es_primo) Entonces
			Escribir "Se encontro un numero primo";
			hay_primos <- Verdadero;
			num_mayor_pri <- vector[i];
			num_mayor_pri_pos <- i;
		FinSi
		i <- i + 1;
	FinMientras // Verifica si hay numeros primos en el vector.
	Escribir "Presione Enter para continuar..."; Esperar Tecla;
	Borrar Pantalla;
	Escribir "Se muestra los contenidos de su vector:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir "Indice: ", i, " Valor: ", vector[i];
	FinPara // Muestra los contenidos del vector.
	Si (hay_primos) Entonces
		Para i <- (num_mayor_pri_pos + 1) Hasta (n - 1) Con Paso 1 Hacer
			es_primo <- Verdadero;
			Si (vector[i] > 1) Entonces
				Mientras (j <= RC(vector[i])) Y es_primo Hacer
					resto <- vector[i] MOD j;
					Si (resto = 0) Entonces
						es_primo <- Falso;
					FinSi
					j <- j + 1;
				FinMientras
			SiNo
				es_primo <- Falso;
			FinSi
			Si (es_primo) Y (num_mayor_pri < vector[i]) Entonces
				num_mayor_pri <- vector[i];
				num_mayor_pri_pos <- i;
			FinSi
		FinPara // Busca el numero primo mas grande dentro del vector,
		// comenzando desde el indice posterior al primer numero primo encontrado.
		Escribir "El mayor numero primo encontrado fue: ", num_mayor_pri;
		Escribir "Se encontraba en el indice: ", num_mayor_pri_pos;
	SiNo
		Escribir "No habia ningun numero primo";
	FinSi
FinAlgoritmo
