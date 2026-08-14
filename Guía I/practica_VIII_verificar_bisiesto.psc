Algoritmo practica_VIII_verificar_bisiesto
	Definir agno Como Entero;
	Definir divCuatro Como Logico;
	Definir divCien Como Logico;
	Definir divCuatrocientos Como Logico;
	Definir primerCaso Como Logico;
	Definir segundoCaso Como Logico;
	
	Escribir "Ingrese el año:";
	Leer agno;
	
	divCuatro<- agno MOD 4 = 0;
	divCien<- agno MOD 100 = 0;
	divCuatrocientos<- agno MOD 400 = 0;
	primerCaso<- divCien Y divCuatro Y divCuatrocientos;
	segundoCaso<- NO(divCien) Y divCuatro; 
	
	Si (primerCaso O segundoCaso)
		Escribir "El año ", agno, " es bisiesto";
	SiNo
		Escribir "El año ", agno, " no es bisiesto";
	FinSi
FinAlgoritmo
