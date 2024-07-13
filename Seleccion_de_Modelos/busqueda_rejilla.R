# Busqueda en rejilla

#Se aplicara al algoritmo de maquinas de soporte personal - kernel

#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Seleccion_de_Modelos\\datasets\\Social_Network_Ads.csv")
#Dividir el dataset
dataset = dataset[,3:5]

# Codificacion de Datos Categoricos
dataset$Purchased = factor(dataset$Purchased)
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

#Escalado de Variables - Estandarizacion y Normalizacion
#solo se puede estandarizar a las variable numericas, las que country y purshased son factores
dataset_train[, 1:2] = scale(dataset_train[, 1:2]) 
dataset_test[, 1:2] = scale(dataset_test[, 1:2]) 

#KERNEL GAUSSIANO - Fue el que logró un mejor ajuste al tener menos valores errados
#Ajusta el modelo de k vecinos cercanos con el modelo de entrenamiento
library(e1071)
clasificador = svm(formula = Purchased ~ . ,
                   data = dataset_train,
                   type = "C-classification",
                   kernel = "radial")

y_pred = predict(clasificador, 
                 newdata = dataset_test[, -3])
#Crear matriz de confusion
cm = table(dataset_test[, 3], y_pred)


#Algoritmo de Validacion Cruzada
library(caret)

partes = createFolds(dataset_train$Purchased, k = 10)
cv = lapply(partes, function(x) { 
  training_fold = dataset_train[-x, ]
  test_fold = dataset_train[x, ]
  classifier = svm(formula = Purchased ~ .,
                   data = training_fold, 
                   type = "C-classification",
                   kernel = "radial")
  y_pred = predict(classifier, newdata = test_fold[,-3])
  cm = table(test_fold[, 3], y_pred)
  accuracy = (cm[1,1]+cm[2,2])/(cm[1,1]+cm[1,2]+cm[2,1]+cm[2,2])
  return(accuracy)  
})

print("Precision de las distinat partes")
print(cv)

cat("Precision Promedio Global", mean(as.numeric(cv)))
cat("Desviasion Estandar de las precisiones", sd(as.numeric(cv)))




#Aplicacion del algoritmo de Busqueda en rejilla

library(caret)

clasificador = train(form = Purchased ~ ., 
                     data = dataset_train,
                     method = 'svmRadial')

print(clasificador)

print(clasificador$bestTune)


#Luego de este toca cambia el algotimo original con los mejores paramentros
#y encontrar un mejor ajuste
