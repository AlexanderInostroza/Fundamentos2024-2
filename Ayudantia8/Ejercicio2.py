def contar_vocales(texto):
    vocales = "aeiouAEIOU"
    contador = 0
    for letra in texto:
        if letra in vocales:
            contador += 1
    return contador




#Codigo Base, NO TOCAR
texto_ejemplo = "Hola, Mundo!"
numero_vocales = contar_vocales(texto_ejemplo)
print(f"El texto '{texto_ejemplo}' tiene {numero_vocales} vocales.")


texto_ejemplo2 = "Este es OTRO ejemplo."
numero_vocales2 = contar_vocales(texto_ejemplo2)
print(f"El texto '{texto_ejemplo2}' tiene {numero_vocales2} vocales.")



texto_ejemplo3 = "PYTHON es genial"
numero_vocales3 = contar_vocales(texto_ejemplo3)
print(f"El texto '{texto_ejemplo3}' tiene {numero_vocales3} vocales.")