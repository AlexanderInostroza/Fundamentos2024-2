import pandas as pd

def meses_superiores_umbral(df, umbral_ventas):

    return df.loc[df['Ventas'] > umbral_ventas, 'Mes']

datos = {'Mes':['Enero', 'Febrero', 'Marzo', 'Abril'], 'Ventas':[30500, 35600, 28300, 33900], 'Gastos':[22000, 23400, 18100, 20700]}
contabilidad = pd.DataFrame(datos)
print(meses_superiores_umbral(contabilidad, 30000))