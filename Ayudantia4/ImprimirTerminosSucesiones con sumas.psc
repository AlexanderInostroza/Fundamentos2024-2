Algoritmo ImprimirTerminosSucesiones
	
    Definir n, i  Como Entero
    Definir termino, suma Como Real
	
    Escribir "Ingrese el número de términos (n): "
    Leer n
	suma = 0
	
    Escribir "Términos de S_n = n:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir i, " "
		suma <- suma+i
		
    FinPara
	Escribir "la suma es: ", suma
    Escribir "" 
	
	suma = 0
    Escribir "Términos de S_n = 2n:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir 2 * i, " "
		suma <- (suma+(2*i))
		
    FinPara
	Escribir "la suma es: ", suma
    Escribir "" 
	
	suma = 0
    Escribir "Términos de S_n = 1/n:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        termino <- 1 / i
		suma <- suma+termino

        Escribir termino, " "
		
    FinPara
	Escribir "la suma es: ", suma
    Escribir ""
	suma = 0
	
	
	Escribir "Términos de S_n = 2n+1/4:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        termino <- ((2*i)+1)/4
		suma <- suma+termino

        Escribir termino, " "
		
    FinPara
	Escribir "la suma es: ", suma
    Escribir ""
	suma = 0
	
	Escribir "Términos de S_n = raiz de n:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        termino <- i^(1/2)
		suma <- suma+termino
		
        Escribir termino, " "
		
    FinPara
	Escribir "la suma es: ", suma
    Escribir ""

FinAlgoritmo