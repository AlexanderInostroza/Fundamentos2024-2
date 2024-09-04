Algoritmo NumeroFuerte
	
	Definir num, num_copia, suma, ultimo_digito, factorial Como Entero;
	
	Escribir "Ingrese un n�mero:";
	Leer num;
	
	num_copia <- num; // Copiar el n�mero para no modificarlo
	suma <- 0;
	
	// Separar el n�mero en cifras
	Mientras num_copia <> 0 Hacer
		ultimo_digito <- num_copia MOD 10; // Obtener el �ltimo d�gito
		
		factorial <- 1;
		Mientras ultimo_digito > 1 Hacer // Calcular el factorial del �ltimo d�gito
			factorial <- factorial * ultimo_digito;
			ultimo_digito <- ultimo_digito - 1;
		FinMientras
		
		suma <- suma + factorial; // Sumar el factorial a la suma total
		
		num_copia <- trunc(num_copia / 10); // Eliminar el �ltimo d�gito
	FinMientras
	
	Si suma = num Entonces
		Escribir "Es fuerte";
	Sino
		Escribir "No es fuerte.";
	FinSi
	
FinAlgoritmo