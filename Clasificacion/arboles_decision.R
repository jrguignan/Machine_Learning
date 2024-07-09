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

#Crear matriz de confusion
cm = table(dataset_test[, 3], y_pred)

print(cm)



#Grafica del arbol de las reglas de decision

plot(clasificador)
text(clasificador)




#Visualizacion de los datos del conjunto de entrenamiento

library(ggplot2)
library(reshape2)
  
 
  # Crear malla para la gráfica
  set = dataset_train
  x1_seq <- seq(min(set$Age) - 1, max(set$Age) + 1, by = 1)
  x2_seq <- seq(min(set$EstimatedSalary) - 500, max(set$EstimatedSalary) + 500, by = 500)
  grid <- expand.grid(Age = x1_seq, EstimatedSalary = x2_seq)
  
  # Predecir los valores para la malla usando el clasificador
  grid$Prediction <- predict(clasificador, newdata = grid, type = "class")
  
  # Asegurarse de que Purchased sea un factor con niveles 0 y 1
  set$Purchased <- factor(dataset_train$Purchased, levels = c(0, 1))
  
  # Predecir los valores para el conjunto de entrenamiento
  set$TrueClass <- predict(clasificador, newdata = dataset_train, type = "class")
  
  # Crear la gráfica
  ggplot() +
    geom_tile(data = grid, aes(x = Age, y = EstimatedSalary, fill = as.factor(Prediction)), alpha = 0.75) +
    geom_point(data = set, aes(x = Age, y = EstimatedSalary, color = Purchased), size = 2) +
    scale_fill_manual(values = c("0" = "tomato", "1" = "springgreen3"), name = "Predicción") +
    scale_color_manual(values = c("0" = "red4", "1" = "green4"), name = "Clases") +
    labs(title = "Clasificador (Conjunto de Entrenamiento)", x = "Edad", y = "Sueldo Estimado") +
    theme_minimal() +
    theme(legend.position = "bottom") +
    guides(fill = guide_legend(title = "Predicción"), color = guide_legend(title = "Clases"))
  
  
  
  
  #Visualizacion de los datos del conjunto de prueba

  # Crear malla para la gráfica
  set = dataset_test
  x1_seq <- seq(min(set$Age) - 1, max(set$Age) + 1, by = 1)
  x2_seq <- seq(min(set$EstimatedSalary) - 500, max(set$EstimatedSalary) + 500, by = 500)
  grid <- expand.grid(Age = x1_seq, EstimatedSalary = x2_seq)
  
  # Predecir los valores para la malla usando el clasificador
  grid$Prediction <- predict(clasificador, newdata = grid, type = "class")
  
  # Asegurarse de que Purchased sea un factor con niveles 0 y 1
  set$Purchased <- factor(dataset_test$Purchased, levels = c(0, 1))
  
  # Predecir los valores para el conjunto de entrenamiento
  set$TrueClass <- predict(clasificador, newdata = dataset_test, type = "class")
  
  # Crear la gráfica
  ggplot() +
    geom_tile(data = grid, aes(x = Age, y = EstimatedSalary, fill = as.factor(Prediction)), alpha = 0.75) +
    geom_point(data = set, aes(x = Age, y = EstimatedSalary, color = Purchased), size = 2) +
    scale_fill_manual(values = c("0" = "tomato", "1" = "springgreen3"), name = "Predicción") +
    scale_color_manual(values = c("0" = "red4", "1" = "green4"), name = "Clases") +
    labs(title = "Clasificador (Conjunto de Prueba)", x = "Edad", y = "Sueldo Estimado") +
    theme_minimal() +
    theme(legend.position = "bottom") +
    guides(fill = guide_legend(title = "Predicción"), color = guide_legend(title = "Clases"))  
  
  




