#Plantilla de Pre-Procesado

#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Pre_Procesamiento\\datasets\\data.csv")





# Tratamiento Datos NA

# cambia los datos faltantes de la columna Age por la media o el promedio
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm=TRUE)),
                     dataset$Age)

dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm=TRUE)),
                        dataset$Salary)





# Codificacion de Datos Categoricos

dataset$Country = factor(dataset$Country,
                         levels = c("France", "Germany", "Spain"),
                         labels = c(0,1,2))

dataset$Purchased = factor(dataset$Purchased,
                           levels = c("No", "Yes"),
                           labels = c(0,1))





#Division de Datos - entrenamiento y validacion

#Cargo la libreria a utilizar
library(caTools)

#permite escoger la semilla para hacer la division
set.seed(123)

#genera una mascara con los 80% de True y 20 de False
split = sample.split(dataset$Purchased, SplitRatio = 0.8)

#genera los datasets de entrenamiento y validacion a partir de split
dataset_train = subset(dataset, split == TRUE)
dataset_test = subset(dataset, split == FALSE)




#Escalado de Variables - Estandarizacion y Normalizacion

#solo se puede estandarizar a las variable numericas, las que country y purshased son factores

dataset_train[,2:3] = scale(dataset_train[,2:3]) 
dataset_test[,2:3] = scale(dataset_test[,2:3]) 

