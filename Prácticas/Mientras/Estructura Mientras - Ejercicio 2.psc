// Práctica Estructura Mientras, Ejercicio 2
// Se leen N cantidad de temperaturas de una maquina (generadas con Aleatorio(30, 100)) y tienen que
// estar dentro de los límites 50-80. Si están por debajo o por encima del rango, devuelve ERROR y se apaga.
// Si se llega a leer N cantidad de temperaturas sin error, devuelve OK y se apaga.
Algoritmo Ejercicio2
	Definir temp Como Entero;
	Definir cant_checks Como Entero;
	Definir i Como Entero;
	Definir fin_ciclo Como Logico;
	Escribir "Ingrese la cantidad de veces que quiere que se cheque la temperatura:";
	Leer cant_checks;
	i <- 1;
	fin_ciclo <- Falso;
	temp <- Aleatorio(30,100);
	Mientras (i <= cant_checks Y NO(fin_ciclo)) Hacer
		Si (temp >= 50 Y temp <= 80) Entonces
			Si i < cant_checks Entonces
				i <- i + 1;
			SiNo
				fin_ciclo <- Verdadero;
				Borrar Pantalla;
				Escribir "OK";
			FinSi
		SiNo
			fin_ciclo <- Verdadero;
			Borrar Pantalla;
			Escribir "ERROR";
		FinSi
		temp <- Aleatorio(30,100);
	FinMientras
FinAlgoritmo
