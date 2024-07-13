#Gradient Bossting


#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Gradient_Boosting\\datasets\\Churn_Modelling.csv")
dataset = dataset[,4:14]
#Datos de los clientes de un banco, 
#queremos entrenar una red que diga si el cliente se va o se queda



#Preprocesamiento

# Codificacion de Datos Categoricos

# se pasa de factores a categorias numericas

dataset$Geography = as.numeric(factor(dataset$Geography,
                                      levels = c("France", "Germany", "Spain"),
                                      labels = c(1,2,3)))

dataset$Gender = as.numeric(factor(dataset$Gender,
                                   levels = c("Female", "Male"),
                                   labels = c(1,2)))


#Division de Datos - entrenamiento y validacion

#Cargo la libreria a utilizar
library(caTools)

#permite escoger la semilla para hacer la division
set.seed(123)

#genera una mascara con los 80% de True y 20 de False
split = sample.split(dataset$Exited, SplitRatio = 0.8)

#genera los datasets de entrenamiento y validacion a partir de split
dataset_train = subset(dataset, split == TRUE)
dataset_test = subset(dataset, split == FALSE)




#Algoritmo Gradient Boost
library(xgboost)

clasificador = xgboost(data = as.matrix(dataset_train[, -11]),
                      label = dataset_train$Exited,
                       nrounds = 20)



#Algoritmo de Validacion Cruzada
library(caret)

partes = createFolds(dataset_train$Exited, k = 10)

cv = lapply(partes, function(x) { 
  training_fold = dataset_train[-x, ]
  test_fold = dataset_train[x, ]
  classifier = xgboost(data = as.matrix(dataset_train[, -11]),
                       label = dataset_train$Exited,
                       nround = 20)
  y_pred = predict(classifier, newdata = as.matrix(test_fold[,-11]))
  y_pred = (y_pred>0.5)
  cm = table(test_fold[, 11], y_pred)
  accuracy = (cm[1,1]+cm[2,2])/(cm[1,1]+cm[1,2]+cm[2,1]+cm[2,2])
  return(accuracy)  
})

print("Precision de las distinat partes")
print(cv)

cat("Precision Promedio Global", mean(as.numeric(cv)))

cat("Desviasion Estandar de las precisiones", sd(as.numeric(cv)))