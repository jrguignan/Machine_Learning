# Redes Neuronales Artificiales

#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Redes_Neuronales\\datasets\\Churn_Modelling.csv")
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


#Escalado de Variables - Estandarizacion y Normalizacion

#solo se puede estandarizar a las variable numericas, las que country y purshased son factores

dataset_train[, -11] = scale(dataset_train[, -11]) 
dataset_test[, -11] = scale(dataset_test[, -11]) 







#Crear Red Neuronal Artificial

library(h2o)
#Abre sesión de H2o
h2o.init(nthreads = -1)

clasificador = h2o.deeplearning(y = "Exited",
                                training_frame = as.h2o(dataset_train),
                                activation = "Rectifier",
                                hidden = c(6, 6),
                                epochs=30,
                                train_samples_per_iteration=-2)





#Predicción de la red con el conjunto de prueba

#devuelve la predicción en probabilidades
prob_pred = h2o.predict(clasificador, newdata = as.h2o(dataset_test[,-11]))

#cambia la probabilidad a si deja el banco o no
y_pred = (prob_pred>0.5)
#pasa de un objeto h2o a un vector
y_pred = as.vector(y_pred)

print(y_pred)

#Crear matriz de confusión
cm = table(dataset_test[, 11], y_pred)

print(cm)


#cerrar sesión de h2o
h2o.shutdown()

