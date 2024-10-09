
def jugar(tablero, turno, pos):
    indice = 2 * (pos - 1)
    if tablero[indice] == "-":
        return tablero[:indice] + turno + tablero[indice+1:]
    return tablero

t = "X - O\nO X -\n- - X"

print(jugar(t,"X",2))
print("")
print(jugar(t,"X",6))
print("")
print(jugar(t,"O",8))
print("")
print(jugar(t,"O",9))

