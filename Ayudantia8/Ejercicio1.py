
import random
def generar_numero_secreto(limite_inferior, limite_superior):


  return random.randint(limite_inferior, limite_superior)

numero_secreto = generar_numero_secreto(1, 100)

print(numero_secreto)


flage = True
intentos = 0

while flage:
    intento = int(input("Adivina el número (entre 1 y 100): "))
    intentos += 1

    if intento < numero_secreto:
      print("Demasiado bajo")
    elif intento > numero_secreto:
      print("Demasiado alto")
    else:
      print(f"¡Adivinaste! El número secreto era {numero_secreto}")
      print(f"Lo adivinaste en {intentos} intentos.")
      flage = False