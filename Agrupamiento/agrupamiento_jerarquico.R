# Agrupamiento Jerarquico

#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Agrupamiento\\datasets\\Mall_Customers.csv")

#Dividir el dataset
dataset = dataset[,4:5]



#Dendrograma para conocer el numero optimo de k

dendrograma = hclust(dist(dataset, method="euclidean"),
                     method = "ward.D")

plot(dendrograma,
     main="Dendrograma",
     xlab = "Clientes del Centro Comercial",
     ylab = "Distancia Euclidea")

#Como escoge el K:
#Se debe trazar una linea horizontal en el segmento de recta vertical mas largo, que no es cortado
#por alguna linea horizontal del dendrograma.

#En el caso particular de nuestro grafico, se ve que las lineas vertical mas largas son las azules 
#que se observa a la derecha, pero estan divididas por dos lineas naranjas horizontales por la 
#izquierda, por ello la linea vertical mas larga siguen siendo las lienas azules, pero de la mitad
#hacia abajo. Si colocasemos una linea horizontal en ese punto seria cortada por 5 lienas verticales,
#ese deberia ser nuestro numero de k, k=5





#Ajustar el Agrupamiento Jerarquico


aj = hclust(dist(dataset, method="euclidean"),
                     method = "ward.D")

#perimite hacer sacar los agrupamiento con k = 5
y_pred = cutree(aj, k=5)


#Graficacion de los 5 grupos
library(cluster)


clusplot(dataset, 
         y_pred,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = "Grupos de clientes",
         xlab = "Ingresos anuales",
         ylab= "Puntuacion"
)