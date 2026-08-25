// Escape Room 1, Desafío 4
// Para abrir los cofres y obtener las dos llaves, debes encontrar el primer par de números
// amigos de cuatro cifras: aquellos donde la suma de los divisores propios de uno es igual al
// otro número, y viceversa.
Algoritmo Desafio4
	Definir n, n_comparado, i Como Entero;
	Definir suma_div_n, suma_div_n_comparada Como Entero;
	Definir amigo_encontrado Como Logico;
	n <- 1000;
	n_comparado <- 1000;
	suma_div_n <- 0;
	suma_div_n_comparada <- 0;
	amigo_encontrado <- Falso;
	Mientras NO(amigo_encontrado) Hacer
		Para i <- 1 Hasta n/2 Hacer
			suma_div_n <- suma_div_n + i;
		FinPara
		Para i <- 1 Hasta n_comparado/2 Hacer
			suma_div_n_comparada <- suma_div_n_comparada + i;
		FinPara
		Si (suma_div_n < suma_div_n_comparada) Entonces
			n_comparado <- n_comparado + 1;
		FinSi
	FinMientras
FinAlgoritmo
// Incompleto