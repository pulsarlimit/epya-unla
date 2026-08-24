Algoritmo practica_XII_multiplo_3y5
	Definir a Como Entero;
	Definir divTres Como Logico;
	Definir divCinco Como Logico;
	Definir divAmbos Como Logico;
	
	Escribir "Ingrese a:";
	Leer a;
	
	divTres<- a MOD 3 = 0;
	divCinco<- a MOD 5 = 0;
	divAmbos<- divTres Y divCinco;
	
	Si divAmbos
		Escribir a, " es multiplo de 3 y de 5";
	SiNo
		Escribir a, " no es multiplo de 3 y de 5";
	FinSi
FinAlgoritmo
