Algoritmo practica_III_geometria_triangulos
	Definir catetoMenor Como Real;
	Definir catetoMayor Como Real;
	Definir hipotenusa Como Real;
	Definir area Como Real;
	Definir perimetro Como Real;
	
	Escribir "Ingrese el catetoMenor:";
	Leer catetoMenor;
	Escribir "Ingrese el catetoMayor:";
	Leer catetoMayor;
	
	hipotenusa<- RC(catetoMenor^2+catetoMayor^2);
	area<- catetoMenor*catetoMayor/2;
	perimetro<- catetoMenor+catetoMayor+hipotenusa;
	
	Escribir "Hipotenusa:", hipotenusa;
	Escribir "Área:", area;
	Escribir "Perímetro:", perimetro;
FinAlgoritmo
