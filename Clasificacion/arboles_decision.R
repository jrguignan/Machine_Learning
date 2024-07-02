# Clasificacion Arboles de decision

#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\clasificacion\\datasets\\Social_Network_Ads.csv")

#Dividir el dataset
dataset = dataset[,3:5]

# Codificar la variable de clasificación como factor
dataset$Purchased = factor(dataset$Purchased, levels = c(0,1))

#Division de Datos - entrenamiento y validacion

#Cargo la libreria a utilizar
library(caTools)

#permite escoger la semilla para hacer la division
set.seed(123)

#genera una mascara con los 80% de True y 20 de False
split = sample.split(dataset$Purchased, SplitRatio = 0.75)

#genera los datasets de entrenamiento y validacion a partir de split
dataset_train = subset(dataset, split == TRUE)
dataset_test = subset(dataset, split == FALSE)



#Ajusta el modelo de k vecinos cercanos con el modelo de entrenamiento
library(rpart)

clasificador = rpart(formula = Purchased ~ ., 
                       data = dataset_train)



y_pred = predict(clasificador, newdata = dataset_test[,-3],
                 type = "class")

print(y_pred)

#Crear matriz de confucion
cm = table(dataset_test[, 3], y_pred)

print(cm)



#Grafica del arbol de las reglas de desicion

plot(clasificador)
text(clasificador)




#Visualizacion del conjunto de entrenamiento

# Suponiendo que tienes instalado ElenStatLearn
library(ElemStatLearn)
set = dataset_train
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 1)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 500)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')

y_grid =  predict(clasificador, newdata = dataset_train[,-3],
                  type = "class")
plot(set[, -3],
     main = 'Clasificación (Conjunto de Entrenamiento)',
     xlab = 'Edad', ylab = 'Sueldo Estimado',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))


# Visualización del conjunto de testing
set = dataset_test
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 1)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 500)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')

y_grid =  predict(clasificador, newdata = dataset_test[,-3],
                  type = "class")
plot(set[, -3],
     main = 'Clasificación (Conjunto de Testing)',
     xlab = 'Edad', ylab = 'Sueldo Estimado',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))





