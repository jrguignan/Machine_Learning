# Análisis de Componentes Principales - Kernel

#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Reduccion_de_Dimension\\datasets\\Social_Network_Ads.csv")

dataset = dataset[, 3:5]



#Division de Datos - entrenamiento y validacion

#Cargo la libreria a utilizar
library(caTools)
#permite escoger la semilla para hacer la division
set.seed(123)
#genera una mascara con los 80% de True y 20 de False
split = sample.split(dataset$Purchased, SplitRatio = 0.80)
#genera los datasets de entrenamiento y validacion a partir de split
dataset_train = subset(dataset, split == TRUE)
dataset_test = subset(dataset, split == FALSE)
#Escalado de Variables - Estandarizacion y Normalizacion
#solo se puede estandarizar a las variable numericas, las que country y purshased son factores
dataset_train[, 1:2] = scale(dataset_train[, 1:2]) 
dataset_test[, 1:2] = scale(dataset_test[, 1:2]) 







#Ajustar el Modelo de Componentes Principales -kernel
library(kernlab)

#se puede escoger el numero de componetes o el valor de la varianza
kpca = kpca(~. ,
            data = dataset_train[-3],
            kernel='rbfdot',
            features=2)

#Reduccion del conjunto de entrenamiento
dataset_train_ = as.data.frame(predict(kpca, dataset_train))
dataset_train_$Purchased = dataset_train$Purchased


#Reduccion del conjunto de test
dataset_test_ = as.data.frame(predict(kpca, dataset_test))
dataset_test_$Purchased = dataset_test$Purchased







# Ajustar el modelo de regresión logística con el conjunto de entrenamiento.
clasificador = glm(formula = Purchased ~ .,
                 data = dataset_train_, 
                 family = binomial)

# Predicción de los resultados con el conjunto de testing
prob_pred = predict(clasificador, type = "response",
                    newdata = dataset_test_[,-3])

y_pred = ifelse(prob_pred> 0.5, 1, 0)


#Crear matriz de confusion
cm = table(dataset_test_[, 3], y_pred)

print(cm)







#Visualizacion de los datos del conjunto de entrenamiento

library(ggplot2)
library(reshape2)


# Crear malla para la gráfica
set = dataset_train_
x1_seq <- seq(min(set$V1) - 1, max(set$V1) + 1, by = 0.1)
x2_seq <- seq(min(set$V2) - 1, max(set$V2) + 1, by = 0.1)
grid <- expand.grid(V1 = x1_seq, V2 = x2_seq)

# Predecir los valores para la malla usando el clasificador
grid$Prediction_ <-predict(clasificador, type = "response",newdata = grid)
grid$Prediction = ifelse(grid$Prediction_ > 0.5, 1, 0)

# Asegurarse de que Customer_Segment sea un factor con niveles 0,1
set$Purchased <- factor(dataset_train_$Purchased, levels = c(0, 1))

# Predecir los valores para el conjunto de entrenamiento
set$TrueClass <- predict(clasificador, newdata = dataset_train_)

# Crear la gráfica
ggplot() +
  geom_tile(data = grid, aes(x = V1, y = V2, fill = as.factor(Prediction)), alpha = 0.75) +
  geom_point(data = set, aes(x = V1, y = V2, color = Purchased), size = 2) +
  scale_fill_manual(values = c("0" = "tomato", "1" = "springgreen3"), name = "Predicción") +
  scale_color_manual(values = c("0" = "red4", "1" = "green4"), name = "Clases") +
  labs(title = "Clasificador (Conjunto de Entrenamiento)", x = "Componente Principal 1", y = "Componente Principal 2") +
  theme_minimal() +
  theme(legend.position = "bottom") +
  guides(fill = guide_legend(title = "Predicción"), color = guide_legend(title = "Clases"))



# Crear malla para la gráfica
set = dataset_test_
x1_seq <- seq(min(set$V1) - 1, max(set$V1) + 1, by = 0.1)
x2_seq <- seq(min(set$V2) - 1, max(set$V2) + 1, by = 0.1)
grid <- expand.grid(V1 = x1_seq, V2 = x2_seq)

# Predecir los valores para la malla usando el clasificador
grid$Prediction_ <-predict(clasificador, type = "response",newdata = grid)
grid$Prediction = ifelse(grid$Prediction_ > 0.5, 1, 0)

# Asegurarse de que Customer_Segment sea un factor con niveles 0,1
set$Purchased <- factor(dataset_test_$Purchased, levels = c(0, 1))

# Predecir los valores para el conjunto de entrenamiento
set$TrueClass <- predict(clasificador, newdata = dataset_test_)

# Crear la gráfica
ggplot() +
  geom_tile(data = grid, aes(x = V1, y = V2, fill = as.factor(Prediction)), alpha = 0.75) +
  geom_point(data = set, aes(x = V1, y = V2, color = Purchased), size = 2) +
  scale_fill_manual(values = c("0" = "tomato", "1" = "springgreen3"), name = "Predicción") +
  scale_color_manual(values = c("0" = "red4", "1" = "green4"), name = "Clases") +
  labs(title = "Clasificador (Conjunto de Test)", x = "Edad", y = "Sueldo Estimado") +
  theme_minimal() +
  theme(legend.position = "bottom") +
  guides(fill = guide_legend(title = "Predicción"), color = guide_legend(title = "Clases"))





