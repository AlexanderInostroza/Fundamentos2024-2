Algoritmo calcular_velocidad
	Definir distancia_metros, tiempo_segundos, velocidad_kmh Como Real
	
	Escribir "Ingrese la distancia recorrida en metros:"
	Leer distancia_metros
	
	Escribir "Ingrese el tiempo transcurrido en segundos:"
	Leer tiempo_segundos
	
	distancia_km <- distancia_metros / 1000
	
	tiempo_horas <- tiempo_segundos / 3600
	
	velocidad_kmh <- distancia_km / tiempo_horas
	
	Escribir "La velocidad del objeto es: ", velocidad_kmh, " km/h"
FinAlgoritmo