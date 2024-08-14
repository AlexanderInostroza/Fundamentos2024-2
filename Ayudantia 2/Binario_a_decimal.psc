Algoritmo Binario_a_decimal
	
	Escribir "Escriba un numero binario"
	Leer numero_binario
	
	potencia_de_2 <- 1 // contador de potencias de 2
	numero_decimal <- 0
	
	Mientras numero_binario > 0 Hacer
		
		valor_auxiliar <- (numero_binario % 10) * potencia_de_2
		numero_decimal <- numero_decimal + valor_auxiliar
		
		numero_binario = trunc(numero_binario / 10)
		potencia_de_2 <- 2 * potencia_de_2
		
	FinMientras
	
	Escribir "Su número es ", numero_decimal
	
FinAlgoritmo
	