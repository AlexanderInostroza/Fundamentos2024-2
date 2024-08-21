Algoritmo ruleta_rusa
	
	Definir jugadorVivo, oponenteVivo Como Logico
	jugadorVivo <- Verdadero
	oponenteVivo <- Verdadero
	
	Definir bala Como Entero
	bala <- azar(6) + 1
	
	Escribir "Es tu turno. Enter para continuar."
	Leer aux
	
	Si bala = 1 Entonces
		jugadorVivo <- Falso
	SiNo
		Escribir "Sigues vivo!"
	FinSi
	
	Si jugadorVivo y oponenteVivo Entonces
		Si bala = 2 Entonces
			oponenteVivo <- Falso
		SiNo
			Escribir "El oponente disparó y no ocurrió nada."
		FinSi
	FinSi
	
	Si jugadorVivo y oponenteVivo Entonces
		Escribir "Es tu turno. Enter para continuar."
		Leer aux
		Si bala = 3 Entonces
			jugadorVivo <- Falso
		SiNo
			Escribir "Sigues vivo!"
		FinSi
	FinSi
	
	Si jugadorVivo y oponenteVivo Entonces
		Si bala = 4 Entonces
			oponenteVivo <- Falso
		SiNo
			Escribir "El oponente disparó y no ocurrió nada."
		FinSi
	FinSi
	
	Si jugadorVivo y oponenteVivo Entonces
		Escribir "Es tu turno. Enter para continuar."
		Leer aux
		Si bala = 5 Entonces
			jugadorVivo <- Falso
		SiNo
			Escribir "Sigues vivo!"
		FinSi
	FinSi
	
	Si jugadorVivo y oponenteVivo Entonces
		oponenteVivo <- Falso
	FinSi
	
	Si jugadorVivo Entonces
		Escribir "El oponente disparó y perdió."
		Escribir "Ganaste el juego!"
	SiNo
		Escribir "PERDISTE"
	FinSi
	
FinAlgoritmo
