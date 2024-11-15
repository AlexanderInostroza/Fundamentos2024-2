lista1 = ["Pasta Carbonara", "Spaghetti", "Huevos", "Panceta", "Queso Pecorino", "Pimienta Negra"]
lista2 = ["Ensalada César", "Lechuga Romana", "Pollo a la parrilla", "Crutones", "Queso Parmesano", "Aderezo César"]
lista3 = ["Huevos Fritos", "Huevos", "Aceite"]

recetas = []
recetas.append(lista1)
recetas.append(lista2)
recetas.append(lista3)

while True:
    print("\nSeleccione:")
    print("1. Ver recetas.")
    #seleccionar y ver ingredientes en una sola opcion
    print("2. Seleccionar receta.")
    print("3. Salir.")
    op = int(input("> "))
    match op:
        case 1:
            for i in range(len(recetas)):
                print("\t"+str(i+1)+".",recetas[i][0])
        case 2:
            n = int(input("¿Qué receta desea ver?\n> "))
            print("lista de ingredientes:")
            for ingrediente in recetas[n-1][1:]:
                print("\t",ingrediente)
        case 3:
            break
        case _:
            print("Opción no válida, intente nuevamente:")