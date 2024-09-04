Algoritmo DiferenciaHoras
	
	Definir horaInicial, minutoInicial, segundoInicial Como Entero;
	
	Definir horaFinal, minutoFinal, segundoFinal Como Entero;
	
	Definir diferenciaHora, diferenciaMinuto, diferenciaSegundo Como Entero;
	
	Definir tiempoInicial, tiempoFinal, diferenciaTiempo Como Entero;
	
	
	Escribir "Ingrese la hora inicial:";
	Leer horaInicial;
	Escribir "Ingrese los minutos iniciales:";
	Leer minutoInicial;
	Escribir "Ingrese los segundos iniciales:";
	Leer segundoInicial;
	
	
	Escribir "Ingrese la hora final:";
	Leer horaFinal;
	Escribir "Ingrese los minutos finales:";
	Leer minutoFinal;
	Escribir "Ingrese los segundos finales:";
	Leer segundoFinal;
	
	tiempoInicial <- horaInicial * 3600 + minutoInicial * 60 + segundoInicial;
	tiempoFinal <- horaFinal * 3600 + minutoFinal * 60 + segundoFinal;
	diferenciaTiempo <- tiempoFinal - tiempoInicial;
	
	
	diferenciaHora <- trunc(diferenciaTiempo / 3600);
	diferenciaTiempo = diferenciaTiempo-(diferenciaHora*3600)
	diferenciaMinuto <- trunc(diferenciaTiempo/60);
	diferenciaSegundo <- diferenciaTiempo % 60;
	
	
	Escribir "La diferencia de horas es: ", ConvertirATexto(diferenciaHora), ":", ConvertirATexto(diferenciaMinuto), ":", ConvertirATexto(diferenciaSegundo);
	
FinAlgoritmo