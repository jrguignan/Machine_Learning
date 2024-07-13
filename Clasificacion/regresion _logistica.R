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

library(ggplot2)
library(reshape2)

# Crear malla para la gráfica
set = dataset_train
x1_seq <- seq(min(set$Age) - 1, max(set$Age) + 1, by = 0.05)
x2_seq <- seq(min(set$EstimatedSalary) - 1, max(set$EstimatedSalary) + 1, by = 0.05)
grid <- expand.grid(Age = x1_seq, EstimatedSalary = x2_seq)

# Predecir los valores para la malla usando el clasificador
grid$Prediction_ <-predict(clasificador, type = "response",newdata = grid)
grid$Prediction = ifelse(grid$Prediction_ > 0.5, 1, 0)

# Asegurarse de que Customer_Segment sea un factor con niveles 0,1
set$Purchased <- factor(dataset_train$Purchased, levels = c(0, 1))

# Predecir los valores para el conjunto de entrenamiento
set$TrueClass <- predict(clasificador, newdata = dataset_train)

# Crear la gráfica
ggplot() +
  geom_tile(data = grid, aes(x = Age, y = EstimatedSalary, fill = as.factor(Prediction)), alpha = 0.75) +
  geom_point(data = set, aes(x = Age, y = EstimatedSalary, color = Purchased), size = 2) +
  scale_fill_manual(values = c("0" = "tomato", "1" = "springgreen3"), name = "Predicción") +
  scale_color_manual(values = c("0" = "red4", "1" = "green4"), name = "Clases") +
  labs(title = "Clasificador (Conjunto de Entrenamiento)", x = "Age", y = "Estimated Salary") +
  theme_minimal() +
  theme(legend.position = "bottom") +
  guides(fill = guide_legend(title = "Predicción"), color = guide_legend(title = "Clases"))



# Visualización del conjunto de testing
# Crear malla para la gráfica
set = dataset_test
x1_seq <- seq(min(set$Age) - 1, max(set$Age) + 1, by = 0.05)
x2_seq <- seq(min(set$EstimatedSalary) - 1, max(set$EstimatedSalary) + 1, by = 0.05)
grid <- expand.grid(Age = x1_seq, EstimatedSalary = x2_seq)

# Predecir los valores para la malla usando el clasificador
grid$Prediction_ <-predict(clasificador, type = "response",newdata = grid)
grid$Prediction = ifelse(grid$Prediction_ > 0.5, 1, 0)

# Asegurarse de que Customer_Segment sea un factor con niveles 0,1
set$Purchased <- factor(dataset_test$Purchased, levels = c(0, 1))

# Predecir los valores para el conjunto de entrenamiento
set$TrueClass <- predict(clasificador, newdata = dataset_test)

# Crear la gráfica
ggplot() +
  geom_tile(data = grid, aes(x = Age, y = EstimatedSalary, fill = as.factor(Prediction)), alpha = 0.75) +
  geom_point(data = set, aes(x = Age, y = EstimatedSalary, color = Purchased), size = 2) +
  scale_fill_manual(values = c("0" = "tomato", "1" = "springgreen3"), name = "Predicción") +
  scale_color_manual(values = c("0" = "red4", "1" = "green4"), name = "Clases") +
  labs(title = "Clasificador (Conjunto de Test)", x = "Age", y = "Estimated Salary") +
  theme_minimal() +
  theme(legend.position = "bottom") +
  guides(fill = guide_legend(title = "Predicción"), color = guide_legend(title = "Clases"))




