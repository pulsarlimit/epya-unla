Algoritmo practica_XIII_multiplo_2yno5
	Definir a Como Entero;
	Definir divDos Como Logico;
	Definir divCinco Como Logico;
	Definir dosSiCincoNo Como Logico;
	
	Escribir "Ingrese a:";
	Leer a;
	
	divDos<- a MOD 2 = 0;
	divCinco<- a MOD 5 = 0;
	dosSiCincoNo<- divDos Y NO(divCinco);
	
	Si dosSiCincoNo
		Escribir a, " es multiplo de 2 pero no de 5";
	SiNo
		Escribir a, " no es multiplo de 2 pero no de 5";
	FinSi
FinAlgoritmo