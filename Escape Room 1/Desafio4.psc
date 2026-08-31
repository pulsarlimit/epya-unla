// Escape Room 1, Desafío 4
// Para abrir los cofres y obtener las dos llaves, debes encontrar el primer par de números
// amigos de cuatro cifras: aquellos donde la suma de los divisores propios de uno es igual al
// otro número, y viceversa.
Algoritmo Desafio4
	Definir n, i, na, j Como Entero;
	Definir sdiv, asdiv Como Entero;
	Definir final Como Logico;
	
	n <- 1000;
    final <- Falso;
	
	Escribir "Buscando el primer par de números amigos de cuatro cifras";
	Mientras NO(final) Hacer
		i <- 2;
		sdiv <- 1;
		Mientras (i < n) Hacer
		    Si (n MOD i = 0) Entonces
				sdiv <- sdiv + i;
			FinSi
			i <- i + 1;
		FinMientras
		na <- sdiv;
		j <- 2;
        asdiv <- 1;
		Mientras (j < na) Hacer
			Si (na MOD j = 0) Entonces
				asdiv <- asdiv + j;
			FinSi
            j <- j +1;
		FinMientras
		Si (n = asdiv) Y (n <> na) Entonces
			final <- Verdadero;
		SiNo
			n <- n + 1;
		FinSi
		Esperar 0.25 Segundos;
		Borrar Pantalla;
		Escribir "Buscando el primer par de números amigos de cuatro cifras";
		Escribir "Voy por el número: ", n;
	FinMientras
	Escribir "La respuesta es: ", n, " y ", na;
FinAlgoritmo
