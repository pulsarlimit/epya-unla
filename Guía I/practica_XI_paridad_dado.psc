Algoritmo practica_XI_paridad_dado
	Definir dado Como Entero;
	Definir par Como Logico;
	
	dado<- ALEATORIO(1,6);
	par<- dado MOD 2 = 0;
	
	Si par
		Escribir "Dado:", dado;
		Escribir "PAR";
	SiNo
		Escribir "Dado:", dado;
		Escribir "IMPAR";
	FinSi
FinAlgoritmo