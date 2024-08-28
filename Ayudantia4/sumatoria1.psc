Algoritmo sumatoria
	
    Definir n, i  Como Entero
    Definir termino, suma Como Real
	leer n
	
	Escribir "sumatoria"
    Para i <- 0 Hasta n Con Paso 1 Hacer
        termino <- (4*((-1)^i))/((2*i)+1)
		suma <- suma+termino
		
        Escribir termino, " "
		
    FinPara
	Escribir "la suma es: ", suma
    Escribir ""

FinAlgoritmo