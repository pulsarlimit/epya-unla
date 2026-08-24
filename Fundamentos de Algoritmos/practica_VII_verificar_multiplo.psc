Algoritmo practica_VII_verificar_multiplo
	Definir a Como Entero;
	Definir b Como Entero;
	Definir resto Como Entero;
	
	Escribir "Ingrese a:";
	Leer a;
	Escribir "Ingrese b:";
	Leer b;
	
	resto<- a MOD b;
	
	Si (resto=0)
		Escribir "A es múltiplo de B";
	SiNo
		Escribir "A no es múltiplo de B";
	FinSi
FinAlgoritmo
