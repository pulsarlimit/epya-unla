// Escape Room 1, Desafío 1
// Debes encontrar el primer número de tres cifras que cumple la siguiente propiedad: la suma
// de los cubos de sus cifras es igual al número en sí mismo.
Algoritmo Desafio1
	Definir i Como Entero;
	Definir tope Como Entero;
	Definir centena, decena, unidad Como Entero;
	Definir posible_solucion Como Entero;
	Definir solucion_encontrada Como Logico;
	i <- 100;
	tope <- 999;
	solucion_encontrada <- Falso;
	Mientras (i <= tope Y NO(solucion_encontrada)) Hacer
		centena <- TRUNC(i / 100);
		decena <- TRUNC(i / 10) MOD 10;
		unidad <- i MOD 10;
		posible_solucion <- (centena^3) + (decena^3) + (unidad^3);
		Si (posible_solucion = i) Entonces
			solucion_encontrada <- Verdadero;
			Borrar Pantalla;
			Escribir "El número que se admira a si mismo es 153";
		FinSi
		i <- i + 1;
	FinMientras
FinAlgoritmo

//  Este codigo consigue y muestra todos los números "narcicistas"
//	Para i <- 100 Hasta 999 Con Paso 1 Hacer
//		centena <- TRUNC(i / 100);
//		decena <- TRUNC(i / 10) MOD 10;
//		unidad <- i MOD 10;
//		posible_solucion <- (centena^3) + (decena^3) + (unidad^3);
//		Si (posible_solucion = i) Entonces
//			Escribir i, " es una número que se admira a si mismo";
//		FinSi
//	FinPara
