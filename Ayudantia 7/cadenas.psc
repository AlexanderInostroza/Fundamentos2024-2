Algoritmo sin_titulo
	Definir cadenaInvertida Como Cadena
	cadena = "Hola"
	cadenaInvertida <- ""
	Para i<-Longitud(cadena) Hasta 1 Con Paso -1 Hacer
		cadenaInvertida <- Concatenar(cadenaInvertida,Subcadena(cadena,i,i))
	FinPara
	Escribir cadenaInvertida
FinAlgoritmo
