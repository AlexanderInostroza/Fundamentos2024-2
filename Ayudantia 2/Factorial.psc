Algoritmo Factorial
	
	Definir num, fact, inicio Como Entero
	
	Escribir "Ingrese un n�mero entero:"
	Leer num
	inicio <- num
	Si num < 0 Entonces
		Escribir "El factorial no est� definido para n�meros negativos."
	SiNo
		fact <- 1
		Mientras num > 0 Hacer
			fact <- fact * num
			num <- num - 1
		FinMientras
		Escribir "El factorial de ", inicio, " es: ", fact
	FinSi
	
FinAlgoritmo