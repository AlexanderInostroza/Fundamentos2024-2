Algoritmo CalcularPotencia
	
	Definir base, exponente, resultado, i Como Entero
	
	Escribir "Ingrese la base (X):"
	Leer base
	
	Escribir "Ingrese el exponente (Y):"
	Leer exponente
	
	Si exponente < 0 Entonces
		Escribir "El exponente debe ser un número no negativo."
	SiNo
		resultado <- 1
		Para i <- 1 Hasta exponente Con Paso 1 Hacer
			resultado <- resultado * base
		FinPara
		
		Escribir base, " elevado a la ", exponente, " es: ", resultado
	FinSi
	
FinAlgoritmo