# Agrupamiento con k medias

#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Agrupamiento\\datasets\\Mall_Customers.csv")

#Dividir el dataset
dataset = dataset[,4:5]





#Metodo WCSS - Metodo del Codo
set.seed(6)

WCSS = vector()

for (i in 1:10){
  #guarda en un vector los valores de las distancias a los baricentros, por cada k
  WCSS[i] <- sum(kmeans(dataset, i)$withinss)
}

#grafica
plot (1:10, WCSS, type = "b", main = "WCSS - Método del Codo",
      xlab="Numero de K", ylab="WCSS")

#Aunque el método WCSS dio 6 grupos se decidió usar 5 grupos



#Ajuste de k medias con el nuemro optimo de k 
kmean = kmeans(dataset, 5, iter.max=300, nstar=10)




#Graficacion de los 5 grupos
library(cluster)


clusplot(dataset, 
         kmean$cluster,
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

