# Análisis de Componentes Principales


#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Reduccion_de_Dimension\\datasets\\Wine.csv")

#informacion de caracteristicas de distintos vinos y luego se clasifica a que tipo de persona
#va dirigido el vino


#Division de Datos - entrenamiento y validacion

#Cargo la libreria a utilizar
library(caTools)

#permite escoger la semilla para hacer la division
set.seed(123)

#genera una mascara con los 80% de True y 20 de False
split = sample.split(dataset$Customer_Segment, SplitRatio = 0.80)

#genera los datasets de entrenamiento y validacion a partir de split
dataset_train = subset(dataset, split == TRUE)
dataset_test = subset(dataset, split == FALSE)



#Escalado de Variables - Estandarizacion y Normalizacion

#solo se puede estandarizar a las variable numericas, las que country y purshased son factores

dataset_train[, 1:13] = scale(dataset_train[, 1:13]) 
dataset_test[, 1:13] = scale(dataset_test[, 1:13]) 







#Ajustar el Modelo de Componentes Principales
library(caret)
library(e1071)


#se puede escoger el numero de componetes o el valor de la varianza
pca = preProcess(x = dataset_train[,-14],
                 method="pca",
                 pcaComp=2)

#Reduccion del conjunto de entrenamiento
dataset_train = predict(pca, dataset_train)
dataset_train = dataset_train[, c(2, 3, 1)]

#Reduccion del conjunto de test
dataset_test = predict(pca, dataset_test)
dataset_test = dataset_test[, c(2, 3, 1)]









clasificador = svm(formula = Customer_Segment ~ . ,
                   data = dataset_train,
                   type = "C-classification",
                   kernel = "radial")



y_pred = predict(clasificador, 
                 newdata = dataset_test[, -3])

print(y_pred)

#Crear matriz de confusion
cm = table(dataset_test[, 3], y_pred)

print(cm)







#Visualizacion de los datos del conjunto de entrenamiento

library(ggplot2)
library(reshape2)


# Crear malla para la gráfica
set = dataset_train
x1_seq <- seq(min(set$PC1) - 1, max(set$PC1) + 1, by = 0.05)
x2_seq <- seq(min(set$PC2) - 1, max(set$PC2) + 1, by = 0.05)
grid <- expand.grid(PC1 = x1_seq, PC2 = x2_seq)

# Predecir los valores para la malla usando el clasificador
grid$Prediction <- predict(clasificador, newdata = grid)

# Asegurarse de que Customer_Segment sea un factor con niveles 1, 2, 3
set$Customer_Segment <- factor(dataset_train$Customer_Segment, levels = c(1, 2, 3))

# Predecir los valores para el conjunto de entrenamiento
set$TrueClass <- predict(clasificador, newdata = dataset_train)

# Crear la gráfica
ggplot() +
  geom_tile(data = grid, aes(x = PC1, y = PC2, fill = as.factor(Prediction)), alpha = 0.75) +
  geom_point(data = set, aes(x = PC1, y = PC2, color = Customer_Segment), size = 2) +
  scale_fill_manual(values = c("1" = "tomato", "2" = "springgreen3", "3" = "skyblue"), name = "Predicción") +
  scale_color_manual(values = c("1" = "red4", "2" = "green4", "3" = "blue4"), name = "Clases") +
  labs(title = "Clasificador (Conjunto de Entrenamiento)", x = "Componente Principal 1", y = "Componente Principal 2") +
  theme_minimal() +
  theme(legend.position = "bottom") +
  guides(fill = guide_legend(title = "Predicción"), color = guide_legend(title = "Clases"))



#Visualizacion de los datos del conjunto de test

# Crear malla para la gráfica
set = dataset_test
x1_seq <- seq(min(set$PC1) - 1, max(set$PC1) + 1, by = 0.05)
x2_seq <- seq(min(set$PC2) - 1, max(set$PC2) + 1, by = 0.05)
grid <- expand.grid(PC1 = x1_seq, PC2 = x2_seq)

# Predecir los valores para la malla usando el clasificador
grid$Prediction <- predict(clasificador, newdata = grid)

# Asegurarse de que Customer_Segment sea un factor con niveles 1, 2, 3
set$Customer_Segment <- factor(dataset_test$Customer_Segment, levels = c(1, 2, 3))

# Predecir los valores para el conjunto de entrenamiento
set$TrueClass <- predict(clasificador, newdata = dataset_test)

# Crear la gráfica
ggplot() +
  geom_tile(data = grid, aes(x = PC1, y = PC2, fill = as.factor(Prediction)), alpha = 0.75) +
  geom_point(data = set, aes(x = PC1, y = PC2, color = Customer_Segment), size = 2) +
  scale_fill_manual(values = c("1" = "tomato", "2" = "springgreen3", "3" = "skyblue"), name = "Predicción") +
  scale_color_manual(values = c("1" = "red4", "2" = "green4", "3" = "blue4"), name = "Clases") +
  labs(title = "Clasificador (Conjunto de Prueba)", x = "Componente Principal 1", y = "Componente Principal 2") +
  theme_minimal() +
  theme(legend.position = "bottom") +
  guides(fill = guide_legend(title = "Predicción"), color = guide_legend(title = "Clases"))




