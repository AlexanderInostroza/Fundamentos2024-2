Algoritmo calcular_imc
	Definir peso, estatura, imc Como Real
	Escribir "Ingrese su peso en kilogramos:"
	Leer peso
	Escribir "Ingrese su estatura en metros:"
	Leer estatura
	imc <- peso / (estatura * estatura)
	Escribir "Su IMC es: ", imc
	Si imc < 18.5 Entonces
		Escribir "Clasificaci�n: Bajo peso"
	Sino
		Si imc < 25 Entonces
			Escribir "Clasificaci�n: Peso normal"
		Sino
			Si imc < 30 Entonces
				Escribir "Clasificaci�n: Sobrepeso"
			Sino
				Escribir "Clasificaci�n: Obesidad"
			FinSi
		FinSi
	FinSi
FinAlgoritmo