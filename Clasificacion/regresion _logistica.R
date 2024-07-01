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

# Suponiendo que tienes instalado ElenStat Learn
library(ElemStatLearn)
set = dataset_train
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(clasificador, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Clasificación (Conjunto de Entrenamiento)',
     xlab = 'Edad', ylab = 'Sueldo Estimado',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))


# Visualización del conjunto de testing
set = dataset_test
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
prob_set = predict(clasificador, type = 'response', newdata = grid_set)
y_grid = ifelse(prob_set > 0.5, 1, 0)
plot(set[, -3],
     main = 'Clasificación (Conjunto de Testing)',
     xlab = 'Edad', ylab = 'Sueldo Estimado',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))



