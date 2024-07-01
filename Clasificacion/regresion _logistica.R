# Regresion Logistica

#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\clasificacion\\datasets\\Social_Network_Ads.csv")

#Dividir el dataset
dataset = dataset[,3:5]





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




#Ajusta el modelo de regresion logistica con el modelo de entrenamiento

clasificador = glm(formula = Purchased ~ . ,
                   data = dataset_train,
                   family = binomial)

#family = binomial es la opcion que permite hacer la regresion logistica




#Predicion con el conjuto de testing
Pre_prob = predict(clasificador, type = "response",
                   newdata = dataset_test[,-3])
#Probablidad de que el evento ocurra
Pre_prob

#Prediccion con 0 ó 1
y_pred = ifelse(Pre_prob > 0.5, 1, 0)

y_pred




#Crear matriz de confuccion
cm = table(dataset_test[, 3], y_pred)

cm




#Visualizacion del conjunto de entrenamiento

# Suponiendo que ya tienes cargado ggplot2
library(ggplot2)


