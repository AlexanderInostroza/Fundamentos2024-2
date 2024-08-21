Algoritmo MaquinaExpendedora
	
	Definir opcion Como Entero
	Definir dineroIngresado Como Real
	Definir precioProducto Como Real
	Definir cambio Como Real
	
	Escribir "Bienvenido a la máquina expendedora!"
	Escribir ""
	Escribir "1. Refresco - $1.00"
	Escribir "2. Agua - $0.50"
	Escribir "3. Papas - $1.50"
	Escribir "4. Chocolate - $0.75"
	Escribir "5. Salir"
	Escribir ""
	
	Escribir "Elija su producto (1-5):"
	Leer opcion
	
	Si opcion = 1 Entonces
		precioProducto <- 1.00
		Escribir "Ha seleccionado Refresco. Por favor, ingrese $", precioProducto, ":"
		Leer dineroIngresado
		Si dineroIngresado >= precioProducto Entonces
			cambio <- dineroIngresado - precioProducto
			Escribir "Aquí está su Refresco y su cambio de $", cambio, "."
		Sino
			Escribir "Dinero insuficiente. Por favor, intente de nuevo."
		FinSi
	
	SiNo Si opcion = 2 Entonces
			precioProducto <- 0.50
			Escribir "Ha seleccionado Agua. Por favor, ingrese $", precioProducto, ":"
			Leer dineroIngresado
			Si dineroIngresado >= precioProducto Entonces
				cambio <- dineroIngresado - precioProducto
				Escribir "Aquí está su Agua y su cambio de $", cambio, "."
			Sino
				Escribir "Dinero insuficiente. Por favor, intente de nuevo."
			FinSi
		SiNo Si opcion = 3 Entonces
				precioProducto <- 1.50
				Escribir "Ha seleccionado Papas. Por favor, ingrese $", precioProducto, ":"
				Leer dineroIngresado
				Si dineroIngresado >= precioProducto Entonces
					cambio <- dineroIngresado - precioProducto
					Escribir "Aquí están sus Papas y su cambio de $", cambio, "."
				Sino
					Escribir "Dinero insuficiente. Por favor, intente de nuevo."
				FinSi
			SiNo Si opcion = 4 Entonces
					precioProducto <- 0.75
					Escribir "Ha seleccionado Chocolate. Por favor, ingrese $", precioProducto, ":"
					Leer dineroIngresado
					Si dineroIngresado >= precioProducto Entonces
						cambio <- dineroIngresado - precioProducto
						Escribir "Aquí está su Chocolate y su cambio de $", cambio, "."
					Sino
						Escribir "Dinero insuficiente. Por favor, intente de nuevo."
					FinSi
				SiNo Si opcion = 5 Entonces
						Escribir "Gracias por su compra!"
					Sino
						Escribir "Opción inválida. Por favor, elija una opción del 1 al 5."
					FinSi
					
					Escribir "Gracias!"
				fin si
				fin si
			FinSi
			finsi
FinAlgoritmo