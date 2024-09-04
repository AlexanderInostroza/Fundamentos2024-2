Algoritmo Divisores
	
	Definir num, i Como Entero;
	
	Escribir "Ingrese un número entero positivo:";
	Leer num;
	
	Escribir "Los divisores de ", num, " son:";
	
	Para i <- 1 Hasta num Hacer
		Si (num MOD i) = 0 Entonces 
			Escribir i;
		FinSi
	FinPara
	
FinAlgoritmo