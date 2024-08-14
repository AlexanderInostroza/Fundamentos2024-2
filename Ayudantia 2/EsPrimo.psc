Algoritmo EsPrimo
	
	Definir numero, i, contador Como Entero
	
	Escribir "Ingrese un número entero:"
	Leer numero
	
	Si numero <= 1 Entonces
		Escribir numero, " no es un número primo."
	SiNo
		contador <- 0
		Para i <- 1 Hasta numero Con Paso 1 Hacer
			Si numero MOD i = 0 Entonces
				contador <- contador + 1
			FinSi
		FinPara
		
		Si contador = 2 Entonces
			Escribir numero, " es un número primo."
		SiNo
			Escribir numero, " no es un número primo."
		FinSi
	FinSi
	
FinAlgoritmo