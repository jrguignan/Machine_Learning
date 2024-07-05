# A Priori


#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Reglas_de_Asociacion\\datasets\\Market_Basket_Optimisation.csv", header = FALSE)
#El dataset tien las ventas de una semana


#Preprocesado de Datos
#Guardar informacion en una matriz dispersa
#matriz que es optima cuando se tienen muchos valores de ceros
library(arules)

dataset = read.transactions("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Reglas_de_Asociacion\\datasets\\Market_Basket_Optimisation.csv",
                            sep = ",",
                            rm.duplicates = TRUE)

#Se coloca , (coma) como separador y elimina los elementos repetidos en la transaccion




#Resumen estadisticos de los productos de las compras
print(summary(dataset))




#Grafica de los productos mas vendidos

itemFrequencyPlot(dataset, topN=30)


#Entrenamiento del algoritmo A Priori

reglas = apriori(data = dataset, 
                 parameter = list(support=0.003 ,confidence=0.2 ))


#Visualizacion de los resultados

inspect(sort(reglas, by="lift")[1:10])







