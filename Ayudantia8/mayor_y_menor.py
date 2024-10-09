def mayor_y_menor(numeros):
    """
    Recorriendo el string usando indices
    """
    aux = ""
    num_max = float('-inf') # infinito negativo
    num_min = float('inf') # infinito
    for i in range(len(numeros)):
        if numeros[i] != " ":
            aux = aux + numeros[i]
        else:
            num_max = max(num_max, int(aux))
            num_min = min(num_min, int(aux))
            aux = ""
    num_max = max(num_max, int(aux))
    num_min = min(num_min, int(aux))
    return str(num_max) + " " + str(num_min)

def mayor_y_menor2(numeros):
    """
    Usando for each
    """
    aux = ""
    num_max = float('-inf') # infinito negativo
    num_min = float('inf') # infinito
    for letra in numeros:
        if letra != " ":
            aux = aux + letra
        else:
            num_max = max(num_max, int(aux))
            num_min = min(num_min, int(aux))
            aux = ""
    num_max = max(num_max, int(aux))
    num_min = min(num_min, int(aux))
    return str(num_max) + " " + str(num_min)

def mayor_y_menor3(numeros):
    """
    Aprovechando Python
    """
    nums = list(map(int, numeros.split(" ")))
    return str(max(nums)) + " " + str(min(nums))

