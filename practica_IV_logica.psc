Algoritmo practica_IV_logica
	Definir p Como Logico;
	Definir q Como Logico;
	Definir nop Como Logico;
	Definir noq Como Logico;
	Definir pyq Como Logico;
	Definir poq Como Logico;
	
	Escribir "Ingrese p:";
	Leer p;
	Escribir "Ingrese q:";
	Leer q;
	
	nop<- NO(p);
	noq<- NO(q);
	pyq<- p Y q;
	poq<- p O q;
	
	Escribir "~P:", nop;
	Escribir "~Q:", noq;
	Escribir "P ^ Q:", pyq;
	Escribir "P v Q:", poq;
FinAlgoritmo
