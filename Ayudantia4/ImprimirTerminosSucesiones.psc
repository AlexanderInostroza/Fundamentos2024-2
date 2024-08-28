Algoritmo ImprimirTerminosSucesiones
	
    Definir n, i Como Entero
    Definir termino Como Real
	
    Escribir "Ingrese el número de términos (n): "
    Leer n
	
    Escribir "Términos de S_n = n:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir i, " "
    FinPara
    Escribir "" 
	

    Escribir "Términos de S_n = 2n:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        Escribir 2 * i, " "
    FinPara
    Escribir "" 
	

    Escribir "Términos de S_n = 1/n:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        termino <- 1 / i
        Escribir termino, " "
    FinPara
    Escribir ""
	
	Escribir "Términos de S_n = 2n+1/4:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        termino <- ((2*i)+1)/4
        Escribir termino, " "
    FinPara
    Escribir ""
	
	
	Escribir "Términos de S_n = raiz de n:"
    Para i <- 1 Hasta n Con Paso 1 Hacer
        termino <- i^(1/2)
        Escribir termino, " "
    FinPara
    Escribir ""

FinAlgoritmo