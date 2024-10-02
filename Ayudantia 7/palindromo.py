
cadena_invertida = ""
mi_cadena = "hola"
mi_cadena = mi_cadena.lower().replace(" ", "")
for letra in mi_cadena:
    cadena_invertida = letra + cadena_invertida


if mi_cadena == cadena_invertida:
    print("La cadena es palíndroma")