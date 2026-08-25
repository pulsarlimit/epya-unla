// Escape Room 1, Desafío 2
// Debes encontrar el primer número perfecto de cuatro cifras, aquel que es igual a la suma de
// sus divisores propios (excluyendo a sí mismo).
Algoritmo Desafio2
	Definir n, suma_div_n, i Como Entero;
	Definir ultimo_digito Como Entero;
	Definir n_saltados, n_comunes Como Entero;
	Definir perfecto_encontrado Como Logico;
	n <- 1000;
	perfecto_encontrado <- Falso;
	n_saltados <- 0;
	n_comunes <- 0;
	Mientras NO(perfecto_encontrado) Hacer
		Borrar Pantalla;
		Escribir "Saltados: ", n_saltados;
		Escribir "No Perfectos: ", n_comunes;
		suma_div_n <- 0;
		ultimo_digito <- n MOD 10;
		Si (ultimo_digito <> 6 Y ultimo_digito <> 8) Entonces
			n_saltados <- n_saltados + 1;
			n <- n + 1;
		SiNo
			Para i <- 1 Hasta n/2 Con Paso 1 Hacer
				Si (n MOD i = 0) Entonces
					suma_div_n <- suma_div_n + i;
				FinSi
			FinPara
			Si n = suma_div_n Entonces
				Escribir "Encontré el número perfecto:", n;
				perfecto_encontrado <- Verdadero;
			SiNo
				n_comunes <- n_comunes + 1;
				n <- n + 1;
			FinSi
		FinSi
	FinMientras
FinAlgoritmo