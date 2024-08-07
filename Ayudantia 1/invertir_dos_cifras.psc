Algoritmo invertir_dos_cifras
	Definir num, unidades, decenas Como Entero
	Escribir "Ingrese un número entero de dos cifras:"
	Leer num
	
	unidades <- num % 10
	decenas <- trunc(num / 10)
	
	Escribir "El número invertido es: ", unidades, decenas
FinAlgoritmo