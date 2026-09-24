// Métodos de ordenamiento, Desafío 2 - Selectsort
ALGORITMO Desafio2
  DEFINIR v, n COMO ENTERO;
  DEFINIR dimension_valida COMO LOGICO;
  n <- 0;
  dimension_valida <- VERDADERO; 
  chequeo_dimension(n, dimension_valida);
  SI (dimension_valida) ENTONCES
    DIMENSION v[n];
	entrada_vector(v, n);
	ESCRIBIR SIN SALTAR "Entrada: Vector: ";
	salida_vector(v, n);
	selectsort(v, n);
	ESCRIBIR SIN SALTAR "Vector ordenado ascendente por Selección: ";
	salida_vector(v, n);
  SINO
    ESCRIBIR "-- ERROR: SE TERMINA EL PROGRAMA POR DIMENSIÓN INVALIDA --";
  FINSI
FINALGORITMO

FUNCION chequeo_dimension(n POR REFERENCIA, dimension_valida POR REFERENCIA)
	DEFINIR intentos COMO ENTERO;
	DEFINIR sin_intentos COMO LOGICO;
	intentos <- 3;
	HACER
		ESCRIBIR SIN SALTAR "Dimensión del vector? ";
		LEER n; dimension_valida <- (n > 1);
		SI NO(dimension_valida) ENTONCES
			intentos <- (intentos - 1);
			sin_intentos <- (intentos = 0);
			ESCRIBIR SIN SALTAR "ERROR: ", n, " es una dimensión invalida,";
			SI NO(sin_intentos) ENTONCES
			  ESCRIBIR " le quedan ", intentos, " intentos.";
			SINO
			  ESCRIBIR " se quedó sin intentos.";
			FINSI
		FINSI
	HASTA QUE (dimension_valida O sin_intentos)
FINFUNCION

FUNCION entrada_vector(v, n)
	DEFINIR i COMO ENTERO;
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		ESCRIBIR SIN SALTAR "vector[", i, "]? "; LEER v[i];
	FINPARA
FINFUNCION

FUNCION salida_vector(v, n)
	DEFINIR i COMO ENTERO;
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		SI (i = 0) ENTONCES
			ESCRIBIR SIN SALTAR "{", v[i] ", ";
		SINO 
			SI (i < (n - 1)) ENTONCES
				ESCRIBIR SIN SALTAR v[i], ", ";
			SINO
				ESCRIBIR v[i], "}";
			FINSI
		FINSI
	FINPARA
FINFUNCION

FUNCION selectsort(v, n)
	DEFINIR i, j COMO ENTERO;
	DEFINIR indice, permuta COMO ENTERO;
	PARA i <- 0 HASTA (n - 2) CON PASO 1 HACER
		indice <- i;
		PARA j <- (i + 1) HASTA (n - 1) CON PASO 1 HACER
			SI (v[j] < v[i]) ENTONCES
				indice <- j;
				permuta <- v[indice];
				v[indice] <- v[i];
				v[i] <- permuta;
				ESCRIBIR "Cambio (", v[indice], ", ",v[i], ")";
			FINSI
		FINPARA
		ESCRIBIR SIN SALTAR "Vector después de la primera pasada esta ordenado ascendentemente hasta ||: {";
		salida_intermedia_vector(v, n, permuta);
	FINPARA
FINFUNCION

FUNCION salida_intermedia_vector(v, n, permuta)
	DEFINIR i COMO ENTERO;
	PARA i <- 0 HASTA (n - 1) CON PASO 1 HACER
		SI (i < (n - 1)) ENTONCES
			SI (v[i] = permuta) ENTONCES
				ESCRIBIR SIN SALTAR v[i], ",|| ";
			SINO
				ESCRIBIR SIN SALTAR v[i], ", ";
			FINSI
		SINO
			ESCRIBIR v[i], "}";
		FINSI
	FINPARA
FINFUNCION