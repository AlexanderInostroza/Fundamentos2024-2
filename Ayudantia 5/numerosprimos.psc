Algoritmo NumerosPrimos
	
	Definir num, j, i, divisores Como Entero;
	
	Escribir "Ingrese un número entero positivo:";
	Leer num;
	
	Escribir "Los números primos entre 1 y ", num, " son:";
	
	Para j <- 2 Hasta num Hacer 
		divisores <- 0; 
		Para i <- 1 Hasta j Hacer 
			Si (j MOD i) = 0 Entonces
				divisores <- divisores + 1;
			FinSi
		FinPara
		Si divisores = 2 Entonces
			Escribir j;
		FinSi
	FinPara
	
FinAlgoritmo