// Escape Room 1, Desafío 4
// Para abrir los cofres y obtener las dos llaves, debes encontrar el primer par de números
// amigos de cuatro cifras: aquellos donde la suma de los divisores propios de uno es igual al
// otro número, y viceversa.
Algoritmo Desafio4
    Definir n, i, na, j Como Entero;
    Definir asdiv, audiv, apdiv Como Entero;
	Definir sdiv, udiv, pdiv Como Entero;
	Definir final, subfinal1, subfinal2 Como Logico;
	
	n <- 1000;
    final <- Falso;

	Mientras NO(final) Hacer
	    i <- 2;
        sdiv <- 1;
        udiv <- n;
        subfinal1 <- Falso;
     
		Mientras NO(subfinal1) Hacer
		    Si (n MOD i = 0) Entonces
			    pdiv <- udiv;
				udiv <- n / i;
				Si (pdiv <> i) Entonces
					sdiv <- sdiv + i + udiv;
				SiNo
					subfinal1<- Verdadero;
					na <- sdiv;
				FinSi
			FinSi
			i <- i + 1;
		FinMientras

         j <- 2;
        asdiv <- 1;
        audiv <- na;
        subfinal2 <- Falso;

		Mientras NO(subfinal2) Hacer
			Si (na MOD j = 0) Entonces
				apdiv <- audiv;
				audiv <- na / j;
			    Si (apdiv <> j) Entonces
				    asdiv <- asdiv + j + audiv;
				SiNo
				    subfinal2 <- Verdadero;
			    FinSi
			FinSi
            j <- j +1;
		FinMientras
		Si (n = asdiv) Entonces
			final <- Verdadero;
		SiNo
            n <- n + 1;
		FinSi
	FinMientras
     Escribir "La respuesta es: ", n, " y ", na;
FinAlgoritmo
