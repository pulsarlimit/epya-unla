Algoritmo practica_IX_orden_ascendente
	Definir a Como Entero;
	Definir b Como Entero;
	Definir auxiliar Como Entero;
	
	Escribir "Ingrese a:";
	Leer a;
	Escribir "Ingrese b:";
	Leer b;
	
	Si (a > b)
		auxiliar<- b;
		b<- a;
		a<- auxiliar;
	FinSi
	
	Escribir "Valores:", a, ",", b;
FinAlgoritmo
