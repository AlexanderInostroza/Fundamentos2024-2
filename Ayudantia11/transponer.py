def transponer(lista,n):
    notas = [
        "do","do#",
        "re","re#",
        "mi",
        "fa","fa#",
        "sol","sol#",
        "la","la#",
        "si"
    ]
    l = []
    for nota in lista:
        i = notas.index(nota)
        new_pos = i + n
        while new_pos < 0: new_pos += len(notas)
        if new_pos >= len(notas): new_pos %= len(notas)
        l.append(notas[new_pos])
    return l