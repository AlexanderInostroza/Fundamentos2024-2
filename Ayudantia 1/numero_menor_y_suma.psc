Algoritmo numero_menor_y_suma
	Escribir "Ingrese el primer valor "
	Leer num1
	Escribir "Ingrese el segundo valor "
	Leer num2
	Escribir "Ingrese el tercer valor "
	Leer num3
	suma <- num1 + num2 + num3
	Si num1 < num2 & num1 < num3 Entonces
		Escribir "El numero menor es : " num1
		Escribir "La suma de los numeros es : " suma
	SiNo
		Si num2 < num1 & num2 < num3 Entonces
			Escribir "El numero menor es : " num2
			Escribir "La suma de los numeros es : " suma
		SiNo 
			Escribir "El numero menor es : " num3
			Escribir "La suma de los numeros es : " suma
		FinSi
	FinSi
FinAlgoritmo