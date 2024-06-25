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


