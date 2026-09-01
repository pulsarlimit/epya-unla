// Escape Room 1, Desafío 3
// Para continuar, debes descubrir este número (automórfico de cuatro cifras) y girar los diales del cubo para ingresarlo.
// Si la respuesta es correcta, el cubo se abrirá, revelando la llave que te permitirá seguir adelante.
Algoritmo Desafio3
	Definir n, automorfico, i Como Entero;
	Definir digitos Como Entero;
	Definir automorfico_encontrado Como Logico;
	n <- 1000; // El número que buscamos es de 4 cifras.
	digitos <- 4; //  Idem
	automorfico_encontrado <- Falso;
	Mientras NO(automorfico_encontrado) Hacer
		automorfico <- n^2 MOD 10^digitos; // Formula: n^2 MOD 10^d, donde n es el número y d son los dígitos.
		Si (n = automorfico) Entonces
			Escribir "Encontré el número automórfico:", n;
			automorfico_encontrado <- Verdadero;
		SiNo
			n <- n + 1;
		FinSi
	FinMientras
FinAlgoritmo	