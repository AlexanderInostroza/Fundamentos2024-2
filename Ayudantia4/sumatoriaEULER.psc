Algoritmo sumatoria_Euler
	
    Definir n, i  Como Entero
    Definir termino, suma Como Real
	leer n
	
	Escribir "sumatoria"
	
	
    Para i <- 0 Hasta n Con Paso 1 Hacer
		factorial = 1
		
		Si i == 0 Entonces
			factorial <- 1
			
		SiNo
			Para n <- 1 Hasta i Con Paso 1 Hacer
				factorial <- n*factorial
			Fin Para
		Fin Si
		
        termino <- factorial^(-1)
		suma <- suma+termino
		
        
		
    FinPara
	Escribir "la suma es: ", suma
    Escribir ""

FinAlgoritmo