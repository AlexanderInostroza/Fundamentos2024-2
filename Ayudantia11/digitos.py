def digitos(t):
    numbers = [
        "cero",
        "uno",
        "dos",
        "tres",
        "cuatro",
        "cinco",
        "seis",
        "siete",
        "ocho",
        "nueve"
    ]
    l = []
    for num in t:
        l.append(numbers[int(num)])
    return l

