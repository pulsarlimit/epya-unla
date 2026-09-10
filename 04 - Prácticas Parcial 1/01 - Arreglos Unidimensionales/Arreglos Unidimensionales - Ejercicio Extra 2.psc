// Practica de Arreglos Unidimensionales, Ejercicio Extra 2
// Leer 10 enteros, almacenarlos en un vector y determinar en que posicion
// del vector esta el mayor numero par leido.
Algoritmo EjercicioE_2
	Definir vector, n, i Como Entero;
	Definir num_mayor_par, num_mayor_par_pos, primer_par Como Entero;
	Definir hay_pares Como Logico;
	n <- 10;	Dimension vector[n];
	hay_pares <- Falso;
	Escribir "Llene su vector con numeros enteros:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Leer vector[i];
	FinPara // Se guardan los valores en el vector.
	i <- 0;
	Mientras No(hay_pares) Y (i <= (n - 1)) Hacer
		Si (vector[i] MOD 2 = 0) Entonces
			hay_pares <- Verdadero;
			num_mayor_par <- vector[i];
			num_mayor_par_pos <- i;
			primer_par <- i;
			Escribir i;
		FinSi
		i <- i + 1;
	FinMientras // Se determina si hay numeros pares en el vector.
	Borrar Pantalla;
	Escribir "Se muestran los contenidos de su vector:";
	Para i <- 0 Hasta (n - 1) Con Paso 1 Hacer
		Escribir "vector[", i, "] = ", vector[i];
	FinPara // Se muestran los contenidos del vector.
	Si NO(hay_pares) Entonces
		Escribir "No habia numeros pares";
	SiNo
		Para i <- (primer_par + 1) Hasta (n - 1) Con Paso 1 Hacer
			Si (num_mayor_par < vector[i]) Y (vector[i] MOD 2 = 0) Entonces
				num_mayor_par <- vector[i];
				num_mayor_par_pos <- i;
			FinSi
		FinPara // Se determina el mayor numero par y su posicion.
		Escribir "El mayor numero par ingresado fue: ", num_mayor_par;
		Escribir "Se encontraba en el indice: ", num_mayor_par_pos;
	FinSi // Si no hay pares se informa y si hay se busca el mayor de los mismos.
FinAlgoritmo