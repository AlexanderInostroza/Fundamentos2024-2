Algoritmo invertir_dos_cifras
	Definir num, unidades, decenas Como Entero
	Escribir "Ingrese un n�mero entero de dos cifras:"
	Leer num
	
	unidades <- num % 10
	decenas <- trunc(num / 10)
	
	Escribir "El n�mero invertido es: ", unidades, decenas
FinAlgoritmo