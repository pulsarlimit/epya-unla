// Estructura Mientras, Ejercicio 2
Algoritmo aleatorioDelUnoAlVeinte
	Definir numeroSecreto Como Entero;
	Definir numeroComputadora Como Entero;
	Definir intentosComputadora Como Entero;
	Escribir "Ingrese un número del Uno al Veinte:";
	Leer numeroSecreto;
	numeroComputadora <- Aleatorio(1,20);
	intentosComputadora <- 1;
	Mientras (numeroSecreto <> numeroComputadora) Hacer
		numeroComputadora <- Aleatorio(1,20);
		intentosComputadora <- intentosComputadora + 1;
	FinMientras
	Escribir "Después de ", intentosComputadora, " intentos, descubrí que elegiste el ", numeroSecreto;
FinAlgoritmo