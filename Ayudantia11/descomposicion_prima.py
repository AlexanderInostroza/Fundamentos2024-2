def descomposicion_prima(num):
    l = []
    factor = 2
    while factor <= num:
        if num % factor == 0:
            l.append(factor)
            num = num // factor
        else:
            factor += 1
    return l