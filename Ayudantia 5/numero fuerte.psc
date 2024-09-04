Algoritmo NumeroFuerte
	
	Definir num, num_copia, suma, ultimo_digito, factorial Como Entero;
	
	Escribir "Ingrese un número:";
	Leer num;
	
	num_copia <- num; // Copiar el número para no modificarlo
	suma <- 0;
	
	// Separar el número en cifras
	Mientras num_copia <> 0 Hacer
		ultimo_digito <- num_copia MOD 10; // Obtener el último dígito
		
		factorial <- 1;
		Mientras ultimo_digito > 1 Hacer // Calcular el factorial del último dígito
			factorial <- factorial * ultimo_digito;
			ultimo_digito <- ultimo_digito - 1;
		FinMientras
		
		suma <- suma + factorial; // Sumar el factorial a la suma total
		
		num_copia <- trunc(num_copia / 10); // Eliminar el último dígito
	FinMientras
	
	Si suma = num Entonces
		Escribir "Es fuerte";
	Sino
		Escribir "No es fuerte.";
	FinSi
	
FinAlgoritmo