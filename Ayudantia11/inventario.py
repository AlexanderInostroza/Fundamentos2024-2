inventario = [
 ["Camiseta", "Ropa", 15.99, 20],
 ["Pantalón", "Ropa", 29.99, 15],
 ["Zapatos", "Calzado", 49.99, 10],
 ["Laptop", "Electrónica", 799.99, 5],
 ["Mouse", "Electrónica", 19.99, 12]
]

while True:
    print("\nSeleccione:")
    print("1. Agregar producto.")
    print("2. Buscar producto por nombre.")
    print("3. Listar productos por categoría.")
    print("4. Actualizar stock.")
    print("5. Mostrar productos con stock bajo")
    print("6. Salir.")
    op = int(input("> "))
    match op:
        case 1:
            nombre_producto = input("nombre producto?\n> ")
            categoria = input("categoria?\n> ")
            precio_unitario = float(input("precio unitario?\n> "))
            cantidad_en_stock = int(input("cantidad en stock?\n> "))
            inventario.append([
                nombre_producto,
                categoria,
                precio_unitario,
                cantidad_en_stock
            ])
        case 2:
            busqueda = input("nombre producto?\n> ")
            encontrado = False
            for nombre_producto, categoria, precio_unitario, stock in inventario:
                if nombre_producto == busqueda:
                    encontrado = True
                    print("nombre producto:", nombre_producto)
                    print("categoria:", categoria)
                    print("precio unitario:", precio_unitario)
                    print("cantidad en stock:", stock)
            if not encontrado:
                print("No se encontró un producto con ese nombre.")
        case 3:
            busqueda = input("categoría?\n> ")
            encontrado = False
            for nombre_producto, categoria, precio_unitario, stock in inventario:
                if nombre_producto == busqueda:
                    encontrado = True
                    print("nombre producto:", nombre_producto)
                    print("categoria:", categoria)
                    print("precio unitario:", precio_unitario)
                    print("cantidad en stock:", stock)
                    print("")
            if not encontrado:
                print("No se encontró un producto en esta categoría.")
        case 4:
            busqueda = input("nombre producto?\n> ")
            variacion = int(input("cantidad a agregar?\n> "))
            encontrado = False
            for i in range(len(inventario)):
                if inventario[i][0] == busqueda:
                    encontrado = True
                    print("nombre producto:", inventario[i][0])
                    inventario[i][3] = inventario[i][3] + variacion
                    print("cantidad en stock:", inventario[i][3])
            if not encontrado:
                print("No se encontró un producto con ese nombre.")
        case 5:
            stock_bajo = 5
            encontrado = False
            for nombre_producto, categoria, precio_unitario, stock in inventario:
                if stock <= stock_bajo:
                    encontrado = True
                    print("nombre producto:", nombre_producto)
                    print("categoria:", categoria)
                    print("precio unitario:", precio_unitario)
                    print("cantidad en stock:", stock)
                    print("")
            if not encontrado:
                print("No se encontró ningún producto con stock bajo.")
        case 6:
            break
        case _:
            print("Opción no válida, intente nuevamente.")