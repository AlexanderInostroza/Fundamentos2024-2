Algoritmo sin_titulo
	Definir cadenaInvertida Como Cadena
	cadena = "radar"
	cadenaInvertida <- ""
	Para i<-Longitud(cadena) Hasta 1 Con Paso -1 Hacer
		cadenaInvertida <- Concatenar(cadenaInvertida,Subcadena(cadena,i,i))
	FinPara
	Escribir cadenaInvertida
	Si Minusculas(cadena) = Minusculas(cadenaInvertida) Entonces
		Escribir Verdadero
	Sino
		Escribir Falso
	FinSi
FinAlgoritmo
