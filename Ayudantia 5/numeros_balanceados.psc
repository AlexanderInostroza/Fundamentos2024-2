Algoritmo numeros_balanceados
	Definir num, copia_num, largo Como Entero
	
	Leer num
	
	copia_num <- num
	largo <- 0
	
	// calculo del largo del numero
	Mientras copia_num <> 0 Hacer
		largo <- largo + 1
		copia_num <- trunc(copia_num / 10)
	FinMientras
	
	copia_num <- num
	
	Definir suma_izq, suma_der Como Entero
	Definir balanceado Como Logico
	
	suma_der <- 0
	suma_izq <- 0
	
	Si largo <= 2 Entonces // casos especiales 
		Escribir "Balanceado"
	SiNo
		Si	largo % 2 = 0 Entonces // largo par
			Para i <- 1 Hasta (largo/2)-1 Hacer
				suma_der <- trunc((num % 10^i - num % 10^(i-1) )/(10^(i-1))) + suma_der
			FinPara
			para i <- (largo/2)+2 Hasta largo Hacer
				suma_izq <- trunc((num % 10^i - num % 10^(i-1) )/(10^(i-1))) + suma_izq
			FinPara
		SiNo // largo impar
			Para i <- 1 Hasta trunc(largo/2) Hacer
				suma_der <- trunc((num % 10^i - num % 10^(i-1) )/(10^(i-1))) + suma_der
			FinPara
			para i <- trunc(largo/2)+2 Hasta largo Hacer
				suma_izq <- trunc((num % 10^i - num % 10^(i-1) )/(10^(i-1))) + suma_izq
			FinPara
		FinSi
		
		Si suma_izq = suma_der Entonces // comparacion de los lados
			Escribir  "Balanceado"
		SiNo
			Escribir "No balanceado"
		FinSi
	FinSi

FinAlgoritmo
