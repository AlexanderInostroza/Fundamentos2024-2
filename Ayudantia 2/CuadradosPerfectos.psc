Proceso CuadradosPerfectos
	
	Definir num, ra Como Entero
	
	Escribir "Ingrese un número (ingrese 0 para terminar):"
	Leer num
	
	Mientras num <> 0 Hacer
		ra <- trunc(raiz(num))
		Si ra * ra = num Entonces
			Escribir num, " es un cuadrado perfecto."
		SiNo
			Escribir num, " no es un cuadrado perfecto."
		FinSi
		
		Escribir "Ingrese un número (ingrese 0 para terminar):"
		Leer num
	FinMientras
	
	Escribir "Fin del proceso."
	
FinProceso